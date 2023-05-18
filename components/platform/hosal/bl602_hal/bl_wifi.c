#include <stdint.h>
#include <string.h>
#include <stdio.h>
#include <bl602.h>

#include "bl_efuse.h"
#include "bl_wifi.h"
#include "bl_irq.h"

typedef struct _bl_wifi_env {
    uint8_t sta_mac_addr_board[6];
    uint8_t sta_mac_addr_usr[6];
    uint8_t ap_mac_addr_board[6];
    uint8_t ap_mac_addr_usr[6];
    uint8_t country_code;

    bl_wifi_ap_info_t ap_info;
    uint8_t ap_info_en;

    bl_wifi_ap_info_t sta_info;
    uint8_t sta_info_en;
} bl_wifi_env_t;

bl_wifi_env_t wifi_env;


int bl_wifi_clock_enable(void)
{
    static int called = 0;
    if (0 == called) {
        called = 1;
        //GLB_Set_System_CLK(PLL_XTAL_38P4M, GLB_PLL_CLK_160M);
        //GLB_Set_WiFi_Core_CLK(1);//0: 80MHZ, 1: 40MHZ
    }
    return 0;
}

void mac_irq(void);
void bl_irq_handler(void);

int bl_wifi_enable_irq(void)
{
    bl_irq_register(WIFI_IRQn, mac_irq);
    bl_irq_register(WIFI_IPC_PUBLIC_IRQn, bl_irq_handler);
    bl_irq_enable(WIFI_IRQn);
    bl_irq_enable(WIFI_IPC_PUBLIC_IRQn);

    //NVIC_SetPriority((IRQn_Type)5, 0);
    //NVIC_EnableIRQ((IRQn_Type)5);
    puts("Enable BMX IRQ\r\n");
    //NVIC_EnableIRQ((IRQn_Type)0);
    //NVIC_EnableIRQ((IRQn_Type)1);
    //NVIC_EnableIRQ((IRQn_Type)2);
    //NVIC_EnableIRQ((IRQn_Type)3);
    //NVIC_EnableIRQ((IRQn_Type)4);
    //*(uint32_t*)0x40000050 = ((0xF << 28) | (1 << 24));

    return 0;
}


int bl_wifi_sta_mac_addr_set(uint8_t mac[6])
{
    memcpy(wifi_env.sta_mac_addr_board, mac, 6);
    return 0;
}

int bl_wifi_ap_mac_addr_set(uint8_t mac[6])
{
    memcpy(wifi_env.ap_mac_addr_board, mac, 6);
    return 0;
}

int bl_wifi_mac_addr_set(uint8_t mac[6])
{
    memcpy(wifi_env.sta_mac_addr_usr, mac, 6);
    return 0;
}

int bl_wifi_mac_addr_get(uint8_t mac[6])
{
    memcpy(mac, wifi_env.sta_mac_addr_board, 6);
    return 0;
}


int bl_wifi_country_code_set(uint8_t country_code)
{
    wifi_env.country_code = country_code;
    return 0;
}

#if 0
int bl_wifi_power_table_set(bl_tx_pwr_tbl_t* tx_pwr_tbl)
{
    bl60x_fw_rf_tx_power_table_set(tx_pwr_tbl);
    return 0;
}
#endif

int bl_wifi_ap_info_set(uint8_t* ssid, uint8_t ssid_len, 
                      uint8_t* psk, uint8_t psk_len,
                      uint8_t chan)
{
    memset(&wifi_env.ap_info, 0, sizeof(bl_wifi_ap_info_t));
    memcpy(wifi_env.ap_info.ssid, ssid, ssid_len);
    memcpy(wifi_env.ap_info.psk, psk, psk_len);
    wifi_env.ap_info.chan = chan;
    wifi_env.ap_info_en = 1;
    return 0;
}

int bl_wifi_ap_info_get(bl_wifi_ap_info_t* ap_info)
{
    if (wifi_env.ap_info_en != 1) {
        return -1;
    }
    memcpy(ap_info, &wifi_env.ap_info, sizeof(bl_wifi_ap_info_t));
    return 0;
}

int bl_wifi_sta_info_set(uint8_t* ssid, uint8_t ssid_len, uint8_t* psk, uint8_t psk_len, int autoconnect)
{
    memset(&wifi_env.sta_info, 0, sizeof(bl_wifi_ap_info_t));
    memcpy(wifi_env.sta_info.ssid, ssid, ssid_len);
    memcpy(wifi_env.sta_info.psk, psk, psk_len);
    wifi_env.sta_info_en = autoconnect;
    return 0;
}

int bl_wifi_sta_info_get(bl_wifi_ap_info_t* sta_info)
{
    if (wifi_env.sta_info_en != 1) {
        return -1;
    }
    memcpy(sta_info, &wifi_env.sta_info, sizeof(bl_wifi_ap_info_t));
    return 0;
}

#if 0
int bl_wifi_netif_init(void)
{
    struct netif *netif = &wifi_netif;
    ip4_addr_t ipaddr;
    ip4_addr_t netmask;
    ip4_addr_t gw;

    ipaddr.addr = 0;
    netmask.addr = 0;
    gw.addr = 0;

    netif->hwaddr[0] =  0x18;
    netif->hwaddr[1] =  0xB9;
    netif->hwaddr[2] =  0x05;
    netif->hwaddr[3] =  0x88;
    netif->hwaddr[4] =  0x88;
    netif->hwaddr[5] =  0x88;

    /* - netif_add(struct netif *netif, struct ip_addr *ipaddr,
    *  struct ip_addr *netmask, struct ip_addr *gw,
    *  void *state, err_t (* init)(struct netif *netif),
    *  err_t (* input)(struct pbuf *p, struct netif *netif))
    *
    *  Adds your network interface to the netif_list. Allocate a struct
    *  netif and pass a pointer to this structure as the first argument.
    *  Give pointers to cleared ip_addr structures when using DHCP,
    *  or fill them with sane numbers otherwise. The state pointer may be NULL.
    *
    * The init function pointer must point to a initialization function for
    * your ethernet netif interface. The following code illustrates it's use.*/

    netif_add(netif, &ipaddr, &netmask, &gw, NULL, &bl606a0_wifi_netif_init, &tcpip_input);
    netif->name[0] = 's';
    netif->name[1] = 't';
    netif->flags |= NETIF_FLAG_LINK_UP;
    netif_set_default(netif);
    netif_set_up(netif);
    netifapi_dhcp_start(netif);

    return 0;
}
#endif
