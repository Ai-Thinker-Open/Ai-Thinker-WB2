#include <string.h>
#include <stdlib.h>
#include "blufi_init.h"
#include "blufi_prf.h"
#include "axk_blufi.h"

tBLUFI_ENV blufi_env;

static void btc_blufi_send_ack(uint8_t seq);
void btc_blufi_report_error(_blufi_error_state_t state);

void btc_blufi_send_encap(uint8_t type, uint8_t *data, int total_data_len)
{
    struct blufi_hdr *hdr = NULL;
    int remain_len = total_data_len;
    uint16_t checksum;
    int ret;

    if (blufi_env.is_connected == false) {
        printf("blufi connection has been disconnected \r\n");
        return;
    }

    while (remain_len > 0) {
        if (remain_len > blufi_env.frag_size) {
            hdr = malloc(sizeof(struct blufi_hdr) + 2 + blufi_env.frag_size + 2);
            if (hdr == NULL) {
                printf("%s no mem\r\n", __func__);
                return;
            }
            hdr->fc = 0x0;
            hdr->data_len = blufi_env.frag_size + 2;
            hdr->data[0] = remain_len & 0xff;
            hdr->data[1] = (remain_len >> 8) & 0xff;
            memcpy(hdr->data + 2, &data[total_data_len - remain_len], blufi_env.frag_size); //copy first, easy for check sum
            hdr->fc |= BLUFI_FC_FRAG;
        } else {
            hdr = malloc(sizeof(struct blufi_hdr) + remain_len + 2);
            if (hdr == NULL) {
                printf("%s no mem\r\n", __func__);
                return;
            }
            hdr->fc = 0x0;
            hdr->data_len = remain_len;
            memcpy(hdr->data, &data[total_data_len - remain_len], hdr->data_len); //copy first, easy for check sum
        }

        hdr->type = type;
        hdr->fc |= BLUFI_FC_DIR_E2P;
        hdr->seq = blufi_env.send_seq++;

        if (BLUFI_TYPE_IS_CTRL(hdr->type)) {
            if ((blufi_env.sec_mode & BLUFI_CTRL_SEC_MODE_CHECK_MASK)
                    && (blufi_env.cbs && blufi_env.cbs->checksum_func)) {
                hdr->fc |= BLUFI_FC_CHECK;
                checksum = blufi_env.cbs->checksum_func(hdr->seq, &hdr->seq, hdr->data_len + 2);
                memcpy(&hdr->data[hdr->data_len], &checksum, 2);
            }
        } else if (!BLUFI_TYPE_IS_DATA_NEG(hdr->type) && !BLUFI_TYPE_IS_DATA_ERROR_INFO(hdr->type)) {
            if ((blufi_env.sec_mode & BLUFI_DATA_SEC_MODE_CHECK_MASK)
                    && (blufi_env.cbs && blufi_env.cbs->checksum_func)) {
                hdr->fc |= BLUFI_FC_CHECK;
                checksum = blufi_env.cbs->checksum_func(hdr->seq, &hdr->seq, hdr->data_len + 2);
                memcpy(&hdr->data[hdr->data_len], &checksum, 2);
            }

            if ((blufi_env.sec_mode & BLUFI_DATA_SEC_MODE_ENC_MASK)
                    && (blufi_env.cbs && blufi_env.cbs->encrypt_func)) {
                ret = blufi_env.cbs->encrypt_func(hdr->seq, hdr->data, hdr->data_len);
                if (ret == hdr->data_len) { /* enc must be success and enc len must equal to plain len */
                    hdr->fc |= BLUFI_FC_ENC;
                } else {
                    printf("%s encrypt error %d\r\n", __func__, ret);
                    btc_blufi_report_error(_BLUFI_ENCRYPT_ERROR);
                    free(hdr);
                    return;
                }
            }
        }

        if (hdr->fc & BLUFI_FC_FRAG) {
            remain_len -= (hdr->data_len - 2);
        } else {
            remain_len -= hdr->data_len;
        }

       axk_blufi_send_encap(hdr);

        free(hdr);
        hdr =  NULL;
    }
}

static void btc_blufi_send_ack(uint8_t seq)
{
    uint8_t type;
    uint8_t data;

    type = BLUFI_BUILD_TYPE(BLUFI_TYPE_CTRL, BLUFI_TYPE_CTRL_SUBTYPE_ACK);
    data = seq;

    btc_blufi_send_encap(type, &data, 1);
}

