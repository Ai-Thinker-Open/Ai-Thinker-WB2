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

#ifndef _AXK_TRANSPORT_SSL_H_
#define _AXK_TRANSPORT_SSL_H_

#include "axk_transport.h"
#include "axk_tls.h"

#ifdef __cplusplus
extern "C" {
#endif


/**
 * @brief       Create new SSL transport, the transport handle must be release axk_transport_destroy callback
 *
 * @return      the allocated axk_transport_handle_t, or NULL if the handle can not be allocated
 */
axk_transport_handle_t axk_transport_ssl_init(void);

/**
 * @brief      Set SSL certificate data (as PEM format).
 *             Note that, this function stores the pointer to data, rather than making a copy.
 *             So this data must remain valid until after the connection is cleaned up
 *
 * @param      t     ssl transport
 * @param[in]  data  The pem data
 * @param[in]  len   The length
 */
void axk_transport_ssl_set_cert_data(axk_transport_handle_t t, const char *data, int len);

/**
 * @brief      Set SSL certificate data (as DER format).
 *             Note that, this function stores the pointer to data, rather than making a copy.
 *             So this data must remain valid until after the connection is cleaned up
 *
 * @param      t     ssl transport
 * @param[in]  data  The der data
 * @param[in]  len   The length
 */
void axk_transport_ssl_set_cert_data_der(axk_transport_handle_t t, const char *data, int len);

/**
 * @brief      Enable the use of certification bundle for server verfication for
 *             an SSL connection.
 *             It must be first enabled in menuconfig.
 *
 * @param      t    ssl transport
 * @param[in]  crt_bundle_attach    Function pointer to axk_crt_bundle_attach
 */
void axk_transport_ssl_crt_bundle_attach(axk_transport_handle_t t, axk_err_t ((*crt_bundle_attach)(void *conf)));

/**
 * @brief      Enable global CA store for SSL connection
 *
 * @param      t    ssl transport
 */
void axk_transport_ssl_enable_global_ca_store(axk_transport_handle_t t);

/**
 * @brief      Set SSL client certificate data for mutual authentication (as PEM format).
 *             Note that, this function stores the pointer to data, rather than making a copy.
 *             So this data must remain valid until after the connection is cleaned up
 *
 * @param      t     ssl transport
 * @param[in]  data  The pem data
 * @param[in]  len   The length
 */
void axk_transport_ssl_set_client_cert_data(axk_transport_handle_t t, const char *data, int len);

/**
 * @brief      Set SSL client certificate data for mutual authentication (as DER format).
 *             Note that, this function stores the pointer to data, rather than making a copy.
 *             So this data must remain valid until after the connection is cleaned up
 *
 * @param      t     ssl transport
 * @param[in]  data  The der data
 * @param[in]  len   The length
 */
void axk_transport_ssl_set_client_cert_data_der(axk_transport_handle_t t, const char *data, int len);

/**
 * @brief      Set SSL client key data for mutual authentication (as PEM format).
 *             Note that, this function stores the pointer to data, rather than making a copy.
 *             So this data must remain valid until after the connection is cleaned up
 *
 * @param      t     ssl transport
 * @param[in]  data  The pem data
 * @param[in]  len   The length
 */
void axk_transport_ssl_set_client_key_data(axk_transport_handle_t t, const char *data, int len);

/**
 * @brief      Set SSL client key password if the key is password protected. The configured
 *             password is passed to the underlying TLS stack to decrypt the client key
 *
 * @param      t     ssl transport
 * @param[in]  password  Pointer to the password
 * @param[in]  password_len   Password length
 */
void axk_transport_ssl_set_client_key_password(axk_transport_handle_t t, const char *password, int password_len);

/**
 * @brief      Set SSL client key data for mutual authentication (as DER format).
 *             Note that, this function stores the pointer to data, rather than making a copy.
 *             So this data must remain valid until after the connection is cleaned up
 *
 * @param      t     ssl transport
 * @param[in]  data  The der data
 * @param[in]  len   The length
 */
void axk_transport_ssl_set_client_key_data_der(axk_transport_handle_t t, const char *data, int len);

/**
 * @brief      Set the list of supported application protocols to be used with ALPN.
 *             Note that, this function stores the pointer to data, rather than making a copy.
 *             So this data must remain valid until after the connection is cleaned up
 *
 * @param      t            ssl transport
 * @param[in]  alpn_porot   The list of ALPN protocols, the last entry must be NULL
 */
void axk_transport_ssl_set_alpn_protocol(axk_transport_handle_t t, const char **alpn_protos);

/**
 * @brief      Skip validation of certificate's common name field
 *
 * @note       Skipping CN validation is not recommended
 *
 * @param      t     ssl transport
 */
void axk_transport_ssl_skip_common_name_check(axk_transport_handle_t t);

/**
 * @brief      Set the ssl context to use secure element (atecc608a) for client(device) private key and certificate
 *
 * @note       Recommended to be used with BL602(which has inbuilt ATECC608A a.k.a Secure Element)
 *
 * @param      t     ssl transport
 */
void axk_transport_ssl_use_secure_element(axk_transport_handle_t t);

/**
 * @brief      Set the ds_data handle in ssl context.(used for the digital signature operation)
 *
 * @param      t        ssl transport
 *             ds_data  the handle for ds data params
 */
void axk_transport_ssl_set_ds_data(axk_transport_handle_t t, void *ds_data);

/**
 * @brief      Set PSK key and hint for PSK server/client verification in axk-tls component.
 *             Important notes:
 *             - This function stores the pointer to data, rather than making a copy.
 *             So this data must remain valid until after the connection is cleaned up
 *             - AXK_TLS_PSK_VERIFICATION config option must be enabled in menuconfig
 *             - certificate verification takes priority so it must not be configured
 *             to enable PSK method.
 *
 * @param      t             ssl transport
 * @param[in]  psk_hint_key  psk key and hint structure defined in axk_tls.h
 */
void axk_transport_ssl_set_psk_key_hint(axk_transport_handle_t t, const psk_hint_key_t* psk_hint_key);

/**
 * @brief      Set keep-alive status in current ssl context
 *
 * @param[in]  t               ssl transport
 * @param[in]  keep_alive_cfg  The handle for keep-alive configuration
 */
void axk_transport_ssl_set_keep_alive(axk_transport_handle_t t, axk_transport_keep_alive_t *keep_alive_cfg);

/**
 * @brief      Set name of interface that socket can be binded on
 *             So the data can transport on this interface
 *
 * @param[in]  t        The transport handle
 * @param[in]  if_name  The interface name
 */
void axk_transport_ssl_set_interface_name(axk_transport_handle_t t, struct ifreq *if_name);

#ifdef __cplusplus
}
#endif
#endif /* _AXK_TRANSPORT_SSL_H_ */
