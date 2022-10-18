/**
 * @file udp_muliticast.h
 * @author your name (you@domain.com)
 * @brief
 * @version 0.1
 * @date 2022-10-18
 *
 * @copyright Copyright (c) 2022
 *
 */
#ifndef UDP_MULITICAST_H
#define UDP_MULITICAST_H
int muliticast_init(char* mutc_addr, int mutc_port);
int muliticast_deinit(int socke_fd);

int muliticast_send(int socker_fd, char* data);
#endif