inline void btc_blufi_cb_to_app(_blufi_cb_event_t event, _blufi_cb_param_t *param)
{
    _blufi_event_cb_t btc_blufi_cb = (_blufi_event_cb_t)btc_profile_cb_get();
    if (btc_blufi_cb)
    {
        btc_blufi_cb(event, param);
    }
}

static uint8_t btc_blufi_profile_init(void)
{
    _blufi_callbacks_t *store_p = blufi_env.cbs;

    uint8_t rc;
    if (blufi_env.enabled)
    {
        printf("BLUFI already initialized\r\n");
        return _BLUFI_ERROR;
    }

    memset(&blufi_env, 0x0, sizeof(blufi_env));
    blufi_env.cbs = store_p; /* if set callback prior, restore the point */
    blufi_env.frag_size = BLUFI_FRAG_DATA_DEFAULT_LEN;
    rc = axk_blufi_init();
    if (rc != 0)
    {
        return rc;
    }

    return _BLUFI_SUCCESS;
}

// static uint8_t btc_blufi_profile_deinit(void)
// {
//     if (!blufi_env.enabled) {
//         printf("BLUFI already de-initialized\r\n");
//         return _BLUFI_ERROR;
//     }

//     axk_blufi_deinit();
//     return _BLUFI_SUCCESS;
// }

void btc_blufi_send_notify(uint8_t *pkt, int pkt_len)
{
   struct pkt_info pkts;
   pkts.pkt = pkt;
   pkts.pkt_len = pkt_len;
   axk_blufi_send_notify(&pkts);
}

void btc_blufi_report_error(_blufi_error_state_t state)
{
    btc_msg_t msg;
    msg.sig = BTC_SIG_API_CB;
    msg.act = AXK_BLUFI_EVENT_REPORT_ERROR;
    _blufi_cb_param_t param;
    param.report_error.state = state;
    btc_transfer_context(&msg, &param, sizeof(_blufi_cb_param_t), NULL);
}

void btc_blufi_recv_handler(uint8_t *data, int len)
{
    struct blufi_hdr *hdr = (struct blufi_hdr *)data;
    uint16_t checksum, checksum_pkt;
    int ret;

    if (hdr->seq != blufi_env.recv_seq) {
        printf("%s seq %d is not expect %d\r\n", __func__, hdr->seq, blufi_env.recv_seq + 1);
        btc_blufi_report_error(_BLUFI_SEQUENCE_ERROR);
        return;
    }

    blufi_env.recv_seq++;

    // first step, decrypt
    if (BLUFI_FC_IS_ENC(hdr->fc)
            && (blufi_env.cbs && blufi_env.cbs->decrypt_func)) {
        ret = blufi_env.cbs->decrypt_func(hdr->seq, hdr->data, hdr->data_len);
        if (ret != hdr->data_len) { /* enc must be success and enc len must equal to plain len */
            printf("%s decrypt error %d\r\n", __func__, ret);
            btc_blufi_report_error(_BLUFI_DECRYPT_ERROR);
            return;
        }
    }

    // second step, check sum
    if (BLUFI_FC_IS_CHECK(hdr->fc)
            && (blufi_env.cbs && blufi_env.cbs->checksum_func)) {
        checksum = blufi_env.cbs->checksum_func(hdr->seq, &hdr->seq, hdr->data_len + 2);
        checksum_pkt = hdr->data[hdr->data_len] | (((uint16_t) hdr->data[hdr->data_len + 1]) << 8);
        if (checksum != checksum_pkt) {
            printf("%s checksum error %04x, pkt %04x\r\n", __func__, checksum, checksum_pkt);
            btc_blufi_report_error(_BLUFI_CHECKSUM_ERROR);
            return;
        }
    }

    if (BLUFI_FC_IS_REQ_ACK(hdr->fc)) {
        btc_blufi_send_ack(hdr->seq);
    }

    if (BLUFI_FC_IS_FRAG(hdr->fc)) {
        if (blufi_env.offset == 0) {
            blufi_env.total_len = hdr->data[0] | (((uint16_t) hdr->data[1]) << 8);
            blufi_env.aggr_buf = malloc(blufi_env.total_len);
            if (blufi_env.aggr_buf == NULL) {
                printf("%s no mem, len %d\r\n", __func__, blufi_env.total_len);
                btc_blufi_report_error(_BLUFI_DH_MALLOC_ERROR);
                return;
            }
        }
        if (blufi_env.offset + hdr->data_len  - 2 <= blufi_env.total_len){
            memcpy(blufi_env.aggr_buf + blufi_env.offset, hdr->data + 2, hdr->data_len  - 2);
            blufi_env.offset += (hdr->data_len - 2);
        } else {
            printf("%s payload is longer than packet length, len %d \r\n", __func__, blufi_env.total_len);
            btc_blufi_report_error(_BLUFI_DATA_FORMAT_ERROR);
            return;
        }

    } else {
        if (blufi_env.offset > 0) {   /* if previous pkt is frag */
            memcpy(blufi_env.aggr_buf + blufi_env.offset, hdr->data, hdr->data_len);

            btc_blufi_protocol_handler(hdr->type, blufi_env.aggr_buf, blufi_env.total_len);
            blufi_env.offset = 0;
            free(blufi_env.aggr_buf);
            blufi_env.aggr_buf = NULL;
        } else {
            btc_blufi_protocol_handler(hdr->type, hdr->data, hdr->data_len);
            blufi_env.offset = 0;
        }
    }
}

