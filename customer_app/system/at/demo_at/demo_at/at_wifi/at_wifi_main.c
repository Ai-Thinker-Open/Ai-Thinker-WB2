/**
  ******************************************************************************
  * @file    at_wifi_main.c
  * @version V1.0
  * @date
  * @brief   This file is part of AT command framework
  ******************************************************************************
  */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include <aos/kernel.h>
#include <aos/yloop.h>
#include <FreeRTOS.h>
#include <task.h>
#include <queue.h>
#include <hal_wifi.h>
#include <wifi_mgmr_ext.h>
#include "../wifi_mgmr_api.h"
#include <bl60x_fw_api.h>

#include "at_main.h"
#include "at_core.h"
#include "at_port.h"
#include "at_base_config.h"
#include "at_wifi_config.h"
#include "at_wifi_main.h"

#define AT_WIFI_SUPPORT_STORE_CHANNEL

#define AT_WIFI_TASK_STACK_SIZE 1024
#define AT_WIFI_TASK_PRIORITY 15
#define AT_WIFI_MAX_STA_NUM 10

static wifi_interface_t g_wifi_sta_interface = NULL;
static wifi_interface_t g_wifi_ap_interface = NULL;
static int g_wifi_sta_is_connected = 0;
static int g_wifi_sta_use_dhcp = 0;
static int g_wifi_sta_disconnect_reason = 0;
static int g_wifi_waiting_connect_result = 0;
static int g_wifi_sniffer_is_start = 0;

/** Mac address length  */
#define DHCP_MAX_HLEN               6
struct dhcp_client_node
{
    struct dhcp_client_node *next;
    u8_t chaddr[DHCP_MAX_HLEN];
    ip4_addr_t ipaddr;
    u32_t lease_end;
};

struct wifi_ap_sta_info
{
    long long valid_time;
    uint8_t mac[6];
    uint32_t ip;
    uint8_t sta_index;
};

struct wifi_ap_sta_info g_wifi_ap_sta_info[AT_WIFI_MAX_STA_NUM];

static void wifi_background_init(uint8_t *ap_mac, uint8_t *sta_mac, uint8_t country_code)
{
    wifi_conf_t conf =
    {
        .country_code = "CN",
    };
    char *country_code_string[WIFI_COUNTRY_CODE_MAX] = {"CN", "JP", "US", "EU"};
    uint8_t mac[6];

    /* init ap mac address */
    wifi_mgmr_ap_mac_get(mac);
    if (memcmp(mac, ap_mac, 6)) {
        wifi_mgmr_ap_mac_set(ap_mac);
    }

    /* init sta mac address */
    wifi_mgmr_sta_mac_get(mac);
    if (memcmp(mac, sta_mac, 6)) {
        wifi_mgmr_sta_mac_set(sta_mac);
    }

    /* init wifi background*/
    strcpy(conf.country_code, country_code_string[country_code]);
    wifi_mgmr_start_background(&conf);

    /* enable scan hide ssid */
    wifi_mgmr_scan_filter_hidden_ssid(0);
}

static void wifi_sta_disconnect(int force)
{
    int i;
    int state;

    if (g_wifi_sta_interface) {
        if (force == 0) {
            wifi_mgmr_sta_autoconnect_disable();
            /*XXX Must make sure sta is already disconnect, otherwise sta disable won't work*/
            vTaskDelay(1000);

            wifi_mgmr_sta_disconnect();
            for(i = 0; i < 200; i++) {
                wifi_mgmr_sta_state_get(&state);
                if (state == WIFI_STATE_IDLE || state == WIFI_STATE_WITH_AP_IDLE ||
                    state == WIFI_STATE_DISCONNECT || state == WIFI_STATE_WITH_AP_DISCONNECT)
                    break;
                vTaskDelay(100);
            }

            wifi_mgmr_sta_disable(NULL);
            for(i = 0; i < 200; i++) {
                wifi_mgmr_sta_state_get(&state);
                if (state == WIFI_STATE_IDLE || state == WIFI_STATE_WITH_AP_IDLE)
                    break;
                vTaskDelay(100);
            }
        }
        else
        {
            wifi_mgmr_sta_autoconnect_disable();
            wifi_mgmr_sta_disconnect();
            vTaskDelay(500);
            wifi_mgmr_sta_disable(NULL);
        }

        g_wifi_sta_interface = NULL;
        g_wifi_sta_is_connected = 0;
    }
}

