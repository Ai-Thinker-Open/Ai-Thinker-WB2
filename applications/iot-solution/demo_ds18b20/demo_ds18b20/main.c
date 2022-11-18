#include <stdio.h>

#include <FreeRTOS.h>
#include <task.h>
#include <blog.h>
#include "driver_ds18b20_basic.h"

int main(void)
{
    ds18b20_basic_init();

    float temperature;
    for (;;) {
        ds18b20_basic_read(&temperature);
        blog_info("%.2f C degree\r\n", temperature);
        vTaskDelay(pdMS_TO_TICKS(500));
    }

    return 0;
}
