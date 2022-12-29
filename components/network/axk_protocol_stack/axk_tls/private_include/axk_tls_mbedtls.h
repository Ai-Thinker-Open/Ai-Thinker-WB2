/*
 * SPDX-FileCopyrightText: 2019-2021 Axkressif Systems (Shanghai) CO LTD
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#pragma once
#include "axk_tls.h"

/**
 * Internal Callback API for mbedtls_ssl_read
 */
ssize_t axk_mbedtls_read(axk_tls_t *tls, char *data, size_t datalen);

/**
 * Internal callback API for mbedtls_ssl_write
 */
ssize_t axk_mbedtls_write(axk_tls_t *tls, const char *data, size_t datalen);

/**
 * Internal Callback for mbedtls_handshake
 */
int axk_mbedtls_handshake(axk_tls_t *tls, const axk_tls_cfg_t *cfg);

/**
 * Internal Callback for mbedtls_cleanup , frees up all the memory used by mbedtls
 */
void axk_mbedtls_cleanup(axk_tls_t *tls);

/**
 * Internal Callback for Certificate verification for mbedtls
 */
void axk_mbedtls_verify_certificate(axk_tls_t *tls);

/**
 * Internal Callback for deleting the mbedtls connection
 */
void axk_mbedtls_conn_delete(axk_tls_t *tls);

/**
 * Internal Callback for mbedtls_get_bytes_avail
 */
ssize_t axk_mbedtls_get_bytes_avail(axk_tls_t *tls);

/**
 * Internal Callback for creating ssl handle for mbedtls
 */
axk_err_t axk_create_mbedtls_handle(const char *hostname, size_t hostlen, const void *cfg, axk_tls_t *tls);

/**
 * mbedTLS function for Initializing socket wrappers
 */
static inline void axk_mbedtls_net_init(axk_tls_t *tls)
{
    mbedtls_net_init(&tls->server_fd);
}

#ifdef CONFIG_AXK_TLS_SERVER
/**
 * Internal Callback for set_server_config
 *
 * /note :- can only be used with mbedtls ssl library
 */
axk_err_t set_server_config(axk_tls_cfg_server_t *cfg, axk_tls_t *tls);

/**
 * Internal Callback for mbedtls_server_session_create
 *
 * /note :- The function can only be used with mbedtls ssl library
 */
int axk_mbedtls_server_session_create(axk_tls_cfg_server_t *cfg, int sockfd, axk_tls_t *tls);

/**
 * Internal Callback for mbedtls_server_session_delete
 *
 * /note :- The function can only be used with mbedtls ssl library
 */
void axk_mbedtls_server_session_delete(axk_tls_t *tls);

#ifdef CONFIG_AXK_TLS_SERVER_SESSION_TICKETS
/**
 * Internal function to setup server side session ticket context
 *
 * /note :- The function can only be used with mbedtls ssl library
 */
axk_err_t axk_mbedtls_server_session_ticket_ctx_init(axk_tls_server_session_ticket_ctx_t *cfg);

/**
 * Internal function to free server side session ticket context
 *
 * /note :- The function can only be used with mbedtls ssl library
 */
void axk_mbedtls_server_session_ticket_ctx_free(axk_tls_server_session_ticket_ctx_t *cfg);
#endif
#endif

/**
 * Internal Callback for set_client_config_function
 */
axk_err_t set_client_config(const char *hostname, size_t hostlen, axk_tls_cfg_t *cfg, axk_tls_t *tls);

#ifdef CONFIG_AXK_TLS_CLIENT_SESSION_TICKETS
/**
 * Internal Callback for mbedtls_get_client_session
 */
axk_tls_client_session_t *axk_mbedtls_get_client_session(axk_tls_t *tls);
#endif

/**
 * Internal Callback for mbedtls_init_global_ca_store
 */
axk_err_t axk_mbedtls_init_global_ca_store(void);

/**
 * Callback function for setting global CA store data for TLS/SSL using mbedtls
 */
axk_err_t axk_mbedtls_set_global_ca_store(const unsigned char *cacert_pem_buf, const unsigned int cacert_pem_bytes);

/**
 * Internal Callback for axk_tls_global_ca_store
 */
mbedtls_x509_crt *axk_mbedtls_get_global_ca_store(void);

/**
 * Callback function for freeing global ca store for TLS/SSL using mbedtls
 */
void axk_mbedtls_free_global_ca_store(void);
