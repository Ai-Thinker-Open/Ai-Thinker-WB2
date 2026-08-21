#include "bootrom_isp.h"
#include "bootrom_cmd.h"
#include "isp_log.h"

#include <string.h>
#include <stdbool.h>

static UART_HandleTypeDef *s_huart;

/* TX payload buffer: cmd header(4) + addr(4) + up to 4096 data */
static uint8_t uart_send_buffer[8 + BOOTROAM_FLASH_PROGRAM_LEN];
static uint8_t uart_recv_buffer[128];
static uint16_t uart_recv_ops;

static void dtr_pin_set(uint8_t level)
{
    HAL_GPIO_WritePin(ISP_DTR_GPIO_Port, ISP_DTR_Pin, level ? GPIO_PIN_SET : GPIO_PIN_RESET);
}

static void rts_pin_set(uint8_t level)
{
    HAL_GPIO_WritePin(ISP_RTS_GPIO_Port, ISP_RTS_Pin, level ? GPIO_PIN_SET : GPIO_PIN_RESET);
}

static void isp_gpio_init(void)
{
    GPIO_InitTypeDef gpio = {0};
    __HAL_RCC_GPIOA_CLK_ENABLE();

    gpio.Pin = ISP_DTR_Pin | ISP_RTS_Pin;
    gpio.Mode = GPIO_MODE_OUTPUT_PP;
    gpio.Pull = GPIO_NOPULL;
    gpio.Speed = GPIO_SPEED_FREQ_LOW;
    HAL_GPIO_Init(GPIOA, &gpio);

    dtr_pin_set(1);
    rts_pin_set(1);
}

static void isp_uart_flush_rx(void)
{
    __HAL_UART_FLUSH_DRREGISTER(s_huart);
    uint8_t dump;
    while (HAL_UART_Receive(s_huart, &dump, 1, 2) == HAL_OK) {
    }
}

/**
 * Enter BL602 UART bootrom: PA11 DTR = BOOT, PA12 RTS = EN.
 * Pulse RTS (EN) to reset; polarity may be inverted on the board.
 */
static void bootrom_isp_enter(void)
{
    isp_gpio_init();

    dtr_pin_set(1);
    HAL_Delay(50);
    rts_pin_set(1);
    HAL_Delay(50);
    rts_pin_set(0);
    HAL_Delay(30);
    rts_pin_set(1);
    HAL_Delay(50);

    /* Float DTR/RTS after the EN pulse into bootrom */
    GPIO_InitTypeDef gpio = {0};
    gpio.Pin = ISP_DTR_Pin | ISP_RTS_Pin;
    gpio.Mode = GPIO_MODE_INPUT;
    gpio.Pull = GPIO_NOPULL;
    HAL_GPIO_Init(GPIOA, &gpio);
    HAL_Delay(5);

    isp_uart_flush_rx();
}

static uint8_t bootrom_isp_calc_cmd_cksum(const uint8_t *data, uint32_t len)
{
    uint32_t sum = 0;
    for (uint32_t i = 0; i < len; ++i) {
        sum += data[i];
    }
    return (uint8_t)(sum & 0xffu);
}

static int bootrom_isp_rx_complete(void)
{
    uint32_t plen;

    if (uart_recv_ops < 2) {
        return 0;
    }
    if (uart_recv_buffer[0] == 'O' && uart_recv_buffer[1] == 'K') {
        if (uart_recv_ops < 4) {
            return 0;
        }
        plen = (uint32_t)uart_recv_buffer[2] | ((uint32_t)uart_recv_buffer[3] << 8);
        if (plen > (sizeof(uart_recv_buffer) - 4u)) {
            plen = sizeof(uart_recv_buffer) - 4u;
        }
        return (uart_recv_ops >= (4u + plen)) ? 1 : 0;
    }
    if (uart_recv_buffer[0] == 'F' && uart_recv_buffer[1] == 'L') {
        if (uart_recv_ops < 4) {
            return 0;
        }
        plen = (uint32_t)uart_recv_buffer[2] | ((uint32_t)uart_recv_buffer[3] << 8);
        if (plen > (sizeof(uart_recv_buffer) - 4u)) {
            plen = sizeof(uart_recv_buffer) - 4u;
        }
        return (uart_recv_ops >= (4u + plen)) ? -1 : 0;
    }
    return 0;
}

