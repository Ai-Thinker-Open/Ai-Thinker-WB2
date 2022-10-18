/**
 * @file udp_server.h
 * @author your name (you@domain.com)
 * @brief
 * @version 0.1
 * @date 2022-10-13
 *
 * @copyright Copyright (c) 2022
 *
 */

#ifndef UDP_SERVER_H
#define UDP_SERVER_H

typedef void (*udp_accpet_t)(void*);

typedef struct udp_client_msg {
    int socket_fd;
    void* ip_addr;
    int socket_id;

}udp_client_msg_t;


int udp_server_init(char* s_ip, int s_port);
int udp_server_accept(int socketfd, udp_accpet_t udp_accpet_cb);
int udp_server_receive(int socket_id, char* recv_data);
int udp_server_send(int socket_id, char* data);
int udp_server_close(int socket_id);
int udp_server_deinit(void);
#endif