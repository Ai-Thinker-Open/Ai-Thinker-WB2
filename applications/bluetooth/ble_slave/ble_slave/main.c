
#include <FreeRTOS.h>
#include <task.h>
#include <timers.h>
#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <aos/kernel.h>
#include <aos/yloop.h>
#include <event_device.h>
#include <bl_sys.h>
#include "ble_lib_api.h"
#include <hosal_uart.h>
#include <blog.h>
#include <hosal_uart.h>
#include <hosal_timer.h>
#include "gatt.h"
#include "bluetooth.h"
#include "ble_interface.h"

hosal_uart_dev_t uart_dev_log = {
    .config = {
        .uart_id = 0,
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

void TaskUart(void *param)
{
    uint8_t data[32] = {0};
    int ret;

    hosal_uart_init(&uart_dev_log);

    while (1)
    {
        /* Uart receive poll */
        ret = hosal_uart_receive(&uart_dev_log, data, sizeof(data));
        if (ret > 0)
        {
            UUID1_SendNotify(strlen((char *)data), data);
        }
        vTaskDelay(50);
    }
}

static void proc_main_entry(void *pvParameters)
{
    apps_ble_start();
    vTaskDelete(NULL);
}

void main()
{
    bl_sys_init();
    puts("[OS] proc_main_entry task...\r\n");
    xTaskCreate(TaskUart, "TaskUart", 2048, NULL, 15, NULL);
    xTaskCreate(proc_main_entry, (char *)"main_entry", 1024, NULL, 15, NULL);
}
