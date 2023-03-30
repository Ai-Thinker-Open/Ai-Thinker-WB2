/**
  ******************************************************************************
  * @file    at_net_main.c
  * @version V1.0
  * @date
  * @brief   This file is part of AT command framework
  ******************************************************************************
  */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <FreeRTOS.h>
#include <lwip/sys.h>
#include <lwip/netdb.h>
#include <lwip/sockets.h>
#include <bl_os_private.h>
#include <bl_rtc.h>
#include <sntp.h>
#include <wifi_mgmr_ext.h>

#include "at_main.h"
#include "at_core.h"
#include "at_base_config.h"
#include "at_net_main.h"
#include "at_net_config.h"
#include "at_net_ssl.h"
#include "at_wifi_config.h"

#define AT_NET_TASK_STACK_SIZE 2048
#define AT_NET_TASK_PRIORITY 15
#define AT_NET_RECV_BUF_SIZE 2920
#define AT_NET_PRINTF printf

#define CHECK_NET_CLIENT_ID_VALID(id) \
    if (!at_net_client_id_is_valid(id)) { \
        AT_NET_PRINTF("client id is invalid\r\n"); \
        return -1; \
    }

#define CHECK_NET_SERVER_ID_VALID(id) \
    if (!at_net_server_id_is_valid(id)) { \
        AT_NET_PRINTF("server id is invalid\r\n"); \
        return -1; \
    }

typedef enum {
    NET_CLIENT_TCP = 0,
    NET_CLIENT_UDP,
    NET_CLIENT_SSL,
} net_client_type;

typedef enum {
    NET_SERVER_TCP = 0,
    NET_SERVER_SSL,
} net_server_type;

typedef enum {
    NET_IPDINFO_CONNECTED = 0,
    NET_IPDINFO_DISCONNECTED,
    NET_IPDINFO_RECVDATA
} net_ipdinfo_type;

typedef struct {
    int valid;
    net_client_type type;
    int fd;
    void *priv;

    uint32_t remote_ip;
    uint16_t remote_port;
    uint16_t local_port;
    uint8_t udp_mode;
    uint8_t tetype;
    uint16_t recv_timeout;
    uint32_t recv_time;
    uint32_t disconnect_time;

    int keep_alive;
    int so_linger;
    int tcp_nodelay;
    int so_sndtimeo;
}at_net_client_handle;

typedef struct {
    int valid;
    net_server_type type;
    int fd;

    uint16_t port;
    uint16_t recv_timeout;
    uint8_t ca_enable;
    int8_t client_max;
    int8_t client_num;
}at_net_server_handle;

static at_net_client_handle *g_at_client_handle = NULL;
static at_net_server_handle *g_at_server_handle = NULL;
static uint8_t g_at_net_task_is_start = 0;
static char g_at_net_recv_buf[AT_NET_RECV_BUF_SIZE];
static uint8_t g_at_net_sntp_is_start = 0;
static char g_at_net_savelink_host[128];

static int ip_multicast_enable(int fd, uint32_t ip)
{
    char optval;
    /* Close multicast loop. */
    optval =0;
    if (setsockopt(fd, IPPROTO_IP, IP_MULTICAST_LOOP, (char *) &optval, sizeof(optval))) {
        AT_NET_PRINTF("sock set multicast loop failed\r\n");
        return -1;
    }

    /* Set multicast interface. */
    struct in_addr addr;	
    memset((void *)&addr, 0, sizeof(struct in_addr));
    addr.s_addr = htonl(INADDR_ANY);
    if (setsockopt(fd, IPPROTO_IP, IP_MULTICAST_IF,(char *)&addr, sizeof(addr))) {
        AT_NET_PRINTF("sock set multicast interface failed\r\n");
        return -1;
    }

    /* Setup time-to-live. */
    optval = 10; /* Hop count */
    if (setsockopt(fd, IPPROTO_IP, IP_MULTICAST_TTL, &optval, sizeof(optval))) {
        AT_NET_PRINTF("sock set multicast ttl failed\r\n");
        return -1;
    }

    /* Add membership to receiving socket. */
    struct ip_mreq mreq;
    memset(&mreq, 0, sizeof(struct ip_mreq));
    mreq.imr_interface.s_addr = htonl(INADDR_ANY);
    mreq.imr_multiaddr.s_addr = ip;  
    if (setsockopt(fd, IPPROTO_IP, IP_ADD_MEMBERSHIP, (char *) &mreq, sizeof(mreq))) {
        AT_NET_PRINTF("sock set add membership failed\r\n");
        return -1;
    }

    AT_NET_PRINTF("sock add membership\r\n");
    return 0;
}

static int so_keepalive_enable(int fd, int idle, int interval, int count)
{
    int keepAlive = 1;   // 开启keepalive属性. 缺省值: 0(关闭)  
    int keepIdle = idle;   // 如果在60秒内没有任何数据交互,则进行探测. 缺省值:7200(s)  
    int keepInterval = interval;   // 探测时发探测包的时间间隔为5秒. 缺省值:75(s)  
    int keepCount = count;   // 探测重试的次数. 全部超时则认定连接失效..缺省值:9(次)  

    if (setsockopt(fd, SOL_SOCKET, SO_KEEPALIVE, (void*)&keepAlive, sizeof(keepAlive))) {
        AT_NET_PRINTF("sock enable tcp keepalive failed\r\n");
        return -1;
    }
    if (setsockopt(fd, IPPROTO_TCP, TCP_KEEPIDLE, (void*)&keepIdle, sizeof(keepIdle))) {
        AT_NET_PRINTF("sock set tcp keepidle failed\r\n");
        return -1;
    }
    if (setsockopt(fd, IPPROTO_TCP, TCP_KEEPINTVL, (void*)&keepInterval, sizeof(keepInterval))) {
        AT_NET_PRINTF("sock set tcp keepintvl failed\r\n");
        return -1;
    }
    if (setsockopt(fd, IPPROTO_TCP, TCP_KEEPCNT, (void*)&keepCount, sizeof(keepCount))) {
        AT_NET_PRINTF("sock set tcp keepcnt failed\r\n");
        return -1;
    }

    AT_NET_PRINTF("sock enable keepalive\r\n");
    return 0;
}

static int so_keepalive_disable(int fd)
{
    int keepAlive = 0;
    if (setsockopt(fd, SOL_SOCKET, SO_KEEPALIVE, (void*)&keepAlive, sizeof(keepAlive))) {
        AT_NET_PRINTF("sock disable tcp keepalive failed\r\n");
        return -1;
    }

    AT_NET_PRINTF("sock disable keepalive\r\n");
    return 0;
}

static int so_linger_enable(int fd, int linger)
{
    struct linger so_linger;
    so_linger.l_onoff = 1;
    so_linger.l_linger = linger;
    if (setsockopt(fd, SOL_SOCKET, SO_LINGER, &so_linger, sizeof(so_linger))) {
        AT_NET_PRINTF("sock set enable linger failed\r\n");
        return -1;
    }

    AT_NET_PRINTF("sock enable so_linger\r\n");
    return 0;
}

