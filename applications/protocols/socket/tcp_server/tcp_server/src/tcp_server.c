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


#define MAX_CLIENT_NUM 4
static struct sockaddr_in s_dest;
static tcp_client_msg_t tcp_client;
/**
 * @brief tcp_server_init
 *        TCP Server Initialization Function
 * @param s_ip server ip addr,The default(NULL) is the IP address of the wifi statio
 * @param s_port server port
 * @return Network identifier:socket fd
 */
int socketfd = 0;
int tcp_server_init(char* s_ip, int s_port)
{
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
    ret = listen(socketfd, MAX_CLIENT_NUM);
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
static int sock_fd[MAX_CLIENT_NUM];
int tcp_server_accept(int socketfd, tcp_accpet_t tcp_accpet_cb)
{
    struct sockaddr_in s_addr;
    int sock_cnt = 0;
    u32_t socket_len = sizeof(s_addr);
    while (1) {
        sock_fd[sock_cnt] = accept(socketfd, (struct sockaddr*)&s_addr, &socket_len);
        if (sock_fd[sock_cnt]<0) {
            printf("Unable to accept connection: errno %d\r\n", sock_fd[sock_cnt]);
            return -1;
        }
        else if (sock_fd[sock_cnt]>0) {
            tcp_client.ip_addr = (void*)&s_addr;
            tcp_client.socket_fd = sock_fd[sock_cnt];
            tcp_client.socket_id = sock_cnt;
            xTaskCreate(tcp_accpet_cb, "tcp_accpet_cb", 512, &tcp_client, 17, NULL);
            printf("client:%s:%d,id:%d\r\n", inet_ntoa(s_addr.sin_addr.s_addr), sock_fd[sock_cnt], sock_cnt);
            sock_cnt++;
        }
        else {
            goto _exit;
        }
    }
_exit:
    tcp_server_deinit();
    return 0;
}
/**
 * @brief tcp_server_send
 *
 * @param socket_fd
 * @param data
 * @return int
 */
int tcp_server_send(int socket_id, char* data)
{
    return write(sock_fd[socket_id], data, strlen(data));
}
/**
 * @brief tcp_server_receive
 *
 * @param socket_fd
 * @param recv_data
 * @return int
 */
int tcp_server_receive(int socket_id, char* recv_data)
{
    return read(sock_fd[socket_id], recv_data, 1024);
}
/**
 * @brief tcp_server_close
 *
 * @param socket_id
 * @return int
 */
int tcp_server_close(int socket_id)
{
    return close(sock_fd[socket_id]);
}
/**
 * @brief tcp_server_deinit
 *
 * @return int
 */
int tcp_server_deinit(void)
{
    return close(socketfd);
}