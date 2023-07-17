/* 注意：core_sysdep_network_xxx 系列依赖函数是基于posix兼容的网络api实现的，用户应根据实际的网络接口类型进行重新适配 */
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <stddef.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <sys/types.h>
#include <netdb.h>
#include <errno.h>
#include "aiot_state_api.h"
#include "aiot_sysdep_api.h"

// #include " hosal_rng.h "

#include "FreeRTOS.h"
#include "task.h"
#include "semphr.h"

/*
 *  CORE_SYSDEP_MBEDTLS_ENABLED 不是一个用户需要关心的编译开关
 *
 *  大多数情况下, 就保持它如下的设置即可
 *  只有少数时候, SDK的用户关心对接层代码的ROM尺寸, 并且也没有选择用TLS连接服务器
 *  那时才会出现, 将 CORE_SYSDEP_MBEDTLS_ENABLED 宏定义关闭的改动, 以减小对接尺寸
 *
 *  我们不建议去掉 #define CORE_SYSDEP_MBEDTLS_ENABLED 这行代码
 *  虽然物联网平台接收TCP方式的连接, 但我们不推荐这样做, TLS是更安全的通信方式
 *
 */
// #define CORE_SYSDEP_MBEDTLS_ENABLED

#ifdef CORE_SYSDEP_MBEDTLS_ENABLED
#include "mbedtls/net_sockets.h"
#include "mbedtls/ssl.h"
#include "mbedtls/ctr_drbg.h"
#include "mbedtls/debug.h"
#include "mbedtls/platform.h"

typedef struct
{
    mbedtls_net_context net_ctx;
    mbedtls_ssl_context ssl_ctx;
    mbedtls_ssl_config ssl_config;
    mbedtls_x509_crt x509_server_cert;
    mbedtls_x509_crt x509_client_cert;
    mbedtls_pk_context x509_client_pk;
} core_sysdep_mbedtls_t;
#endif /* CORE_SYSDEP_MBEDTLS_ENABLED */

typedef struct
{
    int fd;
    core_sysdep_socket_type_t socket_type;
    aiot_sysdep_network_cred_t *cred;
    char *host;
    uint16_t port;
    uint32_t connect_timeout_ms;
#ifdef CORE_SYSDEP_MBEDTLS_ENABLED
    core_sysdep_psk_t psk;
    core_sysdep_mbedtls_t mbedtls;
#endif
} core_network_handle_t;

#ifdef CORE_SYSDEP_MBEDTLS_ENABLED

static void *_core_mbedtls_calloc(size_t n, size_t size)
{
    void *buf = NULL;

    if (n == 0 || size == 0)
    {
        return NULL;
    }

    /* 此处若使用pvPortMalloc, 在esp8266上有mbedtls内存分配失败问题 */
    buf = malloc(n * size);
    if (NULL == buf)
    {
        return NULL;
    }
    else
    {
        memset(buf, 0, n * size);
    }
    return buf;
}

#endif /* #ifdef CORE_SYSDEP_MBEDTLS_ENABLED */

void *core_sysdep_malloc(uint32_t size, char *name)
{
    return pvPortMalloc(size);
}

void core_sysdep_free(void *ptr)
{
    vPortFree(ptr);
}

uint64_t core_sysdep_time(void)
{
    return (uint64_t)(xTaskGetTickCount() * portTICK_RATE_MS);
}

void core_sysdep_sleep(uint64_t time_ms)
{
    vTaskDelay(pdMS_TO_TICKS(time_ms));
}

void *core_sysdep_network_init(void)
{
    core_network_handle_t *handle = NULL;

    handle = pvPortMalloc(sizeof(core_network_handle_t));
    if (handle == NULL)
    {
        return NULL;
    }
    memset(handle, 0, sizeof(core_network_handle_t));

    return handle;
}

