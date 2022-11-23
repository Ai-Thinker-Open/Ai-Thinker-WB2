#include <stdio.h>

#include <FreeRTOS.h>
#include <task.h>

#include <hosal_i2c.h>
#include <bl_gpio.h>
#include <blog.h>
#include "sensor_sht3x.h"
#include "easy_connect_wifi.h"
#include "wechat_mqtt.h"

int main(void)
{
    sht31_value_t* sensor_data;
    wifi_easy_connect();
    sensor_sht30_init();

    xTaskCreate(wechat_mqtt_init, "wechat_mqtt_task", 1024*2, NULL, 10, NULL);
    while (1) {
        vTaskDelay(1000/portTICK_PERIOD_MS);
        sensor_data = sensor_sht31_get_value();
        blog_info("sht31 temp:%.2f °C humi:%d %%", sensor_data->temp_value, sensor_data->humi_value);
    }
    sensor_sht31_deint();
    return 0;
}
