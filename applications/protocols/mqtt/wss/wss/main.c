#include <FreeRTOS.h>
#include <task.h>
#include <stdio.h>
#include <string.h>
#include "blog.h"
#include <aos/yloop.h>
#include <aos/kernel.h>
#include <lwip/tcpip.h>
#include <wifi_mgmr_ext.h>
#include <hal_wifi.h>

#define ROUTER_SSID "your ssid"
#define ROUTER_PWD "your password"

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
            wifi_sta_connect(ROUTER_SSID, ROUTER_PWD);
        }
        break;
        case CODE_WIFI_ON_SCAN_DONE:
        {
            blog_info("[APP] [EVT] SCAN Done %lld", aos_now_ms());
        }
        break;
        case CODE_WIFI_ON_DISCONNECT:
        {
            blog_info("[APP] [EVT] disconnect %lld", aos_now_ms());
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
        }
        break;
        case CODE_WIFI_ON_GOT_IP:
        {
            blog_info("[APP] [EVT] GOT IP %lld", aos_now_ms());
            blog_info("[SYS] Memory left is %d Bytes", xPortGetFreeHeapSize());
            extern void mqtt_start(void);
            mqtt_start();
        }
        break;
        case CODE_WIFI_ON_PROV_SSID:
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
        break;
        case CODE_WIFI_ON_PROV_CONNECT:
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

static void proc_main_entry(void* pvParameters)
{
    aos_register_event_filter(EV_WIFI, event_cb_wifi_event, NULL);
    hal_wifi_start_firmware_task();
    aos_post_event(EV_WIFI, CODE_WIFI_ON_INIT_DONE, 0);
    vTaskDelete(NULL);
}


void main()
{
    blog_set_level_log_component(BLOG_LEVEL_WARN, "wss");
    blog_set_level_log_component(BLOG_LEVEL_WARN, "axk_mqtt");
    blog_set_level_log_component(BLOG_LEVEL_WARN, "axk_tls");
    blog_set_level_log_component(BLOG_LEVEL_WARN, "tcp_transport");       
    puts("[OS] Starting TCP/IP Stack...");
    tcpip_init(NULL, NULL);
    puts("[OS] proc_main_entry task...");
    xTaskCreate(proc_main_entry, (char*)"main_entry", 1024, NULL, 15, NULL);
}
