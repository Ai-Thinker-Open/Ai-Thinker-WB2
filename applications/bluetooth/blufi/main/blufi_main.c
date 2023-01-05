

#include <FreeRTOS.h>
#include <task.h>
#include <timers.h>
#include <stdio.h>
#include <stdint.h>
#include <string.h>

#include <lwip/tcpip.h>

#include <bl602_glb.h>

#include <bl_sys.h>
#include <bl_uart.h>
#include <cli.h>

//////////////////////////////////
#include <wifi_mgmr_ext.h>
#include "../wifi_mgmr.h"
#include "wifi_interface.h"
#include "blufi.h"
#include "blufi_api.h"
#include "blufi_hal.h"
#include "blufi_init.h"
#include "axk_blufi.h"
#include "ble_interface.h"
#include "blufi_security.h"
//////////////////////////////////

#define WIFI_MGMR_SCAN_ITEMS_MAX (50)

static bool ble_is_connected = false;
static bool gl_sta_connected = false;
blufi_config_t g_blufi_config = {0};

static void blufi_wifi_event(int event, void *param)
{
    extern wifi_mgmr_t wifiMgmr;
    int i;
    uint8_t ap_count = 0;
    _blufi_ap_record_t *ap_record = (_blufi_ap_record_t *)calloc(1, sizeof(_blufi_ap_record_t) * WIFI_MGMR_SCAN_ITEMS_MAX);
    printf("BLUFI BLEblufi_wifi_event= %d \r\n", event);
    switch (event)
    {
    case BLUFI_STATION_CONNECTED:
        gl_sta_connected = true;
        break;
    case BLUFI_STATION_DISCONNECTED:
        gl_sta_connected = false;
        break;
    case BLUFI_STATION_GOT_IP:
    {
        axk_blufi_extra_info_t info;
        memset(&info, 0, sizeof(axk_blufi_extra_info_t));
        wifi_conn_ap_info_get(&g_blufi_config.wifi.sta);
        memcpy(info.sta_bssid, g_blufi_config.wifi.sta.cwjap_param.bssid, 6);
        info.sta_bssid_set = true;
        info.sta_ssid = (uint8_t *)g_blufi_config.wifi.sta.cwjap_param.ssid;
        info.sta_ssid_len = strlen(g_blufi_config.wifi.sta.cwjap_param.ssid);

        if (ble_is_connected == true)
        {
            axk_blufi_send_wifi_conn_report(g_blufi_config.wifi.cwmode, _BLUFI_STA_CONN_SUCCESS, 0, &info);
        }
        else
        {
            printf("BLUFI BLE is not connected yet\r\n");
        }

        printf("BLUFI save ssid&&pwd \r\n");
        g_blufi_config.wifi.cwmode = WIFIMODE_STA;
    }
    break;
    case BLUFI_WIFI_SCAN_DONE:
        printf("BLUFI SCAN DONE DETECTED\n");
        printf("****************************************************************************************************\r\n");
        for (i = 0; i < sizeof(wifiMgmr.scan_items) / sizeof(wifiMgmr.scan_items[0]); i++)
        {
            if (wifiMgmr.scan_items[i].is_used && (!wifi_mgmr_scan_item_is_timeout(&wifiMgmr, &wifiMgmr.scan_items[i])))
            {
                ap_record[ap_count].rssi = wifiMgmr.scan_items[i].rssi;
                memcpy(ap_record[ap_count].ssid, wifiMgmr.scan_items[i].ssid, sizeof(wifiMgmr.scan_items[i].ssid));
                printf("index[%02d]: rssi: %3d, SSID: %s\r\n", i, ap_record[ap_count].rssi, ap_record[ap_count].ssid);
                ap_count++;
            }
            else
            {
                printf("index[%02d]: empty\r\n", i);
            }
        }
        if (ble_is_connected == true)
        {
            axk_blufi_send_wifi_list(ap_count, ap_record);
        }
        else
        {
            printf("BLUFI BLE is not connected yet\n");
        }
        printf("----------------------------------------------------------------------------------------------------\r\n");
        break;
    default:
        break;
    }
}