static void wifi_sta_connect(void)
{
    char *ssid = at_wifi_config->sta_info.ssid;
    char *psk = at_wifi_config->sta_info.psk;
    char *pmk = at_wifi_config->sta_info.pmk;
    uint16_t freq = at_wifi_config->sta_info.freq;
    uint8_t *bssid = at_wifi_config->sta_info.bssid;
    uint16_t listen_interval = (uint16_t)at_wifi_config->sta_info.listen_interval;
    uint32_t flags = 0;
    char *hostname = at_wifi_config->hostname;
    int dhcp_en = (int)at_wifi_config->dhcp_state.bit.sta_dhcp;
    uint32_t ip = at_wifi_config->sta_ip.ip;
    uint32_t mask = at_wifi_config->sta_ip.netmask;
    uint32_t gateway = at_wifi_config->sta_ip.gateway;
    const uint8_t invalid_mac[6] = {0, 0, 0, 0, 0, 0};
    struct ap_connect_adv ext_param;

    if (strlen(ssid) <= 0)
        return;

    if (memcmp(bssid, invalid_mac, sizeof(invalid_mac)) == 0)
        bssid = NULL;

    if (at_wifi_config->sta_info.pci_en)
        flags |= WIFI_CONNECT_PCI_EN;
    if (at_wifi_config->sta_info.scan_mode == 0)
        flags |= WIFI_CONNECT_STOP_SCAN_ALL_CHANNEL_IF_TARGET_AP_FOUND;
    if (at_wifi_config->sta_info.pmf & 0x01)
        flags |= WIFI_CONNECT_PMF_CAPABLE;
	else
        flags &= (~WIFI_CONNECT_PMF_CAPABLE);
    if (at_wifi_config->sta_info.pmf & 0x02)
        flags |= WIFI_CONNECT_PMF_REQUIRED;
	else
        flags &= (~WIFI_CONNECT_PMF_REQUIRED);

    if (!g_wifi_sta_interface) {
        g_wifi_sta_interface = wifi_mgmr_sta_enable();
        wifi_mgmr_set_hostname(hostname);

        ext_param.psk = pmk;
        ext_param.ap_info.type = AP_INFO_TYPE_PRESIST;
        ext_param.ap_info.time_to_live = -1;
        ext_param.ap_info.bssid = bssid;
        ext_param.ap_info.band = 0;
#ifdef AT_WIFI_SUPPORT_STORE_CHANNEL
        ext_param.ap_info.freq = freq;
#else
        ext_param.ap_info.freq = 0;
#endif
        if (dhcp_en) {
            ext_param.ap_info.use_dhcp = 1;
            g_wifi_sta_use_dhcp = 1;
            wifi_mgmr_sta_ip_unset();
        }
        else {
            ext_param.ap_info.use_dhcp = 0;
            g_wifi_sta_use_dhcp = 0;
            wifi_mgmr_sta_ip_set(ip, mask, gateway, gateway, 0);
        }
        ext_param.flags = flags;
        wifi_mgmr_set_listen_interval(listen_interval);
        wifi_mgmr_sta_connect_ext(g_wifi_sta_interface, ssid, psk, &ext_param);
    }
}

static int wifi_sta_wait(int timeout)
{
    int ret  = 0;
    long long nTime = 0;

    nTime = aos_now_ms();
    g_wifi_waiting_connect_result = 1;
    while(aos_now_ms() - nTime < timeout) {
        if (!g_wifi_waiting_connect_result)
            break;
    }

    if (g_wifi_sta_is_connected) {
        ret = 0;
    }
    else {
        if (g_wifi_sta_disconnect_reason == WLAN_FW_AUTH_OR_ASSOC_RESPONSE_TIMEOUT_FAILURE)
            ret = 1; // connect timeout
        else if (g_wifi_sta_disconnect_reason == WLAN_FW_4WAY_HANDSHAKE_ERROR_PSK_TIMEOUT_FAILURE
            || g_wifi_sta_disconnect_reason == WLAN_FW_4WAY_HANDSHAKE_TX_DEAUTH_FRAME_TRANSMIT_FAILURE
            || g_wifi_sta_disconnect_reason == WLAN_FW_4WAY_HANDSHAKE_TX_DEAUTH_FRAME_ALLOCATE_FAIILURE
            || g_wifi_sta_disconnect_reason == WLAN_FW_DEAUTH_BY_AP_WHEN_NOT_CONNECTION)
            ret = 2; // password error
        else if (g_wifi_sta_disconnect_reason == WLAN_FW_SCAN_NO_BSSID_AND_CHANNEL)
            ret = 3; // not found ap
        else
            ret = 4; // connect fail
    }
    return ret;
}