void btc_blufi_cb_deep_copy(btc_msg_t *msg, void *p_dest, void *p_src)
{
    _blufi_cb_param_t *dst = (_blufi_cb_param_t *) p_dest;
    _blufi_cb_param_t *src = (_blufi_cb_param_t *) p_src;

    switch (msg->act) {
    case AXK_BLUFI_EVENT_RECV_STA_SSID:
        dst->sta_ssid.ssid = malloc(src->sta_ssid.ssid_len);
        if (dst->sta_ssid.ssid == NULL) {
            printf("[BLUFI] %s %d no mem\r\n", __func__, msg->act);
        }
        memcpy(dst->sta_ssid.ssid, src->sta_ssid.ssid, src->sta_ssid.ssid_len);
        break;
    case AXK_BLUFI_EVENT_RECV_STA_PASSWD:
        dst->sta_passwd.passwd = malloc(src->sta_passwd.passwd_len);
        if (dst->sta_passwd.passwd == NULL) {
            printf("[BLUFI] %s %d no mem\r\n", __func__, msg->act);
        }
        memcpy(dst->sta_passwd.passwd, src->sta_passwd.passwd, src->sta_passwd.passwd_len);
        break;
    case AXK_BLUFI_EVENT_RECV_SOFTAP_SSID:
        dst->softap_ssid.ssid = malloc(src->softap_ssid.ssid_len);
        if (dst->softap_ssid.ssid == NULL) {
            printf("[BLUFI] %s %d no mem\r\n", __func__, msg->act);
        }
        memcpy(dst->softap_ssid.ssid, src->softap_ssid.ssid, src->softap_ssid.ssid_len);
        break;
    case AXK_BLUFI_EVENT_RECV_SOFTAP_PASSWD:
        dst->softap_passwd.passwd = malloc(src->softap_passwd.passwd_len);
        if (dst->softap_passwd.passwd == NULL) {
            printf("[BLUFI] %s %d no mem\r\n", __func__, msg->act);
        }
        memcpy(dst->softap_passwd.passwd, src->softap_passwd.passwd, src->softap_passwd.passwd_len);
        break;
    case AXK_BLUFI_EVENT_RECV_USERNAME:
        dst->username.name = malloc(src->username.name_len);
        if (dst->username.name == NULL) {
            printf("[BLUFI] %s %d no mem\r\n", __func__, msg->act);
        }
        memcpy(dst->username.name, src->username.name, src->username.name_len);
        break;
    case AXK_BLUFI_EVENT_RECV_CA_CERT:
        dst->ca.cert = malloc(src->ca.cert_len);
        if (dst->ca.cert == NULL) {
            printf("[BLUFI] %s %d no mem\r\n", __func__, msg->act);
        }
        memcpy(dst->ca.cert, src->ca.cert, src->ca.cert_len);
        break;
    case AXK_BLUFI_EVENT_RECV_CLIENT_CERT:
        dst->client_cert.cert = malloc(src->client_cert.cert_len);
        if (dst->client_cert.cert == NULL) {
            printf("[BLUFI] %s %d no mem\r\n", __func__, msg->act);
        }
        memcpy(dst->client_cert.cert, src->client_cert.cert, src->client_cert.cert_len);
        break;
    case AXK_BLUFI_EVENT_RECV_SERVER_CERT:
        dst->server_cert.cert = malloc(src->server_cert.cert_len);
        if (dst->server_cert.cert == NULL) {
            printf("[BLUFI] %s %d no mem\r\n", __func__, msg->act);
        }
        memcpy(dst->server_cert.cert, src->server_cert.cert, src->server_cert.cert_len);
        break;
    case AXK_BLUFI_EVENT_RECV_CLIENT_PRIV_KEY:
         dst->client_pkey.pkey = malloc(src->client_pkey.pkey_len);
        if (dst->client_pkey.pkey == NULL) {
            printf("[BLUFI] %s %d no mem\r\n", __func__, msg->act);
        }
        memcpy(dst->client_pkey.pkey, src->client_pkey.pkey, src->client_pkey.pkey_len);
        break;
    case AXK_BLUFI_EVENT_RECV_SERVER_PRIV_KEY:
         dst->server_pkey.pkey = malloc(src->server_pkey.pkey_len);
        if (dst->server_pkey.pkey == NULL) {
            printf("[BLUFI] %s %d no mem\r\n", __func__, msg->act);
        }
        memcpy(dst->server_pkey.pkey, src->server_pkey.pkey, src->server_pkey.pkey_len);
        break;
    case AXK_BLUFI_EVENT_RECV_CUSTOM_DATA:
         dst->custom_data.data = malloc(src->custom_data.data_len);
        if (dst->custom_data.data == NULL) {
            printf("[BLUFI] %s %d no mem\r\n", __func__, msg->act);
            break;
        }
        memcpy(dst->custom_data.data, src->custom_data.data, src->custom_data.data_len);
        break;
    default:
        break;
    }
}