int32_t core_sysdep_network_setopt(void *handle, core_sysdep_network_option_t option, void *data)
{
    core_network_handle_t *network_handle = (core_network_handle_t *)handle;

    if (handle == NULL || data == NULL)
    {
        return STATE_PORT_INPUT_NULL_POINTER;
    }

    if (option >= CORE_SYSDEP_NETWORK_MAX)
    {
        return STATE_PORT_INPUT_OUT_RANGE;
    }

    switch (option)
    {
    case CORE_SYSDEP_NETWORK_SOCKET_TYPE:
    {
        network_handle->socket_type = *(core_sysdep_socket_type_t *)data;
    }
    break;
    case CORE_SYSDEP_NETWORK_HOST:
    {
        network_handle->host = pvPortMalloc(strlen(data) + 1);
        if (network_handle->host == NULL)
        {
            printf("malloc failed\n");
            return STATE_PORT_MALLOC_FAILED;
        }
        memset(network_handle->host, 0, strlen(data) + 1);
        memcpy(network_handle->host, data, strlen(data));
    }
    break;
    case CORE_SYSDEP_NETWORK_PORT:
    {
        network_handle->port = *(uint16_t *)data;
    }
    break;
    case CORE_SYSDEP_NETWORK_CONNECT_TIMEOUT_MS:
    {
        network_handle->connect_timeout_ms = *(uint32_t *)data;
    }
    break;
#ifdef CORE_SYSDEP_MBEDTLS_ENABLED
    case CORE_SYSDEP_NETWORK_CRED:
    {
        network_handle->cred = pvPortMalloc(sizeof(aiot_sysdep_network_cred_t));
        if (network_handle->cred == NULL)
        {
            printf("malloc failed\n");
            return STATE_PORT_MALLOC_FAILED;
        }
        memset(network_handle->cred, 0, sizeof(aiot_sysdep_network_cred_t));
        memcpy(network_handle->cred, data, sizeof(aiot_sysdep_network_cred_t));
    }
    break;
    case CORE_SYSDEP_NETWORK_PSK:
    {
        core_sysdep_psk_t *psk = (core_sysdep_psk_t *)data;
        network_handle->psk.psk_id = pvPortMalloc(strlen(psk->psk_id) + 1);
        if (network_handle->psk.psk_id == NULL)
        {
            printf("malloc failed\n");
            return STATE_PORT_MALLOC_FAILED;
        }
        memset(network_handle->psk.psk_id, 0, strlen(psk->psk_id) + 1);
        memcpy(network_handle->psk.psk_id, psk->psk_id, strlen(psk->psk_id));
        network_handle->psk.psk = pvPortMalloc(strlen(psk->psk) + 1);
        if (network_handle->psk.psk == NULL)
        {
            vPortFree(network_handle->psk.psk_id);
            printf("malloc failed\n");
            return STATE_PORT_MALLOC_FAILED;
        }
        memset(network_handle->psk.psk, 0, strlen(psk->psk) + 1);
        memcpy(network_handle->psk.psk, psk->psk, strlen(psk->psk));
    }
    break;
#endif
    default:
    {
        printf("unknown option\n");
    }
    }

    return STATE_SUCCESS;
}

static int32_t _core_sysdep_network_tcp_establish(core_network_handle_t *network_handle)
{
    int32_t res = STATE_SUCCESS, fd = 0;
    char service[6] = {0};
    struct addrinfo hints;
    struct addrinfo *addrInfoList = NULL, *pos = NULL;

    memset(&hints, 0, sizeof(struct addrinfo));
    hints.ai_family = AF_INET; /* only IPv4 */
    hints.ai_socktype = SOCK_STREAM;
    hints.ai_protocol = IPPROTO_TCP;
    hints.ai_flags = 0;
    sprintf(service, "%u", network_handle->port);

    printf("establish tcp connection with server(host='%s', port=[%u])\n", network_handle->host, network_handle->port);

    res = getaddrinfo(network_handle->host, service, &hints, &addrInfoList);
    if (res != 0)
    {
        printf("getaddrinfo error, errno: %d, host: %s, port: %s\n", errno, network_handle->host, service);
        return STATE_PORT_NETWORK_DNS_FAILED;
    }

    for (pos = addrInfoList; pos != NULL; pos = pos->ai_next)
    {
        if (pos->ai_family != AF_INET)
        {
            printf("socket type error\n");
            res = -1;
            continue;
        }

        fd = socket(pos->ai_family, pos->ai_socktype, pos->ai_protocol);
        if (fd < 0)
        {
            printf("create socket error\n");
            res = -1;
            continue;
        }

        if (connect(fd, pos->ai_addr, pos->ai_addrlen) == 0)
        {
            network_handle->fd = fd;
            res = STATE_SUCCESS;
            break;
        }
        printf("connect error, errno: %d\n", errno);
        close(fd);
    }

    if (res < 0)
    {
        printf("fail to establish tcp\n");
        res = STATE_PORT_NETWORK_CONNECT_FAILED;
    }
    else
    {
        printf("success to establish tcp, fd=%d\n", network_handle->fd);
        res = STATE_SUCCESS;
    }
    freeaddrinfo(addrInfoList);

    return res;
}

#ifdef CORE_SYSDEP_MBEDTLS_ENABLED
static void _port_uint2str(uint16_t input, char *output)
{
    uint8_t i = 0, j = 0;
    char temp[6] = {0};

    do
    {
        temp[i++] = input % 10 + '0';
    } while ((input /= 10) > 0);

    do
    {
        output[--i] = temp[j++];
    } while (i > 0);
}

void core_sysdep_rand(uint8_t *output, uint32_t output_len);
static int _mbedtls_random(void *handle, unsigned char *output, size_t output_len)
{
    core_sysdep_rand(output, output_len);
    return 0;
}

static void _mbedtls_debug(void *ctx, int level, const char *file, int line, const char *str)
{
    ((void)level);
    if (NULL != ctx)
    {
        printf("%s\n", str);
    }
}

