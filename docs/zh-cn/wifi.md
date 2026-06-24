# WiFi API指南

## API参考

### 头文件

- components/network/wifi_manager/bl60x_wifi_driver/include/wifi_mgmr_ext.h

### 函数

```c
int wifi_mgmr_psk_cal(char *password, char *ssid, int ssid_len, char *output)
```

> 根据输入的password（密码）和ssid（网络名称），通过某种加密算法（很可能是PBKDF2，基于HMAC-SHA1，这是WPA/WPA2中常用的算法），计算出一个PSK（预共享密钥）。PSK通常是256位（32字节）的二进制数据，用于后续的Wi-Fi加密通信。

`返回值`

- 0：成功
- other : 失败

`参数`

- password: 密码
- ssid：WIFI名称
- ssid_len：WIFI名字长度
- output：用于存储计算生成的PSK结果



```c
int wifi_mgmr_drv_init(wifi_conf_t *conf)
```

> 初始化Wi-Fi驱动程序

`返回值`

- 0：成功
- other : 失败

`参数`

- conf：配置结构体



```c
int wifi_mgmr_init(void)
```

> 初始化Wi-Fi管理模块（Wi-Fi Manager）



```c
void wifi_mgmr_start(void)
```

> 启动Wi-Fi管理模块，使其进入工作状态



```c
void wifi_mgmr_start_background(wifi_conf_t *conf)
```

> 后台启动Wi-Fi管理模块

`返回值`

- 0：成功
- other : 失败

`参数`

- conf：配置结构体



```c
void wifi_mgmr_get_wifi_channel_conf(wifi_conf_t *wifi_chan_conf)
```

> 获取wifi信道配置

`返回值`

- 0：成功
- other : 失败

`参数`

- wifi_chan_conf：存储Wi-Fi信道配置的输出参数



```c
wifi_interface_t wifi_mgmr_sta_enable(void)
```

> 启用Wi-Fi管理模块的站模式（Station Mode，简称STA）

`返回值`

- wifi_interface_t ：表示Wi-Fi站模式的接口对象，用于后续操作（如连接网络、配置参数等）。



```c
int wifi_mgmr_sta_disable(wifi_interface_t *interface)
```

> 禁用Wi-Fi管理模块的站模式

`返回值`

- 0：成功
- other : 失败

`参数`

- interface ：站模式的接口对象



```c
struct netif *wifi_mgmr_sta_netif_get(void)
```

> 用于获取Wi-Fi站模式（STA）的网络接口（network interface），通常返回一个指向网络接口结构体的指针

`返回值`

- struct netif : 返回指向netif结构体的指针，表示STA模式的网络接口。如果STA未启用或初始化失败，可能返回NULL。通常包含IP地址、网关、子网掩码等网络配置信息。



```c
struct netif *wifi_mgmr_ap_netif_get(void)
```

>  用于获取Wi-Fi接入点模式（AP）的网络接口

`返回值`

- struct netif : 返回指向netif结构体的指针，表示AP模式的网络接口。如果AP未启用或初始化失败，可能返回NULL。通常包含IP地址、子网掩码等配置信息。



```c
int wifi_mgmr_sta_mac_set(uint8_t mac[6])
```

> 设置Wi-Fi站模式（STA）的MAC地址。

`参数`

- uint8_t mac[6]: 指向6字节数组，包含要设置的MAC地址



```c
int wifi_mgmr_sta_mac_get(uint8_t mac[6])
```

> 获取Wi-Fi站模式（STA）的当前MAC地址

`参数`

- uint8_t mac[6]:获取Wi-Fi站模式（STA）的当前MAC地址



```c
int wifi_mgmr_sta_ip_get(uint32_t *ip, uint32_t *gw, uint32_t *mask)
```

> 获取Wi-Fi站模式（STA）的IP地址、网关和子网掩码

`参数`

- ip: 指向32位整数，存储获取到的IP地址
- gw: 指向32位整数，存储获取到的网关地址
- mask: 指向32位整数，存储获取到的子网掩码



```c
int wifi_mgmr_sta_ip_set(uint32_t ip, uint32_t mask, uint32_t gw, uint32_t dns1, uint32_t dns2)
```

> 设置Wi-Fi站模式（STA）的静态IP地址、子网掩码、网关和DNS服务器

`参数`

