/*
 * SPDX-FileCopyrightText: 2015-2022 Axkressif Systems (Shanghai) CO LTD
 *
 * SPDX-License-Identifier: Apache-2.0
 */


#include <stdlib.h>
#include <string.h>
#include <axk_tls.h>

#include "sys/queue.h"
#include "axk_log.h"

#include "axk_transport.h"
#include "axk_transport_internal.h"
#include "axk_transport_utils.h"

static const char *TAG = "TRANSPORT";

/**
 * Transport layer error structure including
 * * axk-tls last error storage
 * * sock-errno
 */
struct axk_transport_error_storage {
    struct axk_tls_last_error axk_tls_err_h_base;   /*!< axk-tls last error container */
    // additional fields
    int    sock_errno;                              /*!< last socket error captured for this transport */
};

/**
 * This list will hold all transport available
 */
STAILQ_HEAD(axk_transport_list_t, axk_transport_item_t);

struct transport_axk_tls;

/**
 * Internal transport structure holding list of transports and other data common to all transports
 */
typedef struct axk_transport_internal {
    struct axk_transport_list_t list;                      /*!< List of transports */
    struct axk_foundation_transport *base;       /*!< Base transport pointer shared for each list item */
} axk_transport_internal_t;

static axk_foundation_transport_t * axk_transport_init_foundation_transport(void)
{
    axk_foundation_transport_t *foundation = calloc(1, sizeof(axk_foundation_transport_t));
    AXK_TRANSPORT_MEM_CHECK(TAG, foundation, return NULL);
    foundation->error_handle = calloc(1, sizeof(struct axk_transport_error_storage));
    AXK_TRANSPORT_MEM_CHECK(TAG, foundation->error_handle,
                        free(foundation);
                        return NULL);
    foundation->transport_axk_tls = axk_transport_axk_tls_create();
    AXK_TRANSPORT_MEM_CHECK(TAG, foundation->transport_axk_tls,
                        free(foundation->error_handle);
                        free(foundation);
                        return NULL);
    return foundation;
}

static void axk_transport_destroy_foundation_transport(axk_foundation_transport_t *foundation)
{
    axk_transport_axk_tls_destroy(foundation->transport_axk_tls);
    free(foundation->error_handle);
    free(foundation);
}

static axk_transport_handle_t axk_transport_get_default_parent(axk_transport_handle_t t)
{
    /*
    * By default, the underlying transport layer handle is the handle itself
    */
    return t;
}

axk_transport_list_handle_t axk_transport_list_init(void)
{
    axk_transport_list_handle_t transport = calloc(1, sizeof(axk_transport_internal_t));
    AXK_TRANSPORT_MEM_CHECK(TAG, transport, return NULL);
    STAILQ_INIT(&transport->list);
    transport->base = axk_transport_init_foundation_transport();
    AXK_TRANSPORT_MEM_CHECK(TAG, transport->base,
                            free(transport);
                            return NULL);
    return transport;
}

axk_err_t axk_transport_list_add(axk_transport_list_handle_t h, axk_transport_handle_t t, const char *scheme)
{
    if (h == NULL || t == NULL) {
        return AXK_ERR_INVALID_ARG;
    }
    t->scheme = calloc(1, strlen(scheme) + 1);
    AXK_TRANSPORT_MEM_CHECK(TAG, t->scheme, return AXK_ERR_NO_MEM);
    strcpy(t->scheme, scheme);
    STAILQ_INSERT_TAIL(&h->list, t, next);
    // Each transport in a list to share the same error tracker
    t->base = h->base;
    return AXK_OK;
}

axk_transport_handle_t axk_transport_list_get_transport(axk_transport_list_handle_t h, const char *scheme)
{
    if (!h) {
        return NULL;
    }
    if (scheme == NULL) {
        return STAILQ_FIRST(&h->list);
    }
    axk_transport_handle_t item;
    STAILQ_FOREACH(item, &h->list, next) {
        if (strcasecmp(item->scheme, scheme) == 0) {
            return item;
        }
    }
    return NULL;
}

