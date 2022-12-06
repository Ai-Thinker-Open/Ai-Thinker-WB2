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

#define EF_SSID "EF_SSID"
#define EF_PWD "EF_PWD"

#define WIFI_CONNECT_BIT    (1<<0)
#define WIFI_DISCONNECT_BIT (1<<4)
#define TCP_CLIENT_CONNECT  (1<<3)
#define TCP_CLINENT_DISCONNECT (1<<5)
#define WIFI_RESET_BUTTON_PIN 11

typedef struct
{
    char ssid[64];
    char password[64];
} easy_connect_wifi_config_t;
extern EventGroupHandle_t wifi_event_handle;

void wifi_easy_connect(void);
bool wifi_info_store(easy_connect_wifi_config_t* config);
bool wifi_info_restore(easy_connect_wifi_config_t* config);
bool wifi_info_erase();
bool wifi_reset_check();


#endif
