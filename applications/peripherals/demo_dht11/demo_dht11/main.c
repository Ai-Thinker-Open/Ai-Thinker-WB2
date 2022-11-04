#include <stdio.h>

#include <FreeRTOS.h>
#include <task.h>
#include <blog.h>
#include "driver_dht11_basic.h"

int main(void)
{
    dht11_basic_init();

    float temperature;
    uint8_t humidity;
    for (;;) {
        dht11_basic_read(&temperature, &humidity);
        blog_info("%.2f C degree\t%u%%", temperature, humidity);
        vTaskDelay(pdMS_TO_TICKS(500));
    }

    return 0;
}