static int32_t _core_sysdep_network_mbedtls_establish(core_network_handle_t *network_handle)
{
    int32_t res = 0;
    char port_str[6] = {0};

#if defined(MBEDTLS_DEBUG_C)
    mbedtls_debug_set_threshold(0);
#endif /* #if defined(MBEDTLS_DEBUG_C) */
    mbedtls_net_init(&network_handle->mbedtls.net_ctx);
    mbedtls_ssl_init(&network_handle->mbedtls.ssl_ctx);
    mbedtls_ssl_config_init(&network_handle->mbedtls.ssl_config);
    mbedtls_platform_set_calloc_free(_core_mbedtls_calloc, free);

    if (network_handle->cred->max_tls_fragment == 0)
    {
        printf("invalid max_tls_fragment parameter\n");
        return STATE_PORT_TLS_INVALID_MAX_FRAGMENT;
    }

    printf("establish mbedtls connection with server(host='%s', port=[%u])\n", network_handle->host, network_handle->port);

    _port_uint2str(network_handle->port, port_str);

    if (network_handle->cred->max_tls_fragment <= 512)
    {
        res = mbedtls_ssl_conf_max_frag_len(&network_handle->mbedtls.ssl_config, MBEDTLS_SSL_MAX_FRAG_LEN_512);
    }
    else if (network_handle->cred->max_tls_fragment <= 1024)
    {
        res = mbedtls_ssl_conf_max_frag_len(&network_handle->mbedtls.ssl_config, MBEDTLS_SSL_MAX_FRAG_LEN_1024);
    }
    else if (network_handle->cred->max_tls_fragment <= 2048)
    {
        res = mbedtls_ssl_conf_max_frag_len(&network_handle->mbedtls.ssl_config, MBEDTLS_SSL_MAX_FRAG_LEN_2048);
    }
    else if (network_handle->cred->max_tls_fragment <= 4096)
    {
        res = mbedtls_ssl_conf_max_frag_len(&network_handle->mbedtls.ssl_config, MBEDTLS_SSL_MAX_FRAG_LEN_4096);
    }
    else
    {
        res = mbedtls_ssl_conf_max_frag_len(&network_handle->mbedtls.ssl_config, MBEDTLS_SSL_MAX_FRAG_LEN_NONE);
    }

    if (res < 0)
    {
        printf("mbedtls_ssl_conf_max_frag_len error, res: -0x%04X\n", -res);
        return res;
    }

    res = mbedtls_net_connect(&network_handle->mbedtls.net_ctx, network_handle->host, port_str, MBEDTLS_NET_PROTO_TCP);
    if (res < 0)
    {
        printf("mbedtls_net_connect error, res: -0x%04X\n", -res);
        if (res == MBEDTLS_ERR_NET_UNKNOWN_HOST)
        {
            res = STATE_PORT_NETWORK_DNS_FAILED;
        }
        else if (res == MBEDTLS_ERR_NET_SOCKET_FAILED)
        {
            res = STATE_PORT_TLS_SOCKET_CREATE_FAILED;
        }
        else if (res == MBEDTLS_ERR_NET_CONNECT_FAILED)
        {
            res = STATE_PORT_TLS_SOCKET_CONNECT_FAILED;
        }
        return res;
    }

    res = mbedtls_ssl_config_defaults(&network_handle->mbedtls.ssl_config, MBEDTLS_SSL_IS_CLIENT,
                                      MBEDTLS_SSL_TRANSPORT_STREAM, MBEDTLS_SSL_PRESET_DEFAULT);
    if (res < 0)
    {
        printf("mbedtls_ssl_config_defaults error, res: -0x%04X\n", -res);
        return res;
    }

    mbedtls_ssl_conf_max_version(&network_handle->mbedtls.ssl_config, MBEDTLS_SSL_MAJOR_VERSION_3,
                                 MBEDTLS_SSL_MINOR_VERSION_3);
    mbedtls_ssl_conf_min_version(&network_handle->mbedtls.ssl_config, MBEDTLS_SSL_MAJOR_VERSION_3,
                                 MBEDTLS_SSL_MINOR_VERSION_3);
    mbedtls_ssl_conf_rng(&network_handle->mbedtls.ssl_config, _mbedtls_random, NULL);
    mbedtls_ssl_conf_dbg(&network_handle->mbedtls.ssl_config, _mbedtls_debug, stdout);

    if (network_handle->cred->option == AIOT_SYSDEP_NETWORK_CRED_SVRCERT_CA)
    {
        static const int ciphersuites[1] = {MBEDTLS_TLS_RSA_WITH_AES_256_CBC_SHA256};
        mbedtls_ssl_conf_ciphersuites(&network_handle->mbedtls.ssl_config, ciphersuites);

        if (network_handle->cred->x509_server_cert == NULL && network_handle->cred->x509_server_cert_len == 0)
        {
            printf("invalid x509 server cert\n");
            return STATE_PORT_TLS_INVALID_SERVER_CERT;
        }
        mbedtls_x509_crt_init(&network_handle->mbedtls.x509_server_cert);

        res = mbedtls_x509_crt_parse(&network_handle->mbedtls.x509_server_cert,
                                     (const unsigned char *)network_handle->cred->x509_server_cert, (size_t)network_handle->cred->x509_server_cert_len + 1);
        if (res < 0)
        {
            printf("mbedtls_x509_crt_parse server cert error, res: -0x%04X\n", -res);
            return STATE_PORT_TLS_INVALID_SERVER_CERT;
        }

        if (network_handle->cred->x509_client_cert != NULL && network_handle->cred->x509_client_cert_len > 0 &&
            network_handle->cred->x509_client_privkey != NULL && network_handle->cred->x509_client_privkey_len > 0)
        {
            mbedtls_x509_crt_init(&network_handle->mbedtls.x509_client_cert);
            mbedtls_pk_init(&network_handle->mbedtls.x509_client_pk);
            res = mbedtls_x509_crt_parse(&network_handle->mbedtls.x509_client_cert,
                                         (const unsigned char *)network_handle->cred->x509_client_cert, (size_t)network_handle->cred->x509_client_cert_len + 1);
            if (res < 0)
            {
                printf("mbedtls_x509_crt_parse client cert error, res: -0x%04X\n", -res);
                return STATE_PORT_TLS_INVALID_CLIENT_CERT;
            }
            res = mbedtls_pk_parse_key(&network_handle->mbedtls.x509_client_pk,
                                       (const unsigned char *)network_handle->cred->x509_client_privkey,
                                       (size_t)network_handle->cred->x509_client_privkey_len + 1, NULL, 0);
            if (res < 0)
            {
                printf("mbedtls_pk_parse_key client pk error, res: -0x%04X\n", -res);
                return STATE_PORT_TLS_INVALID_CLIENT_KEY;
            }
            res = mbedtls_ssl_conf_own_cert(&network_handle->mbedtls.ssl_config, &network_handle->mbedtls.x509_client_cert,
                                            &network_handle->mbedtls.x509_client_pk);
            if (res < 0)
            {
                printf("mbedtls_ssl_conf_own_cert error, res: -0x%04X\n", -res);
                return STATE_PORT_TLS_INVALID_CLIENT_CERT;
            }
        }
        mbedtls_ssl_conf_ca_chain(&network_handle->mbedtls.ssl_config, &network_handle->mbedtls.x509_server_cert, NULL);
    }
    else if (network_handle->cred->option == AIOT_SYSDEP_NETWORK_CRED_SVRCERT_PSK)
    {
#if 0
        static const int ciphersuites[1] = {MBEDTLS_TLS_PSK_WITH_AES_128_CBC_SHA};
        res = mbedtls_ssl_conf_psk(&network_handle->mbedtls.ssl_config,
                                   (const unsigned char *)network_handle->psk.psk, (size_t)strlen(network_handle->psk.psk),
                                   (const unsigned char *)network_handle->psk.psk_id, (size_t)strlen(network_handle->psk.psk_id));
        if (res < 0) {
            printf("mbedtls_ssl_conf_psk error, res = -0x%04X\n", -res);
            return STATE_PORT_TLS_CONFIG_PSK_FAILED;
        }

        mbedtls_ssl_conf_ciphersuites(&network_handle->mbedtls.ssl_config, ciphersuites);
#endif
        return STATE_PORT_TLS_CONFIG_PSK_FAILED;
    }
    else
    {
        printf("unsupported security option\n");
        return STATE_PORT_TLS_INVALID_CRED_OPTION;
    }

    res = mbedtls_ssl_setup(&network_handle->mbedtls.ssl_ctx, &network_handle->mbedtls.ssl_config);
    if (res < 0)
    {
        printf("mbedtls_ssl_setup error, res: -0x%04X\n", -res);
        return res;
    }

    mbedtls_ssl_set_bio(&network_handle->mbedtls.ssl_ctx, &network_handle->mbedtls.net_ctx, mbedtls_net_send,
                        mbedtls_net_recv, mbedtls_net_recv_timeout);
    mbedtls_ssl_conf_read_timeout(&network_handle->mbedtls.ssl_config, network_handle->connect_timeout_ms);

    while ((res = mbedtls_ssl_handshake(&network_handle->mbedtls.ssl_ctx)) != 0)
    {
        if ((res != MBEDTLS_ERR_SSL_WANT_READ) && (res != MBEDTLS_ERR_SSL_WANT_WRITE))
        {
            printf("mbedtls_ssl_handshake error, res: -0x%04X\n", -res);
            if (res == MBEDTLS_ERR_SSL_INVALID_RECORD)
            {
                res = STATE_PORT_TLS_INVALID_RECORD;
            }
            else
            {
                res = STATE_PORT_TLS_INVALID_HANDSHAKE;
            }
            return res;
        }
    }

    res = mbedtls_ssl_get_verify_result(&network_handle->mbedtls.ssl_ctx);
    if (res < 0)
    {
        printf("mbedtls_ssl_get_verify_result error, res: -0x%04X\n", -res);
        return res;
    }
    return 0;
}
#endif /* #ifdef CORE_SYSDEP_MBEDTLS_ENABLED */

