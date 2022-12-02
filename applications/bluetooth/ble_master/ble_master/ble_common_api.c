
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "conn.h"
#include "conn_internal.h"
#include "gatt.h"
#include "hci_core.h"

#include "ble_interface.h"

static struct bt_conn *conn_cur;
ble_gatt_conn_cb_t conn_cb;
ble_gatt_conn_cb_t disconn_cb;

static void _connected(struct bt_conn *conn, u8_t err)
{
    if (conn_cb) {
        if (conn_cb(conn, err) != 0) {
            return ;
        }
    }

    if(conn->type != BT_CONN_TYPE_LE) {
        return;
    }

    conn_cur = conn;

    printf("[BLE] connected \r\n");
    //axk_Callbacks.bleConnectCallback(NULL);

    return ;
}

static void _disconnected(struct bt_conn *conn, u8_t reason)
{
    if (disconn_cb) {
        if (disconn_cb(conn, reason) != 0) {
            return ;
        }
    }

    if(conn->type != BT_CONN_TYPE_LE) {
        return;
    }

    conn_cur = NULL;

    printf("[BLE] disconnected, reason:%d \r\n", reason);
   // axk_Callbacks.bleDisconnectCBCallback(NULL);
}

static bool _le_param_req(struct bt_conn *conn,
             struct bt_le_conn_param *param)
{
    printf("[BLE] conn param request: int 0x%04x-0x%04x lat %d to %d \r\n", 
            param->interval_min, 
            param->interval_max, 
            param->latency, 
            param->timeout);

    return true;
}

static void _le_param_updated(struct bt_conn *conn, u16_t interval,
                 u16_t latency, u16_t timeout)
{
    printf("[BLE] conn param updated: int 0x%04x lat %d to %d \r\n", interval, latency, timeout);
}

static void _le_phy_updated(struct bt_conn *conn, u8_t tx_phy, u8_t rx_phy)
{
    printf("[BLE] phy updated: rx_phy %d, rx_phy %d \r\n", tx_phy, rx_phy);
}

static struct bt_conn_cb conn_callbacks = {
    .connected = _connected,
    .disconnected = _disconnected,
    .le_param_req = _le_param_req,
    .le_param_updated = _le_param_updated,
    .le_phy_updated = _le_phy_updated,
};

static void ble_disconnect_all(struct bt_conn *conn, void *data)
{
    if (conn->state == BT_CONN_CONNECTED) {
        printf("[BLE] disconn id:%d \r\n", conn->id);
        bt_conn_disconnect(conn, BT_HCI_ERR_REMOTE_USER_TERM_CONN);
    }
}

static void _ble_mtu_changed_cb(struct bt_conn *conn, int mtu)
{
    printf("[BLE] mtu updated:%d \r\n", mtu);
}

struct bt_conn *ble_get_conn_cur(void)
{
    return conn_cur;
}

int ble_regist_conn(ble_gatt_conn_cb_t cb)
{
    conn_cb = cb;

    return 0;
}

int ble_regist_disconn(ble_gatt_conn_cb_t cb)
{
    disconn_cb = cb;

    return 0;
}

//设置蓝牙MAC地址
//参数
//    mac：这是一个mac[6]的蓝牙MAC数据
//返回值
//    0：成功
//    1：失败
//    2：不支持修改MAC
//    128：未适配
uint8_t axk_HalBleSetMac(uint8_t *mac)
{
    bt_addr_t bt_addr;

    memcpy(bt_addr.val, mac, 6);
    // ret = bt_set_bd_addr(&bt_addr);
    // if (ret != 0) {
    //     return 1;
    // }

    return 0;
}

uint8_t axk_HalBleGetMac_Start(uint8_t *mac)
{
    bt_addr_le_t bt_addr;

    ble_stack_start();

    bt_get_local_public_address(&bt_addr);
    memcpy(mac, bt_addr.a.val, 6);
    ble_reverse_byte(mac, 6);

    bt_disable();

    return 0;
}

//获取蓝牙MAC地址
//参数
//    mac：这是一个用来接收MAC地址的mac[6]的蓝牙MAC数据地址，mac会填充到这个数组里面
//返回值
//    0：成功
//    1：参数为空
//    2：蓝牙MAC还没有初始化
//    128：未适配
uint8_t axk_HalBleGetMac(uint8_t *mac)
{
    bt_addr_le_t bt_addr;

    bt_get_local_public_address(&bt_addr);
    memcpy(mac, bt_addr.a.val, 6);
    ble_reverse_byte(mac, 6);
	if(0==mac[0]+mac[1]+mac[2]+mac[3]+mac[4]+mac[5]){
		axk_HalBleGetMac_Start(mac);
	}

    return 0;
}

//启动或者关闭蓝牙
uint8_t axk_HalBleInit()
{
    int ret;
    bt_addr_t bt_addr;
    ble_stack_start();
    ble_master_init();
    bt_gatt_register_mtu_callback(_ble_mtu_changed_cb);
    bt_conn_cb_register(&conn_callbacks);
        /* avoid callback infinite loop */
    conn_callbacks._next = NULL;
    bt_set_tx_pwr(15);
    return 0;
}


static void exchange_func(struct bt_conn *conn, u8_t err,
              struct bt_gatt_exchange_params *params)
{
    if (conn) {
        printf("[BLE] Exchange %s MTU Size =%d \r\n", err == 0U ? "successful" : "faxkled",bt_gatt_get_mtu(conn));
    }
}

static struct bt_gatt_exchange_params exchange_params;
//设置蓝牙MTU(主机从机使用同一个函数)
//参数
//    mode：要设置哪种蓝牙模式的MTU
//    mtu：需要设置的MTU值
//返回值
//    0：成功
//    1：失败
//    128：未适配
uint8_t axk_HalBleSetMtu(uint8_t mtu)
{
    int ret;

    if (mtu < 23 || mtu > 247) {
        return 1;
    }

    if (conn_cur == NULL) {
        return 1;
    }

    exchange_params.func = exchange_func;
    ret = bt_gatt_exchange_mtu(conn_cur, &exchange_params);
    if (ret != 0) {
        return 1;
    }

    return 0;
}

//设置蓝牙MTU(主机从机使用同一个函数)
//返回值
//    >=0：当前的MTU值
//    -1：获取失败
//    -2：不支持获取MTU
//    -3：mode错误或者不支持的mode
//    -128：未适配
int axk_HalBleGetMtu()
{
    int mtu;

    if (conn_cur == NULL) {
        return -1;
    }

    mtu = bt_gatt_get_mtu(conn_cur);

    return mtu;
}

