#ifndef __BLE_INTERFACE_H__
#define __BLE_INTERFACE_H__

#include <stdint.h>

#include "bluetooth.h"


#define ble_slave_name "BL_602_DEV"

typedef int (*ble_gatt_conn_cb_t)(struct bt_conn* conn, uint8_t code);


void ble_reverse_byte(uint8_t* arr, uint32_t size);
int ble_server_init();
int ble_server_deinit(void);
void ble_stack_start(void);
int ble_uuid1_notify_data(void* handle, void* data, uint16_t length);
int ble_uuid2_notify_data(void* handle, void* data, uint16_t length);

/************************************ble common*******************************************/
struct bt_conn* ble_get_conn_cur(void);
int ble_regist_conn(ble_gatt_conn_cb_t cb);
int ble_regist_disconn(ble_gatt_conn_cb_t cb);
int ble_slave_init();
int ble_slave_deinit(void);
int UUID1_SendNotify(uint16_t len, uint8_t* data);
int UUID2_SendNotify(uint16_t len, uint8_t* data);
int ble_slave_init();
int ble_slave_deinit(void);
int ble_salve_adv();
void apps_ble_stop();
void apps_ble_start();
uint8_t BleSetMtu();


#endif