int32_t core_sysdep_network_establish(void *handle)
{
    core_network_handle_t *network_handle = (core_network_handle_t *)handle;

    if (handle == NULL)
    {
        return STATE_PORT_INPUT_NULL_POINTER;
    }

    if (network_handle->socket_type == CORE_SYSDEP_SOCKET_TCP_CLIENT)
    {
        if (network_handle->host == NULL)
        {
            return STATE_PORT_MISSING_HOST;
        }
        if (network_handle->cred == NULL)
        {
            return _core_sysdep_network_tcp_establish(network_handle);
        }
        else
        {
            if (network_handle->cred->option == AIOT_SYSDEP_NETWORK_CRED_NONE)
            {
                return _core_sysdep_network_tcp_establish(network_handle);
            }
#ifdef CORE_SYSDEP_MBEDTLS_ENABLED
            else
            {
                return _core_sysdep_network_mbedtls_establish(network_handle);
            }
#endif
        }
    }
    else if (network_handle->socket_type == CORE_SYSDEP_SOCKET_TCP_SERVER)
    {
        return STATE_PORT_TCP_SERVER_NOT_IMPLEMENT;
    }
    else if (network_handle->socket_type == CORE_SYSDEP_SOCKET_UDP_CLIENT)
    {
        return STATE_PORT_UDP_CLIENT_NOT_IMPLEMENT;
    }
    else if (network_handle->socket_type == CORE_SYSDEP_SOCKET_UDP_SERVER)
    {
        return STATE_PORT_UDP_SERVER_NOT_IMPLEMENT;
    }

    printf("unknown nwk type or tcp host absent\n");

    return STATE_PORT_NETWORK_UNKNOWN_SOCKET_TYPE;
}

