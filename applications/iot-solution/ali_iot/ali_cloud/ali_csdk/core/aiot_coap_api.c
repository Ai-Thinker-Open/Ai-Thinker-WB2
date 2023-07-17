/**
 * @file aiot_coap_api.c
 * @brief COAP模块实现, 其中包含了连接到物联网平台和收发数据的API接口
 * @date 2020-02-28
 *
 * @copyright Copyright (C) 2015-2018 Alibaba Group Holding Limited
 *
 */

#include "coap_private.h"

#include "core_log.h"
#include "core_auth.h"
#include "core_string.h"
#include "core_sha256.h"
#include "aiot_state_api.h"
#include "core_aes.h"


static int32_t _coap_message_assemble_header(const coap_message_t *message, uint8_t *buff)
{
    const coap_header_t *message_header = &message->header;
    uint8_t token_len = message_header->tkl;
    uint8_t *p = buff;

    /* append header */
    *p++ = (message_header->ver << 6) | ((message_header->t & 0x03) << 4) | (message_header->tkl & 0x0F);
    *p++ = message_header->code;
    *p++ = message_header->msg_id >> 8;
    *p++ = message_header->msg_id & 0x00FF;

    /* append token if any */
    if (token_len > 0) {
        memcpy(p, message_header->token, token_len);
    }

    return (p - buff + token_len);
}

static void _coap_token_iteration(uint8_t *token, uint8_t tkl)
{
    if (tkl-- && (*token)++ == 0xFF) {
        _coap_token_iteration(token + 1, tkl);
    }
}

static int32_t _coap_message_parse(coap_handle_t *coap_handle, coap_message_t *coap_message, const uint8_t *buff,
                                   uint32_t len)
{
    uint8_t *p = (uint8_t *)buff;
    uint8_t *p_end = (uint8_t *)buff + len;
    uint32_t opt_delta_sum = 0;

    if (len < 4) {
        return STATE_COAP_MSG_LEN_ERROR;
    }

    /* parse header */
    coap_message->header.ver = *p >> 6;
    coap_message->header.t = (*p >> 4) & 0x03;
    coap_message->header.tkl = *p++ & 0x0F;

    coap_message->header.code = *p++;
    coap_message->header.msg_id = ((*p++) << 8);
    coap_message->header.msg_id |= *p++;

    if (coap_message->header.ver != COAP_HEADER_VER || coap_message->header.tkl > 8) {
        return STATE_COAP_HEADER_FORMAT_ERROR;
    }

    /* parse token */
    if (4U + coap_message->header.tkl > len) {
        return STATE_COAP_MSG_TOKEN_LEN_TOO_SHORT;
    }
    memcpy(coap_message->header.token, p, coap_message->header.tkl);
    p += coap_message->header.tkl;

    /* parse option */
    while (p < p_end && *p != 0xFF) {
        uint32_t opt_idx = coap_message->option_cnt;
        uint32_t opt_delta = *p >> 4;
        uint32_t opt_length = *p++ & 0x0F;

        /* check option cnt first */
        if (opt_idx >= COAP_DEFAULT_OPTION_CNT_MAX) {
            return STATE_COAP_RX_OPTION_CNT_EXCEED_LIMIT;
        }

        /* get option number */
        if (opt_delta == 13) {
            if ((p + 1) > p_end) {
                return STATE_COAP_OPT_DELTA_THIRTEEN_OPT_LEN_ERROR;
            }

            opt_delta_sum = 13 + *p++;
        } else if (opt_delta == 14) {
            if ((p + 2) > p_end) {
                return STATE_COAP_OPT_DELTA_FOURTEEN_OPT_LEN_ERROR;
            }

            opt_delta_sum += 269 ;
            opt_delta_sum += (*p++ << 8);
            opt_delta_sum += *p++;
        } else {
            opt_delta_sum += opt_delta;
        }

        /* get option length */
        if (opt_length == 13) {
            if ((p + 1) > p_end) {
                return STATE_COAP_OPT_LEN_THIRTEEN_OPT_LEN_ERROR;
            }

            opt_length = 13 + *p++;
        } else if (opt_length == 14) {
            if ((p + 2) > p_end) {
                return STATE_COAP_OPT_LEN_FOURTEEN_OPT_LEN_ERROR;
            }

            opt_length = 269;
            opt_length += (*p++ << 8);
            opt_length += *p++;
        }

        if (p_end <= p || (p_end - p) < opt_length) {
            return STATE_COAP_OPTION_LEN_ERROR;
        }
        coap_message->option[opt_idx] = coap_handle->sysdep->core_sysdep_malloc(sizeof(coap_option_t), COAP_MODULE_NAME);
        memset(coap_message->option[opt_idx], 0, sizeof(coap_option_t));
        coap_message->option[opt_idx]->num = opt_delta_sum;
        coap_message->option[opt_idx]->len = opt_length;
        coap_message->option[opt_idx]->val = p;
        coap_message->option_cnt++;

        p += opt_length;
    }

    /* parse payload */
    if (p < p_end && *p++ == 0xFF) {
        if (p < p_end) {
            coap_message->payload = p;
            coap_message->payload_len = p_end - p;
        } else {
            return STATE_COAP_OPTION_END_NOT_FOUND;
        }
    } else {
        coap_message->payload = NULL;
        coap_message->payload_len = 0;
    }

    return STATE_SUCCESS;
}

static int32_t _coap_uri_to_option(const char *uri, coap_option_t *option_array, uint8_t *option_cnt)
{
    uint32_t i;
    uint8_t cnt = 0;
    uint32_t len = strlen(uri);

    for (i = 0; i < len; i++) {
        if (uri[i] == '/') {
            /* since cnt start from 0, so it should be < COAP_DEFAULT_TX_URI_OPT_CNT */
            if (cnt >= COAP_DEFAULT_TX_URI_OPT_CNT) {
                *option_cnt = 0;
                return STATE_COAP_TX_URI_OPTION_CNT_EXCEED_LIMIT;
            }

            i++;
            option_array[cnt].val = (uint8_t *)uri + i;
            while (i < len && uri[i] != '/') {
                i++;
            }
            option_array[cnt].len = (uint8_t *)(uri + i) - option_array[cnt].val;
            cnt++;
            i--;
        }
    }
    *option_cnt = cnt;

    return STATE_SUCCESS;
}

static int32_t _coap_malloc_message(aiot_sysdep_portfile_t *sysdep, coap_message_t **msg, uint32_t buff_len)
{
    coap_message_t *message;

    message = sysdep->core_sysdep_malloc(sizeof(coap_message_t), COAP_MODULE_NAME);
    if (message == NULL) {
        return STATE_COAP_MALLOC_MSG_FAILED;
    }
    memset(message, 0, sizeof(coap_message_t));

    message->buff = sysdep->core_sysdep_malloc(buff_len, COAP_MODULE_NAME);
    if (message->buff == NULL) {
        sysdep->core_sysdep_free(message);
        return STATE_COAP_MALLOC_MSG_BUFFER_FAILED;
    }
    memset(message->buff, 0, buff_len);

    /* setup the fixed version field in header */
    message->header.ver = COAP_HEADER_VER;

    *msg = message;
    return STATE_SUCCESS;
}

