# tcp_client Example
## Configure
Please configure the ssid and password that need to be connected to WiFi in advance,in `main.c`.

```c
#define ROUTER_SSID "your ssid"
#define ROUTER_PWD "your password"
```
Then configure the IP address and port number of the TCP server 
```c
//This is Ai-Thinker Remote TCP Server: http://tt.ai-thinker.com:8000/ttcloud
#define TCP_SERVER_IP "122.114.122.174"
#define TCP_SERVER_PORT 7878
```
## Compile and download
**Compile command**

```shell
    make -j16
```
`-j8`is the number of cores in the system.

**download**

```shell
make flash p=/dev/ttyUSBx b=921600
```
`/dev/ttyUSBx`is the port number of the Ai-WB2 connection, usually ttyUSB0

## Example Output
```shell
(other log)...
Server ip Address : 192.168.31.156 port:7878
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
[      7383][INFO: main.c:  54] tcp_client_task:tcp client connect OK
[      7387][INFO: main.c:  62] tcp client send OK
...
```
After the TCP client connects, it sends a "*hello tcp server*" to the server.The server sends a `close` message to close the connection.

## Troubleshooting

For any technical queries, please open an [issue](https://github.com/Ai-Thinker-Open/Ai-Thinker-WB2/issues) on GitHub. We will get back to you soon.
