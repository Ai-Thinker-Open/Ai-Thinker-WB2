/*
 * SPDX-FileCopyrightText: 2019-2021 Axkressif Systems (Shanghai) CO LTD
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>

#include <sys/types.h>
#include <sys/socket.h>
#include <netdb.h>

#include <http_parser.h>
#include "axk_tls_wolfssl.h"
#include "axk_tls_error_capture_internal.h"
#include <errno.h>
#include "axk_log.h"

static unsigned char *global_cacert = NULL;
static unsigned int global_cacert_pem_bytes = 0;
static const char *TAG = "axk-tls-wolfssl";

/* Prototypes for the static functions */
static axk_err_t set_client_config(const char *hostname, size_t hostlen, axk_tls_cfg_t *cfg, axk_tls_t *tls);

#if defined(CONFIG_AXK_TLS_PSK_VERIFICATION)
#include "freertos/semphr.h"
static SemaphoreHandle_t tls_conn_lock;
static inline unsigned int axk_wolfssl_psk_client_cb(WOLFSSL* ssl, const char* hint, char* identity,
        unsigned int id_max_len, unsigned char* key,unsigned int key_max_len);
static axk_err_t axk_wolfssl_set_cipher_list(WOLFSSL_CTX *ctx);
#ifdef WOLFSSL_TLS13
#define PSK_MAX_ID_LEN 128
#else
#define PSK_MAX_ID_LEN 64
#endif
#define PSK_MAX_KEY_LEN 64

static char psk_id_str[PSK_MAX_ID_LEN];
static uint8_t psk_key_array[PSK_MAX_KEY_LEN];
static uint8_t psk_key_max_len = 0;
#endif /* CONFIG_AXK_TLS_PSK_VERIFICATION */

#ifdef CONFIG_AXK_TLS_SERVER
static axk_err_t set_server_config(axk_tls_cfg_server_t *cfg, axk_tls_t *tls);
#endif /* CONFIG_AXK_TLS_SERVER */


/* This function shall return the error message when appropriate log level has been set otherwise this function shall do nothing */
static void wolfssl_print_error_msg(int error)
{
#if (CONFIG_LOG_DEFAULT_LEVEL_DEBUG || CONFIG_LOG_DEFAULT_LEVEL_VERBOSE)
    static char error_buf[100];
    AXK_LOGE(TAG, "(%d) : %s", error, ERR_error_string(error, error_buf));
#endif
}

typedef enum x509_file_type {
    FILE_TYPE_CA_CERT = 0, /* CA certificate to authenticate entity at other end */
    FILE_TYPE_SELF_CERT, /* Self certificate of the entity */
    FILE_TYPE_SELF_KEY, /* Private key in the self cert-key pair */
} x509_file_type_t;

/* Error type conversion utility so that axk-tls read/write API to return negative number on error */
static inline ssize_t axk_tls_convert_wolfssl_err_to_ssize(int wolfssl_error)
{
    switch (wolfssl_error) {
        case WOLFSSL_ERROR_WANT_READ:
            return AXK_TLS_ERR_SSL_WANT_READ;
        case WOLFSSL_ERROR_WANT_WRITE:
            return AXK_TLS_ERR_SSL_WANT_WRITE;
        default:
            // Make sure we return a negative number
            return wolfssl_error>0 ? -wolfssl_error: wolfssl_error;
    }
}