static void bootrom_isp_dump_rx(const char *tag)
{
    uint16_t n = uart_recv_ops;
    uint16_t i;

    if (n > 24) {
        n = 24;
    }
    ISP_LOG("%s rx=%u:", tag, (unsigned)uart_recv_ops);
    for (i = 0; i < n; i++) {
        ISP_LOG(" %02X", uart_recv_buffer[i]);
    }
    ISP_LOG("\r\n");
}

static int bootrom_isp_send_internal(uint32_t len, uint32_t timeout_ms)
{
    /* ISP is 8N1 LSB-first raw binary (not ASCII hex text). */
    uart_recv_ops = 0;
    memset(uart_recv_buffer, 0, sizeof(uart_recv_buffer));
    isp_uart_flush_rx();

    if (HAL_UART_Transmit(s_huart, uart_send_buffer, (uint16_t)len, timeout_ms) != HAL_OK) {
        return ISP_UART_TX_TIMEOUT;
    }

    uint32_t start = HAL_GetTick();
    uint32_t last_rx = start;
    const uint32_t idle_ms = 8;

    while ((HAL_GetTick() - start) < timeout_ms) {
        uint8_t b;
        int done;

        if (HAL_UART_Receive(s_huart, &b, 1, 2) == HAL_OK) {
            last_rx = HAL_GetTick();
            if (uart_recv_ops < sizeof(uart_recv_buffer)) {
                uart_recv_buffer[uart_recv_ops++] = b;
            }

            /* eflash_loader may reply "PD" while erase is pending */
            if (uart_recv_ops >= 2 &&
                uart_recv_buffer[0] == 'P' && uart_recv_buffer[1] == 'D') {
                uart_recv_ops = 0;
                start = HAL_GetTick();
                last_rx = start;
                continue;
            }

            done = bootrom_isp_rx_complete();
            if (done > 0) {
                return ISP_OK;
            }
            if (done < 0) {
                return ISP_UART_RX_FAIL;
            }
            continue;
        }

        /* Idle after some bytes: handshake may reply with bare "OK" */
        if (uart_recv_ops >= 2 &&
            uart_recv_buffer[0] == 'O' && uart_recv_buffer[1] == 'K' &&
            (HAL_GetTick() - last_rx) >= idle_ms) {
            return ISP_OK;
        }
        if (uart_recv_ops >= 2 &&
            uart_recv_buffer[0] == 'F' && uart_recv_buffer[1] == 'L' &&
            (HAL_GetTick() - last_rx) >= idle_ms) {
            return ISP_UART_RX_FAIL;
        }
    }
    return ISP_UART_RX_TIMEOUT;
}

static int bootrom_isp_shakehand55(void)
{
    memset(uart_send_buffer, 0x55, 20);
    return bootrom_isp_send_internal(20, 1000);
}

static int bootrom_isp_get_bootinfo(void)
{
    uart_send_buffer[0] = BOOTROM_HOST_CMD_BOOTINFO_GET;
    uart_send_buffer[1] = 0x00;
    uart_send_buffer[2] = 0x00;
    uart_send_buffer[3] = 0x00;
    return bootrom_isp_send_internal(BOOTROAM_CMD_HEADER_LEN, 1000);
}

static int bootrom_isp_load_bootheader(void)
{
    uart_send_buffer[0] = BOOTROM_HOST_CMD_BOOTHEADER_LOAD;
    uart_send_buffer[2] = (uint8_t)(BOOTROAM_BOOTHEADER_LEN);
    uart_send_buffer[3] = (uint8_t)(BOOTROAM_BOOTHEADER_LEN >> 8);
    uart_send_buffer[1] = bootrom_isp_calc_cmd_cksum(&uart_send_buffer[2],
                                                      2u + BOOTROAM_BOOTHEADER_LEN);
    return bootrom_isp_send_internal(BOOTROAM_CMD_HEADER_LEN + BOOTROAM_BOOTHEADER_LEN, 1000);
}

static int bootrom_isp_load_sectionheader(void)
{
    uart_send_buffer[0] = BOOTROM_HOST_CMD_SECTIONHEADER_LOAD;
    uart_send_buffer[2] = (uint8_t)(BOOTROAM_SECTIONHEADER_LEN);
    uart_send_buffer[3] = (uint8_t)(BOOTROAM_SECTIONHEADER_LEN >> 8);
    uart_send_buffer[1] = bootrom_isp_calc_cmd_cksum(&uart_send_buffer[2],
                                                      2u + BOOTROAM_SECTIONHEADER_LEN);
    return bootrom_isp_send_internal(BOOTROAM_CMD_HEADER_LEN + BOOTROAM_SECTIONHEADER_LEN, 1000);
}

