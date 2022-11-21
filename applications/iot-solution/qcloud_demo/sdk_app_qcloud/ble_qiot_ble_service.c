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


#include <string.h>
#include <stdlib.h>

#include <stdio.h>
#include "conn.h"
#include "gatt.h"
#include "hci_core.h"
#include <blog.h>
#include "FreeRTOS.h"
#include "task.h"
#include "cli.h"
#include "ble_cli_cmds.h"
#include "ble_lib_api.h"
#include "hci_driver.h"
#include "ble_qiot_config.h"
#include "ble_qiot_export.h"
#include "ble_qiot_service.h"
#include "ble_qiot_import.h"

#include "conn_internal.h"
#include "bluetooth.h"
#include "bl_port.h"

#include <aos/yloop.h>
#include <aos/kernel.h>



#define SAMPLE_DEVICE_NAME "BL602"


static unsigned char raw_adv_data[20] = { 0xE7,0xFE };

static const struct bt_data ad[] =
{
    BT_DATA_BYTES(BT_DATA_FLAGS, (BT_LE_AD_GENERAL | BT_LE_AD_NO_BREDR)),
    BT_DATA_BYTES(BT_DATA_UUID16_ALL,0xF0,0xFF),
    BT_DATA(BT_DATA_MANUFACTURER_DATA, raw_adv_data,19),

};

ble_qiot_ret_status_t ble_advertising_start(adv_info_s* adv)
{
#if 0
    uint8_t usr_adv_data[31] = { 0 };
    uint8_t len = 0;
    uint8_t index = 0;

    memcpy(usr_adv_data, &adv->manufacturer_info.company_identifier, sizeof(uint16_t));
    len = sizeof(uint16_t);
    memcpy(usr_adv_data + len, adv->manufacturer_info.adv_data, adv->manufacturer_info.adv_data_len);
    len += adv->manufacturer_info.adv_data_len;

    index = 7;
    raw_adv_data[index++] = len + 1;
    raw_adv_data[index++] = 0xFF;
    memcpy(raw_adv_data + index, usr_adv_data, len);
    index += len;

    raw_adv_data[index++] = strlen(SAMPLE_DEVICE_NAME) + 1;
    raw_adv_data[index++] = 0x09;
    memcpy(raw_adv_data + index, SAMPLE_DEVICE_NAME, strlen(SAMPLE_DEVICE_NAME));
    index += strlen(SAMPLE_DEVICE_NAME);


    blog_info("start advertising");
    int err = bt_le_adv_start(BT_LE_ADV_CONN_NAME, raw_adv_data, index, NULL, 0);
    if (err) {
        blog_info("Advertising failed to start (err %d)\n", err);

        return err;

    }

    return 0;
#endif
    int err;

    // for (int n = 0; n < adv->manufacturer_info.adv_data_len; n++)
    // {
    //     blog_info(" _%x  ", adv->manufacturer_info.adv_data[n]);
    // }
    blog_info_hexdump("dav data", adv->manufacturer_info.adv_data, adv->manufacturer_info.adv_data_len);

    raw_adv_data[0] = 0xE7;
    raw_adv_data[1] = 0xFE;
    memcpy(&raw_adv_data[2], adv->manufacturer_info.adv_data, adv->manufacturer_info.adv_data_len);
    blog_info("Bluetooth Advertising start\n");

    err = bt_le_adv_start(BT_LE_ADV_CONN_NAME, ad, ARRAY_SIZE(ad), NULL, 0);
    if (err)
    {
        blog_error("Advertising failed to start (err %d)\n", err);
    }

    return 0;
}

ble_qiot_ret_status_t ble_advertising_stop(void)
{
    bt_le_adv_stop();
    return 0;
}

#define BT_UUID_QQ                     BT_UUID_DECLARE_128(BT_UUID_128_ENCODE(0x0000fff0, 0x65d0, 0x4e20, 0xb56a, 0xe493541ba4e2))

#define BT_UUID_QQ_DATA_IN    BT_UUID_DECLARE_128(BT_UUID_128_ENCODE(0x0000ffe1, 0x65d0, 0x4e20, 0xb56a, 0xe493541ba4e2))

#define BT_UUID_QQ_DATA_OUT BT_UUID_DECLARE_128(BT_UUID_128_ENCODE(0x0000ffe3, 0x65d0, 0x4e20, 0xb56a, 0xe493541ba4e2))

static void ble_bl_ccc_cfg_changed(const struct bt_gatt_attr* attr, u16_t vblfue);
static int ble_blf_recv(struct bt_conn* conn,
              const struct bt_gatt_attr* attr, const void* buf,
              u16_t len, u16_t offset, u8_t flags);