/* Checks whether the certificate provided is in pem format or not */
static axk_err_t axk_load_wolfssl_verify_buffer(axk_tls_t *tls, const unsigned char *cert_buf, unsigned int cert_len, x509_file_type_t type, int *err_ret)
{
    int wolf_fileformat = WOLFSSL_FILETYPE_DEFAULT;
    if (type == FILE_TYPE_SELF_KEY) {
        if (cert_buf[cert_len - 1] == '\0' && strstr( (const char *) cert_buf, "-----BEGIN " )) {
            wolf_fileformat = WOLFSSL_FILETYPE_PEM;
        } else {
            wolf_fileformat = WOLFSSL_FILETYPE_ASN1;
        }
        if ((*err_ret = wolfSSL_CTX_use_PrivateKey_buffer( (WOLFSSL_CTX *)tls->priv_ctx, cert_buf, cert_len, wolf_fileformat)) == WOLFSSL_SUCCESS) {
            return AXK_OK;
        }
        return AXK_FAIL;
    } else {
        if (cert_buf[cert_len - 1] == '\0' && strstr( (const char *) cert_buf, "-----BEGIN CERTIFICATE-----" )) {
            wolf_fileformat = WOLFSSL_FILETYPE_PEM;
        } else {
            wolf_fileformat = WOLFSSL_FILETYPE_ASN1;
        }
        if (type == FILE_TYPE_SELF_CERT) {
            if ((*err_ret = wolfSSL_CTX_use_certificate_buffer( (WOLFSSL_CTX *)tls->priv_ctx, cert_buf, cert_len, wolf_fileformat)) == WOLFSSL_SUCCESS) {
                return AXK_OK;
            }
            return AXK_FAIL;
        } else if (type == FILE_TYPE_CA_CERT) {
            if ((*err_ret = wolfSSL_CTX_load_verify_buffer( (WOLFSSL_CTX *)tls->priv_ctx, cert_buf, cert_len, wolf_fileformat)) == WOLFSSL_SUCCESS) {
                return AXK_OK;
            }
            return AXK_FAIL;
        } else {
            /* Wrong file type provided */
            return AXK_FAIL;
        }
    }
}

axk_err_t axk_create_wolfssl_handle(const char *hostname, size_t hostlen, const void *cfg, axk_tls_t *tls)
{
#ifdef CONFIG_AXK_DEBUG_WOLFSSL
    wolfSSL_Debugging_ON();
#endif

    assert(cfg != NULL);
    assert(tls != NULL);

    axk_err_t axk_ret = AXK_FAIL;
    int ret;

    ret = wolfSSL_Init();
    if (ret != WOLFSSL_SUCCESS) {
        AXK_LOGE(TAG, "Init wolfSSL failed: 0x%04X", ret);
        wolfssl_print_error_msg(ret);
        int err = wolfSSL_get_error( (WOLFSSL *)tls->priv_ssl, ret);
        AXK_INT_EVENT_TRACKER_CAPTURE(tls->error_handle, AXK_TLS_ERR_TYPE_WOLFSSL, err);
        goto exit;
    }

    if (tls->role == AXK_TLS_CLIENT) {
        axk_ret = set_client_config(hostname, hostlen, (axk_tls_cfg_t *)cfg, tls);
        if (axk_ret != AXK_OK) {
            AXK_LOGE(TAG, "Failed to set client configurations, [0x%04X] (%s)", axk_ret, axk_err_to_name(axk_ret));
            goto exit;
        }
    } else if (tls->role == AXK_TLS_SERVER) {
#ifdef CONFIG_AXK_TLS_SERVER
        axk_ret = set_server_config((axk_tls_cfg_server_t *) cfg, tls);
        if (axk_ret != AXK_OK) {
            AXK_LOGE(TAG, "Failed to set server configurations, [0x%04X] (%s)", axk_ret, axk_err_to_name(axk_ret));
            goto exit;
        }
#else
        AXK_LOGE(TAG, "AXK_TLS_SERVER Not enabled in menuconfig");
        goto exit;
#endif
    }
    else {
        AXK_LOGE(TAG, "tls->role is not valid");
        goto exit;
    }

    return AXK_OK;
exit:
    axk_wolfssl_cleanup(tls);
    return axk_ret;
}

