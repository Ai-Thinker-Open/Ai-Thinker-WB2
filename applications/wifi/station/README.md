# WiFi station example
## Configuration project
By default, the connected wifi AP in this project is `ssid="ssid"` and `password="password"`.
You need to modify it according to your own AP configuration.
```c
#define ROUTER_SSID "ssid"
#define ROUTER_PWD "password"
```
## Build and download
Compile with instructions and download firmware.
```shell
make -j16 flash p=/dev/ttyUSB0 b=921600
```
<j16:j16 is the number of cores in the system

## Example Output
### Connection succeeded
```shell
(other log)...
[WF][SM] State Action ###connecting### --->>> ###wifiConnected_ipObtaining###
[WF][PF] Using profile, idx is @0
[WF][SM] Entering wifiConnected_ipObtaining state
[WF][SM] DHCP Starting...0x420148dc
[APP] [EVT] connected 4530
-----------------> AABA Request:
    A-MSDU: Permitted
    Block Ack Policy: Immediate Block Ack
    TID: 0
    Number of Buffers: 64
-----------------> AABA Response:
    A-MSDU: Not Permitted
    Block Ack Policy: Immediate Block Ack
    TID: 0
    Number of Buffers: 8
    ssn: 0
    timeout: 0
    tid 0
 IP:192.168.1.105
 MASK: 255.255.255.0
 Gateway: 192.168.1.1
[lwip] netif status callback
  IP: 192.168.1.105
  MK: 255.255.255.0
  GW: 192.168.1.1
[WF][SM] Exiting wifiConnected_ipObtaining state
[WF][SM] State Action ###wifiConnected_ipObtaining### --->>> ###wifiConnected_IPOK###
[WF][SM] Entering wifiConnected_IPOK state
[APP] [EVT] GOT IP 5593
[SYS] Memory left is 156528 Bytes

```
### Connection failed
```shell
(other log)...
===end sm_get_bss_params===
[WF][SM] Entering connecting state
[APP] [EVT] Reconnect 38121
[APP] [EVT] Connecting 38123
===start sm_get_bss_params===
bssid[0] = 0xffff
bssid[1] = 0xffff
bssid[2] = 0xffff
search ssid = ssid
result ssid index = -1
===end sm_get_bss_params===
ind ix 0x4201d19c, chan_ctxt is 0x00000000
connect failure, ssid = ssid, index = -1
[RX] Connection Status
[RX]   status_code 12
[RX]   reason_code 65535
[RX]   connect result: SSID error, scan no bssid and channel
[RX]   MAC 00:00:00:00:00:00
[RX]   vif_idx 0
[RX]   ap_idx 255
[RX]   ch_idx 0
[RX]   qos 0
[RX]   acm 0
[RX]   assoc_req_ie_len 0
[RX]   assoc_rsp_ie_len 0
[RX]   aid 0
[RX]   band 0
[RX]   center_freq 0
[RX]   width 0
[RX]   center_freq1 0
[RX]   center_freq2 0
[WF][SM] Exiting connecting state
[WF][SM] State Action ###connecting### --->>> ###disconnect###
[WF][SM] Entering disconnect state
[APP] [EVT] disconnect 41444
...

```
<If there is a connection error, this log message will be sent repeatedly

## Troubleshooting

For any technical queries, please open an [issue](https://github.com/Ai-Thinker-Open/Ai-Thinker-WB2/issues) on GitHub. We will get back to you soon.