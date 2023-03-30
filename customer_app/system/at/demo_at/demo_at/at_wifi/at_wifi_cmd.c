/**
  ******************************************************************************
  * @file    at_wifi_cmd.c
  * @version V1.0
  * @date
  * @brief   This file is part of AT command framework
  ******************************************************************************
  */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include <FreeRTOS.h>
#include <semphr.h>
#include <aos/yloop.h>
#include <wifi_mgmr_ext.h>
#include "../bl_main.h"
#include "../wifi_mgmr.h"
#include "../lmac_msg.h"
#include <utils_hex.h>

#include "at_main.h"
#include "at_core.h"
#include "at_wifi_config.h"
#include "at_wifi_main.h"

#define AT_WIFI_CMD_PRINTF printf

static uint8_t g_scan_filter_mac_flag = 0;
static uint8_t g_scan_filter_ssid_flag = 0;
static uint8_t g_scan_filter_mac[6];
static char g_scan_filter_ssid[33];
static uint8_t g_scan_filter_channel = 0;

static int get_mac_from_string(char *string, uint8_t mac[6])
{
    int i, j = 0;
    char mac_string[13];

    if (strlen(string) != 17)
        return -1;

    memset(mac_string, 0, sizeof(mac_string));
    for (i = 0; i < strlen(string); i++) {
        if (i % 3 == 2) {
            if (string[i] != ':')
                return -1;
        }
        else
            mac_string[j++] = string[i];
    }

    if (utils_hex2bin((const char *)mac_string, strlen(mac_string), mac, 6) > 0)
        return 0;
    else
        return -1;
}

static int get_ip_from_string(char *string, uint32_t *ip)
{
    uint32_t ipaddr;

    ipaddr = ipaddr_addr(string);
    if (ipaddr == IPADDR_NONE || ipaddr == IPADDR_ANY) {
        return -1;
    }

    *ip = ipaddr;
    return 0;
}

static int at_query_cmd_cwmode(int argc, const char **argv)
{
    at_response_string("+CWMODE:%d\r\n", at_wifi_config->wifi_mode);
    return AT_RESULT_CODE_OK;
}

static int at_setup_cmd_cwmode(int argc, const char **argv)
{
    int mode = 0;
    int auto_connect_valid =0, auto_connect;

    AT_CMD_PARSE_NUMBER(0, &mode);
    AT_CMD_PARSE_OPT_NUMBER(1, &auto_connect, auto_connect_valid);

    if (mode < WIFI_DISABLE || mode > WIFI_AP_STA_MODE)
        return AT_RESULT_CODE_ERROR;

    if (auto_connect_valid) {
        if (auto_connect != WIFI_AUTOCONN_DISABLE && auto_connect != WIFI_AUTOCONN_ENABLE)
            return AT_RESULT_CODE_ERROR;
        at_wifi_config->switch_mode_auto_conn = auto_connect;
    }
    else {
        at_wifi_config->switch_mode_auto_conn = WIFI_AUTOCONN_ENABLE;
    }

    if (at_wifi_config->wifi_mode != mode) {
        at_wifi_config->wifi_mode = mode;
        if (at->store)
            at_wifi_config_save(AT_CONFIG_KEY_WIFI_MODE);
        at_wifi_set_mode();
    }

    return AT_RESULT_CODE_OK;
}
 
static int at_query_cmd_cwstate(int argc, const char **argv)
{
    int state;
    
    wifi_mgmr_state_get(&state);
    if (state == WIFI_STATE_IDLE || state == WIFI_STATE_WITH_AP_IDLE) {
        at_response_string("+CWSTATE:%d,\"%s\"\r\n", 0, at_wifi_config->sta_info.ssid);
    } else if (state == WIFI_STATE_CONNECTED_IP_GETTING || state == WIFI_STATE_WITH_AP_CONNECTED_IP_GETTING) {
        at_response_string("+CWSTATE:%d,\"%s\"\r\n", 1, at_wifi_config->sta_info.ssid);
    } else if (state == WIFI_STATE_CONNECTED_IP_GOT || state == WIFI_STATE_WITH_AP_CONNECTED_IP_GOT) {
        at_response_string("+CWSTATE:%d,\"%s\"\r\n", 2, at_wifi_config->sta_info.ssid);
    } else if (state == WIFI_STATE_CONNECTING || state == WIFI_STATE_WITH_AP_CONNECTING) {
        at_response_string("+CWSTATE:%d,\"%s\"\r\n", 3, at_wifi_config->sta_info.ssid);
    } else {
        at_response_string("+CWSTATE:%d,\"%s\"\r\n", 4, at_wifi_config->sta_info.ssid);
    }
    return AT_RESULT_CODE_OK;
}

static int at_query_cmd_cwjap(int argc, const char **argv)
{
    int state;
    int rssi = 0;
    wifi_mgmr_sta_connect_ind_stat_info_t info = {0};

    wifi_mgmr_state_get(&state);
    if (state == WIFI_STATE_CONNECTED_IP_GETTING || state == WIFI_STATE_CONNECTED_IP_GOT) {
        wifi_mgmr_sta_connect_ind_stat_get(&info);
        wifi_mgmr_rssi_get(&rssi);
        at_response_string("+CWJAP:\"%s\",\"%02x:%02x:%02x:%02x:%02x:%02x\",%d,%d,%d,%d,%d,%d,%d\r\n",
            info.ssid,
            info.bssid[0], info.bssid[1], info.bssid[2], info.bssid[3], info.bssid[4], info.bssid[5],
            info.chan_id,
            rssi,
            0,
            at_wifi_config->reconn_cfg.interval_second, at_wifi_config->reconn_cfg.interval_second,
            0,0);
    }
    return AT_RESULT_CODE_OK;
}

