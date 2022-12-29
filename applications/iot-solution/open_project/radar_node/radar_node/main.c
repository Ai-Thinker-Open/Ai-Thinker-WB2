/*
 * @Author: SeanKwok guosx@tech-now.com
 * @Date: 2022-11-30 09:00:43
 * @LastEditors: SeanKwok guosx@tech-now.com
 * @LastEditTime: 2022-12-03 23:02:59
 * @FilePath: /Ai-Thinker-WB2/applications/iot-solution/open_project/radar_node/radar_node/main.c
 * @Description:
 *
 * Copyright (c) 2022 by SeanKwok guosx@tech-now.com, All Rights Reserved.
 */

#include <stdio.h>
#include <FreeRTOS.h>
#include <task.h>

#include <hosal_i2c.h>
#include <bl_gpio.h>
#include <blog.h>
#include "easy_connect_wifi.h"
#include "wechat_mqtt.h"
#include "data_handle.h"
#include "LAN_communication.h"
#include "radar_data_parse.h"
#include <hosal_uart.h>
#include <lwip/tcpip.h>


#define LED_CRT_PIN 14

static int udp_broadcast_port = 7878;
static int led_status = 0;
// sht31_value_t *sensor_data;
static radar_status_t radar_status = {0};
static char *wifi_mac = NULL;

/**
 * @brief Get the wechat data task object
 *
 * @param arg
 */
void get_wechat_data_task(void *arg)
{
    char *data = pvPortMalloc(256);
    wifi_mac = mqtt_get_wifi_sta_mac();
    wechat_recv_queue = xQueueCreate(2, 256);
    static mqtt_msg_t sMsg = {
        .dup = 0,
        .qos = 0,
        .retained = 0,
    };
    sprintf((char *)sMsg.topic, "%s/devPub", wifi_mac);
    while (1)
    {
        xQueueReceive(wechat_recv_queue, data, portMAX_DELAY);
        // blog_info_hexdump("wechat data", (uint8_t*)data, strlen(data));
        led_status = get_led_status_from_json(data);
        if (led_status >= 0)
        {
            bl_gpio_output_set(LED_CRT_PIN, led_status);
            char *pub_data = cjson_update_data(led_status, radar_status.target_status);
            blog_info("\r\n%s\r\n", pub_data);
            if (tcp_connect_status)
            {
                blog_info("send data to LAN:%s", pub_data);
                xQueueSend(LAN_tcp_queue, pub_data, portMAX_DELAY);
            }
            sprintf((char *)sMsg.payload, "%s", pub_data);
            sMsg.payloadlen = strlen((char *)sMsg.payload);
            mqtt_client_publish(&sMsg);
            vPortFree(pub_data);
        }
    }
    vPortFree(wifi_mac);
    vPortFree(data);
}

void radar_rx_task(void *arg)
{
    uint8_t uart_buffer[256] = {0};
    int ret;
    hosal_uart_dev_t uart_dev = {
        .config = {
            .uart_id = 1,
            .tx_pin = 4, // TXD GPIO
            .rx_pin = 3, // RXD GPIO
            .cts_pin = 255,
            .rts_pin = 255,
            .baud_rate = 256000,
            .data_width = HOSAL_DATA_WIDTH_8BIT,
            .parity = HOSAL_NO_PARITY,
            .stop_bits = HOSAL_STOP_BITS_1,
            .mode = HOSAL_UART_MODE_POLL,
        },
    };

    static mqtt_msg_t sMsg = {
        .dup = 0,
        .qos = 0,
        .retained = 0,
    };
    sprintf((char *)sMsg.topic, "%s/devPub", wifi_mac);

    hosal_uart_init(&uart_dev);
    int bytes_index = 0;

    while (1)
    {

        vTaskDelay(2000 / portTICK_PERIOD_MS);
        /* Uart receive poll */
        ret = hosal_uart_receive(&uart_dev, &uart_buffer[bytes_index], sizeof(uart_buffer) - bytes_index);
        if (ret > 0)
        {
            blog_info("Receive Data %d Bytes", ret);
            bytes_index += ret;
            if (bytes_index >= 23)
            {
                if (radar_data_parse(&radar_status, uart_buffer))
                {
                    char *pub_data = cjson_update_data(led_status, radar_status.target_status);
                    blog_info("\r\n%s\r\n", pub_data);
                    if (tcp_connect_status)
                    {
                        blog_info("send data to LAN:%s", pub_data);
                        xQueueSend(LAN_tcp_queue, pub_data, portMAX_DELAY);
                    }
                    sprintf((char *)sMsg.payload, "%s", pub_data);
                    sMsg.payloadlen = strlen((char *)sMsg.payload);
                    mqtt_client_publish(&sMsg);
                    vPortFree(pub_data);
                };
                bytes_index = 0;
            }
        }
    }
    vTaskDelete(NULL);
}

int main(void)
{

    static EventBits_t vBits;
    wifi_easy_connect();
    bl_gpio_enable_output(LED_CRT_PIN, true, false);
    xTaskCreate(wechat_mqtt_init, "wechat_mqtt_task", 1024 * 2, NULL, 10, NULL);
    xTaskCreate(get_wechat_data_task, "get_wechat_data", 1024 * 2, NULL, 11, NULL);
    xTaskCreate(LAN_communication_init, "LAN_communicatison", 1024, (void *)&udp_broadcast_port, 12, NULL);
    xTaskCreate(radar_rx_task, "radar_rx_task", 1024, NULL, 13, NULL);
    // Data receiving, transmitting and control
    wifi_mac = mqtt_get_wifi_sta_mac();
    static mqtt_msg_t sMsg = {
        .dup = 0,
        .qos = 0,
        .retained = 0,
    };
    sprintf((char *)sMsg.topic, "%s/devPub", wifi_mac);
    while (1)
    {
        vTaskDelay(1000 / portTICK_PERIOD_MS);
        vBits = xEventGroupWaitBits(wifi_event_handle, WIFI_CONNECT_BIT | WIFI_DISCONNECT_BIT, pdTRUE, pdFALSE, 5000 / portTICK_PERIOD_MS);
        if (vBits & WIFI_CONNECT_BIT)
        {
            xMqttConnectWifiNotify(WIFI_CONNECTED);
        }
        else if (vBits & WIFI_DISCONNECT_BIT)
        {
            xMqttConnectWifiNotify(WIFI_DISCONNECTED);
        }
    }
    vPortFree(wifi_mac);
    return 0;
}