static int bootrom_isp_load_sectiondata(uint32_t len)
{
    uart_send_buffer[0] = BOOTROM_HOST_CMD_SECTIONDATA_LOAD;
    uart_send_buffer[2] = (uint8_t)(len);
    uart_send_buffer[3] = (uint8_t)(len >> 8);
    uart_send_buffer[1] = bootrom_isp_calc_cmd_cksum(&uart_send_buffer[2], 2u + len);
    return bootrom_isp_send_internal(BOOTROAM_CMD_HEADER_LEN + len, 3000);
}

static int bootrom_isp_checkimage(void)
{
    uart_send_buffer[0] = BOOTROM_HOST_CMD_CHECK_IMAGE;
    uart_send_buffer[1] = 0x00;
    uart_send_buffer[2] = 0x00;
    uart_send_buffer[3] = 0x00;
    return bootrom_isp_send_internal(BOOTROAM_CMD_HEADER_LEN, 1000);
}

/*
 * BL602 bootrom RUN (0x1A). The original Bouffalo offline flasher used a BL702
 * 0x50 register poke after load; BL602 bootrom ignores that and stays silent,
 * which looks like a 1s RX timeout. After a successful jump the chip often
 * sends no "OK", so timeout is treated as success; "FL" is a real failure.
 */
static int bootrom_isp_runimage(void)
{
    int rc;

    uart_send_buffer[0] = BOOTROM_HOST_CMD_RUN;
    uart_send_buffer[1] = 0x00;
    uart_send_buffer[2] = 0x00;
    uart_send_buffer[3] = 0x00;
    rc = bootrom_isp_send_internal(BOOTROAM_CMD_HEADER_LEN, 5000);
    if (rc == ISP_UART_RX_TIMEOUT) {
        ISP_LOG("run: no OK, assume jumped\r\n");
        return ISP_OK;
    }
    return rc;
}

static int bootrom_isp_get_flash_id(void)
{
    uart_send_buffer[0] = BOOTROM_HOST_CMD_EFLASH_LOADER_FLASH_READ_JEDECID;
    uart_send_buffer[1] = 0x00;
    uart_send_buffer[2] = 0x00;
    uart_send_buffer[3] = 0x00;
    return bootrom_isp_send_internal(BOOTROAM_CMD_HEADER_LEN, 3000);
}

static int bootrom_isp_flash_sector_erase(uint32_t erase_start_addr, uint32_t erase_end_addr)
{
    uart_send_buffer[0] = BOOTROM_HOST_CMD_FLASH_ERASE;
    uart_send_buffer[1] = 0x00;
    uart_send_buffer[2] = 0x08;
    uart_send_buffer[3] = 0x00;
    uart_send_buffer[4] = (uint8_t)(erase_start_addr >> 0);
    uart_send_buffer[5] = (uint8_t)(erase_start_addr >> 8);
    uart_send_buffer[6] = (uint8_t)(erase_start_addr >> 16);
    uart_send_buffer[7] = (uint8_t)(erase_start_addr >> 24);
    uart_send_buffer[8] = (uint8_t)(erase_end_addr >> 0);
    uart_send_buffer[9] = (uint8_t)(erase_end_addr >> 8);
    uart_send_buffer[10] = (uint8_t)(erase_end_addr >> 16);
    uart_send_buffer[11] = (uint8_t)(erase_end_addr >> 24);
    return bootrom_isp_send_internal(BOOTROAM_CMD_HEADER_LEN + BOOTROAM_START_ADDR_LEN + BOOTROAM_END_ADDR_LEN, 60000);
}

static int bootrom_isp_flash_program(uint32_t program_addr, uint16_t program_len)
{
    uart_send_buffer[0] = BOOTROM_HOST_CMD_FLASH_WRITE;
    uart_send_buffer[1] = 0x00;
    uart_send_buffer[2] = (uint8_t)((program_len + BOOTROAM_START_ADDR_LEN) >> 0);
    uart_send_buffer[3] = (uint8_t)((program_len + BOOTROAM_START_ADDR_LEN) >> 8);
    uart_send_buffer[4] = (uint8_t)(program_addr >> 0);
    uart_send_buffer[5] = (uint8_t)(program_addr >> 8);
    uart_send_buffer[6] = (uint8_t)(program_addr >> 16);
    uart_send_buffer[7] = (uint8_t)(program_addr >> 24);
    uart_send_buffer[1] = bootrom_isp_calc_cmd_cksum(&uart_send_buffer[2],
                                                      2u + BOOTROAM_START_ADDR_LEN + program_len);
    return bootrom_isp_send_internal(BOOTROAM_CMD_HEADER_LEN + BOOTROAM_START_ADDR_LEN + program_len, 10000);
}

