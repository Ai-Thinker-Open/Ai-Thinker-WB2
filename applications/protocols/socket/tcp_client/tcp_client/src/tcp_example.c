/**
 * @file tcp_example.c
 * @author your name (you@domain.com)
 * @brief TCP client program file
 * @version 0.1
 * @date 2022-10-12
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
#define TCP_CLIENT_BUFF 2048
static struct sockaddr_in dest;
/**
 * @brief tcp_client_init
 *        Initialize TCP client funtion
 * @param server_ip server ip address
 * @param port  server port
 * @return int socket
 */
int tcp_client_init(char* server_ip, int port)
{
    int socket_fd = 0;

    if ((socket_fd = socket(AF_INET, SOCK_STREAM, 0))<0) {
        blog_error("socket creat fail\r\n");
        return -1;
    }
    memset(&dest, 0, sizeof(dest));
    // inet_aton

    dest.sin_family = AF_INET;
    dest.sin_port = htons(port);
    dest.sin_addr.s_addr = inet_addr(server_ip);

    printf("Server ip Address : %s port:%d\r\n", inet_ntoa(dest.sin_addr.s_addr), ntohs(dest.sin_port));
    return socket_fd;
}
/**
 * @brief tcp_client_connect
 *      TCP client initiates connection
 * @param sockect_fd sockect network identifier
 * @return int success：0 fail:-1
 */
int tcp_client_connect(int sockect_fd)
{
    if (connect(sockect_fd, (struct sockaddr*)&dest, sizeof(dest))!=0) {
        printf("tcp client connect servet:%s fail\r\n", inet_ntoa(dest.sin_addr.s_addr));
        return -1;
    }
    else return 0;
}
/**
 * @brief tcp_client_send
 *      TCP client sends data to server
 * @param sockect_fd sockect network identifier
 * @param data data you want to send
 * @return success：0  fail:-1
 */
int tcp_client_send(int sockect_fd, const char* data)
{

    return write(sockect_fd, data, strlen(data));
}
/**
 * @brief tcp_client_receive
 *      TCP client receives server message
 * @param sockect_fd sockect network identifier
 * @param data Cache address of the message
 * @return success：0 or >0  fail:-1
 */
int tcp_client_receive(int sockect_fd, char* data)
{
    return read(sockect_fd, data, TCP_CLIENT_BUFF);
}
/**
 * @brief tcp_client_deinit
 *      close TCP client
 * @param socket_fd sockect network identifier
 * @return success：0  fail:-1
 */
int tcp_client_deinit(int socket_fd)
{

    shutdown(socket_fd, SHUT_RDWR);
    return close(socket_fd);
}
