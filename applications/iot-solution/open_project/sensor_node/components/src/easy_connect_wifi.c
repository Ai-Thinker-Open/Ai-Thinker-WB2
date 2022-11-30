/**
 * @file easy_connect_wifi.c
 * @author your name (you@domain.com)
 * @brief
 * @version 0.1
 * @date 2022-11-22
 *
 * @copyright Copyright (c) 2022
 *
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <FreeRTOS.h>
#include <task.h>
#include <blog.h>
#include <aos/yloop.h>
#include <aos/kernel.h>
#include <lwip/tcpip.h>
#include <wifi_mgmr_ext.h>
#include <hal_wifi.h>
#include <bl_sys.h>
#include "easy_connect_wifi.h"
#include "wechat_mqtt.h"
#include "nfc_blufi.h"

EventGroupHandle_t wifi_event_handle;

void wifi_easy_connect(void)
{
    static TaskHandle_t proc_main_task;
    bl_sys_init();
    tcpip_init(NULL, NULL);
    wifi_event_handle = xEventGroupCreate();

    xTaskCreate(nfc_blufi_start, (char*)"main_entry", 1024, NULL, 9, &proc_main_task);
    xEventGroupWaitBits(wifi_event_handle, WIFI_CONNECT_BIT, pdTRUE, pdFALSE, portMAX_DELAY);
}