static int at_setup_cmd_cwjap(int argc, const char **argv)
{
    int ret = 0;
    char ssid[32];
    char password[64];
    char bssidString[20];
    int bssid_valid = 0;
    uint8_t bssid[6] = {0x0, 0x0, 0x0, 0x0, 0x0, 0x0};
    int pci_enable_valid = 0, pci_enable = 0;
    int reconn_interval_valid = 0, reconn_interval = 1;
    int listen_interval_valid = 0, listen_interval = 3;
    int scan_mode_valid = 0, scan_mode = 1;
    int jap_timeout_valid = 0, jap_timeout = 15;
    int pmf_valid = 0, pmf = 1;

    AT_CMD_PARSE_STRING(0, ssid, sizeof(ssid));
    AT_CMD_PARSE_STRING(1, password, sizeof(password));
    AT_CMD_PARSE_OPT_STRING(2, bssidString, sizeof(bssidString), bssid_valid);
    AT_CMD_PARSE_OPT_NUMBER(3, &pci_enable, pci_enable_valid);
    AT_CMD_PARSE_OPT_NUMBER(4, &reconn_interval, reconn_interval_valid);
    AT_CMD_PARSE_OPT_NUMBER(5, &listen_interval, listen_interval_valid);
    AT_CMD_PARSE_OPT_NUMBER(6, &scan_mode, scan_mode_valid);
    AT_CMD_PARSE_OPT_NUMBER(7, &jap_timeout, jap_timeout_valid);
    AT_CMD_PARSE_OPT_NUMBER(8, &pmf, pmf_valid);

    if (bssid_valid && (get_mac_from_string(bssidString, bssid) != 0))
        return AT_RESULT_CODE_ERROR;
    if (pci_enable_valid && (pci_enable != 0 && pci_enable != 1))
        return AT_RESULT_CODE_ERROR;
    if (reconn_interval_valid && (reconn_interval < 1 || reconn_interval > 100))
        return AT_RESULT_CODE_ERROR;
    if (listen_interval_valid && (listen_interval < 1 || listen_interval > 100))
        return AT_RESULT_CODE_ERROR;
    if (scan_mode_valid && (scan_mode != 0 && scan_mode != 1))
        return AT_RESULT_CODE_ERROR;
    if (jap_timeout_valid && (jap_timeout < 3 || jap_timeout > 600))
        return AT_RESULT_CODE_ERROR;
    if (pmf_valid && (pmf < 0 || pmf > 3))
        return AT_RESULT_CODE_ERROR;

    if ((at_wifi_config->wifi_mode != WIFI_STATION_MODE) && (at_wifi_config->wifi_mode != WIFI_AP_STA_MODE))
        return AT_RESULT_CODE_ERROR;

    strcpy(at_wifi_config->sta_info.ssid, ssid);
    strcpy(at_wifi_config->sta_info.psk, password);
    if (bssid_valid)
        memcpy(at_wifi_config->sta_info.bssid, bssid, sizeof(at_wifi_config->sta_info.bssid));
    else
        memset(at_wifi_config->sta_info.bssid, 0, sizeof(at_wifi_config->sta_info.bssid));
    at_wifi_config->sta_info.pci_en = (uint8_t)pci_enable;
    at_wifi_config->sta_info.listen_interval = listen_interval;
    at_wifi_config->sta_info.scan_mode = scan_mode;
    at_wifi_config->sta_info.jap_timeout = jap_timeout;
    at_wifi_config->sta_info.pmf = pmf;
    wifi_mgmr_psk_cal(password, ssid, strlen(ssid), at_wifi_config->sta_info.pmk);  
    at_wifi_config->sta_info.freq = 0;
    if (at->store)
        at_wifi_config_save(AT_CONFIG_KEY_WIFI_STA_INFO);

    at_wifi_config->reconn_cfg.interval_second = reconn_interval;
    if (at->store)
        at_wifi_config_save(AT_CONFIG_KEY_WIFI_RECONN_CFG);
    at_wifi_sta_set_reconnect();

    ret = at_wifi_sta_connect(at_wifi_config->sta_info.jap_timeout*1000);
    if (ret != 0) {
        at_response_string("+CWJAP:%d\r\n", ret);
        return AT_RESULT_CODE_ERROR;
    }
    return AT_RESULT_CODE_OK;
}

static int at_exe_cmd_cwjap(int argc, const char **argv)
{
    int ret = 0;

    if ((at_wifi_config->wifi_mode != WIFI_STATION_MODE) && (at_wifi_config->wifi_mode != WIFI_AP_STA_MODE))
        return AT_RESULT_CODE_ERROR;

    ret = at_wifi_sta_connect(15000);
    if (ret != 0) {
        at_response_string("+CWJAP:%d\r\n", ret);
        return AT_RESULT_CODE_ERROR;
    }
    return AT_RESULT_CODE_OK;
}

static int at_query_cmd_cwreconncfg(int argc, const char **argv)
{
    at_response_string("+CWRECONNCFG:%d,%d\r\n", at_wifi_config->reconn_cfg.interval_second, at_wifi_config->reconn_cfg.repeat_count);
    return AT_RESULT_CODE_OK;
}

static int at_setup_cmd_cwreconncfg(int argc, const char **argv)
{
    int interval_second, repeat_count;

    AT_CMD_PARSE_NUMBER(0, &interval_second);
    AT_CMD_PARSE_NUMBER(1, &repeat_count);

    if ((interval_second >= 0 && interval_second <= 7200) && (repeat_count >= 0 && repeat_count <= 1000)) {
        at_wifi_config->reconn_cfg.interval_second = (uint16_t)interval_second;
        at_wifi_config->reconn_cfg.repeat_count = (uint16_t)repeat_count;
        if (at->store)
            at_wifi_config_save(AT_CONFIG_KEY_WIFI_RECONN_CFG);
        at_wifi_sta_set_reconnect();
    }
    else
        return AT_RESULT_CODE_ERROR;

    return AT_RESULT_CODE_OK;
}

static int at_setup_cmd_cwlapopt(int argc, const char **argv)
{
    int reserved, print_mask;
    int rssi_filter_valid = 0, rssi_filter;
    int authmode_mask_valid = 0, authmode_mask;

    AT_CMD_PARSE_NUMBER(0, &reserved);
    AT_CMD_PARSE_NUMBER(1, &print_mask);
    AT_CMD_PARSE_OPT_NUMBER(2, &rssi_filter, rssi_filter_valid);
    AT_CMD_PARSE_OPT_NUMBER(3, &authmode_mask, authmode_mask_valid);

    if (reserved != 0 && reserved != 1)
        return AT_RESULT_CODE_ERROR;
    if (print_mask < 0 || print_mask > 0x7FF)
        return AT_RESULT_CODE_ERROR;
    if (rssi_filter_valid && (rssi_filter < -100 || rssi_filter > 40))
        return AT_RESULT_CODE_ERROR;
    if (authmode_mask_valid && (authmode_mask < 0 || authmode_mask > 0x1FF))
        return AT_RESULT_CODE_ERROR;

    at_wifi_config->scan_option.reserved = reserved;
    at_wifi_config->scan_option.print_mask = print_mask;
    if (rssi_filter_valid)
        at_wifi_config->scan_option.rssi_filter = rssi_filter;
    if (authmode_mask_valid)
        at_wifi_config->scan_option.authmode_mask = authmode_mask;
    return AT_RESULT_CODE_OK;
}

static void at_scan_callback(void *data, void *param)
{
    SemaphoreHandle_t at_scan_sem = (SemaphoreHandle_t)data;
    if (at_scan_sem) {
        xSemaphoreGive(at_scan_sem);
    }
}

