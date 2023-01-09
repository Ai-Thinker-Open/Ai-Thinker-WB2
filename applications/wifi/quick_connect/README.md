# WiFi quick connect example
## Configuration project
By default, the connected wifi AP in this project is `ssid="ssid"` and `password="password"`.
You need to modify it according to your own AP configuration.

The program will follow a regular connection the first time it runs, so it will take longer. After this restart, the program reads the area of the specified flash to make a quick connection, which takes about three seconds faster than the first run.
```c
#define ROUTER_SSID "ssid"
#define ROUTER_PWD "password"
```
## Build and download
Compile with instructions and download firmware.
```shell
make -j16 flash p=/dev/ttyUSB0 b=921600
```
**j16:j16 is the number of cores in the system**

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
[BL] Initi Wi-Fi with MAC #### A8:17:10:CF:53:FF ####
     hostname: Bouffalolab_BL602-cf53ff
[WF] country code CN used, num of channel 13
-----------------------------------------------------
[IPC] [TX] Low level size 204, driver size 100, total size 304
Enable BMX IRQ
[WF] [KEY] [CFG] nVAP is 2, endidx 12, startidx 8
td_init
td_reset idx=0
td_reset idx=1
[version] lmac 5.4.0.0
[version] version_machw_1 000055FB
[version] version_machw_2 000001B3
[version] version_phy_1 00822111
[version] version_phy_2 00000000
[version] features 001089DF
[ME] HT supp 1, VHT supp 0
[WF] country code CN used, num of channel 13
[WF][SM] reload tsen 
[WF][SM] Exiting ifaceDown state
[WF][SM] State Action ###ifaceDown### --->>> ###idle###
[WF][SM] Entering idle state
INFO (505)[main.c: 134] [APP] [EVT] MGMR DONE 505
INFO (520)[main.c:  85] read connenct msg,ssid:FAE@Seahi channel:8 pmk:53954A4EB8E168ED968BE4965014D999151F3F75C03EABF4C504F37CF0AE4978  
---------STA enable
[lwip] netif status callback
  IP: 0.0.0.0
  MK: 0.0.0.0
  GW: 0.0.0.0
wifi mgmr band:0 freq: 2447
[WF][SM] currentState is idle
[WF] MM_ADD_IF_REQ Sending: STA
td_start idx=0
[WF] MM_ADD_IF_REQ Done
[WF] vif_index from LAMC is 0
[WF][SM] Exiting idle state
[WF][SM] Action Connect
        ssid FAE@Seahi
        ssid len 9
        passphr 
        passphr len 0
        psk 53954A4EB8E168ED968BE4965014D999151F3F75C03EABF4C504F37CF0AE4978
        psk len 64
        band 0
        freq 2447
        bssid 00:00:00:00:00:00
        dhcp status: true
        flags: 256
[WF][PF] Adding and Using profile, idx is @0
[WF][SM] State Action ###idle### --->>> ###connecting###
connecting using vif_idx 0
[WF][SM] Entering connecting state
INFO (592)[main.c: 154] [APP] [EVT] Connecting 592
===start sm_get_bss_params===
bssid[0] = 0xffff
bssid[1] = 0xffff
bssid[2] = 0xffff
search ssid = FAE@Seahi
result ssid index = 0
===end sm_get_bss_params===
--- OPT rxu_mgmt_ind is detected
[BL] [SEC] TRNG Handler
[BL] [SEC] TRNG Handler
ind ix 0x4201c894, chan_ctxt is 0x42012378
[RX] Connection Status
[RX]   status_code 0
[RX]   reason_code 0
[RX]   connect result: sm connect ind ok
[RX]   MAC B8:F8:83:0D:9E:2A
[RX]   vif_idx 0
[RX]   ap_idx 0
[RX]   ch_idx 0
[RX]   qos 1
[RX]   acm 0
[RX]   assoc_req_ie_len 86
[RX]   assoc_rsp_ie_len 146
[RX]   aid 0
[RX]   band 0
[RX]   center_freq 2447
[RX]   width 0
[RX]   center_freq1 2447
[RX]   center_freq2 0
[WF][SM] Exiting connecting state
[WF][SM] State Action ###connecting### --->>> ###wifiConnected_ipObtaining###
[WF][PF] Getting profile by index, idx is @0
[WF][SM] Entering wifiConnected_ipObtaining state
[WF][SM] DHCP Starting...0x42014304
INFO (955)[main.c: 164] [APP] [EVT] connected 955
[BL] [SEC] TRNG Handler
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
 IP:192.168.1.100
 MASK: 255.255.255.0
 Gateway: 192.168.1.1
[lwip] netif status callback
  IP: 192.168.1.100
  MK: 255.255.255.0
  GW: 192.168.1.1
[WF][SM] Exiting wifiConnected_ipObtaining state
[WF][SM] State Action ###wifiConnected_ipObtaining### --->>> ###wifiConnected_IPOK###
[WF][SM] Entering wifiConnected_IPOK state
INFO (2136)[main.c: 175] [APP] [EVT] GOT IP 2136
INFO (2141)[main.c: 176] [SYS] Memory left is 158200 Bytes
INFO (2147)[main.c: 178] ap channel:8
...

```
**If there is a connection error, this log message will be sent repeatedly**

## Troubleshooting

For any technical queries, please open an [issue](https://github.com/Ai-Thinker-Open/Ai-Thinker-WB2/issues) on GitHub. We will get back to you soon.