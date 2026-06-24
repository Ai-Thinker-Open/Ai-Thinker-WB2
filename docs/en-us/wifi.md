# WiFi API指南

## API参考

### Header File

- components/network/wifi_manager/bl60x_wifi_driver/include/wifi_mgmr_ext.h

### Functions

```c
int wifi_mgmr_psk_cal(char *password, char *ssid, int ssid_len, char *output)
```

```c
int wifi_mgmr_drv_init(wifi_conf_t *conf)
```

```c
int wifi_mgmr_init(void)
```

```c
void wifi_mgmr_start(void)
```

```c
void wifi_mgmr_start_background(wifi_conf_t *conf)
```

```c
void wifi_mgmr_get_wifi_channel_conf(wifi_conf_t *wifi_chan_conf)
```

```c
wifi_interface_t wifi_mgmr_sta_enable(void)
```

```c
int wifi_mgmr_sta_disable(wifi_interface_t *interface)
```

```c
struct netif *wifi_mgmr_sta_netif_get(void)
```

```c
struct netif *wifi_mgmr_ap_netif_get(void)
```

```c
int wifi_mgmr_sta_mac_set(uint8_t mac[6])
```

```c
int wifi_mgmr_sta_mac_get(uint8_t mac[6])
```

```c
int wifi_mgmr_sta_ip_get(uint32_t *ip, uint32_t *gw, uint32_t *mask)
```

```c
int wifi_mgmr_sta_ip_set(uint32_t ip, uint32_t mask, uint32_t gw, uint32_t dns1, uint32_t dns2)
```

```c
int wifi_mgmr_sta_dns_get(uint32_t *dns1, uint32_t *dns2)
```

```c
int wifi_mgmr_sta_ip_unset(void)
```

```c
int wifi_mgmr_sta_connect_ext(wifi_interface_t *wifi_interface, char *ssid, char *passphr, const ap_connect_adv_t *conn_adv_param)
```

```c
int wifi_mgmr_sta_connect_mid(wifi_interface_t *wifi_interface, char *ssid, char *psk, char *pmk, uint8_t *mac, uint8_t band, uint8_t chan_id, uint8_t use_dhcp, uint32_t flags)
```

```c
int wifi_mgmr_sta_connect(wifi_interface_t *wifi_interface, char *ssid, char *psk, char *pmk, uint8_t *mac, uint8_t band, uint8_t chan_id)
```

```c
int wifi_mgmr_sta_disconnect(void)
```

```c
int wifi_sta_ip4_addr_get(uint32_t *addr, uint32_t *mask, uint32_t *gw, uint32_t *dns)
```

```c
int wifi_mgmr_sta_ps_enter(uint32_t ps_level)
```

```c
int wifi_mgmr_sta_ps_exit()
```

```c
int wifi_mgmr_sta_autoconnect_enable(void)
```

```c
int wifi_mgmr_sta_autoconnect_disable(void)
```

```c
void wifi_mgmr_sta_ssid_set(char *ssid)
```

```c
void wifi_mgmr_sta_passphr_set(char *passphr)
```

```c
void wifi_mgmr_sta_psk_set(char *psk)
```

```c
void wifi_mgmr_sta_connect_ind_stat_get(wifi_mgmr_sta_connect_ind_stat_info_t *wifi_mgmr_ind_stat)
```

```c
wifi_interface_t wifi_mgmr_ap_enable(void)
```

```c
int wifi_mgmr_ap_mac_set(uint8_t mac[6])
```

```c
int wifi_mgmr_ap_mac_get(uint8_t mac[6])
```

```c
int wifi_mgmr_ap_ip_get(uint32_t *ip, uint32_t *gw, uint32_t *mask)
```

```c
int wifi_mgmr_ap_stop(wifi_interface_t *interface)
```

```c
int wifi_mgmr_ap_start(wifi_interface_t *interface, char *ssid, int hidden_ssid, char *passwd, int channel)
```

```c
int wifi_mgmr_ap_start_adv(wifi_interface_t *interface, char *ssid, int hidden_ssid, char *passwd, int channel, uint8_t use_dhcp)
```

```c
int wifi_mgmr_ap_start_atcmd(wifi_interface_t *interface, char *ssid, int hidden_ssid, char *passwd, int channel, int max_sta_supported)
```

```c
int wifi_mgmr_ap_sta_cnt_get(uint8_t *sta_cnt)
```

```c
int wifi_mgmr_ap_sta_info_get(struct wifi_sta_basic_info *sta_info, uint8_t idx)
```

```c
int wifi_mgmr_ap_sta_delete(uint8_t sta_idx)
```

```c
int wifi_mgmr_ap_set_gateway(char *gateway)
```

