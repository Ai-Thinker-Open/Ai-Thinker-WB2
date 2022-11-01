#include <string.h>
#include <ethernetif.h>
#include <netif/etharp.h>
#include <lwip/dns.h>

#ifdef CFG_CHIP_BL602
#include <bl_efuse.h>
#endif

#include <bl_wifi.h>

#include "bl_defs.h"
#include "bl_tx.h"
#include "bl_msg_tx.h"
#include "bl_os_private.h"
#include "wifi_mgmr.h"
#include "wifi_mgmr_api.h"

#define WIFI_MTU_SIZE 1514

#if 0
#define NET_TRACE
#define ETH_RX_DUMP
#define ETH_TX_DUMP
#endif
#define MAX_ADDR_LEN    6

#ifdef NET_TRACE
#define NET_DEBUG         bl_os_printf
#else
#define NET_DEBUG(...)
#endif 
/**
 ****************************************************************************************
 *
 * @file wifi.c
 * Copyright (C) Bouffalo Lab 2016-2018
 *
 ****************************************************************************************
 */

static BL_TaskHandle_t taskHandle_output = NULL;

extern int bl_main_rtthread_start(struct bl_hw **bl_hw);

struct net_device
{
    struct bl_hw *bl_hw;
};

static struct net_device bl606a0_sta;

static void bl_tx_notify(void *cb_arg, bool tx_ok)
{
    //TODO static alloc taskHandle_output, no if else anymore
    if (taskHandle_output) {
        bl_os_task_notify(taskHandle_output);
    }

    return;
}

#if 1
/* ethernet device interface */
/* Transmit packet. */
static err_t wifi_tx(struct netif *netif, struct pbuf* p)
{
    struct wlan_netif *wlan;
    struct bl_custom_tx_cfm custom_cfm = { bl_tx_notify, NULL };
#if 0
    struct net_device * bl606a0_sta = (struct net_device *)dev;
#endif
    struct pbuf* q;
    static uint32_t ticks;
#define WARNING_LIMIT_TICKS_TX_SIZE  2000
#ifdef ETH_TX_DUMP
    int dump_count = 0;
    uint8_t * dump_ptr;
    int dump_i;
#endif

    if (p->tot_len > WIFI_MTU_SIZE) {
        if (bl_os_get_time_ms() - ticks > WARNING_LIMIT_TICKS_TX_SIZE) {
            bl_os_printf("[TX] %s, TX size too big: %u bytes\r\n", __func__, p->tot_len);
            ticks = bl_os_get_time_ms();
        }
        return ERR_IF;
    }

#ifdef ETH_TX_DUMP
    NET_DEBUG("tx_dump, size:%d\r\n", p->tot_len);
#endif
    for (q = p; q != NULL; q = q->next)
    {
#ifdef ETH_RX_DUMP
        dump_ptr = q->payload;
        for(dump_i=0; dump_i<q->len; dump_i++)
        {
            NET_DEBUG("%02x ", *dump_ptr);
            if( ((dump_count+1)%8) == 0 )
            {
                NET_DEBUG("  ");
            }
            if( ((dump_count+1)%16) == 0 )
            {
                NET_DEBUG("\r\n");
            }
            dump_count++;
            dump_ptr++;
        }
#endif
    }
#ifdef ETH_RX_DUMP
    NET_DEBUG("\r\n");
#endif

    if (0 == taskHandle_output) {
        taskHandle_output = bl_os_task_get_current_task();
    }
    wlan = container_of(netif, struct wlan_netif, netif);
    return bl_output(bl606a0_sta.bl_hw, netif, p, 0 == wlan->mode, &custom_cfm);
}
#endif

int bl_wifi_eth_tx(struct pbuf *p, bool is_sta, struct bl_custom_tx_cfm *custom_cfm)
{
    err_t ret;
    struct netif *iface;
    if (is_sta) {
        iface = wifi_mgmr_sta_netif_get();
    } else {
        iface = wifi_mgmr_ap_netif_get();
    }
    ret = bl_output(bl606a0_sta.bl_hw, iface, p, is_sta, custom_cfm);
    if (ret != ERR_OK) {
        pbuf_free(p);
        return -1;
    }
    return 0;
}

static void netif_status_callback(struct netif *netif)
{
    bl_os_printf("[lwip] netif status callback\r\n"
                "  IP: %s\r\n", ip4addr_ntoa(netif_ip4_addr(netif)));
    bl_os_printf("  MK: %s\r\n", ip4addr_ntoa(netif_ip4_netmask(netif)));
    bl_os_printf("  GW: %s\r\n", ip4addr_ntoa(netif_ip4_gw(netif)));
    if (ip4_addr_isany(netif_ip4_addr(netif))) {
        wifi_mgmr_api_ip_update();
    } else {
        wifi_mgmr_api_ip_got();
    }
}

err_t bl606a0_wifi_netif_init(struct netif *netif)
{
    netif->hostname = wifiMgmr.hostname;
    netif->hwaddr_len = ETHARP_HWADDR_LEN;
    /* set netif maximum transfer unit */
    netif->mtu = 1500;
    /* Accept broadcast address and ARP traffic */
    netif->flags = NETIF_FLAG_BROADCAST | NETIF_FLAG_ETHARP;
    netif->output = etharp_output;
    netif->linkoutput = wifi_tx;
    netif_set_status_callback(netif, netif_status_callback);

    return 0;
}

int bl606a0_wifi_init(wifi_conf_t *conf)
{
    uint8_t mac[6];
    int ret;

    bl_os_printf("\r\n\r\n[BL] Initi Wi-Fi");
    memset(mac, 0, sizeof(mac));
    bl_wifi_mac_addr_get(mac);
    bl_os_printf(" with MAC #### %02X:%02X:%02X:%02X:%02X:%02X ####\r\n", mac[0],
            mac[1],
            mac[2],
            mac[3],
            mac[4],
            mac[5]
    );
    snprintf(wifiMgmr.hostname, MAX_HOSTNAME_LEN_CHECK, "Bouffalolab_%s-%02x%02x%02x", BL_CHIP_NAME, mac[3], mac[4], mac[5]);
    wifiMgmr.hostname[MAX_HOSTNAME_LEN_CHECK - 1] = '\0';
    bl_os_printf("     hostname: %s\r\n", wifiMgmr.hostname);
    bl_msg_update_channel_cfg(conf->country_code);
    bl_os_printf("-----------------------------------------------------\r\n");
    bl_wifi_clock_enable();//Enable wifi clock
    memset(&bl606a0_sta, 0, sizeof(bl606a0_sta));
    ret = bl_main_rtthread_start(&(bl606a0_sta.bl_hw));

    return ret;
}
