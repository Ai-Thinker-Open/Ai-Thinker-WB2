/**
 * @file main.c
 * @author your name (you@domain.com)
 * @brief
 * @version 0.1
 * @date 2022-11-25
 *
 * @copyright Copyright (c) 2022
 *
 */
#include <stdio.h>

#include <FreeRTOS.h>
#include <task.h>

#include <hosal_i2c.h>
#include <bl_gpio.h>
#include <blog.h>
#include "sensor_sht3x.h"
#include "easy_connect_wifi.h"
#include "wechat_mqtt.h"
#include "data_handle.h"
#include "LAN_communication.h"

#define LED_CRT_PIN 14

static int udp_broadcast_port = 7878;
static int led_status = 0;
sht31_value_t* sensor_data;
/**
 * @brief Get the wechat data task object
 *
 * @param arg
 */
void get_wechat_data_task(void* arg)
{
    char* data = pvPortMalloc(256);
    char* wifi_mac = mqtt_get_wifi_sta_mac();
    wechat_recv_queue = xQueueCreate(2, 256);
    static  mqtt_msg_t sMsg = {
          .dup = 0,
          .qos = 0,
          .retained = 0,
    };
    sprintf((char*)sMsg.topic, "%s/devPub", wifi_mac);

    while (1) {
        xQueueReceive(wechat_recv_queue, data, portMAX_DELAY);
        // blog_info_hexdump("wechat data", (uint8_t*)data, strlen(data));
        led_status = get_led_status_from_json(data);

        if (led_status>=0) {
            bl_gpio_output_set(LED_CRT_PIN, led_status);
            sensor_data = sensor_sht31_get_value();
            char* pub_data = cjson_update_data(led_status, sensor_data->temp_value, sensor_data->humi_value);
            sprintf((char*)sMsg.payload, "%s", pub_data);
            sMsg.payloadlen = strlen((char*)sMsg.payload);
            mqtt_client_publish(&sMsg);
            vPortFree(pub_data);
        }
    }
    vPortFree(wifi_mac);
    vPortFree(data);
}

int main(void)
{

    static EventBits_t vBits;
    wifi_easy_connect();

    sensor_sht30_init();
    bl_gpio_enable_output(LED_CRT_PIN, true, false);

    xTaskCreate(wechat_mqtt_init, "wechat_mqtt_task", 1024*2, NULL, 10, NULL);
    xTaskCreate(get_wechat_data_task, "get_wechat_data", 1024*2, NULL, 11, NULL);
    xTaskCreate((void*)LAN_communication_init, "LAN_communicatison", 1024, (void*)&udp_broadcast_port, 12, NULL);
    //Data receiving, transmitting and control
    char* wifi_mac = mqtt_get_wifi_sta_mac();
    static  mqtt_msg_t sMsg = {
          .dup = 0,
          .qos = 0,
          .retained = 0,
    };
    sprintf((char*)sMsg.topic, "%s/devPub", wifi_mac);

    while (1) {

        // vTaskDelay(5000/portTICK_PERIOD_MS);
        sensor_data = sensor_sht31_get_value();
        vBits = xEventGroupWaitBits(wifi_event_handle, WIFI_CONNECT_BIT|WIFI_DISCONNECT_BIT, pdTRUE, pdFALSE, 5000/portTICK_PERIOD_MS);
        if (vBits&WIFI_CONNECT_BIT) {
            xMqttConnectWifiNotify(WIFI_CONNECTED);
        }
        else if (vBits &WIFI_DISCONNECT_BIT) {
            xMqttConnectWifiNotify(WIFI_DISCONNECTED);
        }
        else {
            char* pub_data = cjson_update_data(led_status, sensor_data->temp_value, sensor_data->humi_value);
            sprintf((char*)sMsg.payload, "%s", pub_data);
            sMsg.payloadlen = strlen((char*)sMsg.payload);

            mqtt_client_publish(&sMsg);
            blog_info("Heap Size:%d Byte", xPortGetFreeHeapSize());
            blog_info("pub topic:%s  payload:%s", sMsg.topic, sMsg.payload);
            if (tcp_connect_status) {
                blog_info("send data to LAN:%s", pub_data);
                xQueueSend(LAN_tcp_queue, pub_data, portMAX_DELAY);
            }

            vPortFree(pub_data);
        }

    }
    vPortFree(wifi_mac);
    sensor_sht31_deint();
    return 0;
}
