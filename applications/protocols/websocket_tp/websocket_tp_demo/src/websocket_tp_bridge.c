/**
 * @file websocket_tp_bridge.c
 * @brief UART <-> WebSocket 透传（参考 bl602_at 与 SDK 中 MQTT over WSS：axk_transport + transport_ws + TLS）
 */

#include "websocket_tp_bridge.h"
#include "websocket_tp_config.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>

#if WEBSOCKET_TP_TLS_VERIFY
/* 校验开启时 PEM 必须为真实证书内容（占位或空字符串无法通过 mbedTLS CA 载入）*/
_Static_assert(sizeof(WEBSOCKET_TP_TLS_CA_CERT_PEM) >= 920U,
               "Define WEBSOCKET_TP_TLS_CA_CERT_PEM PEM string or disable WEBSOCKET_TP_TLS_VERIFY");
#endif

#include <FreeRTOS.h>
#include <task.h>

#include <blog.h>
#include <http_parser.h>
#include <hosal_uart.h>

#include "axk_transport.h"
#include "axk_transport_ssl.h"
#include "axk_transport_tcp.h"
#include "axk_transport_ws.h"

#include <aos/kernel.h>

#define TAG_WS_TP "ws_tp"

static void teardown_wss_stack(axk_transport_handle_t trans, axk_transport_list_handle_t list,
                               axk_transport_handle_t stack_parent)
{
    if (trans != NULL) {
        axk_transport_close(trans);
    }
    if (list != NULL) {
        axk_transport_list_destroy(list);
    }
    if (stack_parent != NULL) {
        axk_transport_destroy(stack_parent);
    }
}

typedef struct {
    char *scheme;
    char *host;
    char *path;
    int port;
} ws_tp_parsed_uri_t;

static hosal_uart_dev_t s_uart;
static uint8_t s_uart_inited;
static TaskHandle_t s_ws_tp_task;

static char *dup_field(const char *uri, const struct http_parser_url *pu, enum http_parser_url_fields f)
{
    int ln = pu->field_data[f].len;
    if (ln <= 0) {
        return NULL;
    }
    char *out = malloc((size_t)ln + 1);
    if (out == NULL) {
        return NULL;
    }
    memcpy(out, uri + pu->field_data[f].off, (size_t)ln);
    out[ln] = '\0';
    return out;
}

static void free_parsed(ws_tp_parsed_uri_t *u)
{
    if (u == NULL) {
        return;
    }
    free(u->scheme);
    free(u->host);
    free(u->path);
    memset(u, 0, sizeof(*u));
}

static int parse_uri_into(const char *uri, ws_tp_parsed_uri_t *out)
{
    struct http_parser_url pu;

    memset(&pu, 0, sizeof(pu));
    memset(out, 0, sizeof(*out));

    int st = http_parser_parse_url(uri, strlen(uri), 0, &pu);
    if (st != 0) {
        blog_error("[%s] bad URL parse: %s", TAG_WS_TP, uri);
        return -1;
    }

    out->scheme = dup_field(uri, &pu, UF_SCHEMA);
    out->host   = dup_field(uri, &pu, UF_HOST);
    if (!out->scheme || !out->host) {
        blog_error("[%s] URL needs scheme/host: %s", TAG_WS_TP, uri);
        return -1;
    }

    /* path + optional query — 对齐 axk_mqtt_client_set_uri */
    if (pu.field_data[UF_PATH].len || pu.field_data[UF_QUERY].len) {
        if (pu.field_data[UF_QUERY].len == 0) {
            if (asprintf(&out->path, "%.*s", pu.field_data[UF_PATH].len,
                         uri + pu.field_data[UF_PATH].off) < 0) {
                out->path = NULL;
            }
        } else if (pu.field_data[UF_PATH].len == 0) {
            if (asprintf(&out->path, "/?%.*s", pu.field_data[UF_QUERY].len,
                         uri + pu.field_data[UF_QUERY].off) < 0) {
                out->path = NULL;
            }
        } else {
            if (asprintf(&out->path, "%.*s?%.*s", pu.field_data[UF_PATH].len,
                         uri + pu.field_data[UF_PATH].off, pu.field_data[UF_QUERY].len,
                         uri + pu.field_data[UF_QUERY].off) < 0) {
                out->path = NULL;
            }
        }
        if (!out->path) {
            blog_error("[%s] OOM path", TAG_WS_TP);
            return -1;
        }
    } else {
        out->path = strdup("/");
        if (!out->path) {
            return -1;
        }
    }

    if (pu.field_data[UF_PORT].len > 0) {
        out->port = (int)strtol(uri + pu.field_data[UF_PORT].off, NULL, 10);
    } else {
        out->port = 0;
    }

    return 0;
}

