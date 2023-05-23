#include <stdlib.h>
#include "blufi_api.h"
#include "blufi_init.h"
#include "ble_btc.h"
#include "blufi_prf.h"
#include "blufi.h"

int axk_blufi_register_callbacks(_blufi_callbacks_t *callbacks)
{
    if (callbacks == NULL)
    {
        return -1;
    }
    btc_blufi_set_callbacks(callbacks);
    return btc_profile_cb_set(callbacks->event_cb);
}

int axk_blufi_profile_init(void)
{
    btc_msg_t msg;
    msg.sig = BTC_SIG_API_CALL;
    msg.act = BTC_BLUFI_ACT_INIT;
    return btc_transfer_context(&msg, NULL, 0, NULL);
}

int axk_blufi_profile_deinit(void)
{
    btc_msg_t msg;
    msg.sig = BTC_SIG_API_CALL;
    msg.act = BTC_BLUFI_ACT_DEINIT;
    return btc_transfer_context(&msg, NULL, 0, NULL);
}

int axk_blufi_send_wifi_conn_report(wifi_mode_t opmode, axk_blufi_sta_conn_state_t sta_conn_state, uint8_t softap_conn_num, axk_blufi_extra_info_t *extra_info)
{
    btc_msg_t msg;
    btc_blufi_args_t arg;

    msg.sig = BTC_SIG_API_CALL;
    msg.act = BTC_BLUFI_ACT_SEND_CFG_REPORT;
    arg.wifi_conn_report.opmode = opmode;
    arg.wifi_conn_report.sta_conn_state = sta_conn_state;
    arg.wifi_conn_report.softap_conn_num = softap_conn_num;
    arg.wifi_conn_report.extra_info = extra_info;

    return btc_transfer_context(&msg, &arg, sizeof(btc_blufi_args_t), btc_blufi_call_deep_copy);
}

int axk_blufi_send_wifi_list(uint16_t apCount, _blufi_ap_record_t *list)
{
    btc_msg_t msg;
    btc_blufi_args_t arg;

    msg.sig = BTC_SIG_API_CALL;
    msg.act = BTC_BLUFI_ACT_SEND_WIFI_LIST;
    arg.wifi_list.apCount = apCount;
    arg.wifi_list.list = list;

    return (btc_transfer_context(&msg, &arg, sizeof(btc_blufi_args_t), btc_blufi_call_deep_copy));
}

int axk_blufi_send_error_info(_blufi_error_state_t state)
{
    btc_msg_t msg;
    btc_blufi_args_t arg;
    msg.sig = BTC_SIG_API_CALL;
    msg.act = BTC_BLUFI_ACT_SEND_ERR_INFO;
    arg.blufi_err_infor.state = state;
    return btc_transfer_context(&msg, &arg, sizeof(btc_blufi_args_t), NULL);
}

int axk_blufi_send_custom_data(uint8_t *data, uint32_t data_len)
{
    btc_msg_t msg;
    btc_blufi_args_t arg;
    if (data == NULL || data_len == 0)
    {
        return -1;
    }

    msg.sig = BTC_SIG_API_CALL;
    msg.act = BTC_BLUFI_ACT_SEND_CUSTOM_DATA;
    arg.custom_data.data = data;
    arg.custom_data.data_len = data_len;

    return btc_transfer_context(&msg, &arg, sizeof(btc_blufi_args_t), btc_blufi_call_deep_copy);
}