axk_err_t axk_transport_list_destroy(axk_transport_list_handle_t h)
{
    axk_transport_list_clean(h);
    axk_transport_destroy_foundation_transport(h->base);
    free(h);
    return AXK_OK;
}

axk_err_t axk_transport_list_clean(axk_transport_list_handle_t h)
{
    axk_transport_handle_t item = STAILQ_FIRST(&h->list);
    axk_transport_handle_t tmp;
    while (item != NULL) {
        tmp = STAILQ_NEXT(item, next);
        axk_transport_destroy(item);
        item = tmp;
    }
    STAILQ_INIT(&h->list);
    return AXK_OK;
}

axk_transport_handle_t axk_transport_init(void)
{
    axk_transport_handle_t t = calloc(1, sizeof(struct axk_transport_item_t));
    AXK_TRANSPORT_MEM_CHECK(TAG, t, return NULL);
    return t;
}

axk_transport_handle_t axk_transport_get_payload_transport_handle(axk_transport_handle_t t)
{
    if (t && t->_read) {
        return t->_parent_transfer(t);
    }
    return NULL;
}

axk_err_t axk_transport_destroy(axk_transport_handle_t t)
{
    if (t->_destroy) {
        t->_destroy(t);
    }
    if (t->scheme) {
        free(t->scheme);
    }
    free(t);
    return AXK_OK;
}

int axk_transport_connect(axk_transport_handle_t t, const char *host, int port, int timeout_ms)
{
    int ret = -1;
    if (t && t->_connect) {
        return t->_connect(t, host, port, timeout_ms);
    }
    return ret;
}

int axk_transport_connect_async(axk_transport_handle_t t, const char *host, int port, int timeout_ms)
{
    int ret = -1;
    if (t && t->_connect_async) {
        return t->_connect_async(t, host, port, timeout_ms);
    }
    return ret;
}

int axk_transport_read(axk_transport_handle_t t, char *buffer, int len, int timeout_ms)
{
    if (t && t->_read) {
        return t->_read(t, buffer, len, timeout_ms);
    }
    return -1;
}

int axk_transport_write(axk_transport_handle_t t, const char *buffer, int len, int timeout_ms)
{
    if (t && t->_write) {
        return t->_write(t, buffer, len, timeout_ms);
    }
    return -1;
}

int axk_transport_poll_read(axk_transport_handle_t t, int timeout_ms)
{
    if (t && t->_poll_read) {
        return t->_poll_read(t, timeout_ms);
    }
    return -1;
}

int axk_transport_poll_write(axk_transport_handle_t t, int timeout_ms)
{
    if (t && t->_poll_write) {
        return t->_poll_write(t, timeout_ms);
    }
    return -1;
}

int axk_transport_close(axk_transport_handle_t t)
{
    if (t && t->_close) {
        return t->_close(t);
    }
    return 0;
}

void *axk_transport_get_context_data(axk_transport_handle_t t)
{
    if (t) {
        return t->data;
    }
    return NULL;
}

axk_err_t axk_transport_set_context_data(axk_transport_handle_t t, void *data)
{
    if (t) {
        t->data = data;
        return AXK_OK;
    }
    return AXK_FAIL;
}

axk_err_t axk_transport_set_func(axk_transport_handle_t t,
                             connect_func _connect,
                             io_read_func _read,
                             io_func _write,
                             trans_func _close,
                             poll_func _poll_read,
                             poll_func _poll_write,
                             trans_func _destroy)
{
    if (t == NULL) {
        return AXK_FAIL;
    }
    t->_connect = _connect;
    t->_read = _read;
    t->_write = _write;
    t->_close = _close;
    t->_poll_read = _poll_read;
    t->_poll_write = _poll_write;
    t->_destroy = _destroy;
    t->_connect_async = NULL;
    t->_parent_transfer = axk_transport_get_default_parent;
    return AXK_OK;
}