static int so_linger_disable(int fd)
{
    struct linger so_linger;
    so_linger.l_onoff = 0;
    so_linger.l_linger = 0;
    if (setsockopt(fd, SOL_SOCKET, SO_LINGER, &so_linger, sizeof(so_linger))) {
        AT_NET_PRINTF("sock set disable linger failed\r\n");
        return -1;
    }

    AT_NET_PRINTF("sock disable so_linger\r\n");
    return 0;
}

static int so_sndtimeo_enable(int fd, int timeout_ms)
{
    struct timeval tv;
    tv.tv_sec = timeout_ms/1000;
    tv.tv_usec = (timeout_ms%1000)*10000;

    if (setsockopt(fd, SOL_SOCKET, SO_SNDTIMEO, (char*) &tv, sizeof(struct timeval))) {
        AT_NET_PRINTF("sock enable send timeout failed\r\n");
        return -1;
    }

    AT_NET_PRINTF("sock enable sndtimeo\r\n");
    return 0;
}

static int so_localport_get(int fd)
{
    struct sockaddr_in local_addr;
    int n = sizeof(local_addr);

    getsockname(fd, (struct sockaddr *) &local_addr, (socklen_t *)&n);
    return ntohs(local_addr.sin_port);
}

static int so_recvsize_get(int fd)
{
    int bytes;

    if (ioctl(fd, FIONREAD, &bytes) != 0)
        return -1;
    return bytes;
}

static int tcp_nodelay_enable(int fd)
{
    int on = 1;

    if (setsockopt(fd, IPPROTO_TCP, TCP_NODELAY, &on, sizeof(on))) {
        AT_NET_PRINTF("sock set enable tcp nodelay\r\n");
        return -1;
    }

    AT_NET_PRINTF("sock enable tcp_nodelay\r\n");
    return 0;
}

static int tcp_nodelay_disable(int fd)
{
    int on = 0;

    if (setsockopt(fd, IPPROTO_TCP, TCP_NODELAY, &on, sizeof(on))) {
        AT_NET_PRINTF("sock set disable tcp nodelay\r\n");
        return -1;
    }

    AT_NET_PRINTF("sock disable tcp_nodelay\r\n");
    return 0;
}

static uint16_t udp_localport_rand(void)
{
    uint16_t port = 50000 + (bl_rand()%10000);
    return port;
}

static int tcp_client_connect(uint32_t ip, uint16_t port)
{
    int fd;
    //struct hostent *hostinfo;
    struct sockaddr_in addr;

    ip4_addr_t ipaddr;
    ipaddr.addr = ip;
    AT_NET_PRINTF("tcp client connect %s:%d\r\n", ip4addr_ntoa(&ipaddr), port);
    /*hostinfo = gethostbyname(host);
    if (!hostinfo) {
        AT_NET_PRINTF("gethostbyname failed\r\n");
        return -1;
    }*/

    if ( (fd =  socket(AF_INET, SOCK_STREAM, 0))  < 0) {
        AT_NET_PRINTF("socket create failed\r\n");
        return -2;
    }

    memset(&addr, 0, sizeof(addr));
    addr.sin_family = AF_INET;
    addr.sin_len = sizeof(addr);
    addr.sin_port = htons(port);
    //addr.sin_addr.s_addr = ((struct in_addr *) hostinfo->h_addr)->s_addr;
    addr.sin_addr.s_addr = ip;

    int on= 1;
    setsockopt(fd, SOL_SOCKET, SO_REUSEADDR, &on, sizeof(on) );

    if (connect(fd, (struct sockaddr *)&addr, sizeof(addr))< 0) {
        AT_NET_PRINTF("socket connect failed\r\n");
        close(fd);
        return -3;
    }

    return fd;
}

static int tcp_client_close(int fd)
{
    AT_NET_PRINTF("tcp client close\r\n");
    if (fd >= 0) {
        close(fd);
    }

    return 0;
}

static int tcp_client_send(int fd, void *buffer, int length)
{
    if (fd >= 0) {
        return send(fd, buffer, length, 0);
    }
    return 0;
}

static int udp_client_connect(uint16_t port)
{
    int fd;	
    struct sockaddr_in addr;	
    unsigned char loop= 0;
    int so_broadcast=1;

    AT_NET_PRINTF("udp client create port %d\r\n", port);
    if ( (fd = socket(AF_INET, SOCK_DGRAM, 0)) < 0) {		
        return -1;	
    }

    setsockopt(fd, SOL_SOCKET,SO_BROADCAST, &so_broadcast, sizeof(so_broadcast));
    setsockopt(fd, IPPROTO_IP, IP_MULTICAST_LOOP, &loop, sizeof(loop));

    memset(&addr, 0,  sizeof(addr));	
    addr.sin_family = AF_INET;	
    addr.sin_port = htons(port);
    addr.sin_addr.s_addr = htonl(INADDR_ANY);	
    if(bind(fd, (struct sockaddr*)&addr, sizeof(addr)) < 0) {
        close(fd);
        return -2;
    }

    return fd;
}

static int udp_client_close(int fd)
{
    AT_NET_PRINTF("udp client close\r\n");
    if (fd >= 0) {
        close(fd);
    }

    return 0;
}

static int udp_client_send(int fd, void *buffer, int length, uint32_t ip, uint16_t port)
{
    struct sockaddr_in toaddr;

    if (fd >= 0) {
        memset(&toaddr, 0, sizeof(toaddr));	
        toaddr.sin_family = AF_INET;
        toaddr.sin_addr.s_addr = ip;
        toaddr.sin_port = htons(port);
    
        return sendto(fd, buffer, length, 0, (struct sockaddr *)&toaddr, sizeof(struct sockaddr_in));
    }
    return 0;
}

static int ssl_client_connect(uint32_t ip, uint16_t port, void **priv)
{
    int fd;
    void *handle;

    ip4_addr_t ipaddr;
    ipaddr.addr = ip;
    AT_NET_PRINTF("ssl client connect %s:%d\r\n", ip4addr_ntoa(&ipaddr), port);

    fd = tcp_client_connect(ip, port);
    if (fd < 0)
        return -1;

    handle = mbedtls_ssl_connect(fd, NULL, 0, NULL, 0, NULL, 0);
    if (handle == NULL) {
        close(fd);
        return -1;
    }

    *priv = handle;
    return fd;
}

static int ssl_client_close(int fd, void *priv)
{
    AT_NET_PRINTF("ssl client close\r\n");
    if (priv)
        mbedtls_ssl_close(priv);
    if (fd >= 0)
        close(fd);
    
    return 0;
}

static int ssl_client_send(int fd, void *buffer, int length, void *priv)
{
    if (fd >= 0 && priv)
        return mbedtls_ssl_send(priv, buffer, length);

    return 0;
}

static int tcp_server_create(uint16_t port, int listen)
{	
    int fd;	
    struct sockaddr_in servaddr;	
    int on;

    AT_NET_PRINTF("tcp server create port %d\r\n", port);
    if ( (fd = socket(AF_INET, SOCK_STREAM, 0)) < 0) {		
        return -1;	
    }

    memset(&servaddr, 0, sizeof(servaddr));	
    servaddr.sin_family = AF_INET;	
    servaddr.sin_addr.s_addr = htonl(INADDR_ANY);	
    servaddr.sin_port = htons(port);	

    on= 1;
    setsockopt(fd, SOL_SOCKET, SO_REUSEADDR, &on, sizeof(on));
    if (bind(fd, (struct sockaddr*)&servaddr, sizeof(servaddr)) < 0) {		
        close(fd);
        return -2;	
    }

    if (listen(fd, listen) < 0) {		
        close(fd);
        return -3;	
    }

    return fd;
}