```c
int wifi_mgmr_sniffer_enable(void)
```

```c
int wifi_mgmr_sniffer_disable(void)
```

```c
int wifi_mgmr_rate_config(uint16_t config)
```

```c
int wifi_mgmr_conf_max_sta(uint8_t max_sta_supported)
```

```c
int wifi_mgmr_sniffer_register(void *env, sniffer_cb_t cb)
```

```c
int wifi_mgmr_sniffer_unregister(void *env)
```

```c
int wifi_mgmr_sniffer_register_adv(void *env, sniffer_cb_adv_t cb)
```

```c
int wifi_mgmr_sniffer_unregister_adv(void *env)
```

```c
int wifi_mgmr_state_get(int *state)
```

```c
int wifi_mgmr_detailed_state_get(int *state, int *state_detailed)
```

```c
int wifi_mgmr_status_code_get(int *s_code)
```

```c
int wifi_mgmr_rssi_get(int *rssi)
```

```c
int wifi_mgmr_channel_get(int *channel)
```

```c
int wifi_mgmr_channel_set(int channel, int use_40Mhz)
```

```c
int wifi_mgmr_all_ap_scan(wifi_mgmr_ap_item_t **ap_ary, uint32_t *num)
```

```c
int wifi_mgmr_scan_filter_hidden_ssid(int filter)
```

```c
int wifi_mgmr_scan(void *data, scan_complete_cb_t cb)
```

```c
int wifi_mgmr_scan_adv(void *data, scan_complete_cb_t cb, uint16_t *channels, uint16_t channel_num, const uint8_t bssid[6], const char *ssid, uint8_t scan_mode, uint32_t duration_scan)
```

```c
int wifi_mgmr_cfg_req(uint32_t ops, uint32_t task, uint32_t element, uint32_t type, uint32_t length, uint32_t *buf)
```

```c
int wifi_mgmr_scan_complete_callback()
```

```c
int wifi_mgmr_cli_scanlist(void)
```

```c
int wifi_mgmr_cli_init(void)
```

```c
int wifi_mgmr_scan_ap(char *ssid, wifi_mgmr_ap_item_t *item)
```

```c
int wifi_mgmr_scan_ap_all(wifi_mgmr_ap_item_t *env, uint32_t *param1, scan_item_cb_t cb)
```

```c
int wifi_mgmr_raw_80211_send(uint8_t *pkt, int len)
```

```c
int wifi_mgmr_set_country_code(char *country_code)
```

```c
int wifi_mgmr_ext_dump_needed()
```

```c
const char *wifi_mgmr_status_code_str(uint16_t status_code)
```

```c
int wifi_mgmr_beacon_interval_set(uint16_t beacon_int)
```

```c
void wifi_mgmr_conn_result_get(uint16_t *status_code, uint16_t *reason_code)
```

```c
int wifi_mgmr_set_wifi_active_time(uint32_t ms)
```

```c
int wifi_mgmr_set_listen_interval(uint16_t itv)
```

```c
int wifi_mgmr_pm_ops_register(void)
```

```c
int wifi_mgmr_fw_affair_ops(void)
```

```c
int wifi_mgmr_bcnind_auth_to_ext(int auth)
```

```c
int wifi_mgmr_bcnind_cipher_to_ext(int cipher)
```

```c
struct sm_connect_tlv_desc *wifi_mgmr_diagnose_tlv_get_ele(void)
```

```c
void wifi_mgmr_diagnose_tlv_free_ele(struct sm_connect_tlv_desc *ele)
```





### Structures

```c

struct ap_connect_adv
    
struct bl_rx_info
    
struct wifi_mgmr_ap_item
    
struct wifi_mgmr_sta_connect_ind_stat_info
    
struct wifi_sta_basic_info
    
struct wifi_sta_ps_conf
```

Public Members

```c
int listen_interval
```

num of beacons

```c
uint16_t wifi_active_period
```

wifi active ms.

```c
struct wifi_conf
```

### Macros

```c
WIFI_CONNECT_STOP_SCAN_ALL_CHANNEL_IF_TARGET_AP_FOUND
    
WIFI_CONNECT_PCI_EN
    
WIFI_CONNECT_STOP_SCAN_CURRENT_CHANNEL_IF_TARGET_AP_FOUND
    
WIFI_CONNECT_PMF_CAPABLE
    
WIFI_CONNECT_PMF_REQUIRED
    
WIFI_STATE_AP_IS_ENABLED(status)
```

### Type Definitions