static int32_t _coap_create_request_message(void *handle, coap_request_method_t method, aiot_coap_msg_type_t msg_type,
        coap_message_t **request)
{
    coap_handle_t *coap_handle = (coap_handle_t *)handle;
    coap_message_t *req;
    int32_t res;

    if (request == NULL) {
        return STATE_COAP_REQUEST_IS_NULL;
    }
    *request = NULL;

    if ((res = _coap_malloc_message(coap_handle->sysdep, &req, COAP_DEFAULT_SEND_BUFF_SIZE)) != STATE_SUCCESS) {
        return res;
    }

    /* setup header */
    req->header.t = msg_type;
    req->header.tkl = coap_handle->token_len;
    req->header.code = method;

    /* generate msg_id and token */
    coap_handle->sysdep->core_sysdep_mutex_lock(coap_handle->mutex);
    coap_handle->msg_id++;
    _coap_token_iteration(coap_handle->token, coap_handle->token_len);
    coap_handle->sysdep->core_sysdep_mutex_unlock(coap_handle->mutex);
    req->header.msg_id = coap_handle->msg_id;
    memcpy(req->header.token, coap_handle->token, coap_handle->token_len);

    /* assemble header first */
    req->buff_offset = _coap_message_assemble_header(req, req->buff);
    *request = req;

    return STATE_SUCCESS;
}

static int32_t _coap_create_empty_message(void *handle, aiot_coap_msg_type_t type, uint32_t msg_id,
        coap_message_t **empty)
{
    coap_handle_t *coap_handle = (coap_handle_t *)handle;
    coap_message_t *msg;

    if (coap_handle == NULL || empty == NULL || type == AIOT_COAP_MSG_TYPE_NON) {
        return STATE_COAP_EMPTY_MSG_PARAM_ERROR;
    }
    *empty = NULL;

    if (_coap_malloc_message(coap_handle->sysdep, &msg, 4) < 0) {       /* empty message len is fixed 4 */
        return STATE_COAP_EMPTY_MSG_MALLOC_FAILED;
    }

    /* setup header */
    msg->header.t = type;
    msg->header.tkl = 0;    /* tkl must be 0 */
    msg->header.code = 0;
    msg->header.msg_id = msg_id;

    /* assemble the empty message */
    msg->buff_offset = _coap_message_assemble_header(msg, msg->buff);
    *empty = msg;

    return STATE_SUCCESS;
}

/* invoke this func in order of option number */
static int32_t _coap_add_option(coap_handle_t *coap_handle, coap_message_t *message, uint16_t opt_num,
                                uint8_t *opt_data, uint32_t opt_len)
{
    uint16_t opt_delta;
    uint32_t opt_length;
    uint8_t *p = message->buff + message->buff_offset;
    uint32_t offset = message->buff_offset;
    uint8_t *initial_byte = p++;

    if (message->option_cnt >= COAP_DEFAULT_OPTION_CNT_MAX) {
        return STATE_COAP_TX_TOTAL_OPTION_CNT_EXCEED_LIMIT;
    }

    if (message->option_cnt > 0) {
        if (opt_num < message->option[message->option_cnt - 1]->num) {
            return STATE_COAP_OPTION_NOT_IN_ORDER;
        } else {
            opt_delta = opt_num - message->option[message->option_cnt - 1]->num;
        }
    } else {
        opt_delta = opt_num;
    }

    if (COAP_DEFAULT_SEND_BUFF_SIZE - offset < 4) {
        return STATE_COAP_HEADER_BUFFER_IS_TOO_SHORT;
    }

    if (opt_delta < 13) {
        *initial_byte = opt_delta << 4;
    } else if (opt_delta <= 0xFF + 13) {
        *initial_byte = 0xD0;
        *p++ = (opt_delta - 13);
    } else { /* else if (opt_delta < 0xFFFF + 269) */
        *initial_byte = 0xE0;
        *p++ = (opt_delta - 269) >> 8;
        *p++ = opt_delta - 269;
    }

    opt_length = opt_len;
    if (opt_length < 13) {
        *initial_byte |= opt_length;
    } else if (opt_length <= 0xFF + 13) {
        *initial_byte |= 0x0D;
        *p++ = (opt_length - 13);
    } else if (opt_length < 0xFFFF + 269) {
        *initial_byte |= 0x0E;
        *p++ = (opt_length - 269) >> 8;
        *p++ = opt_length - 269;
    }

    offset += (p - initial_byte);
    if ((COAP_DEFAULT_SEND_BUFF_SIZE - offset) < opt_length) {
        return STATE_COAP_OPTION_BUFFER_TOO_SHORT;
    }

    memcpy(p, opt_data, opt_length);
    message->option[message->option_cnt] = coap_handle->sysdep->core_sysdep_malloc(sizeof(coap_option_t), COAP_MODULE_NAME);
    memset(message->option[message->option_cnt], 0, sizeof(coap_option_t));
    message->option[message->option_cnt]->num = opt_num;
    message->option[message->option_cnt]->len = opt_len;
    message->option[message->option_cnt]->val = p;

    message->option_cnt++;
    message->buff_offset = offset + opt_length;

    return STATE_SUCCESS;
}

