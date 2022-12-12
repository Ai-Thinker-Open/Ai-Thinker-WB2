# sntp example
## Configuration project
By default, the connected wifi AP in this project is `ssid="ssid"` and `password="password"`.
You need to modify it according to your own AP configuration.
```c
#define ROUTER_SSID "ssid"
#define ROUTER_PWD "password"
```
## Example Output
```shell
(other log)...
INFO (6094)[main.c: 107] [APP] [EVT] GOT IP 6094
INFO (6099)[main.c: 108] [SYS] Memory left is 158376 Bytes
INFO (6105)[main.c:  33] --------------------------------------- Start NTP now

[SNTP] pcb isready, 0x4204a908
INFO (6116)[main.c:  37] --------------------------------------- Start NTP Done

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
SNTP time now
Try process
Processing...
sntp_process: 1670841863, 500093 us
INFO (11124)[main.c:  48] [NTP] time is 1670841863:2148183

INFO (12127)[main.c:  48] [NTP] time is 1670841864:2148186

INFO (13130)[main.c:  48] [NTP] time is 1670841865:2148189

INFO (14133)[main.c:  48] [NTP] time is 1670841866:2148192

INFO (15136)[main.c:  48] [NTP] time is 1670841867:2148195

INFO (16139)[main.c:  48] [NTP] time is 1670841868:2148198
...

```

## Troubleshooting

For any technical queries, please open an [issue](https://github.com/Ai-Thinker-Open/Ai-Thinker-WB2/issues) on GitHub. We will get back to you soon.