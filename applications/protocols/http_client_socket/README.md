# Http client socket Example

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

### successfully request web url

```shell
[32mINFO[0m (11611)[demo.c:  68] ... connected
[32mINFO[0m (11614)[demo.c:  78] ... socket send success
[32mINFO[0m (11618)[demo.c:  91] ... set socket receiving timeout success
HTTP/1.0 200 OK
Age: 316063
Cache-Control: max-age=604800
Content-Type: text/html; charset=UTF-8
Date: Fri, 21 Oct 2022 07:50:25 GMT
Etag: "3147526947+ident"
Expires: Fri, 28 Oct 2022 07:50:25 GMT
Last-Modified: Thu, 17 Oct 2019 07:18:26 GMT
Server: ECS (sab/56CE)
Vary: Accept-Encoding
X-Cache: HIT
Content-Length: 1256
Connection: close

<!doctype html>
<html>
<head>
    <title>Example Domain</title>

    <meta charset="utf-8" />
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <style type="text/css">
    body {
        background-color: #f0f0f2;
        margin: 0;
        padding: 0;
        font-family: -apple-system, system-ui, BlinkMacSystemFont, "Segoe UI", "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif;
    
    }
    div {
        width: 600px;
        margin: 5em auto;
        padding: 2em;
        background-color: #fdfdff;
        border-radius: 0.5em;
        box-shadow: 2px 3px 7px 2px rgba(0,0,0,0.02);
    }
    a:link, a:visited {
        color: #38488f;
        text-decoration: none;
    }
    @media (max-width: 700px) {
        div {
            margin: 0 auto;
            width: auto;
        }
    }
    </style>  
</head>

<body>
<div>
    <h1>Example Domain</h1>
    <p>This domain is for use in illustrative examples in documents. You may use this
    domain in literature without prior coordination or asking for permission.</p>
    <p><a href="https://www.iana.org/domains/example">More information...</a></p>
</div>
</body>
</html>
[32mINFO[0m (11922)[demo.c: 107] ... done reading from socket. Last read return=0 errno=107

[32mINFO[0m (11932)[demo.c: 111] 10... 
[32mINFO[0m (12934)[demo.c: 111] 9... 
[32mINFO[0m (13935)[demo.c: 111] 8... 
```

## Troubleshooting

For any technical queries, please open an [issue](https://github.com/Ai-Thinker-Open/Ai-Thinker-WB2/issues) on GitHub. We will get back to you soon.
