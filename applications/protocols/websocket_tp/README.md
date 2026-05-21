# WebSocket（WSS/WS）串口透传

在已获得 IP 的 STA 模式下，建立与远程 WebSocket 服务器的连接，并在 **UART** 与 **WebSocket 二进制帧** 之间双向透传数据。TLS 走 SDK 的 `axk_transport_ssl` + `transport_ws`（与 `applications/protocols/mqtt/wss` 中 MQTT over WSS 同一套栈），思路对齐 `bl602_at` 工程里基于 WebSocket 的链路能力。

默认参数与如下 JSON 一致（见 `websocket_tp_config.h`）：

`{"url":"wss://ws.qrwash.com.tr/ws","keepalive_s":30,"timeout_s":120,"buffer_size":4096}`

## 对外接口（API）

本例程**不提供**单独的「发送」「接收」函数给应用层调用；透传由内部 FreeRTOS 任务在连接成功后 **循环轮询** UART 与 WebSocket。

| 接口 | 声明位置 | 说明 |
|------|-----------|------|
| `websocket_tp_bridge_start()` | `websocket_tp_demo/include/websocket_tp_bridge.h` | **唯一对外入口**。创建透传任务；建议在 **`CODE_WIFI_ON_GOT_IP`** 之后调用一次（重复调用会被忽略）。 |

## 链路数据收发路径（内部实现）

数据面全部在 `websocket_tp_demo/src/websocket_tp_bridge.c` 的会话循环 `run_one_session()` 内完成，对应关系如下。

| 方向 | 含义 | 实际调用（SDK） | 帧/数据类型 |
|------|------|-----------------|-------------|
| **上行**（串口 → 服务器） | 从 MCU 串口读出原始字节，经 WSS 发往对端 | `hosal_uart_receive(&s_uart, buf, sizeof(buf))` → `axk_transport_write(trans, buf, n, WEBSOCKET_TP_TIMEOUT_MS)` | 经 `transport_ws` 封装为 WebSocket **Binary** 帧 |
| **下行**（服务器 → 串口） | 从 WSS 读出一帧用户负载，写到串口 | `axk_transport_read(trans, buf, len, 20)` → `hosal_uart_send(&s_uart, buf, len)` | 对端发来的 **Binary / Text** 用户数据帧由传输层解析后进入 `read` 缓冲；**PING/PONG/CLOSE** 等控制帧在 `transport_ws` 内处理，一般不上送应用缓冲 |
| **保活** | 长时间无收发时维持连接 | `axk_transport_write(trans, NULL, 0, WEBSOCKET_TP_TIMEOUT_MS)` | `len==0` 时在 WebSocket 层发 **PING**（见 `transport_ws.c`） |

说明要点：

- **传输句柄** `trans` 为最外层 scheme 对应句柄（`wss` 或 `ws`），其 `read`/`write` 即带 WebSocket 封装的收发，定义见 `components/network/axk_protocol_stack/tcp_transport/include/axk_transport.h`。
- 单次收发最大长度由宏 **`WEBSOCKET_TP_BUFFER_SIZE`** 与 **`CONFIG_WS_BUFFER_SIZE`**（`bouffalo.mk`）共同约束；超过一帧负载时需分多次 `read`，或在对端分包。
- **无阻塞 API**：UART 侧 `hosal_uart_receive` 在本工程轮询模式下会尽可能读空硬件 FIFO；WebSocket 侧 `axk_transport_read(..., 20)` 使用约 **20 ms** 的读超时以便与串口侧公平调度（与 `WEBSOCKET_TP_TIMEOUT_MS` 独立）。

## 可配置宏

见 `websocket_tp_demo/include/websocket_tp_config.h`：

| 宏 | 含义 | 默认值 |
|----|------|--------|
| `WEBSOCKET_TP_URL` | 服务器完整 URL（`wss://` 或 `ws://`） | `wss://ws.qrwash.com.tr/ws` |
| `WEBSOCKET_TP_KEEPALIVE_S` | 空闲超过该**秒数**则发送 WS PING | `30` |
| `WEBSOCKET_TP_TIMEOUT_S` | **TCP/TLS/WS** 单次 connect/read/write/ping 超时（**秒**）；过小会在 Wi‑Fi 下易出现 `select() timeout` | `120` |
| `WEBSOCKET_TP_KEEPALIVE_MS` | 保活间隔（毫秒）；未自定义时等于 `KEEPALIVE_S×1000` | `30000` |
| `WEBSOCKET_TP_TIMEOUT_MS` | 传输超时（毫秒）；未自定义时等于 `TIMEOUT_S×1000` | `120000` |
| `WEBSOCKET_TP_BUFFER_SIZE` | 单次 UART/WS 收发缓冲字节数 | `4096` |
| `WEBSOCKET_TP_TLS_VERIFY` | **1**：加载 CA PEM 并按 mbedTLS **校验服务端证书链**；**0**：不写 CA（走 SDK「跳过服务端校验」，仅调试） | `1` |
| `WEBSOCKET_TP_TLS_CA_CERT_PEM` | 信任锚 PEM（可多段 `BEGIN/END CERTIFICATE` 串联）。默认使用内置 **ISRG Root X1**（`websocket_tp_tls_ca_isrg_root_x1.inc.h`）；若签发方不同，可自行替换为该宏或通过 `-DWEBSOCKET_TP_TLS_CA_CERT_PEM='\"...\\\\r\\\\n...\"'`（或在本头文件中 `#undef`/`#define`） | 内置 Root X1 |
| `WEBSOCKET_TP_TLS_SKIP_COMMON_NAME_CHECK` | 是否跳过证书 CN/SAN 与主机名校验的子项（一般保持 **0**） | `0` |

**说明：** `timeout_s`/`TIMEOUT_MS` 传给底层 **TCP `connect()` 的 `select` 等待** 以及 TLS/WebSocket 读写。若误把 **秒** 当成 **毫秒**（例如写成 `timeout_s` 实为 `0.12` 或只给 120 ms），会出现 `[sock=0] select() timeout`。需要子秒或特殊值时，可在包含 `websocket_tp_config.h` 前直接 `#define WEBSOCKET_TP_TIMEOUT_MS`。

`keepalive_s` 过小会频繁发 WebSocket PING；默认 **30** 秒。

`WEBSOCKET_TP_BUFFER_SIZE` 必须与 `websocket_tp_demo/bouffalo.mk` 中的 `-DCONFIG_WS_BUFFER_SIZE=...` **保持一致**，否则单帧可能被传输层截断。

在 `WEBSOCKET_TP_TLS_VERIFY==1` 时，工程中通过 `_Static_assert` 约束 PEM 不能为空或过短（避免误配）。

## 编译

进入本工程目录下 `<SDKROOT>/applications/protocols/websocket_tp`

```bash
make -j64
```

若工程被挪到更少/更多层级的路径下，仍请 **`export BL60X_SDK_PATH=/path/to/Ai-Thinker-WB2`** 再编译。


## 串口硬件

默认使用 **UART1**，TX/RX：**GPIO4 / GPIO3**，波特率 **115200**（UART0 常留给日志），可在 `websocket_tp_config.h` 中修改。

## 应用入口

`websocket_tp_demo/main.c` 中填写 `ROUTER_SSID` / `ROUTER_PWD`；入网后在 `CODE_WIFI_ON_GOT_IP` 调用 `websocket_tp_bridge_start()`，之后数据收发完全由上述内部循环驱动，无需再调用其它发送/接收接口。