static axk_err_t set_client_config(const char *hostname, size_t hostlen, axk_tls_cfg_t *cfg, axk_tls_t *tls)
{
    int ret = WOLFSSL_FAILURE;

#ifdef WOLFSSL_TLS13
    tls->priv_ctx = (void *)wolfSSL_CTX_new(wolfTLSv1_3_client_method());
#else
    tls->priv_ctx = (void *)wolfSSL_CTX_new(wolfTLSv1_2_client_method());
#endif

    if (!tls->priv_ctx) {
        AXK_LOGE(TAG, "Set wolfSSL ctx failed");
        AXK_INT_EVENT_TRACKER_CAPTURE(tls->error_handle, AXK_TLS_ERR_TYPE_WOLFSSL, ret);
        return AXK_ERR_WOLFSSL_CTX_SETUP_FAILED;
    }

    if (cfg->crt_bundle_attach != NULL) {
        AXK_LOGE(TAG,"use_crt_bundle not supported in wolfssl");
        return AXK_FAIL;
    }

    if (cfg->use_global_ca_store == true) {
        if ((axk_load_wolfssl_verify_buffer(tls, global_cacert, global_cacert_pem_bytes, FILE_TYPE_CA_CERT, &ret)) != AXK_OK) {
            int err = wolfSSL_get_error( (WOLFSSL *)tls->priv_ssl, ret);
            AXK_LOGE(TAG, "Error in loading certificate verify buffer, returned %d, error code: %d", ret, err);
            wolfssl_print_error_msg(err);
            return AXK_ERR_WOLFSSL_CERT_VERIFY_SETUP_FAILED;
        }
        wolfSSL_CTX_set_verify( (WOLFSSL_CTX *)tls->priv_ctx, WOLFSSL_VERIFY_PEER, NULL);
    } else if (cfg->cacert_buf != NULL) {
        if ((axk_load_wolfssl_verify_buffer(tls, cfg->cacert_buf, cfg->cacert_bytes, FILE_TYPE_CA_CERT, &ret)) != AXK_OK) {
            int err = wolfSSL_get_error( (WOLFSSL *)tls->priv_ssl, ret);
            AXK_LOGE(TAG, "Error in loading certificate verify buffer, returned %d, error code: %d", ret, err);
            wolfssl_print_error_msg(err);
            return AXK_ERR_WOLFSSL_CERT_VERIFY_SETUP_FAILED;
        }
        wolfSSL_CTX_set_verify( (WOLFSSL_CTX *)tls->priv_ctx, WOLFSSL_VERIFY_PEER, NULL);
    } else if (cfg->psk_hint_key) {
#if defined(CONFIG_AXK_TLS_PSK_VERIFICATION)
        /*** PSK encryption mode is configured only if no certificate supplied and psk pointer not null ***/
        if(cfg->psk_hint_key->key == NULL || cfg->psk_hint_key->hint == NULL || cfg->psk_hint_key->key_size <= 0) {
            AXK_LOGE(TAG, "Please provide appropriate key, keysize and hint to use PSK");
            return AXK_FAIL;
        }
        /* mutex is given back when call back function executes or in case of failure (at cleanup) */
        if ((xSemaphoreTake(tls_conn_lock, 1000/portTICK_PERIOD_MS) != pdTRUE)) {
            AXK_LOGE(TAG, "tls_conn_lock could not be obtained in specified time");
            return -1;
        }
        AXK_LOGI(TAG, "setting psk configurations");
        if((cfg->psk_hint_key->key_size > PSK_MAX_KEY_LEN) || (strlen(cfg->psk_hint_key->hint) > PSK_MAX_ID_LEN)) {
            AXK_LOGE(TAG, "psk key length should be <= %d and identity hint length should be <= %d", PSK_MAX_KEY_LEN, PSK_MAX_ID_LEN);
            return AXK_ERR_INVALID_ARG;
        }
        psk_key_max_len = cfg->psk_hint_key->key_size;
        memset(psk_key_array, 0, sizeof(psk_key_array));
        memset(psk_id_str, 0, sizeof(psk_id_str));
        memcpy(psk_key_array, cfg->psk_hint_key->key, psk_key_max_len);
        memcpy(psk_id_str, cfg->psk_hint_key->hint, strlen(cfg->psk_hint_key->hint));
        wolfSSL_CTX_set_psk_client_callback( (WOLFSSL_CTX *)tls->priv_ctx, axk_wolfssl_psk_client_cb);
        if(axk_wolfssl_set_cipher_list( (WOLFSSL_CTX *)tls->priv_ctx) != AXK_OK) {
            AXK_LOGE(TAG, "error in setting cipher-list");
            return AXK_FAIL;
        }
#else
        AXK_LOGE(TAG, "psk_hint_key configured but not enabled in menuconfig: Please enable AXK_TLS_PSK_VERIFICATION option");
        return AXK_ERR_INVALID_STATE;
#endif
    } else {
#ifdef CONFIG_AXK_TLS_SKIP_SERVER_CERT_VERIFY
        wolfSSL_CTX_set_verify( (WOLFSSL_CTX *)tls->priv_ctx, WOLFSSL_VERIFY_NONE, NULL);
#else
        AXK_LOGE(TAG, "No server verification option set in axk_tls_cfg_t structure. Check axk_tls API reference");
        return AXK_ERR_WOLFSSL_SSL_SETUP_FAILED;
#endif
    }

    if (cfg->clientcert_buf != NULL && cfg->clientkey_buf != NULL) {
        if ((axk_load_wolfssl_verify_buffer(tls,cfg->clientcert_buf, cfg->clientcert_bytes, FILE_TYPE_SELF_CERT, &ret)) != AXK_OK) {
            int err = wolfSSL_get_error( (WOLFSSL *)tls->priv_ssl, ret);
            AXK_LOGE(TAG, "Error in loading certificate verify buffer, returned %d, error code: %d", ret, err);
            wolfssl_print_error_msg(err);
            return AXK_ERR_WOLFSSL_CERT_VERIFY_SETUP_FAILED;
        }
        if ((axk_load_wolfssl_verify_buffer(tls,cfg->clientkey_buf, cfg->clientkey_bytes, FILE_TYPE_SELF_KEY, &ret)) != AXK_OK) {
            int err = wolfSSL_get_error( (WOLFSSL *)tls->priv_ssl, ret);
            AXK_LOGE(TAG, "Error in loading private key verify buffer, returned %d, error code: %d", ret, err);
            wolfssl_print_error_msg(err);
            return AXK_ERR_WOLFSSL_CERT_VERIFY_SETUP_FAILED;
        }
    } else if (cfg->clientcert_buf != NULL || cfg->clientkey_buf != NULL) {
        AXK_LOGE(TAG, "You have to provide both clientcert_buf and clientkey_buf for mutual authentication\n\n");
        return AXK_FAIL;
    }

    tls->priv_ssl =(void *)wolfSSL_new( (WOLFSSL_CTX *)tls->priv_ctx);
    if (!tls->priv_ssl) {
        AXK_LOGE(TAG, "Create wolfSSL failed");
        int err = wolfSSL_get_error( (WOLFSSL *)tls->priv_ssl, ret);
        AXK_INT_EVENT_TRACKER_CAPTURE(tls->error_handle, AXK_TLS_ERR_TYPE_WOLFSSL, err);
        return AXK_ERR_WOLFSSL_SSL_SETUP_FAILED;
    }

    if (!cfg->skip_common_name) {
        char *use_host = NULL;
        if (cfg->common_name != NULL) {
            use_host = strdup(cfg->common_name);
        } else {
            use_host = strndup(hostname, hostlen);
        }
        if (use_host == NULL) {
            return AXK_ERR_NO_MEM;
        }
        /* Hostname set here should match CN in server certificate */
        if ((ret = (wolfSSL_check_domain_name( (WOLFSSL *)tls->priv_ssl, use_host))) != WOLFSSL_SUCCESS) {
            int err = wolfSSL_get_error( (WOLFSSL *)tls->priv_ssl, ret);
            AXK_LOGE(TAG, "wolfSSL_check_domain_name returned %d, error code: %d", ret, err);
            AXK_INT_EVENT_TRACKER_CAPTURE(tls->error_handle, AXK_TLS_ERR_TYPE_WOLFSSL, err);
            free(use_host);
            return AXK_ERR_WOLFSSL_SSL_SET_HOSTNAME_FAILED;
        }
        free(use_host);
    }

    if (cfg->alpn_protos) {
#ifdef CONFIG_WOLFSSL_HAVE_ALPN
        char **alpn_list = (char **)cfg->alpn_protos;
        for (; *alpn_list != NULL; alpn_list ++) {
            AXK_LOGD(TAG, "alpn protocol is %s", *alpn_list);
            if ((ret = wolfSSL_UseALPN( (WOLFSSL *)tls->priv_ssl, *alpn_list, strlen(*alpn_list), WOLFSSL_ALPN_FAILED_ON_MISMATCH)) != WOLFSSL_SUCCESS) {
                int err = wolfSSL_get_error( (WOLFSSL *)tls->priv_ssl, ret);
                AXK_INT_EVENT_TRACKER_CAPTURE(tls->error_handle, AXK_TLS_ERR_TYPE_WOLFSSL, err);
                AXK_LOGE(TAG, "wolfSSL UseALPN failed, returned %d, error code: %d", ret, err);
                wolfssl_print_error_msg(err);
                return AXK_ERR_WOLFSSL_SSL_CONF_ALPN_PROTOCOLS_FAILED;
            }
        }
#else
    AXK_LOGE(TAG, "CONFIG_WOLFSSL_HAVE_ALPN not enabled in menuconfig");
    return AXK_FAIL;
#endif /* CONFIG_WOLFSSL_HAVE_ALPN */
    }

    wolfSSL_set_fd((WOLFSSL *)tls->priv_ssl, tls->sockfd);
    return AXK_OK;
}