- ip: 要设置的IP地址（32位整数）
- mask: 要设置的子网掩码（32位整数）
- gw: 要设置的网关地址（32位整数）
- dns1: 要设置的主DNS服务器地址（32位整数）
- dns2: 要设置的备用DNS服务器地址（32位整数）



```c
int wifi_mgmr_sta_dns_get(uint32_t *dns1, uint32_t *dns2)
```

> 获取Wi-Fi站模式（STA）的DNS服务器地址

`参数`

- dns1:指向32位整数，存储获取到的主DNS地址。
- dns2:指向32位整数，存储获取到的备用DNS地址。



```c
int wifi_mgmr_sta_ip_unset(void)
```

> 取消Wi-Fi站模式（STA）的IP地址设置，通常恢复为DHCP动态分配。



```c
int wifi_mgmr_sta_connect_ext(wifi_interface_t *wifi_interface, char *ssid, char *passphr, const ap_connect_adv_t *conn_adv_param)
```

> 连接Wi-Fi站模式（STA）到指定的接入点（AP），支持高级连接参数

`参数`

- wifi_interface: 指向STA接口的指针（由wifi_mgmr_sta_enable返回）
- ssid: 目标AP的SSID（字符串）
- passphr: 目标AP的密码（字符串）
- conn_adv_param: 指向高级连接参数结构体的指针（类型ap_connect_adv_t）

`返回值`

- int: 返回0表示连接成功，非0表示失败（如参数无效或连接超时）



```c
int wifi_mgmr_sta_connect_mid(wifi_interface_t *wifi_interface, char *ssid, char *psk, char *pmk, uint8_t *mac, uint8_t band, uint8_t chan_id, uint8_t use_dhcp, uint32_t flags)
```

> 以中间级参数连接Wi-Fi站模式（STA）到指定的接入点（AP）

`参数`

- wifi_interface: 指向STA接口的指针（由wifi_mgmr_sta_enable返回）
- ssid: 目标AP的SSID（字符串）
- psk: 目标AP的预共享密钥（字符串）
- pmk: 目标AP的成对主密钥（字符串，可选）
- mac: 目标AP的MAC地址（6字节数组，可选）
- band: 频带（例如2.4GHz或5GHz）
- chan_id: 信道ID
- use_dhcp: 是否使用DHCP（1为启用，0为禁用）
- flags: 连接标志（32位整数）

`返回值`

- int: 返回0表示连接成功，非0表示失败（如参数无效）



```c
int wifi_mgmr_sta_connect(wifi_interface_t *wifi_interface, char *ssid, char *psk, char *pmk, uint8_t *mac, uint8_t band, uint8_t chan_id)
```

> 连接Wi-Fi站模式（STA）到指定的接入点（AP）

`参数`

- wifi_interface: 指向STA接口的指针（由wifi_mgmr_sta_enable返回）
- ssid: 目标AP的SSID（字符串）
- psk: 目标AP的预共享密钥（字符串）
- pmk: 目标AP的成对主密钥（字符串，可选）
- mac: 目标AP的MAC地址（6字节数组，可选）
- band: 频带（例如2.4GHz或5GHz）
- chan_id: 信道ID

`返回值`

- int: 返回0表示连接成功，非0表示失败（如参数无效）



```c
int wifi_mgmr_sta_disconnect(void)
```

> 断开Wi-Fi站模式（STA）的当前连接

`参数`

- 无参数

`返回值`

- int: 返回0表示断开成功，非0表示失败（如未连接）



```c
int wifi_sta_ip4_addr_get(uint32_t *addr, uint32_t *mask, uint32_t *gw, uint32_t *dns)
```

> 获取Wi-Fi站模式的IPv4地址配置

`参数`

- addr: 指向32位整数，存储IP地址
- mask: 指向32位整数，存储子网掩码
- gw: 指向32位整数，存储网关地址
- dns: 指向32位整数，存储DNS地址

`返回值`

- int: 返回0表示获取成功，非0表示失败（如未分配IP）

```c
int wifi_mgmr_sta_ps_enter(uint32_t ps_level)
```

> 使Wi-Fi站模式（STA）进入省电模式

`参数`

- ps_level: 省电级别（32位整数，具体级别含义取决于实现）

`返回值`

- int: 返回0表示进入成功，非0表示失败（如STA未启用）

```c
int wifi_mgmr_sta_ps_exit()
```

> 退出Wi-Fi站模式的省电模式



```c
int wifi_mgmr_sta_autoconnect_enable(void)
```