static int32_t _coap_connect(void *handle)
{
    coap_handle_t *coap_handle = (coap_handle_t *)handle;
    int32_t res = STATE_SUCCESS;
    int32_t socket_type = CORE_SYSDEP_SOCKET_UDP_CLIENT;

    if (NULL == coap_handle->network_handle) {
        coap_handle->network_handle = coap_handle->sysdep->core_sysdep_network_init();
        if (NULL == coap_handle->network_handle) {
            return STATE_COAP_NWK_HANDLE_IS_NULL;
        }
    }

    if (((res = coap_handle->sysdep->core_sysdep_network_setopt(coap_handle->network_handle,
                CORE_SYSDEP_NETWORK_SOCKET_TYPE,
                &socket_type)) < STATE_SUCCESS) ||
            ((res = coap_handle->sysdep->core_sysdep_network_setopt(coap_handle->network_handle, CORE_SYSDEP_NETWORK_HOST,
                    coap_handle->host)) < STATE_SUCCESS) ||
            ((res = coap_handle->sysdep->core_sysdep_network_setopt(coap_handle->network_handle, CORE_SYSDEP_NETWORK_PORT,
                    &coap_handle->port)) < STATE_SUCCESS) ||
            ((res = coap_handle->sysdep->core_sysdep_network_setopt(coap_handle->network_handle, CORE_SYSDEP_NETWORK_CRED,
                    coap_handle->cred)) < STATE_SUCCESS)) {
        coap_handle->sysdep->core_sysdep_network_deinit(&coap_handle->network_handle);
        return STATE_COAP_SET_NWK_PARMS_FAILED;
    }

    if (coap_handle->cred->option == AIOT_SYSDEP_NETWORK_CRED_SVRCERT_PSK) {

        char *psk_id = NULL, psk[65] = {0};
        core_sysdep_psk_t sysdep_psk;

        res = core_auth_tls_psk(coap_handle->sysdep, &psk_id, psk, coap_handle->product_key, coap_handle->device_name,
                                coap_handle->device_secret, COAP_MODULE_NAME);
        if (res < STATE_SUCCESS) {
            coap_handle->sysdep->core_sysdep_network_deinit(&coap_handle->network_handle);
            return STATE_COAP_CREATE_PSK_FAILED;
        }

        memset(&sysdep_psk, 0, sizeof(core_sysdep_psk_t));
        sysdep_psk.psk_id = psk_id;
        sysdep_psk.psk = psk;

        res = coap_handle->sysdep->core_sysdep_network_setopt(coap_handle->network_handle, CORE_SYSDEP_NETWORK_PSK,
                (void *)&sysdep_psk);

        coap_handle->sysdep->core_sysdep_free(psk_id);

        if (res < STATE_SUCCESS) {
            coap_handle->sysdep->core_sysdep_network_deinit(&coap_handle->network_handle);
            return STATE_COAP_SET_PSK_FAILED;
        }
    }

    if ((res = coap_handle->sysdep->core_sysdep_network_establish(coap_handle->network_handle)) < STATE_SUCCESS) {
        coap_handle->sysdep->core_sysdep_network_deinit(&coap_handle->network_handle);
        return STATE_COAP_NWK_ESTABLISH_FAILED;
    }
    return STATE_SUCCESS;
}

static int32_t _coap_send_message(void *handle, coap_message_t *coap_message, uint8_t *payload, uint32_t payload_len)
{
    int32_t res;
    coap_handle_t *coap_handle = (coap_handle_t *)handle;
    coap_message_t *message = (coap_message_t *)coap_message;

    if (coap_message == NULL) {
        return STATE_COAP_SEND_MESSAGE_IS_NULL;
    }

    if (NULL == coap_handle->network_handle) {
        if (STATE_SUCCESS != (res = _coap_connect(coap_handle))) {
            return res;
        }
    }

    /* append payload */
    if (payload != NULL && payload_len != 0) {
        message->payload = payload;
        message->payload_len = payload_len;

        if ((COAP_DEFAULT_SEND_BUFF_SIZE - message->buff_offset - 1) < payload_len) {
            return STATE_COAP_PAYLOAD_BUFFER_IS_TOO_SHORT;
        }

        message->buff[message->buff_offset++] = 0xFF;
        memcpy(message->buff + message->buff_offset, payload, payload_len);
        message->buff_offset += payload_len;
    }

    if(NULL != payload && payload_len > 0) {
        core_log_hexdump(STATE_COAP_LOG_HEXDUMP, '>', payload, payload_len);
    }
    coap_handle->sysdep->core_sysdep_mutex_lock(coap_handle->nwk_mutex);
    res = coap_handle->sysdep->core_sysdep_network_send(coap_handle->network_handle, message->buff, message->buff_offset,
            coap_handle->send_timeout_ms, NULL);
    coap_handle->sysdep->core_sysdep_mutex_unlock(coap_handle->nwk_mutex);
    if (res < STATE_SUCCESS) {
        return res;
    }

    return STATE_SUCCESS;
}

static int32_t _cal_auth_payload_buff(coap_message_t *coap_message, uint8_t **auth_payload)
{
    coap_message_t *message = (coap_message_t *)coap_message;
    message->buff[message->buff_offset++] = 0xFF;

    /* append payload */
    *auth_payload = message->buff + message->buff_offset;
    return STATE_SUCCESS;
}

static int32_t _send_coap_auth_msg(coap_handle_t *coap_handle, coap_message_t *message)
{
    int32_t res;
    if (NULL == coap_handle->network_handle) {
        if (STATE_SUCCESS != (res = _coap_connect(coap_handle))) {
            return res;
        }
    }

    coap_handle->sysdep->core_sysdep_mutex_lock(coap_handle->nwk_mutex);
    res = coap_handle->sysdep->core_sysdep_network_send(coap_handle->network_handle, message->buff, message->buff_offset,
            coap_handle->send_timeout_ms, NULL);
    coap_handle->sysdep->core_sysdep_mutex_unlock(coap_handle->nwk_mutex);
    if (res < STATE_SUCCESS) {
        return res;
    }

    return STATE_SUCCESS;
}

static void _coap_release_message(void *handle, coap_message_t *message)
{
    coap_handle_t *coap_handle = (coap_handle_t *)handle;
    int cnt = 0;

    if (handle == NULL || message == NULL) {
        return;
    }
    for (cnt = 0; cnt < COAP_DEFAULT_OPTION_CNT_MAX; cnt++) {
        if (NULL != message->option[cnt]) {
            coap_handle->sysdep->core_sysdep_free(message->option[cnt]);
            message->option[cnt] = NULL;
        }
    }

    coap_handle->sysdep->core_sysdep_free(message->buff);
    coap_handle->sysdep->core_sysdep_free(message);
}

static uint32_t _token_str2uint32(aiot_sysdep_portfile_t *sysdep, uint8_t *token, uint8_t token_len)
{
    uint32_t result = 0;
    if (token_len >= COAP_DEFAULT_TKL) {
        result = (token[0] << 24) + (token[1] << 16) + (token[2] << 8) + token[3];
    }
    return result;
}

