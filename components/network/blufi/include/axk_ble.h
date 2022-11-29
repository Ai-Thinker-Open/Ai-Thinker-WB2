#ifndef _AT_BLE_H_
#define _AT_BLE_H_

#include <stdio.h>
#include <stdint.h>

#define ARGC_PARMAM_NUM_CHECK()

#define BLE_ADV_DATA_TYPE_NAME 0x09
#define BLE_ADV_DATA_TYPE_UUID 0x03
#define BLE_ADV_DATA_TYPE_MANUF 0xff
#define BLE_ADV_DATA_TYPE_TX_PWR 0x0A

#define BLE_ADV_DATA_MAX_LEN 31

#define AXK_BLE_MAX_CONN 3

typedef struct
{
    uint16_t uuid16;
    uint8_t perm;
    uint16_t data_len;
    uint8_t *data;
} ble_desc_t;

typedef struct
{
    uint16_t uuid16;
    uint8_t perm;
    uint16_t data_len;
    uint8_t *data;
    ble_desc_t descriptor[0];
} ble_char_t;

// the service attributes
typedef struct
{
    uint16_t uuid16;
    uint8_t perm;
    uint16_t num_character;
    ble_char_t character[0];
} ble_service_t;

typedef enum
{
    BLE_ROLE_DEINIT,
    BLE_ROLE_CLIENT,
    BLE_ROLE_SERVER,
} ble_role_t;

typedef enum
{
    BLE_FILTER_CLOSE = 0,
    BLE_FILTER_MAC = 1,
    BLE_FILTER_NAME = 2,
} ble_filter_t;

typedef enum
{
    AXK_BLE_ADV_TYPE_IND = 0,
    AXK_BLE_ADV_TYPE_DIRECT_IND_HIGH,
    AXK_BLE_DV_TYPE_SCAN_IND,
    AXK_BLE_ADV_TYPE_NONCONN_IND,
    AXK_BLE_ADV_TYPE_DIRECT_IND_LOW,
} ble_adv_type_t;

typedef enum
{
    AXK_BLE_ADDR_TYPE_PUBLIC = 0,
    AXK_BLE_ADDR_TYPE_RANDOM,
} ble_addr_type_t;

typedef enum
{
    AXK_BLE_CHNL_37 = 1,
    AXK_BLE_CHNL_38 = 2,
    AXK_BLE_CHNL_39 = 4,
    AXK_BLE_CHNL_ALL = 7,
} ble_channel_t;

typedef enum
{
    AXK_ADV_FILTER_ALLOW_SCAN_ANY_CON_ANY = 0,
    AXK_ADV_FILTER_ALLOW_SCAN_WLST_CON_ANY,
    AXK_ADV_FILTER_ALLOW_SCAN_ANY_CON_WLST,
    AXK_ADV_FILTER_ALLOW_SCAN_WLST_CON_WLST,
} ble_adv_filter_t;

typedef enum
{
    AT_DEV_DISCONNCTED = 0,
    AT_DEV_CONNECTING,
    AT_DEV_CONNECTED
} at_conn_state_t;

typedef enum
{
    AT_TYPE_SRV = 1,
    AT_TYPE_CHAR,
    AT_TYPE_DESC
} at_ble_gatt_type_t;

typedef struct
{
    uint16_t min_inval;
    uint16_t max_inval;
    uint16_t latency;
    uint16_t timeout;
} at_ble_conn_param_t;

typedef enum
{
    AT_NORMAL_HANDLE,
    AT_POINT_HANDLE,
} at_handle_type_t;

typedef struct
{
    uint8_t type;
    uint8_t val[6];
} at_ble_addr_t;

typedef struct
{
    uint32_t type;
    union
    {
        void *p_handle;
        int conn_handle;
    };
} at_ble_conn_handle_t;

typedef struct
{
    at_ble_conn_handle_t handle;
    at_ble_addr_t peer_addr;
    at_conn_state_t conn_state;
    ble_role_t remote_role;
    at_ble_conn_param_t conn_param;
    uint16_t cur_inval;
    uint16_t cur_mtu;
    // ble_service_t srvs[5];
} at_ble_conn_t;

typedef struct
{
    uint8_t addr[6];
    int8_t rssi;
    uint8_t adv_data[37]; // hex
    uint8_t adv_data_len;
    uint8_t scan_rsp_data[37]; // hex
    uint8_t scan_rsp_data_len;
    uint8_t addr_type;
} at_blescan_response_param_t;

typedef struct
{
    uint8_t enable;           // 1.start scan,or stop scan
    uint8_t interval;         // 0.Continuous scan,or scan time,unit second
    ble_filter_t filter_type; // if 0, do not filter
    union
    {
        char filter_name[32 + 1];
        uint8_t filter_mac[6];
    };
} at_blescan_param_t;

typedef struct
{
    uint8_t scan_type;
    uint8_t own_addr_type;
    uint8_t filter_policy;
    uint16_t scan_interval;
    uint16_t scan_window;
} blescan_param_ex_t;

typedef struct
{
    uint8_t adv_int_min;
    uint8_t adv_int_max;
    ble_adv_type_t adv_type;
    ble_addr_type_t own_addr_type;
    ble_channel_t channel_map;
    ble_adv_filter_t adv_filter_policy;
    ble_addr_type_t peer_addr_type;
    uint8_t peer_addr[6];
} ble_adv_param_t;

typedef struct
{
    uint8_t data[BLE_ADV_DATA_MAX_LEN];
    uint16_t data_len;
    uint8_t rsp_data[BLE_ADV_DATA_MAX_LEN];
    uint16_t rsp_data_len;
} ble_adv_data_t;

typedef struct
{
    char name[BLE_ADV_DATA_MAX_LEN];
    uint16_t uuid;
    uint8_t manuf_data[BLE_ADV_DATA_MAX_LEN];
    uint8_t manuf_data_len;
    int8_t tx_pwr_flag;
} ble_adv_data_ex_t;

typedef struct
{
    uint8_t tx_service_index;
    uint8_t tx_char_index;
    uint8_t rx_service_index;
    uint8_t rx_char_index;
    uint8_t auto_conn;
} ble_spp_cfg_t;

typedef struct
{
    uint16_t srv_index;
    uint8_t start;
    uint16_t srv_uuid;
    uint8_t srv_type;
} ble_response_gatts_srv_t;

typedef struct
{
    uint16_t srv_index;
    uint16_t char_index;
    uint16_t char_uuid;
    uint8_t char_prop;
} ble_response_gatts_char_t;

typedef struct
{
    uint16_t srv_index;
    uint16_t char_index;
    uint16_t desc_index;
    uint16_t desc_uuid;
} ble_response_gatts_desc_t;

typedef struct
{
    at_ble_gatt_type_t gatt_type;
    union
    {
        ble_response_gatts_srv_t gatts_srv;
        ble_response_gatts_char_t gatts_char;
        ble_response_gatts_desc_t gatt_desc;
    };

} ble_gatts_srv_char_t;

typedef void (*blufi_wifi_conn_event_cb_t)(int event, void *param);

typedef struct
{
    char blufiname[BLE_ADV_DATA_MAX_LEN];
    blufi_wifi_conn_event_cb_t blufi_conn_cb;
    /* data */
} axk_ble_blufi_t;

typedef struct
{
    ble_role_t role;
    axk_ble_blufi_t blufi;
    blescan_param_ex_t scan_param;
    ble_adv_param_t adv_param;
    ble_adv_data_t adv_data;
    ble_adv_data_ex_t adv_data_ex;
    ble_spp_cfg_t spp_cfg;
} ble_config_t;

#endif
