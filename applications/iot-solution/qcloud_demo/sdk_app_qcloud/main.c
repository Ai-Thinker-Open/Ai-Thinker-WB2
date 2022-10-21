#include <stdio.h>
#include <stdint.h>
#include <string.h>

#include <aos/kernel.h>
#include <aos/yloop.h>
#include <lwip/tcpip.h>
#include <bl_sys.h>
#include <hal_wifi.h>
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
extern hw_timer_t  *qcloud_demo_handle;
extern void Start_Qcloud_Demo(void);

static void wifi_sta_connect(char *ssid, char *password)
{
    wifi_interface_t wifi_interface;

    wifi_interface = wifi_mgmr_sta_enable();
    wifi_mgmr_sta_connect(wifi_interface, ssid, password, NULL, NULL, 0, 0);
}

static bool wifi_info_read()
{
    size_t len;
    ef_get_env_blob("ssid",sta_ssid , sizeof(sta_ssid), &len);    
    if (strlen(sta_ssid) ==0){
        printf("[NV] get sta_ssid fail:%d \r\n", len);
        return false;
    }else{
        printf("sta_ssid:%s\r\n",sta_ssid);
    }

    ef_get_env_blob("pwd",sta_passwd , sizeof(sta_passwd), &len);    
    if (strlen(sta_passwd) ==0){
        printf("[NV] get sta_passwd fail:%d \r\n", len);
    }else{
        printf("sta_passwd:%s\r\n",sta_passwd);
    }    
    return true;
}

static void event_cb_wifi_event(input_event_t *event, void *private_data)
{
    extern bool q_cloud_IsConnected;
    static bool wifi_info_isSet=false;
    switch (event->code) {
        case CODE_WIFI_ON_INIT_DONE:
        {
            printf("[APP] [EVT] INIT DONE %lld\r\n", aos_now_ms());
            wifi_mgmr_start_background(&conf);
        }
        break;
        case CODE_WIFI_ON_MGMR_DONE:
        {
            printf("[APP] [EVT] MGMR DONE %lld\r\n", aos_now_ms());
            if(wifi_info_read())
            {
                wifi_info_isSet=true;
                wifi_sta_connect(sta_ssid,sta_passwd);
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
            printf("[APP] [EVT] Microwave Denoise is ON %lld\r\n", aos_now_ms());
        }
        break;
        case CODE_WIFI_ON_SCAN_DONE:
        {
            printf("[APP] [EVT] SCAN Done %lld\r\n", aos_now_ms());
            wifi_mgmr_cli_scanlist();
        }
        break;
        case CODE_WIFI_ON_SCAN_DONE_ONJOIN:
        {
            printf("[APP] [EVT] SCAN On Join %lld\r\n", aos_now_ms());
        }
        break;
        case CODE_WIFI_ON_DISCONNECT:
        {
            printf("[APP] [EVT] disconnect %lld, Reason: %s\r\n",
                   aos_now_ms(),
                   wifi_mgmr_status_code_str(event->value));
            q_cloud_IsConnected = 0;
        }
        break;
        case CODE_WIFI_ON_CONNECTING:
        {
            printf("[APP] [EVT] Connecting %lld\r\n", aos_now_ms());
        }
        break;
        case CODE_WIFI_CMD_RECONNECT:
        {
            printf("[APP] [EVT] Reconnect %lld\r\n", aos_now_ms());
        }
        break;
        case CODE_WIFI_ON_CONNECTED:
        {
            printf("[APP] [EVT] connected %lld\r\n", aos_now_ms());
        }
        break;
        case CODE_WIFI_ON_PRE_GOT_IP:
        {
            printf("[APP] [EVT] connected %lld\r\n", aos_now_ms());
        }
        break;
        case CODE_WIFI_ON_GOT_IP:
        {
            printf("[APP] [EVT] GOT IP %lld\r\n", aos_now_ms());
            printf("[SYS] Memory left is %d Bytes\r\n", xPortGetFreeHeapSize());
            if(wifi_info_isSet)
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
            printf("[APP] [EVT] EMERGENCY MAC %lld\r\n", aos_now_ms());
            hal_reboot(); // one way of handling emergency is reboot. Maybe we should also consider solutions
        }
        break;
        case CODE_WIFI_ON_PROV_CONNECT:
        {
            printf("[APP] [EVT] [PROV] [CONNECT] %lld\r\n", aos_now_ms());
            printf("connecting to %s:%s...\r\n", sta_ssid, sta_passwd);
            wifi_sta_connect(sta_ssid,sta_passwd);
        }
        break;
        case CODE_WIFI_ON_PROV_DISCONNECT:
        {
            printf("[APP] [EVT] [PROV] [DISCONNECT] %lld\r\n", aos_now_ms());
        }
        break;
        case CODE_WIFI_ON_AP_STA_ADD:
        {
            printf("[APP] [EVT] [AP] [ADD] %lld, sta idx is %lu\r\n", aos_now_ms(), (uint32_t)event->value);
        }
        break;
        case CODE_WIFI_ON_AP_STA_DEL:
        {
            printf("[APP] [EVT] [AP] [DEL] %lld, sta idx is %lu\r\n", aos_now_ms(), (uint32_t)event->value);
        }
        break;
        default:
        {
            printf("[APP] [EVT] Unknown code %u, %lld\r\n", event->code, aos_now_ms());
            /*nothing*/
        }
        break;
    }
}

/**
 * @brief 直接串口打印系统任务管理器
 */
void show_task_state_task(void *param)
{
    char *pcWriteBuffer = malloc(1024);

    for (;;)
    {
        printf("\r\n=============================================\r\n");
        printf("name \t\tstatus \tprio \tfree \tpid\r\n");
        vTaskList((char *)pcWriteBuffer);
        printf("%s", pcWriteBuffer);
        printf("\n=============================================\r\n");

        printf("\r\n=====================================\r\n");
        printf("FreeHeapSize is %d bytes\r\n", xPortGetFreeHeapSize());
        printf("MinimumEverFreeHeapSize is %d bytes\r\n", xPortGetMinimumEverFreeHeapSize());
        printf("=====================================\r\n");

        vTaskDelay(pdMS_TO_TICKS(2000));
    }
}

static void proc_main_entry(void *pvParameters)
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
    xTaskCreate(proc_main_entry, (char *)"main_entry", 1024, NULL, 15, NULL);

    // xTaskCreate(show_task_state_task, (char *)"status_show", 512, NULL, 8, NULL);

    tcpip_init(NULL, NULL);
    printf("qcloud demo running\r\n");

    return 0;
}
