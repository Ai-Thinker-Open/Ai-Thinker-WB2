/**
 * @file easy_connect_wifi.h
 * @author your name (you@domain.com)
 * @brief
 * @version 0.1
 * @date 2022-11-22
 *
 * @copyright Copyright (c) 2022
 *
 */
#ifndef EASY_CONNECT_WIFI_H
#define EASY_CONNECT_WIFI_H
#include <event_groups.h>

#define ROUTER_SSID "FAE@Seahi"
#define ROUTER_PWD "fae12345678"

#define WIFI_CONNECT_BIT    (1<<0)
#define WIFI_DISCONNECT_BIT (1<<4)

void wifi_easy_connect(void);

extern EventGroupHandle_t wifi_event_handle;
#endif
