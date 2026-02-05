// Copyright 2015-2018 Axkressif Systems (Shanghai) PTE LTD
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at

//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#ifndef _AXK_TRANSPORT_H_
#define _AXK_TRANSPORT_H_

#include <axk_err.h>
#include <stdbool.h>

#ifdef __cplusplus
extern "C" {
#endif

/**
*  @brief Keep alive parameters structure
*/
typedef struct axk_transport_keepalive {
    bool            keep_alive_enable;      /*!< Enable keep-alive timeout */
    int             keep_alive_idle;        /*!< Keep-alive idle time (second) */
    int             keep_alive_interval;    /*!< Keep-alive interval time (second) */
    int             keep_alive_count;       /*!< Keep-alive packet retry send count */
} axk_transport_keep_alive_t;

typedef struct axk_transport_internal* axk_transport_list_handle_t;
typedef struct axk_transport_item_t* axk_transport_handle_t;

typedef int (*connect_func)(axk_transport_handle_t t, const char *host, int port, int timeout_ms);
typedef int (*io_func)(axk_transport_handle_t t, const char *buffer, int len, int timeout_ms);
typedef int (*io_read_func)(axk_transport_handle_t t, char *buffer, int len, int timeout_ms);
typedef int (*trans_func)(axk_transport_handle_t t);
typedef int (*poll_func)(axk_transport_handle_t t, int timeout_ms);
typedef int (*connect_async_func)(axk_transport_handle_t t, const char *host, int port, int timeout_ms);
typedef axk_transport_handle_t (*payload_transfer_func)(axk_transport_handle_t);

typedef struct axk_tls_last_error* axk_tls_error_handle_t;

/**
 * @brief      Create transport list
 *
 * @return     A handle can hold all transports
 */
axk_transport_list_handle_t axk_transport_list_init(void);

/**
 * @brief      Cleanup and free all transports, include itself,
 *             this function will invoke axk_transport_destroy of every transport have added this the list
 *
 * @param[in]  list  The list
 *
 * @return
 *     - AXK_OK
 *     - AXK_FAIL
 */
axk_err_t axk_transport_list_destroy(axk_transport_list_handle_t list);

/**
 * @brief      Add a transport to the list, and define a scheme to indentify this transport in the list
 *
 * @param[in]  list    The list
 * @param[in]  t       The Transport
 * @param[in]  scheme  The scheme
 *
 * @return
 *     - AXK_OK
 */
axk_err_t axk_transport_list_add(axk_transport_list_handle_t list, axk_transport_handle_t t, const char *scheme);

/**
 * @brief      This function will remove all transport from the list,
 *             invoke axk_transport_destroy of every transport have added this the list
 *
 * @param[in]  list  The list
 *
 * @return
 *     - AXK_OK
 *     - AXK_ERR_INVALID_ARG
 */
axk_err_t axk_transport_list_clean(axk_transport_list_handle_t list);

/**
 * @brief      Get the transport by scheme, which has been defined when calling function `axk_transport_list_add`
 *
 * @param[in]  list  The list
 * @param[in]  tag   The tag
 *
 * @return     The transport handle
 */
axk_transport_handle_t axk_transport_list_get_transport(axk_transport_list_handle_t list, const char *scheme);

/**
 * @brief      Initialize a transport handle object
 *
 * @return     The transport handle
 */
axk_transport_handle_t axk_transport_init(void);

/**
 * @brief      Cleanup and free memory the transport
 *
 * @param[in]  t     The transport handle
 *
 * @return
 *     - AXK_OK
 *     - AXK_FAIL
 */
axk_err_t axk_transport_destroy(axk_transport_handle_t t);

/**
 * @brief      Get default port number used by this transport
 *
 * @param[in]  t     The transport handle
 *
 * @return     the port number
 */
int axk_transport_get_default_port(axk_transport_handle_t t);

/**
 * @brief      Set default port number that can be used by this transport
 *
 * @param[in]  t     The transport handle
 * @param[in]  port  The port number
 *
 * @return
 *     - AXK_OK
 *     - AXK_FAIL
 */
axk_err_t axk_transport_set_default_port(axk_transport_handle_t t, int port);

/**
 * @brief      Transport connection function, to make a connection to server
 *
 * @param      t           The transport handle
 * @param[in]  host        Hostname
 * @param[in]  port        Port
 * @param[in]  timeout_ms  The timeout milliseconds (-1 indicates wait forever)
 *
 * @return
 * - socket for will use by this transport
 * - (-1) if there are any errors, should check errno
 */
int axk_transport_connect(axk_transport_handle_t t, const char *host, int port, int timeout_ms);

/**
 * @brief      Non-blocking transport connection function, to make a connection to server
 *
 * @param      t           The transport handle
 * @param[in]  host        Hostname
 * @param[in]  port        Port
 * @param[in]  timeout_ms  The timeout milliseconds (-1 indicates wait forever)
 *
 * @return
 * - socket for will use by this transport
 * - (-1) if there are any errors, should check errno
 */
int axk_transport_connect_async(axk_transport_handle_t t, const char *host, int port, int timeout_ms);

/**
 * @brief      Transport read function
 *
 * @param      t           The transport handle
 * @param      buffer      The buffer
 * @param[in]  len         The length
 * @param[in]  timeout_ms  The timeout milliseconds (-1 indicates wait forever)
 *
 * @return
 *  - Number of bytes was read
 *  - (-1) if there are any errors, should check errno
 */
int axk_transport_read(axk_transport_handle_t t, char *buffer, int len, int timeout_ms);

/**
 * @brief      Poll the transport until readable or timeout
 *
 * @param[in]  t           The transport handle
 * @param[in]  timeout_ms  The timeout milliseconds (-1 indicates wait forever)
 *
 * @return
 *     - 0      Timeout
 *     - (-1)   If there are any errors, should check errno
 *     - other  The transport can read
 */
int axk_transport_poll_read(axk_transport_handle_t t, int timeout_ms);

/**
 * @brief      Transport write function
 *
 * @param      t           The transport handle
 * @param      buffer      The buffer
 * @param[in]  len         The length
 * @param[in]  timeout_ms  The timeout milliseconds (-1 indicates wait forever)
 *
 * @return
 *  - Number of bytes was written
 *  - (-1) if there are any errors, should check errno
 */
int axk_transport_write(axk_transport_handle_t t, const char *buffer, int len, int timeout_ms);

/**
 * @brief      Poll the transport until writeable or timeout
 *
 * @param[in]  t           The transport handle
 * @param[in]  timeout_ms  The timeout milliseconds (-1 indicates wait forever)
 *
 * @return
 *     - 0      Timeout
 *     - (-1)   If there are any errors, should check errno
 *     - other  The transport can write
 */
int axk_transport_poll_write(axk_transport_handle_t t, int timeout_ms);

/**
 * @brief      Transport close
 *
 * @param      t     The transport handle
 *
 * @return
 * - 0 if ok
 * - (-1) if there are any errors, should check errno
 */
int axk_transport_close(axk_transport_handle_t t);

/**
 * @brief      Get user data context of this transport
 *
 * @param[in]  t        The transport handle
 *
 * @return     The user data context
 */
void *axk_transport_get_context_data(axk_transport_handle_t t);

/**
 * @brief      Get transport handle of underlying protocol
 *             which can access this protocol payload directly
 *             (used for receiving longer msg multiple times)
 *
 * @param[in]  t        The transport handle
 *
 * @return     Payload transport handle
 */
axk_transport_handle_t axk_transport_get_payload_transport_handle(axk_transport_handle_t t);

/**
 * @brief      Set the user context data for this transport
 *
 * @param[in]  t        The transport handle
 * @param      data     The user data context
 *
 * @return
 *     - AXK_OK
 */
axk_err_t axk_transport_set_context_data(axk_transport_handle_t t, void *data);

/**
 * @brief      Set transport functions for the transport handle
 *
 * @param[in]  t            The transport handle
 * @param[in]  _connect     The connect function pointer
 * @param[in]  _read        The read function pointer
 * @param[in]  _write       The write function pointer
 * @param[in]  _close       The close function pointer
 * @param[in]  _poll_read   The poll read function pointer
 * @param[in]  _poll_write  The poll write function pointer
 * @param[in]  _destroy     The destroy function pointer
 *
 * @return
 *     - AXK_OK
 */
axk_err_t axk_transport_set_func(axk_transport_handle_t t,
                             connect_func _connect,
                             io_read_func _read,
                             io_func _write,
                             trans_func _close,
                             poll_func _poll_read,
                             poll_func _poll_write,
                             trans_func _destroy);


/**
 * @brief      Set transport functions for the transport handle
 *
 * @param[in]  t                    The transport handle
 * @param[in]  _connect_async_func  The connect_async function pointer
 *
 * @return
 *     - AXK_OK
 *     - AXK_FAIL
 */
axk_err_t axk_transport_set_async_connect_func(axk_transport_handle_t t, connect_async_func _connect_async_func);

/**
 * @brief      Set parent transport function to the handle
 *
 * @param[in]  t                    The transport handle
 * @param[in]  _parent_transport    The underlying transport getter pointer
 *
 * @return
 *     - AXK_OK
 *     - AXK_FAIL
 */
axk_err_t axk_transport_set_parent_transport_func(axk_transport_handle_t t, payload_transfer_func _parent_transport);

/**
 * @brief      Returns axk_tls error handle.
 *             Warning: The returned pointer is valid only as long as axk_transport_handle_t exists. Once transport
 *             handle gets destroyed, this value (axk_tls_error_handle_t) is freed automatically.
 *
 * @param[in]  A transport handle
 *
 * @return
 *            - valid pointer of axk_error_handle_t
 *            - NULL if invalid transport handle
 */
axk_tls_error_handle_t axk_transport_get_error_handle(axk_transport_handle_t t);

/**
 * @brief      Get and clear last captured socket errno
 *
 * Socket errno is internally stored whenever any of public facing API
 * for reading, writing, polling or connection fails returning negative return code.
 * The error code corraxkonds to the `SO_ERROR` value retrieved from the underlying
 * transport socket using `getsockopt()` API. After reading the captured errno,
 * the internal value is cleared to 0.
 *
 * @param[in] t The transport handle
 *
 * @return
 *   - >=0 Last captured socket errno
 *   - -1  Invalid transport handle or invalid transport's internal error storage
 */
int axk_transport_get_errno(axk_transport_handle_t t);

#ifdef __cplusplus
}
#endif
#endif /* _AXK_TRANSPORT_ */
