/**
 * @file coap_private.h
 * @brief COAP模块内部的宏定义和数据结构声明, 不面向其它模块, 更不面向用户
 *
 * @copyright Copyright (C) 2015-2020 Alibaba Group Holding Limited
 *
 */
#ifndef __COAP_PRIVATE_H__
#define __COAP_PRIVATE_H__

#if defined(__cplusplus)
extern "C" {
#endif

/* 用这种方式包含标准C库的头文件 */
#include <stdio.h>
#include <stdio.h>
#include "core_stdinc.h"

#include "aiot_sysdep_api.h"
#include "aiot_coap_api.h"

typedef struct {
    aiot_sysdep_portfile_t *sysdep;
    void *network_handle;
    char *host;
    uint16_t port;
    uint32_t recv_timeout_ms;
    uint32_t auth_timeout_ms;
    uint32_t send_timeout_ms;
    uint8_t *read_buff;
    uint16_t msg_id;

    /* coap client */
    void *userdata;

    uint8_t token[8];
    uint8_t token_len;

    char *product_key;
    char *device_name;
    char *device_secret;

    char *auth_token;
    aiot_coap_recv_handler_t recv_handler;

    aiot_coap_event_handler_t event_handler;
    aiot_sysdep_network_cred_t *cred;
    uint8_t is_authed;
    uint8_t message_encrypt;
    uint8_t key[16];
    uint32_t seq;

    void *mutex;
    void *nwk_mutex;
} coap_handle_t;

#define COAP_MODULE_NAME                "COAP"

#define COAP_DEFAULT_SEND_BUFF_SIZE     (1024)

/**@brief size of coap receive buffer, ajust this value if this value is to small for coap message */
#define COAP_DEFAULT_RECV_BUFF_SIZE     (1024)

/* sdk default settings */
#define COAP_DEFAULT_RECV_TIMEOUT_MS    (5000)
#define COAP_DEFAULT_SEND_TIMEOUT_MS    (5000)
#define COAP_DEFAULT_AUTH_TIMEOUT_MS    (5000)
#define COAP_DEFAULT_PORT               (5684)
#define COAP_DEFAULT_INITIAL_MID        (0x1234)
#define COAP_DEFAULT_INITIAL_TOKEN      "\x01\x02\x03\x04\x05\x06\x07\x08"

#define COAP_DEFAULT_OPTION_CNT_MAX     (15)
/* uri按照"/"符号分段后,得到的分段总数的最大值为COAP_DEFAULT_OPTION_CNT_MAX - 2, 因为要保留2个opt用以存储auth token/content-format */
#define COAP_DEFAULT_TX_URI_OPT_CNT     (COAP_DEFAULT_OPTION_CNT_MAX - 2)
#define COAP_DEFAULT_TKL                (4)
#define COAP_HEADER_VER                 (0x01)
#define COAP_AUTH_TOKEN_EXPIRED_CODE    (0x81)

#define COAP_AUTH_PATH                  "auth"
#define COAP_DYNREG_PATH                "register"
#define COAP_DYNREG_PATH2               "device"

#define COAP_OPTION_URI_PATH            11  /**< URI-Path option number. */
#define COAP_OPTION_CONTENT_FORMAT      12  /**< Content-Format option number. */
#define COAP_OPTION_ACCEPT              17  /**< Accept option number. */
#define COAP_OPTION_AUTH_TOKEN          2088

/**
 * @brief COAP消息常用的方法
 *
 */
typedef enum {
    COAP_METHOD_GET                          = 0x01,  /**< CoAP code 0.01 */
    COAP_METHOD_POST                         = 0x02,  /**< CoAP code 0.02 */
    COAP_METHOD_PUT                          = 0x03,  /**< CoAP code 0.03 */
    COAP_METHOD_DELETE                       = 0x04,  /**< CoAP code 0.04 */
} coap_request_method_t;

/**
 * @brief COAP消息头部结构
 *
 */
typedef struct {
    uint8_t ver : 2;
    uint8_t t   : 2;
    uint8_t tkl : 4;
    uint8_t code;
    uint16_t msg_id;
    uint8_t token[8];
} coap_header_t;

/**
 * @brief COAP消息option的结构
 *
 */
typedef struct {
    uint16_t num;
    uint32_t len;
    uint8_t *val;
} coap_option_t;

/**
 * @brief COAP消息数据结构
 *
 */
typedef struct {
    coap_header_t header;
    coap_option_t *option[COAP_DEFAULT_OPTION_CNT_MAX];
    uint8_t option_cnt;

    uint8_t *payload;
    uint32_t payload_len;

    uint8_t *buff;
    uint32_t buff_offset;
} coap_message_t;

typedef int32_t (*coap_response_cb_t)(void *handle, const coap_message_t *response, void *user_data);

typedef struct {
    uint8_t token[8];
    coap_response_cb_t rsp_handler;
    void *userdata;
} coap_request_cache_t;

/* dtls sign */
#define COAP_SIGN_SRC_FMT         "clientId%s.%sdeviceName%sproductKey%s"
#define COAP_AUTH_PAYLOAD_FMT     "{\"clientId\":\"%s.%s\",\"signmethod\":\"hmacsha256\",\"deviceName\":\"%s\",\"productKey\":\"%s\",\"sign\":\"%s\"}"
/* psk sign */
#define COAP_PSK_SIGN_SRC_FMT     "clientId%s.%sdeviceName%sproductKey%sseq%s"
#define COAP_PSK_AUTH_PAYLOAD_FMT "{\"clientId\":\"%s.%s\",\"signmethod\":\"hmacsha256\",\"deviceName\":\"%s\",\"productKey\":\"%s\",\"seq\":\"%s\",\"sign\":\"%s\"}"
/* dtls dynreg sign*/
#define COAP_REGISTER_SIGN_SRC_FMT "deviceName%sproductKey%srandom%s"
#define COAP_REGISTER_PAYLOAD_SRC_FMT "{\"signmethod\":\"hmacsha256\",\"deviceName\":\"%s\",\"productKey\":\"%s\",\"random\":\"%s\",\"sign\":\"%s\"}"
#define COAP_REQUEST_MESSAGE_FMT  "{\"pageSize\":\"%s\"}"

#if defined(__cplusplus)
}
#endif
#endif  /* __COAP_PRIVATE_H__ */


