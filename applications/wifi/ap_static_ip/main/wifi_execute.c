#include "wifi_execute.h"
#include "blog.h"
#define AP_SSID "Ai-WB2"
#define AP_PASSWORD "12345678"
#define AP_IP "192.168.100.1"
#define AP_MAX_CONN_NUM 1
#define AP_CHANNEL 11

#define IP_SET_ADDR(a, b, c, d) (((uint32_t)((a)&0xff)) |       \
                                 ((uint32_t)((b)&0xff) << 8) |  \
                                 ((uint32_t)((c)&0xff) << 16) | \
                                 ((uint32_t)((d)&0xff) << 24))

static wifi_conf_t conf = {
    .country_code = "CN",
};

wifi_dhcp_server dhcp_server = { 120, 2, 101 }; //设置租赁时间为120秒，设置主机号范围在2~101之间
wifi_ap_info_t wifi_ap_info;
country_code_type country_code = WIFI_COUNTRY_CODE_CN; //设置国家码为中国
wifi_ip_params_t ap_ip_params = { 0 };
static wifi_interface_t g_wifi_ap_interface = NULL;

void wifi_background_init(country_code_type country_code)
{
    char* country_code_string[WIFI_COUNTRY_CODE_MAX] = { "CN", "JP", "US", "EU" };

    /* init wifi background*/
    strcpy(conf.country_code, country_code_string[country_code]);
    wifi_mgmr_start_background(&conf);

    /* enable scan hide ssid */
    wifi_mgmr_scan_filter_hidden_ssid(0);
}

static int wifi_ap_stop(void)
{
    int i;
    struct wifi_sta_basic_info sta_info;
    uint8_t sta_cnt;

    if (g_wifi_ap_interface)
    {
        wifi_mgmr_ap_sta_cnt_get(&sta_cnt);
        for (i = 0; i < sta_cnt; i++)
        {
            wifi_mgmr_ap_sta_info_get(&sta_info, i);
            if (!sta_info.is_used || (sta_info.sta_idx == 0xef))
                continue;

            if (memcmp(sta_info.sta_mac, NULL, 6) == 0)
                wifi_mgmr_ap_sta_delete(i);
        }
        wifi_mgmr_ap_stop(NULL);
        vTaskDelay(500);
        g_wifi_ap_interface = NULL;
    }
    return 1;
}

static int wifi_set_ap_ip(char* ap_ip)
{
    uint8_t ip[4] = { 0 }, i = 0, j = 0;
    char* temp_arg = (char*)calloc(1, 6);
    int ret = wifi_ap_stop();
    memset(ip, 0, sizeof(ip));
    memset(&ap_ip_params, 0, sizeof(ap_ip_params));
    memset(temp_arg, 0, sizeof(temp_arg));

    for (int i = 0; i < 4; i++)
    {
        temp_arg = ap_ip;
        while (*(ap_ip++) != '.')
        {
            j++;
        }
        temp_arg[j] = '\0';
        ip[i] = atoi(temp_arg);
        j = 0;
    }
    if (ret)
    {
        ap_ip_params.ip = IP_SET_ADDR(ip[0], ip[1], ip[2], ip[3]);
        ap_ip_params.gateway = IP_SET_ADDR(ip[0], ip[1], ip[2], 1);
        ap_ip_params.netmask = IP_SET_ADDR(255, 255, 255, 0);
    }
    wifi_mgmr_ap_ip_set(ap_ip_params.ip, ap_ip_params.gateway, ap_ip_params.netmask);
    return ret;
}

void wifi_ap_start(void)
{
    wifi_ap_info.channel = AP_CHANNEL;
    wifi_ap_info.max_conn = AP_MAX_CONN_NUM;
    wifi_ap_info.ssid_hidden = 0;
    char ap_ssid[32] = { 0 };
    memset(ap_ssid, 0, sizeof(ap_ssid));
    wifi_mgmr_ap_mac_get(wifi_ap_info.addr);
    sprintf(ap_ssid, "WB2_%02X%02X%02X", wifi_ap_info.addr[2], wifi_ap_info.addr[3], wifi_ap_info.addr[4], wifi_ap_info.addr[5]);
    if (!g_wifi_ap_interface)
    {
        wifi_set_ap_ip(AP_IP);
        g_wifi_ap_interface = wifi_mgmr_ap_enable();
        wifi_mgmr_ap_dhcp_enable();
        wifi_mgmr_ap_dhcp_range_set(ap_ip_params.ip, ap_ip_params.netmask, dhcp_server.start, dhcp_server.end);
        wifi_mgmr_conf_max_sta(wifi_ap_info.max_conn);
        wifi_mgmr_ap_start(g_wifi_ap_interface, AP_SSID, wifi_ap_info.ssid_hidden, AP_PASSWORD, wifi_ap_info.channel);
    }
}

