
#include <stdio.h>
#include <string.h>
#include <FreeRTOS.h>
#include <task.h>
#include <bl_gpio.h>

#define GPIO_LED_PIN 3

void blink_test(void *param)
{
    uint8_t value = 1;
    while (1)
    {
        bl_gpio_enable_output(GPIO_LED_PIN, 0, 0);
        printf("Turning the LED %s! \r\n", value == 1 ? "ON" : "OFF");
        bl_gpio_output_set(GPIO_LED_PIN, value);
        value = !value;
        vTaskDelay(1000);
    }
}

void main(void)
{
    xTaskCreate(blink_test, "blink", 1024, NULL, 15, NULL);
}