void btc_blufi_cb_deep_free(btc_msg_t *msg)
{
    _blufi_cb_param_t *param = (_blufi_cb_param_t *)msg->arg;

    switch (msg->act) {
    case AXK_BLUFI_EVENT_RECV_STA_SSID:
        free(param->sta_ssid.ssid);
        break;
    case AXK_BLUFI_EVENT_RECV_STA_PASSWD:
        free(param->sta_passwd.passwd);
        break;
    case AXK_BLUFI_EVENT_RECV_SOFTAP_SSID:
        free(param->softap_ssid.ssid);
        break;
    case AXK_BLUFI_EVENT_RECV_SOFTAP_PASSWD:
        free(param->softap_passwd.passwd);
        break;
    case AXK_BLUFI_EVENT_RECV_USERNAME:
        free(param->username.name);
        break;
    case AXK_BLUFI_EVENT_RECV_CA_CERT:
        free(param->ca.cert);
        break;
    case AXK_BLUFI_EVENT_RECV_CLIENT_CERT:
        free(param->client_cert.cert);
        break;
    case AXK_BLUFI_EVENT_RECV_SERVER_CERT:
        free(param->server_cert.cert);
        break;
    case AXK_BLUFI_EVENT_RECV_CLIENT_PRIV_KEY:
        free(param->client_pkey.pkey);
        break;
    case AXK_BLUFI_EVENT_RECV_SERVER_PRIV_KEY:
        free(param->server_pkey.pkey);
        break;
    case AXK_BLUFI_EVENT_RECV_CUSTOM_DATA:
        free(param->custom_data.data);
        break;
    default:
        break;
    }
}