static int tcp_server_close(int fd)
{
    AT_NET_PRINTF("tcp server close\r\n");
    if (fd >= 0) {
        close(fd);
    }

    return 0;
}

static void net_lock(void)
{

}

static void net_unlock(void)
{

}

static int net_is_active(void)
{
    int state;

    wifi_mgmr_state_get(&state);
    if (at_wifi_config->wifi_mode == WIFI_STATION_MODE) {
        if (state == WIFI_STATE_CONNECTED_IP_GOT || state == WIFI_STATE_WITH_AP_CONNECTED_IP_GOT)
            return 1;
    }
    else if (at_wifi_config->wifi_mode == WIFI_SOFTAP_MODE) {
        if (WIFI_STATE_AP_IS_ENABLED(state))
            return 1;
    }
    else if (at_wifi_config->wifi_mode == WIFI_AP_STA_MODE) {
         if (state == WIFI_STATE_CONNECTED_IP_GOT || state == WIFI_STATE_WITH_AP_CONNECTED_IP_GOT || WIFI_STATE_AP_IS_ENABLED(state))
            return 1;
    }
    
    return 0;
}

static int net_socket_ipd(net_ipdinfo_type ipd, int id, void *buffer, int length, uint32_t ip, uint16_t port)
{
    if (ipd == NET_IPDINFO_CONNECTED) {
        if (at_get_work_mode() != AT_WORK_MODE_THROUGHPUT ||  at_base_config->sysmsg_cfg.bit.link_state_msg) {
            if (at_base_config->sysmsg_cfg.bit.link_msg_type) {
                char type[8];
                uint16_t local_port;
                uint8_t tetype;
                ip4_addr_t ipaddr;

                ipaddr.addr = ip;
                at_net_client_get_info(id, type, NULL, NULL, &local_port, &tetype);
                at_response_string("+LINK_CONN:%d,%d,\"%s\",%d,\"%s\",%d,%d\r\n", 0, id, type, tetype, ip4addr_ntoa(&ipaddr), port, local_port);
            }
            else {
                if (at_net_config->mux_mode == NET_LINK_SINGLE)
                    at_response_string("CONNECT\r\n");
                else
                    at_response_string("%d,CONNECT\r\n", id);
            }
        }
    }
    else if (ipd == NET_IPDINFO_DISCONNECTED) {
        if (at_get_work_mode() != AT_WORK_MODE_THROUGHPUT ||  at_base_config->sysmsg_cfg.bit.link_state_msg) {     
            if (at_net_config->mux_mode == NET_LINK_SINGLE)
                at_response_string("CLOSED\r\n");
            else
                at_response_string("%d,CLOSED\r\n", id);
        }
    }
    else if (ipd == NET_IPDINFO_RECVDATA) {
        if (at_get_work_mode() != AT_WORK_MODE_THROUGHPUT) {
            if (at_net_config->ipd_info == NET_IPDINFO_DISABLE_IPPORT) {
                if (at_net_config->mux_mode == NET_LINK_SINGLE)
                    at_response_string("\r\n+IPD,%d:", length);
                else
                    at_response_string("\r\n+IPD,%d,%d:", id, length);
            }
            else {
                ip4_addr_t ipaddr;
                ipaddr.addr = ip;

                if (at_net_config->mux_mode == NET_LINK_SINGLE)
                    at_response_string("\r\n+IPD,%d,\"%s\",%d:", length, ip4addr_ntoa(&ipaddr), port);
                else
                    at_response_string("\r\n+IPD,%d,%d,\"%s\",%d:", id, length, ip4addr_ntoa(&ipaddr), port);
            }

            AT_CMD_DATA_SEND(buffer, length);
            at_response_string("\r\n");
        }
        else {
            AT_CMD_DATA_SEND(buffer, length);
        }
    }

    return 0;
}

static int net_socket_setopt(int fd, int keepalive, int so_linger, int tcp_nodelay, int sndtimeo)
{
    if (fd < 0)
        return -1;

    if (keepalive)
        so_keepalive_enable(fd, keepalive, 1, 3);
    else
        so_keepalive_disable(fd);

    if (so_linger>= 0)
        so_linger_enable(fd, so_linger);
    else
        so_linger_disable(fd);

    if (tcp_nodelay)
        tcp_nodelay_enable(fd);
    else
        tcp_nodelay_disable(fd);

    if (sndtimeo)
        so_sndtimeo_enable(fd, sndtimeo);

    return 0;
}

static int net_socket_connect(int id, net_client_type type, uint32_t ip, uint16_t port, int keepalive, uint16_t local_port, int mode)
{
    int fd;
    void *priv = NULL;
    int keep_alive = 0;
    int so_linger = -1;
    int tcp_nodelay = 0;
    int so_sndtimeo = 0;

    if (g_at_client_handle[id].valid) {
        AT_NET_PRINTF("already connected\r\n");
        return -1;
    }

    if (type == NET_CLIENT_TCP) {
        fd = tcp_client_connect(ip, port);
        if (fd >= 0) {
            keep_alive = keepalive;
            so_linger = at_net_config->tcp_opt[id].so_linger;
            tcp_nodelay = at_net_config->tcp_opt[id].tcp_nodelay;
            so_sndtimeo = at_net_config->tcp_opt[id].so_sndtimeo;
            local_port = so_localport_get(fd);

            net_socket_setopt(fd, keep_alive, so_linger, tcp_nodelay, so_sndtimeo);    
        }
    }
    else if (type == NET_CLIENT_UDP) {
        if (local_port == 0)
            local_port = udp_localport_rand();
        fd = udp_client_connect(local_port);
        if (fd >= 0 && (htonl(ip) > 0xE0000000 && htonl(ip) <= 0xEFFFFFFF))
            ip_multicast_enable(fd, ip);
    }
    else if (type == NET_CLIENT_SSL) {
        fd = ssl_client_connect(ip, port, &priv);
        if (fd >= 0) {
            if (keepalive) {
                so_keepalive_enable(fd, keepalive, 1, 3);
                keep_alive = keepalive;
            }

            local_port = so_localport_get(fd);
        }
    }
    else {
        AT_NET_PRINTF("type error\r\n");
        return -1;
    }

    if (fd < 0) {
        AT_NET_PRINTF("connect failed\r\n");
        return -1;
    }

    net_lock();
    g_at_client_handle[id].valid = 1;
    g_at_client_handle[id].type = type;
    g_at_client_handle[id].fd = fd;
    g_at_client_handle[id].priv = priv;
    g_at_client_handle[id].remote_ip = ip;
    g_at_client_handle[id].remote_port = port;
    g_at_client_handle[id].local_port = local_port;
    g_at_client_handle[id].udp_mode = mode;
    g_at_client_handle[id].tetype = 0;
    g_at_client_handle[id].recv_timeout = 0;
    g_at_client_handle[id].recv_time = 0;
    g_at_client_handle[id].keep_alive = keep_alive;
    g_at_client_handle[id].so_linger = so_linger;
    g_at_client_handle[id].tcp_nodelay = tcp_nodelay;
    g_at_client_handle[id].so_sndtimeo = so_sndtimeo;
    net_unlock();

    net_socket_ipd(NET_IPDINFO_CONNECTED, id, NULL, 0, g_at_client_handle[id].remote_ip, g_at_client_handle[id].remote_port);
    return 0;
}

