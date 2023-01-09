/**
 * @file main.c
 * @author your name (you@domain.com)
 * @brief
 * @version 0.1
 * @date 2022-10-09
 *
 * @copyright Copyright (c) 2022
 *
 */
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
#include <easyflash.h>

#define ROUTER_SSID "ssid"
#define ROUTER_PWD "password"

#define EF_SSID_KEY "key_ssid"
#define EF_PWD_KEY "key_pwd"
#define EF_PMK_KEY "key_pmk"
#define EF_CHAN_KEY "key_channel"


#define SSID_LEN 33
#define PASSWORD_LEN 66
#define PMK_LEN 65

static wifi_conf_t conf =
{
    .country_code = "CN",
};

static void quick_connect_wifi(char* ssid, char* password)
{
    wifi_interface_t wifi_interface;
    uint8_t channel = 0;
    size_t len = 0;
    int quick_connect = 1;
    bool open_bss_flag = 1;
    uint32_t flags = 0;
    char ef_ssid[SSID_LEN], ef_password[PASSWORD_LEN], pmk[PMK_LEN];
    memset(pmk, 0, PMK_LEN);
    memset(ef_ssid, 0, SSID_LEN);
    memset(ef_password, 0, PASSWORD_LEN);


    if (quick_connect > 0) {
        flags |= WIFI_CONNECT_STOP_SCAN_CURRENT_CHANNEL_IF_TARGET_AP_FOUND;
    }
    size_t ef_len = ef_get_env_blob(EF_CHAN_KEY, &channel, sizeof(uint8_t), &len);

    if (ef_len==0) {
        open_bss_flag = 0;
        ef_del_env(EF_SSID_KEY);
        ef_del_env(EF_PWD_KEY);
        ef_del_env(EF_PMK_KEY);
        ef_set_env_blob(EF_SSID_KEY, ssid, strlen(ssid));
        ef_set_env_blob(EF_PWD_KEY, password, strlen(password));
        wifi_mgmr_psk_cal(
               password,
               ssid,
               strlen(ssid),
               pmk
        );
        ef_set_env_blob(EF_PMK_KEY, pmk, PMK_LEN);
        wifi_interface = wifi_mgmr_sta_enable();
        wifi_mgmr_sta_connect_mid(wifi_interface, ssid, NULL, pmk, NULL, 0, 0, 1, flags);

    }
    else if (ef_len) {
        uint8_t channel = 0;
        ef_get_env_blob(EF_SSID_KEY, ef_ssid, SSID_LEN, &len);

        ef_get_env_blob(EF_PMK_KEY, pmk, PMK_LEN, &len);
        ef_get_env_blob(EF_CHAN_KEY, &channel, sizeof(uint8_t), &len);
        open_bss_flag = 0;
        blog_info("read connenct msg,ssid:%s channel:%d pmk:%s  ", ef_ssid, channel, pmk);
        wifi_interface = wifi_mgmr_sta_enable();
        wifi_mgmr_sta_connect_mid(wifi_interface, ssid, NULL, open_bss_flag ? NULL : pmk, NULL, 0, channel, 1, flags);

    }
    else {
        blog_error("%s:<ssid> [password] or no parameters", __func__);
    }

}

static void wifi_sta_connect(char* ssid, char* password)
{
    wifi_interface_t wifi_interface;
    char pmk[PMK_LEN];
    int quick_connect = 1;
    uint32_t flags = 0;

    memset(pmk, 0, PMK_LEN);

    if (quick_connect > 0) {
        flags |= WIFI_CONNECT_STOP_SCAN_CURRENT_CHANNEL_IF_TARGET_AP_FOUND;
    }

    wifi_mgmr_psk_cal(
               password,
               ssid,
               strlen(ssid),
               pmk
    );
    wifi_interface = wifi_mgmr_sta_enable();
    wifi_mgmr_sta_connect_mid(wifi_interface, ssid, NULL, pmk, NULL, 0, 8, 1, flags);
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

            // wifi_sta_connect(ROUTER_SSID, ROUTER_PWD);
            quick_connect_wifi(ROUTER_SSID, ROUTER_PWD);
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
            uint8_t channel = 0;
            blog_info("[APP] [EVT] GOT IP %lld", aos_now_ms());
            blog_info("[SYS] Memory left is %d Bytes", xPortGetFreeHeapSize());
            wifi_mgmr_channel_get(&channel);
            blog_info("ap channel:%d", channel);
            ef_del_env(EF_CHAN_KEY);
            ef_set_env_blob(EF_CHAN_KEY, &channel, sizeof(uint8_t));
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

static void proc_main_entry(void* pvParameters)
{

    aos_register_event_filter(EV_WIFI, event_cb_wifi_event, NULL);
    hal_wifi_start_firmware_task();
    aos_post_event(EV_WIFI, CODE_WIFI_ON_INIT_DONE, 0);
    vTaskDelete(NULL);
}

static void system_thread_init()
{
    easyflash_init();
}

void main()
{
    system_thread_init();
    puts("[OS] Starting TCP/IP Stack...");
    tcpip_init(NULL, NULL);
    puts("[OS] proc_main_entry task...");
    xTaskCreate(proc_main_entry, (char*)"main_entry", 1024, NULL, 15, NULL);
}
