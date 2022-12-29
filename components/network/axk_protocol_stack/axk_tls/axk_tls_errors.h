/*
 * SPDX-FileCopyrightText: 2021 Axkressif Systems (Shanghai) CO LTD
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#ifndef _AXK_TLS_ERRORS_H_
#define _AXK_TLS_ERRORS_H_

#include "axk_err.h"

#ifdef __cplusplus
extern "C" {
#endif

#define AXK_ERR_AXK_TLS_BASE           0x8000             /*!< Starting number of AXK-TLS error codes */

/* generic axk-tls error codes */
#define AXK_ERR_AXK_TLS_CANNOT_RESOLVE_HOSTNAME           (AXK_ERR_AXK_TLS_BASE + 0x01)  /*!< Error if hostname couldn't be resolved upon tls connection */
#define AXK_ERR_AXK_TLS_CANNOT_CREATE_SOCKET              (AXK_ERR_AXK_TLS_BASE + 0x02)  /*!< Failed to create socket */
#define AXK_ERR_AXK_TLS_UNSUPPORTED_PROTOCOL_FAMILY       (AXK_ERR_AXK_TLS_BASE + 0x03)  /*!< Unsupported protocol family */
#define AXK_ERR_AXK_TLS_FAILED_CONNECT_TO_HOST            (AXK_ERR_AXK_TLS_BASE + 0x04)  /*!< Failed to connect to host */
#define AXK_ERR_AXK_TLS_SOCKET_SETOPT_FAILED              (AXK_ERR_AXK_TLS_BASE + 0x05)  /*!< failed to set/get socket option */
#define AXK_ERR_AXK_TLS_CONNECTION_TIMEOUT                (AXK_ERR_AXK_TLS_BASE + 0x06)  /*!< new connection in axk_tls_low_level_conn connection timeouted */
#define AXK_ERR_AXK_TLS_SE_FAILED                         (AXK_ERR_AXK_TLS_BASE + 0x07)  /*< axk-tls use Secure Element returned failed */
#define AXK_ERR_AXK_TLS_TCP_CLOSED_FIN                    (AXK_ERR_AXK_TLS_BASE + 0x08)  /*< axk-tls's TPC transport connection has benn closed (in a clean way) */

/* mbedtls specific error codes */
#define AXK_ERR_MBEDTLS_CERT_PARTLY_OK                    (AXK_ERR_AXK_TLS_BASE + 0x10)  /*!< mbedtls parse certificates was partly successful */
#define AXK_ERR_MBEDTLS_CTR_DRBG_SEED_FAILED              (AXK_ERR_AXK_TLS_BASE + 0x11)  /*!< mbedtls api returned error */
#define AXK_ERR_MBEDTLS_SSL_SET_HOSTNAME_FAILED           (AXK_ERR_AXK_TLS_BASE + 0x12)  /*!< mbedtls api returned error */
#define AXK_ERR_MBEDTLS_SSL_CONFIG_DEFAULTS_FAILED        (AXK_ERR_AXK_TLS_BASE + 0x13)  /*!< mbedtls api returned error */
#define AXK_ERR_MBEDTLS_SSL_CONF_ALPN_PROTOCOLS_FAILED    (AXK_ERR_AXK_TLS_BASE + 0x14)  /*!< mbedtls api returned error */
#define AXK_ERR_MBEDTLS_X509_CRT_PARSE_FAILED             (AXK_ERR_AXK_TLS_BASE + 0x15)  /*!< mbedtls api returned error */
#define AXK_ERR_MBEDTLS_SSL_CONF_OWN_CERT_FAILED          (AXK_ERR_AXK_TLS_BASE + 0x16)  /*!< mbedtls api returned error */
#define AXK_ERR_MBEDTLS_SSL_SETUP_FAILED                  (AXK_ERR_AXK_TLS_BASE + 0x17)  /*!< mbedtls api returned error */
#define AXK_ERR_MBEDTLS_SSL_WRITE_FAILED                  (AXK_ERR_AXK_TLS_BASE + 0x18)  /*!< mbedtls api returned error */
#define AXK_ERR_MBEDTLS_PK_PARSE_KEY_FAILED               (AXK_ERR_AXK_TLS_BASE + 0x19)  /*!< mbedtls api returned failed  */
#define AXK_ERR_MBEDTLS_SSL_HANDSHAKE_FAILED              (AXK_ERR_AXK_TLS_BASE + 0x1A)  /*!< mbedtls api returned failed  */
#define AXK_ERR_MBEDTLS_SSL_CONF_PSK_FAILED               (AXK_ERR_AXK_TLS_BASE + 0x1B)  /*!< mbedtls api returned failed  */
#define AXK_ERR_MBEDTLS_SSL_TICKET_SETUP_FAILED           (AXK_ERR_AXK_TLS_BASE + 0x1C)  /*!< mbedtls api returned failed  */

