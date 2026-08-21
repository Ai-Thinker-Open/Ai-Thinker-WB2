#include "bflb_platform.h"
#include "hal_uart.h"
#include "hal_dma.h"
#include "hal_gpio.h"
#include "hal_flash.h"
#include "bootrom_cmd.h"
#include "bootrom_isp.h"
#include <FreeRTOS.h>
#include "semphr.h"
#include "shell.h"
#include "ff.h"
#include "bl616_para.h"

FATFS fs;
FIL fnew;
FRESULT res_sd;
UINT fnum;

struct bootrom_isp g_isp;

static struct device *isp_uart;

static TaskHandle_t bootrom_isp_handle;

static SemaphoreHandle_t sem_uart_rx = NULL;
static SemaphoreHandle_t sem_dma_tx = NULL;

__attribute((aligned(32))) uint8_t uart_send_buffer[8 + BOOTROAM_FLASH_PROGRAM_LEN];
uint8_t uart_recv_buffer[128];
volatile uint16_t uart_recv_ops = 0;

static void isp_uart_irq_callback(struct device *dev, void *args, uint32_t size, uint32_t state)
{
    memcpy(&uart_recv_buffer[uart_recv_ops], args, size);
    uart_recv_ops += size;

    if (state == UART_EVENT_RX_FIFO) {
    } else if (state == UART_EVENT_RTO) {
        if (uart_recv_buffer[0] == 'P' && uart_recv_buffer[1] == 'D') {
            uart_recv_ops = 0;
            MSG("erase pending\r\n");
            return;
        }
        xSemaphoreGive(sem_uart_rx);
    }
}

static void dma2_irq_callback(struct device *dev, void *args, uint32_t size, uint32_t state)
{
    xSemaphoreGive(sem_dma_tx);
}

static void bootrom_isp_uart_init(void)
{
    uart_register(UART1_INDEX, "isp_uart");
    isp_uart = device_find("isp_uart");

    if (isp_uart) {
        UART_DEV(isp_uart)->baudrate = 2000000;
        UART_DEV(isp_uart)->fifo_threshold = 6;
        device_open(isp_uart, DEVICE_OFLAG_DMA_TX | DEVICE_OFLAG_INT_RX);
        device_set_callback(isp_uart, NULL);
        device_control(isp_uart, DEVICE_CTRL_SET_INT, (void *)(UART_RX_FIFO_IT | UART_RTO_IT));
    }

    dma_register(DMA0_CH2_INDEX, "ch2");
    struct device *dma_ch2 = device_find("ch2");

    if (dma_ch2) {
        DMA_DEV(dma_ch2)->direction = DMA_MEMORY_TO_PERIPH;
        DMA_DEV(dma_ch2)->transfer_mode = DMA_LLI_ONCE_MODE;
        DMA_DEV(dma_ch2)->src_req = DMA_REQUEST_NONE;
        DMA_DEV(dma_ch2)->dst_req = DMA_REQUEST_UART1_TX;
        DMA_DEV(dma_ch2)->src_addr_inc = DMA_ADDR_INCREMENT_ENABLE;
        DMA_DEV(dma_ch2)->dst_addr_inc = DMA_ADDR_INCREMENT_DISABLE;
        DMA_DEV(dma_ch2)->src_burst_size = DMA_BURST_INCR1;
        DMA_DEV(dma_ch2)->dst_burst_size = DMA_BURST_INCR1;
        DMA_DEV(dma_ch2)->src_width = DMA_TRANSFER_WIDTH_8BIT;
        DMA_DEV(dma_ch2)->dst_width = DMA_TRANSFER_WIDTH_8BIT;
        device_open(dma_ch2, 0);
        device_set_callback(dma_ch2, dma2_irq_callback);
        device_control(dma_ch2, DEVICE_CTRL_SET_INT, NULL);
    }

    device_control(isp_uart, DEVICE_CTRL_ATTACH_TX_DMA, dma_ch2);
}

static void bootrom_isp_sem_init(void)
{
    sem_dma_tx = xSemaphoreCreateCounting(1, 0);
    sem_uart_rx = xSemaphoreCreateCounting(1, 0);
}

