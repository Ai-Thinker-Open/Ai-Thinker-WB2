# WiFi scan example

## Example Output
### Connection succeeded
```shell
(other log)...
INFO (487)[main.c:  47] [APP] [EVT] INIT DONE 487


[BL] Initi Wi-Fi with MAC #### 7C:B9:4C:1D:CC:9F ####
     hostname: Bouffalolab_BL602-1dcc9f
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
INFO (562)[main.c:  53] [APP] [EVT] MGMR DONE 562
------>>>>>> Scan CMD
[WIFI] [IND] SCAN Done
wifi_mgmr_scan_complete_callback: scan complete
INFO (3832)[main.c:  62] [APP] [EVT] SCAN Done 3832
cached scan list
****************************************************************************************************
index[00]: channel 13, bssid 76:50:4E:5A:94:22, rssi -73, ppm abs:rel   0 :   0, auth             WPA2-PSK, cipher:         AES, SSID ChinaNet-WiFi5-9422
index[01]: channel 13, bssid 76:50:4E:1A:94:22, rssi -73, ppm abs:rel   0 :   0, auth             WPA2-PSK, cipher:         AES, SSID STTIAN
index[02]: channel 13, bssid 48:A0:F8:45:E3:7D, rssi -76, ppm abs:rel   0 :   0, auth     WPA2-PSK/WPA-PSK, cipher:         AES, SSID ChinaNet-nRnS
index[03]: channel 13, bssid 50:3A:A0:C5:C2:C0, rssi -69, ppm abs:rel   0 :   0, auth     WPA2-PSK/WPA-PSK, cipher:         AES, SSID MERCURY_JLLK
index[04]: channel 11, bssid 78:44:FD:DB:EF:60, rssi -58, ppm abs:rel   0 :   0, auth     WPA2-PSK/WPA-PSK, cipher:         AES, SSID 509509
index[05]: channel 11, bssid F8:8C:21:B4:40:6C, rssi -83, ppm abs:rel   0 :   0, auth     WPA2-PSK/WPA-PSK, cipher:    TKIP/AES, SSID AXK
index[06]: channel 13, bssid E2:F8:8A:A9:FC:4F, rssi -43, ppm abs:rel   0 :   0, auth     WPA2-PSK/WPA-PSK, cipher:    TKIP/AES, SSID HUAWEI
index[07]: channel 11, bssid 90:DE:80:58:B0:11, rssi -59, ppm abs:rel   0 :   0, auth             WPA2-PSK, cipher:         AES, SSID MSI
index[08]: channel 11, bssid A0:DF:15:AF:4E:D8, rssi -66, ppm abs:rel   0 :   0, auth     WPA2-PSK/WPA-PSK, cipher:    TKIP/AES, SSID ChinaNet-SACn
index[09]: channel 11, bssid 2C:C5:46:A8:47:FC, rssi -79, ppm abs:rel   0 :   0, auth     WPA2-PSK/WPA-PSK, cipher:    TKIP/AES, SSID Galaxy Cloud
index[10]: channel 11, bssid 54:A7:03:3F:F3:E2, rssi -55, ppm abs:rel   0 :   0, auth     WPA2-PSK/WPA-PSK, cipher:    TKIP/AES, SSID Aithinker-visitor
index[11]: channel 11, bssid C8:BF:4C:30:00:B9, rssi -74, ppm abs:rel   0 :   0, auth             WPA2-PSK, cipher:         AES, SSID redmi-xin
index[12]: channel 11, bssid F8:8C:21:B4:2D:88, rssi -72, ppm abs:rel   0 :   0, auth     WPA2-PSK/WPA-PSK, cipher:    TKIP/AES, SSID AXK
index[13]: channel 10, bssid A8:02:DB:B3:02:24, rssi -60, ppm abs:rel   0 :   0, auth     WPA2-PSK/WPA-PSK, cipher:         AES, SSID ChinaNet-402
index[14]: channel 11, bssid EC:41:18:4D:C1:50, rssi -57, ppm abs:rel   0 :   0, auth     WPA2-PSK/WPA-PSK, cipher:    TKIP/AES, SSID Meet
index[15]: channel 11, bssid 1E:BC:5A:8F:66:E0, rssi -54, ppm abs:rel   0 :   0, auth             WPA2-PSK, cipher:         AES, SSID 还可以_guest
index[16]: channel 11, bssid CA:E2:65:59:A9:ED, rssi -68, ppm abs:rel   0 :   0, auth             WPA2-PSK, cipher:         AES, SSID JOHHN
index[17]: channel 11, bssid F8:8C:21:02:51:ED, rssi -55, ppm abs:rel   0 :   0, auth     WPA2-PSK/WPA-PSK, cipher:         AES, SSID MEETING
index[18]: channel 11, bssid 94:D9:B3:20:3F:7F, rssi -50, ppm abs:rel   0 :   0, auth     WPA2-PSK/WPA-PSK, cipher:         AES, SSID 001
index[19]: channel 11, bssid F8:8C:21:B4:3F:61, rssi -59, ppm abs:rel   0 :   0, auth     WPA2-PSK/WPA-PSK, cipher:    TKIP/AES, SSID AXK
index[20]: channel 11, bssid 18:BC:5A:8F:66:E0, rssi -54, ppm abs:rel   0 :   0, auth             WPA2-PSK, cipher:         AES, SSID 还可以
index[21]: channel 11, bssid EC:9C:32:2E:E6:13, rssi -46, ppm abs:rel   0 :   0, auth             WPA2-PSK, cipher:         AES, SSID HAP_D96015182
index[22]: channel 10, bssid B4:BA:12:27:B4:88, rssi -62, ppm abs:rel   0 :   0, auth     WPA2-PSK/WPA-PSK, cipher:    TKIP/AES, SSID CMCC-zpDL
index[23]: channel 09, bssid CC:08:FB:EB:F1:28, rssi -49, ppm abs:rel   0 :   0, auth     WPA2-PSK/WPA-PSK, cipher:         AES, SSID ZLM
index[24]: channel 10, bssid 90:94:97:6E:5C:40, rssi -45, ppm abs:rel   0 :   0, auth             WPA2-PSK, cipher:         AES, SSID Rita
index[25]: channel 09, bssid 28:93:7D:21:A0:03, rssi -76, ppm abs:rel   0 :   0, auth     WPA2-PSK/WPA-PSK, cipher:    TKIP/AES, SSID ChinaNet-AA4V
index[26]: channel 09, bssid EC:41:18:4F:FE:D5, rssi -46, ppm abs:rel   0 :   0, auth     WPA2-PSK/WPA-PSK, cipher:    TKIP/AES, SSID zifeng
index[27]: channel 08, bssid 98:A9:42:02:F9:0A, rssi -63, ppm abs:rel   0 :   0, auth             WPA2-PSK, cipher:         AES, SSID CMCC-F9a9
index[28]: channel 06, bssid 58:41:20:3F:5E:14, rssi -67, ppm abs:rel   0 :   0, auth     WPA2-PSK/WPA-PSK, cipher:         AES, SSID 美迪电商
index[29]: channel 01, bssid F8:8C:21:B4:4A:38, rssi -43, ppm abs:rel   0 :   0, auth     WPA2-PSK/WPA-PSK, cipher:    TKIP/AES, SSID AXK
index[30]: channel 06, bssid 3A:1A:52:55:F4:79, rssi -76, ppm abs:rel   0 :   0, auth             WPA2-PSK, cipher:         AES, SSID DIRECT-52557479
index[31]: channel 08, bssid B8:F8:83:0D:9E:2A, rssi -37, ppm abs:rel   0 :   0, auth     WPA2-PSK/WPA-PSK, cipher:         AES, SSID FAE@Seahi
index[32]: channel 06, bssid 64:64:4A:B3:5F:CA, rssi -43, ppm abs:rel   0 :   0, auth             WPA2-PSK, cipher:         AES, SSID Alive
index[33]: channel 06, bssid 00:9A:CD:7D:C9:A8, rssi -51, ppm abs:rel   0 :   0, auth             WPA2-PSK, cipher:         AES, SSID PADS 9.5
index[34]: channel 06, bssid EC:41:18:09:E0:CD, rssi -50, ppm abs:rel   0 :   0, auth     WPA2-PSK/WPA-PSK, cipher:    TKIP/AES, SSID zifeng02
index[35]: channel 06, bssid 14:DE:39:06:86:E4, rssi -33, ppm abs:rel   0 :   0, auth     WPA2-PSK/WPA-PSK, cipher:    TKIP/AES, SSID aithinker123
index[36]: channel 06, bssid 54:48:F6:B2:8B:B6, rssi -44, ppm abs:rel   0 :   0, auth     WPA2-PSK/WPA-PSK, cipher:    TKIP/AES, SSID TEST1
index[37]: channel 06, bssid 9C:9D:7E:59:3E:83, rssi -34, ppm abs:rel   0 :   0, auth             WPA2-PSK, cipher:         AES, SSID AIOT@FAE
index[38]: channel 02, bssid F4:2A:7D:E2:66:58, rssi -62, ppm abs:rel   0 :   0, auth     WPA2-PSK/WPA-PSK, cipher:         AES, SSID 402
index[39]: channel 01, bssid DC:A3:33:AA:04:9A, rssi -57, ppm abs:rel   0 :   0, auth     WPA2-PSK/WPA-PSK, cipher:    TKIP/AES, SSID ChinaNet-EPt9
index[40]: channel 01, bssid F0:92:B4:8C:BC:A1, rssi -79, ppm abs:rel   0 :   0, auth     WPA2-PSK/WPA-PSK, cipher:    TKIP/AES, SSID ChinaNet-rk7Z
index[41]: channel 01, bssid 7A:D6:CB:79:D9:53, rssi -65, ppm abs:rel   0 :   0, auth                 Open, cipher:        NONE, SSID H3C_GUEST
index[42]: channel 01, bssid CA:50:E9:8B:5A:0C, rssi -59, ppm abs:rel   0 :   0, auth     WPA2-PSK/WPA-PSK, cipher:    TKIP/AES, SSID ChinaNet-uL5X
index[43]: channel 01, bssid F0:92:B4:85:8A:A1, rssi -72, ppm abs:rel   0 :   0, auth     WPA2-PSK/WPA-PSK, cipher:    TKIP/AES, SSID ChinaNet-NK9Z
index[44]: channel 01, bssid 54:75:95:4F:74:5E, rssi -50, ppm abs:rel   0 :   0, auth     WPA2-PSK/WPA-PSK, cipher:         AES, SSID TP-LINK_745E
index[45]: channel 01, bssid 7C:B9:4C:1D:BF:41, rssi -65, ppm abs:rel   0 :   0, auth                 Open, cipher:        NONE, SSID axk_1dbf41
index[46]: channel 01, bssid 74:D6:CB:79:D9:53, rssi -73, ppm abs:rel   0 :   0, auth     WPA2-PSK/WPA-PSK, cipher:         AES, SSID jiudao103
index[47]: channel 01, bssid F4:83:CD:A0:1B:9D, rssi -62, ppm abs:rel   0 :   0, auth     WPA2-PSK/WPA-PSK, cipher:         AES, SSID 弘正商务
index[48]: channel 03, bssid 48:A0:F8:46:B2:BD, rssi -56, ppm abs:rel   0 :   0, auth     WPA2-PSK/WPA-PSK, cipher:         AES, SSID ChinaNet-HHZm
index[49]: channel 03, bssid B4:CF:E0:A1:C2:89, rssi -62, ppm abs:rel   0 :   0, auth     WPA2-PSK/WPA-PSK, cipher:    TKIP/AES, SSID ChinaNet-2RAy
----------------------------------------------------------------------------------------------------
...

```
**If there is a connection error, this log message will be sent repeatedly**

## Troubleshooting

For any technical queries, please open an [issue](https://github.com/Ai-Thinker-Open/Ai-Thinker-WB2/issues) on GitHub. We will get back to you soon.