#include "ble_interface.h"
#include "blufi_hal.h"

#include "ble_interface.h"

#include "gatt.h"
#include "conn.h"
#include "conn_internal.h"
#include "hci_core.h"

#include <stdio.h>
#include <stdlib.h>

#include <FreeRTOS.h>
#include "task.h"
#include "bluetooth.h"
#include "hci_driver.h"
#include "ble_lib_api.h"
#include "bl_port.h"
#include "blog.h"
#include <aos/yloop.h>
#include <aos/kernel.h>

void ble_reverse_byte(uint8_t* arr, uint32_t size)
{
    uint8_t i, tmp;

    for (i = 0; i < size / 2; i++)
    {
        tmp = arr[i];
        arr[i] = arr[size - 1 - i];
        arr[size - 1 - i] = tmp;
    }
}

static void _connected(struct bt_conn* conn, u8_t err)
{
    at_ble_conn_handle_t conn_handle;
    at_ble_addr_t peer_addr;

    bt_addr_le_t* addr;

    if (conn->type != BT_CONN_TYPE_LE)
    {
        return;
    }

    /* get dest addr */
    addr = bt_conn_get_dst(conn);
    peer_addr.type = addr->type;
    memcpy(peer_addr.val, addr->a.val, 6);
    /* reverse mac byte */
    ble_reverse_byte(peer_addr.val, 6);

    conn_handle.type = AT_POINT_HANDLE;
    conn_handle.p_handle = (void*)conn;

    extern struct bt_conn* g_blufi_conn;
    g_blufi_conn = conn;
    axk_ble_blufi_gap_connect_export(&conn_handle, &peer_addr);

    blog_info("[BLE] connected ");

    return;
}

static void _disconnected(struct bt_conn* conn, u8_t reason)
{
    at_ble_conn_handle_t conn_handle;

    if (conn->type != BT_CONN_TYPE_LE)
    {
        return;
    }

    conn_handle.type = AT_POINT_HANDLE;
    conn_handle.p_handle = (void*)conn;

    extern struct bt_conn* g_blufi_conn;
    at_ble_addr_t peer_addr;
    bt_addr_le_t* addr;

    /* get dest addr */
    addr = bt_conn_get_dst(conn);
    peer_addr.type = addr->type;
    memcpy(peer_addr.val, addr->a.val, 6);
    /* reverse mac byte */
    ble_reverse_byte(peer_addr.val, 6);

    g_blufi_conn = NULL;
    axk_ble_blufi_gap_disconnect_export(&peer_addr);

    blog_info("[BLE] disconnected, reason:%d ", reason);
}

static bool _le_param_req(struct bt_conn* conn,
                          struct bt_le_conn_param* param)
{
    blog_info("[BLE] conn param request: int 0x%04x-0x%04x lat %d to %d ",
           param->interval_min,
           param->interval_max,
           param->latency,
           param->timeout);

    return true;
}

static void _le_param_updated(struct bt_conn* conn, u16_t interval,
                              u16_t latency, u16_t timeout)
{
    at_ble_conn_handle_t conn_handle;

    conn_handle.type = AT_POINT_HANDLE;
    conn_handle.p_handle = (void*)conn;

    blog_info("[BLE] conn param updated: int 0x%04x lat %d to %d ", interval, latency, timeout);
}

static void _le_phy_updated(struct bt_conn* conn, u8_t tx_phy, u8_t rx_phy)
{
    blog_info("[BLE] phy updated: rx_phy %d, rx_phy %d ", tx_phy, rx_phy);
}

static void _ble_mtu_changed_cb(struct bt_conn* conn, int mtu)
{
    at_ble_conn_handle_t conn_handle;

    conn_handle.type = AT_POINT_HANDLE;
    conn_handle.p_handle = (void*)conn;

    /* normal/blufi interface */

    axk_ble_blufi_gap_mtu_change_export(mtu);

    blog_info("[BLE] mtu updated:%d ", mtu);
}

static struct bt_conn_cb conn_callbacks = {
    .connected = _connected,
    .disconnected = _disconnected,
    .le_param_req = _le_param_req,
    .le_param_updated = _le_param_updated,
    .le_phy_updated = _le_phy_updated,
};

