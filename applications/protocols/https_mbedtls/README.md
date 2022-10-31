# HTTP server with TLS support using mbedTLS

Simple HTTPS example that uses mbedTLS to establish a secure socket connection using the certificate bundle with two custom certificates added for verification》

## Configure WiFi Connected

Please configure the ssid and password that need to be connected to WiFi in advance,in `main.c`.

```c
#define ROUTER_SSID "your ssid"
#define ROUTER_PWD "your password"
```

## Compile and download

**Compile command**

```shell
make -j16
```

`-j16`is the number of cores in the system.

**download**

```shell
make flash p=/dev/ttyUSBx b=921600
```

`/dev/ttyUSBx`is the port number of the Ai-WB2 connection, usually ttyUSB0

## Example Output

```shell
[WF][SM] Exiting wifiConnected_ipObtaining state
[WF][SM] State Action ###wifiConnected_ipObtaining### --->>> ###wifiConnected_IPOK###
[WF][SM] Entering wifiConnected_IPOK state
[APP] [EVT] GOT IP 5535
[SYS] Memory left is 146104 Bytes
[32mINFO[0m (5536)[demo.c:  74] Seeding the random number generator
[32mINFO[0m (5538)[demo.c:  86] Loading the CA root certificate...
[32mINFO[0m (5604)[demo.c:  98] Setting hostname for TLS session...
[32mINFO[0m (5604)[demo.c: 107] Setting up the SSL/TLS structure...
[32mINFO[0m (5606)[demo.c: 137] Connecting to www.howsmyssl.com:443...
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
-----------------> AABA Request:
    A-MSDU: Permitted
    Block Ack Policy: Immediate Block Ack
    TID: 3
    Number of Buffers: 64
-----------------> AABA Response:
    A-MSDU: Not Permitted
    Block Ack Policy: Immediate Block Ack
    TID: 3
    Number of Buffers: 8
[32mINFO[0m (6071)[demo.c: 146] Connected.
[32mINFO[0m (6071)[demo.c: 150] Performing the SSL/TLS handshake...
[32mINFO[0m (8014)[demo.c: 161] Verifying peer X.509 certificate...
[33mWARN[0m (8014)[demo.c: 166] Failed to verify peer certificate!
[33mWARN[0m (8015)[demo.c: 169] verification info:   ! The certificate is not correctly signed by the trusted CA

[32mINFO[0m (8015)[demo.c: 176] Cipher suite is TLS-ECDHE-ECDSA-WITH-AES-128-GCM-SHA256
[32mINFO[0m (8016)[demo.c: 178] Writing HTTP request...
[32mINFO[0m (8018)[demo.c: 188] 103 bytes written
[32mINFO[0m (8018)[demo.c: 198] Reading HTTP response...
511 bytes read

511 bytes read

157 bytes read

511 bytes read

431 bytes read

[32mINFO[0m (8242)[demo.c: 251] Completed 1 requests
[32mINFO[0m (8243)[demo.c: 255] 10...
[32mINFO[0m (9243)[demo.c: 255] 9...
[32mINFO[0m (10243)[demo.c: 255] 8...
[32mINFO[0m (11243)[demo.c: 255] 7...
[32mINFO[0m (12243)[demo.c: 255] 6...
[32mINFO[0m (13243)[demo.c: 255] 5...
[32mINFO[0m (14243)[demo.c: 255] 4...
[32mINFO[0m (15243)[demo.c: 255] 3...
[32mINFO[0m (16243)[demo.c: 255] 2...

```

## Troubleshooting

For any technical queries, please open an [issue](https://github.com/Ai-Thinker-Open/Ai-Thinker-WB2/issues) on GitHub. We will get back to you soon.
