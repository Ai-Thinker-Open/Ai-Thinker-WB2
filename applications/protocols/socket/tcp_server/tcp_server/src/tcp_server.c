/**
 * @file tcp_server.c
 * @author your name (you@domain.com)
 * @brief TCP server
 * @version 0.1
 * @date 2022-10-13
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
#include "lwip/tcp.h"
#include "lwip/inet.h"
#include "lwip/netdb.h"
#include "tcp_server.h"
static struct sockaddr_in s_dest;
/**
 * @brief tcp_server_init
 *        TCP Server Initialization Function
 * @param s_ip server ip addr,The default(NULL) is the IP address of the wifi statio
 * @param s_port server port
 * @return Network identifier:socket fd
 */
int tcp_server_init(char* s_ip, int s_port)
{
    int socketfd = 0;
    struct netif* s_netif;
    if (s_ip==NULL) {
        s_netif = netif_find("st1");
        if (s_netif) {
            s_dest.sin_addr.s_addr = s_netif->ip_addr.addr;
        }
        else {
            s_dest.sin_addr.s_addr = inet_addr(s_ip);
        }
    }
    s_dest.sin_family = AF_INET;
    s_dest.sin_port = htons(s_port);
    //Creat socket
    socketfd = socket(AF_INET, SOCK_STREAM, 0);
    if (socketfd<0) return -1;
    //bind IP addr
    int ret = bind(socketfd, (struct sockaddr*)&s_dest, sizeof(s_dest));
    if (ret<0) {
        printf("Socket unable to bind: errno %d\r\n", ret);
        return -1;
    }
    printf("tcp server start ip:%s:%d\r\n", inet_ntoa(s_dest.sin_addr.s_addr), ntohs(s_dest.sin_port));
    //listening connections.The maximum number of connections is 4
    ret = listen(socketfd, 4);
    if (ret!=0) {
        printf("Error occured during listen: errno %d\r\n", ret);
        return -1;
    }
    printf("tcp server listening.....\r\n");
    return socketfd;
}
/**
 * @brief tcp_server_accept
 *
 * @param socketfd
 * @param tcp_accpet_cb
 * @return int
 */
static int sock_fd;
int tcp_server_accept(int socketfd, tcp_accpet_t tcp_accpet_cb)
{
    struct sockaddr_in s_addr;

    u32_t socket_len = sizeof(s_addr);
    while (1) {
        sock_fd = accept(socketfd, (struct sockaddr*)&s_addr, &socket_len);
        if (sock_fd<0) {
            printf("Unable to accept connection: errno %d\r\n", sock_fd);
            return -1;
        }
        else if (sock_fd>0) {

            xTaskCreate(tcp_accpet_cb, "tcp_accpet_cb", 512, &s_addr, 17, NULL);
            printf("client:%s:%d\r\n", inet_ntoa(s_addr.sin_addr.s_addr), sock_fd);
        }
        else {
            goto _exit;
        }
    }
_exit:
    return 0;
}
/**
 * @brief tcp_server_send
 *
 * @param socket_fd
 * @param data
 * @return int
 */
int tcp_server_send(int socket_fd, char* data)
{
    return write(sock_fd, data, strlen(data));
}
/**
 * @brief
 *
 * @param socket_fd
 * @param recv_data
 * @return int
 */
int tcp_server_receive(int socket_fd, char* recv_data)
{

}