static int bootrom_isp_send_internal(uint32_t len, uint32_t timeout_ms)
{
    int ret = 0;
    uart_recv_ops = 0;
    memset(uart_recv_buffer, 0, 128);
    device_set_callback(isp_uart, isp_uart_irq_callback);
    csi_dcache_clean_range((uint32_t *)uart_send_buffer, len);
    device_write(isp_uart, 0, uart_send_buffer, len);

    if (xSemaphoreTake(sem_dma_tx, timeout_ms) == pdFALSE) {
        MSG("send timeout\r\n");
        ret = ISP_UART_DMA_TIMEOUT;
        goto errorout;
    }
    if (xSemaphoreTake(sem_uart_rx, timeout_ms) == pdFALSE) {
        MSG("rx timeout\r\n");
        ret = ISP_UART_RX_TIMEOUT;
        goto errorout;
    }

    if (uart_recv_buffer[0] == 'O' && uart_recv_buffer[1] == 'K') {
        ret = 0;
    } else {
        ret = ISP_UART_RX_FAIL;
    }
errorout:
    bflb_platform_dump(uart_recv_buffer, uart_recv_ops);
    device_set_callback(isp_uart, NULL);
    return ret;
}

static uint8_t bootrom_isp_calc_cmd_cksum(uint8_t *data, size_t len)
{
    uint32_t sum = 0;

    for (uint32_t i = 0; i < len; ++i) {
        sum += data[i];
    }
    return sum & 0xff;
}

void dtr_pin_set(uint8_t status)
{
    gpio_write(UART_DTR_PIN, status);
}
void rts_pin_set(uint8_t status)
{
    gpio_write(UART_RTS_PIN, status);
}

void bootrom_isp_enter(void)
{
    gpio_set_mode(UART_RTS_PIN, GPIO_OUTPUT_MODE);
    gpio_set_mode(UART_DTR_PIN, GPIO_OUTPUT_MODE);

    dtr_pin_set(1);
    vTaskDelay(50);
    rts_pin_set(1);
    vTaskDelay(50);
    rts_pin_set(0);
    vTaskDelay(30);
    rts_pin_set(1);
    vTaskDelay(50);
    gpio_set_mode(UART_RTS_PIN, GPIO_INPUT_MODE);
    vTaskDelay(5);
    gpio_set_mode(UART_DTR_PIN, GPIO_INPUT_MODE);
}

int bootrom_isp_shakehand55()
{
    memset(uart_send_buffer, 0x55, 20);
    return bootrom_isp_send_internal(20, 1000);
}

int bootrom_isp_get_bootinfo()
{
    uart_send_buffer[0] = BOOTROM_HOST_CMD_BOOTINFO_GET;
    uart_send_buffer[1] = 0x00;
    uart_send_buffer[2] = 0x00;
    uart_send_buffer[3] = 0x00;

    return bootrom_isp_send_internal(BOOTROAM_CMD_HEADER_LEN, 1000);
}

int bootrom_isp_load_bootheader(void)
{
    uart_send_buffer[0] = BOOTROM_HOST_CMD_BOOTHEADER_LOAD;
    uart_send_buffer[1] = 0x00;
    uart_send_buffer[2] = (uint8_t)(BOOTROAM_BOOTHEADER_LEN);
    uart_send_buffer[3] = (uint8_t)(BOOTROAM_BOOTHEADER_LEN >> 8);

    return bootrom_isp_send_internal(BOOTROAM_CMD_HEADER_LEN + BOOTROAM_BOOTHEADER_LEN, 1000);
}

int bootrom_isp_load_sectionheader(void)
{
    uart_send_buffer[0] = BOOTROM_HOST_CMD_SECTIONHEADER_LOAD;
    uart_send_buffer[1] = 0x00;
    uart_send_buffer[2] = (uint8_t)(BOOTROAM_SECTIONHEADER_LEN);
    uart_send_buffer[3] = (uint8_t)(BOOTROAM_SECTIONHEADER_LEN >> 8);

    return bootrom_isp_send_internal(BOOTROAM_CMD_HEADER_LEN + BOOTROAM_SECTIONHEADER_LEN, 1000);
}

