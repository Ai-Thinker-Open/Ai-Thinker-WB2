# UDP client Example
## Configure
Please configure the ssid and password that need to be connected to WiFi in advance,in `main.c`.

```c
#define ROUTER_SSID "your ssid"
#define ROUTER_PWD "your password"
```
The UDP server IP address demonstrated in the project cannot be used and needs to be modified to the actual server IP address
```c
#define UDP_SERVER_IP "127.0.0.0"
#define UDP_SERVER_PORT 7878
```
## build and download
Compile with instructions and download firmware.
```shell
make -j16 flash p=/dev/ttyUSB0 b=921600
```
**j16:j16 is the number of cores in the system**
## Example Output
When the client connects, it will send a "shell udp server" to the server and start listening for messages.
```shell
(other log)...
[WF][SM] State Action ###connecting### --->>> ###wifiConnected_ipObtaining###
[WF][PF] Using profile, idx is @0
[WF][SM] Entering wifiConnected_ipObtaining state
[WF][SM] DHCP Starting...0x42014b54
[APP] [EVT] connected 4914
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
[SYS] Memory left is 155904 Bytes
[      5599][INFO: main.c:  46] udp client task run
Server ip Address : 192.168.1.100 port:7878
[      5607][INFO: main.c:  53] udp_client_task:udp client connect OK
[      5614][INFO: main.c:  61] udp client send OK

```
### Receive data
```shell
(other log)...
[     11102][INFO: main.c:  67] udp_client_task:udp receive data:Hello udp client 
[     11561][INFO: main.c:  67] udp_client_task:udp receive data:Hello udp client 
[     11783][INFO: main.c:  67] udp_client_task:udp receive data:Hello udp client 
[     11920][INFO: main.c:  67] udp_client_task:udp receive data:Hello udp client 
[     12107][INFO: main.c:  67] udp_client_task:udp receive data:Hello udp client 
[     12294][INFO: main.c:  67] udp_client_task:udp receive data:Hello udp client 
[     12436][INFO: main.c:  67] udp_client_task:udp receive data:Hello udp client 
[     12617][INFO: main.c:  67] udp_client_task:udp receive data:Hello udp client 
[     12795][INFO: main.c:  67] udp_client_task:udp receive data:Hello udp client 
[     12952][INFO: main.c:  67] udp_client_task:udp receive data:Hello udp client 
[     13142][INFO: main.c:  67] udp_client_task:udp receive data:Hello udp client 
[     13291][INFO: main.c:  67] udp_client_task:udp receive data:Hello udp client 
```
## Troubleshooting

For any technical queries, please open an [issue](https://github.com/Ai-Thinker-Open/Ai-Thinker-WB2/issues) on GitHub. We will get back to you soon.