void btc_blufi_cb_handler(btc_msg_t *msg)
{
    _blufi_cb_param_t *param = (_blufi_cb_param_t *)msg->arg;

    switch (msg->act)
    {
    case AXK_BLUFI_EVENT_INIT_FINISH:
    {
        btc_blufi_cb_to_app(AXK_BLUFI_EVENT_INIT_FINISH, param);
        break;
    }
    case AXK_BLUFI_EVENT_DEINIT_FINISH:
    {
        btc_blufi_cb_to_app(AXK_BLUFI_EVENT_DEINIT_FINISH, param);
        break;
    }
    case AXK_BLUFI_EVENT_BLE_CONNECT:
        btc_blufi_cb_to_app(AXK_BLUFI_EVENT_BLE_CONNECT, param);
        break;
    case AXK_BLUFI_EVENT_BLE_DISCONNECT:
        btc_blufi_cb_to_app(AXK_BLUFI_EVENT_BLE_DISCONNECT, param);
        break;
    case AXK_BLUFI_EVENT_SET_WIFI_OPMODE:
        btc_blufi_cb_to_app(AXK_BLUFI_EVENT_SET_WIFI_OPMODE, param);
        break;
    case AXK_BLUFI_EVENT_REQ_CONNECT_TO_AP:
        btc_blufi_cb_to_app(AXK_BLUFI_EVENT_REQ_CONNECT_TO_AP, NULL);
        break;
    case AXK_BLUFI_EVENT_REQ_DISCONNECT_FROM_AP:
        btc_blufi_cb_to_app(AXK_BLUFI_EVENT_REQ_DISCONNECT_FROM_AP, NULL);
        break;
    case AXK_BLUFI_EVENT_GET_WIFI_STATUS:
        btc_blufi_cb_to_app(AXK_BLUFI_EVENT_GET_WIFI_STATUS, NULL);
        break;
    case AXK_BLUFI_EVENT_GET_WIFI_LIST:
        btc_blufi_cb_to_app(AXK_BLUFI_EVENT_GET_WIFI_LIST, NULL);
        break;
    case AXK_BLUFI_EVENT_DEAUTHENTICATE_STA:
        btc_blufi_cb_to_app(AXK_BLUFI_EVENT_DEAUTHENTICATE_STA, NULL);
        break;
    case AXK_BLUFI_EVENT_RECV_STA_BSSID:
        btc_blufi_cb_to_app(AXK_BLUFI_EVENT_RECV_STA_BSSID, param);
        break;
    case AXK_BLUFI_EVENT_RECV_STA_SSID:
        btc_blufi_cb_to_app(AXK_BLUFI_EVENT_RECV_STA_SSID, param);
        break;
    case AXK_BLUFI_EVENT_RECV_STA_PASSWD:
        btc_blufi_cb_to_app(AXK_BLUFI_EVENT_RECV_STA_PASSWD, param);
        break;
    case AXK_BLUFI_EVENT_RECV_SOFTAP_SSID:
        btc_blufi_cb_to_app(AXK_BLUFI_EVENT_RECV_SOFTAP_SSID, param);
        break;
    case AXK_BLUFI_EVENT_RECV_SOFTAP_PASSWD:
        btc_blufi_cb_to_app(AXK_BLUFI_EVENT_RECV_SOFTAP_PASSWD, param);
        break;
    case AXK_BLUFI_EVENT_RECV_SOFTAP_MAX_CONN_NUM:
        btc_blufi_cb_to_app(AXK_BLUFI_EVENT_RECV_SOFTAP_MAX_CONN_NUM, param);
        break;
    case AXK_BLUFI_EVENT_RECV_SOFTAP_AUTH_MODE:
        btc_blufi_cb_to_app(AXK_BLUFI_EVENT_RECV_SOFTAP_AUTH_MODE, param);
        break;
    case AXK_BLUFI_EVENT_RECV_SOFTAP_CHANNEL:
        btc_blufi_cb_to_app(AXK_BLUFI_EVENT_RECV_SOFTAP_CHANNEL, param);
        break;
    case AXK_BLUFI_EVENT_RECV_USERNAME:
        btc_blufi_cb_to_app(AXK_BLUFI_EVENT_RECV_USERNAME, param);
        break;
    case AXK_BLUFI_EVENT_RECV_CA_CERT:
        btc_blufi_cb_to_app(AXK_BLUFI_EVENT_RECV_CA_CERT, param);
        break;
    case AXK_BLUFI_EVENT_RECV_CLIENT_CERT:
        btc_blufi_cb_to_app(AXK_BLUFI_EVENT_RECV_CLIENT_CERT, param);
        break;
    case AXK_BLUFI_EVENT_RECV_SERVER_CERT:
        btc_blufi_cb_to_app(AXK_BLUFI_EVENT_RECV_SERVER_CERT, param);
        break;
    case AXK_BLUFI_EVENT_RECV_CLIENT_PRIV_KEY:
        btc_blufi_cb_to_app(AXK_BLUFI_EVENT_RECV_CLIENT_PRIV_KEY, param);
        break;
    case AXK_BLUFI_EVENT_RECV_SERVER_PRIV_KEY:
        btc_blufi_cb_to_app(AXK_BLUFI_EVENT_RECV_SERVER_PRIV_KEY, param);
        break;
    case AXK_BLUFI_EVENT_RECV_SLAVE_DISCONNECT_BLE:
        btc_blufi_cb_to_app(AXK_BLUFI_EVENT_RECV_SLAVE_DISCONNECT_BLE, param);
        break;
    case AXK_BLUFI_EVENT_REPORT_ERROR:
        btc_blufi_cb_to_app(AXK_BLUFI_EVENT_REPORT_ERROR, param);
        break;
    case AXK_BLUFI_EVENT_RECV_CUSTOM_DATA:
        btc_blufi_cb_to_app(AXK_BLUFI_EVENT_RECV_CUSTOM_DATA, param);
        break;
    default:
        printf("[BLUFI]%s UNKNOWN %d\n", __func__, msg->act);
        break;
    }

    btc_blufi_cb_deep_free(msg);
}