int bootrom_isp_load_sectiondata(uint32_t len)
{
    uart_send_buffer[0] = BOOTROM_HOST_CMD_SECTIONDATA_LOAD;
    uart_send_buffer[1] = 0x00;
    uart_send_buffer[2] = (uint8_t)(len);
    uart_send_buffer[3] = (uint8_t)(len >> 8);

    return bootrom_isp_send_internal(BOOTROAM_CMD_HEADER_LEN + len, 3000);
}

int bootrom_isp_checkimage(void)
{
    uart_send_buffer[0] = BOOTROM_HOST_CMD_CHECK_IMAGE;
    uart_send_buffer[1] = 0x00;
    uart_send_buffer[2] = 0x00;
    uart_send_buffer[3] = 0x00;

    return bootrom_isp_send_internal(BOOTROAM_CMD_HEADER_LEN, 1000);
}

int bootrom_isp_runimage(void)
{
    uart_send_buffer[0] = BOOTROM_HOST_CMD_RUN;
    uart_send_buffer[1] = 0x00;
    uart_send_buffer[2] = 0x00;
    uart_send_buffer[3] = 0x00;

    return bootrom_isp_send_internal(BOOTROAM_CMD_HEADER_LEN, 5000);
}

int bootrom_isp_bl702_runimage(void)
{
    uart_send_buffer[0] = 0x50;
    uart_send_buffer[1] = 0x00;
    uart_send_buffer[2] = 0x08;
    uart_send_buffer[3] = 0x00;

    uart_send_buffer[4] = 0x00;
    uart_send_buffer[5] = 0xf1;
    uart_send_buffer[6] = 0x00;
    uart_send_buffer[7] = 0x40;
    uart_send_buffer[8] = 0x45;
    uart_send_buffer[9] = 0x48;
    uart_send_buffer[10] = 0x42;
    uart_send_buffer[11] = 0x4e;
    uart_send_buffer[12] = 0x50;
    uart_send_buffer[13] = 0x00;
    uart_send_buffer[14] = 0x08;
    uart_send_buffer[15] = 0x00;
    uart_send_buffer[16] = 0x04;
    uart_send_buffer[17] = 0xf1;
    uart_send_buffer[18] = 0x00;
    uart_send_buffer[19] = 0x40;
    uart_send_buffer[20] = 0x00;
    uart_send_buffer[21] = 0x00;
    uart_send_buffer[22] = 0x01;
    uart_send_buffer[23] = 0x22;
    uart_send_buffer[24] = 0x50;
    uart_send_buffer[25] = 0x00;
    uart_send_buffer[26] = 0x08;
    uart_send_buffer[27] = 0x00;
    uart_send_buffer[28] = 0x18;
    uart_send_buffer[29] = 0x00;
    uart_send_buffer[30] = 0x00;
    uart_send_buffer[31] = 0x40;
    uart_send_buffer[32] = 0x00;
    uart_send_buffer[33] = 0x00;
    uart_send_buffer[34] = 0x00;
    uart_send_buffer[35] = 0x00;
    uart_send_buffer[36] = 0x50;
    uart_send_buffer[37] = 0x00;
    uart_send_buffer[38] = 0x08;
    uart_send_buffer[39] = 0x00;
    uart_send_buffer[40] = 0x18;
    uart_send_buffer[41] = 0x00;
    uart_send_buffer[42] = 0x00;
    uart_send_buffer[43] = 0x40;
    uart_send_buffer[44] = 0x02;
    uart_send_buffer[45] = 0x00;
    uart_send_buffer[46] = 0x00;
    uart_send_buffer[47] = 0x00;

    return bootrom_isp_send_internal(48, 1000);
}

