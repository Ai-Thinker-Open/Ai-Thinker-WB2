# udp_server Example
## Configuration project
By default, the connected wifi AP in this project is `ssid="ssid"` and `password="password"`.
You need to modify it according to your own AP configuration.
```c
#define ROUTER_SSID "ssid"
#define ROUTER_PWD "password"
```
**Server default configuration**

- IP Address: station IPv4 addr
- Port: `7878`

```c
#define UDP_SERVER_PORT 7878
```
The current project supports simultaneous access of `4 clients`, you are at `src/udp_ Server.c` can modify the following macro definitions to modify the maximum number of connections.
```c
#define MAX_CLIENT_NUM 4
```
## build and download
Compile with instructions and download firmware.
```shell
make -j16 flash p=/dev/ttyUSB0 b=921600
```
**j16:j16 is the number of cores in the system**

## Example Output
### Server started successfully
```shell
(other log)...
[WF][SM] Exiting connecting state
[WF][SM] State Action ###connecting### --->>> ###wifiConnected_ipObtaining###
[WF][PF] Using profile, idx is @0
[WF][SM] Entering wifiConnected_ipObtaining state
[WF][SM] DHCP Starting...0x42014a5c
[APP] [EVT] connected 4488
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
[APP] [EVT] GOT IP 5093
[SYS] Memory left is 156144 Bytes
udp server start ip:192.168.1.100:7878
```
### Message Receiving and Sending
```shell
(other log)...
[     10402][INFO: main.c:  65] 192.168.1.106:hellc
[     12005][INFO: main.c:  65] 192.168.1.106:hellc
[     12758][INFO: main.c:  65] 192.168.1.106:hellc
[     17812][INFO: main.c:  65] 192.168.1.107:Hello Server
[     18516][INFO: main.c:  65] 192.168.1.107:Hello Server
[     19070][INFO: main.c:  65] 192.168.1.107:Hello Server
[     19874][INFO: main.c:  65] 192.168.1.107:Hello Server
[     20428][INFO: main.c:  65] 192.168.1.107:Hello Server
[     20832][INFO: main.c:  65] 192.168.1.107:Hello Server
[     21286][INFO: main.c:  65] 192.168.1.107:Hello Server
[     52940][INFO: main.c:  65] 192.168.1.107:close
```
When a `close` is received, the current connection is closed.
## Troubleshooting

For any technical queries, please open an [issue](https://github.com/Ai-Thinker-Open/Ai-Thinker-WB2/issues) on GitHub. We will get back to you soon.