/**
 * WS 外层 axk_transport 销毁时不会自动释放其 parent（SSL/TCP）。
 * session 结束时需额外 axk_transport_destroy(stack_parent)。
 */
static axk_transport_list_handle_t build_transport_list(ws_tp_parsed_uri_t *u,
                                                         axk_transport_handle_t *stack_parent_out)
{
    axk_transport_list_handle_t list = axk_transport_list_init();

    if (!list) {
        return NULL;
    }
    *stack_parent_out = NULL;

    if (strcasecmp(u->scheme, "wss") == 0) {
        axk_transport_handle_t ssl = axk_transport_ssl_init();
        if (!ssl) {
            goto fail;
        }
        axk_transport_set_default_port(ssl, 443);

#if WEBSOCKET_TP_TLS_VERIFY
        /* axk_transport_ssl_set_cert_data 内部会令 cacert_pem_bytes = len+1（含 PEM 末尾 \\0） */
        axk_transport_ssl_set_cert_data(ssl, WEBSOCKET_TP_TLS_CA_CERT_PEM,
                                        (int)strlen(WEBSOCKET_TP_TLS_CA_CERT_PEM));
#else
        {
            size_t ca_len = strlen(WEBSOCKET_TP_TLS_CA_CERT_PEM);
            if (ca_len > (size_t)0) {
                axk_transport_ssl_set_cert_data(ssl, WEBSOCKET_TP_TLS_CA_CERT_PEM, (int)ca_len);
            }
        }
#endif
#if WEBSOCKET_TP_TLS_SKIP_COMMON_NAME_CHECK
        axk_transport_ssl_skip_common_name_check(ssl);
#endif

        axk_transport_handle_t wss = axk_transport_ws_init(ssl);
        if (!wss) {
            axk_transport_destroy(ssl);
            goto fail;
        }
        axk_transport_set_default_port(wss, 443);
        axk_transport_ws_set_path(wss, u->path);
        axk_transport_list_add(list, wss, "wss");
        *stack_parent_out = ssl;
    } else if (strcasecmp(u->scheme, "ws") == 0) {
        axk_transport_handle_t tcp = axk_transport_tcp_init();
        if (!tcp) {
            goto fail;
        }
        axk_transport_set_default_port(tcp, 80);
        axk_transport_handle_t ws = axk_transport_ws_init(tcp);
        if (!ws) {
            axk_transport_destroy(tcp);
            goto fail;
        }
        axk_transport_set_default_port(ws, 80);
        axk_transport_ws_set_path(ws, u->path);
        axk_transport_list_add(list, ws, "ws");
        *stack_parent_out = tcp;
    } else {
        blog_error("[%s] unsupported scheme %s (use ws or wss)", TAG_WS_TP, u->scheme);
        goto fail;
    }

    return list;

fail:
    axk_transport_list_destroy(list);
    return NULL;
}

static int uart_setup(void)
{
    if (s_uart_inited) {
        return 0;
    }

    memset(&s_uart, 0, sizeof(s_uart));
    s_uart.config.uart_id        = WEBSOCKET_TP_UART_ID;
    s_uart.config.tx_pin         = WEBSOCKET_TP_UART_TX_PIN;
    s_uart.config.rx_pin         = WEBSOCKET_TP_UART_RX_PIN;
    s_uart.config.cts_pin        = 255;
    s_uart.config.rts_pin        = 255;
    s_uart.config.baud_rate      = WEBSOCKET_TP_UART_BAUD;
    s_uart.config.data_width     = HOSAL_DATA_WIDTH_8BIT;
    s_uart.config.parity         = HOSAL_NO_PARITY;
    s_uart.config.stop_bits      = HOSAL_STOP_BITS_1;
    s_uart.config.flow_control   = HOSAL_FLOW_CONTROL_DISABLED;
    s_uart.config.mode           = HOSAL_UART_MODE_POLL;

    if (hosal_uart_init(&s_uart) != 0) {
        blog_error("[%s] uart%d init fail", TAG_WS_TP, WEBSOCKET_TP_UART_ID);
        return -1;
    }

    s_uart_inited = 1;
    blog_info("[%s] UART%d %u baud TX=%u RX=%u", TAG_WS_TP, WEBSOCKET_TP_UART_ID,
              (unsigned)WEBSOCKET_TP_UART_BAUD, (unsigned)WEBSOCKET_TP_UART_TX_PIN,
              (unsigned)WEBSOCKET_TP_UART_RX_PIN);
    return 0;
}