static int at_scan_wifi(uint16_t *channels, uint16_t channel_num, const char *ssid, uint8_t scan_mode, uint32_t scan_time)
{
    SemaphoreHandle_t at_scan_sem = NULL;
    uint8_t bssid[6] = {0xff, 0xff, 0xff, 0xff, 0xff, 0xff};

    at_scan_sem = xSemaphoreCreateBinary();
    if (NULL == at_scan_sem) {
        return -1;
    }

    if (scan_mode == 0)
        scan_mode = SCAN_ACTIVE;
    else
        scan_mode = SCAN_PASSIVE;
    if (scan_time == 0)
        scan_time = 220;
    wifi_mgmr_scan_adv(at_scan_sem, at_scan_callback, channels, channel_num, bssid, ssid, scan_mode, scan_time*1000);

    xSemaphoreTake(at_scan_sem, portMAX_DELAY);
    vSemaphoreDelete(at_scan_sem);
    return 0;
}

static void at_scan_sort(int num, int8_t *rssi, uint8_t *index)
{
    int i, j;
    int8_t rssi_temp;
    uint8_t index_temp;

    for (i = 0; i < num; i++) {
        for (j=0; j<num - i -1; j++) {
            if (rssi[j] < rssi[j + 1]) {
                rssi_temp = rssi[j + 1];
                rssi[j + 1] = rssi[j];
                rssi[j] = rssi_temp;
 
                index_temp = index[j + 1];
                index[j + 1] = index[j];
                index[j] = index_temp;
            }
        }
    }
}

static int at_scan_get_ecn(uint8_t auth)
{
    if (auth == WIFI_EVENT_BEACON_IND_AUTH_OPEN)
        return 0;
    else if (auth == WIFI_EVENT_BEACON_IND_AUTH_WEP)
        return 1;
    else if (auth == WIFI_EVENT_BEACON_IND_AUTH_WPA_PSK)
        return 2;
    else if (auth == WIFI_EVENT_BEACON_IND_AUTH_WPA2_PSK)
        return 3;
    else if (auth == WIFI_EVENT_BEACON_IND_AUTH_WPA_WPA2_PSK)
        return 4;
    else if (auth == WIFI_EVENT_BEACON_IND_AUTH_WPA_ENT)
        return 5;
    else if (auth == WIFI_EVENT_BEACON_IND_AUTH_WPA3_SAE)
        return 6;
    else if (auth == WIFI_EVENT_BEACON_IND_AUTH_WPA2_PSK_WPA3_SAE)
        return 7;
    else
        return 8;
    
}

static int at_scan_get_cipher(uint8_t cipher)
{
    if (cipher == WIFI_EVENT_BEACON_IND_CIPHER_NONE)
        return 0;
    else if (cipher == WIFI_EVENT_BEACON_IND_CIPHER_WEP)
        return 1;
    else if (cipher == WIFI_EVENT_BEACON_IND_CIPHER_AES)
        return 4;
    else if (cipher == WIFI_EVENT_BEACON_IND_CIPHER_TKIP)
        return 3;
    else if (cipher == WIFI_EVENT_BEACON_IND_CIPHER_TKIP_AES)
        return 5;
    else
        return 7;
}

static void at_scan_dump(void)
{
    int i;
    wifi_mgmr_scan_item_t *scan;
    int array_num = 0;
    uint8_t index_array[WIFI_MGMR_SCAN_ITEMS_MAX];
    int8_t rssi_array[WIFI_MGMR_SCAN_ITEMS_MAX];
    int8_t rssi_filter = at_wifi_config->scan_option.rssi_filter;
    uint16_t print_mask = at_wifi_config->scan_option.print_mask;
    uint16_t authmode_mask = at_wifi_config->scan_option.authmode_mask;
    char outbuf[128];

    for (i = 0; i < sizeof(wifiMgmr.scan_items)/sizeof(wifiMgmr.scan_items[0]); i++) {
        scan = &wifiMgmr.scan_items[i];
        if (scan->is_used && (!wifi_mgmr_scan_item_is_timeout(&wifiMgmr, &(wifiMgmr.scan_items[i])))) {
            /* ssid filter */
            if (g_scan_filter_ssid_flag && strlen(g_scan_filter_ssid) > 0) {
                if (strcmp(g_scan_filter_ssid, scan->ssid))
                    continue;
            }
            /* mac filter */
            if (g_scan_filter_mac_flag) {
                if (memcmp(g_scan_filter_mac, scan->bssid, 6))
                    continue;
            }
            /* channel filter */
            if (g_scan_filter_channel != 0) {
                if (g_scan_filter_channel != scan->channel)
                    continue;
            }
            /* rssi and autmode filter */
            if (scan->rssi >= rssi_filter && BIT_ISSET(authmode_mask, at_scan_get_ecn(scan->auth))) {
                index_array[array_num] = i;
                rssi_array[array_num] = scan->rssi;
                array_num++;
            }
        }
    }
    at_scan_sort(array_num, rssi_array, index_array);

    for (i = 0; i < array_num; i++) {
        scan = &wifiMgmr.scan_items[index_array[i]];

        memset(outbuf, 0, sizeof(outbuf));
        sprintf(outbuf, "+CWLAP:(");
        if (BIT_ISSET(print_mask, 0))
            sprintf(outbuf + strlen(outbuf), "%d,", at_scan_get_ecn(scan->auth));
        if (BIT_ISSET(print_mask, 1))
            sprintf(outbuf + strlen(outbuf), "\"%s\",", scan->ssid);
        if (BIT_ISSET(print_mask, 2))
            sprintf(outbuf + strlen(outbuf), "%d,", scan->rssi);
        if (BIT_ISSET(print_mask, 3))
            sprintf(outbuf + strlen(outbuf), "\"%02x:%02x:%02x:%02x:%02x:%02x\",", 
                    scan->bssid[0],
                    scan->bssid[1],
                    scan->bssid[2],
                    scan->bssid[3],
                    scan->bssid[4],
                    scan->bssid[5]);
        if (BIT_ISSET(print_mask, 4))
            sprintf(outbuf + strlen(outbuf), "%d,", scan->channel);
        if (BIT_ISSET(print_mask, 5))
            sprintf(outbuf + strlen(outbuf), "%d,", -1);
        if (BIT_ISSET(print_mask, 6))
            sprintf(outbuf + strlen(outbuf), "%d,", -1);
        if (BIT_ISSET(print_mask, 7))
            sprintf(outbuf + strlen(outbuf), "%d,", at_scan_get_cipher(scan->cipher));
        if (BIT_ISSET(print_mask, 8))
            sprintf(outbuf + strlen(outbuf), "%d,", at_scan_get_cipher(scan->group_cipher));
        if (BIT_ISSET(print_mask, 9))
        {
            int mode = 0;
            if (scan->mode&WIFI_MODE_802_11B)
                mode |= 0x01;
            if (scan->mode&WIFI_MODE_802_11G)
                mode |= 0x02;
            if (scan->mode&WIFI_MODE_802_11N_2_4)
                mode |= 0x04;
           sprintf(outbuf + strlen(outbuf), "%d,", mode);
        }
        if (BIT_ISSET(print_mask, 10))
            sprintf(outbuf + strlen(outbuf), "%d,", scan->wps);
        if (outbuf[strlen(outbuf)-1] == ',')
            outbuf[strlen(outbuf)-1] = '\0';
        sprintf(outbuf + strlen(outbuf), ")\r\n");
        AT_CMD_RESPONSE(outbuf);
    }
}

