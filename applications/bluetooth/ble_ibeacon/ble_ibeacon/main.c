/*
 * Copyright (c) 2020 Bouffalolab.
 *
 * This file is part of
 *     *** Bouffalolab Software Dev Kit ***
 *      (see www.bouffalolab.com).
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *   1. Redistributions of source code must retain the above copyright notice,
 *      this list of conditions and the following disclaimer.
 *   2. Redistributions in binary form must reproduce the above copyright notice,
 *      this list of conditions and the following disclaimer in the documentation
 *      and/or other materials provided with the distribution.
 *   3. Neither the name of Bouffalo Lab nor the names of its contributors
 *      may be used to endorse or promote products derived from this software
 *      without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */
#include <stdio.h>
#include <string.h>
#include <FreeRTOS.h>
#include <task.h>
#include <blog.h>
#include <stdio.h>
#include <cli.h>
#include <blog.h>
#include <bl_uart.h>
#include <bl_sys.h>
#include "hci_driver.h"
#include "ble_lib_api.h"
#include "bluetooth.h"
#include "gatt.h"
#include "uuid.h"
#include <hosal_uart.h>
#define PRIORITIE_OFFSET    4
/*set ibeacon name*/
#define IBEACON_NAME "MY_IBEACON"

/*ibeacon data*/
char my_ibeacon[]=
{
    0x4C, 0x00, //公司的标志 (0x004C == Apple)
	0x02, 0x15, //iBeacon advertisement indicator
	0xB9, 0x40, 0x7F, 0x30, 0xF5, 0xF8, 0x46, 0x6E, 0xAF, 0xF9, 0x25, 0x55, 0x6B, 0x57, 0xFE, 0x6D, // iBeacon proximity uuid
	0x00, 0x01, // major 
	0x00, 0x01, // minor 
	0xc5 //power
};

static struct bt_data ibeacon_data[2] = 
{
	BT_DATA_BYTES(BT_DATA_FLAGS, (BT_LE_AD_GENERAL | BT_LE_AD_NO_BREDR)),
    BT_DATA(BT_DATA_MANUFACTURER_DATA, my_ibeacon, sizeof(my_ibeacon)),//
};

/*start ble advertise*/
void ble_start_advertise(void)
{
    struct bt_le_adv_param param;
    param.id = BT_ID_DEFAULT;
    param.interval_min = BT_GAP_ADV_FAST_INT_MIN_2;
    param.interval_max = BT_GAP_ADV_FAST_INT_MAX_2;
    //param.options =  BT_LE_ADV_OPT_USE_NAME | BT_LE_ADV_OPT_ONE_TIME;
    param.options = BT_LE_ADV_OPT_CONNECTABLE | BT_LE_ADV_OPT_USE_NAME | BT_LE_ADV_OPT_ONE_TIME;
    /*Get mode, 0:General discoverable,  1:non discoverable, 2:limit discoverable*/
    bt_le_adv_start(&param,ibeacon_data, ARRAY_SIZE(ibeacon_data),NULL,0);
    bt_set_name(IBEACON_NAME);
}

/*BLE ibeacon init*/
void ble_ibeacon_init(void)
{               
    printf("ble_controller_init\r\n");                                         
    ble_controller_init(configMAX_PRIORITIES - 1); //ble协议栈初始化
    printf("hci_driver_init\r\n");
    hci_driver_init();//初始化驱动
    printf("bt_enable\r\n");
    bt_enable(NULL);
    ble_start_advertise();//开启广播
}

static void app_init_thread(void *param)
{
    vTaskDelay(10 / portTICK_RATE_MS);
    ble_ibeacon_init();
    vTaskDelete(NULL);
}

static void app_init_entry(void)
{
    if(xTaskCreate(app_init_thread, ((const char*)"app_init"), 1024*6, NULL, tskIDLE_PRIORITY + 3 + PRIORITIE_OFFSET, NULL) != pdPASS)
    printf("\n\r%s xTaskCreate(init_thread) failed", __FUNCTION__);
}

static void ble_loop_proc(void *pvParameters)
{
    app_init_entry();
    vTaskDelete(NULL);
}

void main(void)
{
    bl_uart_init(0, 16, 7, 255, 255, 115200);//set uart baud 115200
    printf("AXK BLE IBEACON\r\n");//log
    bl_sys_init(); //if use ble,must init
    xTaskCreate(ble_loop_proc,  (char*)"ibeacon", 1024, NULL, 15, NULL);
}


