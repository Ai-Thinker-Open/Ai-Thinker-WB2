#ifndef __BTC_BLUFI_PRF_H__
#define __BTC_BLUFI_PRF_H__

#include "blufi_init.h"
#include "blufi_api.h"
#include "ble_btc.h"

#ifdef CONFIG_BT_BLUEDROID_ENABLED
#include "stack/gatt_api.h"
#define _BLUFI_ERROR GATT_ERROR
#define _BLUFI_SUCCESS GATT_SUCCESS
#else
#define _BLUFI_ERROR 0x85
#define _BLUFI_SUCCESS 0x00
#endif

#define BT_BD_ADDR_STR         "%02x:%02x:%02x:%02x:%02x:%02x"
#define BT_BD_ADDR_HEX(addr)   addr[0], addr[1], addr[2], addr[3], addr[4], addr[5]

#define GATT_UUID_CHAR_CLIENT_CONFIG    0x2902      /*  Client Characteristic Configuration */
//define the blufi serivce uuid
#define BLUFI_SERVICE_UUID  0xFFFF
//define the blufi Char uuid (PHONE to ESP32)
#define BLUFI_CHAR_P2E_UUID 0xFF01
//define the blufi Char uuid (ESP32 to PHONE)
#define BLUFI_CHAR_E2P_UUID 0xFF02
//define the blufi Descriptor uuid (ESP32 to PHONE)
#define BLUFI_DESCR_E2P_UUID GATT_UUID_CHAR_CLIENT_CONFIG
//define the blufi APP ID
#define BLUFI_APP_UUID      0xFFFF



#define BLUFI_HDL_NUM   6

struct pkt_info{
   uint8_t *pkt;
   int pkt_len;
};

static  const  tBT_UUID blufi_srvc_uuid = {LEN_UUID_16, {BLUFI_SERVICE_UUID}};
static  const  tBT_UUID blufi_char_uuid_p2e = {LEN_UUID_16, {BLUFI_CHAR_P2E_UUID}};
static  const  tBT_UUID blufi_char_uuid_e2p = {LEN_UUID_16, {BLUFI_CHAR_E2P_UUID}};
static  const  tBT_UUID blufi_descr_uuid_e2p = {LEN_UUID_16, {BLUFI_DESCR_E2P_UUID}};
static  const  tBT_UUID blufi_app_uuid = {LEN_UUID_16, {BLUFI_APP_UUID}};

typedef enum {
    BTC_BLUFI_ACT_INIT = 0,
    BTC_BLUFI_ACT_DEINIT,
    BTC_BLUFI_ACT_SEND_CFG_REPORT,
    BTC_BLUFI_ACT_SEND_WIFI_LIST,
    BTC_BLUFI_ACT_SEND_ERR_INFO,
    BTC_BLUFI_ACT_SEND_CUSTOM_DATA,
} btc_blufi_act_t;

typedef union {
    struct blufi_cfg_report {
        wifi_mode_t opmode;
        axk_blufi_sta_conn_state_t sta_conn_state;
        uint8_t softap_conn_num;
        axk_blufi_extra_info_t *extra_info;
        int extra_info_len;
    } wifi_conn_report;
    /*
        BTC_BLUFI_ACT_SEND_WIFI_LIST
    */
    struct blufi_wifi_list {
        uint16_t apCount;
        _blufi_ap_record_t *list;
    } wifi_list;
    /*
        BTC_BLUFI_ACT_SEND_ERR_INFO
    */
    struct blufi_error_infor {
        _blufi_error_state_t state;
    } blufi_err_infor;
    /*
        BTC_BLUFI_ACT_SEND_CUSTOM_DATA
    */
    struct blufi_custom_data {
         uint8_t *data;
         uint32_t data_len;
    } custom_data;
} btc_blufi_args_t;

void btc_blufi_cb_to_app(_blufi_cb_event_t event, _blufi_cb_param_t *param);
void btc_blufi_cb_handler(btc_msg_t *msg);
void btc_blufi_call_handler(btc_msg_t *msg);
void btc_blufi_set_callbacks(_blufi_callbacks_t *callbacks);

void btc_blufi_recv_handler(uint8_t *data, int len);
void btc_blufi_send_notify(uint8_t *pkt, int pkt_len);
void btc_blufi_call_deep_copy(btc_msg_t *msg, void *p_dest, void *p_src);
void btc_blufi_call_deep_free(btc_msg_t *msg);

uint16_t btcaxk_blufi_get_version(void);

void btc_blufi_report_error(_blufi_error_state_t state);


#endif /* __BTC_BLUFI_PRF_H__ */
