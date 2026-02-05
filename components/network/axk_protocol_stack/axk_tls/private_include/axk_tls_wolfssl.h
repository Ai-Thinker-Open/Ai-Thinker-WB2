/*
 * SPDX-FileCopyrightText: 2019-2021 Axkressif Systems (Shanghai) CO LTD
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#pragma once
#include "axk_tls.h"

/**
 * Internal Callback for creating ssl handle for wolfssl
 */
int axk_create_wolfssl_handle(const char *hostname, size_t hostlen, const void *cfg, axk_tls_t *tls);

/**
 * Internal Callback for wolfssl_handshake
 */
int axk_wolfssl_handshake(axk_tls_t *tls, const axk_tls_cfg_t *cfg);

/**
 * Internal Callback API for wolfssl_ssl_read
 */
ssize_t axk_wolfssl_read(axk_tls_t *tls, char *data, size_t datalen);

/**
 * Internal callback API for wolfssl_ssl_write
 */
ssize_t axk_wolfssl_write(axk_tls_t *tls, const char *data, size_t datalen);

/**
 * Internal Callback for wolfssl_cleanup , frees up all the memory used by wolfssl
 */
void axk_wolfssl_cleanup(axk_tls_t *tls);

/**
 * Internal Callback for Certificate verification for wolfssl
 */
void axk_wolfssl_verify_certificate(axk_tls_t *tls);

/**
 * Internal Callback for deleting the wolfssl connection
 */
void axk_wolfssl_conn_delete(axk_tls_t *tls);

/**
 * Internal Callback for wolfssl_get_bytes_avail
 */
ssize_t axk_wolfssl_get_bytes_avail(axk_tls_t *tls);

/**
 * Callback function for setting global CA store data for TLS/SSL using wolfssl
 */
axk_err_t axk_wolfssl_set_global_ca_store(const unsigned char *cacert_pem_buf, const unsigned int cacert_pem_bytes);

/**
 * Callback function for freeing global ca store for TLS/SSL using wolfssl
 */
void axk_wolfssl_free_global_ca_store(void);

/**
 *
 * Callback function for Initializing the global ca store for TLS?SSL using wolfssl
 */
axk_err_t axk_wolfssl_init_global_ca_store(void);

/**
 * wolfSSL function for Initializing socket wrappers (no-operation for wolfSSL)
 */
static inline void axk_wolfssl_net_init(axk_tls_t *tls)
{
}

#ifdef CONFIG_AXK_TLS_SERVER

/**
 * Function to Create AXK-TLS Server session with wolfssl Stack
 */
int axk_wolfssl_server_session_create(axk_tls_cfg_server_t *cfg, int sockfd, axk_tls_t *tls);

/*
 * Delete Server Session
 */
void axk_wolfssl_server_session_delete(axk_tls_t *tls);

#endif