> 启用Wi-Fi站模式的自动连接功能



```c
int wifi_mgmr_sta_autoconnect_disable(void)
```

> 禁用Wi-Fi站模式的自动连接功能



```c
void wifi_mgmr_sta_ssid_set(char *ssid)
```

> 设置Wi-Fi站模式的SSID

`参数`

- ssid: 要设置的SSID（字符串）



```c
void wifi_mgmr_sta_passphr_set(char *passphr)
```

> 设置Wi-Fi站模式的密码

`参数`

- passphr: 要设置的密码（字符串）



```c
void wifi_mgmr_sta_psk_set(char *psk)
```

> 设置Wi-Fi站模式的预共享密钥（PSK）

`参数`

- psk: 要设置的PSK（字符串）



```c
void wifi_mgmr_sta_connect_ind_stat_get(wifi_mgmr_sta_connect_ind_stat_info_t *wifi_mgmr_ind_stat)
```

> 获取Wi-Fi站模式连接的指示状态信息

`参数`

- wifi_mgmr_ind_stat: 指向wifi_mgmr_sta_connect_ind_stat_info_t结构体的指针，用于存储连接状态信息

`返回值`

- int: 返回0表示获取成功，非0表示失败



```c
wifi_interface_t wifi_mgmr_ap_enable(void)
```

> 启用Wi-Fi接入点模式（AP）

`参数`

- 无参数

`返回值`

- wifi_interface_t: 返回AP模式的接口对象，若失败则可能为无效值（如handle为NULL）



```c
int wifi_mgmr_ap_mac_set(uint8_t mac[6])
```

> 设置Wi-Fi接入点模式（AP）的MAC地址

`参数`

- mac: 指向6字节数组，包含要设置的MAC地址

`返回值`

- int: 返回0表示设置成功，非0表示失败



```c
int wifi_mgmr_ap_mac_get(uint8_t mac[6])
```

> 获取Wi-Fi接入点模式（AP）的MAC地址

`参数`

- mac: 指向6字节数组，用于存储获取到的MAC地址

`返回值`

- int: 返回0表示获取成功，非0表示失败



```c
int wifi_mgmr_ap_ip_get(uint32_t *ip, uint32_t *gw, uint32_t *mask)
```

> 获取Wi-Fi接入点模式（AP）的IP地址、网关和子网掩码

`参数`

- ip: 指向32位整数，存储IP地址
- gw: 指向32位整数，存储网关地址
- mask: 指向32位整数，存储子网掩码

`返回值`

- int: 返回0表示获取成功，非0表示失败



```c
int wifi_mgmr_ap_stop(wifi_interface_t *interface)
```

> 停止Wi-Fi接入点模式（AP）

`参数`

- interface: 指向AP接口的指针（由wifi_mgmr_ap_enable返回）

`返回值`

- int: 返回0表示停止成功，非0表示失败



```c
int wifi_mgmr_ap_start(wifi_interface_t *interface, char *ssid, int hidden_ssid, char *passwd, int channel)
```

> 启动Wi-Fi接入点模式（AP）

`参数`

- interface: 指向AP接口的指针（由wifi_mgmr_ap_enable返回）
- ssid: AP的SSID（字符串）
- hidden_ssid: 是否隐藏SSID（0为否，1为是）
- passwd: AP的密码（字符串）
- channel: 信道号

`返回值`

- int: 返回0表示启动成功，非0表示失败



```c
int wifi_mgmr_ap_start_adv(wifi_interface_t *interface, char *ssid, int hidden_ssid, char *passwd, int channel, uint8_t use_dhcp)
```

> 以高级参数启动Wi-Fi接入点模式（AP）

`参数`

- interface: 指向AP接口的指针（由wifi_mgmr_ap_enable返回）
- ssid: AP的SSID（字符串）
- hidden_ssid: 是否隐藏SSID（0为否，1为是）
- passwd: AP的密码（字符串）
- channel: 信道号
- use_dhcp: 是否使用DHCP（1为启用，0为禁用）

`返回值`

- int: 返回0表示启动成功，非0表示失败



```c
int wifi_mgmr_ap_start_atcmd(wifi_interface_t *interface, char *ssid, int hidden_ssid, char *passwd, int channel, int max_sta_supported)
```

> 以AT命令兼容参数启动Wi-Fi接入点模式（AP）

`参数`

