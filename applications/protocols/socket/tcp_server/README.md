# tcp_server Example
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
#define TCP_SERVER_PORT 7878
```
The current project supports simultaneous access of `4 clients`, you are at `src/tcp_ Server.c` can modify the following macro definitions to modify the maximum number of connections.
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
[WF][PF] Using profile, idx is @0
[WF][SM] Entering wifiConnected_ipObtaining state
[WF][SM] DHCP Starting...0x42014b74
[APP] [EVT] connected 4448
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
    timeout: 1
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
[APP] [EVT] GOT IP 5594
[SYS] Memory left is 155872 Bytes
tcp server start ip:192.168.1.105:7878
tcp server listening.....
```
### Message Receiving and Sending
When the client access succeeds, the server forwards the message to the client when it receives it：
```shell
(other log)...
client:192.168.1.106:1,id:0
client:192.168.1.106:2,id:1
192.168.1.106:Jdkdj
192.168.1.106:Jdkdj
192.168.1.106:Jdkdj
192.168.1.106:Jdkdj
192.168.1.106:Jdkdj
192.168.1.106:Jdkdj
...
```
When a `close` is received, the current connection is closed.
## Troubleshooting

For any technical queries, please open an [issue](https://github.com/Ai-Thinker-Open/Ai-Thinker-WB2/issues) on GitHub. We will get back to you soon.