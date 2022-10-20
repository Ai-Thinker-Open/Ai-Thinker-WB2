/*
 * @Author: xuhongv@yeah.net
 * @Date: 2022-10-03 15:02:19
 * @LastEditors: xuhongv@yeah.net xuhongv@yeah.net
 * @LastEditTime: 2022-10-20 17:42:45
 * @FilePath: \bl_iot_sdk_for_aithinker\applications\get-started\helloworld\helloworld\main.c
 * @Description: Uart
 */
#include <stdio.h>
#include <string.h>
#include <FreeRTOS.h>
#include <task.h>
#include <blog.h>
#include "bl_sys.h"
#include <stdio.h>
#include <cli.h>
#include <hosal_uart.h>
#include <blog.h>
#include <hosal_uart.h>

void TaskUart(void *param)
{

    uint8_t data[32];
    int ret;

    hosal_uart_dev_t uart_dev_echo = {
        .config = {
            .uart_id = 0,
            .tx_pin = 4, // TXD GPIO
            .rx_pin = 3, // RXD GPIO
            .cts_pin = 255,
            .rts_pin = 255,
            .baud_rate = 9600,
            .data_width = HOSAL_DATA_WIDTH_8BIT,
            .parity = HOSAL_NO_PARITY,
            .stop_bits = HOSAL_STOP_BITS_1,
            .mode = HOSAL_UART_MODE_POLL,
        },
    };

    hosal_uart_dev_t uart_dev_log = {
        .config = {
            .uart_id = 1,
            .tx_pin = 16, // TXD GPIO
            .rx_pin = 7,  // RXD GPIO
            .cts_pin = 255,
            .rts_pin = 255,
            .baud_rate = 115200,
            .data_width = HOSAL_DATA_WIDTH_8BIT,
            .parity = HOSAL_NO_PARITY,
            .stop_bits = HOSAL_STOP_BITS_1,
            .mode = HOSAL_UART_MODE_POLL,
        },
    };

    /* Uart init device */
    hosal_uart_init(&uart_dev_log);
    /* Uart init device */
    hosal_uart_init(&uart_dev_echo);
    blog_info("Uart Demo Start");
    while (1)
    {
        /* Uart receive poll */
        ret = hosal_uart_receive(&uart_dev_log, data, sizeof(data));
        if (ret > 0)
        {
            /* Uart send poll */
            hosal_uart_send(&uart_dev_log, data, ret);
            blog_info("Get data ");
        }
    }
}

/**
 * @brief main
 *
 */
void main(void)
{

    xTaskCreate(TaskUart, "TaskUart", 1024, NULL, 15, NULL);
}
