#include "wifi_execute.h"

#define STA_SSID "Rita"
#define STA_PASSWORD "rita1234"
#define WIFI_RECONN_INTERVAL_SEC 15
#define WIFI_RECONN_REPEAT_TIMES 10

#define STA_STATIC_IP "192.168.43.133"

#define IP_SET_ADDR(a, b, c, d) (((uint32_t)((a)&0xff)) |       \
                                 ((uint32_t)((b)&0xff) << 8) |  \
                                 ((uint32_t)((c)&0xff) << 16) | \
                                 ((uint32_t)((d)&0xff) << 24))

static wifi_conf_t conf = {
    .country_code = "CN",
};

country_code_type country_code = WIFI_COUNTRY_CODE_CN;
wifi_ip_params_t sta_ip_params = {0};
static wifi_interface_t g_wifi_sta_interface = NULL;
static int g_wifi_sta_is_connected = 0;

void wifi_background_init(country_code_type country_code)
{
    char *country_code_string[WIFI_COUNTRY_CODE_MAX] = {"CN", "JP", "US", "EU"};

    /* init wifi background*/
    strcpy(conf.country_code, country_code_string[country_code]);
    wifi_mgmr_start_background(&conf);

    /* enable scan hide ssid */
    wifi_mgmr_scan_filter_hidden_ssid(0);
}

static int wifi_get_station_ip_str(void)
{
    int state = WIFI_STATE_IDLE;
    ip4_addr_t ipaddr, gwaddr, maskaddr;
    wifi_mgmr_state_get(&state);
    if (state == WIFI_STATE_CONNECTED_IP_GOT || state == WIFI_STATE_WITH_AP_CONNECTED_IP_GOT || state == CODE_WIFI_ON_GOT_IP)
    {
        wifi_mgmr_sta_ip_get(&sta_ip_params.ip, &sta_ip_params.gateway, &sta_ip_params.netmask);
        ipaddr.addr = sta_ip_params.ip;
        gwaddr.addr = sta_ip_params.gateway;
        maskaddr.addr = sta_ip_params.netmask;
    }
    else
    {
        ipaddr.addr = 0;
        gwaddr.addr = 0;
        maskaddr.addr = 0;
    }
    printf("GOT %s:\"%s\"\r\n", "ip", ip4addr_ntoa(&ipaddr));
    printf("GOT %s:\"%s\"\r\n", "gateway", ip4addr_ntoa(&gwaddr));
    printf("GOT %s:\"%s\"\r\n", "netmask", ip4addr_ntoa(&maskaddr));
    return 0;
}

int wifi_sta_connect(const char *sta_ip)
{
    int flag = 0;

    g_wifi_sta_interface = wifi_mgmr_sta_enable();

    if (strlen(STA_SSID) > 0 || strlen(STA_PASSWORD) > 0)
    {
        wifi_mgmr_sta_autoconnect_set(WIFI_RECONN_INTERVAL_SEC, WIFI_RECONN_REPEAT_TIMES);
        wifi_mgmr_sta_autoconnect_enable();
        printf("got wifi sta ssid:%s, password:%s\n", STA_SSID, STA_PASSWORD);
        return wifi_mgmr_sta_connect(g_wifi_sta_interface, STA_SSID, STA_PASSWORD, NULL, NULL, 0, 0);
    }
    else
    {
        printf("there is no SSID and password\n");
        return -1;
    }
}