/* wolfssl specific error codes */
#define AXK_ERR_WOLFSSL_SSL_SET_HOSTNAME_FAILED           (AXK_ERR_AXK_TLS_BASE + 0x31)  /*!< wolfSSL api returned error */
#define AXK_ERR_WOLFSSL_SSL_CONF_ALPN_PROTOCOLS_FAILED    (AXK_ERR_AXK_TLS_BASE + 0x32)  /*!< wolfSSL api returned error */
#define AXK_ERR_WOLFSSL_CERT_VERIFY_SETUP_FAILED          (AXK_ERR_AXK_TLS_BASE + 0x33)  /*!< wolfSSL api returned error */
#define AXK_ERR_WOLFSSL_KEY_VERIFY_SETUP_FAILED           (AXK_ERR_AXK_TLS_BASE + 0x34)  /*!< wolfSSL api returned error */
#define AXK_ERR_WOLFSSL_SSL_HANDSHAKE_FAILED              (AXK_ERR_AXK_TLS_BASE + 0x35)  /*!< wolfSSL api returned failed  */
#define AXK_ERR_WOLFSSL_CTX_SETUP_FAILED                  (AXK_ERR_AXK_TLS_BASE + 0x36)  /*!< wolfSSL api returned failed */
#define AXK_ERR_WOLFSSL_SSL_SETUP_FAILED                  (AXK_ERR_AXK_TLS_BASE + 0x37)  /*!< wolfSSL api returned failed */
#define AXK_ERR_WOLFSSL_SSL_WRITE_FAILED                  (AXK_ERR_AXK_TLS_BASE + 0x38)  /*!< wolfSSL api returned failed */


/**
* Definition of errors reported from IO API (potentially non-blocking) in case of error:
* - axk_tls_conn_read()
* - axk_tls_conn_write()
*/
#ifdef CONFIG_AXK_TLS_USING_MBEDTLS
#define AXK_TLS_ERR_SSL_WANT_READ                          MBEDTLS_ERR_SSL_WANT_READ
#define AXK_TLS_ERR_SSL_WANT_WRITE                         MBEDTLS_ERR_SSL_WANT_WRITE
#define AXK_TLS_ERR_SSL_TIMEOUT                            MBEDTLS_ERR_SSL_TIMEOUT
#elif CONFIG_AXK_TLS_USING_WOLFSSL /* CONFIG_AXK_TLS_USING_MBEDTLS */
#define AXK_TLS_ERR_SSL_WANT_READ                          -0x6900
#define AXK_TLS_ERR_SSL_WANT_WRITE                         -0x6880
#define AXK_TLS_ERR_SSL_TIMEOUT                            WOLFSSL_CBIO_ERR_TIMEOUT
#endif /*CONFIG_AXK_TLS_USING_WOLFSSL */

/**
* Definition of different types/sources of error codes reported
* from different components
*/
typedef enum {
    AXK_TLS_ERR_TYPE_UNKNOWN = 0,
    AXK_TLS_ERR_TYPE_SYSTEM,                /*!< System error -- errno */
    AXK_TLS_ERR_TYPE_MBEDTLS,               /*!< Error code from mbedTLS library */
    AXK_TLS_ERR_TYPE_MBEDTLS_CERT_FLAGS,    /*!< Certificate flags defined in mbedTLS */
    AXK_TLS_ERR_TYPE_AXK,                   /*!< AXK-SDK error type -- axk_err_t  */
    AXK_TLS_ERR_TYPE_WOLFSSL,               /*!< Error code from wolfSSL library */
    AXK_TLS_ERR_TYPE_WOLFSSL_CERT_FLAGS,    /*!< Certificate flags defined in wolfSSL */
    AXK_TLS_ERR_TYPE_MAX,                   /*!< Last err type -- invalid entry */
} axk_tls_error_type_t;

typedef struct axk_tls_last_error* axk_tls_error_handle_t;

/**
*  @brief Error structure containing relevant errors in case tls error occurred
*/
typedef struct axk_tls_last_error {
    axk_err_t last_error;               /*!< error code (based on AXK_ERR_AXK_TLS_BASE) of the last occurred error */
    int       axk_tls_error_code;       /*!< axk_tls error code from last axk_tls failed api */
    int       axk_tls_flags;            /*!< last certification verification flags */
} axk_tls_last_error_t;

#ifdef __cplusplus
}
#endif

#endif //_AXK_TLS_ERRORS_H_
