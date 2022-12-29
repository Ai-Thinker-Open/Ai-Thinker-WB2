# mqtt_ws Example

## Configure WiFi Connected

Please configure the ssid and password that need to be connected to WiFi in advance,in `main.c`.

```c
#define ROUTER_SSID "your ssid"
#define ROUTER_PWD "your password"
```

## Configure mqtt server

Please configure the server url  in `demo.c`.

```c
axk_mqtt_client_config_t mqtt_cfg = {
    .uri="ws://mqtt.eclipseprojects.io:80/mqtt",
    .event_handle = event_cb,
};
```

## Troubleshooting

For any technical queries, please open an [issue](https://github.com/Ai-Thinker-Open/Ai-Thinker-WB2/issues) on GitHub. We will get back to you soon.