static int net_socket_close(int id)
{
    int valid = g_at_client_handle[id].valid;
    net_client_type type = g_at_client_handle[id].type;
    int fd = g_at_client_handle[id].fd;
    void *priv = g_at_client_handle[id].priv;
    int servid = 0;
    
    if (!valid) {
        AT_NET_PRINTF("socket is not inited\r\n");
        return -1;
    }

    net_lock();
    if (at_get_work_mode() != AT_WORK_MODE_THROUGHPUT)
        g_at_client_handle[id].valid = 0;
    g_at_client_handle[id].fd = -1;
    g_at_client_handle[id].priv = NULL;
    g_at_client_handle[id].disconnect_time = bl_os_get_time_ms();
    
    if (g_at_client_handle[id].tetype && g_at_server_handle[servid].valid) {
        g_at_server_handle[servid].client_num--;
        if (g_at_server_handle[servid].client_num < 0)
            g_at_server_handle[servid].client_num = 0;
    }
    net_unlock();

    if (type == NET_CLIENT_TCP)
       tcp_client_close(fd);
    else if (type == NET_CLIENT_UDP)
       udp_client_close(fd);
    else if (type == NET_CLIENT_SSL)
       ssl_client_close(fd, priv);

    net_socket_ipd(NET_IPDINFO_DISCONNECTED, id, NULL, 0, 0, 0);
    return 0;
}

static int net_socket_send(int id, void *buffer, int length)
{
    int ret = 0;

    int valid = g_at_client_handle[id].valid;
    int type = g_at_client_handle[id].type;
    int fd = g_at_client_handle[id].fd;   
    void *priv = g_at_client_handle[id].priv;
    uint32_t remote_ip = g_at_client_handle[id].remote_ip;
    uint16_t remote_port = g_at_client_handle[id].remote_port;

    if (!valid)
        return -1;

    if (type == NET_CLIENT_TCP)
       ret = tcp_client_send(fd, buffer, length);
    else if (type == NET_CLIENT_UDP)
    {
        if (at_wifi_config->wifi_mode == WIFI_SOFTAP_MODE)
        {
            if (remote_ip == 0xffffffff)
            {
	            remote_ip = (at_wifi_config->ap_ip.ip|(~(at_wifi_config->ap_ip.netmask)));
	        }
	        ret = udp_client_send(fd, buffer, length, remote_ip, remote_port);
        }
        else if(at_wifi_config->wifi_mode == WIFI_AP_STA_MODE)
        {
            ret = 0;
            if (remote_ip == 0xffffffff)
            {
                uint32_t tmp_remote_ip = (at_wifi_config->ap_ip.ip|(~(at_wifi_config->ap_ip.netmask)));
	            udp_client_send(fd, buffer, length, tmp_remote_ip, remote_port);
	        }
            udp_client_send(fd, buffer, length, remote_ip, remote_port);
        }
        else
        {
            ret = udp_client_send(fd, buffer, length, remote_ip, remote_port);
        }
    }
    else if (type == NET_CLIENT_SSL)
       ret = ssl_client_send(fd, buffer, length, priv);

    return ret;
}

static int net_socket_recv(int id)
{
    int num = 0;
    struct sockaddr_in remote_addr;
    int len = sizeof(remote_addr);

    int type = g_at_client_handle[id].type;
    int fd = g_at_client_handle[id].fd;
    void *priv = g_at_client_handle[id].priv;
    uint32_t remote_ip = g_at_client_handle[id].remote_ip;
    uint16_t remote_port = g_at_client_handle[id].remote_port;
    int udp_mode = g_at_client_handle[id].udp_mode;
    char *recv_buf = g_at_net_recv_buf;

    if (type == NET_CLIENT_TCP) {
        num = recv(fd, recv_buf, AT_NET_RECV_BUF_SIZE, 0);
        //num = so_recvsize_get(fd);
        //at_response_string("\r\n+IPD,%d:", num);
    }
    else if (type == NET_CLIENT_UDP) {
        num = recvfrom(fd, recv_buf, AT_NET_RECV_BUF_SIZE, 0, (struct sockaddr *)&remote_addr, (socklen_t *)(&len));

        //update remote addr
        if (udp_mode == 1 || udp_mode == 2) {
            if (remote_ip != remote_addr.sin_addr.s_addr || remote_port != ntohs(remote_addr.sin_port)) {
                net_lock();
                g_at_client_handle[id].remote_ip = remote_addr.sin_addr.s_addr;
                g_at_client_handle[id].remote_port = ntohs(remote_addr.sin_port);
                if (udp_mode == 1)
                    g_at_client_handle[id].udp_mode = 0;
                net_unlock();
            }
        }
    }
    else if (type == NET_CLIENT_SSL) {
        num = mbedtls_ssl_recv(priv, recv_buf, AT_NET_RECV_BUF_SIZE);
    }
    else
        return 0;

    if (num <= 0) {
        net_socket_close(id);
    }
    else {
        net_socket_ipd(NET_IPDINFO_RECVDATA, id, recv_buf, num, g_at_client_handle[id].remote_ip, g_at_client_handle[id].remote_port);

        net_lock();
        g_at_client_handle[id].recv_time = bl_os_get_time_ms();
        net_unlock();
    }

    return num;
}

const char ca_cert[] = 
"-----BEGIN CERTIFICATE-----\r\n" \
"MIIDLTCCAhWgAwIBAgIJAIkH5/W9RO2GMA0GCSqGSIb3DQEBBQUAMDcxCzAJBgNV\r\n" \
"BAYTAkMxMQ8wDQYDVQQKDAZFU1AgQzExFzAVBgNVBAMMDkVTUCBSb290IENBIEMx\r\n" \
"MB4XDTE5MDYyMTA4MDAyM1oXDTI5MDYxODA4MDAyM1owNzELMAkGA1UEBhMCQzEx\r\n" \
"DzANBgNVBAoMBkVTUCBDMTEXMBUGA1UEAwwORVNQIFJvb3QgQ0EgQzEwggEiMA0G\r\n" \
"CSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDExt+jvbY8ZZlwgJ7BrNPuwG7FrM4H\r\n" \
"FSfbWAYRwrXUFYQre8x2ugNpm7pyLXWW8s4nX04++IzkJYDSmpxeNXZkrxPF0MrV\r\n" \
"56FrPBhvcBvTyjFi34B54llS+NI3fLx9/tCogFx7r+d/XlQlpE71r8n4HSZLpAtD\r\n" \
"WvUKqCwD71RDa3wmzqpr4RUiGLwer44AY7/wo5FM9adB1HOFt8y8izbsjmOTiEmK\r\n" \
"2/54fL0tfEvXGohfar/cKdKIhciqjvoj8Vv51l7cidIjipNVBfszsYEsw6+H8fcC\r\n" \
"ZsRXiRCGJERP/ElPlFuQewUQRT3wepGfFEEyZHrpXw2xkkV7aiIJV43xAgMBAAGj\r\n" \
"PDA6MAwGA1UdEwQFMAMBAf8wCwYDVR0PBAQDAgGmMB0GA1UdDgQWBBRIEHTyskPy\r\n" \
"GTAGN0mAOypCgqQd3DANBgkqhkiG9w0BAQUFAAOCAQEAgk0T8iRB6EfCxRKFCm2p\r\n" \
"TedDEqkf74QrOWBJWwkOixV4cH+5UseLFPtQYY75zK9tIEcQdVzwZyY2NMuF+uC+\r\n" \
"lOH72dqy0F46GMp3vnZmq5/ZFnqdcGd7S589cPMTc1ZzxuX5q1Af2CXiFIQIMcYh\r\n" \
"D2EfiRZCZvCmjVmXYKEau9l0zNSQ+drHRIq5bJhqEKRZ8fhd55okqlZ0YeBFfEx7\r\n" \
"6gZv71LQqIjEU44b0KGFsgGwabjXPefiVjG+FuXuuM8c/2n77uQo6BdhJeFaVy4+\r\n" \
"SlaqSAycNF0EiPzX2C0dl7z+BOR+XKhDTyRZ6MHg8nBtuW/lrZl4C+f4iVaVP0Wx\r\n" \
"Vw==\r\n" \
"-----END CERTIFICATE-----\r\n";