static int bootrom_isp_flash_program_check(void)
{
    uart_send_buffer[0] = BOOTROM_HOST_CMD_EFLASH_LOADER_FLASH_WRITE_CHECK;
    uart_send_buffer[1] = 0x00;
    uart_send_buffer[2] = 0x00;
    uart_send_buffer[3] = 0x00;
    return bootrom_isp_send_internal(BOOTROAM_CMD_HEADER_LEN, 10000);
}

static int bootrom_isp_flash_xip_read_start(void)
{
    uart_send_buffer[0] = BOOTROM_HOST_CMD_FLASH_START_XIP_READ;
    uart_send_buffer[1] = 0x00;
    uart_send_buffer[2] = 0x00;
    uart_send_buffer[3] = 0x00;
    return bootrom_isp_send_internal(BOOTROAM_CMD_HEADER_LEN, 1000);
}

static int bootrom_isp_flash_xip_readsha(uint32_t start_addr, uint32_t data_len)
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
    return bootrom_isp_send_internal(BOOTROAM_CMD_HEADER_LEN + 4 + 4, 20000);
}

static int bootrom_isp_flash_xip_read_finish(void)
{
    uart_send_buffer[0] = BOOTROM_HOST_CMD_FLASH_END_XIP_READ;
    uart_send_buffer[1] = 0x00;
    uart_send_buffer[2] = 0x00;
    uart_send_buffer[3] = 0x00;
    return bootrom_isp_send_internal(BOOTROAM_CMD_HEADER_LEN, 1000);
}

static int sd_read_at(FIL *fp, uint32_t off, void *buf, UINT len)
{
    UINT br;
    FRESULT fr;

    fr = f_lseek(fp, off);
    if (fr != FR_OK) {
        ISP_LOG("f_lseek fail %d @%lu\r\n", (int)fr, (unsigned long)off);
        return ISP_ERR_SD;
    }
    fr = f_read(fp, buf, len, &br);
    if (fr != FR_OK || br != len) {
        ISP_LOG("f_read fail %d @%lu br=%u/%u\r\n",
                (int)fr, (unsigned long)off, (unsigned)br, (unsigned)len);
        return ISP_ERR_SD;
    }
    return ISP_OK;
}

static int load_eflash_loader(FIL *loader)
{
    uint32_t loader_size;
    uint32_t sectiondata_len;
    uint32_t payload_off;
    uint32_t write_pos;
    uint32_t remain;

    if (loader == NULL) {
        return ISP_ERR_PARAM;
    }

    loader_size = (uint32_t)f_size(loader);
    if (loader_size < (BOOTROAM_BOOTHEADER_LEN + BOOTROAM_SECTIONHEADER_LEN)) {
        ISP_LOG("eflash_loader too small: %lu\r\n", (unsigned long)loader_size);
        return ISP_ERR_LOADER;
    }

    ISP_LOG("Load eflash_loader (%lu bytes)\r\n", (unsigned long)loader_size);

    if (sd_read_at(loader, 0, &uart_send_buffer[4], BOOTROAM_BOOTHEADER_LEN) < 0) {
        return ISP_ERR_SD;
    }
    if (bootrom_isp_load_bootheader() < 0) {
        ISP_LOG("load bootheader fail\r\n");
        bootrom_isp_dump_rx("hdr");
        return ISP_ERR_LOADER;
    }

    if (sd_read_at(loader, BOOTROAM_BOOTHEADER_LEN, &uart_send_buffer[4],
                   BOOTROAM_SECTIONHEADER_LEN) < 0) {
        return ISP_ERR_SD;
    }
    if (bootrom_isp_load_sectionheader() < 0) {
        ISP_LOG("load sectionheader fail\r\n");
        return ISP_ERR_LOADER;
    }

    sectiondata_len =
        ((uint32_t)uart_send_buffer[4 + 4]) |
        ((uint32_t)uart_send_buffer[4 + 5] << 8) |
        ((uint32_t)uart_send_buffer[4 + 6] << 16) |
        ((uint32_t)uart_send_buffer[4 + 7] << 24);

    payload_off = BOOTROAM_BOOTHEADER_LEN + BOOTROAM_SECTIONHEADER_LEN;
    if ((payload_off + sectiondata_len) > loader_size) {
        ISP_LOG("section len overflow: %lu\r\n", (unsigned long)sectiondata_len);
        return ISP_ERR_LOADER;
    }

    ISP_LOG("segment_len=%lu\r\n", (unsigned long)sectiondata_len);

    write_pos = 0;
    remain = sectiondata_len;
    while (remain > 0) {
        uint32_t write_len = (remain > BOOTROAM_SECTIONDATA_LEN) ? BOOTROAM_SECTIONDATA_LEN : remain;
        if (sd_read_at(loader, payload_off + write_pos, &uart_send_buffer[4], (UINT)write_len) < 0) {
            return ISP_ERR_SD;
        }
        if (bootrom_isp_load_sectiondata(write_len) < 0) {
            ISP_LOG("load sectiondata fail @%lu\r\n", (unsigned long)write_pos);
            return ISP_ERR_LOADER;
        }
        write_pos += write_len;
        remain -= write_len;
        ISP_LOG("loader %lu/%lu\r\n", (unsigned long)write_pos, (unsigned long)sectiondata_len);
    }

    if (bootrom_isp_checkimage() < 0) {
        ISP_LOG("checkimage fail\r\n");
        bootrom_isp_dump_rx("chk");
        return ISP_ERR_LOADER;
    }
    ISP_LOG("checkimage OK\r\n");
    if (bootrom_isp_runimage() < 0) {
        ISP_LOG("run image fail\r\n");
        bootrom_isp_dump_rx("run");
        return ISP_ERR_LOADER;
    }
    ISP_LOG("eflash_loader running\r\n");
    HAL_Delay(1000);
    return ISP_OK;
}