static int32_t _coap_recv_message_handler(coap_handle_t *coap_handle, coap_message_t *message,
        coap_request_cache_t *auth_req_cache)
{
    uint32_t code_c = (uint32_t)(message->header.code >> 5);
    int32_t res;

    /* empty message */
    if (message->header.code == 0) {
        /* ping message */
        if (message->header.t == AIOT_COAP_MSG_TYPE_CON) {
            /* response rst */
            coap_message_t *emtpy_msg;
            if (((res = _coap_create_empty_message(coap_handle, AIOT_COAP_MSG_TYPE_RST, message->header.msg_id,
                                                   &emtpy_msg)) != STATE_SUCCESS) ||
                    (res = _coap_send_message(coap_handle, emtpy_msg, NULL, 0) != STATE_SUCCESS)) {
                return res;
            }
            _coap_release_message(coap_handle, emtpy_msg);
        }
    }
    /* response message */
    else if (code_c == 2 || code_c == 4 || code_c == 5) {
        if (message->header.t > AIOT_COAP_MSG_TYPE_ACK) {
            return STATE_COAP_HEADER_TYPE_ERROR;
        }

        if (message->header.t == AIOT_COAP_MSG_TYPE_CON) {
            /* send ack message auto */
            coap_message_t *emtpy_msg;
            if (((res = _coap_create_empty_message(coap_handle, AIOT_COAP_MSG_TYPE_ACK, message->header.msg_id,
                                                   &emtpy_msg)) != STATE_SUCCESS) ||
                    (res = _coap_send_message(coap_handle, emtpy_msg, NULL, 0))) {
                return res;
            }

            _coap_release_message(coap_handle, emtpy_msg);
        }

        if (0 != message->payload_len && NULL != message->payload) {
            core_log_hexdump(STATE_COAP_LOG_HEXDUMP, '<', message->payload, message->payload_len);
        }

        /* The incoming msg is an auth msg if the auth_req_cache not null */
        if (NULL != auth_req_cache) {
            /* auth only */
            if(code_c != 2) {
                core_log1(coap_handle->sysdep, STATE_COAP_AUTH_FAILED, "coap respose error code %d!\r\n", &code_c);
                return STATE_COAP_AUTH_FAILED;
            }
            if (!memcmp(auth_req_cache->token, message->header.token, message->header.tkl)) {
                auth_req_cache->rsp_handler(coap_handle, message, auth_req_cache->userdata);
            }
        } else {
            aiot_coap_recv_t data = {
                .type = AIOT_COAPRECV_RESPONSE,
                .data = {
                    .payload = message->payload,
                    .payload_len = message->payload_len,
                    .rsp_code = message->header.code,
                    .msg_token = _token_str2uint32(coap_handle->sysdep, message->header.token, message->header.tkl),
                    .msg_id = message->header.msg_id
                }
            };

            if (COAP_AUTH_TOKEN_EXPIRED_CODE == message->header.code) {
                if (NULL != coap_handle->event_handler) {
                    aiot_coap_event_t event = {
                        .type = AIOT_COAPEVT_AUTH_TOKEN_EXPIRED,
                    };
                    coap_handle->event_handler(coap_handle, &event, coap_handle->userdata);
                    coap_handle->is_authed = 0;
                }
            }

            if (NULL != coap_handle->recv_handler) {
                unsigned char *payload = NULL;
                if(message->payload != NULL && coap_handle->message_encrypt) {
                    int len = 0;
                    payload = coap_handle->sysdep->core_sysdep_malloc(COAP_DEFAULT_RECV_BUFF_SIZE, COAP_MODULE_NAME);
                    if (NULL == payload) {
                        return STATE_COAP_MALLOC_MSG_FAILED;
                    }
                    memset(payload, 0x00, COAP_DEFAULT_RECV_BUFF_SIZE);

                    len = iotx_aes_cbc_decrypt(message->payload, message->payload_len, coap_handle->key, payload);
                    if (len > 0) {
                        data.data.payload = payload;
                        data.data.payload_len = len;
                    }
                    if (0 != len && NULL != payload) {
                        core_log_hexdump(STATE_COAP_LOG_HEXDUMP, 'R', payload, len);
                    }
                }
                coap_handle->recv_handler(coap_handle, &(data), coap_handle->userdata);
                if(payload != NULL) {
                    coap_handle->sysdep->core_sysdep_free(payload);
                }
            }
        }
    } else {
        /* message format error */
        return STATE_COAP_HEADER_CODE_ERROR;
    }

    return STATE_SUCCESS;
}

static int32_t _coap_recv(void *handle, coap_request_cache_t *auth_req_cache)
{
    coap_handle_t *coap_handle = (coap_handle_t *)handle;
    int32_t read_len;
    int32_t res = STATE_SUCCESS;

    /* create the network if it has been closed */
    if (NULL == coap_handle->network_handle) {
        res = _coap_connect(coap_handle);
        if (STATE_SUCCESS != res) {
            return res;
        }
    }

    read_len = coap_handle->sysdep->core_sysdep_network_recv(coap_handle->network_handle, coap_handle->read_buff,
               COAP_DEFAULT_RECV_BUFF_SIZE, coap_handle->recv_timeout_ms, NULL);
    if (read_len > 0) {
        coap_message_t coap_message;
        int cnt = 0;
        memset(&coap_message, 0, sizeof(coap_message_t));
        res = _coap_message_parse(coap_handle, &coap_message, coap_handle->read_buff, read_len);
        if (res < STATE_SUCCESS) {
            return res;
        }

        res = _coap_recv_message_handler(coap_handle, &coap_message, auth_req_cache);
        for (cnt = 0; cnt < COAP_DEFAULT_OPTION_CNT_MAX; cnt++) {
            if (NULL != coap_message.option[cnt]) {
                coap_handle->sysdep->core_sysdep_free(coap_message.option[cnt]);
                coap_message.option[cnt] = NULL;
            }
        }
    } else if (read_len < 0) {
        /* close the network */
        coap_handle->sysdep->core_sysdep_network_deinit(&coap_handle->network_handle);
        return read_len;
    }

    return STATE_SUCCESS;
}

static int32_t _coap_auth_response_handler(void *handle, const coap_message_t *response,
        void *user_data)
{
    coap_handle_t *coap_handle = (coap_handle_t *) handle;
    char *value = NULL;
    uint32_t value_len = 0;
    aiot_sysdep_portfile_t *sysdep = NULL;
    int32_t res = 0;
    uint32_t seq = 0;
    uint8_t key[32];
    char random[32 + 1], buffer[128];

    sysdep = coap_handle->sysdep;
    res = core_json_value((char *)response->payload, response->payload_len, "token", strlen("token"), &value, &value_len);
    if(res != STATE_SUCCESS) {
        return res;
    }

    if (value == NULL) {
        core_log(coap_handle->sysdep, STATE_COAP_AUTH_RSP_TOKEN_IS_NULL, "auth response parse err\r\n");
        return STATE_COAP_AUTH_RSP_TOKEN_IS_NULL;
    }

    /* store the auth token */
    if (coap_handle->auth_token != NULL) {
        sysdep->core_sysdep_free(coap_handle->auth_token);
        coap_handle->auth_token = NULL;
    }
    coap_handle->auth_token = sysdep->core_sysdep_malloc(value_len + 1, COAP_MODULE_NAME);
    if (coap_handle->auth_token == NULL) {
        return STATE_COAP_AUTH_TOKEN_MALLOC_FAILED;
    }

    memset(coap_handle->auth_token, 0, value_len + 1);
    memcpy(coap_handle->auth_token, value, value_len);

    if(coap_handle->message_encrypt) {
        value = NULL;
        value_len = 0;
        res = core_json_value((char *)response->payload, response->payload_len, "seqOffset", strlen("seqOffset"), &value, &value_len);
        if(res != STATE_SUCCESS) {
            return STATE_COAP_AUTH_FAILED;
        }
        core_str2uint(value, value_len, &seq);
        coap_handle->seq = seq;

        value = NULL;
        value_len = 0;
        res = core_json_value((char *)response->payload, response->payload_len, "random", strlen("random"), &value, &value_len);
        if(res != STATE_SUCCESS || value_len > sizeof(random)) {
            return STATE_COAP_AUTH_FAILED;
        }
        memset(random, 0, sizeof(random));
        memcpy(random, value, value_len);

        /* device_secret + random + sha256 ==> key */
        memset(buffer, 0, sizeof(buffer));
        if(sizeof(buffer) < strlen(coap_handle->device_secret) + strlen(random) + 1) {
            return STATE_COAP_AUTH_FAILED;
        }
        memcpy(buffer, coap_handle->device_secret, strlen(coap_handle->device_secret));
        memcpy(buffer + strlen(buffer), ",", strlen(","));
        memcpy(buffer + strlen(buffer), random, strlen(random));


        core_sha256((uint8_t *)buffer, strlen(buffer), key);
        memset(coap_handle->key, 0, sizeof(coap_handle->key));
        memcpy(coap_handle->key, key + 8, 16);
    }

    core_log2(coap_handle->sysdep, STATE_COAP_LOG_AUTH_TOKEN, "%.*s\r\n", (void *)&response->payload_len,
              response->payload);

    if (NULL != coap_handle->event_handler) {
        aiot_coap_event_t event = {
            .type = AIOT_COAPEVT_AUTH_TOKEN_RECEIVED
        };
        coap_handle->event_handler(coap_handle, &event, coap_handle->userdata);
    }

    coap_handle->is_authed = 1;
    return STATE_SUCCESS;
}