const char server_cert[] = 
"-----BEGIN CERTIFICATE-----\r\n" \
"MIIDLTCCAhWgAwIBAgIJAPgqhiqX1DNNMA0GCSqGSIb3DQEBCwUAMDcxCzAJBgNV\r\n" \
"BAYTAlMxMQ8wDQYDVQQKDAZFU1AgUzExFzAVBgNVBAMMDkVTUCBSb290IENBIFMx\r\n" \
"MB4XDTE5MDYyMTA4MDAyMloXDTI5MDYxODA4MDAyMlowNzELMAkGA1UEBhMCUzIx\r\n" \
"DzANBgNVBAoMBkVTUCBTMjEXMBUGA1UEAwwORVNQIFJvb3QgQ0EgUzIwggEiMA0G\r\n" \
"CSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDJQ79YocJlOmZRPAYLSmzDRjl0wypl\r\n" \
"IlTUEP7zo1XhOx1DPC5vbTLMmMNEsUF8J3VG8WroYkKfwe26HBz4EfGMnDip+YOZ\r\n" \
"UqpOSJWDw39dbYtkB3qsSa6ZLCpA1up7GbZpmgriWwQqMo5gpRL0uZjT5l5GUMNb\r\n" \
"5ljiLkmiq230cTUsBfozOxScUBsNIQk0NsZiXRTAQZp8+dMaarX1ZmN55V3NGiiV\r\n" \
"U6RYkN6kBdrI0pZYUhOd3rPnx7C7B8n3oYUbppG2CNEP219jwY47SUnLIFPIE+ot\r\n" \
"2/itnIhQUcdVBBktaEkgER+WnveemEGSagOYwRyvHqogBUT/hzQvcI+/AgMBAAGj\r\n" \
"PDA6MAwGA1UdEwQFMAMBAf8wCwYDVR0PBAQDAgGmMB0GA1UdDgQWBBRFiQ1STxIw\r\n" \
"6gxMzTLdYdlDQW3uMDANBgkqhkiG9w0BAQsFAAOCAQEAG5BFCC7D3IrLvPCulVX3\r\n" \
"jkWq5OZIjxSWaYyOritPY/1oC4LY5WM4QornFt7GEt1d9wADYsmh39y/UPLuK0Cm\r\n" \
"+msEhxSJ0D7Wx05rbuIfpmpsZD/GBJEZlrykjZz77i1Y/jEVc7fGnA49KCWFx7Ix\r\n" \
"SSKpdoF5MT0PZeZUijVF28xR2GBRUlbQ6RtCMawsAO/Spq0WfUJHCxbi1C3khNKc\r\n" \
"H0ltyOHkox8HGQkJv6G610ig3cxKdbxD0JwR5uh7fOG41DwC4sN2y2FTvi+xurZB\r\n" \
"6ozGuZlMeFS7mFLqU5uQfi730FBJMA05DCpDhAvbFk8mzJdwBMWbqKHsGW0DlNXN\r\n" \
"zA==\r\n" \
"-----END CERTIFICATE-----\r\n";

const char server_key[] = 
"-----BEGIN RSA PRIVATE KEY-----\r\n" \
"MIIEowIBAAKCAQEAyUO/WKHCZTpmUTwGC0psw0Y5dMMqZSJU1BD+86NV4TsdQzwu\r\n" \
"b20yzJjDRLFBfCd1RvFq6GJCn8Htuhwc+BHxjJw4qfmDmVKqTkiVg8N/XW2LZAd6\r\n" \
"rEmumSwqQNbqexm2aZoK4lsEKjKOYKUS9LmY0+ZeRlDDW+ZY4i5Joqtt9HE1LAX6\r\n" \
"MzsUnFAbDSEJNDbGYl0UwEGafPnTGmq19WZjeeVdzRoolVOkWJDepAXayNKWWFIT\r\n" \
"nd6z58ewuwfJ96GFG6aRtgjRD9tfY8GOO0lJyyBTyBPqLdv4rZyIUFHHVQQZLWhJ\r\n" \
"IBEflp73nphBkmoDmMEcrx6qIAVE/4c0L3CPvwIDAQABAoIBADeOvwRNauccrt/f\r\n" \
"zN9TBSEGgpfLxCk0x+veYTKKNQu+kL5dn4fcwfged1DACY6nKcWSoOtTLIcDNod4\r\n" \
"eTq1YVNqUG4DVaN+YUrI2JUN41u8AI11TxS+JjdcLLHHYeTnXSZbgoOnkke/uvPM\r\n" \
"vaXWkex0nDOW2cbFmGWfV25TGkAufj/ZWjA6PTdCI+MaiE0ghKUNLo0eRuYs5+Jg\r\n" \
"jTNsqewHbEVi8WdMwoF3UTXTk0Vn0CL98FdBNMwfjCHphoGSCNJJEMKaCJkltPq4\r\n" \
"0t+2ptMusrc8ONZtVXsmjjUvoD27tX7IQrLCO5y6PEuLUKFHHFVXLtSGxYh5vi3r\r\n" \
"EIFSOnkCgYEA9hJ+xPXUYI79oaDVmv7up5Cm7z3aJZSDLWPDlF2xkf56xjZu0zb1\r\n" \
"+qFuYVy+cHEqMOwvK48IADFZRmg2ZHfFZ79mA8gXXeoYCdmyHSnrjgb20pw+rhKM\r\n" \
"tUAP/4cAwuWdFU1LJ+KumI2PPBVv9L0ifJlwErVc8TWuEVZ67TathfUCgYEA0WJ3\r\n" \
"ZrAzGonUOEizIpd50iDqU2G0Twxv8GWT0k6Burtt3vBhrqCwFEuMsd/eanvz/uAL\r\n" \
"JIylCEld+5aBaTEBK3bM6hVbEVI/moguWjw0/GxOqmvhO8lC9B7igkCfjC11/1q7\r\n" \
"n/V42h1XbwpQ89wBMJY9jRJXk8QvvYyk4ugjemMCgYAVJ23ifMevLVu8g1kZpATc\r\n" \
"PuE6+/Q++s90HXl4zb0wMdJYK+HHIphu3WXh1NlCTVg1MHi1o+wqKBPmq5rRdEJy\r\n" \
"MtAQTylDF5bNcfuP6kSnxw18+ZWh3VJfWoyFiROVraudYzGs0h30W2cO4UDop0HJ\r\n" \
"uF8cHJ9K1TSLpQWYUvUD6QKBgH8OGRYe5WO9LyHYO5tJ/4oanxZpu1gcW/CsMr7z\r\n" \
"FJWTFmCpzRyCNVabYYyuI/DJto16tkg/cAVPP9Biy7RhICyXslB5FQG1vxKugDIR\r\n" \
"RrXFoxaWz93PiulHtHsFa8tL6sZA8IloEyWHmH6w696OKcqp4D+yWaI48h87MPLf\r\n" \
"mmexAoGBAJLAgFuuJuYvTfDV6J4s3Hcl6BfXuK/a7pCm/hu45AChxE3LOcA0wfFZ\r\n" \
"41gBOZFp/qt9ZA3t46ENY7HdyiAukOskJ0ysz6g994qtX1mYyauEjYClXHd51JYW\r\n" \
"rla3cPUYj9A2XvViLfxe3NpgK9LcWkuVuVvjtK+DBHGLFxwjMvf3\r\n" \
"-----END RSA PRIVATE KEY-----\r\n";


