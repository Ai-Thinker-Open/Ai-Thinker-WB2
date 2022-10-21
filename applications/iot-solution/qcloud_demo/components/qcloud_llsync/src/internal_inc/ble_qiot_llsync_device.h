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
#ifndef TENCENTCLOUD_IOT_EXPLORER_BLE_SDK_EMBEDDED_INTERNAL_INC_BLE_QIOT_LLSYNC_DEVICE_H_
#define TENCENTCLOUD_IOT_EXPLORER_BLE_SDK_EMBEDDED_INTERNAL_INC_BLE_QIOT_LLSYNC_DEVICE_H_
#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>
#include <stdbool.h>
#include "ble_qiot_common.h"
#include "ble_qiot_export.h"
#include "ble_qiot_hmac.h"
#include "ble_qiot_llsync_event.h"

#define LLSYNC_DYNREG_MASK_BIT       0x02
#define LLSYNC_PROTO_VER_BIT         0x04
#define LLSYNC_PROTOCOL_VERSION_MASK 0xF0
#define LLSYNC_MTU_SET_MASK          0x8000

#define LLSYNC_MTU_SET_RESULT_ERR 0xFFFF  // some error when setting mtu

#define BLE_QIOT_LLSYNC_PROTOCOL_VERSION (2)  // llsync protocol version, equal or less than 15

#define ATT_DEFAULT_MTU                 23  // default att mtu
#define ATT_MTU_TO_LLSYNC_MTU(_att_mtu) ((_att_mtu)-3)

#define BLE_LOCAL_PSK_LEN           4
#define BLE_BIND_IDENTIFY_STR_LEN   8
#define BLE_EXPIRATION_TIME         60  // timestamp expiration value
#define BLE_UNBIND_REQUEST_STR      "UnbindRequest"
#define BLE_UNBIND_REQUEST_STR_LEN  (sizeof("UnbindRequest") - 1)
#define BLE_UNBIND_RESPONSE         "UnbindResponse"
#define BLE_UNBIND_RESPONSE_STR_LEN (sizeof("UnbindResponse") - 1)

typedef enum {
    E_DEV_MSG_SYNC_TIME = 0,  // sync info before bind
    E_DEV_MSG_CONN_VALID,     // connect request
    E_DEV_MSG_BIND_SUCC,      // inform bind success
    E_DEV_MSG_BIND_FAIL,      // inform bind failed
    E_DEV_MSG_UNBIND,         // unbind request
    E_DEV_MSG_CONN_SUCC,      // inform connect result
    E_DEV_MSG_CONN_FAIL,
    E_DEV_MSG_UNBIND_SUCC,     // inform unbind result
    E_DEV_MSG_UNBIND_FAIL,
    E_DEV_MSG_SET_MTU_RESULT,  // inform set mtu result
    E_DEV_MSG_BIND_TIMEOUT,    // inform bind timeout
    E_DEV_MSG_DYNREG,
    E_DEV_MSG_DEV_START,       // inform app ready
    E_DEV_MSG_IOS_SYSTEM,      // inform phone is ios system
    E_DEV_MSG_GET_DEV_INFO = 0xE0,  // configure network start
    E_DEV_MSG_SET_WIFI_MODE,
    E_DEV_MSG_SET_WIFI_INFO,
    E_DEV_MSG_SET_WIFI_CONNECT,
    E_DEV_MSG_SET_WIFI_TOKEN,
    E_DEV_MSG_GET_DEV_LOG,
    E_DEV_MSG_MSG_BUTT,
} e_dev_info_msg_type;

typedef enum {
    E_LLSYNC_BIND_IDLE = 0,  // no bind
    E_LLSYNC_BIND_WAIT,      // wait bind, return idle state if no bind in the period
    E_LLSYNC_BIND_SUCC,      // bound
} e_llsync_bind_state;

typedef enum {
    E_LLSYNC_DISCONNECTED = 0,
    E_LLSYNC_CONNECTED,
} e_llsync_connection_state;

typedef enum {
    E_BLE_DISCONNECTED = 0,
    E_BLE_CONNECTED,
} e_ble_connection_state;

