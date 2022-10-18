/**
 * @file udp_server.c
 * @author your name (you@domain.com)
 * @brief udp server
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
#include "lwip/udp.h"
#include "lwip/inet.h"
#include "lwip/netdb.h"
#include "udp_server.h"


#define MAX_CLIENT_NUM 4
static struct sockaddr_in s_dest;
static udp_client_msg_t udp_client;
/**
 * @brief udp_server_init
 *        UDP Server Initialization Function
 * @param s_ip server ip addr,The default(NULL) is the IP address of the wifi statio
 * @param s_port server port
 * @return Network identifier:socket fd
 */
int socketfd = 0;
int udp_server_init(char* s_ip, int s_port)
{
    struct netif* s_netif;
    if (s_ip==NULL) {
        s_netif = netif_find("st1");
        if (s_netif) {
            s_dest.sin_addr.s_addr = (in_addr_t)s_netif->ip_addr.addr;
        }
        else {
            s_dest.sin_addr.s_addr = inet_addr(s_ip);
        }
    }
    s_dest.sin_family = AF_INET;
    s_dest.sin_port = htons(s_port);
    //Creat socket
    socketfd = socket(AF_INET, SOCK_DGRAM, 0);
    if (socketfd<0) return -1;
    //bind IP addr
    int ret = bind(socketfd, (struct sockaddr*)&s_dest, sizeof(s_dest));
    if (ret<0) {
        printf("Socket unable to bind: errno %d\r\n", ret);
        return -1;
    }
    printf("udp server start ip:%s:%d\r\n", inet_ntoa(s_dest.sin_addr.s_addr), ntohs(s_dest.sin_port));
    //listening connections.The maximum number of connections is 4

    return socketfd;
}
/**
 * @brief udp_server_send
 *
 * @param socket_fd
 * @param data
 * @return int
 */
int udp_server_send(int socket_id, char* data)
{
    return 0;
}
/**
 * @brief udp_server_receive
 *
 * @param socket_fd
 * @param recv_data
 * @return int
 */
int udp_server_receive(int socket_id, char* recv_data)
{
    return 0;
}
/**
 * @brief udp_server_deinit
 *
 * @return int
 */
int udp_server_deinit(void)
{
    return close(socketfd);
}