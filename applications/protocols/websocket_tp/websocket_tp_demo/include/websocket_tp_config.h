/**
 * @file websocket_tp_config.h
 * @brief WebSocket (WSS/WS) 透传可配置参数（宏）
 *
 * 修改本文件中的宏即可调整连接与缓冲，无需改业务逻辑。
 * 注意：WEBSOCKET_TP_BUFFER_SIZE 须与组件 bouffalo.mk 中的 CONFIG_WS_BUFFER_SIZE 保持一致
 * （WebSocket 传输层单帧缓冲由 CONFIG_WS_BUFFER_SIZE 决定）。
 */

#ifndef WEBSOCKET_TP_CONFIG_H
#define WEBSOCKET_TP_CONFIG_H

#include "websocket_tp_tls_ca_isrg_root_x1.inc.h"

/** 完整 WebSocket URL，须带 scheme：wss:// 或 ws:// */
#ifndef WEBSOCKET_TP_URL
#define WEBSOCKET_TP_URL "wss://ws.qrwash.com.tr/ws"
#endif

/*
 * 默认与 JSON 对齐（秒）：
 * {"url":"wss://ws.qrwash.com.tr/ws","keepalive_s":30,"timeout_s":120,"buffer_size":4096}
 *
 * 可直接改 WEBSOCKET_TP_KEEPALIVE_S / WEBSOCKET_TP_TIMEOUT_S；
 * 若需非整数秒或与子秒精度，可在包含本头文件之前定义 WEBSOCKET_TP_KEEPALIVE_MS /
 * WEBSOCKET_TP_TIMEOUT_MS（毫秒），二者优先级高于 *_S。
 */

/** 空闲超过该秒数且无收发则发送 WebSocket PING（刷新计时见 bridge 逻辑） */
#ifndef WEBSOCKET_TP_KEEPALIVE_S
#define WEBSOCKET_TP_KEEPALIVE_S 30u
#endif

/** TCP/TLS/WebSocket 单次 connect/read/write/ping 超时（秒），传入 SDK 时会换算为毫秒 */
#ifndef WEBSOCKET_TP_TIMEOUT_S
#define WEBSOCKET_TP_TIMEOUT_S 120u
#endif

#ifndef WEBSOCKET_TP_KEEPALIVE_MS
#define WEBSOCKET_TP_KEEPALIVE_MS ((unsigned)(WEBSOCKET_TP_KEEPALIVE_S) * 1000u)
#endif

#ifndef WEBSOCKET_TP_TIMEOUT_MS
#define WEBSOCKET_TP_TIMEOUT_MS ((unsigned)(WEBSOCKET_TP_TIMEOUT_S) * 1000u)
#endif

/** 单方向一次读写的最大字节数（UART 与 WebSocket 共用该上限） */
#ifndef WEBSOCKET_TP_BUFFER_SIZE
#define WEBSOCKET_TP_BUFFER_SIZE 4096
#endif

#if (WEBSOCKET_TP_BUFFER_SIZE < 32)
#error WEBSOCKET_TP_BUFFER_SIZE too small
#endif

/** 透传 UART：使用独立 UART，避免占用 UART0（常用于 blog） */
#ifndef WEBSOCKET_TP_UART_ID
#define WEBSOCKET_TP_UART_ID 1
#endif
#ifndef WEBSOCKET_TP_UART_TX_PIN
#define WEBSOCKET_TP_UART_TX_PIN 4
#endif
#ifndef WEBSOCKET_TP_UART_RX_PIN
#define WEBSOCKET_TP_UART_RX_PIN 3
#endif
#ifndef WEBSOCKET_TP_UART_BAUD
#define WEBSOCKET_TP_UART_BAUD 115200
#endif

/** 失败后的重连间隔（毫秒） */
#ifndef WEBSOCKET_TP_RECONNECT_MS
#define WEBSOCKET_TP_RECONNECT_MS 3000
#endif

/** 透传任务栈（字），WebSocket+TLS 建议 ≥ 4096 */
#ifndef WEBSOCKET_TP_TASK_STACK_WORDS
#define WEBSOCKET_TP_TASK_STACK_WORDS 4096
#endif

#ifndef WEBSOCKET_TP_TASK_PRIORITY
#define WEBSOCKET_TP_TASK_PRIORITY 10
#endif

/*
 * ─── TLS：服务端证书校验 ─────────────────────────────────────────────
 * WEBSOCKET_TP_TLS_VERIFY = 1：向 mbedTLS 传入 WEBSOCKET_TP_TLS_CA_CERT_PEM，
 *                             校验链须由其中某一 CA（或签发根）锚定。
 * WEBSOCKET_TP_TLS_VERIFY = 0：不调用 axk_transport_ssl_set_cert_data，
 *                             依赖 SDK CONFIG_AXK_TLS_SKIP_SERVER_CERT_VERIFY（仅调试）。
 */
#ifndef WEBSOCKET_TP_TLS_VERIFY
#define WEBSOCKET_TP_TLS_VERIFY 1
#endif

/**
 * PEM 格式的信任锚（可多证书拼接：多个 BEGIN/END CERTIFICATE 块）。
 * 默认嵌入 ISRG Root X1（见 websocket_tp_tls_ca_isrg_root_x1.inc.h）。
 *
 * 在包含本头文件**之前**自行 #define WEBSOCKET_TP_TLS_CA_CERT_PEM \"...\" 可完全覆盖默认值。
 */
#ifndef WEBSOCKET_TP_TLS_CA_CERT_PEM
#define WEBSOCKET_TP_TLS_CA_CERT_PEM WEBSOCKET_TP_TLS_CA_ISRG_ROOT_X1_PEM
#endif

/**非 0 时调用 axk_transport_ssl_skip_common_name_check（一般保持 0 即可）*/
#ifndef WEBSOCKET_TP_TLS_SKIP_COMMON_NAME_CHECK
#define WEBSOCKET_TP_TLS_SKIP_COMMON_NAME_CHECK 0
#endif

#endif /* WEBSOCKET_TP_CONFIG_H */
