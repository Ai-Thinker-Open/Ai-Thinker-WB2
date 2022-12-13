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
INFO (6094)[main.c: 122] [APP] [EVT] GOT IP 6094
INFO (6099)[main.c: 123] [SYS] Memory left is 158376 Bytes
INFO (6105)[main.c:  36] --------------------------------------- Start NTP now

[SNTP] pcb isready, 0x4204a908
INFO (6116)[main.c:  40] --------------------------------------- Start NTP Done

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
sntp_process: 1670898031, 820829 us
INFO (11124)[main.c:  52] [NTP] time is 1670898034:3526293

INFO (11127)[main.c:  54] Date & time is: 2022-12-13 10:20:34 (Day 2 of week, Day 347 of Year)

INFO (12136)[main.c:  52] [NTP] time is 1670898035:3526305

INFO (12139)[main.c:  54] Date & time is: 2022-12-13 10:20:35 (Day 2 of week, Day 347 of Year)

INFO (13148)[main.c:  52] [NTP] time is 1670898036:3526317

INFO (13151)[main.c:  54] Date & time is: 2022-12-13 10:20:36 (Day 2 of week, Day 347 of Year)

INFO (14160)[main.c:  52] [NTP] time is 1670898037:3526329

INFO (14163)[main.c:  54] Date & time is: 2022-12-13 10:20:37 (Day 2 of week, Day 347 of Year)

INFO (15172)[main.c:  52] [NTP] time is 1670898038:3526341

INFO (15175)[main.c:  54] Date & time is: 2022-12-13 10:20:38 (Day 2 of week, Day 347 of Year)
...

```

## Troubleshooting

For any technical queries, please open an [issue](https://github.com/Ai-Thinker-Open/Ai-Thinker-WB2/issues) on GitHub. We will get back to you soon.