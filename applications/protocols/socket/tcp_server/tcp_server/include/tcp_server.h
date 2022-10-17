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

typedef struct tcp_client_msg {
    int socket_fd;
    void* ip_addr;
    int socket_id;
}tcp_client_msg_t;


int tcp_server_init(char* s_ip, int s_port);
int tcp_server_accept(int socketfd, tcp_accpet_t tcp_accpet_cb);
int tcp_server_receive(int socket_id, char* recv_data);
int tcp_server_send(int socket_id, char* data);
int tcp_server_close(int socket_id);
int tcp_server_deinit(void);
#endif