static int32_t _core_sysdep_network_tcp_recv(core_network_handle_t *network_handle, uint8_t *buffer, uint32_t len,
                                             uint32_t timeout_ms)
{
    int res = 0;
    int32_t recv_bytes = 0;
    ssize_t recv_res = 0;
    uint64_t timestart_ms = 0, timenow_ms = 0, timeselect_ms = 0;
    fd_set recv_sets;
    struct timeval timeselect;

    FD_ZERO(&recv_sets);
    FD_SET(network_handle->fd, &recv_sets);

    /* Start Time */
    timestart_ms = core_sysdep_time();
    timenow_ms = timestart_ms;

    do
    {
        timenow_ms = core_sysdep_time();

        if (timenow_ms - timestart_ms >= timenow_ms ||
            timeout_ms - (timenow_ms - timestart_ms) > timeout_ms)
        {
            break;
        }

        timeselect_ms = timeout_ms - (timenow_ms - timestart_ms);
        timeselect.tv_sec = timeselect_ms / 1000;
        timeselect.tv_usec = timeselect_ms % 1000 * 1000;

        res = select(network_handle->fd + 1, &recv_sets, NULL, NULL, &timeselect);
        if (res == 0)
        {
            /* printf("_core_sysdep_network_tcp_recv, nwk select timeout\n"); */
            continue;
        }
        else if (res < 0)
        {
            printf("_core_sysdep_network_tcp_recv, errno: %d\n", errno);
            perror("_core_sysdep_network_tcp_recv, nwk select failed: ");
            return STATE_PORT_NETWORK_SELECT_FAILED;
        }
        else
        {
            if (FD_ISSET(network_handle->fd, &recv_sets))
            {
                recv_res = recv(network_handle->fd, buffer + recv_bytes, len - recv_bytes, 0);
                if (recv_res == 0)
                {
                    printf("_core_sysdep_network_tcp_recv, nwk connection closed\n");
                    return STATE_PORT_NETWORK_RECV_CONNECTION_CLOSED;
                }
                else if (recv_res < 0)
                {
                    printf("_core_sysdep_network_tcp_recv, errno: %d\n", errno);
                    perror("_core_sysdep_network_tcp_recv, nwk recv error: ");
                    if (errno == EINTR)
                    {
                        continue;
                    }
                    return STATE_PORT_NETWORK_RECV_FAILED;
                }
                else
                {
                    recv_bytes += recv_res;
                    /* printf("recv_bytes: %d, len: %d\n",recv_bytes,len); */
                    if (recv_bytes == len)
                    {
                        break;
                    }
                }
            }
        }
    } while (((timenow_ms - timestart_ms) < timeout_ms) && (recv_bytes < len));

    /* printf("%s: recv over\n",__FUNCTION__); */
    return recv_bytes;
}