int bootrom_isp_efuse_read_emac(void)
{
    uart_send_buffer[0] = BOOTROM_HOST_CMD_EFUSE_READ_EMAC;
    uart_send_buffer[1] = 0x00;
    uart_send_buffer[2] = 0x00;
    uart_send_buffer[3] = 0x00;

    return bootrom_isp_send_internal(BOOTROAM_CMD_HEADER_LEN, 1000);
}

int bootrom_isp_cpu_reset(void)
{
    uart_send_buffer[0] = BOOTROM_HOST_CMD_RESET;
    uart_send_buffer[1] = 0x00;
    uart_send_buffer[2] = 0x00;
    uart_send_buffer[3] = 0x00;

    return bootrom_isp_send_internal(BOOTROAM_CMD_HEADER_LEN, 1000);
}

int bootrom_isp_clock_pll_set(bool uart_irq_en, uint32_t baudrate, uint8_t *clock_para, uint8_t clock_para_len)
{
    uart_send_buffer[0] = BOOTROM_HOST_CMD_CLOCK_SET;
    uart_send_buffer[1] = 0x00;
    uart_send_buffer[2] = (uint8_t)(BOOTROAM_UART_IRQ_ENABLE_LEN + BOOTROAM_UART_SPEED_LEN + clock_para_len);
    uart_send_buffer[3] = 0x00;

    if (uart_irq_en) {
        memcpy(&uart_send_buffer[4], "\x01\x00\x00\x00", 4);
    } else {
        memcpy(&uart_send_buffer[4], "\x00\x00\x00\x00", 4);
    }

    memcpy(&uart_send_buffer[8], &baudrate, BOOTROAM_UART_SPEED_LEN);
    memcpy(&uart_send_buffer[12], clock_para, clock_para_len);

    uart_send_buffer[1] = bootrom_isp_calc_cmd_cksum(&uart_send_buffer[2], 2 + BOOTROAM_UART_IRQ_ENABLE_LEN + BOOTROAM_UART_SPEED_LEN + clock_para_len);

    return bootrom_isp_send_internal(BOOTROAM_CMD_HEADER_LEN + BOOTROAM_UART_IRQ_ENABLE_LEN + BOOTROAM_UART_SPEED_LEN + clock_para_len, 3000);
}

int bootrom_isp_flash_set_para(uint8_t flash_pin, uint8_t flash_clock_cfg, uint8_t flash_io_mode, uint8_t flash_clk_delay, uint8_t *flash_para, uint8_t flash_para_len)
{
    uint32_t flash_set = 0;
    uart_send_buffer[0] = BOOTROM_HOST_CMD_EFLASH_LOADER_FLASH_SET_PARA;
    uart_send_buffer[1] = 0x00;
    uart_send_buffer[2] = (uint8_t)(4 + flash_para_len);
    uart_send_buffer[3] = 0x00;

    flash_set = (uint32_t)(flash_pin << 0) |
                (uint32_t)(flash_clock_cfg << 8) |
                (uint32_t)(flash_io_mode << 16) |
                (uint32_t)(flash_clk_delay << 24);

    memcpy(&uart_send_buffer[4], &flash_set, 4);
    memcpy(&uart_send_buffer[8], flash_para, flash_para_len);

    uart_send_buffer[1] = bootrom_isp_calc_cmd_cksum(&uart_send_buffer[2], 2 + 4 + flash_para_len);

    return bootrom_isp_send_internal(BOOTROAM_CMD_HEADER_LEN + 4 + flash_para_len, 3000);
}

int bootrom_isp_get_flash_id(void)
{
    uart_send_buffer[0] = BOOTROM_HOST_CMD_EFLASH_LOADER_FLASH_READ_JEDECID;
    uart_send_buffer[1] = 0x00;
    uart_send_buffer[2] = 0x00;
    uart_send_buffer[3] = 0x00;

    return bootrom_isp_send_internal(BOOTROAM_CMD_HEADER_LEN, 3000);
}

int bootrom_isp_flash_chip_erase(void)
{
    uart_send_buffer[0] = BOOTROM_HOST_CMD_EFLASH_LOADER_FLASH_CHIPERASE;
    uart_send_buffer[1] = 0x00;
    uart_send_buffer[2] = 0x00;
    uart_send_buffer[3] = 0x00;

    return bootrom_isp_send_internal(BOOTROAM_CMD_HEADER_LEN, 20000);
}

