/*
 * @Author: xuhongv | 半颗心脏 xuhongv@yeah.net
 * @Date: 2022-12-16 16:39:33
 * @LastEditors: xuhongv | 半颗心脏 xuhongv@yeah.net
 * @LastEditTime: 2022-12-19 13:47:13
 * @FilePath: \bl_iot_sdk_for_aithinker\applications\bluetooth\blufi\blufi\blufi_hal.c
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
#include "blufi_hal.h"
#include "bluetooth.h"
#include "hci_driver.h"
#include "hci_core.h"
#include "ble_lib_api.h"
#include "conn.h"
#include "conn_internal.h"
#include "gatt.h"
#include "bl_port.h"

#include <aos/yloop.h>
#include <aos/kernel.h>

#include <stdio.h>
#include <stdlib.h>

int g_blufi_role;
struct bt_conn *g_blufi_conn;

static void blufi_ccc_cfg_changed(const struct bt_gatt_attr *attr,
                                  u16_t value)
{
    printf("[BLUFI] ccc change %d", value);
}

static ssize_t blufi_write_val(struct bt_conn *conn, const struct bt_gatt_attr *attr,
                               const void *buf, u16_t len, u16_t offset,
                               u8_t flags)
{
    axk_ble_blufi_gatt_write_export((uint8_t *)buf, len);

    return len;
}

static struct bt_gatt_attr _blufi_server[] = {
    /* Primary Service */
    BT_GATT_PRIMARY_SERVICE(BT_UUID_DECLARE_16(0xFFFF)),

    /* Characteristic && Characteristic User Declaration */
    BT_GATT_CHARACTERISTIC(BT_UUID_DECLARE_16(0xFF01),
                           BT_GATT_CHRC_WRITE,
                           BT_GATT_PERM_WRITE, NULL, blufi_write_val,
                           NULL),

    /* Characteristic && Characteristic User Declaration */
    BT_GATT_CHARACTERISTIC(BT_UUID_DECLARE_16(0xFF02),
                           BT_GATT_CHRC_NOTIFY,
                           BT_GATT_PERM_READ, NULL, NULL,
                           NULL),
    BT_GATT_CCC(blufi_ccc_cfg_changed, BT_GATT_PERM_READ | BT_GATT_PERM_WRITE),
};

static struct bt_gatt_service blufi_server = BT_GATT_SERVICE(_blufi_server);

int axk_hal_blufi_init(void)
{
    g_blufi_role = 1;

    return 0;
}

void axk_hal_blufi_deinit(void)
{
    g_blufi_role = 0;

    return;
}

int axk_hal_blufi_server_create_start(void)
{
    int ret;

    ret = bt_gatt_service_register(&blufi_server);

    return ret;
}

int axk_hal_ble_gatt_blufi_notify_send(uint8_t *buf, uint16_t len)
{
    int ret;

    /* send data */
    ret = bt_gatt_notify(g_blufi_conn, &_blufi_server[4], buf, len);

    return ret;
}

int axk_hal_blufi_gap_disconnect(void)
{
    /* reserve interface */
    return 0;
}