static void wifi_sta_enable_reconnect(int enable)
{
    if (enable) {
        wifi_mgmr_sta_autoconnect_enable();
    }
    else {
        wifi_mgmr_sta_autoconnect_disable();
    }
}

static void wifi_sta_set_reconnect(int interval, int repeat_count)
{
    if (interval == 0)
        wifi_mgmr_sta_autoconnect_set(0, 0);
    else
        wifi_mgmr_sta_autoconnect_set(interval, repeat_count);
}

static int wifi_ap_deauth(uint8_t *mac)
{
    int i;
    struct wifi_sta_basic_info sta_info;
    uint8_t sta_cnt;

    if (g_wifi_ap_interface) {
        wifi_mgmr_ap_sta_cnt_get(&sta_cnt);
        for(i = 0; i < sta_cnt; i++) {
            wifi_mgmr_ap_sta_info_get(&sta_info, i);
            if(!sta_info.is_used || (sta_info.sta_idx == 0xef))
                continue;

            if(mac == NULL || memcmp(sta_info.sta_mac, mac, 6) == 0)
                wifi_mgmr_ap_sta_delete(i);
        }
    }
    return 0;
}

static int wifi_ap_start(void)
{
    char *ssid = at_wifi_config->ap_info.ssid;
    char *pwd = at_wifi_config->ap_info.pwd;
    int channel = at_wifi_config->ap_info.channel;
    uint8_t max_conn = at_wifi_config->ap_info.max_conn;
    int hidden_ssid = at_wifi_config->ap_info.ssid_hidden;
    int dhcp_en = at_wifi_config->dhcp_state.bit.ap_dhcp;
    uint32_t ip = at_wifi_config->ap_ip.ip;
    uint32_t mask = at_wifi_config->ap_ip.netmask;
    int dhcp_start = at_wifi_config->dhcp_server.start;
    int dhcp_end = at_wifi_config->dhcp_server.end;

    if (at_wifi_config->ap_info.ecn == 0)
        pwd = NULL;

    if (!g_wifi_ap_interface) {
        wifi_mgmr_ap_ip_set(ip, 0, mask);
        g_wifi_ap_interface = wifi_mgmr_ap_enable();
        if (dhcp_en) {
            wifi_mgmr_ap_dhcp_enable();
            wifi_mgmr_ap_dhcp_range_set(ip, mask, dhcp_start, dhcp_end);
        }
        else {
            wifi_mgmr_ap_dhcp_disable();
        }
        wifi_mgmr_conf_max_sta(max_conn);
        wifi_mgmr_ap_start(g_wifi_ap_interface, ssid, hidden_ssid, pwd, channel);
    }
    return 0;
}

static int wifi_ap_stop(int force)
{
    if (g_wifi_ap_interface) {
        wifi_ap_deauth(NULL);
        wifi_mgmr_ap_stop(NULL);

        if (force == 0)
            vTaskDelay(500);
        g_wifi_ap_interface = NULL;
    }
    return 0;
}

static int wifi_ap_get_sta_info_index(uint8_t mac[6])
{
    int i, index = 0;
    long long oldest_time = 0;

    /* find exist record */
    for (i = 0; i < AT_WIFI_MAX_STA_NUM; i++) {
        if (g_wifi_ap_sta_info[i].valid_time != 0 && memcmp(g_wifi_ap_sta_info[i].mac, mac, 6) == 0) {
            return i;
        }   
    }

    /* find empty record */
    for (i = 0; i < AT_WIFI_MAX_STA_NUM; i++) {
        if (g_wifi_ap_sta_info[i].valid_time == 0) {
            return i;
        }   
    }

    /* find oldest record */
    oldest_time = aos_now_ms();
    for (i = 0; i < AT_WIFI_MAX_STA_NUM; i++) {
        if (g_wifi_ap_sta_info[i].valid_time < oldest_time) {
            oldest_time = g_wifi_ap_sta_info[i].valid_time;
            index = i;
        }   
    }
    return index;
}

