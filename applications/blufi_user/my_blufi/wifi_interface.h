#ifndef __WIFI_INTERFACE_H__
#define __WIFI_INTERFACE_H__

#include "blufi.h"
void wifi_interface_init(blufi_wifi_conn_event_cb_t cb);

int wifi_conn_ap_info_get(sta_config_t *sta);

int axk_hal_conn_ap_info_set(cwjap_param_t *cwjap_param);

int axk_hal_disconn_ap(void);
#endif