static int net_socket_accept(int fd, int is_ssl, uint16_t port, uint16_t timeout, uint8_t num, uint8_t max_conn)
{
    int sock;
    struct sockaddr_in remote_addr;
    socklen_t len = sizeof(struct sockaddr_in);
    int id;
    void *priv = NULL;
    net_client_type type = NET_CLIENT_TCP;

    sock = accept(fd, (struct sockaddr*)&remote_addr, &len);
    if (sock >= 0) {
        if (num+1 > max_conn) {
            close(sock);
            return 0;
        }

        id = at_net_client_get_valid_id();
        if (id < 0) {
            close(sock);
            return 0;
        }

        if (is_ssl) {
            priv = mbedtls_ssl_accept(sock, ca_cert, sizeof(ca_cert), server_cert, sizeof(server_cert), server_key, sizeof(server_key));
            //priv = mbedtls_ssl_accept(sock, NULL, 0, NULL, 0, NULL, 0);
            if (priv == NULL) {
                close(sock);
                return 0;
            }
            type = NET_CLIENT_SSL;
        }

        net_lock();
        g_at_client_handle[id].valid = 1;
        g_at_client_handle[id].type = type;
        g_at_client_handle[id].fd = sock;
        g_at_client_handle[id].priv = priv;
        g_at_client_handle[id].remote_ip = remote_addr.sin_addr.s_addr;
        g_at_client_handle[id].remote_port = ntohs(remote_addr.sin_port);
        g_at_client_handle[id].local_port = port;
        g_at_client_handle[id].udp_mode = 0;
        g_at_client_handle[id].tetype = 1;
        g_at_client_handle[id].recv_timeout = timeout;
        g_at_client_handle[id].recv_time = bl_os_get_time_ms();
        g_at_client_handle[id].keep_alive = 0;
        g_at_client_handle[id].so_linger = -1;
        g_at_client_handle[id].tcp_nodelay = 0;
        g_at_client_handle[id].so_sndtimeo = 0;
        net_unlock();

        net_socket_ipd(NET_IPDINFO_CONNECTED, id, NULL, 0, g_at_client_handle[id].remote_ip, g_at_client_handle[id].remote_port);
        return 1;
    }

    return 0;
}

static void net_poll_reconnect(void)
{
    int id = 0;
    int fd;
    void *priv;
    uint32_t ip;
    uint16_t port;
    uint16_t local_port;
    struct hostent *hostinfo;

    if (g_at_client_handle[id].valid && g_at_client_handle[id].fd < 0) {
        if (at_get_work_mode() != AT_WORK_MODE_THROUGHPUT) {
            net_lock();
            g_at_client_handle[id].valid = 0;
            net_unlock();
            return;
        }

        if (bl_os_get_time_ms() - g_at_client_handle[id].disconnect_time <= at_net_config->reconn_intv*100)
            return;
        g_at_client_handle[id].disconnect_time = bl_os_get_time_ms();

        if (!net_is_active())
            return;

        if (g_at_client_handle[id].remote_ip == 0) {
            hostinfo = gethostbyname(g_at_net_savelink_host);
            if (!hostinfo) {
                return;
            }
            ip = (uint32_t)((struct in_addr *) hostinfo->h_addr)->s_addr;
        }
        else
            ip = g_at_client_handle[id].remote_ip;
        port = g_at_client_handle[id].remote_port;
        local_port = g_at_client_handle[id].local_port;
    
        if (g_at_client_handle[id].type == NET_CLIENT_TCP) {
            fd = tcp_client_connect(ip, port);
            if (fd >= 0) {
                net_socket_setopt(fd, g_at_client_handle[id].keep_alive, g_at_client_handle[id].so_linger, g_at_client_handle[id].tcp_nodelay, g_at_client_handle[id].so_sndtimeo);
                local_port = so_localport_get(fd);
            }
        }
        else if (g_at_client_handle[id].type == NET_CLIENT_UDP) {
            if (local_port == 0)
                local_port = udp_localport_rand();
            fd = udp_client_connect(local_port);
            if (fd >= 0 && (htonl(ip) > 0xE0000000 && htonl(ip) <= 0xEFFFFFFF))
                ip_multicast_enable(fd, ip);
        }
        else if (g_at_client_handle[id].type == NET_CLIENT_SSL) {
            fd = ssl_client_connect(ip, port, &priv);
            if (fd >= 0) {
                if (g_at_client_handle[id].keep_alive)
                    so_keepalive_enable(fd, g_at_client_handle[id].keep_alive, 1, 3);
                local_port = so_localport_get(fd);
            }
        }
        else
            return;

        if (fd < 0)
            return;

        net_lock();
        g_at_client_handle[id].fd = fd;
        g_at_client_handle[id].priv = priv;
        g_at_client_handle[id].remote_ip = ip;
        g_at_client_handle[id].remote_port = port;
        g_at_client_handle[id].local_port = local_port;
        net_unlock();
    }
}