#ifdef CORE_SYSDEP_MBEDTLS_ENABLED
static int32_t _core_sysdep_network_mbedtls_recv(core_network_handle_t *network_handle, uint8_t *buffer, uint32_t len,
                                                 uint32_t timeout_ms)
{
    int res = 0;
    int32_t recv_bytes = 0;

    mbedtls_ssl_conf_read_timeout(&network_handle->mbedtls.ssl_config, timeout_ms);
    do
    {
        res = mbedtls_ssl_read(&network_handle->mbedtls.ssl_ctx, buffer + recv_bytes, len - recv_bytes);
        if (res < 0)
        {
            if (res == MBEDTLS_ERR_SSL_TIMEOUT)
            {
                break;
            }
            else if (res != MBEDTLS_ERR_SSL_WANT_READ &&
                     res != MBEDTLS_ERR_SSL_WANT_WRITE &&
                     res != MBEDTLS_ERR_SSL_CLIENT_RECONNECT)
            {
                if (recv_bytes == 0)
                {
                    printf("mbedtls_ssl_recv error, res: -0x%04X\n", -res);
                    if (res == MBEDTLS_ERR_SSL_PEER_CLOSE_NOTIFY)
                    {
                        return STATE_PORT_TLS_RECV_CONNECTION_CLOSED;
                    }
                    else if (res == MBEDTLS_ERR_SSL_INVALID_RECORD)
                    {
                        return STATE_PORT_TLS_INVALID_RECORD;
                    }
                    else
                    {
                        return STATE_PORT_TLS_RECV_FAILED;
                    }
                }
                break;
            }
        }
        else if (res == 0)
        {
            break;
        }
        else
        {
            recv_bytes += res;
        }
    } while (recv_bytes < len);

    return recv_bytes;
}
#endif /* #ifdef CORE_SYSDEP_MBEDTLS_ENABLED */

int32_t core_sysdep_network_recv(void *handle, uint8_t *buffer, uint32_t len, uint32_t timeout_ms,
                                 core_sysdep_addr_t *addr)
{
    core_network_handle_t *network_handle = (core_network_handle_t *)handle;

    if (handle == NULL || buffer == NULL)
    {
        return STATE_PORT_INPUT_NULL_POINTER;
    }

    if (len == 0 || timeout_ms == 0)
    {
        return STATE_PORT_INPUT_OUT_RANGE;
    }

    if (network_handle->socket_type == CORE_SYSDEP_SOCKET_TCP_CLIENT)
    {
        if (network_handle->cred == NULL)
        {
            return _core_sysdep_network_tcp_recv(network_handle, buffer, len, timeout_ms);
        }
        else
        {
            if (network_handle->cred->option == AIOT_SYSDEP_NETWORK_CRED_NONE)
            {
                return _core_sysdep_network_tcp_recv(network_handle, buffer, len, timeout_ms);
            }
#ifdef CORE_SYSDEP_MBEDTLS_ENABLED
            else
            {
                return _core_sysdep_network_mbedtls_recv(network_handle, buffer, len, timeout_ms);
            }
#endif
        }
    }
    else if (network_handle->socket_type == CORE_SYSDEP_SOCKET_TCP_SERVER)
    {
        return STATE_PORT_TCP_SERVER_NOT_IMPLEMENT;
    }
    else if (network_handle->socket_type == CORE_SYSDEP_SOCKET_UDP_CLIENT)
    {
        return STATE_PORT_UDP_CLIENT_NOT_IMPLEMENT;
    }
    else if (network_handle->socket_type == CORE_SYSDEP_SOCKET_UDP_SERVER)
    {
        return STATE_PORT_UDP_SERVER_NOT_IMPLEMENT;
    }

    printf("unknown nwk type\n");

    return STATE_PORT_NETWORK_UNKNOWN_SOCKET_TYPE;
}

int32_t _core_sysdep_network_tcp_send(core_network_handle_t *network_handle, uint8_t *buffer, uint32_t len,
                                      uint32_t timeout_ms)
{
    int res = 0;
    int32_t send_bytes = 0;
    ssize_t send_res = 0;
    uint64_t timestart_ms = 0, timenow_ms = 0, timeselect_ms = 0;
    fd_set send_sets;
    struct timeval timeselect;

    FD_ZERO(&send_sets);
    FD_SET(network_handle->fd, &send_sets);

    /* Start Time */
    timestart_ms = core_sysdep_time();
    timenow_ms = timestart_ms;

    do
    {
        timenow_ms = core_sysdep_time();

        if (timenow_ms - timestart_ms >= timenow_ms ||
            timeout_ms - (timenow_ms - timestart_ms) > timeout_ms)
        {
            break;
        }

        timeselect_ms = timeout_ms - (timenow_ms - timestart_ms);
        timeselect.tv_sec = timeselect_ms / 1000;
        timeselect.tv_usec = timeselect_ms % 1000 * 1000;

        res = select(network_handle->fd + 1, NULL, &send_sets, NULL, &timeselect);
        if (res == 0)
        {
            printf("_core_sysdep_network_tcp_send, nwk select timeout\n");
            continue;
        }
        else if (res < 0)
        {
            printf("_core_sysdep_network_tcp_send, errno: %d\n", errno);
            perror("_core_sysdep_network_tcp_send, nwk select failed: ");
            return STATE_PORT_NETWORK_SELECT_FAILED;
        }
        else
        {
            if (FD_ISSET(network_handle->fd, &send_sets))
            {
                send_res = send(network_handle->fd, buffer + send_bytes, len - send_bytes, 0);
                if (send_res == 0)
                {
                    printf("_core_sysdep_network_tcp_send, nwk connection closed\n");
                    return STATE_PORT_NETWORK_SEND_CONNECTION_CLOSED;
                }
                else if (send_res < 0)
                {
                    printf("_core_sysdep_network_tcp_send, errno: %d\n", errno);
                    perror("_core_sysdep_network_tcp_send, nwk recv error: ");
                    if (errno == EINTR)
                    {
                        continue;
                    }
                    return STATE_PORT_NETWORK_SEND_FAILED;
                }
                else
                {
                    send_bytes += send_res;
                    if (send_bytes == len)
                    {
                        break;
                    }
                }
            }
        }
    } while (((timenow_ms - timestart_ms) < timeout_ms) && (send_bytes < len));

    return send_bytes;
}

