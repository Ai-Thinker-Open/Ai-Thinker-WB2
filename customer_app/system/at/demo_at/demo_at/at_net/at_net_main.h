/**
  ******************************************************************************
  * @file    at_net_main.h
  * @version V1.0
  * @date
  * @brief   This file is part of AT command framework
  ******************************************************************************
  */

#ifndef AT_NET_MAIN_H
#define AT_NET_MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

#define AT_NET_CLIENT_HANDLE_MAX 5
#define AT_NET_SERVER_HANDLE_MAX 1

int at_net_start(void);

int at_net_stop(void);

int at_net_sock_is_build(void);

int at_net_client_get_valid_id(void);

int at_net_client_id_is_valid(int id);

int at_net_client_tcp_connect(int id, uint32_t remote_ip, uint16_t remote_port, int keepalive);

int at_net_client_udp_connect(int id, uint32_t remote_ipt, uint16_t remote_port, uint16_t local_port, int mode);

int at_net_client_ssl_connect(int id, uint32_t remote_ip, uint16_t remote_port, int keepalive);

int at_net_client_is_connected(int id);

int at_net_client_set_remote(int id, uint32_t ip, uint16_t port);

int at_net_client_get_info(int id, char *type, uint32_t *remote_ip, uint16_t *remote_port, uint16_t *local_port, uint8_t *tetype);

int at_net_client_get_recvsize(int id);

int at_net_client_send(int id, void * buffer, int length);

int at_net_client_close(int id);

int at_net_client_close_all(void);

int at_net_server_tcp_create(uint16_t port, int max_conn, int timeout);

int at_net_server_ssl_create(uint16_t port, int max_conn, int timeout, int ca_enable);

int at_net_server_is_created(uint16_t *port, char *type, int *ca_enable);

int at_net_server_close(void);

int at_net_sntp_start(void);

int at_net_sntp_stop(void);

int at_net_sntp_is_start(void);

#ifdef __cplusplus
}
#endif

#endif/* AT_NET_MAIN_H */

