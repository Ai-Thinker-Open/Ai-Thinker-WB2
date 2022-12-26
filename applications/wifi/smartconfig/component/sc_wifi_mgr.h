#ifndef __SC_WIFI_MGR_H__
#define __SC_WIFI_MGR_H__

#include <stdint.h>
#include <wifi_mgmr_ext.h>

int sc_scan_init(void);
void sc_scan_deinit(void);
int sc_scan_start(void);
int sc_get_next_channel(int chan_cur);
wifi_mgmr_ap_item_t *sc_scan_get_ap_by_bssid(uint8_t *bssid);


#endif
