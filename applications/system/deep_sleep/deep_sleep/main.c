#include <stdio.h>
#include <string.h>
#include <FreeRTOS.h>
#include <task.h>
#include <blog.h>
#include "bl_sys.h"
#include <stdint.h>
#include <string.h>
#include "bl_sys.h"
#include "FreeRTOS.h"
#include "task.h"
#include "hosal_rng.h"
#include "hal_hbn.h"
#include <bl_gpio.h>

#define ENTER_SLEEP_PIN 4
#define WEAKUP_PIN 7
#define test (*((volatile uint8_t *)0x40010000)) // Deep sleep memory (Retention RAM),  size : 4KB

void main(void)
{
    uint32_t sleep_time_ms = 10000; // deep sleep time, If you do not need to periodically wake up, set sleep_time_ms=0
    uint8_t weakup_pin;
    bl_gpio_enable_input(ENTER_SLEEP_PIN, 0, 0);
    printf("test:%d\r\n", test);
    vTaskDelay(pdMS_TO_TICKS(100));
    weakup_pin = WEAKUP_PIN;
    for (;;)
    {
        if (!bl_gpio_input_get_value(ENTER_SLEEP_PIN))
        {
            printf("enter sleep\r\n");
            test++;
            vTaskDelay(pdMS_TO_TICKS(100));
            hal_hbn_init(&weakup_pin, 1);
            hal_hbn_enter((uint32_t)sleep_time_ms);
        }
        vTaskDelay(pdMS_TO_TICKS(5));
    }
}