#ifdef CONFIG_AXK_TLS_SERVER
static axk_err_t set_server_config(axk_tls_cfg_server_t *cfg, axk_tls_t *tls)
{
    int ret = WOLFSSL_FAILURE;

#ifdef WOLFSSL_TLS13
    tls->priv_ctx = (void *)wolfSSL_CTX_new(wolfTLSv1_3_server_method());
#else
    tls->priv_ctx = (void *)wolfSSL_CTX_new(wolfTLSv1_2_server_method());
#endif

    if (!tls->priv_ctx) {
        AXK_LOGE(TAG, "Set wolfSSL ctx failed");
        return AXK_ERR_WOLFSSL_CTX_SETUP_FAILED;
    }

    if (cfg->cacert_buf != NULL) {
        if ((axk_load_wolfssl_verify_buffer(tls,cfg->cacert_buf, cfg->cacert_bytes, FILE_TYPE_CA_CERT, &ret)) != AXK_OK) {
            int err = wolfSSL_get_error( (WOLFSSL *)tls->priv_ssl, ret);
            AXK_LOGE(TAG, "Error in loading certificate verify buffer, returned %d, error code: %d", ret, err);
            wolfssl_print_error_msg(err);
            return AXK_ERR_WOLFSSL_CERT_VERIFY_SETUP_FAILED;
        }
        wolfSSL_CTX_set_verify( (WOLFSSL_CTX *)tls->priv_ctx, WOLFSSL_VERIFY_PEER | WOLFSSL_VERIFY_FAIL_IF_NO_PEER_CERT, NULL);
        AXK_LOGD(TAG," Verify Client for Mutual Auth");
    } else {
        AXK_LOGD(TAG," Not verifying Client ");
        wolfSSL_CTX_set_verify( (WOLFSSL_CTX *)tls->priv_ctx, WOLFSSL_VERIFY_NONE, NULL);
    }

    if (cfg->servercert_buf != NULL && cfg->serverkey_buf != NULL) {
        if ((axk_load_wolfssl_verify_buffer(tls,cfg->servercert_buf, cfg->servercert_bytes, FILE_TYPE_SELF_CERT, &ret)) != AXK_OK) {
            int err = wolfSSL_get_error( (WOLFSSL *)tls->priv_ssl, ret);
            AXK_LOGE(TAG, "Error in loading certificate verify buffer, returned %d, error code: %d", ret, err);
            wolfssl_print_error_msg(err);
            return AXK_ERR_WOLFSSL_CERT_VERIFY_SETUP_FAILED;
        }
        if ((axk_load_wolfssl_verify_buffer(tls,cfg->serverkey_buf, cfg->serverkey_bytes, FILE_TYPE_SELF_KEY, &ret)) != AXK_OK) {
            int err = wolfSSL_get_error( (WOLFSSL *)tls->priv_ssl, ret);
            AXK_LOGE(TAG, "Error in loading private key verify buffer, returned %d, error code: %d", ret, err);
            wolfssl_print_error_msg(err);
            return AXK_ERR_WOLFSSL_CERT_VERIFY_SETUP_FAILED;
        }
    } else {
        AXK_LOGE(TAG, "You have to provide both servercert_buf and serverkey_buf for https_server");
        return AXK_FAIL;
    }

    tls->priv_ssl =(void *)wolfSSL_new( (WOLFSSL_CTX *)tls->priv_ctx);
    if (!tls->priv_ssl) {
        AXK_LOGE(TAG, "Create wolfSSL failed");
        return AXK_ERR_WOLFSSL_SSL_SETUP_FAILED;
    }

    wolfSSL_set_fd((WOLFSSL *)tls->priv_ssl, tls->sockfd);
    return AXK_OK;
}
#endif

