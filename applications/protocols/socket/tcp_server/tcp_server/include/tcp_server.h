/**
 * @file tcp_server.h
 * @author your name (you@domain.com)
 * @brief
 * @version 0.1
 * @date 2022-10-13
 *
 * @copyright Copyright (c) 2022
 *
 */

#ifndef TCP_SERVER_H
#define TCP_SERVER_H

typedef void (*tcp_accpet_t)(void*);

int tcp_server_init(char* s_ip, int s_port);
int tcp_server_accept(int socketfd, tcp_accpet_t tcp_accpet_cb);

#endif