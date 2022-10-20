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

int udp_server_init(char* s_ip, int s_port);

int udp_server_deinit(void);
#endif
