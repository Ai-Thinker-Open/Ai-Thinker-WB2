/**
  ******************************************************************************
  * @file    at_wifi_config.c
  * @version V1.0
  * @date
  * @brief   This file is part of AT command framework
  ******************************************************************************
  */

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <FreeRTOS.h>
#ifdef EASYFLASH_ENABLE
#include <easyflash.h>
#endif
#include <wifi_mgmr_ext.h>
#include "at_config.h"
#include "at_wifi_config.h"

wifi_config *at_wifi_config = NULL;

int at_wifi_config_init(void)
{
    at_wifi_config = (wifi_config *)pvPortMalloc(sizeof(wifi_config));
    if (at_wifi_config == NULL) {
        return -1;
    }

    memset(at_wifi_config, 0, sizeof(wifi_config));
    if (!at_config_read(AT_CONFIG_KEY_WIFI_AP_MAC, &at_wifi_config->ap_mac.addr, sizeof(wifi_mac_addr))) {
        wifi_mgmr_ap_mac_get(at_wifi_config->ap_mac.addr);
    }
    if (!at_config_read(AT_CONFIG_KEY_WIFI_STA_MAC, &at_wifi_config->sta_mac.addr, sizeof(wifi_mac_addr))) {
        wifi_mgmr_sta_mac_get(at_wifi_config->sta_mac.addr);
    }
    if (!at_config_read(AT_CONFIG_KEY_WIFI_MODE, &at_wifi_config->wifi_mode, sizeof(wifi_work_mode))) {
        at_wifi_config->wifi_mode = WIFI_SOFTAP_MODE;
    }
    at_wifi_config->switch_mode_auto_conn = WIFI_AUTOCONN_ENABLE;
    if (!at_config_read(AT_CONFIG_KEY_WIFI_STA_INFO, &at_wifi_config->sta_info, sizeof(wifi_sta_info))) {
        memset(&at_wifi_config->sta_info, 0, sizeof(wifi_sta_info));
        at_wifi_config->sta_info.pmf = 1;
        at_wifi_config->sta_info.jap_timeout = 15;
    }
    if (!at_config_read(AT_CONFIG_KEY_WIFI_RECONN_CFG, &at_wifi_config->reconn_cfg, sizeof(wifi_sta_reconnect))) {
        at_wifi_config->reconn_cfg.interval_second = 0;
        at_wifi_config->reconn_cfg.repeat_count = 0;
    }
    at_wifi_config->scan_option.reserved = 0;
    at_wifi_config->scan_option.rssi_filter = -100;
    at_wifi_config->scan_option.print_mask = 0x7FF;
    at_wifi_config->scan_option.authmode_mask = 0xFFFF;
    if (!at_config_read(AT_CONFIG_KEY_WIFI_AP_INFO, &at_wifi_config->ap_info, sizeof(wifi_ap_info))) {
        sprintf(at_wifi_config->ap_info.ssid, "BL_%02X%02X%02X", at_wifi_config->ap_mac.addr[3], at_wifi_config->ap_mac.addr[4], at_wifi_config->ap_mac.addr[5]);
        strcpy(at_wifi_config->ap_info.pwd, "");
        at_wifi_config->ap_info.channel = 1;
        at_wifi_config->ap_info.ecn = 0;
        at_wifi_config->ap_info.max_conn = 10;
        at_wifi_config->ap_info.ssid_hidden = 0;
    }
    if (!at_config_read(AT_CONFIG_KEY_WIFI_DHCP_STATE, &at_wifi_config->dhcp_state, sizeof(wifi_dhcp_state))) {
        at_wifi_config->dhcp_state.bit.sta_dhcp = 1;
        at_wifi_config->dhcp_state.bit.ap_dhcp = 1;
    }
    if (!at_config_read(AT_CONFIG_KEY_WIFI_DHCP_SERVER, &at_wifi_config->dhcp_server, sizeof(wifi_dhcp_server))) {
        at_wifi_config->dhcp_server.lease_time = 120;
        at_wifi_config->dhcp_server.start = 2;
        at_wifi_config->dhcp_server.end = 101;
    }
    if (!at_config_read(AT_CONFIG_KEY_WIFI_AUTO_CONN, &at_wifi_config->auto_conn, sizeof(wifi_auto_conn))) {
        at_wifi_config->auto_conn = WIFI_AUTOCONN_ENABLE;
    }
    if (!at_config_read(AT_CONFIG_KEY_WIFI_AP_PROTO, &at_wifi_config->ap_proto, sizeof(wifi_proto))) {
        at_wifi_config->ap_proto.byte = 0x07;
    }
    if (!at_config_read(AT_CONFIG_KEY_WIFI_STA_PROTO, &at_wifi_config->sta_proto, sizeof(wifi_proto))) {
        at_wifi_config->sta_proto.byte = 0x07;
    }
    if (!at_config_read(AT_CONFIG_KEY_WIFI_AP_IP, &at_wifi_config->ap_ip, sizeof(wifi_ip))) {
        at_wifi_config->ap_ip.ip = IP_SET_ADDR(192, 168, 4 , 1);
        at_wifi_config->ap_ip.gateway = IP_SET_ADDR(192, 168, 4 , 1);
        at_wifi_config->ap_ip.netmask = IP_SET_ADDR(255, 255, 255, 0);
    }
    if (!at_config_read(AT_CONFIG_KEY_WIFI_STA_IP, &at_wifi_config->sta_ip, sizeof(wifi_ip))) {
        at_wifi_config->sta_ip.ip = IP_SET_ADDR(0, 0, 0, 0);
        at_wifi_config->sta_ip.gateway = IP_SET_ADDR(0, 0, 0, 0);
        at_wifi_config->sta_ip.netmask = IP_SET_ADDR(0, 0, 0, 0);
    }
    if (!at_config_read(AT_CONFIG_KEY_WIFI_COUNTRY_CODE, &at_wifi_config->wifi_country, sizeof(wifi_country_code))) {
        at_wifi_config->wifi_country.country_policy = 1;
        at_wifi_config->wifi_country.country_code = WIFI_COUNTRY_CODE_CN;
        at_wifi_config->wifi_country.start_channel = 1;
        at_wifi_config->wifi_country.total_channel_count = 13;
    }
    strcpy(at_wifi_config->hostname, "bouffalolab");

    return 0;
}

