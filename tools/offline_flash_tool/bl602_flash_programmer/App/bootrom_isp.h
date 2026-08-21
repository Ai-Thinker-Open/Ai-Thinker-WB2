#ifndef BOOTROM_ISP_H
#define BOOTROM_ISP_H

#include <stdint.h>
#include "stm32f1xx_hal.h"
#include "ff.h"

#define ISP_OK                0
#define ISP_UART_TX_TIMEOUT  -1
#define ISP_UART_RX_TIMEOUT  -2
#define ISP_UART_RX_FAIL     -3
#define ISP_ERR_LOADER       -4
#define ISP_ERR_ERASE        -5
#define ISP_ERR_PROGRAM      -6
#define ISP_ERR_VERIFY       -7
#define ISP_ERR_PARAM        -8
#define ISP_ERR_SD           -9

/* PA12 = RTS -> module EN, PA11 = DTR -> module BOOT */
#define ISP_RTS_GPIO_Port GPIOA
#define ISP_RTS_Pin       GPIO_PIN_12
#define ISP_DTR_GPIO_Port GPIOA
#define ISP_DTR_Pin       GPIO_PIN_11

void bootrom_isp_init(UART_HandleTypeDef *huart);

/**
 * Enter BL602 UART ISP, load eflash_loader from SD, then erase/program/verify
 * the application image (also from SD).
 */
int bootrom_isp_program(FIL *loader, FIL *image);

#endif
