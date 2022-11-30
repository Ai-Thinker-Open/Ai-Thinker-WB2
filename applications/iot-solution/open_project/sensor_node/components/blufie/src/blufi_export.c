#include "blufi_hal.h"
#include "blufi_api.h"
#include "ble_btc.h"
#include "axk_ble.h"
#include "blufi_init.h"
#include "blufi_prf.h"
#include "blog.h"
#include <string.h>

extern tBLUFI_ENV blufi_env;

int axk_ble_blufi_gap_connect_export(at_ble_conn_handle_t* handle, at_ble_addr_t* peer_addr)
{
    blufi_env.is_connected = true;
    blufi_env.recv_seq = blufi_env.send_seq = 0;
    btc_msg_t msg;
    _blufi_cb_param_t param;
    msg.sig = BTC_SIG_API_CB;
    msg.act = AXK_BLUFI_EVENT_BLE_CONNECT;
    // param.connect.conn_id = event->connect.conn_handle;
    memcpy(param.connect.remote_bda, peer_addr->val, sizeof(_bd_addr_t));
    btc_transfer_context(&msg, &param, sizeof(_blufi_cb_param_t), NULL);
    return 0;
}

int axk_ble_blufi_gap_disconnect_export(at_ble_addr_t* peer_addr)
{
    memcpy(blufi_env.remote_bda, peer_addr->val, sizeof(_bd_addr_t));
    blufi_env.is_connected = false;
    blufi_env.recv_seq = blufi_env.send_seq = 0;
    blufi_env.sec_mode = 0x0;
    btc_msg_t msg;
    _blufi_cb_param_t param;

    msg.sig = BTC_SIG_API_CB;
    msg.act = AXK_BLUFI_EVENT_BLE_DISCONNECT;
    memcpy(param.disconnect.remote_bda, peer_addr->val, sizeof(_bd_addr_t));
    btc_transfer_context(&msg, &param, sizeof(_blufi_cb_param_t), NULL);
    return 0;
}

int axk_ble_blufi_gap_mtu_change_export(uint16_t mtu)
{
    blufi_env.frag_size = (mtu < BLUFI_MAX_DATA_LEN ? mtu : BLUFI_MAX_DATA_LEN) - BLUFI_MTU_RESERVED_SIZE;
    return 0;
}

int axk_ble_blufi_gatt_write_export(uint8_t* data, int len)
{
    btc_blufi_recv_handler(data, len);
    return 0;
}