/**
 * @file LAN_comnunication.c
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
#include "easy_connect_wifi.h"
#include "data_handle.h"
#include "LAN_communication.h"
#include "wechat_mqtt.h"
QueueHandle_t LAN_tcp_queue;

bool tcp_connect_status = false;

char tcp_ip_addr[16] = { 0 };
int tcp_port = 0;
int socket_fd;
/**
 * @brief tcp_reconnect_task
 *
 * @param arg
 */
static void tcp_reconnect_task(void* arg)
{
    if ((socket_fd = socket(AF_INET, SOCK_STREAM, 0))<0) {
        blog_error("socket creat fail\r\n");
        return;
    }
    static struct sockaddr_in dest;
    memset(&dest, 0, sizeof(dest));
    // inet_aton
    dest.sin_family = AF_INET;
    dest.sin_port = htons(tcp_port);
    dest.sin_addr.s_addr = inet_addr(tcp_ip_addr);
    while (1) {

        if (connect(socket_fd, (struct sockaddr*)&dest, sizeof(dest))!=0) {
            blog_error("tcp client connect servet:%s:%d fail", inet_ntoa(dest.sin_addr.s_addr), ntohs(dest.sin_port));
            closesocket(socket_fd);
            vTaskDelay(1000/portTICK_PERIOD_MS);
            socket_fd = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
            if (socket_fd<0) blog_error("socket creat fail ret:%d", socket_fd);
            tcp_connect_status = false;
        }
        else {
            blog_info("tcp connect success:%s:%d", inet_ntoa(dest.sin_addr.s_addr), ntohs(dest.sin_port));
            tcp_connect_status = true;

            xEventGroupSetBits(wifi_event_handle, TCP_CLIENT_CONNECT);
            xEventGroupWaitBits(wifi_event_handle, TCP_CLINENT_DISCONNECT, pdTRUE, pdFALSE, portMAX_DELAY);
        }

    }
}
/**
 * @brief
 *
 * @param arg
 */
static void tcp_client_send(void* arg)
{
    BaseType_t ret;
    while (1) {
        char* tcp_buff = pvPortMalloc(256);
        memset(tcp_buff, 0, 256);
        ret = xQueueReceive(LAN_tcp_queue, tcp_buff, portMAX_DELAY);
        if (ret==pdTRUE) {
            blog_info("QueueReceiv recv:%s", tcp_buff);
            if (write(socket_fd, tcp_buff, strlen(tcp_buff))<0) {
                blog_error("tcp client no connect");
                xEventGroupSetBits(wifi_event_handle, TCP_CLINENT_DISCONNECT);
                xEventGroupWaitBits(wifi_event_handle, TCP_CLIENT_CONNECT, pdTRUE, pdFALSE, portMAX_DELAY);
            }
        }
        vPortFree(tcp_buff);
    }
}
/**
 * @brief node_tcp_client_task
 *
 * @param arg
 */
static void node_tcp_client_task(void* arg)
{
    LAN_tcp_queue = xQueueCreate(2, 256);
    BaseType_t ret;

    xTaskCreate(tcp_reconnect_task, "tcp client reconnect", 1024, &socket_fd, 13, NULL);

    xEventGroupWaitBits(wifi_event_handle, TCP_CLIENT_CONNECT, pdTRUE, pdFALSE, portMAX_DELAY);
    xTaskCreate(tcp_client_send, "tcp client task", 1024, &socket_fd, 14, NULL);
    while (1) {
        char* tcp_buff = pvPortMalloc(256);
        memset(tcp_buff, 0, 256);
        if (tcp_connect_status) {
            ret = read(socket_fd, tcp_buff, 256);
            if (ret>0&&(*tcp_buff!='\0')) {
                blog_info("tcp recv:%s", tcp_buff);
                xQueueSend(wechat_recv_queue, tcp_buff, 1000/portTICK_PERIOD_MS);
            }
        }
        vPortFree(tcp_buff);
    }

    vTaskDelete(NULL);
}
/**
 * @brief LAN_communication_init
 *
 * @param port
 * @return int
 */
int LAN_communication_init(void* arg)
{
    char* buff = pvPortMalloc(512);
    int port = *(int*)arg;
    int udp_recv = socket(AF_INET, SOCK_DGRAM, 0);
    struct sockaddr_in from_addr;
    int socklen = sizeof(from_addr);
    struct sockaddr_in addr = {
       .sin_family = AF_INET,
       .sin_port = htons(port),
       .sin_addr.s_addr = INADDR_ANY,
    };
    int ret = bind(udp_recv, (struct sockaddr*)&addr, sizeof(addr));
    if (ret<0) {
        blog_error("socket bind error");
        return -1;
    }
    blog_info("udp recv start >>>>>>>>>>>>>>>>");
    size_t recv_len = 0;
    while (1) {
        recv_len = recvfrom(udp_recv, buff, 512, 0, (struct sockaddr*)&from_addr, (socklen_t*)&socklen);
        if (recv_len) {
            blog_info("udp recv:%.*s", recv_len, buff);
            if (get_udp_broadcast_data(buff, tcp_ip_addr, &tcp_port)==0) {
                buff = inet_ntoa(from_addr.sin_addr.s_addr);
                blog_info("udp recv ip addr:%s,port:%d", tcp_ip_addr, tcp_port);
                shutdown(udp_recv, SHUT_RDWR);
                break;
            }
            memset(buff, 0, strlen(buff));
        }
        vTaskDelay(50/portTICK_PERIOD_MS);
    }
    xTaskCreate(node_tcp_client_task, "tcp_task", 1024*2, NULL, 12, NULL);

    vTaskDelete(NULL);
    return 0;
}
