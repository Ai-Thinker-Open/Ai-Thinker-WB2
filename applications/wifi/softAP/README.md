# WiFi soft AP Example
## Configuration before use
The default configuration of WiFi soft routine is `ssid="ai thinker"`, `password="12345678"`.
You can modify ssid and password according to the following macro definitions:
```c
#define AP_SSID "ai-thinker"
#define AP_PWD "12345678"
```
If you need to modify the IP address of the soft AP, you can use the written function to directly modify it.
```c
/**
 * @brief wifi_ap_ip_set
 *      Set the IP address of soft AP
 * @param ip_addr IPV4 addr
 * @param netmask netmask
 * @param gw DNS
 */
wifi_ap_ip_set(char* ip_addr, char* netmask, char* gw)
```
## build and download
Compile with instructions and download firmware.
```shell
make -j16 flash p=/dev/ttyUSB0 b=921600
```
<j16:j16 is the number of cores in the system

## Example Output
```shell
(other log)...
[       456][INFO: main.c: 105] <<<<<<<<< startting soft ap <<<<<<<<<<<
[lwip] netif status callback
  IP: 192.168.11.1
  MK: 255.255.255.0
  GW: 0.0.0.0
[WF][SM] Conf max sta supported 4...
[WF] MM_ADD_IF_REQ Sending: AP
td_start idx=0
[WF] MM_ADD_IF_REQ Done
[WF] vif_index from LAMC is 0
[lwip] netif status callback
  IP: 192.168.169.1
  MK: 255.255.255.0
  GW: 0.0.0.0
[DHCP] ip_start: [192.168.169.2]
[DHCP] ip_start: [192.168.169.254]
[WF][SM] start AP with ssid ai-thinker;
[WF][SM]               pwd  12345678;
[WF][SM]               channel  6;
[WF] APM_START_REQ Sending with vif_index 0
[WF] received APM Start apm_start_req_handler:74
[WF] return with other handler
[WF] APM_START_REQ Done
[WF] status is 00
[WF] vif_idx is 00
[WF] ch_idx is 00
[WF] bcmc_idx is 05
[WF][SM] stateGlobalGuard_AP: AP iface has started!
[lwip] netif status callback
  IP: 192.168.169.1
  MK: 255.255.255.0
  GW: 0.0.0.0
[WF][SM] stateGlobalGuard_AP: AP iface has started!
[lwip] netif status callback
  IP: 192.168.4.1
  MK: 255.255.255.0
  GW: 0.0.0.0
[WF][SM] stateGlobalGuard_AP: AP iface has started!
[lwip] netif status callback
  IP: 192.168.4.1
  MK: 255.255.255.0
  GW: 8.8.8.8
[WF][SM] stateGlobalGuard_AP: AP iface has started!
[      1152][INFO: main.c:  78] [softAP]:SSID:ai-thinker,PASSWORD:12345678,IP addr:192.168.4.1
[      1160][INFO: main.c: 109] <<<<<<<<< startt soft ap OK<<<<<<<<<<<
...
```
## Troubleshooting

For any technical queries, please open an [issue](https://github.com/Ai-Thinker-Open/Ai-Thinker-WB2/issues) on GitHub. We will get back to you soon.