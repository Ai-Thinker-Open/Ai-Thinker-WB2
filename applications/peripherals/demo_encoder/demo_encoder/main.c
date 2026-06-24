// #include <FreeRTOS.h>
// #include <bl_gpio.h>
#include <blog.h>
#include <hosal_gpio.h>
#include <stdbool.h>
#include <stdio.h>
#include <string.h>
// #include <task.h>

#define LED_PIN 3
#define TIGGER_PIN 4

// #define TAG "gpio_exti"

static bool led_state = false;
static hosal_gpio_dev_t led;
static hosal_gpio_dev_t tigger;

static int32_t counter = 0; // 计数值
static uint8_t value;

// 初始化灯
static void init_led(void) {
  led.port = LED_PIN;
  led.config = OUTPUT_PUSH_PULL;
  hosal_gpio_init(&led);
  printf("led inited\r\n");
}

static void tigger_irq_callback(void *arg) {
  uint16_t i = 1000;
  while (i--)
    ; // 延时防抖

  hosal_gpio_input_get(&tigger, &value);
  if (value == 1) {
    printf("tigger pressed:%d\r\n", counter++);
    led_state = !led_state;
    hosal_gpio_output_set(&led, led_state);
    if (counter > 1024) { // 重新计数
      counter = 0;
    }
  }
}

// 初始化触发引脚
static void init_pin() {
  tigger.port = TIGGER_PIN;
  tigger.config = INPUT_HIGH_IMPEDANCE;
  hosal_gpio_init(&tigger);

  hosal_gpio_irq_set(&tigger, HOSAL_IRQ_TRIG_POS_PULSE, tigger_irq_callback,
                     NULL);
  printf("tigger inited\r\n");
}

void main(void) {
  init_led();
  init_pin();
  while (1) {
  }
}
