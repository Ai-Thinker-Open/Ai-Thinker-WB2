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
#include <aos/yloop.h>
#include <aos/kernel.h>
#include <lwip/tcpip.h>
#include <wifi_mgmr_ext.h>
#include <hal_wifi.h>
#include <lwip/netif.h>
#include <blog.h>
#define AP_SSID "ai-thinker"
#define AP_PWD "12345678"

#define TAG "softAP"

static wifi_conf_t ap_conf = {
    .country_code = "CN",
};
static wifi_interface_t ap_interface;
/**
 * @brief wifi_ap_start
 *
 */
static void wifi_ap_start()
{
    ap_interface = wifi_mgmr_ap_enable();
    wifi_mgmr_conf_max_sta(4);
    wifi_mgmr_ap_start(ap_interface, AP_SSID, 0, AP_PWD, 6);
}

static void event_cb_wifi_event(input_event_t* event, void* private_data)
{
    switch (event->code) {
        case CODE_WIFI_ON_INIT_DONE:
            blog_info("<<<<<<<<<  init wifi done  <<<<<<<<<<\r\n");
            wifi_mgmr_start_background(&ap_conf);
            break;
        case CODE_WIFI_ON_MGMR_DONE:
            blog_info("<<<<<<<<< startting soft ap <<<<<<<<<<<\r\n");
            wifi_ap_start();
            break;
        case CODE_WIFI_ON_AP_STARTED:
            blog_info("<<<<<<<<< startt soft ap OK<<<<<<<<<<<\r\n");
            break;
        case CODE_WIFI_ON_AP_STOPPED:
            break;
        case CODE_WIFI_ON_AP_STA_ADD:
            blog_info("<<<<<<<<< station connent ap <<<<<<<<<<<\r\n");
            break;
        case CODE_WIFI_ON_AP_STA_DEL:
            blog_info("<<<<<<<<< station disconnet ap <<<<<<<<<<<\r\n");
            break;
        default:
            break;

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
    /*nothing here*/
}

void main()
{
    system_thread_init();
    puts("[OS] Starting TCP/IP Stack...\r\n");
    tcpip_init(NULL, NULL);
    puts("[OS] proc_main_entry task...\r\n");
    xTaskCreate(proc_main_entry, (char*)"main_entry", 1024, NULL, 15, NULL);
}
