/**
 * @file LAN_communication.h
 * @author your name (you@domain.com)
 * @brief
 * @version 0.1
 * @date 2022-11-25
 *
 * @copyright Copyright (c) 2022
 *
 */
#ifndef LAN_COMMUNICATION_H
#define LAN_COMMUNICATION_H
#include <queue.h>

#define EF_TCP_IP "tcp_ip"
#define EF_TCP_PORT "tcp_port"
extern QueueHandle_t LAN_tcp_queue;
extern bool tcp_connect_status;
int LAN_communication_init(void* arg);


#endif