static void wifi_event_cb(input_event_t* event, void* private_data)
{
    static char* ssid;
    static char* password;

    blog_info("[APP] [EVT] event->code %d", event->code);

    blog_info("[SYS] Memory left is %d Bytes", xPortGetFreeHeapSize());

    switch (event->code)
    {
        case CODE_WIFI_ON_AP_STARTED:
        {
            blog_info("[APP] [EVT] AP INIT DONE %lld", aos_now_ms());
        }
        break;

        case CODE_WIFI_ON_AP_STOPPED:
        {
            blog_info("[APP] [EVT] AP STOP DONE %lld", aos_now_ms());
        }
        break;

        case CODE_WIFI_ON_INIT_DONE:
        {
            blog_info("[APP] [EVT] INIT DONE %lld", aos_now_ms());
            wifi_mgmr_start_background(&conf);
            wifi_ap_start();
        }
        break;
        case CODE_WIFI_ON_MGMR_DONE:
        {
            blog_info("[APP] [EVT] MGMR DONE %lld", aos_now_ms());
        }
        break;
        case CODE_WIFI_ON_SCAN_DONE:
        {
            blog_info("[APP] [EVT] SCAN Done %lld", aos_now_ms());
        }
        break;
        case CODE_WIFI_ON_DISCONNECT:
        {
            blog_info("wifi sta disconnected");
            blog_info("[APP] [EVT] disconnect %lld", aos_now_ms());
        }
        break;
        case CODE_WIFI_ON_CONNECTING:
        {
            blog_info("[APP] [EVT] Connecting %lld", aos_now_ms());
        }
        break;
        case CODE_WIFI_CMD_RECONNECT:
        {
            blog_info("[APP] [EVT] Reconnect %lld", aos_now_ms());
        }
        break;
        case CODE_WIFI_ON_CONNECTED:
        {
            blog_info("wifi sta connected");
            blog_info("[APP] [EVT] connected %lld", aos_now_ms());
        }
        break;
        case CODE_WIFI_ON_PRE_GOT_IP:
        {
            blog_info("[APP] [EVT] connected %lld", aos_now_ms());
        }
        break;
        case CODE_WIFI_ON_GOT_IP:
        {
            blog_info("WIFI STA GOT IP");
            blog_info("[APP] [EVT] GOT IP %lld", aos_now_ms());
        }
        break;
        case CODE_WIFI_ON_PROV_SSID:
        {
            blog_info("[APP] [EVT] [PROV] [SSID] %lld: %s",
                   aos_now_ms(),
                   event->value ? (const char*)event->value : "UNKNOWN");
            if (ssid)
            {
                vPortFree(ssid);
                ssid = NULL;
            }
            ssid = (char*)event->value;
        }
        break;
        case CODE_WIFI_ON_PROV_BSSID:
        {
            blog_info("[APP] [EVT] [PROV] [BSSID] %lld: %s",
                   aos_now_ms(),
                   event->value ? (const char*)event->value : "UNKNOWN");
            if (event->value)
            {
                vPortFree((void*)event->value);
            }
        }
        break;
        case CODE_WIFI_ON_PROV_PASSWD:
        {
            blog_info("[APP] [EVT] [PROV] [PASSWD] %lld: %s", aos_now_ms(),
                   event->value ? (const char*)event->value : "UNKNOWN");
            if (password)
            {
                vPortFree(password);
                password = NULL;
            }
            password = (char*)event->value;
        }
        break;
        case CODE_WIFI_ON_PROV_CONNECT:
        {
            blog_info("connecting to %s:%s...", ssid, password);
        }
        break;
        case CODE_WIFI_ON_PROV_DISCONNECT:
        {
            blog_info("[APP] [EVT] [PROV] [DISCONNECT] %lld", aos_now_ms());
        }
        break;
        default:
        {
            blog_info("[APP] [EVT] Unknown code %u, %lld", event->code, aos_now_ms());
            /*nothing*/
        }
    }
}

void wifi_execute(void* pvParameters)
{
    aos_register_event_filter(EV_WIFI, wifi_event_cb, NULL);
    static uint8_t stack_wifi_init = 0;

    if (1 == stack_wifi_init)
    {
        blog_info("Wi-Fi Stack Started already!!!");
        return;
    }
    stack_wifi_init = 1;
    blog_info("Wi-Fi init successful");
    hal_wifi_start_firmware_task();
    /*Trigger to start Wi-Fi*/
    aos_post_event(EV_WIFI, CODE_WIFI_ON_INIT_DONE, 0);

    vTaskDelete(NULL);
}