int bootrom_isp_flash_sector_erase(uint32_t erase_start_addr, uint32_t erase_end_addr)
{
    uart_send_buffer[0] = BOOTROM_HOST_CMD_FLASH_ERASE;
    uart_send_buffer[1] = 0x00;
    uart_send_buffer[2] = 0x08;
    uart_send_buffer[3] = 0x00;

    //erase_start_addr
    uart_send_buffer[4] = (uint8_t)((erase_start_addr) >> 0);
    uart_send_buffer[5] = (uint8_t)((erase_start_addr) >> 8);
    uart_send_buffer[6] = (uint8_t)((erase_start_addr) >> 16);
    uart_send_buffer[7] = (uint8_t)((erase_start_addr) >> 24);

    uart_send_buffer[8] = (uint8_t)((erase_end_addr) >> 0);
    uart_send_buffer[9] = (uint8_t)((erase_end_addr) >> 8);
    uart_send_buffer[10] = (uint8_t)((erase_end_addr) >> 16);
    uart_send_buffer[11] = (uint8_t)((erase_end_addr) >> 24);

    return bootrom_isp_send_internal(BOOTROAM_CMD_HEADER_LEN + BOOTROAM_START_ADDR_LEN + BOOTROAM_END_ADDR_LEN, 15000);
}

int bootrom_isp_flash_program(uint32_t program_addr, uint16_t program_len)
{
    uart_send_buffer[0] = BOOTROM_HOST_CMD_FLASH_WRITE;
    uart_send_buffer[1] = 0x00;
    uart_send_buffer[2] = (uint8_t)((program_len + BOOTROAM_START_ADDR_LEN) >> 0);
    uart_send_buffer[3] = (uint8_t)((program_len + BOOTROAM_START_ADDR_LEN) >> 8);

    uart_send_buffer[4] = (uint8_t)(program_addr >> 0);
    uart_send_buffer[5] = (uint8_t)(program_addr >> 8);
    uart_send_buffer[6] = (uint8_t)(program_addr >> 16);
    uart_send_buffer[7] = (uint8_t)(program_addr >> 24);

    uart_send_buffer[1] = bootrom_isp_calc_cmd_cksum(&uart_send_buffer[2], 2 + BOOTROAM_START_ADDR_LEN + program_len);

    return bootrom_isp_send_internal(BOOTROAM_CMD_HEADER_LEN + BOOTROAM_START_ADDR_LEN + program_len, 10000);
}

int bootrom_isp_flash_program_check(void)
{
    uart_send_buffer[0] = BOOTROM_HOST_CMD_EFLASH_LOADER_FLASH_WRITE_CHECK;
    uart_send_buffer[1] = 0x00;
    uart_send_buffer[2] = 0x00;
    uart_send_buffer[3] = 0x00;

    return bootrom_isp_send_internal(BOOTROAM_CMD_HEADER_LEN, 10000);
}

int bootrom_isp_flash_readsha(uint32_t start_addr, uint32_t data_len)
{
    uart_send_buffer[0] = BOOTROM_HOST_CMD_EFLASH_LOADER_FLASH_READSHA;
    uart_send_buffer[1] = 0x00;
    uart_send_buffer[2] = 0x08;
    uart_send_buffer[3] = 0x00;
    uart_send_buffer[4] = (uint8_t)(start_addr >> 0);
    uart_send_buffer[5] = (uint8_t)(start_addr >> 8);
    uart_send_buffer[6] = (uint8_t)(start_addr >> 16);
    uart_send_buffer[7] = (uint8_t)(start_addr >> 24);
    uart_send_buffer[8] = (uint8_t)(data_len >> 0);
    uart_send_buffer[9] = (uint8_t)(data_len >> 8);
    uart_send_buffer[10] = (uint8_t)(data_len >> 16);
    uart_send_buffer[11] = (uint8_t)(data_len >> 24);

    return bootrom_isp_send_internal(BOOTROAM_CMD_HEADER_LEN + BOOTROAM_START_ADDR_LEN + 4, 3000);
}