- interface: 指向AP接口的指针（由wifi_mgmr_ap_enable返回）
- ssid: AP的SSID（字符串）
- hidden_ssid: 是否隐藏SSID（0为否，1为是）
- passwd: AP的密码（字符串）
- channel: 信道号
- max_sta_supported: 支持的最大STA连接数

`返回值`

- int: 返回0表示启动成功，非0表示失败



```c
int wifi_mgmr_ap_sta_cnt_get(uint8_t *sta_cnt)
```

> 获取Wi-Fi接入点模式（AP）连接的STA数量

`参数`

- sta_cnt: 指向8位整数，存储连接的STA数量

`返回值`

- int: 返回0表示获取成功，非0表示失败



```c
int wifi_mgmr_ap_sta_info_get(struct wifi_sta_basic_info *sta_info, uint8_t idx)
```

> 获取Wi-Fi接入点模式（AP）中指定STA的信息

`参数`

- sta_info: 指向wifi_sta_basic_info结构体的指针，存储STA信息
- idx: STA的索引号

`返回值`

- int: 返回0表示获取成功，非0表示失败



```c
int wifi_mgmr_ap_sta_delete(uint8_t sta_idx)
```

> 删除Wi-Fi接入点模式（AP）中的指定STA

`参数`

- sta_idx: 要删除的STA索引号

`返回值`

- int: 返回0表示删除成功，非0表示失败



```c
int wifi_mgmr_ap_set_gateway(char *gateway)
```

> 设置Wi-Fi接入点模式（AP）的网关地址

`参数`

- gateway: 网关地址（字符串，例如"192.168.1.1"）

`返回值`

- int: 返回0表示设置成功，非0表示失败



```c
int wifi_mgmr_sniffer_enable(void)
```

`参数`

- 无参数

`返回值`

- int: 返回0表示启用成功，非0表示失败



```c
int wifi_mgmr_sniffer_disable(void)
```

> 禁用Wi-Fi嗅探模式

`参数`

- 无参数

`返回值`

- int: 返回0表示禁用成功，非0表示失败



```c
int wifi_mgmr_rate_config(uint16_t config)
```

> 配置Wi-Fi传输速率

`参数`

- config: 速率配置值（16位整数，具体含义取决于实现）

`返回值`

- int: 返回0表示配置成功，非0表示失败



```c
int wifi_mgmr_conf_max_sta(uint8_t max_sta_supported)
```

> 配置Wi-Fi接入点模式支持的最大STA数量

`参数`

- max_sta_supported: 最大支持的STA数量（8位整数）

`返回值`

- int: 返回0表示配置成功，非0表示失败



```c
int wifi_mgmr_sniffer_register(void *env, sniffer_cb_t cb)
```

> 注册Wi-Fi嗅探回调函数

`参数`

- env: 回调环境指针
- cb: 嗅探回调函数（类型sniffer_cb_t）

`返回值`

- int: 返回0表示注册成功，非0表示失败



```c
int wifi_mgmr_sniffer_unregister(void *env)
```

> 注销Wi-Fi嗅探回调函数

`参数`

- env: 回调环境指针

`返回值`

- int: 返回0表示注销成功，非0表示失败



```c
int wifi_mgmr_sniffer_register_adv(void *env, sniffer_cb_adv_t cb)
```

> 注册高级Wi-Fi嗅探回调函数

`参数`

- env: 回调环境指针
- cb: 高级嗅探回调函数（类型sniffer_cb_adv_t）

`返回值`

- int: 返回0表示注册成功，非0表示失败



```c
int wifi_mgmr_sniffer_unregister_adv(void *env)
```

> 注销高级Wi-Fi嗅探回调函数

`参数`

- env: 回调环境指针

`返回值`

- int: 返回0表示注销成功，非0表示失败



```c
int wifi_mgmr_state_get(int *state)
```

> 获取Wi-Fi管理模块的当前状态

`参数`

- state: 指向整数，存储状态值

`返回值`

- int: 返回0表示获取成功，非0表示失败



```c
int wifi_mgmr_detailed_state_get(int *state, int *state_detailed)
```

> 获取Wi-Fi管理模块的详细状态

`参数`

- state: 指向整数，存储状态值
- state_detailed: 指向整数，存储详细状态值

`返回值`

- int: 返回0表示获取成功，非0表示失败



```c
int wifi_mgmr_status_code_get(int *s_code)
```

> 获取Wi-Fi状态码

`参数`