static void net_poll_recv(void)
{
    fd_set fdR;
    struct timeval timeout;
    int maxfd = -1;
    int i;
    int is_ssl = 0;

    FD_ZERO(&fdR);
    for (i = 0; i < AT_NET_CLIENT_HANDLE_MAX; i++) {
        if (g_at_client_handle[i].valid && g_at_client_handle[i].fd >= 0) {
            FD_SET(g_at_client_handle[i].fd, &fdR);
            if (g_at_client_handle[i].fd > maxfd)
                maxfd = g_at_client_handle[i].fd;
        }
    }
    for (i = 0; i < AT_NET_SERVER_HANDLE_MAX; i++) {
        if (g_at_server_handle[i].valid) {
            FD_SET(g_at_server_handle[i].fd, &fdR);
            if (g_at_server_handle[i].fd > maxfd)
                maxfd = g_at_server_handle[i].fd;
        }
    }

    if (maxfd == -1) {
        vTaskDelay(100);
        return;
    }

    timeout.tv_sec= 0;	
    timeout.tv_usec= 10000;
    if(select(maxfd+1, &fdR, NULL, NULL, &timeout) > 0) {
         for (i = 0; i < AT_NET_CLIENT_HANDLE_MAX; i++) {
            if (g_at_client_handle[i].valid && g_at_client_handle[i].fd >= 0 && FD_ISSET(g_at_client_handle[i].fd, &fdR)) {
                net_socket_recv(i);
            }
        }
        for (i = 0; i < AT_NET_SERVER_HANDLE_MAX; i++) {
            if (g_at_server_handle[i].valid && FD_ISSET(g_at_server_handle[i].fd, &fdR)) {
                if (g_at_server_handle[i].type == NET_SERVER_SSL)
                    is_ssl = 1;
                if (net_socket_accept(g_at_server_handle[i].fd, is_ssl, 
                            g_at_server_handle[i].port, g_at_server_handle[i].recv_timeout,
                            g_at_server_handle[i].client_num, g_at_server_handle[i].client_max) ) {
                    g_at_server_handle[i].client_num++;
                }
            }
        }
    }
}

static void net_poll_timeout(void)
{
    int i;

    for (i = 0; i < AT_NET_CLIENT_HANDLE_MAX; i++) {
        if (g_at_client_handle[i].valid && g_at_client_handle[i].recv_timeout > 0) {
            if ((bl_os_get_time_ms() - g_at_client_handle[i].recv_time)/1000 > g_at_client_handle[i].recv_timeout)
                net_socket_close(i);
        }
    }
}

static void net_init_save_link(void)
{
    net_client_type type;
    int id;

    if (at_net_config->trans_link.enable) {
        if (strcmp(at_net_config->trans_link.type, "TCP") == 0)
            type = NET_CLIENT_TCP;
        else if (strcmp(at_net_config->trans_link.type, "UDP") == 0)
            type = NET_CLIENT_UDP;
        else if (strcmp(at_net_config->trans_link.type, "SSL") == 0)
            type = NET_CLIENT_SSL;
        else
            return;

        at_set_work_mode(AT_WORK_MODE_CMD_THROUGHPUT);
        at_net_config->work_mode = NET_MODE_TRANS;

        id = at_net_client_get_valid_id();
        net_lock();
        g_at_client_handle[id].valid = 1;
        g_at_client_handle[id].type = type;
        g_at_client_handle[id].fd = -1;
        g_at_client_handle[id].remote_ip = 0;
        strcpy(g_at_net_savelink_host, at_net_config->trans_link.remote_host);
        g_at_client_handle[id].remote_port = at_net_config->trans_link.remote_port;
        g_at_client_handle[id].local_port = at_net_config->trans_link.local_port;
        g_at_client_handle[id].udp_mode = 0;
        g_at_client_handle[id].tetype = 0;
        g_at_client_handle[id].recv_timeout = 0;
        g_at_client_handle[id].recv_time = 0;
        g_at_client_handle[id].keep_alive = at_net_config->trans_link.keep_alive;
        g_at_client_handle[id].so_linger = -1;
        g_at_client_handle[id].tcp_nodelay = 0;
        g_at_client_handle[id].so_sndtimeo = 0;
        net_unlock();
    }
}

static void net_main_task(void *pvParameters)
{
    g_at_net_task_is_start = 1;

    net_init_save_link();

    while(1) {
        net_poll_reconnect();

        net_poll_recv();

        net_poll_timeout();

        if (g_at_net_task_is_start == 2)
            break;
    }

    g_at_net_task_is_start = 0;
    vTaskDelete(NULL);
}

static int at_net_init(void)
{
    if (g_at_client_handle)
        return 0;

    g_at_client_handle = (at_net_client_handle *)pvPortMalloc(sizeof(at_net_client_handle) * AT_NET_CLIENT_HANDLE_MAX);
    if (!g_at_client_handle) {
        AT_NET_PRINTF("at_net malloc failed!\r\n");
        return -1;
    }

    g_at_server_handle = (at_net_server_handle *)pvPortMalloc(sizeof(at_net_server_handle) * AT_NET_SERVER_HANDLE_MAX);
    if (!g_at_server_handle) {
        AT_NET_PRINTF("at_net malloc failed!\r\n");
        vPortFree(g_at_client_handle);
        g_at_client_handle = NULL;
        return -1;
    }

    memset(g_at_client_handle, 0, sizeof(at_net_client_handle) * AT_NET_CLIENT_HANDLE_MAX);
    memset(g_at_server_handle, 0, sizeof(at_net_server_handle) * AT_NET_SERVER_HANDLE_MAX);
    return 0;
}

static int at_net_deinit(void)
{
    if (g_at_client_handle) {
        vPortFree(g_at_client_handle);
        g_at_client_handle = NULL;

        vPortFree(g_at_server_handle);
        g_at_server_handle = NULL;
    }
    return 0;
}

int at_net_sock_is_build(void)
{
    int i;

    for (i = 0; i < AT_NET_CLIENT_HANDLE_MAX; i++) {
        if (g_at_client_handle[i].valid)
            return 1;
    }

    for (i = 0; i < AT_NET_SERVER_HANDLE_MAX; i++) {
        if (g_at_server_handle[i].valid)
            return 1;
    }

    return 0;
}

int at_net_client_get_valid_id(void)
{
    int i;

    for (i = 0; i < AT_NET_CLIENT_HANDLE_MAX; i++) {
        if (g_at_client_handle[i].valid == 0)
            return i;
    }
    return -1;
}

int at_net_client_id_is_valid(int id)
{
    if (id < 0 || id >= AT_NET_CLIENT_HANDLE_MAX)
        return 0;
    else
        return 1;
}

int at_net_client_tcp_connect(int id, uint32_t remote_ip, uint16_t remote_port, int keepalive)
{
    CHECK_NET_CLIENT_ID_VALID(id);

    return net_socket_connect(id, NET_CLIENT_TCP, remote_ip, remote_port, keepalive, 0, 0);
}

int at_net_client_udp_connect(int id, uint32_t remote_ip, uint16_t remote_port, uint16_t local_port, int mode)
{
    CHECK_NET_CLIENT_ID_VALID(id);

    return net_socket_connect(id, NET_CLIENT_UDP, remote_ip, remote_port, 0, local_port, mode);
}

int at_net_client_ssl_connect(int id, uint32_t remote_ip, uint16_t remote_port, int keepalive)
{
    CHECK_NET_CLIENT_ID_VALID(id);

    return net_socket_connect(id, NET_CLIENT_SSL, remote_ip, remote_port, keepalive, 0, 0);
}

int at_net_client_is_connected(int id)
{
    CHECK_NET_CLIENT_ID_VALID(id);

    if (g_at_client_handle[id].valid && g_at_client_handle[id].fd >= 0)
        return 1;

    return 0;
}

int at_net_client_set_remote(int id, uint32_t ip, uint16_t port)
{
    CHECK_NET_CLIENT_ID_VALID(id);

    if (!g_at_client_handle[id].valid)
        return -1;

    if (g_at_client_handle[id].type != NET_CLIENT_UDP)
        return -1;

    g_at_client_handle[id].remote_ip = ip;
    g_at_client_handle[id].remote_port = port;
    AT_NET_PRINTF("net set id: %d remote_ip: 0x%x remote_port: %d\r\n", id, ip, port);
    return 0;
}