static int at_setup_cmd_cwlap(int argc, const char **argv)
{
    int ssid_valid = 0;
    char ssid[33];
    int mac_valid = 0;
    char mac[18];
    int channel_valid = 0, channel;
    int scan_type_valid = 0, scan_type;
    int scan_time_min_valid = 0, scan_time_min;
    int scan_time_max_valid = 0, scan_time_max;

    int ret;
    uint16_t scan_channels = 0;
    uint8_t scan_mode = 0;
    uint32_t scan_time = 0;

    AT_CMD_PARSE_OPT_STRING(0, ssid, sizeof(ssid), ssid_valid);
    AT_CMD_PARSE_OPT_STRING(1, mac, sizeof(mac), mac_valid);
    AT_CMD_PARSE_OPT_NUMBER(2, &channel, channel_valid);
    AT_CMD_PARSE_OPT_NUMBER(3, &scan_type, scan_type_valid);
    AT_CMD_PARSE_OPT_NUMBER(4, &scan_time_min, scan_time_min_valid);
    AT_CMD_PARSE_OPT_NUMBER(5, &scan_time_max, scan_time_max_valid);

    if (ssid_valid) {
        strcpy(g_scan_filter_ssid, ssid);
        g_scan_filter_ssid_flag = 1;
    }
    if (mac_valid) {
        if (get_mac_from_string(mac, g_scan_filter_mac) != 0)
            return AT_RESULT_CODE_ERROR;
        g_scan_filter_mac_flag = 1;
    }
    if (channel_valid) {
        scan_channels = channel;
        g_scan_filter_channel = channel;
    }
    if (scan_type_valid) {
        AT_WIFI_CMD_PRINTF("scan_type = %d\r\n", scan_type);
        if (scan_type != 0 && scan_type != 1)
            return AT_RESULT_CODE_ERROR;
        scan_mode = scan_type;
    }
    if (scan_time_min_valid) {
        AT_WIFI_CMD_PRINTF("scan_time_min = %d\r\n", scan_time_min);
        if (scan_time_min < 0 || scan_time_min > 1500)
            return AT_RESULT_CODE_ERROR;
        if (scan_time_min > 0)
            scan_time = scan_time_min;
    }
    if (scan_time_max_valid) {
        AT_WIFI_CMD_PRINTF("scan_time_max = %d\r\n", scan_time_max);
        if (scan_time_max < 0 || scan_time_max > 1500)
            return AT_RESULT_CODE_ERROR;
        if (scan_time_max == 0)
        {
            if (scan_mode == 0)
                scan_time = 120;
            else
                scan_time = 360;
        }
        else
        {
            if (scan_time == 0)
                scan_time = scan_time_max;
            else
                scan_time = (scan_time + scan_time_max)/2;
        }
    }
    AT_WIFI_CMD_PRINTF("scan_mode = %d, scan_time = %d\r\n", scan_mode, scan_time);

    if (scan_channels != 0)
        ret = at_scan_wifi(&scan_channels, 1, NULL, scan_mode, scan_time);
    else
        ret = at_scan_wifi(NULL, 0, NULL, scan_mode, scan_time);
    if (ret != 0) {
        g_scan_filter_mac_flag = 0;
        g_scan_filter_ssid_flag = 0;
        g_scan_filter_channel = 0;
        return AT_RESULT_CODE_FAIL;
    }

    at_scan_dump();
    g_scan_filter_mac_flag = 0;
    g_scan_filter_ssid_flag = 0;
    g_scan_filter_channel = 0;
    return AT_RESULT_CODE_OK;
}

static int at_exe_cmd_cwlap(int argc, const char **argv)
{
    if (at_scan_wifi(NULL, 0, NULL, 0, 0) != 0)
        return AT_RESULT_CODE_FAIL;

    at_scan_dump();
    return AT_RESULT_CODE_OK;
}

static int at_exe_cmd_cwqap(int argc, const char **argv)
{
    if ((at_wifi_config->wifi_mode != WIFI_STATION_MODE) && (at_wifi_config->wifi_mode != WIFI_AP_STA_MODE))
        return AT_RESULT_CODE_ERROR;

    at_wifi_sta_disconnect();
    return AT_RESULT_CODE_OK;
}

static int at_query_cmd_cwsap(int argc, const char **argv)
{
    if (at_wifi_config->wifi_mode != WIFI_SOFTAP_MODE && at_wifi_config->wifi_mode != WIFI_AP_STA_MODE)
        return AT_RESULT_CODE_ERROR;

    at_response_string("+CWSAP:\"%s\",\"%s\",%d,%d,%d,%d\r\n",
            at_wifi_config->ap_info.ssid,
            at_wifi_config->ap_info.pwd,
            at_wifi_config->ap_info.channel,
            at_wifi_config->ap_info.ecn,
            at_wifi_config->ap_info.max_conn,
            at_wifi_config->ap_info.ssid_hidden);
    return AT_RESULT_CODE_OK;
}

static int at_setup_cmd_cwsap(int argc, const char **argv)
{
    char ssid[32];
    char pwd[64];
    int channel, ecn;
    int max_conn_valid = 0, max_conn;
    int ssid_hidden_valid = 0, ssid_hidden;

    AT_CMD_PARSE_STRING(0, ssid, sizeof(ssid));
    AT_CMD_PARSE_STRING(1, pwd, sizeof(pwd));
    AT_CMD_PARSE_NUMBER(2, &channel);
    AT_CMD_PARSE_NUMBER(3, &ecn);
    AT_CMD_PARSE_OPT_NUMBER(4, &max_conn, max_conn_valid);
    AT_CMD_PARSE_OPT_NUMBER(5, &ssid_hidden, ssid_hidden_valid);

    if (channel < 1 || channel > 13)
        return AT_RESULT_CODE_ERROR;
    if (!(ecn == 0 || (ecn >= 2 && ecn <= 4)) || (ecn >= 2 && ecn <= 4 && strlen(pwd) < 8))
        return AT_RESULT_CODE_ERROR;
    if (max_conn_valid && (max_conn < 1 || max_conn > 10))
        return AT_RESULT_CODE_ERROR;
    if (ssid_hidden_valid && (ssid_hidden != 0 && ssid_hidden != 1))
        return AT_RESULT_CODE_ERROR;

    strcpy(at_wifi_config->ap_info.ssid, ssid);
    strcpy(at_wifi_config->ap_info.pwd, pwd);
    at_wifi_config->ap_info.channel = channel;
    at_wifi_config->ap_info.ecn = ecn;
    if (max_conn_valid)
        at_wifi_config->ap_info.max_conn = max_conn;
    if (ssid_hidden_valid)
        at_wifi_config->ap_info.ssid_hidden = ssid_hidden;
    if (at->store)
        at_wifi_config_save(AT_CONFIG_KEY_WIFI_AP_INFO);

    if (at_wifi_ap_start() != 0) {
        return AT_RESULT_CODE_ERROR;
    }
    return AT_RESULT_CODE_OK;
}