static void wifi_ap_update_sta_ip(uint8_t mac[6], uint32_t ip)
{
    int index = wifi_ap_get_sta_info_index(mac);

    g_wifi_ap_sta_info[index].valid_time = aos_now_ms();
    memcpy(g_wifi_ap_sta_info[index].mac, mac, 6);
    g_wifi_ap_sta_info[index].ip = ip;
}

static void wifi_ap_update_sta_index(uint8_t mac[6], uint8_t sta_index)
{
    int index = wifi_ap_get_sta_info_index(mac);

    g_wifi_ap_sta_info[index].valid_time = aos_now_ms();
    memcpy(g_wifi_ap_sta_info[index].mac, mac, 6);
    g_wifi_ap_sta_info[index].sta_index = sta_index;
}

static void wifi_ap_delete_sta_info(uint8_t mac[6])
{
    int i;

    for (i = 0; i < AT_WIFI_MAX_STA_NUM; i++) {
        if (g_wifi_ap_sta_info[i].valid_time != 0 && memcmp(g_wifi_ap_sta_info[i].mac, mac, 6) == 0) {
            g_wifi_ap_sta_info[i].valid_time = 0;
        }   
    }
}

static int wifi_ap_get_sta_ip(uint8_t mac[6], uint32_t *ip)
{
    int i;

    for (i = 0; i < AT_WIFI_MAX_STA_NUM; i++) {
        if (g_wifi_ap_sta_info[i].valid_time != 0 && memcmp(g_wifi_ap_sta_info[i].mac, mac, 6) == 0) {
            *ip = g_wifi_ap_sta_info[i].ip;
            return 0;
        }   
    }
    return -1;
}

static int wifi_ap_get_sta_mac(uint8_t sta_index, uint8_t mac[6])
{
    int i;

    for (i = 0; i < AT_WIFI_MAX_STA_NUM; i++) {
        if (g_wifi_ap_sta_info[i].valid_time != 0 && g_wifi_ap_sta_info[i].sta_index == sta_index) {
            memcpy(mac, g_wifi_ap_sta_info[i].mac, 6);
            return 0;
        }   
    }
    return -1;
}

static void wifi_sniffer_data_recv(void *env, uint8_t *pkt, int pkt_len, bl_rx_info_t *info)
{
    int filter_len = (int)env;

    if (pkt_len >= filter_len)
        printf("pkt_len: %d\r\n", pkt_len );
}

