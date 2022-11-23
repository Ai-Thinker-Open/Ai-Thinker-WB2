/**
 * @file easy_connect_wifi.c
 * @author your name (you@domain.com)
 * @brief
 * @version 0.1
 * @date 2022-11-22
 *
 * @copyright Copyright (c) 2022
 *
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <FreeRTOS.h>
#include <task.h>
#include <blog.h>
#include <aos/yloop.h>
#include <aos/kernel.h>
#include <lwip/tcpip.h>
#include <wifi_mgmr_ext.h>
#include <hal_wifi.h>

#include "easy_connect_wifi.h"

EventGroupHandle_t wifi_event_handle;

static wifi_conf_t conf =
{
    .country_code = "CN",
};

static void wifi_sta_connect(char* ssid, char* password)
{
    wifi_interface_t wifi_interface;

    wifi_interface = wifi_mgmr_sta_enable();
    wifi_mgmr_sta_connect(wifi_interface, ssid, password, NULL, NULL, 0, 0);
}

static void event_cb_wifi_event(input_event_t* event, void* private_data)
{
    static char* ssid;
    static char* password;

    switch (event->code)
    {
        case CODE_WIFI_ON_INIT_DONE:
        {
            blog_info("[APP] [EVT] INIT DONE %lld", aos_now_ms());
            wifi_mgmr_start_background(&conf);
        }
        break;
        case CODE_WIFI_ON_MGMR_DONE:
        {
            blog_info("[APP] [EVT] MGMR DONE %lld", aos_now_ms());
            //_connect_wifi();

            wifi_sta_connect(ROUTER_SSID, ROUTER_PWD);
        }
        break;
        case CODE_WIFI_ON_SCAN_DONE:
        {
            blog_info("[APP] [EVT] SCAN Done %lld", aos_now_ms());
            // wifi_mgmr_cli_scanlist();
        }
        break;
        case CODE_WIFI_ON_DISCONNECT:
        {
            blog_error("[APP] [EVT] disconnect %lld", aos_now_ms());
            xEventGroupSetBits(wifi_event_handle, WIFI_DISCONNECT_BIT);
        }
        break;
        case CODE_WIFI_ON_CONNECTING:
        {
            blog_info("[APP] [EVT] Connecting %lld", aos_now_ms());
        }
        break;
        case CODE_WIFI_CMD_RECONNECT:
        {
            blog_info("[APP] [EVT] Reconnect %lld", aos_now_ms());
        }
        break;
        case CODE_WIFI_ON_CONNECTED:
        {
            blog_info("[APP] [EVT] connected %lld", aos_now_ms());
        }
        break;
        case CODE_WIFI_ON_PRE_GOT_IP:
        {

            blog_info("[APP] [EVT] connected %lld", aos_now_ms());
            xEventGroupSetBits(wifi_event_handle, WIFI_CONNECT_BIT);
        }
        break;
        case CODE_WIFI_ON_GOT_IP:
        {
            blog_info("[APP] [EVT] GOT IP %lld", aos_now_ms());
            blog_info("[SYS] Memory left is %d Bytes", xPortGetFreeHeapSize());
            xEventGroupSetBits(wifi_event_handle, WIFI_CONNECT_BIT);
        }
        break;
        case CODE_WIFI_ON_PROV_SSID:
        {
            blog_info("[APP] [EVT] [PROV] [SSID] %lld: %s",
                   aos_now_ms(),
                   event->value ? (const char*)event->value : "UNKNOWN");
            if (ssid)
            {
                vPortFree(ssid);
                ssid = NULL;
            }
            ssid = (char*)event->value;
        }
        break;
        case CODE_WIFI_ON_PROV_BSSID:
        {
            blog_info("[APP] [EVT] [PROV] [BSSID] %lld: %s",
                   aos_now_ms(),
                   event->value ? (const char*)event->value : "UNKNOWN");
            if (event->value)
            {
                vPortFree((void*)event->value);
            }
        }
        break;
        case CODE_WIFI_ON_PROV_PASSWD:
        {
            blog_info("[APP] [EVT] [PROV] [PASSWD] %lld: %s", aos_now_ms(),
                   event->value ? (const char*)event->value : "UNKNOWN");
            if (password)
            {
                vPortFree(password);
                password = NULL;
            }
            password = (char*)event->value;
        }
        break;
        case CODE_WIFI_ON_PROV_CONNECT:
        {
            blog_info("[APP] [EVT] [PROV] [CONNECT] %lld", aos_now_ms());
            blog_info("connecting to %s:%s...", ssid, password);
            wifi_sta_connect(ssid, password);
        }
        break;
        case CODE_WIFI_ON_PROV_DISCONNECT:
        {
            blog_info("[APP] [EVT] [PROV] [DISCONNECT] %lld", aos_now_ms());
        }
        break;
        default:
        {
            blog_info("[APP] [EVT] Unknown code %u, %lld", event->code, aos_now_ms());
            /*nothing*/
        }
    }
}

void wifi_easy_connect(void)
{
    tcpip_init(NULL, NULL);
    wifi_event_handle = xEventGroupCreate();
    aos_register_event_filter(EV_WIFI, event_cb_wifi_event, NULL);
    hal_wifi_start_firmware_task();

    aos_post_event(EV_WIFI, CODE_WIFI_ON_INIT_DONE, 0);
    xEventGroupWaitBits(wifi_event_handle, WIFI_CONNECT_BIT, pdTRUE, pdFALSE, portMAX_DELAY);
}