static int at_exe_cmd_cwlif(int argc, const char **argv)
{
    int i;
    struct wifi_sta_basic_info sta_info;
    uint8_t sta_cnt;
    char ip[20];

    wifi_mgmr_ap_sta_cnt_get(&sta_cnt);
    for(i = 0; i < sta_cnt; i++) {
        wifi_mgmr_ap_sta_info_get(&sta_info, i);
        if(!sta_info.is_used || (sta_info.sta_idx == 0xef))
            continue;

        at_wifi_ap_get_sta_ip(sta_info.sta_mac, ip, 1);
        at_response_string("+CWLIF:%s,%02x:%02x:%02x:%02x:%02x:%02x\r\n", ip,
                sta_info.sta_mac[0],
                sta_info.sta_mac[1],
                sta_info.sta_mac[2],
                sta_info.sta_mac[3],
                sta_info.sta_mac[4],
                sta_info.sta_mac[5]);
    }
    return AT_RESULT_CODE_OK;
}

static int at_setup_cmd_cwqif(int argc, const char **argv)
{
    char mac_string[18];
    uint8_t mac[6];
    int i, sta_index = -1;
    struct wifi_sta_basic_info sta_info;
    uint8_t sta_cnt;
    int state = WIFI_STATE_UNKNOWN;

    AT_CMD_PARSE_STRING(0, mac_string, sizeof(mac_string));
    if (get_mac_from_string(mac_string, mac) != 0)
        return AT_RESULT_CODE_ERROR;

    wifi_mgmr_state_get(&state);
    if (!WIFI_STATE_AP_IS_ENABLED(state)) {
        return AT_RESULT_CODE_ERROR;
    }

    wifi_mgmr_ap_sta_cnt_get(&sta_cnt);
    for(i = 0; i < sta_cnt; i++) {
        wifi_mgmr_ap_sta_info_get(&sta_info, i);
        if(!sta_info.is_used || (sta_info.sta_idx == 0xef))
            continue;

        if (memcmp(mac, sta_info.sta_mac, 6) == 0) {
            sta_index = i;
            break;
        }
    }

    if (sta_index == -1)
        return AT_RESULT_CODE_ERROR;

    wifi_mgmr_ap_sta_delete(sta_index);
    vTaskDelay(200);
    return AT_RESULT_CODE_OK;
}

static int at_exe_cmd_cwqif(int argc, const char **argv)
{
    int i;
    struct wifi_sta_basic_info sta_info;
    uint8_t sta_cnt;
    int state = WIFI_STATE_UNKNOWN;

    wifi_mgmr_state_get(&state);
    if (!WIFI_STATE_AP_IS_ENABLED(state)) {
        return AT_RESULT_CODE_ERROR;
    }

    wifi_mgmr_ap_sta_cnt_get(&sta_cnt);
    for(i = 0; i < sta_cnt; i++) {
        wifi_mgmr_ap_sta_info_get(&sta_info, i);
        if(!sta_info.is_used || (sta_info.sta_idx == 0xef))
            continue;

        wifi_mgmr_ap_sta_delete(sta_info.sta_idx);
    }

    vTaskDelay(200);
    return AT_RESULT_CODE_OK;
}

static int at_query_cmd_cwdhcp(int argc, const char **argv)
{
    at_response_string("+CWDHCP:%d", at_wifi_config->dhcp_state);
    return AT_RESULT_CODE_OK;
}

static int at_setup_cmd_cwdhcp(int argc, const char **argv)
{
    int operate, mode;

    AT_CMD_PARSE_NUMBER(0, &operate);
    AT_CMD_PARSE_NUMBER(1, &mode);

    if ((operate == 0 || operate == 1) && (mode >= 1 && mode <= 3)) {
        if (mode & 0x01)
            at_wifi_config->dhcp_state.bit.sta_dhcp = operate;
        if (mode & 0x02)
            at_wifi_config->dhcp_state.bit.ap_dhcp = operate;
        if (at->store)
            at_wifi_config_save(AT_CONFIG_KEY_WIFI_DHCP_STATE);
    }
    else
        return AT_RESULT_CODE_ERROR;

    return AT_RESULT_CODE_OK;
}

static int at_query_cmd_cwdhcps(int argc, const char **argv)
{
    ip4_addr_t startaddr, stopaddr;
    char start_ip[16];
    char stop_ip[16];

    startaddr.addr = (at_wifi_config->ap_ip.ip & at_wifi_config->ap_ip.netmask) | (at_wifi_config->dhcp_server.start << 24);
    stopaddr.addr = (at_wifi_config->ap_ip.ip & at_wifi_config->ap_ip.netmask) | (at_wifi_config->dhcp_server.end << 24);
    strcpy(start_ip, ip4addr_ntoa(&startaddr));
    strcpy(stop_ip, ip4addr_ntoa(&stopaddr));
    at_response_string("+CWDHCPS:%d,%s,%s", at_wifi_config->dhcp_server.lease_time, start_ip, stop_ip);
    return AT_RESULT_CODE_OK;
}

static int at_setup_cmd_cwdhcps(int argc, const char **argv)
{
    int enable;
    int lease_time;
    char start_ip[16];
    char stop_ip[16];
    int lease_time_valid = 0;
    int start_ip_valid = 0;
    int stop_ip_valid = 0;
    uint32_t startaddr, stopaddr;

    AT_CMD_PARSE_NUMBER(0, &enable);
    AT_CMD_PARSE_OPT_NUMBER(1, &lease_time, lease_time_valid);
    AT_CMD_PARSE_OPT_STRING(2, start_ip, sizeof(start_ip),  start_ip_valid);
    AT_CMD_PARSE_OPT_STRING(3, stop_ip, sizeof(stop_ip), stop_ip_valid);

    if ((enable == 0) && (lease_time_valid + start_ip_valid + stop_ip_valid) > 0)
        return AT_RESULT_CODE_ERROR;
    if ((enable == 1) && (lease_time_valid + start_ip_valid + stop_ip_valid) < 3)
        return AT_RESULT_CODE_ERROR;

    if (enable == 0) {
        if (lease_time_valid + start_ip_valid + stop_ip_valid > 0)
            return AT_RESULT_CODE_ERROR;
        at_wifi_config->dhcp_server.lease_time = 120;
        at_wifi_config->dhcp_server.start = 2;
        at_wifi_config->dhcp_server.end = 101;
    }
    else if (enable == 1) {
        if (lease_time_valid + start_ip_valid + stop_ip_valid < 3)
            return AT_RESULT_CODE_ERROR;
        if (lease_time < 1 || lease_time > 2880)
            return AT_RESULT_CODE_ERROR;
        if (get_ip_from_string(start_ip, &startaddr) != 0) {
            return AT_RESULT_CODE_ERROR;
        }
        if (get_ip_from_string(stop_ip, &stopaddr) != 0) {
            return AT_RESULT_CODE_ERROR;
        }
        if ((startaddr & at_wifi_config->ap_ip.netmask) != (at_wifi_config->ap_ip.ip & at_wifi_config->ap_ip.netmask))
            return AT_RESULT_CODE_ERROR;
        if ((stopaddr & at_wifi_config->ap_ip.netmask) != (at_wifi_config->ap_ip.ip & at_wifi_config->ap_ip.netmask))
            return AT_RESULT_CODE_ERROR;

        at_wifi_config->dhcp_server.lease_time = lease_time;
        at_wifi_config->dhcp_server.start = (startaddr & (~at_wifi_config->ap_ip.netmask)) >> 24;
        at_wifi_config->dhcp_server.end = (stopaddr & (~at_wifi_config->ap_ip.netmask)) >> 24;
    }
    else
        return AT_RESULT_CODE_ERROR;

    if (at->store)
        at_wifi_config_save(AT_CONFIG_KEY_WIFI_DHCP_SERVER);
    at_wifi_ap_set_dhcp_range(at_wifi_config->dhcp_server.start, at_wifi_config->dhcp_server.end);

    return AT_RESULT_CODE_OK;
}