static void run_one_session(ws_tp_parsed_uri_t *u)
{
    axk_transport_handle_t stack_parent = NULL;
    axk_transport_handle_t trans = NULL;
    axk_transport_list_handle_t list = build_transport_list(u, &stack_parent);

    if (!list) {
        return;
    }

    trans = axk_transport_list_get_transport(list, u->scheme);
    if (!trans) {
        blog_error("[%s] no transport for scheme %s", TAG_WS_TP, u->scheme);
        teardown_wss_stack(NULL, list, stack_parent);
        return;
    }

    int port = u->port;
    if (port <= 0) {
        port = axk_transport_get_default_port(trans);
    }

    blog_info("[%s] connect %s://%s:%d%s", TAG_WS_TP, u->scheme, u->host, port, u->path);

    if (axk_transport_connect(trans, u->host, port, WEBSOCKET_TP_TIMEOUT_MS) < 0) {
        blog_warn("[%s] connect failed (see axk_tls/tcp_transport logs)", TAG_WS_TP);
        teardown_wss_stack(trans, list, stack_parent);
        return;
    }

    static uint8_t io_buf[WEBSOCKET_TP_BUFFER_SIZE];
    uint64_t last_activity_ms = (uint64_t)aos_now_ms();
    uint64_t last_ping_ms     = last_activity_ms;

    blog_info("[%s] session up, transparent bridge running", TAG_WS_TP);

    while (1) {
        uint64_t now = (uint64_t)aos_now_ms();

        /* UART -> WebSocket (binary) */
        int nread = hosal_uart_receive(&s_uart, io_buf, sizeof(io_buf));
        if (nread > 0) {
            last_activity_ms = now;
            int wn = axk_transport_write(trans, (const char *)io_buf, nread, WEBSOCKET_TP_TIMEOUT_MS);
            if (wn <= 0) {
                blog_warn("[%s] ws write %d, stop session", TAG_WS_TP, wn);
                break;
            }
        }

        /* WebSocket -> UART */
        int rr = axk_transport_read(trans, (char *)io_buf, (int)sizeof(io_buf), 20);
        if (rr > 0) {
            last_activity_ms = now;
            if (hosal_uart_send(&s_uart, io_buf, (uint32_t)rr) != (uint32_t)rr) {
                blog_warn("[%s] uart send incomplete", TAG_WS_TP);
            }
        } else if (rr < 0) {
            blog_warn("[%s] ws read err, stop session", TAG_WS_TP);
            break;
        }

        now = (uint64_t)aos_now_ms();

        /* 保活：参考 transport_ws 约定 — len==0 的 write 发 PING */
        if (WEBSOCKET_TP_KEEPALIVE_MS > 0
            && (now - last_activity_ms) >= (uint64_t)WEBSOCKET_TP_KEEPALIVE_MS
            && (now - last_ping_ms) >= (uint64_t)WEBSOCKET_TP_KEEPALIVE_MS) {
            if (axk_transport_write(trans, NULL, 0, WEBSOCKET_TP_TIMEOUT_MS) <= 0) {
                blog_warn("[%s] ping fail, stop session", TAG_WS_TP);
                break;
            }
            last_ping_ms = now;
            last_activity_ms = now;
        }

        if (nread == 0 && rr == 0) {
            taskYIELD();
        }
    }

    teardown_wss_stack(trans, list, stack_parent);
}

static void websocket_tp_task(void *arg)
{
    (void)arg;

    if (uart_setup() != 0) {
        vTaskDelete(NULL);
        return;
    }

    ws_tp_parsed_uri_t u;
    memset(&u, 0, sizeof(u));

    for (;;) {
        if (parse_uri_into(WEBSOCKET_TP_URL, &u) != 0) {
            vTaskDelay(pdMS_TO_TICKS(WEBSOCKET_TP_RECONNECT_MS));
            continue;
        }

        run_one_session(&u);
        free_parsed(&u);

        blog_info("[%s] reconnect in %d ms", TAG_WS_TP, WEBSOCKET_TP_RECONNECT_MS);
        vTaskDelay(pdMS_TO_TICKS(WEBSOCKET_TP_RECONNECT_MS));
    }
}

void websocket_tp_bridge_start(void)
{
    if (s_ws_tp_task != NULL) {
        return;
    }

    BaseType_t ok = xTaskCreate(websocket_tp_task, "ws_tp", WEBSOCKET_TP_TASK_STACK_WORDS, NULL,
                                WEBSOCKET_TP_TASK_PRIORITY, &s_ws_tp_task);
    if (ok != pdPASS) {
        blog_error("[%s] xTaskCreate failed", TAG_WS_TP);
        s_ws_tp_task = NULL;
    }
}