#ifdef CORE_SYSDEP_MBEDTLS_ENABLED
int32_t _core_sysdep_network_mbedtls_send(core_network_handle_t *network_handle, uint8_t *buffer, uint32_t len,
                                          uint32_t timeout_ms)
{
    int32_t res = 0;
    int32_t send_bytes = 0;
    uint64_t timestart_ms = 0, timenow_ms = 0;
    struct timeval timeout;

    /* timeout */
    timeout.tv_sec = timeout_ms / 1000;
    timeout.tv_usec = (timeout_ms % 1000) * 1000;

    /* Start Time */
    timestart_ms = core_sysdep_time();
    timenow_ms = timestart_ms;

    res = setsockopt(network_handle->mbedtls.net_ctx.fd, SOL_SOCKET, SO_SNDTIMEO, &timeout, sizeof(timeout));
    if (res < 0)
    {
        printf("setsockopt error, errno: %d\r\n", errno);
        return STATE_PORT_TLS_SEND_FAILED;
    }

    do
    {
        timenow_ms = core_sysdep_time();

        if (timenow_ms - timestart_ms >= timenow_ms ||
            timeout_ms - (timenow_ms - timestart_ms) > timeout_ms)
        {
            break;
        }

        res = mbedtls_ssl_write(&network_handle->mbedtls.ssl_ctx, buffer + send_bytes, len - send_bytes);
        if (res < 0)
        {
            if (res != MBEDTLS_ERR_SSL_WANT_READ &&
                res != MBEDTLS_ERR_SSL_WANT_WRITE)
            {
                if (send_bytes == 0)
                {
                    printf("mbedtls_ssl_send error, res: -0x%04X\n", -res);
                    if (res == MBEDTLS_ERR_SSL_PEER_CLOSE_NOTIFY)
                    {
                        return STATE_PORT_TLS_SEND_CONNECTION_CLOSED;
                    }
                    else if (res == MBEDTLS_ERR_SSL_INVALID_RECORD)
                    {
                        return STATE_PORT_TLS_INVALID_RECORD;
                    }
                    else
                    {
                        return STATE_PORT_TLS_SEND_FAILED;
                    }
                }
                break;
            }
        }
        else if (res == 0)
        {
            break;
        }
        else
        {
            send_bytes += res;
        }
    } while (((timenow_ms - timestart_ms) < timeout_ms) && (send_bytes < len));

    return send_bytes;
}
#endif /* #ifdef CORE_SYSDEP_MBEDTLS_ENABLED */

int32_t core_sysdep_network_send(void *handle, uint8_t *buffer, uint32_t len, uint32_t timeout_ms,
                                 core_sysdep_addr_t *addr)
{
    core_network_handle_t *network_handle = (core_network_handle_t *)handle;

    if (handle == NULL || buffer == NULL)
    {
        printf("invalid parameter\n");
        return STATE_PORT_INPUT_NULL_POINTER;
    }
    if (len == 0 || timeout_ms == 0)
    {
        return STATE_PORT_INPUT_OUT_RANGE;
    }

    if (network_handle->socket_type == CORE_SYSDEP_SOCKET_TCP_CLIENT)
    {
        if (network_handle->cred == NULL)
        {
            return _core_sysdep_network_tcp_send(network_handle, buffer, len, timeout_ms);
        }
        else
        {
            if (network_handle->cred->option == AIOT_SYSDEP_NETWORK_CRED_NONE)
            {
                return _core_sysdep_network_tcp_send(network_handle, buffer, len, timeout_ms);
            }
#ifdef CORE_SYSDEP_MBEDTLS_ENABLED
            else
            {
                return _core_sysdep_network_mbedtls_send(network_handle, buffer, len, timeout_ms);
            }
#endif
        }
    }
    else if (network_handle->socket_type == CORE_SYSDEP_SOCKET_TCP_SERVER)
    {
        return STATE_PORT_TCP_SERVER_NOT_IMPLEMENT;
    }
    else if (network_handle->socket_type == CORE_SYSDEP_SOCKET_UDP_CLIENT)
    {
        return STATE_PORT_UDP_CLIENT_NOT_IMPLEMENT;
    }
    else if (network_handle->socket_type == CORE_SYSDEP_SOCKET_UDP_SERVER)
    {
        return STATE_PORT_UDP_SERVER_NOT_IMPLEMENT;
    }

    printf("unknown nwk type\n");

    return STATE_PORT_NETWORK_UNKNOWN_SOCKET_TYPE;
}

static void _core_sysdep_network_tcp_disconnect(core_network_handle_t *network_handle)
{
    shutdown(network_handle->fd, 2);
    close(network_handle->fd);
}