static int at_query_cmd_cwautoconn(int argc, const char **argv)
{
    at_response_string("+CWAUTOCONN:%d", at_wifi_config->auto_conn);
    return AT_RESULT_CODE_OK;
}

static int at_setup_cmd_cwautoconn(int argc, const char **argv)
{
    int auto_conn = 0;

    AT_CMD_PARSE_NUMBER(0, &auto_conn);

    if (auto_conn == WIFI_AUTOCONN_DISABLE || auto_conn == WIFI_AUTOCONN_ENABLE) {
        at_wifi_config->auto_conn = (uint8_t)auto_conn;
        at_wifi_config_save(AT_CONFIG_KEY_WIFI_AUTO_CONN);
    }
    else
        return AT_RESULT_CODE_ERROR;

    return AT_RESULT_CODE_OK;
}

static int at_query_cmd_cipstamac(int argc, const char **argv)
{
    at_response_string("+CIPSTAMAC:\"%02x:%02x:%02x:%02x:%02x:%02x\"\r\n",
            at_wifi_config->sta_mac.addr[0],
            at_wifi_config->sta_mac.addr[1],
            at_wifi_config->sta_mac.addr[2],
            at_wifi_config->sta_mac.addr[3],
            at_wifi_config->sta_mac.addr[4],
            at_wifi_config->sta_mac.addr[5]);
    return AT_RESULT_CODE_OK;
}

static int at_setup_cmd_cipstamac(int argc, const char **argv)
{
    char mac_string[18];
    uint8_t mac[6];

    AT_CMD_PARSE_STRING(0, mac_string, sizeof(mac_string));
    if (get_mac_from_string(mac_string, mac) != 0)
        return AT_RESULT_CODE_ERROR;

    if (mac[0]&0x01)
        return AT_RESULT_CODE_ERROR;
    if (mac[0] == 0x00 && mac[1] == 0x00 && mac[2] == 0x00 && mac[3] == 0x00 && mac[4] == 0x00 && mac[5] == 0x00)
        return AT_RESULT_CODE_ERROR;
    if (mac[0] == 0xFF && mac[1] == 0xFF && mac[2] == 0xFF && mac[3] == 0xFF && mac[4] == 0xFF && mac[5] == 0xFF)
        return AT_RESULT_CODE_ERROR;
    if (memcmp(mac, at_wifi_config->ap_mac.addr, 6) == 0)
        return AT_RESULT_CODE_ERROR;

    memcpy(at_wifi_config->sta_mac.addr, mac, 6);
    if (at->store)
        at_wifi_config_save(AT_CONFIG_KEY_WIFI_STA_MAC);

    return AT_RESULT_CODE_OK;
}

static int at_query_cmd_cipapmac(int argc, const char **argv)
{
    at_response_string("+CIPAPMAC:\"%02x:%02x:%02x:%02x:%02x:%02x\"\r\n",
            at_wifi_config->ap_mac.addr[0],
            at_wifi_config->ap_mac.addr[1],
            at_wifi_config->ap_mac.addr[2],
            at_wifi_config->ap_mac.addr[3],
            at_wifi_config->ap_mac.addr[4],
            at_wifi_config->ap_mac.addr[5]);
    return AT_RESULT_CODE_OK;
}

static int at_setup_cmd_cipapmac(int argc, const char **argv)
{
    char mac_string[18];
    uint8_t mac[6];

    AT_CMD_PARSE_STRING(0, mac_string, sizeof(mac_string));
    if (get_mac_from_string(mac_string, mac) != 0)
        return AT_RESULT_CODE_ERROR;

    if (mac[0]&0x01)
        return AT_RESULT_CODE_ERROR;
    if (mac[0] == 0x00 && mac[1] == 0x00 && mac[2] == 0x00 && mac[3] == 0x00 && mac[4] == 0x00 && mac[5] == 0x00)
        return AT_RESULT_CODE_ERROR;
    if (mac[0] == 0xFF && mac[1] == 0xFF && mac[2] == 0xFF && mac[3] == 0xFF && mac[4] == 0xFF && mac[5] == 0xFF)
        return AT_RESULT_CODE_ERROR;
    if (memcmp(mac, at_wifi_config->sta_mac.addr, 6) == 0)
        return AT_RESULT_CODE_ERROR;

    memcpy(at_wifi_config->ap_mac.addr, mac, 6);
    if (at->store)
        at_wifi_config_save(AT_CONFIG_KEY_WIFI_AP_MAC);

    return AT_RESULT_CODE_OK;
}

static int at_query_cmd_cipsta(int argc, const char **argv)
{
    int state;
    ip4_addr_t ipaddr, gwaddr, maskaddr;

    if (at_wifi_config->dhcp_state.bit.sta_dhcp == 0) {
        ipaddr.addr = at_wifi_config->sta_ip.ip;
        gwaddr.addr = at_wifi_config->sta_ip.gateway;
        maskaddr.addr = at_wifi_config->sta_ip.netmask;
    }
    else {
        wifi_mgmr_state_get(&state);
        if (state == WIFI_STATE_CONNECTED_IP_GOT || state == WIFI_STATE_WITH_AP_CONNECTED_IP_GOT) {
            wifi_mgmr_sta_ip_get(&ipaddr.addr, &gwaddr.addr, &maskaddr.addr);
        }
        else {
            ipaddr.addr = 0;
            gwaddr.addr = 0;
            maskaddr.addr = 0;
        }
    }

    at_response_string("+CIPSTA:%s:\"%s\"\r\n", "ip", ip4addr_ntoa(&ipaddr));
    at_response_string("+CIPSTA:%s:\"%s\"\r\n", "gateway", ip4addr_ntoa(&gwaddr));
    at_response_string("+CIPSTA:%s:\"%s\"\r\n", "netmask", ip4addr_ntoa(&maskaddr)); 
    return AT_RESULT_CODE_OK;
}

