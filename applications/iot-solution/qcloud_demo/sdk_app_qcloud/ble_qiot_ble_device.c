/*
 * Copyright (C) 2019 THL A29 Limited, a Tencent company. All rights reserved.
 * Licensed under the MIT License (the "License"); you may not use this file except in
 * compliance with the License. You may obtain a copy of the License at
 * http://opensource.org/licenses/MIT
 * Unless required by applicable law or agreed to in writing, software distributed under the License is
 * distributed on an "AS IS" basis, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND,
 * either express or implied. See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */
#ifdef __cplusplus
extern "C" {
#endif

#include "ble_qiot_export.h"
#include "ble_qiot_service.h"
#include "ble_qiot_import.h"

// add ble qiot head file here
#include "ble_qiot_config.h"
#include "ble_qiot_import.h"
#include "ble_qiot_log.h"
#include "ble_qiot_common.h"


#include "qcloud_iot_export.h"
#include "qcloud_iot_import.h"
#include "qcloud_wifi_config.h"

#include "wifi_mgmr_ext.h"
#include "ble_qiot_llsync_device.h"

extern ble_device_info           sg_device_info;

char sta_ssid[33] = {0};
int std_ssid_len = 0;
char sta_passwd[65] = {0};
int sta_passwd_len = 0;

int ble_get_product_id(char *product_id)
{
    DeviceInfo devinfo;
    char mac[6];
    int ret = 0;
    ble_get_mac(mac);
    ret = HAL_GetDevInfo(&devinfo);
    if (ret != QCLOUD_RET_SUCCESS)
    {
        return -1;
    }

    memcpy(product_id, devinfo.product_id, BLE_QIOT_PRODUCT_ID_LEN);
    memcpy(sg_device_info.mac, mac, 6);
    return 0;
}

int ble_get_device_name(char *device_name)
{
    DeviceInfo devinfo;
    int ret = 0;

    ret = HAL_GetDevInfo(&devinfo);
    if (ret != QCLOUD_RET_SUCCESS)
    {
        return -1;
    }

    memcpy(device_name, devinfo.device_name, strlen(devinfo.device_name));

    return strlen(devinfo.device_name);
}
	
void wifi_init_sta(void)
{
	
}

wifi_interface_t wifi_interface=NULL;	
ble_qiot_ret_status_t ble_combo_wifi_mode_set(BLE_WIFI_MODE mode)
{
	wifi_interface = wifi_mgmr_sta_enable();
	return ble_event_report_wifi_mode(0);
}

ble_qiot_ret_status_t ble_combo_wifi_info_set(const char *ssid, uint8_t ssid_len, const char *passwd, uint8_t passwd_len)
{
    memset(sta_ssid,0,sizeof(sta_ssid));
    memset(sta_passwd,0,sizeof(sta_passwd));
    std_ssid_len=ssid_len;
    sta_passwd_len=passwd_len;

    memcpy(sta_ssid,ssid,ssid_len);
    memcpy(sta_passwd,passwd,passwd_len);
    set_bt_combo_config_state(WIFI_CONFIG_SUCCESS);
    return ble_event_report_wifi_info(0);
}

ble_qiot_ret_status_t ble_combo_wifi_connect()
{
    wifi_mgmr_sta_connect(wifi_interface, sta_ssid, sta_passwd, NULL, NULL, 0, 0);
	return 0;
}

ble_timer_t ble_timer_create(uint8_t type, ble_timer_cb timeout_handle)
{
    return 0;
}

ble_qiot_ret_status_t ble_timer_start(ble_timer_t timer_id, uint32_t period)
{
    return 0;
}

ble_qiot_ret_status_t ble_timer_stop(ble_timer_t timer_id)
{
    return 0;
}

ble_qiot_ret_status_t ble_timer_delete(ble_timer_t timer_id)
{
    return 0;
}

// return ATT MTU
uint16_t ble_get_user_data_mtu_size(e_system type)
{
    return 128;
}


#ifdef __cplusplus
}
#endif
