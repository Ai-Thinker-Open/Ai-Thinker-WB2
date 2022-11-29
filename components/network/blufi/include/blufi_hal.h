#ifndef __AT_BLUFI_EXPORT_IMPORT_H__
#define __AT_BLUFI_EXPORT_IMPORT_H__
#include "axk_ble.h"
/**
 * @brief 
 * 
 * @return int 
 */
int axk_hal_blufi_init(void);

/**
 * @brief 
 * 
 */
void axk_hal_blufi_deinit(void);

/**
 * @brief service uuid 0xFFFF
 * char uuid 0xFF01 Properties WRITE
 * char uuid 0xFF02 Properties READ、NOTYFY
 * 
 * @return int 0 success,or fail
 */
int axk_hal_blufi_server_create_start(void);



/**
 * @brief 
 * 
 * @param buf 
 * @param len 
 * @return int 
 */
int axk_hal_ble_gatt_blufi_notify_send(uint8_t *buf, uint16_t len);

/**
 * @brief 
 * 
 * @return int 
 */
int axk_hal_blufi_gap_disconnect(void);

/*****************************************************************************************************************************/

/**
 * @brief 
 * 
 * @param handle 
 * @param peer_addr 
 * @return int 
 */
int axk_ble_blufi_gap_connect_export(at_ble_conn_handle_t *handle, at_ble_addr_t *peer_addr);

/**
 * @brief 
 * 
 * @param peer_addr 
 * @return int 
 */
int axk_ble_blufi_gap_disconnect_export(at_ble_addr_t *peer_addr);

/**
 * @brief 
 * 
 * @param mtu 
 * @return int 
 */
int axk_ble_blufi_gap_mtu_change_export(uint16_t mtu);

/**
 * @brief 
 * 
 * @param data 
 * @param len 
 * @return int 
 */
int axk_ble_blufi_gatt_write_export(uint8_t *data, int len);

#endif