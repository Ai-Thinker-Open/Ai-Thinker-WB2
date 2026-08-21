#ifndef _BOOTROM_ISP_H
#define _BOOTROM_ISP_H

#define ISP_UART_DMA_TIMEOUT -1
#define ISP_UART_RX_TIMEOUT  -2
#define ISP_UART_RX_FAIL     -3

#define TARGET_BL602  0
#define TARGET_BL702  1
#define TARGET_BL606P 2
#define TARGET_BL808  3
#define TARGET_BL616  4

#define UART_RTS_PIN GPIO_PIN_24
#define UART_DTR_PIN GPIO_PIN_25

struct bootrom_isp {
    uint8_t target_chip;
    uint32_t eflash_loader_addr;
    const char *bin_path;
    const uint8_t *clock_para;
    uint8_t clock_para_len;
    const uint8_t *flash_para;
    uint8_t flash_para_len;
};

void bootrom_isp_init(void);

#endif