typedef struct ble_device_info_t_ {
    char product_id[BLE_QIOT_PRODUCT_ID_LEN];
    char device_name[BLE_QIOT_DEVICE_NAME_LEN + 1];
    char psk[BLE_QIOT_PSK_LEN];
    char mac[BLE_QIOT_MAC_LEN];
#if BLE_QIOT_DYNREG_ENABLE
    char product_secret[BLE_QIOT_PRODUCT_SECRET_LEN];
#endif
} ble_device_info;

typedef struct ble_core_data_ {
    uint8_t bind_state;
    char    local_psk[BLE_LOCAL_PSK_LEN];
    char    identify_str[BLE_BIND_IDENTIFY_STR_LEN];
} ble_core_data;

// write to uuid FEE1 before bind
typedef struct ble_bind_data_t_ {
    int nonce;
    int timestamp;
} ble_bind_data;

// connect data struct
typedef struct ble_conn_data_t_ {
    int  timestamp;
    char sign_info[SHA1_DIGEST_SIZE];
} ble_conn_data;

// unbind data struct
typedef struct ble_unbind_data_t_ {
    char sign_info[SHA1_DIGEST_SIZE];
} ble_unbind_data;

typedef struct {
    bool     have_data;  // start received package
    uint8_t  type;       // event type
    uint16_t buf_len;    // the length of data
    char     buf[BLE_QIOT_EVENT_MAX_SIZE];
} ble_event_slice_t;

// read sdk data from flash
ble_qiot_ret_status_t ble_init_flash_data(void);

// set llsync bind state
void llsync_bind_state_set(e_llsync_bind_state new_state);

// get llsync bind state
e_llsync_bind_state llsync_bind_state_get(void);

// set llsync connection state
void llsync_connection_state_set(e_llsync_connection_state new_state);

// set ble connection state
void ble_connection_state_set(e_ble_connection_state new_state);

// get llsync connection state
bool llsync_is_connected(void);

// get ble connection state
bool ble_is_connected(void);

// get broadcast data
int ble_get_my_broadcast_data(char *out_buf, int buf_len);

// get bind authcode, return authcode length;
// out_buf length must greater than  SHA1_DIGEST_SIZE + BLE_QIOT_DEVICE_NAME_LEN
int ble_bind_get_authcode(const char *bind_data, uint16_t data_len, char *out_buf, uint16_t buf_len);

// get dynamic register authcode, return authcode length
int ble_dynreg_get_authcode(const char *bind_data, uint16_t data_len, char *out_buf, uint16_t buf_len);

// parse device secret and set device secret
int ble_dynreg_parse_psk(const char *in_buf, uint16_t data_len);

// write bind result to flash, return 0 is success
ble_qiot_ret_status_t ble_bind_write_result(const char *result, uint16_t len);

// write unbind result to flash, return 0 is success
ble_qiot_ret_status_t ble_unbind_write_result(void);

// get connect authcode, return authcode length;
// out_buf length must greater than  SHA1_DIGEST_SIZE + BLE_QIOT_DEVICE_NAME_LEN
int ble_conn_get_authcode(const char *conn_data, uint16_t data_len, char *out_buf, uint16_t buf_len);

// get connect authcode, return authcode length;
// out_buf length must greater than  SHA1_DIGEST_SIZE + BLE_UNBIND_RESPONSE_STR_LEN
int ble_unbind_get_authcode(const char *unbind_data, uint16_t data_len, char *out_buf, uint16_t buf_len);

// inform device the result of mtu setting
int ble_inform_mtu_result(const char *result, uint16_t data_len);

// get llsync mtu
uint16_t llsync_mtu_get(void);

// update llsync mtu
void llsync_mtu_update(uint16_t sync_mtu);

// llsync should dynreg
uint8_t llsync_need_dynreg(void);

// Set the current paired phone system
void ble_system_type_set(e_system type);

// Get the current paired phone system
uint8_t ble_system_type_get(void);

#ifdef __cplusplus
}
#endif
#endif  // TENCENTCLOUD_IOT_EXPLORER_BLE_SDK_EMBEDDED_INTERNAL_INC_BLE_QIOT_LLSYNC_DEVICE_H_
