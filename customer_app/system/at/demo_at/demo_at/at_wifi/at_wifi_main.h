/**
  ******************************************************************************
  * @file    at_wifi_main.h
  * @version V1.0
  * @date
  * @brief   This file is part of AT command framework
  ******************************************************************************
  */

#ifndef AT_WIFI_MAIN_H
#define AT_WIFI_MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

int at_wifi_start(void);

int at_wifi_stop(void);

int at_wifi_set_mode(void);

int at_wifi_sta_connect(int timeout);

int at_wifi_sta_disconnect(void);

int at_wifi_sta_set_reconnect(void);

int at_wifi_ap_start(void);

int at_wifi_ap_stop(void);

int at_wifi_ap_get_sta_ip(uint8_t *mac, char *ip, int check_flag);

int at_wifi_ap_set_dhcp_range(int start, int end);

int at_wifi_sniffer_start(int min_pkt_len);

int at_wifi_sniffer_set_channel(int channel);

int at_wifi_sniffer_stop(void);

#ifdef __cplusplus
}
#endif

#endif/* AT_WIFI_MAIN_H */

