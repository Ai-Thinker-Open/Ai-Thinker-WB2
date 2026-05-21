#ifndef WEBSOCKET_TP_BRIDGE_H
#define WEBSOCKET_TP_BRIDGE_H

/**
 * 启动 WebSocket（WSS/WS）与 UART 双向透传任务。
 * 请在 Wi-Fi 已获得 IP 之后调用（与其它协议 demo 一致）。
 */
void websocket_tp_bridge_start(void);

#endif