static void at_wifi_event_cb(input_event_t *event, void *private_data)
{
    switch (event->code) {
        case CODE_WIFI_ON_INIT_DONE: {
            wifi_background_init(at_wifi_config->ap_mac.addr, at_wifi_config->sta_mac.addr, at_wifi_config->wifi_country.country_code);
        }
        break;

        case CODE_WIFI_ON_MGMR_DONE: {
            wifi_sta_enable_reconnect(1);
            wifi_sta_set_reconnect(at_wifi_config->reconn_cfg.interval_second, at_wifi_config->reconn_cfg.repeat_count);
            if (at_wifi_config->wifi_mode == WIFI_SOFTAP_MODE || at_wifi_config->wifi_mode == WIFI_AP_STA_MODE) {
                wifi_ap_start();
            }
            if (at_wifi_config->wifi_mode == WIFI_STATION_MODE || at_wifi_config->wifi_mode == WIFI_AP_STA_MODE) {
                if (at_wifi_config->auto_conn == WIFI_AUTOCONN_ENABLE)
                    wifi_sta_connect();
            }
        }
        break;

        case CODE_WIFI_ON_DISCONNECT: {
            if (g_wifi_sta_is_connected) {
                if (at_get_work_mode() != AT_WORK_MODE_THROUGHPUT ||  at_base_config->sysmsg_cfg.bit.link_state_msg)
                    at_response_string("WIFI DISCONNECT\r\n");
                g_wifi_sta_is_connected = 0;
            }
            g_wifi_sta_disconnect_reason = event->value;
            g_wifi_waiting_connect_result = 0;
        }
        break;
 
        case CODE_WIFI_ON_CONNECTED: {
            if (!g_wifi_sta_is_connected) {
                if (at_get_work_mode() != AT_WORK_MODE_THROUGHPUT ||  at_base_config->sysmsg_cfg.bit.link_state_msg)
                    at_response_string("WIFI CONNECTED\r\n");
                g_wifi_sta_is_connected = 1;

                //if (g_wifi_sta_use_dhcp == 0)
                //    aos_post_event(EV_WIFI, CODE_WIFI_ON_GOT_IP, 0);

#ifdef AT_WIFI_SUPPORT_STORE_CHANNEL
                wifi_mgmr_sta_connect_ind_stat_info_t stat;
                wifi_mgmr_sta_connect_ind_stat_get(&stat);
                uint16_t chan_freq;
                if (stat.chan_id == 14)
                    chan_freq = 2484;
                else
                    chan_freq = stat.chan_id*5 + 2407;

                if (at_wifi_config->sta_info.freq != chan_freq) {
                    at_wifi_config->sta_info.freq = chan_freq;
                    if (at->store)
                        at_wifi_config_save(AT_CONFIG_KEY_WIFI_STA_INFO);
                }
#endif
            }
        }
        break;

        case CODE_WIFI_ON_GOT_IP: {
            if (g_wifi_sta_is_connected) {
                if (at_get_work_mode() != AT_WORK_MODE_THROUGHPUT ||  at_base_config->sysmsg_cfg.bit.link_state_msg)
                    at_response_string("WIFI GOT IP\r\n");

                g_wifi_sta_disconnect_reason = 0;
                g_wifi_waiting_connect_result = 0;
            }
        }
        break;

        case CODE_WIFI_ON_AP_STA_ADD: {
            struct wifi_sta_basic_info sta_info;
            wifi_mgmr_ap_sta_info_get(&sta_info, (uint8_t)event->value);
            if (at_get_work_mode() != AT_WORK_MODE_THROUGHPUT ||  at_base_config->sysmsg_cfg.bit.link_state_msg)
                at_response_string("+STA_CONNECTED:\"%02x:%02x:%02x:%02x:%02x:%02x\"\r\n",
                        sta_info.sta_mac[0],
                        sta_info.sta_mac[1],
                        sta_info.sta_mac[2],
                        sta_info.sta_mac[3],
                        sta_info.sta_mac[4],
                        sta_info.sta_mac[5]);
            wifi_ap_update_sta_index(sta_info.sta_mac, (uint8_t)event->value);
        }
        break;

        case CODE_WIFI_ON_AP_STA_DEL: {
            uint8_t sta_mac[6] = {0, 0, 0, 0, 0, 0};
            wifi_ap_get_sta_mac((uint8_t)event->value, sta_mac);
            wifi_ap_delete_sta_info(sta_mac);
            if (at_get_work_mode() != AT_WORK_MODE_THROUGHPUT ||  at_base_config->sysmsg_cfg.bit.link_state_msg)
                at_response_string("+STA_DISCONNECTED:\"%02x:%02x:%02x:%02x:%02x:%02x\"\r\n",
                        sta_mac[0],
                        sta_mac[1],
                        sta_mac[2],
                        sta_mac[3],
                        sta_mac[4],
                        sta_mac[5]);
        }
        break;

        case CODE_WIFI_ON_AP_STA_GOT_IP: {
            struct dhcp_client_node *node = (struct dhcp_client_node *)event->value;
            wifi_ap_update_sta_ip((uint8_t *)node->chaddr, (uint32_t)node->ipaddr.addr);
            if (at_get_work_mode() != AT_WORK_MODE_THROUGHPUT ||  at_base_config->sysmsg_cfg.bit.link_state_msg)
                at_response_string("+DIST_STA_IP:\"%02x:%02x:%02x:%02x:%02x:%02x\",\"%s\"\r\n",
                        node->chaddr[0],
                        node->chaddr[1],
                        node->chaddr[2],
                        node->chaddr[3],
                        node->chaddr[4],
                        node->chaddr[5],
                        ip4addr_ntoa(&node->ipaddr));
        }
        break;

        default: {
            /*nothing*/
        }
    }
}

