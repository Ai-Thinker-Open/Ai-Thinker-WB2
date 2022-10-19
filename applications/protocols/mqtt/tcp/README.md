# TCP MQTT client Example
## Configure WiFi
Please configure the ssid and password that need to be connected to WiFi in advance,in `main.c`.

```c
#define ROUTER_SSID "your ssid"
#define ROUTER_PWD "your password"
```
## Configure mqttt client
In the `proc_main_entry` function in `Main. c`, you need to modify the xMqttConfig structure to connect to the remote MQTT server.
It is suggested that all members in the structure should be assigned values, which can be configured by referring to this project. However, borkerHost, borkerPort, username, password and clientID must be reconfigured.
```c
mqtt_client_config_t xMqttConfig =
    {
        .MQTTVersion = 4,
        .borkerHost = "host",
        .borkerPort = 1883,
        .mqttCommandTimeout = 6000,
        .username = "mqttUserName",
        .password = "password",
        .clientID = "clientID",
        .keepAliveInterval = 60,
        .cleansession = true,
    };
```
MQTT really starts the function in the WiFi event, because the MQTT connection requires WiFi to connect to the AP and the network.
```c
(other code)...
 case CODE_WIFI_ON_GOT_IP:
        {
            blog_info("[APP] [EVT] GOT IP %lld", aos_now_ms());
            blog_info("[SYS] Memory left is %d Bytes", xPortGetFreeHeapSize());
            //Start the connection of MQTT
            xMqttConnectWifiNotify(WIFI_CONNECTED);
            mqtt_client_start();
        }
        break;
...
```
## Subscription and Publishing
The project publishing and subscription functions are in the `tcp_mqtt_client. c` file.The published and subscribed topics need to be modified through the following macro definitions:
```c
#define MQTT_DATA_PUBLISH "publish/topic"
#define MQTT_DATA_SUBLISH "subscribe/topic"
```
The project subscribes to both the publish topic and the subscribe topic, so the project can receive messages sent by the server through these two topics.
If you want to only receive messages from subscribed topics, you can comment out the following:
```c
...
 case xMQTT_TYPE_CONNECTED:
                    strcpy((char*)rMsg.topic, MQTT_DATA_SUBLISH);
                    rMsg.qos = 1;
                    mqtt_client_subscribe(&rMsg);
                    //Subscribe to publishing topics at the same time
                    strcpy((char*)rMsg.topic, MQTT_DATA_PUBLISH);
                    rMsg.qos = 0;
                    mqtt_client_subscribe(&rMsg);
                    blog_info("xMQTT : xMQTT_TYPE_CONNECTED");
break;
...
```
After the device receives the message from the subscription topic, it will send the MQTT version information used by the SDK MQTT client and the remaining memory to the publishing topic through JSON:
```json
{   
    "xMqttVersion":"xMQTT_v3.1",
    "freeHeap":97464
}
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
### MQTT client successfully connected 
```shell
(other log)...
INFO (5622)[main.c: 102] [APP] [EVT] GOT IP 5622
INFO (5627)[main.c: 103] [SYS] Memory left is 130896 Bytes
INFO (5635)[tcp_mqtt_client.c-----------------> AABA Request:
    A-MSDU: Permitted
    Block Ack Policy: Immediate Block Ack
    TID: 6
    Number of Buffers: 64
-----------------> AABA Response:
    A-MSDU: Not Permitted
    Block Ack Policy: Immediate Block Ack
    TID: 6
    Number of Buffers: 8
    ssn: 0
    timeout: 0
    tid 6
:A-MSDU: Not Permitted
    Block Ack Policy: Immediate Block Ack
    TID: 6
    Number of Buffers: 8
    ssn: 0
    timeout: 0
    tid 6
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
    ssn: 0
    timeout: 0
    tid 3
INFO (6699)[tcp_mqtt_client.c:  59] xMQTT : xMQTT_TYPE_CONNECTED
INFO (9151)[tcp_mqtt_client.c:  71] xMQTT : xMQTT_TYPE_SUB_SUCCESS
INFO (9251)[tcp_mqtt_client.c:  71] xMQTT : xMQTT_TYPE_SUB_SUCCESS
```
## Message received
```shell
(other log)...
INFO (11603)[tcp_mqtt_client.c:  41] xQueueReceive topic: devSub:{"msg":"hell mqtt client"}
INFO (14028)[tcp_mqtt_client.c:  41] xQueueReceive topic: devSub:{"msg":"hell mqtt client"}
INFO (15330)[tcp_mqtt_client.c:  41] xQueueReceive topic: devPub:{"xMqttVersion":"xMQTT_v3.1","freeHeap":97464}
```