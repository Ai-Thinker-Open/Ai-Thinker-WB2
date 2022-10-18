/**
 * @file udp_multicast.c
 * @author your name (you@domain.com)
 * @brief
 * @version 0.1
 * @date 2022-10-18
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
#include "lwip/udp.h"
#include "lwip/inet.h"
#include "lwip/netdb.h"

#define MAX_CLIENT_NUM 4
static struct sockaddr_in s_dest;
/**
 * @brief multicast_receiver_init
 *      UDP multicast initialization
 * @param mutc_addr multicast addr
 * @param mutc_port multicast port
 * @return success: socket fd  fail:-1
 */
int multicast_init(char* mutc_addr, int mutc_port)
{
    int socke_fd = socket(PF_INET, SOCK_DGRAM, 0);
    if (socke_fd<0) return -1;

    s_dest.sin_addr.s_addr = htonl(INADDR_ANY);
    s_dest.sin_family = PF_INET;
    s_dest.sin_port = htons(mutc_port);
    int ret = bind(socke_fd, (struct sockaddr*)&s_dest, sizeof(s_dest));
    if (ret<0) return -1;

    struct netif* sta_addr = netif_find("st1");
    struct in_addr iaddr = { 0 };

    uint8_t ttl = 1;
    ret = setsockopt(socke_fd, IPPROTO_IP, IP_MULTICAST_TTL, &ttl, sizeof(uint8_t));
    if (ret<0) return -1;

    struct ip_mreq imreq = { 0 };
    if (mutc_addr!=NULL) {
        ret = inet_aton(mutc_addr, &imreq.imr_multiaddr.s_addr);
        if (ret<0) return -1;
    }
    else {
        inet_addr_from_ip4addr(&iaddr, &sta_addr->ip_addr);
    }
    if (!IP_MULTICAST(ntohl(imreq.imr_multiaddr.s_addr))) {
        printf("Configured IPV4 multicast address '%s' is not a valid multicast address. This will probably not work.\r\n", mutc_addr);
    }
    //set ip addr
    ret = setsockopt(socke_fd, IPPROTO_IP, IP_MULTICAST_IF, &iaddr, sizeof(iaddr));
    if (ret<0) return -1;
    ret = setsockopt(socke_fd, IPPROTO_IP, IP_ADD_MEMBERSHIP, &imreq, sizeof(imreq));
    return socke_fd;
}
/**
 * @brief muliticast_deinit
 *      UDP multicast de initialization
 * @param socke_fd socket fd
 * @return success:0  fail:-1
 */
int multicast_deinit(int socke_fd)
{
    memset(&s_dest, 0, sizeof(s_dest));
    return close(socke_fd);
}




