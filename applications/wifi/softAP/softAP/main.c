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
#include <lwip/inet.h>
#include <blog.h>

#define AP_SSID "ai-thinker"
#define AP_PWD "12345678"

#define TAG "softAP"

static wifi_conf_t ap_conf = {
    .country_code = "CN",
};
static wifi_interface_t ap_interface;
/**
 * @brief wifi_ap_ip_set
 *      Set the IP address of soft AP
 * @param ip_addr IPV4 addr
 * @param netmask netmask
 * @param gw DNS
 */
static void wifi_ap_ip_set(char* ip_addr, char* netmask, char* gw)
{
    struct netif* ap_netif = netif_find("ap1");
    int i = 0;
    int ap_ipaddr[4] = { 0 };
    int ap_netmask[4] = { 255,255,255,0 };
    int ap_gw_arry[4] = { 0,0,0,0 };

    ap_ipaddr[0] = atoi(strtok(ip_addr, "."));

    for (i = 1;i<4;i++) {
        ap_ipaddr[i] = atoi(strtok(NULL, "."));
    }
    if (netmask) {
        ap_netmask[0] = atoi(strtok(netmask, "."));
        for (i = 1;i<4;i++)
            ap_netmask[i] = atoi(strtok(NULL, "."));
    }
    if (gw) {
        ap_gw_arry[0] = atoi(strtok(gw, "."));
        for (i = 1;i<4;i++)
            ap_gw_arry[i] = atoi(strtok(NULL, "."));
    }

    if (ap_netif) {

        ip_addr_t ap_ip;
        ip_addr_t ap_mask;
        ip_addr_t ap_gw;
        IP4_ADDR(&ap_ip, ap_ipaddr[0], ap_ipaddr[1], ap_ipaddr[2], ap_ipaddr[3]);
        IP4_ADDR(&ap_mask, ap_netmask[0], ap_netmask[1], ap_netmask[2], ap_netmask[3]);
        IP4_ADDR(&ap_gw, ap_gw_arry[0], ap_gw_arry[1], ap_gw_arry[2], ap_gw_arry[3]);

        netif_set_down(ap_netif);
        netif_set_ipaddr(ap_netif, &ap_ip);
        netif_set_netmask(ap_netif, &ap_mask);
        netif_set_gw(ap_netif, &ap_gw);
        netif_set_up(ap_netif);
        blog_info("[softAP]:SSID:%s,PASSWORD:%s,IP addr:%s", AP_SSID, AP_PWD, ip4addr_ntoa(netif_ip4_addr(ap_netif)));
    }
    else
        blog_info("no find netif ap1 ");

}

/**
 * @brief wifi_ap_start
 *
 */
static void wifi_ap_start()
{
    ap_interface = wifi_mgmr_ap_enable();
    wifi_mgmr_conf_max_sta(4);
    wifi_mgmr_ap_start(ap_interface, AP_SSID, 0, AP_PWD, 6);
    wifi_ap_ip_set("192.168.4.1", "255.255.255.0", "8.8.8.8");
}

static void event_cb_wifi_event(input_event_t* event, void* private_data)
{
    switch (event->code) {
        case CODE_WIFI_ON_INIT_DONE:
            blog_info("<<<<<<<<<  init wifi done  <<<<<<<<<<");
            wifi_mgmr_start_background(&ap_conf);
            break;
        case CODE_WIFI_ON_MGMR_DONE:
            blog_info("<<<<<<<<< startting soft ap <<<<<<<<<<<");
            wifi_ap_start();
            break;
        case CODE_WIFI_ON_AP_STARTED:
            blog_info("<<<<<<<<< startt soft ap OK<<<<<<<<<<<");

            break;
        case CODE_WIFI_ON_AP_STOPPED:
            break;
        case CODE_WIFI_ON_AP_STA_ADD:
            blog_info("<<<<<<<<< station connent ap <<<<<<<<<<<");

            break;
        case CODE_WIFI_ON_AP_STA_DEL:
            blog_info("<<<<<<<<< station disconnet ap <<<<<<<<<<<");

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

    puts("[OS] Starting TCP/IP Stack...");
    tcpip_init(NULL, NULL);
    puts("[OS] proc_main_entry task...");
    xTaskCreate(proc_main_entry, (char*)"main_entry", 1024, NULL, 15, NULL);
}