static int at_setup_cmd_cipsta(int argc, const char **argv)
{
    char ip[16];
    char gateway[16];
    char netmask[16];
    int gateway_valid = 0;
    int netmask_valid = 0;
    uint32_t ipaddr, gwaddr, maskaddr = IP_SET_ADDR(255, 255, 255, 0);
    int state;

    AT_CMD_PARSE_STRING(0, ip, sizeof(ip));
    AT_CMD_PARSE_OPT_STRING(1, gateway, sizeof(gateway), gateway_valid);
    AT_CMD_PARSE_OPT_STRING(2, netmask, sizeof(netmask), netmask_valid);

    if (get_ip_from_string(ip, &ipaddr) != 0) {
        return AT_RESULT_CODE_ERROR;
    }
    if (gateway_valid) {
        if (get_ip_from_string(gateway, &gwaddr) != 0) {
            return AT_RESULT_CODE_ERROR;
        }
    }
    else {
        gwaddr = (ipaddr&maskaddr)|(0x01<<24);
    }
    if (netmask_valid) {
        if (get_ip_from_string(netmask, &maskaddr) != 0) {
            return AT_RESULT_CODE_ERROR;
        }
    }

    at_wifi_config->sta_ip.ip = ipaddr;
    at_wifi_config->sta_ip.gateway = gwaddr;
    at_wifi_config->sta_ip.netmask = maskaddr;
    at_wifi_config->dhcp_state.bit.sta_dhcp = 0;
    if (at->store) {
        at_wifi_config_save(AT_CONFIG_KEY_WIFI_STA_IP);
        at_wifi_config_save(AT_CONFIG_KEY_WIFI_DHCP_STATE);
    }

    wifi_mgmr_state_get(&state);
    if (state == WIFI_STATE_CONNECTED_IP_GETTING || state == WIFI_STATE_WITH_AP_CONNECTED_IP_GOT
        || state == WIFI_STATE_WITH_AP_CONNECTED_IP_GETTING || state == WIFI_STATE_WITH_AP_CONNECTED_IP_GOT) {
        wifi_mgmr_sta_ip_set(at_wifi_config->sta_ip.ip, at_wifi_config->sta_ip.netmask, at_wifi_config->sta_ip.gateway, at_wifi_config->sta_ip.gateway, 0);
        aos_post_event(EV_WIFI, CODE_WIFI_ON_GOT_IP, 0);
    }
    return AT_RESULT_CODE_OK;
}

static int at_query_cmd_cipap(int argc, const char **argv)
{
    ip4_addr_t ipaddr, gwaddr, maskaddr;

    ipaddr.addr = at_wifi_config->ap_ip.ip;
    gwaddr.addr = at_wifi_config->ap_ip.gateway;
    maskaddr.addr = at_wifi_config->ap_ip.netmask;

    at_response_string("+CIPAP:%s:\"%s\"\r\n", "ip", ip4addr_ntoa(&ipaddr));
    at_response_string("+CIPAP:%s:\"%s\"\r\n", "gateway", ip4addr_ntoa(&gwaddr));
    at_response_string("+CIPAP:%s:\"%s\"\r\n", "netmask", ip4addr_ntoa(&maskaddr));
    return AT_RESULT_CODE_OK;
}

static int at_setup_cmd_cipap(int argc, const char **argv)
{
    char ip[16];
    char gateway[16];
    char netmask[16];
    int gateway_valid = 0;
    int netmask_valid = 0;
    uint32_t ipaddr, gwaddr, maskaddr;

    AT_CMD_PARSE_STRING(0, ip, sizeof(ip));
    AT_CMD_PARSE_OPT_STRING(1, gateway, sizeof(gateway), gateway_valid);
    AT_CMD_PARSE_OPT_STRING(2, netmask, sizeof(netmask), netmask_valid);

    if (get_ip_from_string(ip, &ipaddr) != 0) {
        return AT_RESULT_CODE_ERROR;
    }
    if (gateway_valid) {
        if (get_ip_from_string(gateway, &gwaddr) != 0) {
            return AT_RESULT_CODE_ERROR;
        }
    }
    else {
        gwaddr = ipaddr;
    }
    if (netmask_valid) {
        if (get_ip_from_string(netmask, &maskaddr) != 0) {
            return AT_RESULT_CODE_ERROR;
        }
    }
    else {
        maskaddr = IP_SET_ADDR(255, 255, 255, 0);
    }

    at_wifi_config->ap_ip.ip = ipaddr;
    at_wifi_config->ap_ip.gateway = gwaddr;
    at_wifi_config->ap_ip.netmask = maskaddr;
    if (at->store)
        at_wifi_config_save(AT_CONFIG_KEY_WIFI_AP_IP);
 
    return AT_RESULT_CODE_OK;
}

static int at_query_cmd_cwapproto(int argc, const char **argv)
{
    at_response_string("+CWAPPROTO:%d", at_wifi_config->ap_proto.byte);
    return AT_RESULT_CODE_OK;
}

static int at_setup_cmd_cwapproto(int argc, const char **argv)
{
    int proto = 0;

    AT_CMD_PARSE_NUMBER(0, &proto);

    if (proto >= 0 && proto <= 7) {
        at_wifi_config->ap_proto.byte = (uint8_t)proto;
        if (at->store)
            at_wifi_config_save(AT_CONFIG_KEY_WIFI_AP_PROTO);
    }
    else
        return AT_RESULT_CODE_ERROR;

    return AT_RESULT_CODE_OK;
}

static int at_query_cmd_cwstaproto(int argc, const char **argv)
{
    at_response_string("+CWSTAPROTO:%d", at_wifi_config->sta_proto.byte);
    return AT_RESULT_CODE_OK;
}

static int at_setup_cmd_cwstaproto(int argc, const char **argv)
{
    int proto = 0;

    AT_CMD_PARSE_NUMBER(0, &proto);

    if (proto >= 0 && proto <= 7) {
        at_wifi_config->sta_proto.byte = (uint8_t)proto;
        if (at->store)
            at_wifi_config_save(AT_CONFIG_KEY_WIFI_STA_PROTO);
    }
    else
        return AT_RESULT_CODE_ERROR;

    return AT_RESULT_CODE_OK;
}

static int at_setup_cmd_cwstartsmart(int argc, const char **argv)
{
    int min_len;
    int channel = 1;

    AT_CMD_PARSE_NUMBER(0, &min_len);
    at_wifi_sniffer_start(min_len);
    while(1) {
        at_wifi_sniffer_set_channel(channel);
        bl_os_msleep(300);

        channel++;
        if (channel > 13)
            channel = 1;
    }
    return AT_RESULT_CODE_OK;
}

static int at_exe_cmd_cwstartsmart(int argc, const char **argv)
{
    return AT_RESULT_CODE_ERROR;
}

