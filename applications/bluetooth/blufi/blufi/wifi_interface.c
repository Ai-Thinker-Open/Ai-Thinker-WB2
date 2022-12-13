#include "wifi_interface.h"

#include <stdio.h>
#include <string.h>
#include <FreeRTOS.h>
#include <task.h>

#include <bl_wifi.h>
#include <hal_wifi.h>
#include <wifi_mgmr_ext.h>
#include <bl60x_fw_api.h>
#include <aos/yloop.h>
#include <aos/kernel.h>

#define DHCP_MAX_HLEN 6
#define AT_WIFI_MAX_STA_NUM 10

blufi_wifi_conn_event_cb_t sg_blufi_conn_cb = NULL;

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

/* if not 0, means wifi init down */
int g_wifi_mgmr_done;
static char _wifi_pmk[68];
static struct wifi_ap_sta_info g_wifi_ap_sta_info[AT_WIFI_MAX_STA_NUM];
static wifi_interface_t wifi_sta_interface;
static wifi_conf_t conf =
    {
        .country_code = "CN",
};

int wifi_ap_get_sta_ip(uint8_t mac[6], uint32_t *ip)
{
    int i;

    for (i = 0; i < AT_WIFI_MAX_STA_NUM; i++)
    {
        if (g_wifi_ap_sta_info[i].valid_time != 0 && memcmp(g_wifi_ap_sta_info[i].mac, mac, 6) == 0)
        {
            *ip = g_wifi_ap_sta_info[i].ip;
            return 0;
        }
    }
    return -1;
}

static void event_cb_wifi_event(input_event_t *event, void *private_data)
{

    switch (event->code)
    {
    case CODE_WIFI_ON_INIT_DONE:
    {
        wifi_mgmr_start_background(&conf);
        puts("[WIFI] [EVT] CODE_WIFI_ON_INIT_DONE\r\n");
    }
    break;
    case CODE_WIFI_ON_MGMR_DONE:
    {
        g_wifi_mgmr_done = 1;
        puts("[WIFI] [EVT] CODE_WIFI_ON_MGMR_DONE\r\n");
    }
    break;
    case CODE_WIFI_ON_SCAN_DONE:
    {
        printf("[WIFI] [EVT] SCAN Result: %s\r\n", WIFI_SCAN_DONE_EVENT_OK == event->value ? "OK" : "Busy now");
    }
    break;
    case CODE_WIFI_ON_DISCONNECT:
    {
        printf("[WIFI] [EVT] CODE_WIFI_ON_DISCONNECT Reason: %s\r\n", wifi_mgmr_status_code_str(event->value));

        printf("event->value:%ld\r\n", event->value);

        /* 以下情况过于复杂，注释掉 */
        if (event->value == WLAN_FW_4WAY_HANDSHAKE_ERROR_PSK_TIMEOUT_FAILURE ||
            event->value == WLAN_FW_AUTH_OR_ASSOC_RESPONSE_TIMEOUT_FAILURE)
        {
        }
        else if (event->value == WLAN_FW_4WAY_HANDSHAKE_TX_DEAUTH_FRAME_TRANSMIT_FAILURE ||
                 event->value == WLAN_FW_4WAY_HANDSHAKE_TX_DEAUTH_FRAME_ALLOCATE_FAIILURE ||
                 event->value == WLAN_FW_DEAUTH_BY_AP_WHEN_NOT_CONNECTION)
        {
        }
        else if (event->value == WLAN_FW_SCAN_NO_BSSID_AND_CHANNEL)
        {
        }
        else if ((event->value == WLAN_FW_DEAUTH_BY_AP_WHEN_CONNECTION) || (event->value == WLAN_FW_DISCONNECT_BY_USER_WITH_DEAUTH)) /* WiFi断开 */
        {
        }
        else
        {
        }
    }
    break;
    case CODE_WIFI_ON_CONNECTING:
    {
        printf("[WIFI] [EVT] CODE_WIFI_ON_CONNECTING \r\n");
    }
    break;
    case CODE_WIFI_CMD_RECONNECT:
    {
        printf("[WIFI] [EVT] CODE_WIFI_CMD_RECONNECT \r\n");
    }
    break;
    case CODE_WIFI_ON_CONNECTED:
    {
        printf("[WIFI] [EVT] CODE_WIFI_ON_CONNECTED \r\n");

        aos_post_event(EV_WIFI, CODE_WIFI_ON_GOT_IP, 0);
    }
    break;

    case CODE_WIFI_ON_GOT_IP:
    {
        printf("[WIFI] [EVT] CODE_WIFI_ON_GOT_IP \r\n");

        if (sg_blufi_conn_cb)
        {

            sg_blufi_conn_cb(BLUFI_STATION_GOT_IP, NULL);
        }
    }
    break;
    default:
    {
        printf("[WIFI] [EVT] Unknown code %u\r\n", event->code);
        /*nothing*/
    }
    }
}

int wifi_conn_ap_info_get(sta_config_t *sta)
{
    wifi_mgmr_sta_connect_ind_stat_info_t wifi_info;
    wifi_mgmr_sta_connect_ind_stat_get(&wifi_info);
    strcpy(sta->cwjap_param.ssid, wifi_info.ssid);
    memcpy(sta->cwjap_param.bssid, wifi_info.bssid, 6);
    return 0;
}

static void wifi_sta_disconnect(void)
{
    int i;
    int state;

    if (wifi_sta_interface)
    {
        wifi_mgmr_sta_autoconnect_disable();
        /*XXX Must make sure sta is already disconnect, otherwise sta disable won't work*/
        vTaskDelay(1000);

        wifi_mgmr_sta_disconnect();
        for (i = 0; i < 200; i++)
        {
            wifi_mgmr_state_get(&state);
            if (state == WIFI_STATE_IDLE || state == WIFI_STATE_WITH_AP_IDLE ||
                state == WIFI_STATE_DISCONNECT || state == WIFI_STATE_WITH_AP_DISCONNECT)
                break;
            vTaskDelay(100);
        }

        wifi_mgmr_sta_disable(NULL);
        for (i = 0; i < 200; i++)
        {
            wifi_mgmr_state_get(&state);
            if (state == WIFI_STATE_IDLE || state == WIFI_STATE_WITH_AP_IDLE)
                break;
            vTaskDelay(100);
        }

        wifi_sta_interface = NULL;
        // g_wifi_sta_is_connected = 0;
    }
}

int axk_hal_conn_ap_info_set(cwjap_param_t *cwjap_param)
{

    if (strlen(cwjap_param->pwd) != 0)
    {
        wifi_mgmr_psk_cal(cwjap_param->pwd, cwjap_param->ssid, strlen(cwjap_param->ssid), _wifi_pmk);
    }

    wifi_sta_disconnect();
    if (!wifi_sta_interface)
    {
        wifi_sta_interface = wifi_mgmr_sta_enable();
        wifi_mgmr_sta_connect(wifi_sta_interface, cwjap_param->ssid, cwjap_param->pwd, NULL, NULL, 0, 0);
    }

    return 0;
}

int axk_hal_disconn_ap(void)
{
    wifi_sta_disconnect();

    return 0;
}

void wifi_interface_init(blufi_wifi_conn_event_cb_t cb)
{
    aos_register_event_filter(EV_WIFI, event_cb_wifi_event, NULL);

    hal_wifi_start_firmware_task();
    /*Trigger to start Wi-Fi*/
    aos_post_event(EV_WIFI, CODE_WIFI_ON_INIT_DONE, 0);

    sg_blufi_conn_cb = cb;
}
