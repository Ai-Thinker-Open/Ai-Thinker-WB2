/**
 * @file tcp_example.h
 * @author your name (you@domain.com)
 * @brief
 * @version 0.1
 * @date 2022-10-12
 *
 * @copyright Copyright (c) 2022
 *
 */
#ifndef TCP_EXAMPLE_H
#define TCP_EXAMPLE_H

int tcp_client_init(char* server_ip, int port);
int tcp_client_connect(int sockect_fd);
int tcp_client_send(int sockect_fd, const char* data);
int tcp_client_receive(int sockect_fd, char* data);
int tcp_client_deinit(int socket_fd);
#endif