static int program_fw_image(FIL *image)
{
    uint32_t retry;
    UINT br;
    FRESULT fr;
    uint32_t fw_size;
    uint32_t program_addr;
    uint32_t t0;

    if (image == NULL) {
        return ISP_ERR_PARAM;
    }

    fw_size = (uint32_t)f_size(image);
    if (fw_size == 0) {
        ISP_LOG("fw image empty\r\n");
        return ISP_ERR_PARAM;
    }

    fr = f_lseek(image, 0);
    if (fr != FR_OK) {
        ISP_LOG("f_lseek fail: %d\r\n", (int)fr);
        return ISP_ERR_SD;
    }

    ISP_LOG("FW size=%lu bytes\r\n", (unsigned long)fw_size);
    ISP_LOG("Erase 0x0 .. 0x%lx\r\n", (unsigned long)fw_size);

    t0 = HAL_GetTick();
    if (bootrom_isp_flash_sector_erase(0, fw_size) < 0) {
        ISP_LOG("sector erase fail\r\n");
        return ISP_ERR_ERASE;
    }
    ISP_LOG("Erase OK (%lums)\r\n", (unsigned long)(HAL_GetTick() - t0));

    program_addr = 0;
    t0 = HAL_GetTick();
    while (program_addr < fw_size) {
        uint32_t chunk = fw_size - program_addr;
        if (chunk > BOOTROAM_FLASH_PROGRAM_LEN) {
            chunk = BOOTROAM_FLASH_PROGRAM_LEN;
        }

        fr = f_read(image, &uart_send_buffer[8], (UINT)chunk, &br);
        if (fr != FR_OK || br == 0) {
            ISP_LOG("SD read fail %d @0x%lx br=%u\r\n",
                    (int)fr, (unsigned long)program_addr, (unsigned)br);
            return ISP_ERR_SD;
        }
        if (br < chunk) {
            chunk = br;
        }

        retry = 0;
        while (bootrom_isp_flash_program(program_addr, (uint16_t)chunk) < 0) {
            retry++;
            if (retry > 3) {
                ISP_LOG("program fail @0x%lx\r\n", (unsigned long)program_addr);
                return ISP_ERR_PROGRAM;
            }
        }
        program_addr += chunk;
        if ((program_addr & 0x3ffffu) == 0 || program_addr >= fw_size) {
            ISP_LOG("prog %lu/%lu\r\n",
                    (unsigned long)program_addr, (unsigned long)fw_size);
        }
    }
    ISP_LOG("Program OK (%lums)\r\n", (unsigned long)(HAL_GetTick() - t0));

    if (bootrom_isp_flash_program_check() < 0) {
        ISP_LOG("write check fail\r\n");
        return ISP_ERR_VERIFY;
    }

    bootrom_isp_flash_xip_read_start();
    if (bootrom_isp_flash_xip_readsha(0, fw_size) < 0) {
        ISP_LOG("SHA verify fail\r\n");
        return ISP_ERR_VERIFY;
    }
    bootrom_isp_flash_xip_read_finish();
    ISP_LOG("Verify OK\r\n");
    return ISP_OK;
}