static void ble_disconnect_all(struct bt_conn* conn, void* data)
{
    if (conn->state == BT_CONN_CONNECTED)
    {
        blog_info("[BLE] disconn id:%d ", conn->id);
        bt_conn_disconnect(conn, BT_HCI_ERR_REMOTE_USER_TERM_CONN);
    }
}

static void bt_enable_cb(int err)
{
    if (!err)
    {
        bt_addr_le_t bt_addr;
        bt_get_local_public_address(&bt_addr);
        blog_info("BD_ADDR:(MSB)%02x:%02x:%02x:%02x:%02x:%02x(LSB) ",
               bt_addr.a.val[5], bt_addr.a.val[4], bt_addr.a.val[3], bt_addr.a.val[2], bt_addr.a.val[1], bt_addr.a.val[0]);
    }
}

void ble_stack_start(void)
{
    // Initialize BLE controller
    ble_controller_init(configMAX_PRIORITIES - 1);
    // Initialize BLE Host stack
    hci_driver_init();
    bt_enable(bt_enable_cb);
}

int axk_hal_ble_role_set(ble_role_t role)
{
    int ret;

    blog_info("ble set role:%d ", role);
    if (role == BLE_ROLE_DEINIT)
    {
        bt_conn_foreach(BT_CONN_TYPE_ALL, ble_disconnect_all, NULL);

        /* wait for all connection to be disconnected */
        int disconn_cnt = 0;
        while (le_check_valid_conn() && disconn_cnt++ < 10) {
            blog_info("[BLE] wait for ble_disconnect_all");
            vTaskDelay(pdMS_TO_TICKS(500));
        }

        bt_le_adv_stop();
        ret = bt_disable();
        if (ret) {
            return -1;
        }
    }
    else
    {
        ble_stack_start();
        bt_gatt_register_mtu_callback(_ble_mtu_changed_cb);
        bt_conn_cb_register(&conn_callbacks);
        /* avoid callback infinite loop */
        conn_callbacks._next = NULL;
    }

    return 0;
}

int axk_hal_ble_adv_start(ble_adv_param_t* adv_param, ble_adv_data_t* adv_data)
{
    int ret;
    struct bt_le_adv_param param;
    const struct bt_data* ad = NULL;

    param.id = 0;
    param.interval_min = adv_param->adv_int_min;
    param.interval_max = adv_param->adv_int_max;
    param.options = BT_LE_ADV_OPT_NONE;
    switch (adv_param->adv_type)
    {
        case AXK_BLE_ADV_TYPE_IND:
            param.options |= (BT_LE_ADV_OPT_CONNECTABLE | BT_LE_ADV_OPT_USE_NAME | BT_LE_ADV_OPT_ONE_TIME);
            break;
        case AXK_BLE_ADV_TYPE_DIRECT_IND_HIGH:
            param.options |= BT_LE_ADV_OPT_DIR_ADDR_RPA;
            break;
        case AXK_BLE_DV_TYPE_SCAN_IND:
            param.options |= BT_LE_ADV_OPT_USE_NAME;
            break;
        case AXK_BLE_ADV_TYPE_NONCONN_IND:
            break;
        case AXK_BLE_ADV_TYPE_DIRECT_IND_LOW:
            param.options |= BT_LE_ADV_OPT_DIR_MODE_LOW_DUTY;
            break;
        default:
            break;
    }

    set_adv_param(&param);

    blog_info("[BLE] set adv");
    ret = set_ad_and_rsp_d(BT_HCI_OP_LE_SET_ADV_DATA, adv_data->data, adv_data->data_len);
    ret = set_ad_and_rsp_d(BT_HCI_OP_LE_SET_SCAN_RSP_DATA, adv_data->rsp_data, adv_data->rsp_data_len);

    if (ret != 0)
    {
        return -1;
    }

    blog_info("[BLE] en adv");
    if (set_adv_enable(1) != 0)
    {
        return -1;
    }

    return 0;
}

int axk_hal_ble_adv_stop(void)
{
    bt_le_adv_stop();

    return 0;
}