static int32_t is_content_format_supported(aiot_coap_content_format_t format)
{
    if (AIOT_COAP_CT_TEXT_PLAIN == format ||
            AIOT_COAP_CT_APP_LINK_FORMAT      == format ||
            AIOT_COAP_CT_APP_XML              == format ||
            AIOT_COAP_CT_APP_OCTET_STREAM     == format ||
            AIOT_COAP_CT_APP_RDF_XML          == format ||
            AIOT_COAP_CT_APP_EXI              == format ||
            AIOT_COAP_CT_APP_JSON             == format ||
            AIOT_COAP_CT_APP_CBOR             == format) {
        return STATE_SUCCESS;
    }
    return STATE_COAP_UNSUPPORTED_CONTENT_FORMAT;
}

void *aiot_coap_init(void)
{
    aiot_sysdep_portfile_t *sysdep = NULL;
    coap_handle_t *coap_handle = NULL;
    sysdep = aiot_sysdep_get_portfile();
    if (NULL == sysdep) {
        return NULL;
    }

    coap_handle = sysdep->core_sysdep_malloc(sizeof(coap_handle_t), COAP_MODULE_NAME);
    if (coap_handle == NULL) {
        return NULL;
    }
    memset(coap_handle, 0, sizeof(coap_handle_t));

    coap_handle->sysdep = sysdep;
    coap_handle->mutex = sysdep->core_sysdep_mutex_init();
    coap_handle->nwk_mutex = sysdep->core_sysdep_mutex_init();

    /* malloc read buffer */
    coap_handle->read_buff = sysdep->core_sysdep_malloc(COAP_DEFAULT_RECV_BUFF_SIZE, COAP_MODULE_NAME);
    if (coap_handle->read_buff == NULL) {
        return NULL;
    }
    memset(coap_handle->read_buff, 0, COAP_DEFAULT_RECV_BUFF_SIZE);

    /* setup default option */
    coap_handle->port = COAP_DEFAULT_PORT;
    coap_handle->msg_id = COAP_DEFAULT_INITIAL_MID;
    coap_handle->token_len = COAP_DEFAULT_TKL;
    coap_handle->recv_timeout_ms = COAP_DEFAULT_RECV_TIMEOUT_MS;
    coap_handle->send_timeout_ms = COAP_DEFAULT_SEND_TIMEOUT_MS;
    coap_handle->auth_timeout_ms = COAP_DEFAULT_AUTH_TIMEOUT_MS;
    coap_handle->message_encrypt = 0;
    memcpy(coap_handle->token, COAP_DEFAULT_INITIAL_TOKEN, COAP_DEFAULT_TKL);

    return coap_handle;
}

int32_t aiot_coap_setopt(void *handle, aiot_coap_option_t option, void *data)
{
    int32_t res = STATE_SUCCESS;
    aiot_sysdep_portfile_t *sysdep = NULL;
    coap_handle_t *coap_handle = (coap_handle_t *)handle;

    if (handle == NULL || data == NULL) {
        return AIOT_COAP_OPT_PARAMS_INVALID;
    }
    sysdep = coap_handle->sysdep;

    switch (option) {
    case AIOT_COAPOPT_RECV_TIMEOUT: {
        coap_handle->recv_timeout_ms = *(uint32_t *)data;
    }
    break;
    case AIOT_COAPOPT_SEND_TIMEOUT: {
        coap_handle->send_timeout_ms = *(uint32_t *)data;
    }
    break;
    case AIOT_COAPOPT_AUTH_TIMEOUT: {
        coap_handle->auth_timeout_ms = *(uint32_t *)data;
    }
    break;
    case AIOT_COAPOPT_USERDATA : {
        coap_handle->userdata = data;
    }
    break;
    case AIOT_COAPOPT_PRODUCT_KEY: {
        res = core_strdup(coap_handle->sysdep, &coap_handle->product_key, data, COAP_MODULE_NAME);
    }
    break;
    case AIOT_COAPOPT_DEVICE_NAME: {
        res = core_strdup(coap_handle->sysdep, &coap_handle->device_name, data, COAP_MODULE_NAME);
    }
    break;
    case AIOT_COAPOPT_DEVICE_SECRET: {
        res = core_strdup(coap_handle->sysdep, &coap_handle->device_secret, data, COAP_MODULE_NAME);
    }
    break;
    case AIOT_COAPOPT_HOST: {
        core_strdup(coap_handle->sysdep, &(coap_handle->host), data, COAP_MODULE_NAME);
    }
    break;
    case AIOT_COAPOPT_PORT: {
        coap_handle->port = *(uint16_t *)data;
    }
    break;
    case AIOT_COAPOPT_RECV_HANDLER: {
        coap_handle->recv_handler = (aiot_coap_recv_handler_t)data;
    }
    break;
    case AIOT_COAPOPT_EVENT_HANDLER: {
        coap_handle->event_handler = (aiot_coap_event_handler_t)data;
    }
    break;
    case AIOT_COAPOPT_PAYLOAD_ENCRYPTION: {
        coap_handle->message_encrypt = *(uint8_t *)data;
    }
    break;
    case AIOT_COAPOPT_CRED: {
        if (coap_handle->cred != NULL) {
            sysdep->core_sysdep_free(coap_handle->cred);
            coap_handle->cred = NULL;
        }
        coap_handle->cred = sysdep->core_sysdep_malloc(sizeof(aiot_sysdep_network_cred_t),
                            COAP_MODULE_NAME);
        if (coap_handle->cred != NULL) {
            memset(coap_handle->cred, 0, sizeof(aiot_sysdep_network_cred_t));
            memcpy(coap_handle->cred, data, sizeof(aiot_sysdep_network_cred_t));
        } else {
            res = STATE_SYS_DEPEND_MALLOC_FAILED;
        }
    }
    break;
    default: {
        return STATE_COAP_INVALID_OPTION;
    }
    }

    return res;
}