static struct bt_conn* ble_bl_conn = NULL;

static struct bt_gatt_attr blattrs[] = {
    BT_GATT_PRIMARY_SERVICE(BT_UUID_QQ),

    BT_GATT_CHARACTERISTIC(BT_UUID_QQ_DATA_OUT,
                            BT_GATT_CHRC_NOTIFY,
                            BT_GATT_PERM_READ,
                            NULL,
                            NULL,
                            NULL),

    BT_GATT_CCC(ble_bl_ccc_cfg_changed, BT_GATT_PERM_READ | BT_GATT_PERM_WRITE),

    BT_GATT_CHARACTERISTIC(BT_UUID_QQ_DATA_IN,
                            BT_GATT_CHRC_WRITE_WITHOUT_RESP,
                            BT_GATT_PERM_READ | BT_GATT_PERM_WRITE,
                            NULL,
                            ble_blf_recv,
                            NULL)
};

static void ble_bl_ccc_cfg_changed(const struct bt_gatt_attr* attr, u16_t vblfue)
{
    if (vblfue == BT_GATT_CCC_NOTIFY)
    {
        blog_info("enable notify.");
    }
    else
    {
        blog_error("disable notify.");
    }
}

static int ble_blf_recv(struct bt_conn* conn,
              const struct bt_gatt_attr* attr, const void* buf,
              u16_t len, u16_t offset, u8_t flags)
{
    uint8_t* tem_buff = malloc(len + 1);
    if (tem_buff == NULL)
    {
        return -1;
    }

    memset(tem_buff, 0, len + 1);
    memcpy(tem_buff, buf, len);

    blog_info("[BLE RECV] len=%d", len);
    // for (size_t i = 0; i < len; i++)
    // {
    //     blog_info("%02X ", tem_buff[i]);
    // }
    blog_info_hexdump("DATA", tem_buff, len);

    ble_device_info_write_cb((const uint8_t*)tem_buff, len);

    free(tem_buff);

    return 0;
}

ble_qiot_ret_status_t ble_send_notify(uint8_t* buf, uint8_t len)
{
    if (ble_bl_conn != NULL)
    {
        blog_info("ble_send_notify len=%d", len);
        // bt_gatt_notify(ble_bl_conn, &blattrs[1],buf,len);
        // char data[10] = {0x00,0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09};

        bt_gatt_notify(ble_bl_conn, &blattrs[1], buf, len);
    }

    return BLE_QIOT_RS_OK;
}

struct bt_gatt_service ble_bl_server = BT_GATT_SERVICE(blattrs);

void ble_services_add(const qiot_service_init_s* p_service)
{
    bt_gatt_service_register(&ble_bl_server);
}

static void connected(struct bt_conn* conn, u8_t err)
{
    if (err)
    {
        blog_error("Connection failed (err 0x%02x)", err);
    }
    else
    {
        blog_info("Connected\n");
        ble_bl_conn = conn;
        ble_gap_connect_cb();
    }
}

static void disconnected(struct bt_conn* conn, u8_t reason)
{
    blog_info("disConnected");
    if (ble_bl_conn == conn)
    {
        ble_bl_conn = NULL;
    }
    ble_gap_disconnect_cb();
}
static struct bt_conn_cb conn_callbacks = {
    .connected = connected ,
    .disconnected = disconnected,
};

void ble_qiot_service_init(void)
{
    ble_controller_init(configMAX_PRIORITIES - 1);
    // Initiblfize BLE Host stack
    hci_driver_init();
    bt_enable(NULL);
    bt_conn_cb_register(&conn_callbacks);
    // init llsync sdk
    ble_qiot_explorer_init();       // 注册蓝牙服务，获取三元组信息
    ble_qiot_advertising_start();   // 组包，广播
}

int ble_get_mac(char* mac)
{
    bt_addr_le_t local_pub_addr;
    bt_get_local_public_address(&local_pub_addr);
    memcpy(mac, local_pub_addr.a.val, 6);

    return 0;
}

void ble_deinit(void)
{
    int err;

    if (ble_bl_conn != NULL)
    {
        bt_conn_disconnect(ble_bl_conn, 0x13);
    }
    vTaskDelay(50);
    ble_bl_conn = NULL;
    bt_le_adv_stop();
    vTaskDelay(50);
    bt_gatt_service_unregister(&ble_bl_server);
    err = bt_disable();
    if (err)
    {
        blog_error("Fail to disable bt, there is existed scan/adv/conn event ");
    }
    else
    {
        blog_info("Disable bt successfully");
    }
}