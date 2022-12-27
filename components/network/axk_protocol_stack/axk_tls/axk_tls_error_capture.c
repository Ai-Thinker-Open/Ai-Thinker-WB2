/*
 * SPDX-FileCopyrightText: 2020-2021 Axkressif Systems (Shanghai) CO LTD
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <stdlib.h>
#include "axk_tls.h"
#include "axk_tls_error_capture_internal.h"

typedef struct axk_tls_error_storage {
    struct axk_tls_last_error parent;   /*!< standard axk-tls last error container */
    int    sock_errno;                  /*!< last socket error captured in axk-tls */
} axk_tls_error_storage_t;

void axk_tls_internal_event_tracker_capture(axk_tls_error_handle_t h, uint32_t type, int code)
{
    if (h) {
        axk_tls_error_storage_t * storage = __containerof(h, axk_tls_error_storage_t, parent);

        if (type == AXK_TLS_ERR_TYPE_AXK) {
            storage->parent.last_error = code;
        } else if (type == AXK_TLS_ERR_TYPE_MBEDTLS ||
                   type == AXK_TLS_ERR_TYPE_WOLFSSL) {
            storage->parent.axk_tls_error_code = code;
        } else if (type == AXK_TLS_ERR_TYPE_MBEDTLS_CERT_FLAGS ||
                   type == AXK_TLS_ERR_TYPE_WOLFSSL_CERT_FLAGS) {
            storage->parent.axk_tls_flags = code;
        } else if (type == AXK_TLS_ERR_TYPE_SYSTEM) {
            storage->sock_errno = code;
        }
    }
}

axk_tls_error_handle_t axk_tls_internal_event_tracker_create(void)
{
    // Allocating internal error storage which extends the parent type
    // `axk_tls_last_error` defined at interface level
    struct axk_tls_error_storage* storage =
            calloc(1, sizeof(struct axk_tls_error_storage));
    return &storage->parent;
}

void axk_tls_internal_event_tracker_destroy(axk_tls_error_handle_t h)
{
    axk_tls_error_storage_t * storage = __containerof(h, axk_tls_error_storage_t, parent);
    free(storage);
}

axk_err_t axk_tls_get_and_clear_error_type(axk_tls_error_handle_t h, axk_tls_error_type_t type, int *code)
{
    if (h && type < AXK_TLS_ERR_TYPE_MAX && code) {
        axk_tls_error_storage_t * storage = __containerof(h, axk_tls_error_storage_t, parent);
        if (type == AXK_TLS_ERR_TYPE_AXK) {
            *code = storage->parent.last_error;
            storage->parent.last_error = 0;
        } else if (type == AXK_TLS_ERR_TYPE_MBEDTLS ||
                   type == AXK_TLS_ERR_TYPE_WOLFSSL) {
            *code = storage->parent.axk_tls_error_code;
            storage->parent.axk_tls_error_code = 0;
        } else if (type == AXK_TLS_ERR_TYPE_MBEDTLS_CERT_FLAGS ||
                   type == AXK_TLS_ERR_TYPE_WOLFSSL_CERT_FLAGS) {
            *code = storage->parent.axk_tls_flags;
            storage->parent.axk_tls_flags = 0;
        } else if (type == AXK_TLS_ERR_TYPE_SYSTEM) {
            *code = storage->sock_errno;
            storage->sock_errno = 0;
        } else {
            return AXK_ERR_INVALID_ARG;
        }
        return AXK_OK;
    }
    return AXK_ERR_INVALID_ARG;
}
