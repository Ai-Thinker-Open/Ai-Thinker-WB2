#include <FreeRTOS.h>
#include <task.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <aos/yloop.h>
#include <aos/kernel.h>
#include <lwip/inet.h>
#include <lwip/netif.h>
#include <wifi_mgmr_ext.h>
#include <hal_wifi.h>
#include <blog.h>
#include <easyflash.h>

#include "web_config_app.h"
#include "captive_portal.h"
#include "web_popup.h"
#include "wc_tcp_bridge.h"

#define AP_SSID "Ai-Thinker-Config"
#define AP_PWD  "12345678"

#define EF_KEY_SSID "wc_net_ssid"
#define EF_KEY_PASS "wc_net_pass"
#define EF_KEY_URL  "wc_tcp_url"
#define EF_KEY_PORT "wc_tcp_port"

static wifi_conf_t s_ap_conf = {
    .country_code = "CN",
};

static wifi_interface_t s_ap_if;
static wifi_interface_t s_sta_if;

wc_scan_ctx_t g_scan_ctx;

static int ssid_in_list(const char *ssid)
{
    int i;

    for (i = 0; i < g_scan_ctx.count; i++) {
        if (strcmp(g_scan_ctx.ssids[i], ssid) == 0) {
            return 1;
        }
    }
    return 0;
}

static void scan_item_cb(wifi_mgmr_ap_item_t *env, uint32_t *param1, wifi_mgmr_ap_item_t *item)
{
    (void)env;
    (void)param1;
    if (!item || g_scan_ctx.count >= 50) {
        return;
    }
    if (item->ssid_len == 0) {
        return;
    }
    char ss[33];
    memset(ss, 0, sizeof(ss));
    memcpy(ss, item->ssid, item->ssid_len < 32 ? item->ssid_len : 32);
    if (strlen(ss) == 0 || ssid_in_list(ss)) {
        return;
    }
    strncpy(g_scan_ctx.ssids[g_scan_ctx.count], ss, 32);
    g_scan_ctx.ssids[g_scan_ctx.count][32] = '\0';
    g_scan_ctx.chans[g_scan_ctx.count] = item->channel;
    g_scan_ctx.count++;
}

static void scan_done_cb(void *data, void *param)
{
    (void)data;
    (void)param;
    memset(&g_scan_ctx, 0, sizeof(g_scan_ctx));
    wifi_mgmr_scan_ap_all(NULL, NULL, scan_item_cb);
    blog_info("[wc] scan done, %d APs", g_scan_ctx.count);
}

void wc_scan_result_refresh(void)
{
    wifi_mgmr_scan(NULL, scan_done_cb);
}

ip4_addr_t wc_get_ap_ipv4(void)
{
    struct netif *ap_netif = netif_find("ap1");
    ip4_addr_t z;

    memset(&z, 0, sizeof(z));
    if (!ap_netif) {
        return z;
    }
    return *netif_ip4_addr(ap_netif);
}

static void parse_ip(const char *src, int out[4])
{
    char buf[24];
    char *p;
    int i;

    strncpy(buf, src, sizeof(buf) - 1);
    buf[sizeof(buf) - 1] = '\0';
    p = strtok(buf, ".");
    out[0] = p ? atoi(p) : 0;
    for (i = 1; i < 4; i++) {
        p = strtok(NULL, ".");
        out[i] = p ? atoi(p) : 0;
    }
}

static void wifi_ap_ip_set(const char *ip_addr, const char *netmask, const char *gw)
{
    struct netif *ap_netif = netif_find("ap1");
    int ap_ipaddr[4] = { 0 };
    int ap_netmask[4] = { 255, 255, 255, 0 };
    int ap_gw_arry[4] = { 0 };

    if (!ap_netif) {
        blog_error("[wc] netif ap1 not found");
        return;
    }

    parse_ip(ip_addr, ap_ipaddr);
    if (netmask) {
        parse_ip(netmask, ap_netmask);
    }
    if (gw) {
        parse_ip(gw, ap_gw_arry);
    }

    ip_addr_t ap_ip;
    ip_addr_t ap_mask;
    ip_addr_t ap_gw;
    IP4_ADDR(&ap_ip, ap_ipaddr[0], ap_ipaddr[1], ap_ipaddr[2], ap_ipaddr[3]);
    IP4_ADDR(&ap_mask, ap_netmask[0], ap_netmask[1], ap_netmask[2], ap_netmask[3]);
    IP4_ADDR(&ap_gw, ap_gw_arry[0], ap_gw_arry[1], ap_gw_arry[2], ap_gw_arry[3]);

    netif_set_down(ap_netif);
    netif_set_ipaddr(ap_netif, &ap_ip);
    netif_set_netmask(ap_netif, &ap_mask);
    netif_set_gw(ap_netif, &ap_gw);
    netif_set_up(ap_netif);
    blog_info("[wc] SoftAP IP %s", ip4addr_ntoa(netif_ip4_addr(ap_netif)));
}

static void wifi_ap_start(void)
{
    s_ap_if = wifi_mgmr_ap_enable();
    wifi_mgmr_conf_max_sta(4);
    wifi_mgmr_ap_start(s_ap_if, AP_SSID, 0, AP_PWD, 6);
    wifi_ap_ip_set("192.168.169.1", "255.255.255.0", "192.168.169.1");
    /* STA 与 AP 并存：先拉起 STA 接口，连接路由器时不再关闭 SoftAP */
    s_sta_if = wifi_mgmr_sta_enable();
}