int axk_wolfssl_handshake(axk_tls_t *tls, const axk_tls_cfg_t *cfg)
{
    int ret;
    ret = wolfSSL_connect( (WOLFSSL *)tls->priv_ssl);
    if (ret == WOLFSSL_SUCCESS) {
        tls->conn_state = AXK_TLS_DONE;
        return 1;
    } else {
        int err = wolfSSL_get_error( (WOLFSSL *)tls->priv_ssl, ret);
        if (err != WOLFSSL_ERROR_WANT_READ && err != WOLFSSL_ERROR_WANT_WRITE) {
            AXK_LOGE(TAG, "wolfSSL_connect returned %d, error code: %d", ret, err);
            wolfssl_print_error_msg(err);
            AXK_INT_EVENT_TRACKER_CAPTURE(tls->error_handle, AXK_TLS_ERR_TYPE_WOLFSSL, err);
            AXK_INT_EVENT_TRACKER_CAPTURE(tls->error_handle, AXK_TLS_ERR_TYPE_AXK, AXK_ERR_WOLFSSL_SSL_HANDSHAKE_FAILED);
            if (cfg->cacert_buf != NULL || cfg->use_global_ca_store == true) {
                /* This is to check whether handshake failed due to invalid certificate*/
                axk_wolfssl_verify_certificate(tls);
            }
            tls->conn_state = AXK_TLS_FAIL;
            return -1;
        }
        /* Irraxkective of blocking or non-blocking I/O, we return on getting wolfSSL_want_read
        or wolfSSL_want_write during handshake */
        return 0;
    }
}