- s_code: 指向整数，存储状态码

`返回值`

- int: 返回0表示获取成功，非0表示失败



```c
int wifi_mgmr_rssi_get(int *rssi)
```

> 获取Wi-Fi信号强度（RSSI）

`参数`

- rssi: 指向整数，存储RSSI值（通常为负数，单位dBm）

`返回值`

- int: 返回0表示获取成功，非0表示失败



```c
int wifi_mgmr_channel_get(int *channel)
```

> 获取当前Wi-Fi信道

`参数`

- channel: 指向整数，存储信道号

`返回值`

- int: 返回0表示获取成功，非0表示失败



```c
int wifi_mgmr_channel_set(int channel, int use_40Mhz)
```

> 设置Wi-Fi信道

`参数`

- channel: 要设置的信道号
- use_40Mhz: 是否使用40MHz带宽（0为20MHz，1为40MHz）

`返回值`

- int: 返回0表示设置成功，非0表示失败



```c
int wifi_mgmr_all_ap_scan(wifi_mgmr_ap_item_t **ap_ary, uint32_t *num)
```

> 扫描所有Wi-Fi接入点并返回结果数组

`参数`

- ap_ary: 指向wifi_mgmr_ap_item_t指针数组，存储扫描结果
- num: 指向32位整数，存储扫描到的AP数量

`返回值`

- int: 返回0表示扫描成功，非0表示失败



```c
int wifi_mgmr_scan_filter_hidden_ssid(int filter)
```

> 设置Wi-Fi扫描是否过滤隐藏SSID的AP

`参数`

- filter: 过滤标志（0为不过滤，1为过滤）

`返回值`

- int: 返回0表示设置成功，非0表示失败



```c
int wifi_mgmr_scan(void *data, scan_complete_cb_t cb)
```

> 执行Wi-Fi扫描并注册完成回调

`参数`

- data: 用户数据指针，传递给回调
- cb: 扫描完成回调函数（类型scan_complete_cb_t）

`返回值`

- int: 返回0表示启动扫描成功，非0表示失败



```c
int wifi_mgmr_scan_adv(void *data, scan_complete_cb_t cb, uint16_t *channels, uint16_t channel_num, const uint8_t bssid[6], const char *ssid, uint8_t scan_mode, uint32_t duration_scan)
```

> 以高级参数执行Wi-Fi扫描并注册完成回调

`参数`

- data: 用户数据指针，传递给回调
- cb: 扫描完成回调函数（类型scan_complete_cb_t）
- channels: 扫描的信道数组
- channel_num: 信道数量
- bssid: 目标BSSID（6字节数组，可选）
- ssid: 目标SSID（字符串，可选）
- scan_mode: 扫描模式
- duration_scan: 每个信道的扫描持续时间（毫秒）

`返回值`

- int: 返回0表示启动扫描成功，非0表示失败



```c
int wifi_mgmr_cfg_req(uint32_t ops, uint32_t task, uint32_t element, uint32_t type, uint32_t length, uint32_t *buf)
```

> 发送Wi-Fi管理模块配置请求

`参数`

- ops: 操作类型（32位整数）
- task: 任务ID（32位整数）
- element: 元素ID（32位整数）
- type: 类型（32位整数）
- length: 数据长度（32位整数）
- buf: 指向数据缓冲区的指针

`返回值`

- int: 返回0表示请求成功，非0表示失败



```c
int wifi_mgmr_scan_complete_callback(void)
```

> 触发Wi-Fi扫描完成回调

`参数`

- 无参数

`返回值`

- int: 返回0表示触发成功，非0表示失败



```c
int wifi_mgmr_cli_scanlist(void)
```

> 显示Wi-Fi扫描结果列表（CLI命令）

`参数`

- 无参数

`返回值`

- int: 返回0表示执行成功，非0表示失败



```c
int wifi_mgmr_cli_init(void)
```

> 初始化Wi-Fi命令行接口（CLI）

`参数`

- 无参数

`返回值`

- int: 返回0表示初始化成功，非0表示失败



```c
int wifi_mgmr_scan_ap(char *ssid, wifi_mgmr_ap_item_t *item)
```

> 扫描指定SSID的Wi-Fi接入点

`参数`

- ssid: 目标SSID（字符串）
- item: 指向wifi_mgmr_ap_item_t结构体，存储扫描结果

`返回值`

- int: 返回0表示扫描成功，非0表示失败



