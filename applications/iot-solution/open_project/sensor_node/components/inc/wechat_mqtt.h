/**
 * @file wechat_mqtt.h
 * @author your name (you@domain.com)
 * @brief
 * @version 0.1
 * @date 2022-11-23
 *
 * @copyright Copyright (c) 2022
 *
 */
#ifndef WECHAT_MQTT_H
#define WECHAT_MQTT_H
#include <mqtt_client.h>
#include <queue.h>

extern QueueHandle_t wechat_recv_queue;
extern bool mqtt_connect_status;

void wechat_mqtt_init(void* arg);
char* mqtt_get_wifi_sta_mac(void);
#endif