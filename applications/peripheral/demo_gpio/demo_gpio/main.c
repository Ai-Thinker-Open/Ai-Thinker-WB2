#include <stdio.h>
#include <string.h>
#include <FreeRTOS.h>
#include <task.h>
#include <bl_gpio.h>

#define GPIO_BUTTON_PIN 8
#define GPIO_LED_PIN 14

void main(void)
{
    bl_gpio_enable_input(GPIO_BUTTON_PIN, 0, 0);
    bl_gpio_enable_output(GPIO_LED_PIN, 0, 0);

    bl_gpio_output_set(GPIO_LED_PIN, 0);

    for (;;) {
        if (bl_gpio_input_get_value(GPIO_BUTTON_PIN)) {
            bl_gpio_output_set(GPIO_LED_PIN, 1);
        }
        else {
            bl_gpio_output_set(GPIO_LED_PIN, 0);
        }

        vTaskDelay(pdMS_TO_TICKS(5));
    }
}