```c
typedef struct ap_connect_adv ap_connect_adv_t
    
typedef struct bl_rx_info bl_rx_info_t
    
typedef struct wifi_mgmr_ap_item wifi_mgmr_ap_item_t
    
typedef struct wifi_mgmr_sta_connect_ind_stat_info wifi_mgmr_sta_connect_ind_stat_info_t

typedef struct wifi_sta_basic_info wifi_sta_basic_info_t
    
typedef struct wifi_sta_ps_conf wifi_sta_ps_conf_t
    
typedef void *wifi_interface_t
    
typedef void (*sniffer_cb_t)(void *env, uint8_t *pkt, int len, bl_rx_info_t *info)
    
typedef void (*sniffer_cb_adv_t)(void *env, void *pkt_wrap, bl_rx_info_t *info)
    
typedef void (*scan_item_cb_t)(wifi_mgmr_ap_item_t *env, uint32_t *param1, wifi_mgmr_ap_item_t *item)
    
typedef void (*scan_complete_cb_t)(void *data, void *param)
    
typedef struct wifi_conf wifi_conf_t
```

### Enumerations

> ```c
> enum ap_info_type
> ```
>
> **Values:**

- AP_INFO_TYPE_SUGGEST
- AP_INFO_TYPE_PRESIST

> ```c
> enum wifi_mgmr_ap_cipher_t
> ```
>
> **Values:**

- WM_WIFI_CIPHER_NONE=0
- WM_WIFI_CIPHER_WEP
- WM_WIFI_CIPHER_AES
- WM_WIFI_CIPHER_TKIP
- WM_WIFI_CIPHER_TKIP_AES
- WM_WIFI_CIPHER_MAX

> ```c
> enum wifi_mgmr_ap_auth_mode_t
> ```
>
> **Values:**

- WM_WIFI_AUTH_UNKNOWN = 0
- WM_WIFI_AUTH_OPEN
- WM_WIFI_AUTH_WEP
- WM_WIFI_AUTH_WPA_PSK
- WM_WIFI_AUTH_WPA2_PSK
- WM_WIFI_AUTH_WPA_WPA2_PSK
- WM_WIFI_AUTH_WPA_ENTERPRISE
- WM_WIFI_AUTH_WPA3_SAE
- WM_WIFI_AUTH_WPA2_PSK_WPA3_SAE
- WM_WIFI_AUTH_MAX

> ```c
> enum [anonymous] Power Save mode setting.
> ```
>
> **Values:**

- PS_MODE_OFF Power-save off.
- PS_MODE_ON Power-save on - Normal mode.
- PS_MODE_ON_DYN Power-save on - Dynamic mode.

> ```c
> enum WIFI_STATE_ENUM_LIST
> ```
>
> **Values:**

- WIFI_STATE_UNKNOWN = 0x00
- WIFI_STATE_IDLE = 0x01
- WIFI_STATE_CONNECTING = 0x02
- WIFI_STATE_CONNECTED_IP_GETTING = 0x03
- WIFI_STATE_CONNECTED_IP_GOT = 0x04
- WIFI_STATE_DISCONNECT = 0x05
- WIFI_STATE_WITH_AP_IDLE = 0x11
- WIFI_STATE_WITH_AP_CONNECTING = 0x12
- WIFI_STATE_WITH_AP_CONNECTED_IP_GETTING = 0x13
- WIFI_STATE_WITH_AP_CONNECTED_IP_GOT = 0x14
- WIFI_STATE_WITH_AP_DISCONNECT = 0x15
- WIFI_STATE_IFDOWN = 0x06
- WIFI_STATE_SNIFFER = 0x07
- WIFI_STATE_PSK_ERROR = 0x08
- WIFI_STATE_NO_AP_FOUND = 0x09

> ```c
> enum WIFI_SCAN_DONE_EVENT_TYPE
> ```
>
> **Values:**

- WIFI_SCAN_DONE_EVENT_OK = 0x00
- WIFI_SCAN_DONE_EVENT_BUSY = 0x01

> ```c
> enum WIFI_COEX_PM_LEVEL
> ```
>
> **Values:**

- WIFI_COEX_PM_STA_NONE = PM_MODE_STA_NONE
- WIFI_COEX_PM_STA_IDLE = PM_MODE_STA_IDLE
- WIFI_COEX_PM_STA_MESH = PM_MODE_STA_MESH
- WIFI_COEX_PM_STA_DOZE = PM_MODE_STA_DOZE
- WIFI_COEX_PM_STA_COEX = PM_MODE_STA_COEX
- WIFI_COEX_PM_STA_DOWN = PM_MODE_STA_DOWN
- WIFI_COEX_PM_AP_IDLE = PM_MODE_AP_IDLE
- WIFI_COEX_PM_MAX = PM_MODE_MA