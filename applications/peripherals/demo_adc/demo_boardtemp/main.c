#include <FreeRTOS.h>
#include <blog.h>
#include <hosal_adc.h>
#include <stdio.h>
#include <string.h>
#include <task.h>

/**********   BL602  ************
 *    channel0   ----->     gpio12
 *    channel1   ----->     gpio4
 *    channel2   ----->     gpio14
 *    channel3   ----->     gpio13
 *    channel4   ----->     gpio5
 *    channel5   ----->     gpio6
 *    channel7   ----->     gpio9
 *    channel9   ----->     gpio10
 *    channel10  ----->     gpio11
 *    channel11  ----->     gpio15
 */
#define GPIO_ADC_PIN 11

#define ADC_TEMPCHANNEL 14

void main(void) {

  static hosal_adc_dev_t adc0 = {
      .cb = NULL,
      .config =
          {
              .mode = HOSAL_ADC_ONE_SHOT,
              .pin = 12,
              .sampling_freq = 340,
          },
      .dma_chan = 0,
      .p_arg = NULL,
      .port = 0,
  };

  hosal_adc_init(&adc0);
  hosal_adc_add_channel(&adc0, ADC_TEMPCHANNEL);

  for (;;) {

    int temp = hosal_adc_tsen_value_get(&adc0); // 获取板子温度

    blog_info("BOARD temp = %d C\r\n", temp);

    vTaskDelay(pdMS_TO_TICKS(5000));
  }
}