int at_wifi_config_save(const char *key)
{
    if (strcmp(key, AT_CONFIG_KEY_WIFI_AP_MAC) == 0)
        return at_config_write(key, &at_wifi_config->ap_mac.addr, sizeof(wifi_mac_addr));
    else if (strcmp(key, AT_CONFIG_KEY_WIFI_STA_MAC) == 0)
        return at_config_write(key, &at_wifi_config->sta_mac.addr, sizeof(wifi_mac_addr));
    else if (strcmp(key, AT_CONFIG_KEY_WIFI_MODE) == 0)
        return at_config_write(key, &at_wifi_config->wifi_mode, sizeof(wifi_work_mode));
    else if (strcmp(key, AT_CONFIG_KEY_WIFI_STA_INFO) == 0)
        return at_config_write(key, &at_wifi_config->sta_info, sizeof(wifi_sta_info));
    else if (strcmp(key, AT_CONFIG_KEY_WIFI_RECONN_CFG) == 0)
        return at_config_write(key, &at_wifi_config->reconn_cfg, sizeof(wifi_sta_reconnect));
    else if (strcmp(key, AT_CONFIG_KEY_WIFI_AP_INFO) == 0)
        return at_config_write(key, &at_wifi_config->ap_info, sizeof(wifi_ap_info));
    else if (strcmp(key, AT_CONFIG_KEY_WIFI_DHCP_STATE) == 0)
        return at_config_write(key, &at_wifi_config->dhcp_state, sizeof(wifi_dhcp_state));
    else if (strcmp(key, AT_CONFIG_KEY_WIFI_DHCP_SERVER) == 0)
        return at_config_write(key, &at_wifi_config->dhcp_server, sizeof(wifi_dhcp_server));
    else if (strcmp(key, AT_CONFIG_KEY_WIFI_AUTO_CONN) == 0)
        return at_config_write(key, &at_wifi_config->auto_conn, sizeof(wifi_auto_conn));
    else if (strcmp(key, AT_CONFIG_KEY_WIFI_AP_PROTO) == 0)
        return at_config_write(key, &at_wifi_config->ap_proto, sizeof(wifi_proto));
    else if (strcmp(key, AT_CONFIG_KEY_WIFI_STA_PROTO) == 0)
        return at_config_write(key, &at_wifi_config->sta_proto, sizeof(wifi_proto));
    else if (strcmp(key, AT_CONFIG_KEY_WIFI_AP_IP) == 0)
        return at_config_write(key, &at_wifi_config->ap_ip, sizeof(wifi_ip));
    else if (strcmp(key, AT_CONFIG_KEY_WIFI_STA_IP) == 0)
        return at_config_write(key, &at_wifi_config->sta_ip, sizeof(wifi_ip));
    else if (strcmp(key, AT_CONFIG_KEY_WIFI_COUNTRY_CODE) == 0)
        return at_config_write(key, &at_wifi_config->wifi_country, sizeof(wifi_country_code));
    else
        return -1;
}

int at_wifi_config_default(void)
{
    ef_del_env(AT_CONFIG_KEY_WIFI_AP_MAC);
    ef_del_env(AT_CONFIG_KEY_WIFI_STA_MAC);
    ef_del_env(AT_CONFIG_KEY_WIFI_MODE);
    ef_del_env(AT_CONFIG_KEY_WIFI_STA_INFO);
    ef_del_env(AT_CONFIG_KEY_WIFI_RECONN_CFG);
    ef_del_env(AT_CONFIG_KEY_WIFI_AP_INFO);
    ef_del_env(AT_CONFIG_KEY_WIFI_DHCP_STATE);
    ef_del_env(AT_CONFIG_KEY_WIFI_DHCP_SERVER);
    ef_del_env(AT_CONFIG_KEY_WIFI_AUTO_CONN);
    ef_del_env(AT_CONFIG_KEY_WIFI_AP_PROTO);
    ef_del_env(AT_CONFIG_KEY_WIFI_STA_PROTO);
    ef_del_env(AT_CONFIG_KEY_WIFI_AP_IP);
    ef_del_env(AT_CONFIG_KEY_WIFI_STA_IP);
    ef_del_env(AT_CONFIG_KEY_WIFI_COUNTRY_CODE); 
    return 0;
}

