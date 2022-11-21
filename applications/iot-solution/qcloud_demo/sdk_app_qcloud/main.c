#include <stdio.h>
#include <stdint.h>
#include <string.h>

#include <aos/kernel.h>
#include <aos/yloop.h>
#include <lwip/tcpip.h>
#include <bl_sys.h>
#include <hal_wifi.h>
#include <blog.h>
#include <hal_sys.h>
#include <easyflash.h>
#include <wifi_mgmr_ext.h>
#include "FreeRTOS.h"
#include "task.h"
#include <hal_hwtimer.h>


#define KEY_PIN     (8)
#define LED_PIN     (14)
#define restore_key (4)

extern void key_init(uint8_t pin);
extern void led_gpio_init(uint8_t pin);
extern void restore_key_init(uint8_t pin);

static wifi_conf_t conf =
{
    .country_code = "CN",
};

extern  char sta_ssid[33];
extern char sta_passwd[65];
extern hw_timer_t* qcloud_demo_handle;
extern void Start_Qcloud_Demo(void);

static void wifi_sta_connect(char* ssid, char* password)
{
    wifi_interface_t wifi_interface;

    wifi_interface = wifi_mgmr_sta_enable();
    wifi_mgmr_sta_connect(wifi_interface, ssid, password, NULL, NULL, 0, 0);
}

static bool wifi_info_read()
{
    size_t len;
    ef_get_env_blob("ssid", sta_ssid, sizeof(sta_ssid), &len);
    if (strlen(sta_ssid) ==0) {
        blog_error("[NV] get sta_ssid fail:%d ", len);
        return false;
    }
    else {
        blog_info("sta_ssid:%s", sta_ssid);
    }

    ef_get_env_blob("pwd", sta_passwd, sizeof(sta_passwd), &len);
    if (strlen(sta_passwd) ==0) {
        blog_error("[NV] get sta_passwd fail:%d ", len);
    }
    else {
        blog_info("sta_passwd:%s", sta_passwd);
    }
    return true;
}

static void event_cb_wifi_event(input_event_t* event, void* private_data)
{
    extern bool q_cloud_IsConnected;
    static bool wifi_info_isSet = false;
    switch (event->code) {
        case CODE_WIFI_ON_INIT_DONE:
        {
            blog_info("[APP] [EVT] INIT DONE %lld", aos_now_ms());
            wifi_mgmr_start_background(&conf);
        }
        break;
        case CODE_WIFI_ON_MGMR_DONE:
        {
            blog_info("[APP] [EVT] MGMR DONE %lld", aos_now_ms());
            if (wifi_info_read())
            {
                wifi_info_isSet = true;
                wifi_sta_connect(sta_ssid, sta_passwd);
            }
            else
            {
                extern void Q_Cloud_Config_Net_Start(void);
                Q_Cloud_Config_Net_Start();
            }
        }
        break;
        case CODE_WIFI_ON_MGMR_DENOISE:
        {
            blog_info("[APP] [EVT] Microwave Denoise is ON %lld", aos_now_ms());
        }
        break;
        case CODE_WIFI_ON_SCAN_DONE:
        {
            blog_info("[APP] [EVT] SCAN Done %lld", aos_now_ms());
            wifi_mgmr_cli_scanlist();
        }
        break;
        case CODE_WIFI_ON_SCAN_DONE_ONJOIN:
        {
            blog_info("[APP] [EVT] SCAN On Join %lld", aos_now_ms());
        }
        break;
        case CODE_WIFI_ON_DISCONNECT:
        {
            blog_info("[APP] [EVT] disconnect %lld, Reason: %s",
                   aos_now_ms(),
                   wifi_mgmr_status_code_str(event->value));
            q_cloud_IsConnected = 0;
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
            if (wifi_info_isSet)
            {
                qcloud_demo_handle = hal_hwtimer_create(100, Start_Qcloud_Demo, 1);
            }
            else
            {
                q_cloud_IsConnected = 1;
            }
        }
        break;
        case CODE_WIFI_ON_EMERGENCY_MAC:
        {
            blog_info("[APP] [EVT] EMERGENCY MAC %lld", aos_now_ms());
            hal_reboot(); // one way of handling emergency is reboot. Maybe we should also consider solutions
        }
        break;
        case CODE_WIFI_ON_PROV_CONNECT:
        {
            blog_info("[APP] [EVT] [PROV] [CONNECT] %lld", aos_now_ms());
            blog_info("connecting to %s:%s...", sta_ssid, sta_passwd);
            wifi_sta_connect(sta_ssid, sta_passwd);
        }
        break;
        case CODE_WIFI_ON_PROV_DISCONNECT:
        {
            blog_info("[APP] [EVT] [PROV] [DISCONNECT] %lld", aos_now_ms());
        }
        break;
        case CODE_WIFI_ON_AP_STA_ADD:
        {
            blog_info("[APP] [EVT] [AP] [ADD] %lld, sta idx is %lu", aos_now_ms(), (uint32_t)event->value);
        }
        break;
        case CODE_WIFI_ON_AP_STA_DEL:
        {
            blog_info("[APP] [EVT] [AP] [DEL] %lld, sta idx is %lu", aos_now_ms(), (uint32_t)event->value);
        }
        break;
        default:
        {
            blog_info("[APP] [EVT] Unknown code %u, %lld", event->code, aos_now_ms());
            /*nothing*/
        }
        break;
    }
}

/**
 * @brief 直接串口打印系统任务管理器
 */
void show_task_state_task(void* param)
{
    char* pcWriteBuffer = malloc(1024);

    for (;;)
    {
        blog_info("=============================================");
        blog_info("name \t\tstatus \tprio \tfree \tpid");
        vTaskList((char*)pcWriteBuffer);
        blog_info("%s", pcWriteBuffer);
        blog_info("\n=============================================");

        blog_info("=====================================");
        blog_info("FreeHeapSize is %d bytes", xPortGetFreeHeapSize());
        blog_info("MinimumEverFreeHeapSize is %d bytes", xPortGetMinimumEverFreeHeapSize());
        blog_info("=====================================");

        vTaskDelay(pdMS_TO_TICKS(2000));
    }
}

static void proc_main_entry(void* pvParameters)
{
    easyflash_init();
    aos_register_event_filter(EV_WIFI, event_cb_wifi_event, NULL);

    hal_wifi_start_firmware_task();
    /*Trigger to start Wi-Fi*/
    aos_post_event(EV_WIFI, CODE_WIFI_ON_INIT_DONE, 0);

    vTaskDelete(NULL);
}

int main(void)
{
    led_gpio_init(LED_PIN);
    key_init(KEY_PIN);
    restore_key_init(restore_key);
    bl_sys_init();
    xTaskCreate(proc_main_entry, (char*)"main_entry", 1024, NULL, 15, NULL);

    // xTaskCreate(show_task_state_task, (char *)"status_show", 512, NULL, 8, NULL);

    tcpip_init(NULL, NULL);
    blog_info("qcloud demo running");

    return 0;
}