int at_wifi_set_mode(void)
{
    wifi_ap_stop(0);
    wifi_sta_disconnect(0);

    if(at_wifi_config->wifi_mode == WIFI_STATION_MODE) {
        if (at_wifi_config->switch_mode_auto_conn == WIFI_AUTOCONN_ENABLE)
            wifi_sta_connect();
    }
    else if(at_wifi_config->wifi_mode == WIFI_SOFTAP_MODE) {
        wifi_ap_start();
    }
    else if(at_wifi_config->wifi_mode == WIFI_AP_STA_MODE) {
        wifi_ap_start();
        if (at_wifi_config->switch_mode_auto_conn == WIFI_AUTOCONN_ENABLE)
            wifi_sta_connect();
    }

    return 0;
}

int at_wifi_sta_connect(int timeout)
{
    int ret;

    wifi_sta_disconnect(0);
    wifi_sta_connect();
    ret = wifi_sta_wait(timeout);
    if (ret == 0)
        wifi_sta_enable_reconnect(1);

    return ret;
}

int at_wifi_sta_disconnect(void)
{
    wifi_sta_disconnect(0);
    return 0;
}

int at_wifi_sta_set_reconnect(void)
{
    wifi_sta_set_reconnect(at_wifi_config->reconn_cfg.interval_second, at_wifi_config->reconn_cfg.repeat_count);
    return 0;
}

int at_wifi_ap_start(void)
{
    wifi_ap_stop(0);
    wifi_ap_start();
    return 0;
}

int at_wifi_ap_stop(void)
{
    wifi_ap_stop(0);
    return 0;
}

int at_wifi_ap_get_sta_ip(uint8_t *mac, char *ip, int check_flag)
{
    uint32_t ip_addr;
    ip4_addr_t ipaddr;

    if (wifi_ap_get_sta_ip(mac, &ip_addr) != 0) {
        strcpy(ip, "");
        return -1;
    }

    if (check_flag) {
        uint32_t start_ip, end_ip;
        start_ip = (at_wifi_config->ap_ip.ip & at_wifi_config->ap_ip.netmask) | (at_wifi_config->dhcp_server.start << 24);
        end_ip = (at_wifi_config->ap_ip.ip & at_wifi_config->ap_ip.netmask) | (at_wifi_config->dhcp_server.end << 24);
        if (ntohl(ip_addr) < ntohl(start_ip) || ntohl(ip_addr) > ntohl(end_ip))
            ip_addr = 0;
    }

    ipaddr.addr = ip_addr;
    strcpy(ip, ip4addr_ntoa(&ipaddr));
    return 0;
}

int at_wifi_ap_set_dhcp_range(int start, int end)
{
    wifi_mgmr_ap_dhcp_range_set(0, 0, start, end);
    return 0;
}

int at_wifi_sniffer_start(int min_pkt_len)
{
    if (g_wifi_sniffer_is_start)
        return -1;

    wifi_ap_stop(0);
    wifi_sta_disconnect(0);

    wifi_mgmr_sniffer_register((void *)min_pkt_len, wifi_sniffer_data_recv);
    wifi_mgmr_sniffer_enable();

    g_wifi_sniffer_is_start = 1;
    return 0;
}

int at_wifi_sniffer_set_channel(int channel)
{
    if (!g_wifi_sniffer_is_start)
        return -1;

    wifi_mgmr_channel_set(channel, 0);
    return 0;
}

int at_wifi_sniffer_stop(void)
{
    if (!g_wifi_sniffer_is_start)
        return -1;

    wifi_mgmr_sniffer_disable();
    wifi_mgmr_sniffer_unregister(NULL);

    g_wifi_sniffer_is_start = 0;
    return 0;
}

int at_wifi_start(void)
{
    hal_wifi_start_firmware_task();
    /*Trigger to start Wi-Fi*/
    aos_post_event(EV_WIFI, CODE_WIFI_ON_INIT_DONE, 0);

    aos_register_event_filter(EV_WIFI, at_wifi_event_cb, NULL);

    memset(&g_wifi_ap_sta_info, 0, sizeof(g_wifi_ap_sta_info));
    return 0;
}

int at_wifi_stop(void)
{
    wifi_ap_stop(1);
    wifi_sta_disconnect(1);

    return 0;
}

