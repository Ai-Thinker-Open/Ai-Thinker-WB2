/**
 * @file wechat_mqtt.c
 * @author your name (you@domain.com)
 * @brief
 * @version 0.1
 * @date 2022-11-23
 *
 * @copyright Copyright (c) 2022
 *
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <blog.h>

#include <bl_wifi.h>
#include <easy_connect_wifi.h>
#include "wechat_mqtt.h"
 /**
  * @brief qmtt_get_wifi_sta_mac
  *
  * @return char*
  */
char* mqtt_get_wifi_sta_mac(void)
{
    uint8_t wifi_mac_arryr[6] = { 0 };
    char* wifi_mac_str = pvPortMalloc(12);
    bl_wifi_mac_addr_get(wifi_mac_arryr);
    sprintf(wifi_mac_str, "%02X%02X%02X%02X%02X%02X",
    wifi_mac_arryr[0],
    wifi_mac_arryr[1],
    wifi_mac_arryr[2],
    wifi_mac_arryr[3],
    wifi_mac_arryr[4],
    wifi_mac_arryr[5]
    );
    return wifi_mac_str;
}


static void TaskXMqttRecieve(void* p)
{

    mqtt_msg_t rMsg;
    blog_info("mqtt_client_receive start");
    while (1)
    {
        if (mqtt_client_receive(&rMsg))
        {
            switch (rMsg.type)
            {
                //Receive new messages and send them
                case xMQTT_TYPE_RECIEVE_MSG:
                    blog_info("xQueueReceive topic: %s:%s", rMsg.topic, rMsg.payload);

                    break;
                    //mqtt client connection succeeded
                case xMQTT_TYPE_CONNECTED:
                    sprintf((char*)rMsg.topic, "%s/devSub", mqtt_get_wifi_sta_mac());
                    rMsg.qos = 1;
                    mqtt_client_subscribe(&rMsg);
                    blog_info("xMQTT : xMQTT_TYPE_CONNECTED subscribe topic:%s", rMsg.topic);
                    break;
                    //The mqtt client was disconnected successfully
                case xMQTT_TYPE_DISCONNECTED:
                    blog_error("xMQTT : xMQTT_TYPE_DISCONNECTED");
                    break;
                    //Connecting to MQTT server
                case xMQTT_TYPE_CONNECTTING:
                    blog_info("xMQTT : xMQTT_TYPE_CONNECTTING");
                    break;
                    //Topic subscription succeeded
                case xMQTT_TYPE_SUB_SUCCESS:
                    blog_info("xMQTT : xMQTT_TYPE_SUB_SUCCESS");
                    break;
                    // Ping the heartbeat packet
                case xMQTT_TYPE_SEND_PING:
                    blog_info("xMQTT : xMQTT_TYPE_SEND_PING");
                    break;
                default:
                    break;
            }
        }
    }
}

void wechat_mqtt_init(void* arg)
{
    static EventBits_t vBits;
    mqtt_client_config_t xMqttConfig =
    {
        .MQTTVersion = 4,
        .borkerHost = "wx.ai-thinker.com",
        .borkerPort = 1883,
        .mqttCommandTimeout = 6000,
        .username = "sensor_node",
        .password = "sth3x",
        .clientID = "ai-wb2",
        .keepAliveInterval = 60,
        .cleansession = true,
    };
    mqtt_client_init(&xMqttConfig);
    mqtt_client_register_type(TaskXMqttRecieve);
    xMqttConnectWifiNotify(WIFI_CONNECTED);
    mqtt_client_start();
    while (1) {
        vBits = xEventGroupWaitBits(wifi_event_handle, WIFI_CONNECT_BIT|WIFI_DISCONNECT_BIT, pdTRUE, pdFALSE, 1000/portTICK_PERIOD_MS);
        if (vBits&WIFI_CONNECT_BIT) {
            xMqttConnectWifiNotify(WIFI_CONNECTED);
            // mqtt_client_start();
        }
        else if (vBits &WIFI_DISCONNECT_BIT) {
            xMqttConnectWifiNotify(WIFI_DISCONNECTED);
        }
    }
    vTaskDelete(NULL);
}
