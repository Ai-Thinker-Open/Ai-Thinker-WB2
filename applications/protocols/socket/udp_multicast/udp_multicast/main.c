/**
 * @file main.c
 * @author your name (you@domain.com)
 * @brief
 * @version 0.1
 * @date 2022-10-13
 *
 * @copyright Copyright (c) 2022
 *
 */
#include <FreeRTOS.h>
#include <task.h>
#include <stdio.h>
#include <string.h>
#include <blog.h>
#include <aos/yloop.h>
#include <aos/kernel.h>
#include <lwip/sockets.h>
#include <lwip/tcpip.h>
#include <wifi_mgmr_ext.h>
#include <cli.h>
#include <hal_wifi.h>
#include <lwip/init.h>
#include "udp_multicast.h"

#define ROUTER_SSID "ssid"
#define ROUTER_PWD "password"
 // multicast_ADDR: 224.0.0.0 ~ 239.255.255.255
#define MULTICAST_ADDR "224.0.1.0"
#define MULTICAST_PORT 7878

static wifi_conf_t conf = {
    .country_code = "CN",
};

/**
 * @brief wifi_sta_connect
 *        wifi station mode connect start
 * @param ssid
 * @param password
 */
static void wifi_sta_connect(char* ssid, char* password)
{
    wifi_interface_t wifi_interface;
    wifi_interface = wifi_mgmr_sta_enable();
    wifi_mgmr_sta_connect(wifi_interface, ssid, password, NULL, NULL, 0, 0);
}
/**
 * @brief udp_multicast_task
 *
 * @param arg
 */
static void udp_multicast_task(void* arg)
{
    int socket_fd = 0;
    struct sockaddr_in send_addr;
    char* udp_buf = pvPortMalloc(512);
    int socklen = sizeof(send_addr);

    socket_fd = multicast_init(MULTICAST_ADDR, MULTICAST_PORT);
    if (socket_fd<0) goto __exit;
    blog_info("<<<<<<<<<<<<<<<<<<udp multicast start<<<<<<<<<<<<<\r\n");
    blog_info("multicast addr:%s:%d\r\n", MULTICAST_ADDR, MULTICAST_PORT);
    while (1) {
        memset(udp_buf, 0, 512);
        //Read multicast data
        if (recvfrom(socket_fd, udp_buf, 512, MSG_DONTWAIT, (struct sockaddr*)&send_addr, (socklen_t*)&socklen)>0) {
            blog_info("%s:%s\r\n", inet_ntoa(send_addr.sin_addr.s_addr), udp_buf);
            //Forward the read data to multicast
            send_addr.sin_port = htons(MULTICAST_PORT);
            send_addr.sin_addr.s_addr = inet_addr(MULTICAST_ADDR);
            if (sendto(socket_fd, udp_buf, strlen(udp_buf), 0, (struct sockaddr*)&send_addr, socklen)>0) {
                blog_info("udp multicast data:%s\r\n", udp_buf);
            }
        }
        vTaskDelay(50/portTICK_PERIOD_MS);
    }
__exit:
    blog_info("multicast close\r\n");
    vPortFree(udp_buf);
    multicast_deinit(socket_fd);
    vTaskDelete(NULL);
}
/**
 * @brief event_cb_wifi_event
 *      wifi connet ap event Callback function
 * @param event
 * @param private_data
 */
static void event_cb_wifi_event(input_event_t* event, void* private_data)
{
    static char* ssid;
    static char* password;

    switch (event->code)
    {
        case CODE_WIFI_ON_INIT_DONE:
        {
            printf("[APP] [EVT] INIT DONE %lld\r\n", aos_now_ms());
            wifi_mgmr_start_background(&conf);
        }
        break;
        case CODE_WIFI_ON_MGMR_DONE:
        {
            printf("[APP] [EVT] MGMR DONE %lld\r\n", aos_now_ms());
            //_connect_wifi();

            wifi_sta_connect(ROUTER_SSID, ROUTER_PWD);
        }
        break;
        case CODE_WIFI_ON_SCAN_DONE:
        {
            printf("[APP] [EVT] SCAN Done %lld\r\n", aos_now_ms());
            // wifi_mgmr_cli_scanlist();
        }
        break;
        case CODE_WIFI_ON_DISCONNECT:
        {
            printf("[APP] [EVT] disconnect %lld\r\n", aos_now_ms());
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
            // wifi connection succeeded, create udp multicast task
            xTaskCreate(udp_multicast_task, "udp_multicast_task", 2048, NULL, 16, NULL);
        }
        break;
        case CODE_WIFI_ON_PROV_SSID:
        {
            printf("[APP] [EVT] [PROV] [SSID] %lld: %s\r\n",
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
            printf("[APP] [EVT] [PROV] [BSSID] %lld: %s\r\n",
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
            printf("[APP] [EVT] [PROV] [PASSWD] %lld: %s\r\n", aos_now_ms(),
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
            printf("[APP] [EVT] [PROV] [CONNECT] %lld\r\n", aos_now_ms());
            printf("connecting to %s:%s...\r\n", ssid, password);
            wifi_sta_connect(ssid, password);
        }
        break;
        case CODE_WIFI_ON_PROV_DISCONNECT:
        {
            printf("[APP] [EVT] [PROV] [DISCONNECT] %lld\r\n", aos_now_ms());
        }
        break;
        default:
        {
            printf("[APP] [EVT] Unknown code %u, %lld\r\n", event->code, aos_now_ms());
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
    puts("[OS] Starting TCP/IP Stack...\r\n");
    tcpip_init(NULL, NULL);
    puts("[OS] proc_main_entry task...\r\n");
    xTaskCreate(proc_main_entry, (char*)"main_entry", 1024, NULL, 15, NULL);
}