static coap_message_t *_coap_creat_auth_message(coap_handle_t *coap_handle, const char *secret)
{
    coap_message_t *msg = NULL;
    int32_t res = STATE_SUCCESS;
    char *product_key = coap_handle->product_key;
    char *device_name = coap_handle->device_name;
    char *plain_text = NULL;
    uint8_t random[2] = {0}, sign[32] = { 0 };
    char random_string[5] = {0}, sign_str[65] = { 0 };
    char *src[] = { product_key, device_name, device_name, product_key, NULL, NULL};
    uint16_t src_num = 4;
    const char *sign_fmt = COAP_SIGN_SRC_FMT;
    const char *payload_fmt = COAP_AUTH_PAYLOAD_FMT;
    char *payload = NULL;
    uint8_t *auth_data = NULL;

    if(coap_handle->message_encrypt) {
        coap_handle->sysdep->core_sysdep_rand(random, sizeof(random));
        memset(random_string, 0, sizeof(random_string));
        core_hex2str(random, sizeof(random), random_string, 0);
        src[src_num++] = random_string;
        sign_fmt = COAP_PSK_SIGN_SRC_FMT;
        payload_fmt = COAP_PSK_AUTH_PAYLOAD_FMT;
    }

    /* 生成签名 */
    res = core_sprintf(coap_handle->sysdep, &plain_text, (char *)sign_fmt, src, src_num, COAP_MODULE_NAME);
    if (res < STATE_SUCCESS) {
        return NULL;
    }
    /* hmac_md5 to generate sign string */
    core_hmac_sha256((const uint8_t *)plain_text, strlen(plain_text), (const uint8_t *) secret, strlen(secret),
                     sign);
    core_hex2str(sign, 32, sign_str, 1);
    coap_handle->sysdep->core_sysdep_free(plain_text);

    /* 生成payload */
    src[src_num++] = sign_str;
    res = core_sprintf(coap_handle->sysdep, &payload, (char *)payload_fmt, src, src_num, COAP_MODULE_NAME);
    if (res < STATE_SUCCESS) {
        return NULL;
    }

    /* 生成coap报文 */
    if ((STATE_SUCCESS != (res = _coap_create_request_message(coap_handle, COAP_METHOD_POST, AIOT_COAP_MSG_TYPE_CON,
                                 &msg))) ||
            (STATE_SUCCESS != (res = _coap_add_option(coap_handle, msg, COAP_OPTION_URI_PATH, (uint8_t *)COAP_AUTH_PATH,
                                     strlen(COAP_AUTH_PATH)))) ||
            (STATE_SUCCESS != (res = _cal_auth_payload_buff(msg, (uint8_t **)&auth_data)))) {
        _coap_release_message(coap_handle, msg);
        return NULL;
    }
    memcpy(auth_data, payload, strlen(payload));
    msg->buff_offset += strlen(payload);
    coap_handle->sysdep->core_sysdep_free(payload);

    return msg;
}

int32_t aiot_coap_auth(void *handle)
{
    coap_handle_t *coap_handle = (coap_handle_t *)handle;
    int32_t res = STATE_SUCCESS;
    uint64_t time_start, time_now;
    aiot_sysdep_portfile_t *sysdep = NULL;
    coap_message_t *msg;
    coap_request_cache_t auth_req_cache;

    if (coap_handle == NULL) {
        return STATE_COAP_AUTH_HANDLE_IS_NULL;
    }

    if (coap_handle->product_key == NULL
            || coap_handle->device_name == NULL || coap_handle->device_secret == NULL) {
        return STATE_COAP_AUTH_DEVICE_INFO_MISSING;
    }
    sysdep = coap_handle->sysdep;

    core_log(coap_handle->sysdep, STATE_COAP_BASE, "coap user calls aiot_coap_auth api, connecting\r\n");
    if (NULL == coap_handle->network_handle) {
        if (STATE_SUCCESS != (res = _coap_connect(coap_handle))) {
            core_log(sysdep, STATE_COAP_NWK_ESTABLISH_FAILED, "connect failed\n");
            return res;
        }
    }

    msg = _coap_creat_auth_message(coap_handle, coap_handle->device_secret);
    if(msg == NULL) {
        return STATE_COAP_AUTH_DEVICE_INFO_MISSING;
    }
    memset(&auth_req_cache, 0, sizeof(auth_req_cache));
    memcpy(auth_req_cache.token, coap_handle->token, coap_handle->token_len);
    auth_req_cache.rsp_handler = _coap_auth_response_handler;
    res = _send_coap_auth_msg(coap_handle, msg);

    _coap_release_message(coap_handle, msg);
    if (res < STATE_SUCCESS) {
        return res;
    }

    time_start = sysdep->core_sysdep_time();
    while (1) {
        time_now = sysdep->core_sysdep_time();
        if (time_now < time_start) {
            time_start = time_now;
        }
        if (time_now - time_start > coap_handle->auth_timeout_ms) {
            res = STATE_COAP_AUTH_TIMEOUT;
            break;
        }
        res = _coap_recv(coap_handle, &auth_req_cache);
        if (res < 0) {
            break;
        }

        if (coap_handle->is_authed == 1) {
            core_log(coap_handle->sysdep, STATE_COAP_BASE, "coap auth success\r\n");
            res = STATE_SUCCESS;
            break;
        }
    }

    return res;
}