ssize_t axk_wolfssl_read(axk_tls_t *tls, char *data, size_t datalen)
{
    ssize_t ret = wolfSSL_read( (WOLFSSL *)tls->priv_ssl, (unsigned char *)data, datalen);
    if (ret < 0) {
        int err = wolfSSL_get_error( (WOLFSSL *)tls->priv_ssl, ret);
        /* peer sent close notify */
        if (err == WOLFSSL_ERROR_ZERO_RETURN) {
            return 0;
        }

        if (ret != WOLFSSL_ERROR_WANT_READ && ret != WOLFSSL_ERROR_WANT_WRITE) {
            AXK_INT_EVENT_TRACKER_CAPTURE(tls->error_handle, AXK_TLS_ERR_TYPE_WOLFSSL, -ret);
            AXK_LOGE(TAG, "read error :%d:", ret);
            wolfssl_print_error_msg(ret);
        }
        return axk_tls_convert_wolfssl_err_to_ssize(ret);
    }
    return ret;
}

ssize_t axk_wolfssl_write(axk_tls_t *tls, const char *data, size_t datalen)
{
    ssize_t ret = wolfSSL_write( (WOLFSSL *)tls->priv_ssl, (unsigned char *) data, datalen);
    if (ret <= 0) {
        int err = wolfSSL_get_error( (WOLFSSL *)tls->priv_ssl, ret);
        if (err != WOLFSSL_ERROR_WANT_READ  && err != WOLFSSL_ERROR_WANT_WRITE) {
            AXK_INT_EVENT_TRACKER_CAPTURE(tls->error_handle, AXK_TLS_ERR_TYPE_WOLFSSL, -err);
            AXK_INT_EVENT_TRACKER_CAPTURE(tls->error_handle, AXK_TLS_ERR_TYPE_AXK, AXK_ERR_WOLFSSL_SSL_WRITE_FAILED);
            AXK_LOGE(TAG, "write error :%d:", err);
            wolfssl_print_error_msg(err);
        }
        return axk_tls_convert_wolfssl_err_to_ssize(ret);
    }
    return ret;
}