static void example_event_callback(_blufi_cb_event_t event, _blufi_cb_param_t *param)
{
    /* actually, should post to blufi_task handle the procedure,
     * now, as a example, we do it more simply */

    printf("BLUFI example_event_callback event= ]%d] \r\n", event);

    switch (event)
    {
    case AXK_BLUFI_EVENT_INIT_FINISH:
        printf("BLUFI init finish\n");
        axk_blufi_adv_start();
        break;
    case AXK_BLUFI_EVENT_DEINIT_FINISH:
        printf("BLUFI deinit finish\n");
        break;
    case AXK_BLUFI_EVENT_BLE_CONNECT:
        printf("BLUFI ble connect\n");
        ble_is_connected = true;
        axk_blufi_adv_stop();
        blufi_security_init();
        break;
    case AXK_BLUFI_EVENT_BLE_DISCONNECT:
        printf("BLUFI ble disconnect\n");
        ble_is_connected = false;
        blufi_security_deinit();
        // axk_blufi_adv_start();
        axk_blufi_profile_deinit();
        axk_hal_blufi_deinit();
        axk_blufi_adv_stop();
        break;
    case AXK_BLUFI_EVENT_SET_WIFI_OPMODE:
        printf("BLUFI Set WIFI opmode %d\n", param->wifi_mode.op_mode);
        // if (axk_hal_wifi_mode_set(WIFIMODE_STA, 0) != BLUFI_ERR_SUCCESS)
        // {
        //     printf("BLUFI axk_hal_wifi_mode_set fail\r\n");
        //     break;
        // }
        g_blufi_config.wifi.cwmode = WIFIMODE_STA;
        break;
    case AXK_BLUFI_EVENT_REQ_CONNECT_TO_AP:
    {
        cwjap_param_t cwjap_param = {0};
        printf("BLUFI requset wifi connect to AP\n");
        cwjap_param = g_blufi_config.wifi.sta.cwjap_param;
        if (axk_hal_conn_ap_info_set(&cwjap_param) != BLUFI_ERR_SUCCESS)
        {
            printf("BLUFI axk_hal_conn_ap_info_set fail\r\n");
            break;
        }
        g_blufi_config.wifi.sta.state = BLUFI_WIFI_STATE_CONNECTING;
    }

    break;
    case AXK_BLUFI_EVENT_REQ_DISCONNECT_FROM_AP:
        printf("BLUFI requset wifi disconnect from AP\n");
        axk_hal_disconn_ap();
        break;
    case AXK_BLUFI_EVENT_REPORT_ERROR:
        printf("BLUFI report error, error code %d\n", param->report_error.state);
        axk_blufi_send_error_info(param->report_error.state);
        break;
    case AXK_BLUFI_EVENT_GET_WIFI_STATUS:
    {
        wifi_mode_t mode;
        mode = g_blufi_config.wifi.cwmode;

        if (gl_sta_connected)
        {
            axk_blufi_extra_info_t info;
            memset(&info, 0, sizeof(axk_blufi_extra_info_t));
            wifi_conn_ap_info_get(&g_blufi_config.wifi.sta);
            memcpy(info.sta_bssid, g_blufi_config.wifi.sta.cwjap_param.bssid, 6);
            info.sta_bssid_set = true;
            info.sta_ssid = (uint8_t *)g_blufi_config.wifi.sta.cwjap_param.ssid;
            info.sta_ssid_len = strlen(g_blufi_config.wifi.sta.cwjap_param.ssid);
            axk_blufi_send_wifi_conn_report(mode, _BLUFI_STA_CONN_SUCCESS, 0, &info);
        }
        else
        {
            axk_blufi_send_wifi_conn_report(mode, _BLUFI_STA_CONN_FAIL, 0, NULL);
        }
        printf("BLUFI get wifi status from AP\n");

        break;
    }
    case AXK_BLUFI_EVENT_RECV_SLAVE_DISCONNECT_BLE:
        printf("blufi close a gatt connection\r\n");
        axk_blufi_disconnect();
        break;
    case AXK_BLUFI_EVENT_DEAUTHENTICATE_STA:
        /* TODO */
        break;
    case AXK_BLUFI_EVENT_RECV_STA_BSSID:
        memset(g_blufi_config.wifi.sta.cwjap_param.bssid, 0, 6);
        memcpy(g_blufi_config.wifi.sta.cwjap_param.bssid, param->sta_bssid.bssid, 6);
        // sta_config.sta.bssid_set = 1;
        // esp_wifi_set_config(WIFI_IF_STA, &sta_config);
        printf("Recv STA BSSID %s\r\n", param->sta_bssid.bssid);
        break;
    case AXK_BLUFI_EVENT_RECV_STA_SSID:
        memset(g_blufi_config.wifi.sta.cwjap_param.ssid, 0, 33);
        strncpy(g_blufi_config.wifi.sta.cwjap_param.ssid, (char *)param->sta_ssid.ssid, param->sta_ssid.ssid_len);

        printf("Recv STA SSID %s\r\n", (char *)g_blufi_config.wifi.sta.cwjap_param.ssid);
        break;
    case AXK_BLUFI_EVENT_RECV_STA_PASSWD:
        memset(g_blufi_config.wifi.sta.cwjap_param.pwd, 0, 64);
        strncpy(g_blufi_config.wifi.sta.cwjap_param.pwd, (char *)param->sta_ssid.ssid, param->sta_ssid.ssid_len);
        printf("Recv STA PASSWORD %s\r\n", (char *)g_blufi_config.wifi.sta.cwjap_param.pwd);
        break;
    case AXK_BLUFI_EVENT_RECV_SOFTAP_SSID:
        break;
    case AXK_BLUFI_EVENT_RECV_SOFTAP_PASSWD:
        break;
    case AXK_BLUFI_EVENT_RECV_SOFTAP_MAX_CONN_NUM:
        break;
    case AXK_BLUFI_EVENT_RECV_SOFTAP_AUTH_MODE:
        break;
    case AXK_BLUFI_EVENT_RECV_SOFTAP_CHANNEL:
        break;
    case AXK_BLUFI_EVENT_GET_WIFI_LIST:
        printf("Rev WiFi Scan Request\r\n");
        wifi_mgmr_scan(NULL, NULL);
        break;
    case AXK_BLUFI_EVENT_RECV_CUSTOM_DATA:
        printf("Recv Custom Data len:%d\r\n", param->custom_data.data_len);
        printf("Custom Data:%.*s\n", param->custom_data.data_len, param->custom_data.data);
        // echo
        axk_blufi_send_custom_data(param->custom_data.data, param->custom_data.data_len);
        break;
    case AXK_BLUFI_EVENT_RECV_USERNAME:
        /* Not handle currently */
        break;
    case AXK_BLUFI_EVENT_RECV_CA_CERT:
        /* Not handle currently */
        break;
    case AXK_BLUFI_EVENT_RECV_CLIENT_CERT:
        /* Not handle currently */
        break;
    case AXK_BLUFI_EVENT_RECV_SERVER_CERT:
        /* Not handle currently */
        break;
    case AXK_BLUFI_EVENT_RECV_CLIENT_PRIV_KEY:
        /* Not handle currently */
        break;
        ;
    case AXK_BLUFI_EVENT_RECV_SERVER_PRIV_KEY:
        /* Not handle currently */
        break;
    default:
        break;
    }
}

