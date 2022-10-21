/*
 * Tencent is pleased to support the open source community by making IoT Hub
 available.
 * Copyright (C) 2018-2020 THL A29 Limited, a Tencent company. All rights
 reserved.

 * Licensed under the MIT License (the "License"); you may not use this file
 except in
 * compliance with the License. You may obtain a copy of the License at
 * http://opensource.org/licenses/MIT

 * Unless required by applicable law or agreed to in writing, software
 distributed under the License is
 * distributed on an "AS IS" basis, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 KIND,
 * either express or implied. See the License for the specific language
 governing permissions and
 * limitations under the License.
 *
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "qcloud_iot_export.h"
#include "qcloud_iot_import.h"

#include "qcloud_wifi_config.h"
// ble sdk inlcude
#include "ble_qiot_export.h"
#include "ble_qiot_import.h"

// add my include
#include <bl60x_fw_api.h>
#include <wifi_mgmr_ext.h>
#include <easyflash.h>

// add my code
bool q_cloud_IsConnected = 0;
char g_ssid[64+1] = {0};
char g_pwd[32+1] = {0};

static int wifi_ap_deauth(uint8_t *mac)
{
    int i;
    struct wifi_sta_basic_info sta_info;
    uint8_t sta_cnt;

    wifi_mgmr_ap_sta_cnt_get(&sta_cnt);
    for (i = 0; i < sta_cnt; i++)
    {
        wifi_mgmr_ap_sta_info_get(&sta_info, i);
        if (!sta_info.is_used || (sta_info.sta_idx == 0xef))
            continue;

        if (mac == NULL || memcmp(sta_info.sta_mac, mac, 6) == 0)
            wifi_mgmr_ap_sta_delete(i);
    }

    return 0;
}

static int wifi_ap_stop(void)
{
    wifi_ap_deauth(NULL);
    wifi_mgmr_ap_stop(NULL);
    HAL_SleepMs(500);

    return 0;
}

static void wifi_connect(char *ssidname, char *password)
{
    wifi_interface_t wifi_interface;

    // wifi_ap_stop();

    wifi_interface = wifi_mgmr_sta_enable();
    wifi_mgmr_sta_connect(wifi_interface, ssidname, password, NULL, NULL, 0, 0);
}
// end add my code

int HAL_Wifi_StaConnect(const char *ssid, const char *psw, uint8_t channel)
{
    Log_i("STA to connect SSID:%s PASSWORD:%s CHANNEL:%d", ssid, psw, channel);
    ef_set_env_blob("ssid",ssid,strlen(ssid));
    ef_set_env_blob("pwd",psw,strlen(psw));    
    // TO-DO
    wifi_connect(ssid,psw);
    snprintf(g_ssid, sizeof(g_ssid)-1, "%s", ssid);
    snprintf(g_pwd, sizeof(g_pwd)-1, "%s", psw);

    return QCLOUD_RET_SUCCESS;
}

bool HAL_Wifi_IsConnected(void)
{
    // TO-DO, Get IP is true

    return q_cloud_IsConnected;
}

int HAL_Wifi_GetLocalIP(char *ipv4_buf, int ipv4_buf_len)
{
    // TO-DO, return QCLOUD_ERR_FAILURE when invalid ip
    // return QCLOUD_RET_SUCCESS when get valid ip
    // copy ipv4 string to ipv4_buf
    uint32_t ip, gw, mask;

    if (q_cloud_IsConnected == false)
        return QCLOUD_ERR_FAILURE;
    wifi_mgmr_sta_ip_get(&ip, &gw, &mask);
    snprintf(ipv4_buf, ipv4_buf_len, "%d.%d.%d.%d", (uint8_t)(ip >> 24),
             (uint8_t)(ip >> 16), (uint8_t)(ip >> 8), (uint8_t)ip);

    return QCLOUD_RET_SUCCESS;
}

int HAL_Wifi_GetAP_SSID(char *ssid_buf, int ssid_buf_len)
{
    // TO-DO, return connected ap ssid len
    // invalid ssid return QCLOUD_ERR_FAILURE
    // copy ssid string to ssid_buf
    int ssid_len = QCLOUD_ERR_FAILURE;
    if (q_cloud_IsConnected == true)
    {
        ssid_len = snprintf(ssid_buf, ssid_buf_len,"%s", g_ssid);
    }

    return ssid_len;
}

int HAL_Wifi_GetAP_PWD(char *pwd_buf, int pwd_buf_len)
{
    // TO-DO, return connected ap password of ssid len
    // invalid password return QCLOUD_ERR_FAILURE
    // copy password string to pwd_buf
    int password_len = QCLOUD_ERR_FAILURE;
    if (q_cloud_IsConnected == true)
    {
        password_len = snprintf(pwd_buf, pwd_buf_len, "%s", g_pwd);;
    }

    return password_len;
}

int HAL_Wifi_read_err_log(uint32_t offset, void *log, size_t log_size)
{
    Log_i("HAL_Wifi_read_err_log");

    return QCLOUD_RET_SUCCESS;
}

int HAL_Wifi_write_err_log(uint32_t offset, void *log, size_t log_size)
{
    Log_i("HAL_Wifi_write_err_log");

    return QCLOUD_RET_SUCCESS;
}

int HAL_Wifi_clear_err_log(void)
{
    Log_i("HAL_Wifi_clear_err_log");

    return QCLOUD_RET_SUCCESS;
}

///////////////////////////BLE SDK///////////////////////////

ble_qiot_ret_status_t ble_combo_wifi_token_set(const char *token, uint16_t len)
{
    qiot_device_bind_set_token(token);
    return 0;
}

ble_qiot_ret_status_t ble_combo_wifi_log_get(void)
{
    app_send_ble_dev_log();
    app_send_ble_error_log();
    return 0;
}
