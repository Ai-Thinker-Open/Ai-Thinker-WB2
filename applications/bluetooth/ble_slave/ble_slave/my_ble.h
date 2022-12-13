#ifndef _my_BLE_H_
#define _my_BLE_H_

#include <stdint.h>
#include "conn.h"
#include "hci_driver.h"
#include "ble_lib_api.h"
#include "bluetooth.h"
#include "gatt.h"
#include "uuid.h"
enum {
    MY_BLE_DEVICE_CONNECT = 0,//连接状态
    MY_BLE_DEVICE_DISCONNECT, //断开状态
};
unsigned char bleuart_connect_status;
struct bt_conn *pconn;
static struct bt_gatt_attr *notify_attrs;
typedef void (*my_ble_recv_data_cb_t)(struct bt_conn *conn, const char *buf, u16_t len);
typedef void (*my_ble_send_data_cb_t)(struct bt_conn *conn, const char *buf, u16_t len);
typedef void (*my_ble_connet_status_cb_t)(uint8_t status, char *addr);
void my_bleuart_send(char *buf, u16_t len);
void my_ble_notify(struct bt_conn *conn, char *buf, u16_t len);
void my_ble_start_advertise();
void my_ble_init(void);
void my_ble_recv_register(my_ble_recv_data_cb_t ble_reve_cb);
void my_ble_connect_register(my_ble_connet_status_cb_t ble_connet_cb);
#endif