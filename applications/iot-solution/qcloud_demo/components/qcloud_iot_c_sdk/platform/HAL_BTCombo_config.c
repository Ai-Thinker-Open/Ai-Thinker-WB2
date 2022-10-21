/*
 * Copyright (c) 2020 Tencent Cloud. All rights reserved.

 * Licensed under the MIT License (the "License"); you may not use this file except in
 * compliance with the License. You may obtain a copy of the License at
 * http://opensource.org/licenses/MIT

 * Unless required by applicable law or agreed to in writing, software distributed under the License is
 * distributed on an "AS IS" basis, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND,
 * either express or implied. See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <stdbool.h>

#include "qcloud_iot_export.h"
#include "qutils_timer.h"

#include "qcloud_wifi_config.h"
#include "qcloud_wifi_config_internal.h"

#include "ble_qiot_export.h"

#if WIFI_PROV_BT_COMBO_CONFIG_ENABLE

static bool             sg_bt_combo_config_start = false;
static eWiFiConfigState ap_connect_state         = WIFI_CONFIG_ING;

void set_bt_combo_config_state(eWiFiConfigState state)
{
    ap_connect_state = state;
}

static eWiFiConfigState get_bt_combo_config_state(void)
{
    return ap_connect_state;
}

static void bt_combo_report_wificonn_success()
{
    // TODO：set current wifi info
    extern  char sta_ssid[33];
    extern  int std_ssid_len;

    ble_event_report_wifi_connect(BLE_WIFI_MODE_STA, BLE_WIFI_STATE_CONNECT, (uint8_t)std_ssid_len, (const char *)sta_ssid);
}

static int bt_combo_report_bind_result(int token_status)
{
    int ret = QCLOUD_ERR_FAILURE;

    ret = ble_event_report_wifi_token(token_status);

    return ret == BLE_QIOT_RS_OK ? QCLOUD_RET_SUCCESS : QCLOUD_ERR_FAILURE;
}

static void bt_combo_config_task(void *params)
{
    WifiConfigEventCallBack wifi_config_event_cb = params;
    int                     bind_reply_code      = 0;
    uint32_t                time_count           = WIFI_CONFIG_WAIT_TIME_MS / WIFI_CONFIG_BLINK_TIME_MS;

    while ((true == sg_bt_combo_config_start) && (--time_count)) {
        // check bt combo config result, call set_bt_combo_apconn_state set result
        // call set_bt_combo_token_state set token is getted

        if ((WIFI_CONFIG_SUCCESS == get_bt_combo_config_state()) && (true == HAL_Wifi_IsConnected())) {
            PUSH_LOG("bt combo report wifi connect success");
            bt_combo_report_wificonn_success();
            wifi_config_event_cb(EVENT_WIFI_CONFIG_SUCCESS, NULL);
            if (true == qiot_device_bind_get_cloud_reply_code(&bind_reply_code)) {
                PUSH_LOG("bt combo report reply code %d", bind_reply_code);
                bt_combo_report_bind_result(bind_reply_code);
            }
            break;
        } else if (WIFI_CONFIG_FAIL == get_bt_combo_config_state()) {
            wifi_config_event_cb(EVENT_WIFI_CONFIG_FAILED, NULL);
            PUSH_LOG("WIFI_MQTT_CONNECT_FAILED");
            break;
        }

        HAL_SleepMs(WIFI_CONFIG_BLINK_TIME_MS);

        if (time_count % 10 == 0) {
            Log_d("bt combo task running!");
        }
    }

    Log_d("task end connect_success :%d, task_run :%d", get_bt_combo_config_state(), sg_bt_combo_config_start);

    if (0 == time_count) {
        wifi_config_event_cb(EVENT_WIFI_CONFIG_TIMEOUT, NULL);
        bt_combo_report_bind_result(408);   //timeout
        PUSH_LOG("WIFI_MQTT_CONNECT_TIMEOUT");
    }

    HAL_BTComboConfig_Stop();
}

int _bt_combo_config_task_start(void *params)
{
    static ThreadParams thread_params;
    thread_params.thread_func = bt_combo_config_task;
    thread_params.thread_name = "bt_combo_config_task";
    thread_params.stack_size  = 3 * 1024;
    thread_params.priority    = 3;
    thread_params.user_arg    = params;
    int ret                   = HAL_ThreadCreate(&thread_params);
    if (QCLOUD_RET_SUCCESS != ret) {
        Log_e("HAL_ThreadCreate(_bt_combo_config_task_start) failed!");
        return -1;
    }

    return 0;
}

extern void ble_qiot_service_init(void);
int start_device_btcomboconfig(void)
{
    // TODO other init
    ble_qiot_service_init();   // init llsync sdk
    // 乐鑫在此处开启station模式

    return QCLOUD_RET_SUCCESS;
}

int stop_device_btcomboconfig(void)
{
    ble_qiot_advertising_stop();
    // TODO other deinit

    return QCLOUD_RET_SUCCESS;
}

#endif

/**
 * @brief Start bt combo config
 *
 * @param params is null
 *
 * @return 0 when success, or err code for failure
 */
int HAL_BTComboConfig_Start(void *params, WifiConfigEventCallBack event_cb)
{
    int ret = QCLOUD_RET_SUCCESS;
#if WIFI_PROV_BT_COMBO_CONFIG_ENABLE
    PUSH_LOG("bt combo configure network start, state = 0");
    set_bt_combo_config_state(WIFI_CONFIG_ING);

    // TO-DO device platform start bt combo config
    PUSH_LOG("start device init");
    ret = start_device_btcomboconfig();
    if (QCLOUD_RET_SUCCESS != ret) {
        PUSH_LOG("start bt combo config failed! ret:%d", ret);
        Log_e("start bt combo config failed! ret:%d", ret);
        return ret;
    }

    sg_bt_combo_config_start = true;

    PUSH_LOG("start bt combo configure network task");
    ret = _bt_combo_config_task_start(event_cb);
    if (QCLOUD_RET_SUCCESS != ret) {
        PUSH_LOG("start bt combo configure network task failed");
        HAL_BTComboConfig_Stop();
    }
    PUSH_LOG("start bt combo configure network end, ret %d", ret);
#endif
    return ret;
}

/**
 * @brief Stop WiFi config and device binding process
 */
int HAL_BTComboConfig_Stop(void)
{
    int ret = QCLOUD_RET_SUCCESS;
#if WIFI_PROV_BT_COMBO_CONFIG_ENABLE
    PUSH_LOG("bt combo configure network stop, state = 0");
    set_bt_combo_config_state(WIFI_CONFIG_ING);

    if (sg_bt_combo_config_start) {
        Log_i("HAL_BTComboConfig_Stop");

        sg_bt_combo_config_start = false;

        // TO-DO device platform stop bt combo config
        PUSH_LOG("start device deinit");
        ret = stop_device_btcomboconfig();
    }
    PUSH_LOG("stop bt combo configure network end, ret %d", ret);
#endif
    return ret;
}