int axk_transport_get_default_port(axk_transport_handle_t t)
{
    if (t == NULL) {
        return -1;
    }
    return t->port;
}

axk_err_t axk_transport_set_default_port(axk_transport_handle_t t, int port)
{
    if (t == NULL) {
        return AXK_FAIL;
    }
    t->port = port;
    return AXK_OK;
}

axk_err_t axk_transport_set_async_connect_func(axk_transport_handle_t t, connect_async_func _connect_async_func)
{
    if (t == NULL) {
        return AXK_FAIL;
    }
    t->_connect_async = _connect_async_func;
    return AXK_OK;
}

axk_err_t axk_transport_set_parent_transport_func(axk_transport_handle_t t, payload_transfer_func _parent_transport)
{
    if (t == NULL) {
        return AXK_FAIL;
    }
    t->_parent_transfer = _parent_transport;
    return AXK_OK;
}

axk_tls_error_handle_t axk_transport_get_error_handle(axk_transport_handle_t t)
{
    if (t && t->base && t->base->error_handle) {
        return &t->base->error_handle->axk_tls_err_h_base;
    }
    return NULL;
}

int axk_transport_get_errno(axk_transport_handle_t t)
{
    if (t && t->base && t->base->error_handle) {
        int actual_errno = t->base->error_handle->sock_errno;
        t->base->error_handle->sock_errno = 0;
        return actual_errno;
    }
    return -1;
}

void capture_tcp_transport_error(axk_transport_handle_t t, enum tcp_transport_errors error)
{
    axk_tls_last_error_t *err_handle = axk_transport_get_error_handle(t);
    switch (error) {
        case ERR_TCP_TRANSPORT_CONNECTION_TIMEOUT:
            err_handle->last_error = AXK_ERR_AXK_TLS_CONNECTION_TIMEOUT;
            break;
        case ERR_TCP_TRANSPORT_CANNOT_RESOLVE_HOSTNAME:
            err_handle->last_error = AXK_ERR_AXK_TLS_CANNOT_RESOLVE_HOSTNAME;
            break;
        case ERR_TCP_TRANSPORT_CONNECTION_CLOSED_BY_FIN:
            err_handle->last_error = AXK_ERR_AXK_TLS_TCP_CLOSED_FIN;
            break;
        case ERR_TCP_TRANSPORT_CONNECTION_FAILED:
            err_handle->last_error = AXK_ERR_AXK_TLS_FAILED_CONNECT_TO_HOST;
            break;
        case ERR_TCP_TRANSPORT_SETOPT_FAILED:
            err_handle->last_error = AXK_ERR_AXK_TLS_SOCKET_SETOPT_FAILED;
            break;
        case ERR_TCP_TRANSPORT_NO_MEM:
            err_handle->last_error = AXK_ERR_NO_MEM;
            break;
    }
}

void axk_transport_set_errors(axk_transport_handle_t t, const axk_tls_error_handle_t error_handle)
{
    if (t && t->base && t->base->error_handle) {
        memcpy(&t->base->error_handle->axk_tls_err_h_base, error_handle, sizeof(axk_tls_last_error_t));
        int sock_error;
        if (axk_tls_get_and_clear_error_type(error_handle, AXK_TLS_ERR_TYPE_SYSTEM, &sock_error) == AXK_OK) {
            t->base->error_handle->sock_errno = sock_error;
        }
    }
}

void axk_transport_capture_errno(axk_transport_handle_t t, int sock_errno)
{
    if (t && t->base && t->base->error_handle) {
        t->base->error_handle->sock_errno = sock_errno;
    }
}

int axk_transport_get_socket(axk_transport_handle_t t)
{
    if (t && t->_get_socket)  {
        return  t->_get_socket(t);
    }
    return -1;
}