static void wifi_event_cb(input_event_t *event, void *private_data)
{
    static char *ssid;
    static char *password;

    printf("[APP] [EVT] event->code %d\r\n", event->code);

    printf("[SYS] Memory left is %d Bytes\r\n", xPortGetFreeHeapSize());

    switch (event->code)
    {
    case CODE_WIFI_ON_AP_STARTED:
    {
        printf("[APP] [EVT] AP INIT DONE %lld\r\n", aos_now_ms());
    }
    break;

    case CODE_WIFI_ON_AP_STOPPED:
    {
        printf("[APP] [EVT] AP STOP DONE %lld\r\n", aos_now_ms());
    }
    break;

    case CODE_WIFI_ON_INIT_DONE:
    {
        printf("[APP] [EVT] INIT DONE %lld\r\n", aos_now_ms());
        wifi_mgmr_start_background(&conf);
        wifi_sta_connect(STA_STATIC_IP);
    }
    break;
    case CODE_WIFI_ON_MGMR_DONE:
    {
        printf("[APP] [EVT] MGMR DONE %lld\r\n", aos_now_ms());
    }
    break;
    case CODE_WIFI_ON_SCAN_DONE:
    {
        printf("[APP] [EVT] SCAN Done %lld\r\n", aos_now_ms());
    }
    break;
    case CODE_WIFI_ON_DISCONNECT:
    {
        g_wifi_sta_is_connected = 0;
        printf("wifi sta disconnected\n");
        printf("[APP] [EVT] disconnect %lld\r\n", aos_now_ms());
    }
    break;
    case CODE_WIFI_ON_CONNECTING:
    {
        printf("[APP] [EVT] Connecting %lld\r\n", aos_now_ms());
    }
    break;
    case CODE_WIFI_CMD_RECONNECT:
    {
        printf("[APP] [EVT] Reconnect %lld\r\n", aos_now_ms());
    }
    break;
    case CODE_WIFI_ON_CONNECTED:
    {
        printf("wifi sta connected\n");
        printf("[APP] [EVT] connected %lld\r\n", aos_now_ms());
    }
    break;
    case CODE_WIFI_ON_PRE_GOT_IP:
    {
        printf("[APP] [EVT] connected %lld\r\n", aos_now_ms());
    }
    break;
    case CODE_WIFI_ON_GOT_IP:
    {
        printf("WIFI STA GOT IP\n");
        printf("[APP] [EVT] GOT IP %lld\r\n", aos_now_ms());
        g_wifi_sta_is_connected = 1;
        wifi_get_station_ip_str();
    }
    break;
    case CODE_WIFI_ON_PROV_SSID:
    {
        printf("[APP] [EVT] [PROV] [SSID] %lld: %s\r\n",
               aos_now_ms(),
               event->value ? (const char *)event->value : "UNKNOWN");
        if (ssid)
        {
            vPortFree(ssid);
            ssid = NULL;
        }
        ssid = (char *)event->value;
    }
    break;
    case CODE_WIFI_ON_PROV_BSSID:
    {
        printf("[APP] [EVT] [PROV] [BSSID] %lld: %s\r\n",
               aos_now_ms(),
               event->value ? (const char *)event->value : "UNKNOWN");
        if (event->value)
        {
            vPortFree((void *)event->value);
        }
    }
    break;
    case CODE_WIFI_ON_PROV_PASSWD:
    {
        printf("[APP] [EVT] [PROV] [PASSWD] %lld: %s\r\n", aos_now_ms(),
               event->value ? (const char *)event->value : "UNKNOWN");
        if (password)
        {
            vPortFree(password);
            password = NULL;
        }
        password = (char *)event->value;
    }
    break;
    case CODE_WIFI_ON_PROV_CONNECT:
    {
        printf("connecting to %s:%s...\r\n", ssid, password);
    }
    break;
    case CODE_WIFI_ON_PROV_DISCONNECT:
    {
        printf("[APP] [EVT] [PROV] [DISCONNECT] %lld\r\n", aos_now_ms());
    }
    break;
    default:
    {
        printf("[APP] [EVT] Unknown code %u, %lld\r\n", event->code, aos_now_ms());
        /*nothing*/
    }
    }
}

void wifi_execute(void *pvParameters)
{
    aos_register_event_filter(EV_WIFI, wifi_event_cb, NULL);
    static uint8_t stack_wifi_init = 0;

    if (1 == stack_wifi_init)
    {
        printf("Wi-Fi Stack Started already!!!\r\n");
        return;
    }
    stack_wifi_init = 1;
    printf("Wi-Fi init successful\r\n");
    hal_wifi_start_firmware_task();
    /*Trigger to start Wi-Fi*/
    aos_post_event(EV_WIFI, CODE_WIFI_ON_INIT_DONE, 0);

    vTaskDelete(NULL);
}