static int at_exe_cmd_cwstopsmart(int argc, const char **argv)
{
    return AT_RESULT_CODE_ERROR;
}

static int at_setup_cmd_wps(int argc, const char **argv)
{
    return AT_RESULT_CODE_ERROR;
}

static int at_setup_cmd_mdns(int argc, const char **argv)
{
    return AT_RESULT_CODE_ERROR;
}

static int at_query_cmd_cwhostname(int argc, const char **argv)
{
    at_response_string("+CWHOSTNAME:%s\r\n", at_wifi_config->hostname);
    return AT_RESULT_CODE_OK;
}

static int at_setup_cmd_cwhostname(int argc, const char **argv)
{
    char hostname[28];

    AT_CMD_PARSE_STRING(0, hostname, sizeof(hostname));

    strcpy(at_wifi_config->hostname, hostname);
    return AT_RESULT_CODE_OK;
}

static int at_query_cmd_cwcountry(int argc, const char **argv)
{
    char *country_code_string[WIFI_COUNTRY_CODE_MAX] = {"CN", "JP", "US", "EU"};
    at_response_string("+CWCOUNTRY:%d,\"%s\",%d,%d\r\n", at_wifi_config->wifi_country.country_policy, 
        country_code_string[at_wifi_config->wifi_country.country_code], at_wifi_config->wifi_country.start_channel, at_wifi_config->wifi_country.total_channel_count);
    return AT_RESULT_CODE_OK;
}

static int at_setup_cmd_cwcountry(int argc, const char **argv)
{
    char code[5];
    char *country_code_string[WIFI_COUNTRY_CODE_MAX] = {"CN", "JP", "US", "EU"};
    int country_policy;
    int country_code;
    int start_channel;
    int total_channel_count;

    AT_CMD_PARSE_NUMBER(0, &country_policy);
    AT_CMD_PARSE_STRING(1, code, sizeof(code));
    AT_CMD_PARSE_NUMBER(2, &start_channel);
    AT_CMD_PARSE_NUMBER(3, &total_channel_count);

    if (country_policy != 0 && country_policy != 1)
        return AT_RESULT_CODE_ERROR;
    for (country_code=0; country_code<WIFI_COUNTRY_CODE_MAX; country_code++) {
        if (strcasecmp(code, country_code_string[country_code]) == 0)
            break;
    }
    if (country_code >= WIFI_COUNTRY_CODE_MAX)
        return AT_RESULT_CODE_ERROR;
    if (start_channel < 1 || start_channel > 14)
        return AT_RESULT_CODE_ERROR;
    if (total_channel_count < 1 || total_channel_count > 14)
        return AT_RESULT_CODE_ERROR;

    at_wifi_config->wifi_country.country_policy = (uint8_t)country_policy;
    at_wifi_config->wifi_country.country_code = (uint8_t)country_code;
    at_wifi_config->wifi_country.start_channel = (uint8_t)start_channel;
    at_wifi_config->wifi_country.total_channel_count = (uint8_t)total_channel_count;
    if (at->store)
        at_wifi_config_save(AT_CONFIG_KEY_WIFI_COUNTRY_CODE);
    return AT_RESULT_CODE_OK;
}

static const at_cmd_struct at_wifi_cmd[] = {
    {"+CWMODE", NULL, at_query_cmd_cwmode, at_setup_cmd_cwmode, NULL, 1, 2},
    {"+CWSTATE", NULL, at_query_cmd_cwstate, NULL, NULL, 0, 0},
    {"+CWJAP", NULL, at_query_cmd_cwjap, at_setup_cmd_cwjap, at_exe_cmd_cwjap, 2, 9},
    {"+CWRECONNCFG", NULL, at_query_cmd_cwreconncfg, at_setup_cmd_cwreconncfg, NULL, 2, 2},
    {"+CWLAPOPT", NULL, NULL, at_setup_cmd_cwlapopt, NULL, 2, 4},
    {"+CWLAP", NULL, NULL, at_setup_cmd_cwlap, at_exe_cmd_cwlap, 1, 6},
    {"+CWQAP", NULL, NULL, NULL, at_exe_cmd_cwqap, 0, 0},
    {"+CWSAP", NULL, at_query_cmd_cwsap, at_setup_cmd_cwsap, NULL, 4, 6},
    {"+CWLIF", NULL, NULL, NULL, at_exe_cmd_cwlif, 0, 0},
    {"+CWQIF", NULL, NULL, at_setup_cmd_cwqif, at_exe_cmd_cwqif, 1, 1},
    {"+CWDHCP", NULL, at_query_cmd_cwdhcp, at_setup_cmd_cwdhcp, NULL, 2, 2},
    {"+CWDHCPS", NULL, at_query_cmd_cwdhcps, at_setup_cmd_cwdhcps, NULL, 1, 4},
    {"+CWAUTOCONN", NULL, at_query_cmd_cwautoconn, at_setup_cmd_cwautoconn, NULL, 1, 1},
    {"+CWAPPROTO", NULL, at_query_cmd_cwapproto, at_setup_cmd_cwapproto, NULL, 1, 1},
    {"+CWSTAPROTO", NULL, at_query_cmd_cwstaproto, at_setup_cmd_cwstaproto, NULL, 1, 1},
    {"+CIPSTAMAC", NULL, at_query_cmd_cipstamac, at_setup_cmd_cipstamac, NULL, 1, 1},
    {"+CIPAPMAC", NULL, at_query_cmd_cipapmac, at_setup_cmd_cipapmac, NULL, 1, 1},
    {"+CIPSTA", NULL, at_query_cmd_cipsta, at_setup_cmd_cipsta, NULL, 1, 3},
    {"+CIPAP", NULL, at_query_cmd_cipap, at_setup_cmd_cipap, NULL, 1, 3},
    {"+CWSTARTSMART", NULL, NULL, at_setup_cmd_cwstartsmart, at_exe_cmd_cwstartsmart, 1, 3},
    {"+CWSTOPSMART", NULL, NULL, NULL, at_exe_cmd_cwstopsmart, 0, 0},
    {"+WPS", NULL, NULL, at_setup_cmd_wps, NULL, 1, 2},
    {"+MDNS", NULL, NULL, at_setup_cmd_mdns, NULL, 1, 4},
    {"+CWHOSTNAME", NULL, at_query_cmd_cwhostname, at_setup_cmd_cwhostname, NULL, 1, 1},
    {"+CWCOUNTRY", NULL, at_query_cmd_cwcountry, at_setup_cmd_cwcountry, NULL, 4, 4},
};

bool at_wifi_cmd_regist(void)
{
    at_wifi_config_init();

    at_wifi_start();

    at_register_function(at_wifi_config_default, at_wifi_stop);

    if (at_cmd_register(at_wifi_cmd, sizeof(at_wifi_cmd) / sizeof(at_wifi_cmd[0])) == 0)
        return true;
    else
        return false;
}