int bootrom_isp_flash_xip_read_start(void)
{
    uart_send_buffer[0] = BOOTROM_HOST_CMD_FLASH_START_XIP_READ;
    uart_send_buffer[1] = 0x00;
    uart_send_buffer[2] = 0x00;
    uart_send_buffer[3] = 0x00;

    return bootrom_isp_send_internal(BOOTROAM_CMD_HEADER_LEN, 1000);
}

int bootrom_isp_flash_xip_readsha(uint32_t start_addr, uint32_t data_len)
{
    uart_send_buffer[0] = BOOTROM_HOST_CMD_EFLASH_LOADER_FLASH_XIP_READSHA;
    uart_send_buffer[1] = 0x00;
    uart_send_buffer[2] = 0x08;
    uart_send_buffer[3] = 0x00;
    uart_send_buffer[4] = (uint8_t)(start_addr >> 0);
    uart_send_buffer[5] = (uint8_t)(start_addr >> 8);
    uart_send_buffer[6] = (uint8_t)(start_addr >> 16);
    uart_send_buffer[7] = (uint8_t)(start_addr >> 24);
    uart_send_buffer[8] = (uint8_t)(data_len >> 0);
    uart_send_buffer[9] = (uint8_t)(data_len >> 8);
    uart_send_buffer[10] = (uint8_t)(data_len >> 16);
    uart_send_buffer[11] = (uint8_t)(data_len >> 24);

    return bootrom_isp_send_internal(BOOTROAM_CMD_HEADER_LEN + 4 + 4, 3000);
}

int bootrom_isp_flash_xip_read_finish(void)
{
    uart_send_buffer[0] = BOOTROM_HOST_CMD_FLASH_END_XIP_READ;
    uart_send_buffer[1] = 0x00;
    uart_send_buffer[2] = 0x00;
    uart_send_buffer[3] = 0x00;

    return bootrom_isp_send_internal(BOOTROAM_CMD_HEADER_LEN, 1000);
}

static void bootrom_isp_chip_config(uint16_t target_chip)
{
    const char *chip_name[] = { "BL602", "BL702", "BL606P", "BL808", "BL616" };
    if (target_chip == 0x602) {
        g_isp.target_chip = TARGET_BL602;
        g_isp.eflash_loader_addr = 0x32000;
        g_isp.bin_path = "bl602_whole_img.bin";
        g_isp.clock_para = NULL;
        g_isp.flash_para = NULL;
    } else if (target_chip == 0x702) {
        g_isp.target_chip = TARGET_BL702;
        g_isp.eflash_loader_addr = 0x42000;
        g_isp.bin_path = "bl702_whole_img.bin";
        g_isp.clock_para = NULL;
        g_isp.flash_para = NULL;
    } else if (target_chip == 0x808) {
        g_isp.target_chip = TARGET_BL808;
        g_isp.eflash_loader_addr = 0;
        g_isp.bin_path = "bl808_whole_img.bin";
        g_isp.clock_para = NULL;
        g_isp.flash_para = NULL;
    } else if (target_chip == 0x616) {
        g_isp.target_chip = TARGET_BL616;
        g_isp.eflash_loader_addr = 0;
        g_isp.bin_path = "bl616_whole_img.bin";
        g_isp.clock_para = bl616_clock_para;
        g_isp.clock_para_len = sizeof(bl616_clock_para);
        g_isp.flash_para = bl616_flash_para;
        g_isp.flash_para_len = sizeof(bl616_flash_para);
    }
    MSG("Current program chip:%s\r\n", chip_name[g_isp.target_chip]);
}

volatile bool bootrom_isp_start = false;

