
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
#include "ble_app.h"


static void event_cb_ble_event(input_event_t *event, void *private_data)
{
    switch (event->code) {
        case BLE_ADV_START:
        {
            printf("ble adv start \r\n");
        }
        break;
        case BLE_ADV_STOP:
        {
            printf("ble adv stop \r\n");
        }
        break;
        case BLE_DEV_CONN:
        {
            printf("ble dev connnected \r\n");
        }
        break;
        case BLE_DEV_DISCONN:
        {
            printf("ble dev disconnnected\r\n");
            vTaskDelay(5000);
            bleapps_adv_starting();
        }
        break;
        default:break;
    }
}

static void proc_main_entry(void *pvParameters)
{
    apps_ble_start();
    aos_register_event_filter(EV_BLE_TEST, event_cb_ble_event, NULL);    

    vTaskDelete(NULL);
}

void main()
{
    bl_sys_init();
    puts("[OS] proc_main_entry task...\r\n");
    xTaskCreate(proc_main_entry, (char*)"main_entry", 1024, NULL, 15, NULL);
}