void btc_blufi_call_deep_copy(btc_msg_t *msg, void *p_dest, void *p_src)
{
    btc_blufi_args_t *dst = (btc_blufi_args_t *) p_dest;
    btc_blufi_args_t *src = (btc_blufi_args_t *) p_src;

    switch (msg->act) {
    case BTC_BLUFI_ACT_SEND_CFG_REPORT: {
        axk_blufi_extra_info_t *src_info = src->wifi_conn_report.extra_info;
        dst->wifi_conn_report.extra_info_len = 0;
        dst->wifi_conn_report.extra_info = NULL;

        if (src_info == NULL) {
            return;
        }

        dst->wifi_conn_report.extra_info = malloc(sizeof(axk_blufi_extra_info_t));
        memset(dst->wifi_conn_report.extra_info,0,sizeof(axk_blufi_extra_info_t));
        if (dst->wifi_conn_report.extra_info == NULL) {
            return;
        }

        if (src_info->sta_bssid_set) {
            memcpy(dst->wifi_conn_report.extra_info->sta_bssid, src_info->sta_bssid, 6);
            dst->wifi_conn_report.extra_info->sta_bssid_set = src_info->sta_bssid_set;
            dst->wifi_conn_report.extra_info_len += (6 + 2);
        }
        if (src_info->sta_ssid) {
            dst->wifi_conn_report.extra_info->sta_ssid = malloc(src_info->sta_ssid_len);
            if (dst->wifi_conn_report.extra_info->sta_ssid) {
                memcpy(dst->wifi_conn_report.extra_info->sta_ssid, src_info->sta_ssid, src_info->sta_ssid_len);
                dst->wifi_conn_report.extra_info->sta_ssid_len = src_info->sta_ssid_len;
                dst->wifi_conn_report.extra_info_len += (dst->wifi_conn_report.extra_info->sta_ssid_len + 2);
            }
        }
        if (src_info->sta_passwd) {
            dst->wifi_conn_report.extra_info->sta_passwd = malloc(src_info->sta_passwd_len);
            if (dst->wifi_conn_report.extra_info->sta_passwd) {
                memcpy(dst->wifi_conn_report.extra_info->sta_passwd, src_info->sta_passwd, src_info->sta_passwd_len);
                dst->wifi_conn_report.extra_info->sta_passwd_len = src_info->sta_passwd_len;
                dst->wifi_conn_report.extra_info_len += (dst->wifi_conn_report.extra_info->sta_passwd_len + 2);
            }
        }
        if (src_info->softap_ssid) {
            dst->wifi_conn_report.extra_info->softap_ssid = malloc(src_info->softap_ssid_len);
            if (dst->wifi_conn_report.extra_info->softap_ssid) {
                memcpy(dst->wifi_conn_report.extra_info->softap_ssid, src_info->softap_ssid, src_info->softap_ssid_len);
                dst->wifi_conn_report.extra_info->softap_ssid_len = src_info->softap_ssid_len;
                dst->wifi_conn_report.extra_info_len += (dst->wifi_conn_report.extra_info->softap_ssid_len + 2);
            }
        }
        if (src_info->softap_passwd) {
            dst->wifi_conn_report.extra_info->softap_passwd = malloc(src_info->softap_passwd_len);
            if (dst->wifi_conn_report.extra_info->softap_passwd) {
                memcpy(dst->wifi_conn_report.extra_info->softap_passwd, src_info->softap_passwd, src_info->softap_passwd_len);
                dst->wifi_conn_report.extra_info->softap_passwd_len = src_info->softap_passwd_len;
                dst->wifi_conn_report.extra_info_len += (dst->wifi_conn_report.extra_info->softap_passwd_len + 2);
            }
        }
        if (src_info->softap_authmode_set) {
            dst->wifi_conn_report.extra_info->softap_authmode_set = src_info->softap_authmode_set;
            dst->wifi_conn_report.extra_info->softap_authmode = src_info->softap_authmode;
            dst->wifi_conn_report.extra_info_len += (1 + 2);
        }
        if (src_info->softap_max_conn_num_set) {
            dst->wifi_conn_report.extra_info->softap_max_conn_num_set = src_info->softap_max_conn_num_set;
            dst->wifi_conn_report.extra_info->softap_max_conn_num = src_info->softap_max_conn_num;
            dst->wifi_conn_report.extra_info_len += (1 + 2);
        }
        if (src_info->softap_channel_set) {
            dst->wifi_conn_report.extra_info->softap_channel_set = src_info->softap_channel_set;
            dst->wifi_conn_report.extra_info->softap_channel = src_info->softap_channel;
            dst->wifi_conn_report.extra_info_len += (1 + 2);
        }
        break;
    }
    case BTC_BLUFI_ACT_SEND_WIFI_LIST:{
        _blufi_ap_record_t *list = src->wifi_list.list;
        src->wifi_list.list = NULL;
        if (list == NULL || src->wifi_list.apCount <= 0) {
            break;
        }
        dst->wifi_list.list = (_blufi_ap_record_t *)malloc(sizeof(_blufi_ap_record_t) * src->wifi_list.apCount);
        if (dst->wifi_list.list == NULL) {
            break;
        }
        memcpy(dst->wifi_list.list, list, sizeof(_blufi_ap_record_t) * src->wifi_list.apCount);
        break;
    }
    case BTC_BLUFI_ACT_SEND_CUSTOM_DATA:{
        uint8_t *data = src->custom_data.data;
        if(data == NULL) {
            printf("custom data is NULL\r\n");
            break;
        }
        dst->custom_data.data = malloc(src->custom_data.data_len);
        if(dst->custom_data.data == NULL) {
            printf("custom data malloc error\r\n");
            break;
        }
        memcpy(dst->custom_data.data, src->custom_data.data, src->custom_data.data_len);
        break;
    }
    default:
        break;
    }
}