static void bootrom_isp_task(void *pvParameters)
{
    uint32_t sectiondata_len;
    uint32_t write_pos;
    uint32_t write_len;
    uint32_t retry;
    char path[30] = { 0 };

    while (1) {
        if (bootrom_isp_start) {
            bootrom_isp_start = false;

            MSG("try enter bootrom\r\n");
            //bootrom_isp_enter();
            retry = 0;
            while (bootrom_isp_shakehand55() < 0) {
                retry++;
                MSG("retry\r\n");
                if (retry > 3) {
                    MSG("shankhand fail\r\n");
                    retry = 0;
                    goto errorout;
                }
                vTaskDelay(100);
            }

            MSG("shankhand success\r\n");
            vTaskDelay(20);

            MSG("========= get_boot_info =========\r\n");
            retry = 0;
            if (bootrom_isp_get_bootinfo() < 0) {
                retry++;
                MSG("retry\r\n");
                if (retry > 3) {
                    MSG("get boot info fail\r\n");
                    retry = 0;
                    goto errorout;
                }
            }

            uint16_t target_chip = (uint16_t)uart_recv_buffer[6] | ((uint16_t)uart_recv_buffer[7] << 8);

            bootrom_isp_chip_config(target_chip);

            if (g_isp.eflash_loader_addr) {
                write_pos = 0;
                flash_read(g_isp.eflash_loader_addr, &uart_send_buffer[4], BOOTROAM_BOOTHEADER_LEN);
                MSG("========= load eflash_loader.bin =========\r\n");
                MSG("load bootheader\r\n");
                bootrom_isp_load_bootheader();
                flash_read(g_isp.eflash_loader_addr + BOOTROAM_BOOTHEADER_LEN, &uart_send_buffer[4], BOOTROAM_SECTIONHEADER_LEN);
                MSG("load sectionheader\r\n");
                bootrom_isp_load_sectionheader();

                sectiondata_len = ((uint32_t)(uart_send_buffer[4 + 7] << 24)) |
                                  ((uint32_t)(uart_send_buffer[4 + 6] << 16)) |
                                  ((uint32_t)(uart_send_buffer[4 + 5] << 8)) |
                                  ((uint32_t)(uart_send_buffer[4 + 4] << 0));

                uint32_t total_size = sectiondata_len;
                MSG("segment_len:%d\r\n", sectiondata_len);

                while (total_size > 0) {
                    if (total_size > BOOTROAM_SECTIONDATA_LEN) {
                        write_len = BOOTROAM_SECTIONDATA_LEN;
                    } else {
                        write_len = total_size;
                    }
                    flash_read(g_isp.eflash_loader_addr + BOOTROAM_BOOTHEADER_LEN + BOOTROAM_SECTIONHEADER_LEN + write_pos, &uart_send_buffer[4], write_len);
                    if (bootrom_isp_load_sectiondata(write_len) < 0) {
                        goto errorout;
                    }

                    write_pos += write_len;
                    total_size -= write_len;
                    MSG("load :%d/%d\r\n", write_pos, sectiondata_len);
                }

                if (bootrom_isp_checkimage() < 0) {
                    continue;
                }
                if (bootrom_isp_bl702_runimage() < 0) {
                    continue;
                }
                MSG("run eflash loader img\r\n");

                vTaskDelay(1000);

                retry = 0;
                while (bootrom_isp_shakehand55() < 0) {
                    retry++;
                    MSG("retry\r\n");
                    if (retry > 3) {
                        MSG("shankhand fail\r\n");
                        retry = 0;
                        goto errorout;
                    }
                    vTaskDelay(10);
                }

                MSG("reshakehand success\r\n");
                vTaskDelay(10);

                // if (bootrom_isp_flash_set_para(0xff, 0x02, 0x01, 0x00, NULL, 0) < 0) {
                //     MSG("flash set para fail\r\n");
                //     continue;
                // }

            } else {
                MSG("Clock PLL set\r\n");
                bootrom_isp_clock_pll_set(1, 2000000, (uint8_t *)g_isp.clock_para, g_isp.clock_para_len);
                MSG("Set flash cfg:0x80,0x41,0x04,0x00\r\n");
                bootrom_isp_flash_set_para(0x80, 0x41, 0x04, 0x00, NULL, 0);
            }

            if (bootrom_isp_get_flash_id() < 0) {
                MSG("read flash id fail\r\n");
                continue;
            }
            MSG("get flash id: %02x%02x%02x%02x\r\n", uart_recv_buffer[4], uart_recv_buffer[5], uart_recv_buffer[6], uart_recv_buffer[7]);

            if (g_isp.flash_para) {
                MSG("Set flash config\r\n");
                bootrom_isp_flash_set_para(0x80, 0x41, 0x04, 0x00, (uint8_t *)g_isp.flash_para, g_isp.flash_para_len);
            }

            f_mount(&fs, ROOT_PATH, 1);

            strcpy(path, ROOT_PATH);
            strcat(path, g_isp.bin_path);

            cpu_global_irq_disable();
            res_sd = f_open(&fnew, path, FA_OPEN_EXISTING | FA_READ);
            if (res_sd != FR_OK) {
                MSG("do not find %s\r\n", path);
                /*unmount*/
                f_mount(NULL, "2:", 1);
                goto errorout;
            }
            cpu_global_irq_enable();
            MSG("Find %s success,file size:%d KByte\r\n", path, f_size(&fnew) / 1024);

            MSG("Start sector erase....\r\n");
            uint64_t start_time = bflb_platform_get_time_ms();
            if (bootrom_isp_flash_sector_erase(0, f_size(&fnew)) < 0) /* partial flash erase */
            {
                MSG("flash sector erase error\r\n");
                continue;
            }

            uint64_t end_time = bflb_platform_get_time_ms();
            MSG("Flash erase success ,total cost time:%dms\r\n", (uint32_t)(end_time - start_time));

            uint32_t program_addr = 0x00000000;
            MSG("Start flash programing from 0x%08x to 0x%08x\r\n", program_addr, f_size(&fnew));

            start_time = bflb_platform_get_time_ms();
            while (1) {
                cpu_global_irq_disable();
                res_sd = f_read(&fnew, &uart_send_buffer[8], BOOTROAM_FLASH_PROGRAM_LEN, &fnum);
                if (res_sd != FR_OK) {
                    MSG("read error\r\n");
                    f_close(&fnew);
                    /*unmount*/
                    f_mount(NULL, ROOT_PATH, 0);
                    cpu_global_irq_enable();
                    return;
                }
                if (fnum == 0) {
                    f_close(&fnew);
                    /*unmount*/
                    f_mount(NULL, ROOT_PATH, 0);
                    cpu_global_irq_enable();
                    break;
                }
                cpu_global_irq_enable();

                retry = 0;
                while (bootrom_isp_flash_program(program_addr, fnum) < 0) {
                    retry++;
                    if (retry > 3) {
                        MSG("errorout\r\n");
                        retry = 0;
                        goto errorout;
                    }
                }

                program_addr += fnum;
                MSG("load :%d/%d\r\n\r\n", program_addr, f_size(&fnew));
            }
            end_time = bflb_platform_get_time_ms();

            if (bootrom_isp_flash_program_check() < 0) {
                continue;
            }
            MSG("Flash program success ,total cost time:%dms\r\n", (uint32_t)(end_time - start_time));

            bootrom_isp_flash_xip_read_start();

            if (bootrom_isp_flash_xip_readsha(0x00000000, f_size(&fnew)) < 0) {
                MSG("Verify fail\r\n");
                continue;
            }

            MSG("Verify success\r\n");
            bootrom_isp_flash_xip_read_finish();
            MSG("Program Finished\r\n");
        }
    errorout:
        vTaskDelay(10);
    }
}

void bootrom_isp_init(void)
{
    bootrom_isp_uart_init();
    bootrom_isp_sem_init();

    xTaskCreate(bootrom_isp_task, (char *)"bootrom_isp", 1024, NULL, configMAX_PRIORITIES - 3, &bootrom_isp_handle);
}

int bootrom_isp(int argc, char **argv)
{
    bootrom_isp_start = true;
    return 0;
}

SHELL_CMD_EXPORT(bootrom_isp, bootrom_isp test)