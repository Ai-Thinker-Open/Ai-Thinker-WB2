#include <stdio.h>

#include <FreeRTOS.h>
#include <task.h>

#include <hosal_i2c.h>
#include <bl_gpio.h>
#include <blog.h>
#include "sensor_sht3x.h"

int main(void)
{
    sht31_value_t* sensor_data;
    sensor_sht30_init();
    while (1) {
        sensor_data = sensor_sht31_get_value();
        blog_info("sht31 temp:%.2f humi:%d", sensor_data->temp_value, sensor_data->humi_value);
        vTaskDelay(1000/portTICK_PERIOD_MS);
    }
    sensor_sht31_deint();
    return 0;
}