int32_t aiot_coap_send(void *handle, const char *uri, aiot_coap_request_t *request)
{
    coap_handle_t *coap_handle = (coap_handle_t *)handle;
    coap_message_t *msg;

    uint8_t i = 0;
    int32_t res = -1;
    uint8_t *payload;
    uint8_t uri_option_cnt = 0;
    uint32_t payload_len;
    coap_option_t uri_option[COAP_DEFAULT_OPTION_CNT_MAX];
    char seq[33] = {0}, en_seq[33] = {0};
    int32_t len = 0;

    if (handle == NULL) {
        return STATE_COAP_SEND_HANDLE_IS_NULL;
    }

    if (0 == coap_handle->is_authed) {
        return STATE_COAP_SEND_WITHOUT_AUTHORIZATION;
    }

    if (uri == NULL) {
        return STATE_COAP_SEND_TOPIC_IS_NULL;
    }

    if (request == NULL) {
        return STATE_COAP_SEND_REQUEST_IS_NULL;
    }

    if (request->payload == NULL ) {
        return STATE_COAP_SEND_PAYLOAD_IS_NULL;
    }

    /* check payload len first, for padding */
    if (AIOT_COAP_MSG_TYPE_CON != request->msg_type && AIOT_COAP_MSG_TYPE_NON != request->msg_type) {
        return STATE_COAP_SEND_INVALID_MSG_TYPE;
    }

    res = _coap_create_request_message(coap_handle, COAP_METHOD_POST, request->msg_type, &msg);
    if (res < STATE_SUCCESS) {
        return res;
    }

    /* split uri to coap option array, and add uri option */
    memset(uri_option, 0, sizeof(uri_option));
    res = _coap_uri_to_option(uri, uri_option, &uri_option_cnt);
    if (res < STATE_SUCCESS) {
        _coap_release_message(coap_handle, msg);
        return res;
    }

    for (i = 0; i < uri_option_cnt; i++) {
        res = _coap_add_option(coap_handle, msg, COAP_OPTION_URI_PATH, uri_option[i].val, uri_option[i].len);
        if (res != STATE_SUCCESS) {
            _coap_release_message(coap_handle, msg);
            return res;
        }
    }

    uint8_t content_format = (uint8_t)request->content_format;
    if ((STATE_SUCCESS != (res = is_content_format_supported(content_format))) ||
            (STATE_SUCCESS != (res = _coap_add_option(coap_handle, msg, COAP_OPTION_CONTENT_FORMAT, (uint8_t *)(&content_format),
                                     sizeof(uint8_t))))
       ) {
        _coap_release_message(coap_handle, msg);
        return res;
    }

    /* add auth token option */
    res = _coap_add_option(coap_handle, msg, COAP_OPTION_AUTH_TOKEN, (uint8_t *)coap_handle->auth_token,
                           strlen(coap_handle->auth_token));
    if (res < STATE_SUCCESS) {
        _coap_release_message(coap_handle, msg);
        return res;
    }

    /* tell user the token in sent msg */
    if (NULL != request->msg_token) {
        *(request->msg_token) = (msg->header.token[0] << 24) + (msg->header.token[1] << 16) + (msg->header.token[2] << 8) +
                                (msg->header.token[3]);
    }

    if(coap_handle->message_encrypt && request->payload != NULL && request->payload_len != 0) {
        /* PSK mode， encrypt payload */
        memset(seq, 0, sizeof(seq));
        memset(en_seq, 0, sizeof(en_seq));
        core_uint2str(coap_handle->seq++, seq, NULL);
        len = iotx_aes_cbc_encrypt((uint8_t *)seq, strlen(seq), coap_handle->key, en_seq);
        _coap_add_option(coap_handle, msg,  2089, (unsigned char *)en_seq, len);

        payload = (unsigned char *)coap_handle->sysdep->core_sysdep_malloc(COAP_DEFAULT_SEND_BUFF_SIZE, COAP_MODULE_NAME);
        if (NULL == payload) {
            return STATE_COAP_AUTH_TOKEN_MALLOC_FAILED;
        }

        /* 输出加密前的payload */
        core_log_hexdump(STATE_COAP_LOG_HEXDUMP, 'S', request->payload, request->payload_len);
        memset(payload, 0x00, COAP_DEFAULT_SEND_BUFF_SIZE);
        payload_len = iotx_aes_cbc_encrypt(request->payload, request->payload_len, coap_handle->key, payload);
        if (0 == payload_len) {
            coap_handle->sysdep->core_sysdep_free(payload);
            return AIOT_COAP_OPT_PARAMS_INVALID;
        }
        res = _coap_send_message(coap_handle, msg, payload, payload_len);
        coap_handle->sysdep->core_sysdep_free(payload);
    } else {
        res = _coap_send_message(coap_handle, msg, request->payload, request->payload_len);
    }

    if(res == STATE_SUCCESS) {
        res = msg->header.msg_id;
    }

    /* release memery */
    _coap_release_message(coap_handle, msg);

    return res;
}

int32_t aiot_coap_recv(void *handle)
{
    coap_handle_t *coap_handle = (coap_handle_t *)handle;
    if (coap_handle == NULL) {
        return STATE_COAP_RECV_HANDLE_IS_NULL;
    }

    if (0 == coap_handle->is_authed) {
        return STATE_COAP_RECV_WITHOUT_AUTHORIZATION;
    }

    return _coap_recv(coap_handle, NULL);
}

int32_t aiot_coap_deinit(void **handle)
{
    aiot_sysdep_portfile_t *sysdep = NULL;
    coap_handle_t *coap_handle = NULL;

    if (handle == NULL || *handle == NULL) {
        return STATE_SUCCESS;
    }
    coap_handle = *(coap_handle_t **)handle;
    sysdep = coap_handle->sysdep;

    /* release all memery */
    if (coap_handle->product_key != NULL) {
        sysdep->core_sysdep_free(coap_handle->product_key);
    }
    if (coap_handle->device_name != NULL) {
        sysdep->core_sysdep_free(coap_handle->device_name);
    }
    if (coap_handle->device_secret != NULL) {
        sysdep->core_sysdep_free(coap_handle->device_secret);
    }
    if (coap_handle->auth_token != NULL) {
        sysdep->core_sysdep_free(coap_handle->auth_token);
    }
    if (coap_handle->host != NULL) {
        sysdep->core_sysdep_free(coap_handle->host);
    }
    if (coap_handle->cred != NULL) {
        sysdep->core_sysdep_free(coap_handle->cred);
    }
    sysdep->core_sysdep_network_deinit(&coap_handle->network_handle);
    sysdep->core_sysdep_mutex_deinit(&(coap_handle->mutex));
    sysdep->core_sysdep_mutex_deinit(&(coap_handle->nwk_mutex));
    sysdep->core_sysdep_free(coap_handle->read_buff);
    sysdep->core_sysdep_free(coap_handle);
    *handle = NULL;

    return STATE_SUCCESS;
}

int32_t aiot_coap_request_message(void *handle, int32_t counter)
{
    coap_handle_t *coap_handle = (coap_handle_t *)handle;
    int32_t res;
    uint32_t req_token = 0;
    char counter_string[10] = { 0 };
    char *payload_src[] = { counter_string };
    /* 定义一个请求 */
    aiot_coap_request_t req = {
        .msg_type = AIOT_COAP_MSG_TYPE_CON,
        /* 上行的数据格式为json */
        .content_format = AIOT_COAP_CT_APP_JSON,
        .msg_token = &req_token
    };

    if(handle == NULL) {
        return STATE_COAP_RECV_HANDLE_IS_NULL;
    }

    if(counter <= 0 || counter > 10) {
        return STATE_COAP_INPUT_OUT_RANGE;
    }

    core_int2str(counter, counter_string, NULL);
    res = core_sprintf(coap_handle->sysdep, (char **)&req.payload, COAP_REQUEST_MESSAGE_FMT, payload_src, sizeof(payload_src) / sizeof(char *), COAP_MODULE_NAME);
    if (res < STATE_SUCCESS) {
        return res;
    }
    req.payload_len = strlen((char *)req.payload);

    /* 用COAP通道向云平台上报1条业务数据, 接口是aiot_coap_send() */
    res = aiot_coap_send(handle, "/pull", &req);
    if (res < 0) {
        printf("aiot_coap_send res = -0x%04X\r\n", -res);
    }

    coap_handle->sysdep->core_sysdep_free(req.payload);
    return res;
}