void axk_wolfssl_verify_certificate(axk_tls_t *tls)
{
    int flags;
    if ((flags = wolfSSL_get_verify_result( (WOLFSSL *)tls->priv_ssl)) != X509_V_OK) {
        AXK_LOGE(TAG, "Failed to verify peer certificate , returned %d", flags);
        AXK_INT_EVENT_TRACKER_CAPTURE(tls->error_handle, AXK_TLS_ERR_TYPE_WOLFSSL_CERT_FLAGS, flags);
    } else {
        AXK_LOGI(TAG, "Certificate verified.");
    }
}

ssize_t axk_wolfssl_get_bytes_avail(axk_tls_t *tls)
{
    if (!tls) {
        AXK_LOGE(TAG, "empty arg passed to axk_tls_get_bytes_avail()");
        return AXK_FAIL;
    }
    return wolfSSL_pending( (WOLFSSL *)tls->priv_ssl);
}

void axk_wolfssl_conn_delete(axk_tls_t *tls)
{
    if (tls != NULL) {
        axk_wolfssl_cleanup(tls);
    }
}

void axk_wolfssl_cleanup(axk_tls_t *tls)
{
    if (!tls) {
        return;
    }
#ifdef CONFIG_AXK_TLS_PSK_VERIFICATION
    xSemaphoreGive(tls_conn_lock);
#endif /* CONFIG_AXK_TLS_PSK_VERIFICATION */
    wolfSSL_shutdown( (WOLFSSL *)tls->priv_ssl);
    wolfSSL_free( (WOLFSSL *)tls->priv_ssl);
    tls->priv_ssl = NULL;
    wolfSSL_CTX_free( (WOLFSSL_CTX *)tls->priv_ctx);
    tls->priv_ctx = NULL;
    wolfSSL_Cleanup();
}

#ifdef CONFIG_AXK_TLS_SERVER
/**
 * @brief       Create TLS/SSL server session
 */
int axk_wolfssl_server_session_create(axk_tls_cfg_server_t *cfg, int sockfd, axk_tls_t *tls)
{
    if (tls == NULL || cfg == NULL) {
        return -1;
    }
    tls->role = AXK_TLS_SERVER;
    tls->sockfd = sockfd;
    axk_err_t axk_ret = axk_create_wolfssl_handle(NULL, 0, cfg, tls);
    if (axk_ret != AXK_OK) {
        AXK_LOGE(TAG, "create_ssl_handle failed, [0x%04X] (%s)", axk_ret, axk_err_to_name(axk_ret));
        AXK_INT_EVENT_TRACKER_CAPTURE(tls->error_handle, AXK_TLS_ERR_TYPE_AXK, axk_ret);
        tls->conn_state = AXK_TLS_FAIL;
        return -1;
    }
    tls->read = axk_wolfssl_read;
    tls->write = axk_wolfssl_write;
    int ret;
    while ((ret = wolfSSL_accept((WOLFSSL *)tls->priv_ssl)) != WOLFSSL_SUCCESS) {
        int err = wolfSSL_get_error((WOLFSSL *)tls->priv_ssl, ret);
        if (err != WOLFSSL_ERROR_WANT_READ && ret != WOLFSSL_ERROR_WANT_WRITE) {
            AXK_INT_EVENT_TRACKER_CAPTURE(tls->error_handle, AXK_TLS_ERR_TYPE_WOLFSSL, err);
            AXK_LOGE(TAG, "wolfSSL_accept returned %d, error code: %d", ret, err);
            wolfssl_print_error_msg(err);
            tls->conn_state = AXK_TLS_FAIL;
            return -1;
        }
    }
    return 0;
}