```c
int wifi_mgmr_scan_ap_all(wifi_mgmr_ap_item_t *env, uint32_t *param1, scan_item_cb_t cb)
```

> 扫描所有Wi-Fi接入点并逐个回调处理

`参数`

- env: 环境指针，传递给回调
- param1: 指向32位整数的参数（用途取决于实现）
- cb: 每个AP的回调函数（类型scan_item_cb_t）

`返回值`

- int: 返回0表示扫描成功，非0表示失败



```c
int wifi_mgmr_raw_80211_send(uint8_t *pkt, int len)
```

> 发送原始802.11数据包

`参数`

- pkt: 指向数据包缓冲区的指针
- len: 数据包长度（字节）

`返回值`

- int: 返回0表示发送成功，非0表示失败



```c
int wifi_mgmr_set_country_code(char *country_code)
```

> 设置Wi-Fi国家代码

`参数`

- country_code: 国家代码（字符串，例如"CN"）

`返回值`

- int: 返回0表示设置成功，非0表示失败



```c
int wifi_mgmr_ext_dump_needed(void)
```

> 检查是否需要扩展转储（dump）

`参数`

- 无参数

`返回值`

- int: 返回1表示需要转储，0表示不需要，非0可能表示错误



```c
const char *wifi_mgmr_status_code_str(uint16_t status_code)
```

> 将Wi-Fi状态码转换为字符串描述

`参数`

- status_code: 状态码（16位整数）

`返回值`

- wifi_mgmr_status_code_str: 返回状态码的字符串描述



```c
int wifi_mgmr_beacon_interval_set(uint16_t beacon_int)
```

> 设置Wi-Fi信标间隔

`参数`

- beacon_int: 信标间隔（16位整数，单位通常为TU）

`返回值`

- int: 返回0表示设置成功，非0表示失败



```c
void wifi_mgmr_conn_result_get(uint16_t *status_code, uint16_t *reason_code)
```

> 获取Wi-Fi连接结果的状态码和原因码

`参数`

- status_code: 指向16位整数，存储状态码
- reason_code: 指向16位整数，存储原因码



```c
int wifi_mgmr_set_wifi_active_time(uint32_t ms)
```

> 设置Wi-Fi活动时间

`参数`

- ms: 活动时间（毫秒，32位整数）

`返回值`

- int: 返回0表示设置成功，非0表示失败



```c
int wifi_mgmr_set_listen_interval(uint16_t itv)
```

> 设置Wi-Fi监听间隔

`参数`

- itv: 监听间隔（16位整数）

`返回值`

- int: 返回0表示设置成功，非0表示失败



```c
int wifi_mgmr_pm_ops_register(void)
```

> 注册Wi-Fi电源管理操作

`参数`

- 无参数

`返回值`

- int: 返回0表示注册成功，非0表示失败



```c
int wifi_mgmr_fw_affair_ops(void)
```

> 执行Wi-Fi固件事务操作

`参数`

- 无参数

`返回值`

- int: 返回0表示执行成功，非0表示失败



```c
int wifi_mgmr_bcnind_auth_to_ext(int auth)
```

> 将信标指示的认证类型转换为扩展格式

`参数`

- auth: 认证类型（整数）

`返回值`

- int: 返回扩展格式的认证类型值



```c
int wifi_mgmr_bcnind_cipher_to_ext(int cipher)
```

> 将信标指示的加密类型转换为扩展格式

`参数`

- cipher: 加密类型（整数）

`返回值`

- int: 返回扩展格式的加密类型值



```c
struct sm_connect_tlv_desc *wifi_mgmr_diagnose_tlv_get_ele(void)
```

> 获取Wi-Fi诊断TLV元素

`参数`

- 无参数

`返回值`

- struct sm_connect_tlv_desc *: 返回指向TLV描述结构体的指针



```c
void wifi_mgmr_diagnose_tlv_free_ele(struct sm_connect_tlv_desc *ele)
```

> 释放Wi-Fi诊断TLV元素

`参数`

- ele: 指向要释放的sm_connect_tlv_desc结构体

`返回值`

- void: 无返回值



### 结构体

```c

struct ap_connect_adv
Wi-Fi接入点连接的高级参数
struct bl_rx_info
接收到的Wi-Fi数据包信息   
struct wifi_mgmr_ap_item
Wi-Fi扫描结果中的单个接入点信息   
struct wifi_mgmr_sta_connect_ind_stat_info
表示Wi-Fi站模式连接状态的指示信息  
struct wifi_sta_basic_info
连接到Wi-Fi接入点的STA（站）基本信息 
struct wifi_sta_ps_conf
Wi-Fi站模式的省电配置
```