static _blufi_callbacks_t example_callbacks = {
    .event_cb = example_event_callback,
    .negotiate_data_handler = blufi_dh_negotiate_data_handler,
    .encrypt_func = blufi_aes_encrypt,
    .decrypt_func = blufi_aes_decrypt,
    .checksum_func = blufi_crc_checksum,
};

int at_blufi_start(void)
{
    int ret = -1;
    axk_hal_blufi_init();

    ret = _blufi_host_and_cb_init(&example_callbacks);
    if (ret)
    {
        printf("%s initialise failed: %d\n", __func__, ret);
    }
    return ret;
}

static void cmd_blufi_init(char *buf, int len, int argc, char **argv)
{
    at_blufi_start();
}

static void cmd_blufi_deinit(char *buf, int len, int argc, char **argv)
{
    axk_hal_ble_role_set(BLE_ROLE_DEINIT);
}

static void proc_main_entry(void *pvParameters)
{
    wifi_interface_init(blufi_wifi_event);
    at_blufi_start();
    vTaskDelete(NULL);
}

void main()
{
    static TaskHandle_t proc_main_task;
    bl_sys_init();
    xTaskCreate(proc_main_entry, (char *)"main_entry", 1024 * 14, NULL, 11, &proc_main_task);
    tcpip_init(NULL, NULL);
    printf("blufi demo test\r\n");
}