void btc_blufi_call_deep_free(btc_msg_t *msg)
{
    btc_blufi_args_t *arg = (btc_blufi_args_t *)msg->arg;

    switch (msg->act)
    {
    case BTC_BLUFI_ACT_SEND_CFG_REPORT:
    {
        axk_blufi_extra_info_t *info = (axk_blufi_extra_info_t *)arg->wifi_conn_report.extra_info;

        if (info == NULL)
        {
            return;
        }
        if (info->sta_ssid)
        {
            free(info->sta_ssid);
        }
        if (info->sta_passwd)
        {
            free(info->sta_passwd);
        }
        if (info->softap_ssid)
        {
            free(info->softap_ssid);
        }
        if (info->softap_passwd)
        {
            free(info->softap_passwd);
        }
        free(info);
        break;
    }
    case BTC_BLUFI_ACT_SEND_WIFI_LIST:
    {
        _blufi_ap_record_t *list = (_blufi_ap_record_t *)arg->wifi_list.list;
        if (list)
        {
            free(list);
        }
        break;
    }
    case BTC_BLUFI_ACT_SEND_CUSTOM_DATA:
    {
        uint8_t *data = arg->custom_data.data;
        if (data)
        {
            free(data);
        }
        break;
    }
    default:
        break;
    }
}

static void btc_blufi_send_error_info(uint8_t state)
{
    uint8_t type;
    uint8_t *data;
    int data_len;
    uint8_t *p;

    data_len = 1;
    p = data = malloc(data_len);
    if (data == NULL) {
        return;
    }

    type = BLUFI_BUILD_TYPE(BLUFI_TYPE_DATA, BLUFI_TYPE_DATA_SUBTYPE_ERROR_INFO);
    *p++ = state;
    if (p - data > data_len) {
        printf("%s len error %d %d\r\n", __func__, (int)(p - data), data_len);
    }

    btc_blufi_send_encap(type, data, data_len);
    free(data);
}

static void btc_blufi_send_custom_data(uint8_t *value, uint32_t value_len)
{
    if(value == NULL || value_len == 0) {
        printf("%s value or value len error\r\n", __func__);
        return;
    }
    uint8_t *data = malloc(value_len);
    if (data == NULL) {
        printf("%s mem malloc error\r\n", __func__);
        return;
    }
    uint8_t type = BLUFI_BUILD_TYPE(BLUFI_TYPE_DATA, BLUFI_TYPE_DATA_SUBTYPE_CUSTOM_DATA);
    memcpy(data, value, value_len);
    btc_blufi_send_encap(type, data, value_len);
    free(data);
}