```c
int listen_interval
```

​	监听间隔

```c
uint16_t wifi_active_period
```

​	Wi-Fi活动时间ms为单位.

```c
struct wifi_conf
```

​	Wi-Fi模块的通用配置参数



### 宏

```c
WIFI_CONNECT_STOP_SCAN_ALL_CHANNEL_IF_TARGET_AP_FOUND
找到目标AP，停止扫描所有信道
WIFI_CONNECT_PCI_EN
启用特定的电源或协议控制功能  
WIFI_CONNECT_STOP_SCAN_CURRENT_CHANNEL_IF_TARGET_AP_FOUND
如果找到目标AP，停止扫描当前信道 
WIFI_CONNECT_PMF_CAPABLE
支持受保护管理帧（PMF）
WIFI_CONNECT_PMF_REQUIRED
求使用受保护管理帧（PMF）
WIFI_STATE_AP_IS_ENABLED(status)
检查Wi-Fi接入点（AP）模式是否启用
```





### 类型定义

```c
typedef struct ap_connect_adv ap_connect_adv_t
    高级连接信息的结构体，用于与访问点（AP）连接。
typedef struct bl_rx_info bl_rx_info_t
    蓝牙接收信息的结构体，包含接收到的数据的相关信息。
typedef struct wifi_mgmr_ap_item wifi_mgmr_ap_item_t
    Wi-Fi 管理器中的一个接入点（AP）项的结构体，包含一个可用的 AP 信息
typedef struct wifi_mgmr_sta_connect_ind_stat_info wifi_mgmr_sta_connect_ind_stat_info_t
	Wi-Fi 管理器中关于站点（STA）连接状态指示信息的结构体，可能包括连接的状态信息
typedef struct wifi_sta_basic_info wifi_sta_basic_info_t
   Wi-Fi 站点（STA）基本信息的结构体，包含有关该设备的基本连接和身份信息。
typedef struct wifi_sta_ps_conf wifi_sta_ps_conf_t
    Wi-Fi 站点（STA）省电配置的结构体，包含配置该设备的省电设置
typedef void *wifi_interface_t
    Wi-Fi 接口的指针类型，表示一个 Wi-Fi 接口的抽象
typedef void (*sniffer_cb_t)(void *env, uint8_t *pkt, int len, bl_rx_info_t *info)
    嗅探器回调函数类型，表示在接收到数据包时触发的回调。env 为上下文环境，pkt 为数据包，len 为数据包长度，info 为接收信息
typedef void (*sniffer_cb_adv_t)(void *env, void *pkt_wrap, bl_rx_info_t *info)
    高级嗅探器回调函数类型，表示接收到更复杂封装的数据包时触发的回调。env 为上下文环境，pkt_wrap 为封装的数据包，info 为接收信息
typedef void (*scan_item_cb_t)(wifi_mgmr_ap_item_t *env, uint32_t *param1, wifi_mgmr_ap_item_t *item)
    扫描项目回调函数类型，在扫描 Wi-Fi 网络时为每个扫描到的 AP 调用。env 为上下文环境，param1 是参数指针，item 是扫描到的接入点项
typedef void (*scan_complete_cb_t)(void *data, void *param)
    扫描完成回调函数类型，在 Wi-Fi 网络扫描完成时触发。data 为扫描数据，param 为额外的参数
typedef struct wifi_conf wifi_conf_t
    Wi-Fi 配置信息的结构体，包含有关 Wi-Fi 配置的各种设置
```



### 枚举

> ```c
> enum ap_info_type
> ```
>

- AP_INFO_TYPE_SUGGEST 建议的AP信息类型，通常用于自动选择或推荐的AP
- AP_INFO_TYPE_PRESIST 持久化的AP信息类型



> ```c
> enum wifi_mgmr_ap_cipher_t
> ```
>

`WM_WIFI_CIPHER_NONE`：无加密，数据传输不加密。

`WM_WIFI_CIPHER_WEP`：WEP加密，较为过时的加密方式。

`WM_WIFI_CIPHER_AES`：AES加密，现代的加密算法。

`WM_WIFI_CIPHER_TKIP`：TKIP加密，较为旧的加密方式，曾用于WPA。

