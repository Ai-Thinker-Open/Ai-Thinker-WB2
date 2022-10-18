/**
 * @file udp_multicast.h
 * @author your name (you@domain.com)
 * @brief
 * @version 0.1
 * @date 2022-10-18
 *
 * @copyright Copyright (c) 2022
 *
 */
#ifndef UDP_MULTICAST_H
#define UDP_MULTICAST_H
int multicast_init(char* mutc_addr, int mutc_port);
int multicast_deinit(int socke_fd);
#endif