static uint8_t wc_chan_for_ssid(const char *ssid)
{
    int i;

    if (!ssid || !ssid[0]) {
        return 0;
    }
    for (i = 0; i < g_scan_ctx.count; i++) {
        if (!strcmp(g_scan_ctx.ssids[i], ssid)) {
            return g_scan_ctx.chans[i];
        }
    }
    return 0;
}

static void wifi_sta_try_connect(const char *ssid, const char *pass)
{
    uint8_t ch;

    if (!ssid || !ssid[0]) {
        return;
    }
    if (!s_sta_if) {
        s_sta_if = wifi_mgmr_sta_enable();
    }
    ch = wc_chan_for_ssid(ssid);
    blog_info("[wc] STA connect to \"%s\" (hint ch=%u), AP stays up", ssid, (unsigned)ch);
    wifi_mgmr_sta_connect_mid(s_sta_if, (char *)ssid, (char *)pass, NULL, NULL, 0, ch, 1, 0);
}

int wc_cfg_load(wc_saved_cfg_t *out)
{
    size_t len = 0;
    memset(out, 0, sizeof(*out));

    ef_get_env_blob(EF_KEY_SSID, out->net_ssid, sizeof(out->net_ssid) - 1, &len);
    ef_get_env_blob(EF_KEY_PASS, out->net_pass, sizeof(out->net_pass) - 1, &len);
    ef_get_env_blob(EF_KEY_URL, out->tcp_url, sizeof(out->tcp_url) - 1, &len);

    char portbuf[16] = { 0 };
    ef_get_env_blob(EF_KEY_PORT, portbuf, sizeof(portbuf) - 1, &len);
    if (portbuf[0]) {
        out->tcp_port = atoi(portbuf);
    }
    return 0;
}

int wc_cfg_save(const wc_saved_cfg_t *cfg)
{
    ef_set_env_blob(EF_KEY_SSID, cfg->net_ssid, strlen(cfg->net_ssid));
    ef_set_env_blob(EF_KEY_PASS, cfg->net_pass, strlen(cfg->net_pass));
    ef_set_env_blob(EF_KEY_URL, cfg->tcp_url, strlen(cfg->tcp_url));
    char portbuf[16];
    snprintf(portbuf, sizeof(portbuf), "%d", cfg->tcp_port);
    ef_set_env_blob(EF_KEY_PORT, portbuf, strlen(portbuf));
    return 0;
}

void web_config_apply_sta_from_json(const char *ssid, const char *pass)
{
    wc_saved_cfg_t cfg;
    wc_cfg_load(&cfg);
    if (ssid) {
        strncpy(cfg.net_ssid, ssid, sizeof(cfg.net_ssid) - 1);
    }
    if (pass) {
        strncpy(cfg.net_pass, pass, sizeof(cfg.net_pass) - 1);
    }
    wc_cfg_save(&cfg);
    wifi_sta_try_connect(cfg.net_ssid, cfg.net_pass);
}

void web_config_save_tcp_only(const wc_saved_cfg_t *cfg)
{
    wc_cfg_save(cfg);
}

static void wifi_event_cb(input_event_t *event, void *private_data)
{
    (void)private_data;
    switch (event->code) {
    case CODE_WIFI_ON_INIT_DONE:
        blog_info("[wc] wifi init done");
        wifi_mgmr_start_background(&s_ap_conf);
        break;
    case CODE_WIFI_ON_MGMR_DONE:
        blog_info("[wc] wifi mgmr done, starting softAP");
        wifi_ap_start();
        break;
    case CODE_WIFI_ON_AP_STARTED:
        blog_info("[wc] softAP started, HTTP + captive DNS");
        web_config_http_start();
        captive_portal_start();
        web_popup_on_portal_active();
        {
            wc_saved_cfg_t cfg;
            wc_cfg_load(&cfg);
            if (cfg.net_ssid[0]) {
                blog_info("[wc] resume STA to \"%s\", SoftAP unchanged", cfg.net_ssid);
                wifi_sta_try_connect(cfg.net_ssid, cfg.net_pass);
            }
        }
        break;
    case CODE_WIFI_ON_CONNECTED:
        /* 单射频：STA 成功后把 AP 信道切到与路由器一致，避免 AP 掉线 */
        if (s_ap_if) {
            int ap_ch = 0;
            if (wifi_mgmr_channel_get(&ap_ch) == 0 && ap_ch > 0) {
                blog_info("[wc] STA linked, AP channel switch -> %d", ap_ch);
                wifi_mgmr_ap_chan_switch(s_ap_if, ap_ch, 3);
            }
        }
        break;
    case CODE_WIFI_ON_GOT_IP:
        blog_info("[wc] STA got IP (router OK), config AP still at http://192.168.169.1/");
        wc_tcp_bridge_on_sta_got_ip();
        break;
    default:
        break;
    }
}

void web_config_wifi_main_task(void *arg)
{
    (void)arg;
    aos_register_event_filter(EV_WIFI, wifi_event_cb, NULL);
    wifi_mgmr_scan_filter_hidden_ssid(0);
    hal_wifi_start_firmware_task();
    aos_post_event(EV_WIFI, CODE_WIFI_ON_INIT_DONE, 0);
    vTaskDelete(NULL);
}