`WM_WIFI_CIPHER_TKIP_AES`：TKIP和AES混合加密，通常用于兼容WPA和WPA2。

`WM_WIFI_CIPHER_MAX`：最大加密类型，通常用于表示加密选项的边界。



> ```c
> enum wifi_mgmr_ap_auth_mode_t
> ```
>

`WM_WIFI_AUTH_UNKNOWN`：未知的认证模式。

`WM_WIFI_AUTH_OPEN`：开放的认证模式，不需要密码。

`WM_WIFI_AUTH_WEP`：WEP认证方式，早期的无线加密标准。

`WM_WIFI_AUTH_WPA_PSK`：WPA PSK认证方式，使用预共享密钥进行认证。

`WM_WIFI_AUTH_WPA2_PSK`：WPA2 PSK认证方式，使用更强的加密算法。

`WM_WIFI_AUTH_WPA_WPA2_PSK`：WPA与WPA2 PSK认证方式的混合。

`WM_WIFI_AUTH_WPA_ENTERPRISE`：WPA企业认证模式，通常需要服务器支持。

`WM_WIFI_AUTH_WPA3_SAE`：WPA3 SAE认证方式，现代的认证标准，具有更强的安全性。

`WM_WIFI_AUTH_WPA2_PSK_WPA3_SAE`：WPA2 PSK与WPA3 SAE认证混合方式。



> ```c
> enum [anonymous] Power Save mode setting.
> ```
>

`PS_MODE_OFF`：关闭省电模式，不做任何电源管理。

`PS_MODE_ON`：开启省电模式，使用正常的省电设置。

`PS_MODE_ON_DYN`：开启省电模式，使用动态的省电设置。



> ```c
> enum WIFI_STATE_ENUM_LIST
> ```
>

`WIFI_STATE_UNKNOWN`：未知的Wi-Fi状态。

`WIFI_STATE_IDLE`：Wi-Fi处于空闲状态。

`WIFI_STATE_CONNECTING`：Wi-Fi正在连接中。

`WIFI_STATE_CONNECTED_IP_GETTING`：Wi-Fi已连接，正在获取IP地址。

`WIFI_STATE_CONNECTED_IP_GOT`：Wi-Fi已连接，且已获得IP地址。

`WIFI_STATE_DISCONNECT`：Wi-Fi断开连接。

`WIFI_STATE_WITH_AP_IDLE`：Wi-Fi与AP连接，但处于空闲状态。

`WIFI_STATE_WITH_AP_CONNECTING`：Wi-Fi与AP连接，正在连接。

`WIFI_STATE_WITH_AP_CONNECTED_IP_GETTING`：Wi-Fi与AP连接，正在获取IP地址。

`WIFI_STATE_WITH_AP_CONNECTED_IP_GOT`：Wi-Fi与AP连接，已获得IP地址。

`WIFI_STATE_WITH_AP_DISCONNECT`：Wi-Fi与AP连接，但断开连接。

`WIFI_STATE_IFDOWN`：Wi-Fi接口关闭。

`WIFI_STATE_SNIFFER`：Wi-Fi处于嗅探模式。

`WIFI_STATE_PSK_ERROR`：Wi-Fi认证过程中出现PSK错误。

`WIFI_STATE_NO_AP_FOUND`：未找到任何AP。



> ```c
> enum WIFI_SCAN_DONE_EVENT_TYPE
> ```
>

`WIFI_SCAN_DONE_EVENT_OK`：Wi-Fi扫描成功完成。

`WIFI_SCAN_DONE_EVENT_BUSY`：Wi-Fi扫描过程中发生忙碌状态。



> ```c
> enum WIFI_COEX_PM_LEVEL
> ```
>

`WIFI_COEX_PM_STA_NONE`：无PM模式。

`WIFI_COEX_PM_STA_IDLE`：空闲PM模式。

`WIFI_COEX_PM_STA_MESH`：网状网络PM模式。

`WIFI_COEX_PM_STA_DOZE`：低功耗PM模式。

`WIFI_COEX_PM_STA_COEX`：共存PM模式，可能与其他无线技术共存。

`WIFI_COEX_PM_STA_DOWN`：关闭PM模式。

`WIFI_COEX_PM_AP_IDLE`：AP空闲PM模式。

`WIFI_COEX_PM_MAX`：最大PM模式，通常用于表示最高功耗或性能要求