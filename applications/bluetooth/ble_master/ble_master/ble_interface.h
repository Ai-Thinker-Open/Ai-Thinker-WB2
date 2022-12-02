#ifndef __BLE_INTERFACE_H__
#define __BLE_INTERFACE_H__

#include <stdint.h>


#include "bluetooth.h"

#define MASTER_SCAN_MAX 36
#define NAME_LEN        30

typedef int (*ble_gatt_conn_cb_t)(struct bt_conn *conn, uint8_t code);

typedef enum {
    BLE_MASTER_AUTOCONN_DISABLE = 0x00, /**<  diable auto connect  */
    BLE_MASTER_AUTOCONN_ENABLE = 0x01,  /**<  auto reconnect */
    BLE_MASTER_AUTOCONN_FORCE = 0x02    /**<  auto reconnect even if the first connection faIls   */
} ble_master_autoconn_t;

typedef struct
{
    int8_t rssi;
    uint8_t mac[6];
    char name[NAME_LEN];
} ble_scan_info_t;

typedef struct
{
    uint8_t svr[16];
    uint8_t tx[16];
    uint8_t rx[16];
} server_uuid_t;
void ble_reverse_byte(uint8_t *arr, uint32_t size);
void ble_stack_start(void);
/************************************ble common*******************************************/
struct bt_conn *ble_get_conn_cur(void);
int ble_regist_conn(ble_gatt_conn_cb_t cb);
int ble_regist_disconn(ble_gatt_conn_cb_t cb);
int ble_master_init();
int ble_master_deinit(void);
int ble_master_scan(uint32_t scan_time);
int ble_master_find_target(uint32_t scan_time, uint8_t *mac, uint16_t *uuid, bt_addr_le_t *target_addr);

#endif