/* Leave ISP: RTS (EN) released, pulse DTR (BOOT). Polarity may be inverted. */
static void bootrom_isp_reset_to_app(void)
{
    isp_gpio_init();
    rts_pin_set(1);
    dtr_pin_set(0);
    HAL_Delay(50);
    dtr_pin_set(1);
    HAL_Delay(50);
}

void bootrom_isp_init(UART_HandleTypeDef *huart)
{
    s_huart = huart;
    isp_gpio_init();
}

int bootrom_isp_program(FIL *loader, FIL *image)
{
    int retry;
    int ret;

    if (s_huart == NULL || loader == NULL || image == NULL) {
        return ISP_ERR_PARAM;
    }

    /* USART1 is the ISP bus; buffer logs so they are not mixed into protocol bytes. */
    ISP_LOG("\r\n==== BL602 ISP flash ====\r\n");
    ISP_LOG("loader=%lu  image=%lu\r\n",
            (unsigned long)f_size(loader),
            (unsigned long)f_size(image));
    ISP_LOG("Enter bootrom (USART1 logs deferred)...\r\n");

    isp_log_set_deferred(true);
    bootrom_isp_enter();

    retry = 0;
    while (bootrom_isp_shakehand55() < 0) {
        retry++;
        ISP_LOG("shakehand retry %d\r\n", retry);
        if (retry > 5) {
            ISP_LOG("shakehand FAIL\r\n");
            isp_log_set_deferred(false);
            return ISP_UART_RX_TIMEOUT;
        }
        bootrom_isp_enter();
        HAL_Delay(100);
    }
    ISP_LOG("shakehand OK\r\n");
    HAL_Delay(20);

    retry = 0;
    while (bootrom_isp_get_bootinfo() < 0) {
        retry++;
        if (retry > 3) {
            ISP_LOG("get_bootinfo FAIL\r\n");
            isp_log_set_deferred(false);
            return ISP_UART_RX_FAIL;
        }
        HAL_Delay(50);
    }

    uint16_t chip = (uint16_t)uart_recv_buffer[6] | ((uint16_t)uart_recv_buffer[7] << 8);
    uint32_t bootrom_ver = (uint32_t)uart_recv_buffer[4] |
                           ((uint32_t)uart_recv_buffer[5] << 8) |
                           ((uint32_t)uart_recv_buffer[6] << 16) |
                           ((uint32_t)uart_recv_buffer[7] << 24);
    bootrom_isp_dump_rx("bootinfo");
    ISP_LOG("bootinfo chip=0x%03x ver=%lu\r\n", chip, (unsigned long)bootrom_ver);
    /* BL602 bootrom v1 reports unique-id, not 0x602 at bytes [6:7]. */
    if (chip != 0 && chip != 0x602) {
        ISP_LOG("WARN: unexpected chip id\r\n");
    }

    ret = load_eflash_loader(loader);
    if (ret < 0) {
        isp_log_set_deferred(false);
        return ret;
    }

    retry = 0;
    while (bootrom_isp_shakehand55() < 0) {
        retry++;
        ISP_LOG("reshake retry %d\r\n", retry);
        if (retry > 5) {
            ISP_LOG("reshake FAIL\r\n");
            isp_log_set_deferred(false);
            return ISP_UART_RX_TIMEOUT;
        }
        HAL_Delay(20);
    }
    ISP_LOG("reshake OK\r\n");
    HAL_Delay(10);

    if (bootrom_isp_get_flash_id() < 0) {
        ISP_LOG("read flash id FAIL\r\n");
        isp_log_set_deferred(false);
        return ISP_UART_RX_FAIL;
    }
    ISP_LOG("flash id: %02X %02X %02X %02X\r\n",
            uart_recv_buffer[4], uart_recv_buffer[5],
            uart_recv_buffer[6], uart_recv_buffer[7]);

    ret = program_fw_image(image);
    if (ret < 0) {
        ISP_LOG("program fail ret=%d\r\n", ret);
        isp_log_set_deferred(false);
        return ret;
    }

    bootrom_isp_reset_to_app();
    ISP_LOG("==== Program Finished, BL602 reset to app ====\r\n");
    isp_log_set_deferred(false);
    return ISP_OK;
}