int at_net_client_get_info(int id, char *type, uint32_t *remote_ip, uint16_t *remote_port, uint16_t *local_port, uint8_t *tetype)
{
    CHECK_NET_CLIENT_ID_VALID(id);

    if (g_at_client_handle[id].valid) {
        if (type) {
            if (g_at_client_handle[id].type == NET_CLIENT_TCP)
                strcpy(type, "TCP");
            else if (g_at_client_handle[id].type == NET_CLIENT_UDP)
                strcpy(type, "UDP");
            if (g_at_client_handle[id].type == NET_CLIENT_SSL)
                strcpy(type, "SSL");
        }
        if (remote_ip)
            *remote_ip = g_at_client_handle[id].remote_ip;
        if (remote_port)
            *remote_port = g_at_client_handle[id].remote_port;
        if (local_port)
            *local_port = g_at_client_handle[id].local_port;
        if (tetype)
            *tetype = g_at_client_handle[id].tetype;
        return 0;
    }
    return -1;
}

int at_net_client_get_recvsize(int id)
{
    CHECK_NET_CLIENT_ID_VALID(id);

    if (g_at_client_handle[id].valid && g_at_client_handle[id].fd >= 0)
        return so_recvsize_get(g_at_client_handle[id].fd);
    else
        return -1;
}

int at_net_client_send(int id, void * buffer, int length)
{
    CHECK_NET_CLIENT_ID_VALID(id);

    return net_socket_send(id, buffer, length);
}

int at_net_client_close(int id)
{
    CHECK_NET_CLIENT_ID_VALID(id);

    return net_socket_close(id);
}

int at_net_client_close_all(void)
{
    int i;

    for (i = 0; i < AT_NET_CLIENT_HANDLE_MAX; i++) {
        if (g_at_client_handle[i].valid)
            net_socket_close(i);
    }

    return 0;
}

int at_net_server_id_is_valid(int id)
{
    if (id < 0 || id >= AT_NET_SERVER_HANDLE_MAX)
        return 0;
    else
        return 1;
}

int at_net_server_tcp_create(uint16_t port, int max_conn,  int timeout)
{
    int id = 0;
    int fd;

    if (g_at_server_handle[id].valid) {
        AT_NET_PRINTF("already create\r\n");
        return -1;
    }

    fd = tcp_server_create(port, max_conn);
    if (fd < 0) {
        AT_NET_PRINTF("create failed\r\n");
        return -1;
    }

    net_lock();
    g_at_server_handle[id].valid = 1;
    g_at_server_handle[id].type = NET_SERVER_TCP;
    g_at_server_handle[id].fd = fd;
    g_at_server_handle[id].port = port;
    g_at_server_handle[id].recv_timeout = timeout;
    g_at_server_handle[id].ca_enable = 0;
    g_at_server_handle[id].client_max = max_conn;
    g_at_server_handle[id].client_num = 0;
    net_unlock();
    return 0;
}

int at_net_server_ssl_create(uint16_t port, int max_conn,  int timeout, int ca_enable)
{
    int id = 0;
    int fd;

    if (g_at_server_handle[id].valid) {
        AT_NET_PRINTF("already create\r\n");
        return -1;
    }

    fd = tcp_server_create(port, max_conn);
    if (fd < 0) {
        AT_NET_PRINTF("create failed\r\n");
        return -1;
    }

    net_lock();
    g_at_server_handle[id].valid = 1;
    g_at_server_handle[id].type = NET_SERVER_SSL;
    g_at_server_handle[id].fd = fd;
    g_at_server_handle[id].port = port;
    g_at_server_handle[id].recv_timeout = timeout;
    g_at_server_handle[id].ca_enable = 0;
    g_at_server_handle[id].client_max = max_conn;
    g_at_server_handle[id].client_num = 0;
    net_unlock();
    return 0;
}

int at_net_server_is_created(uint16_t *port, char *type, int *ca_enable)
{
    int id = 0;
    CHECK_NET_SERVER_ID_VALID(id);

    if (!g_at_server_handle[id].valid)
        return 0;

    if (port) {
        *port = g_at_server_handle[id].port;
    }
    if (type) {
        if ( g_at_server_handle[id].type == NET_SERVER_TCP)
            strcpy(type, "TCP");
        else if ( g_at_server_handle[id].type == NET_SERVER_SSL)
            strcpy(type, "SSL");
    }
    if (ca_enable) {
        *ca_enable = g_at_server_handle[id].ca_enable;
    }
    return 1;
}

int at_net_server_close(void)
{
    int id = 0;
    int valid = g_at_server_handle[id].valid;
    net_server_type type = g_at_server_handle[id].type;
    int fd = g_at_server_handle[id].fd;;
    
    if (!valid) {
        AT_NET_PRINTF("socket is not inited\r\n");
        return -1;
    }

    net_lock();
    g_at_server_handle[id].valid = 0;
    net_unlock();

    if (type == NET_SERVER_TCP || type == NET_SERVER_SSL)
       tcp_server_close(fd);

    return 0;
}

static void at_net_sntp_sync(void)
{
    uint64_t time_stamp, time_stamp_ms;
    uint32_t seconds = 0, frags = 0;

    sntp_get_time(&seconds, &frags);
    time_stamp = seconds;
    time_stamp_ms = time_stamp*1000 + frags/1000;
    at_base_config->systime_stamp = time_stamp_ms - bl_rtc_get_timestamp_ms();
}

int at_net_sntp_start(void)
{
    sntp_setoperatingmode(SNTP_OPMODE_POLL);
    if (at_net_config->sntp_cfg.servernum >= 1)
        sntp_setservername(0, at_net_config->sntp_cfg.server1);
    else
        sntp_setservername(0, NULL);
    if (at_net_config->sntp_cfg.servernum >= 2)
        sntp_setservername(1, at_net_config->sntp_cfg.server2);
    else
        sntp_setservername(1, NULL);
    if (at_net_config->sntp_cfg.servernum >= 3)
        sntp_setservername(2, at_net_config->sntp_cfg.server3);
    else
        sntp_setservername(2, NULL);
    sntp_settimesynccb(at_net_sntp_sync);
    sntp_setupdatedelay(at_net_config->sntp_intv.interval);
    sntp_init();
    g_at_net_sntp_is_start = 1;
    return 0;
}

int at_net_sntp_stop(void)
{
    sntp_stop();
    g_at_net_sntp_is_start = 0;
    return 0;
}

int at_net_sntp_is_start(void)
{
    return g_at_net_sntp_is_start;
}

int at_net_start(void)
{
    int ret;

    at_net_init();

    ret = xTaskCreate(net_main_task, (char*)"net_main_task", AT_NET_TASK_STACK_SIZE, NULL, AT_NET_TASK_PRIORITY, NULL);
    if (ret != pdPASS) {
        AT_NET_PRINTF("ERROR: create net_main_task failed, ret = %d\r\n", ret);
        return -1;
    }
    return 0;
}

int at_net_stop(void)
{
    at_net_client_close_all();
    if (g_at_net_task_is_start) {
        g_at_net_task_is_start = 2;
        while(g_at_net_task_is_start != 0)
            vTaskDelay(100);
    }
    at_net_deinit();
    return 0;
}