/**
 * @brief       Close the server side TLS/SSL connection and free any allocated resources.
 */
void axk_wolfssl_server_session_delete(axk_tls_t *tls)
{
    if (tls != NULL) {
        axk_wolfssl_cleanup(tls);
        axk_tls_internal_event_tracker_destroy(tls->error_handle);
        free(tls);
    }
}
#endif /* CONFIG_AXK_TLS_SERVER */

axk_err_t axk_wolfssl_init_global_ca_store(void)
{
    /* This function is just to provide consistancy between function calls of axk_tls.h and wolfssl */
    return AXK_OK;
}

axk_err_t axk_wolfssl_set_global_ca_store(const unsigned char *cacert_pem_buf, const unsigned int cacert_pem_bytes)
{
    if (cacert_pem_buf == NULL) {
        AXK_LOGE(TAG, "cacert_pem_buf is null");
        return AXK_ERR_INVALID_ARG;
    }
    if (global_cacert != NULL) {
        axk_wolfssl_free_global_ca_store();
    }

    global_cacert = (unsigned char *)strndup((const char *)cacert_pem_buf, cacert_pem_bytes);
    if (!global_cacert) {
        return AXK_FAIL;
    }

    global_cacert_pem_bytes  = cacert_pem_bytes;

    return AXK_OK;
}

void axk_wolfssl_free_global_ca_store(void)
{
    if (global_cacert) {
        free(global_cacert);
        global_cacert = NULL;
        global_cacert_pem_bytes = 0;
    }
}

#if defined(CONFIG_AXK_TLS_PSK_VERIFICATION)
static axk_err_t axk_wolfssl_set_cipher_list(WOLFSSL_CTX *ctx)
{
    const char *defaultCipherList;
    int ret;
#if defined(HAVE_AESGCM) && !defined(NO_DH)
#ifdef WOLFSSL_TLS13
    defaultCipherList = "DHE-PSK-AES128-GCM-SHA256:"
                                    "TLS13-AES128-GCM-SHA256";
#else
    defaultCipherList = "DHE-PSK-AES128-GCM-SHA256";
#endif
#elif defined(HAVE_NULL_CIPHER)
    defaultCipherList = "PSK-NULL-SHA256";
#else
    defaultCipherList = "PSK-AES128-CBC-SHA256";
#endif
    AXK_LOGD(TAG, "cipher list is %s", defaultCipherList);
    if ((ret = wolfSSL_CTX_set_cipher_list(ctx,defaultCipherList)) != WOLFSSL_SUCCESS) {
        wolfSSL_CTX_free(ctx);
        int err = wolfSSL_get_error( (WOLFSSL *)tls->priv_ssl, ret);
        AXK_LOGE(TAG, "can't set cipher list, returned %d, error code: %d", ret, err);
        wolfssl_print_error_msg(err);
        return AXK_FAIL;
    }
    return AXK_OK;
}

/* initialize the mutex before app_main() when using PSK */
static void __attribute__((constructor))
axkt_tls_wolfssl_init_conn_lock (void)
{
    if ((tls_conn_lock = xSemaphoreCreateMutex()) == NULL) {
        AXK_EARLY_LOGE(TAG, "mutex for tls psk connection could not be created");
    }
}

/* Some callback functions required by PSK */
static inline unsigned int axk_wolfssl_psk_client_cb(WOLFSSL* ssl, const char* hint,
        char* identity, unsigned int id_max_len, unsigned char* key,
        unsigned int key_max_len)
{
    (void)key_max_len;

    /* see internal.h MAX_PSK_ID_LEN for PSK identity limit */
    memcpy(identity, psk_id_str, id_max_len);
    for(int count = 0; count < psk_key_max_len; count ++) {
         key[count] = psk_key_array[count];
    }
    xSemaphoreGive(tls_conn_lock);
    return psk_key_max_len;
    /* return length of key in octets or 0 or for error */
}
#endif /* CONFIG_AXK_TLS_PSK_VERIFICATION */
