/**
 * @file udp_broadcast.c
 * @author your name (you@domain.com)
 * @brief
 * @version 0.1
 * @date 2022-11-25
 *
 * @copyright Copyright (c) 2022
 *
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <FreeRTOS.h>
#include <task.h>
#include <lwip/sockets.h>
#include <blog.h>
#include "lwip/udp.h"
#include "lwip/inet.h"
#include "lwip/netdb.h"
#include "lwip/netif.h"

static int port;
/**
 * @brief udp_send_task
 *
 * @param arg
 */
static void udp_send_task(void* arg)
{

    struct netif* sta_netif = netif_find("st1");



    int udp_send = socket(AF_INET, SOCK_DGRAM, 0);
    if (udp_send <0) {
        blog_error("socket creat fail");
        vTaskDelete(NULL);
    }

    int opt = 1;
    setsockopt(udp_send, SOL_SOCKET, SO_BROADCAST, &opt, sizeof(opt));

    struct sockaddr_in addr = {
      .sin_family = AF_INET,
      .sin_port = htons(port),
      .sin_addr.s_addr = sta_netif->ip_addr.addr,
    };
    char* buff = "hello recv node,I am send";
    blog_info("udp send task start >>>>>>>>>>>>>>>");
    while (1) {
        if (sendto(udp_send, buff, strlen(buff), 0, (struct sockaddr*)&addr, sizeof(addr))<0) {
            blog_error("buff send error");

        }
        vTaskDelay(2000/portTICK_PERIOD_MS);
    }
    vTaskDelete(NULL);
}
/**
 * @brief  udp_recv_task
 *
 * @param arg
 */
static void udp_recv_task(void* arg)
{
    struct netif* sta_netif = netif_find("st1");
    if (sta_netif==NULL) {
        blog_error("station netif fail");
        vTaskDelete(NULL);
        return;
    }

    char* buff = pvPortMalloc(512);
    int udp_recv = socket(AF_INET, SOCK_DGRAM, 0);
    struct sockaddr_in addr = {
       .sin_family = AF_INET,
       .sin_port = htons(port),
       .sin_addr.s_addr = INADDR_ANY,
    };
    int ret = bind(udp_recv, (struct sockaddr*)&addr, sizeof(addr));
    if (ret<0) {
        blog_error("socket bind error");
        vTaskDelete(NULL);
        return;
    }

    blog_info("udp recv start >>>>>>>>>>>>>>>>");
    while (1) {
        if (recvfrom(udp_recv, buff, sizeof(buff)*8, 0, NULL, NULL)) {
            blog_info("udp recv:%s", buff);
            memset(buff, 0, strlen(buff));
        }
        vTaskDelay(2000/portTICK_PERIOD_MS);
    }
    vTaskDelete(NULL);
}
/**
 * @brief
 *
 * @param brct_port
 * @return int
 */
int udp_broadcast_send_init(int brct_port)
{

    port = brct_port;

    xTaskCreate(udp_send_task, "udp_send", 1024, NULL, 10, NULL);

    xTaskCreate(udp_recv_task, "udp_recv", 1024, NULL, 11, NULL);
    return 0;
}
