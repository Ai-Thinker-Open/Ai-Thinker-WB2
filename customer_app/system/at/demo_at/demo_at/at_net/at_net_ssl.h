/**
  ******************************************************************************
  * @file    at_net_ssl.h
  * @version V1.0
  * @date
  * @brief   This file is part of AT command framework
  ******************************************************************************
  */

#ifndef AT_NET_SSL_H
#define AT_NET_SSL_H

#ifdef __cplusplus
extern "C" {
#endif

void *mbedtls_ssl_connect(int fd, const char *ca_cert, int ca_cert_len, 
					 const char *own_cert, int own_cert_len, const char *private_cert, int private_cert_len);

void *mbedtls_ssl_accept(int fd, const char *ca_cert, int ca_cert_len, 
					 const char *srv_cert, int srv_cert_len, const char *private_cert, int private_cert_len);

int mbedtls_ssl_send(void *ssl, const char *buffer, int length);

int mbedtls_ssl_recv(void *ssl, char *buffer, int length);

int mbedtls_ssl_close(void *ssl);

#ifdef __cplusplus
}
#endif

#endif/* AT_NET_SSL_H */

