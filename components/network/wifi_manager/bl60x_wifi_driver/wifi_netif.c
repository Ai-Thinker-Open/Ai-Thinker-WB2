#include <lwip/netifapi.h>

#include "wifi_mgmr.h"
#include "wifi_netif.h"

#define DEBUG_HEADER "[WF][IF] "

static void *wifi_dhcp_start_timer = NULL;

static void wifi_dhcp_start(void *data)
{
    struct netif *netif = (struct netif *)data;
    netifapi_dhcp_start(netif);
}

int wifi_netif_dhcp_start(struct netif *netif)
{
    if (0 == wifiMgmr.wlan_sta.dhcp_started) {
#if 0
        netifapi_dhcp_start(netif);
#else
        if (wifi_dhcp_start_timer) {
            bl_os_timer_delete(wifi_dhcp_start_timer, BL_OS_NO_WAITING);
            wifi_dhcp_start_timer = NULL;
        }
        wifi_dhcp_start_timer = bl_os_timer_create(wifi_dhcp_start, (void *)netif);
        bl_os_timer_start_once(wifi_dhcp_start_timer, 0, 100*1e6);
#endif
        wifiMgmr.wlan_sta.dhcp_started = 1;
    } else {
        bl_os_printf(DEBUG_HEADER "Skip DHCPCing...\r\n");
    }
    return 0;
}

int wifi_netif_dhcp_stop(struct netif *netif)
{
    netifapi_dhcp_stop(netif);
    wifiMgmr.wlan_sta.dhcp_started = 0;
    return 0;
}