#ifdef CORE_SYSDEP_MBEDTLS_ENABLED
static void _core_sysdep_network_mbedtls_disconnect(core_network_handle_t *network_handle)
{
    mbedtls_ssl_close_notify(&network_handle->mbedtls.ssl_ctx);
    mbedtls_net_free(&network_handle->mbedtls.net_ctx);
    if (network_handle->cred->option == AIOT_SYSDEP_NETWORK_CRED_SVRCERT_CA)
    {
        mbedtls_x509_crt_free(&network_handle->mbedtls.x509_server_cert);
        mbedtls_x509_crt_free(&network_handle->mbedtls.x509_client_cert);
        mbedtls_pk_free(&network_handle->mbedtls.x509_client_pk);
    }
    mbedtls_ssl_free(&network_handle->mbedtls.ssl_ctx);
    mbedtls_ssl_config_free(&network_handle->mbedtls.ssl_config);
}
#endif /* #ifdef CORE_SYSDEP_MBEDTLS_ENABLED */

int32_t core_sysdep_network_deinit(void **handle)
{
    core_network_handle_t *network_handle = NULL;

    if (handle == NULL || *handle == NULL)
    {
        return STATE_PORT_INPUT_NULL_POINTER;
    }

    network_handle = *(core_network_handle_t **)handle;

    /* Shutdown both send and receive operations. */
    if (network_handle->socket_type == 0 && network_handle->host != NULL)
    {
        if (network_handle->cred == NULL)
        {
            _core_sysdep_network_tcp_disconnect(network_handle);
        }
        else
        {
            if (network_handle->cred->option == AIOT_SYSDEP_NETWORK_CRED_NONE)
            {
                _core_sysdep_network_tcp_disconnect(network_handle);
            }
#ifdef CORE_SYSDEP_MBEDTLS_ENABLED
            else
            {
                _core_sysdep_network_mbedtls_disconnect(network_handle);
            }
#endif
        }
    }

    if (network_handle->host != NULL)
    {
        vPortFree(network_handle->host);
        network_handle->host = NULL;
    }
    if (network_handle->cred != NULL)
    {
        vPortFree(network_handle->cred);
        network_handle->cred = NULL;
    }
#ifdef CORE_SYSDEP_MBEDTLS_ENABLED
    if (network_handle->psk.psk_id != NULL)
    {
        vPortFree(network_handle->psk.psk_id);
        network_handle->psk.psk_id = NULL;
    }
    if (network_handle->psk.psk != NULL)
    {
        vPortFree(network_handle->psk.psk);
        network_handle->psk.psk = NULL;
    }
#endif

    vPortFree(network_handle);
    *handle = NULL;

    return 0;
}

void core_sysdep_rand(uint8_t *output, uint32_t output_len)
{
    /* 使用idf提供的硬件随机数生成接口, 仅适用于esp8266和esp32 */
    uint32_t idx = 0, bytes = 0, rand_num = 0;
    uint64_t timestart_ms = core_sysdep_time();

    srand((unsigned int)(timestart_ms) + rand());

    for (idx = 0; idx < output_len;)
    {
        if (output_len - idx < 4)
        {
            bytes = output_len - idx;
        }
        else
        {
            bytes = 4;
        }
        rand_num = rand();
        while (bytes-- > 0)
        {
            output[idx++] = (uint8_t)(rand_num >> bytes * 8);
        }
    }
    // hosal_random_num_read(output, output_len);
}

void *core_sysdep_mutex_init(void)
{
    return xSemaphoreCreateMutex();
}

void core_sysdep_mutex_lock(void *mutex)
{
    xSemaphoreTake((SemaphoreHandle_t)mutex, portMAX_DELAY);
}

void core_sysdep_mutex_unlock(void *mutex)
{
    xSemaphoreGive((SemaphoreHandle_t)mutex);
}

void core_sysdep_mutex_deinit(void **mutex)
{
    if (mutex != NULL || *mutex != NULL)
    {
        vSemaphoreDelete((SemaphoreHandle_t)*mutex);
        *mutex = NULL;
    }
}

aiot_sysdep_portfile_t g_aiot_sysdep_portfile = {
    .core_sysdep_malloc = core_sysdep_malloc,
    .core_sysdep_free = core_sysdep_free,
    .core_sysdep_time = core_sysdep_time,
    .core_sysdep_sleep = core_sysdep_sleep,
    .core_sysdep_network_init = core_sysdep_network_init,
    .core_sysdep_network_setopt = core_sysdep_network_setopt,
    .core_sysdep_network_establish = core_sysdep_network_establish,
    .core_sysdep_network_recv = core_sysdep_network_recv,
    .core_sysdep_network_send = core_sysdep_network_send,
    .core_sysdep_network_deinit = core_sysdep_network_deinit,
    .core_sysdep_rand = core_sysdep_rand,
    .core_sysdep_mutex_init = core_sysdep_mutex_init,
    .core_sysdep_mutex_lock = core_sysdep_mutex_lock,
    .core_sysdep_mutex_unlock = core_sysdep_mutex_unlock,
    .core_sysdep_mutex_deinit = core_sysdep_mutex_deinit,
};
