# dns example
## Configuration project
set your router ssid and password
```c
#define ROUTER_SSID "ssid"
#define ROUTER_PWD "password"
```

set host name to dns

```c
#define host_name1 "bbs.ai-thinker.com"
#define host_name2 "ai-thinker.com"
```

## Example Output
```shell
(other log)...
[WF][SM] Exiting connecting state
[WF][SM] State Action ###connecting### --->>> ###wifiConnected_ipObtaining###
[WF][PF] Getting profile by index, idx is @0
[WF][SM] Entering wifiConnected_ipObtaining state
[WF][SM] DHCP Starting...0x4201452c
-----------------> AABA Request:
    A-MSDU: Permitted
    Block Ack Policy: Immediate Block Ack
    TID: 6
    Number of Buffers: 64
-----------------> AABA Response:
    A-MSDU: Not Permitted
    Block Ack Policy: Immediate Block Ack
    TID: 6
    Number of Buffers: 8
 IP:192.168.31.49
 MASK: 255.255.255.0
 Gateway: 192.168.31.1
[lwip] netif status callback
  IP: 192.168.31.49
  MK: 255.255.255.0
  GW: 192.168.31.1
[WF][SM] Exiting wifiConnected_ipObtaining state
[WF][SM] State Action ###wifiConnected_ipObtaining### --->>> ###wifiConnected_IPOK###
[WF][SM] Entering wifiConnected_IPOK state
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
Address type: AF_INET
IP addr 1: 122.114.122.174
Address type: AF_INET
IP addr 1: 120.78.206.111

...

```
**If there is a connection error, this log message will be sent repeatedly**

## Troubleshooting

For any technical queries, please open an [issue](https://github.com/Ai-Thinker-Open/Ai-Thinker-WB2/issues) on GitHub. We will get back to you soon.