static void btc_blufi_wifi_conn_report(uint8_t opmode, uint8_t sta_conn_state, uint8_t softap_conn_num, axk_blufi_extra_info_t *info, int info_len)
{
    uint8_t type;
    uint8_t *data;
    int data_len;
    uint8_t *p;

    data_len = info_len + 3;
    p = data = malloc(data_len);
    if (data == NULL) {
        return;
    }

    type = BLUFI_BUILD_TYPE(BLUFI_TYPE_DATA, BLUFI_TYPE_DATA_SUBTYPE_WIFI_REP);
    *p++ = opmode;
    *p++ = sta_conn_state;
    *p++ = softap_conn_num;

    if (info) {
        if (info->sta_bssid_set) {
            *p++ = BLUFI_TYPE_DATA_SUBTYPE_STA_BSSID;
            *p++ = 6;
            memcpy(p, info->sta_bssid, 6);
            p += 6;
        }
        if (info->sta_ssid) {
            *p++ = BLUFI_TYPE_DATA_SUBTYPE_STA_SSID;
            *p++ = info->sta_ssid_len;
            memcpy(p, info->sta_ssid, info->sta_ssid_len);
            p += info->sta_ssid_len;
        }
        if (info->sta_passwd) {
            *p++ = BLUFI_TYPE_DATA_SUBTYPE_STA_PASSWD;
            *p++ = info->sta_passwd_len;
            memcpy(p, info->sta_passwd, info->sta_passwd_len);
            p += info->sta_passwd_len;
        }
        if (info->softap_ssid) {
            *p++ = BLUFI_TYPE_DATA_SUBTYPE_SOFTAP_SSID;
            *p++ = info->softap_ssid_len;
            memcpy(p, info->softap_ssid, info->softap_ssid_len);
            p += info->softap_ssid_len;
        }
        if (info->softap_passwd) {
            *p++ = BLUFI_TYPE_DATA_SUBTYPE_SOFTAP_PASSWD;
            *p++ = info->softap_passwd_len;
            memcpy(p, info->softap_passwd, info->softap_passwd_len);
            p += info->softap_passwd_len;
        }
        if (info->softap_authmode_set) {
            *p++ = BLUFI_TYPE_DATA_SUBTYPE_SOFTAP_AUTH_MODE;
            *p++ = 1;
            *p++ = info->softap_authmode;
        }
        if (info->softap_max_conn_num_set) {
            *p++ = BLUFI_TYPE_DATA_SUBTYPE_SOFTAP_MAX_CONN_NUM;
            *p++ = 1;
            *p++ = info->softap_max_conn_num;
        }
        if (info->softap_channel_set) {
            *p++ = BLUFI_TYPE_DATA_SUBTYPE_SOFTAP_CHANNEL;
            *p++ = 1;
            *p++ = info->softap_channel;
        }
    }
    if (p - data > data_len) {
        printf("%s len error %d %d\r\n", __func__, (int)(p - data), data_len);
    }

    btc_blufi_send_encap(type, data, data_len);
    free(data);
}

static uint8_t btc_blufi_profile_deinit(void)
{
    if (!blufi_env.enabled) {
        printf("BLUFI already de-initialized\r\n");
        return _BLUFI_ERROR;
    }
    axk_blufi_deinit();
    return _BLUFI_SUCCESS;
}

void btc_blufi_call_handler(btc_msg_t *msg)
{
    btc_blufi_args_t *arg = (btc_blufi_args_t *)msg->arg;

    switch (msg->act)
    {
    case BTC_BLUFI_ACT_INIT:
        btc_blufi_profile_init();
        break;
        case BTC_BLUFI_ACT_DEINIT:
            btc_blufi_profile_deinit();
            break;
        case BTC_BLUFI_ACT_SEND_CFG_REPORT:
            btc_blufi_wifi_conn_report(arg->wifi_conn_report.opmode,
                                       arg->wifi_conn_report.sta_conn_state,
                                       arg->wifi_conn_report.softap_conn_num,
                                       arg->wifi_conn_report.extra_info,
                                       arg->wifi_conn_report.extra_info_len);
            break;
        // case BTC_BLUFI_ACT_SEND_WIFI_LIST:{
        //     btcaxk_blufi_send_wifi_list(arg->wifi_list.apCount, arg->wifi_list.list);
        //     break;
        // }
        case BTC_BLUFI_ACT_SEND_ERR_INFO:
            btc_blufi_send_error_info(arg->blufi_err_infor.state);
            break;
        case BTC_BLUFI_ACT_SEND_CUSTOM_DATA:
            btc_blufi_send_custom_data(arg->custom_data.data, arg->custom_data.data_len);
            break;
    default:
        printf("[blufi]%s UNKNOWN %d\r\n", __func__, msg->act);
        break;
    }
    btc_blufi_call_deep_free(msg);
}

void btc_blufi_set_callbacks(_blufi_callbacks_t *callbacks)
{
    blufi_env.cbs = callbacks;
}

uint16_t btcaxk_blufi_get_version(void)
{
    return BTC_BLUFI_VERSION;
}