static int32_t _coap_dynreg_response_handler(void *handle, const coap_message_t *response,
        void *user_data)
{
    coap_handle_t *coap_handle = (coap_handle_t *) handle;
    char *secret = NULL;
    uint32_t secret_len = 0;
    int32_t res = 0;
    if(user_data == NULL) {
        return STATE_USER_INPUT_NULL_POINTER;
    }

    res = core_json_value((char *)response->payload, response->payload_len, "deviceSecret", strlen("deviceSecret"), &secret, &secret_len);
    if(res != STATE_SUCCESS) {
        return res;
    }

    if (secret == NULL) {
        core_log(coap_handle->sysdep, STATE_COAP_AUTH_RSP_TOKEN_IS_NULL, "auth response parse err\r\n");
        return STATE_COAP_AUTH_RSP_TOKEN_IS_NULL;
    }

    /* 密钥存储 */
    memcpy(user_data, secret, secret_len);
    return STATE_SUCCESS;
}

static coap_message_t *_coap_creat_register_message(coap_handle_t *coap_handle, const char *secret)
{
    coap_message_t *msg = NULL;
    int32_t res = STATE_SUCCESS;
    char *product_key = coap_handle->product_key;
    char *device_name = coap_handle->device_name;
    char *plain_text = NULL;
    uint8_t random[12] = {0}, sign[32] = { 0 };
    char random_string[25] = {0}, sign_str[65] = { 0 };
    char *src[] = { device_name, product_key, random_string, NULL};
    uint16_t src_num = 3;
    const char *sign_fmt = COAP_REGISTER_SIGN_SRC_FMT;
    const char *payload_fmt = COAP_REGISTER_PAYLOAD_SRC_FMT;
    char *payload = NULL;
    uint8_t *auth_data = NULL;

    coap_handle->sysdep->core_sysdep_rand(random, sizeof(random));
    memset(random_string, 0, sizeof(random_string));
    core_hex2str(random, sizeof(random), random_string, 0);

    /* 生成签名 */
    res = core_sprintf(coap_handle->sysdep, &plain_text, (char *)sign_fmt, src, src_num, COAP_MODULE_NAME);
    if (res < STATE_SUCCESS) {
        return NULL;
    }
    /* hmac_md5 to generate sign string */
    core_hmac_sha256((const uint8_t *)plain_text, strlen(plain_text), (const uint8_t *) secret, strlen(secret),
                     sign);
    core_hex2str(sign, 32, sign_str, 1);
    coap_handle->sysdep->core_sysdep_free(plain_text);

    /* 生成payload */
    src[src_num++] = sign_str;
    res = core_sprintf(coap_handle->sysdep, &payload, (char *)payload_fmt, src, src_num, COAP_MODULE_NAME);
    if (res < STATE_SUCCESS) {
        return NULL;
    }

    /* 生成coap报文 */
    res = _coap_create_request_message(coap_handle, COAP_METHOD_POST, AIOT_COAP_MSG_TYPE_CON,&msg);
    if(res != STATE_SUCCESS) {
        return NULL;
    }
    _coap_add_option(coap_handle, msg, COAP_OPTION_URI_PATH, (uint8_t *)COAP_AUTH_PATH, strlen(COAP_AUTH_PATH));
    _coap_add_option(coap_handle, msg, COAP_OPTION_URI_PATH, (uint8_t *)COAP_DYNREG_PATH, strlen(COAP_DYNREG_PATH));
    _coap_add_option(coap_handle, msg, COAP_OPTION_URI_PATH, (uint8_t *)COAP_DYNREG_PATH2, strlen(COAP_DYNREG_PATH2));
    _cal_auth_payload_buff(msg, (uint8_t **)&auth_data);

    memcpy(auth_data, payload, strlen(payload));
    msg->buff_offset += strlen(payload);
    coap_handle->sysdep->core_sysdep_free(payload);

    return msg;
}

int32_t aiot_coap_dynreg(void *handle, const char *product_secret, char *out_secret, uint32_t out_secret_len)
{
    coap_handle_t *coap_handle = (coap_handle_t *)handle;
    int32_t res = STATE_SUCCESS;
    uint64_t time_start, time_now;
    aiot_sysdep_portfile_t *sysdep = NULL;
    coap_message_t *msg;
    coap_request_cache_t auth_req_cache;
    char device_secret[64] = { 0 };

    if (coap_handle == NULL) {
        return STATE_COAP_DYNREG_HANDLE_IS_NULL;
    }

    if (coap_handle->product_key == NULL || coap_handle->device_name == NULL
            || product_secret == NULL || out_secret == NULL
            || out_secret_len <= 0 ) {
        return STATE_COAP_DYNREG_DEVICE_INFO_MISSING;
    }
    sysdep = coap_handle->sysdep;

    core_log(coap_handle->sysdep, STATE_COAP_BASE, "coap  user calls aiot_coap_dynreg api\r\n");
    if (NULL == coap_handle->network_handle) {
        if (STATE_SUCCESS != (res = _coap_connect(coap_handle))) {
            core_log(sysdep, STATE_COAP_NWK_ESTABLISH_FAILED, "connect failed\n");
            return res;
        }
    }

    msg = _coap_creat_register_message(coap_handle, product_secret);
    if(msg == NULL) {
        return STATE_COAP_DYNREG_DEVICE_INFO_MISSING;
    }
    memset(&auth_req_cache, 0, sizeof(auth_req_cache));
    memcpy(auth_req_cache.token, coap_handle->token, coap_handle->token_len);
    auth_req_cache.rsp_handler = _coap_dynreg_response_handler;
    memset(device_secret, 0, sizeof(device_secret));
    auth_req_cache.userdata = device_secret;
    res = _send_coap_auth_msg(coap_handle, msg);

    _coap_release_message(coap_handle, msg);
    if (res < STATE_SUCCESS) {
        return res;
    }

    time_start = sysdep->core_sysdep_time();
    while (1) {
        time_now = sysdep->core_sysdep_time();
        if (time_now < time_start) {
            time_start = time_now;
        }
        if (time_now - time_start > coap_handle->auth_timeout_ms) {
            res = STATE_COAP_DYNREG_TIMEOUT;
            break;
        }
        res = _coap_recv(coap_handle, &auth_req_cache);
        if (res < 0) {
            break;
        }

        if (strlen(device_secret) > 0) {
            if(out_secret_len > strlen(device_secret) + 1) {
                core_log(coap_handle->sysdep, STATE_COAP_BASE, "coap  dynreg success\r\n");
                strncpy(out_secret, device_secret, strlen(device_secret));
                res = STATE_SUCCESS;
            } else {
                res = STATE_COAP_DYNREG_SECRET_TOO_LONG;
            }

            break;
        }
    }

    return res;
}