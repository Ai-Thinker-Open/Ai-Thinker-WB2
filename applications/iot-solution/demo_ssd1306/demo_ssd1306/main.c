#include <stdio.h>

#include <FreeRTOS.h>
#include <task.h>

#include <hosal_i2c.h>
#include <bl_gpio.h>
#include <blog.h>

#include "ssd1306_drive.h"



int main(void)
{

    oled_i2c_driver_init(12, 3);

    for (;;) {
        
        oled_time_output(2025, 4, 2, 12, 34, 56);
        
        vTaskDelay(portTICK_RATE_MS * 1000);
    }

    return 0;
}
