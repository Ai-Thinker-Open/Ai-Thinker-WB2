/**
 * @file udp_client.h
 * @author your name (you@domain.com)
 * @brief
 * @version 0.1
 * @date 2022-10-17
 *
 * @copyright Copyright (c) 2022
 *
 */
#ifndef UDP_CLIENT_H
#define UDP_CLIENT_H

int udp_client_init(char* server_ip, int port);
int udp_client_connect(int sockect_fd);
int udp_client_send(int sockect_fd, const char* data);
int udp_client_receive(int sockect_fd, char* data);
int udp_client_deinit(int socket_fd);
#endif