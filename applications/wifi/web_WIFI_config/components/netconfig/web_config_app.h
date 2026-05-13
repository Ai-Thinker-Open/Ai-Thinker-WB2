#pragma once

#include <stdbool.h>
#include <stdint.h>
#include <stddef.h>

#define WC_TAG "web_config"

typedef struct wc_saved_cfg {
    char net_ssid[33];
    char net_pass[65];
    char tcp_url[65];
    int tcp_port;
} wc_saved_cfg_t;

typedef struct wc_scan_ctx {
    char ssids[50][33];
    uint8_t chans[50];
    int count;
} wc_scan_ctx_t;

extern wc_scan_ctx_t g_scan_ctx;

void web_config_wifi_main_task(void *arg);
void web_config_http_start(void);
void web_config_apply_sta_from_json(const char *ssid, const char *pass);
void web_config_save_tcp_only(const wc_saved_cfg_t *cfg);

void wc_scan_result_refresh(void);

int wc_cfg_load(wc_saved_cfg_t *out);
int wc_cfg_save(const wc_saved_cfg_t *cfg);
