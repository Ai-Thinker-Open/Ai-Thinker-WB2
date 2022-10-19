# UDP multicast Example
## Configuration project
By default, the connected wifi AP in this project is `ssid="ssid"` and `password="password"`.
You need to modify it according to your own AP configuration.
```c
#define ROUTER_SSID "ssid"
#define ROUTER_PWD "password"
```
**Multicast default configuration**

- Muliticast addr: `224.0.1.0`
- Port: `7878`

You can go to the main The macro definition in c modifies the IP address and port number of multicast
```c
 // MULITICAST_ADDR: 224.0.0.0 ~ 239.255.255.255
#define MULITICAST_ADDR "224.0.1.0"
#define MULITICAST_PORT 7878
```

## build and download
Compile with instructions and download firmware.
```shell
make -j16 flash p=/dev/ttyUSB0 b=921600
```
**j16:j16 is the number of cores in the system**

## Example Output
### Multicast started successfully
```shell
(other log)...
[WF][SM] Exiting connecting state
[WF][SM] State Action ###connecting### --->>> ###wifiConnected_ipObtaining###
[WF][PF] Using profile, idx is @0
[WF][SM] Entering wifiConnected_ipObtaining state
[WF][SM] DHCP Starting...0x42014b54
[APP] [EVT] connected 4539
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
 IP:192.168.1.112
 MASK: 255.255.255.0
 Gateway: 192.168.1.1
[lwip] netif status callback
  IP: 192.168.1.112
  MK: 255.255.255.0
  GW: 192.168.1.1
[WF][SM] Exiting wifiConnected_ipObtaining state
[WF][SM] State Action ###wifiConnected_ipObtaining### --->>> ###wifiConnected_IPOK###
[WF][SM] Entering wifiConnected_IPOK state
[APP] [EVT] GOT IP 5594
[SYS] Memory left is 155904 Bytes
[      5601][INFO: main.c:  70] <<<<<<<<<<<<<<<<<<udp multicast start<<<<<<<<<<<<<
[      5606][INFO: main.c:  71] multicast addr:224.0.1.0:7878
```
### Message Receiving and Sending
**Other nodes participating in multicast must maintain the same network segment as Ai-WB2 to achieve communication.**
The project will send the same multicast message when receiving the multicast message.
```shell
(other log)...
[    221662][INFO: main.c:  76] 192.168.1.111:Hello Ai-WB2
[    221666][INFO: main.c:  81] udp multicast data:Hello Ai-WB2 
[    223070][INFO: main.c:  76] 192.168.1.111:Hello Ai-WB2
[    223074][INFO: main.c:  81] udp multicast data:Hello Ai-WB2
[    223828][INFO: main.c:  76] 192.168.1.111:Hello Ai-WB2
[    223832][INFO: main.c:  81] udp multicast data:Hello Ai-WB2
```
## Troubleshooting

For any technical queries, please open an [issue](https://github.com/Ai-Thinker-Open/Ai-Thinker-WB2/issues) on GitHub. We will get back to you soon.