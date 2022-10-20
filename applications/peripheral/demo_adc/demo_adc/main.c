#include <stdio.h>
#include <string.h>
#include <FreeRTOS.h>
#include <task.h>
#include <hosal_adc.h>
#include <blog.h>

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
#define ADC_CHANNEL 10

void main(void)
{
    static hosal_adc_dev_t adc0 = {
        .cb = NULL,
        .config = {
            .mode = HOSAL_ADC_ONE_SHOT,
            .pin = GPIO_ADC_PIN,
            .sampling_freq = 340,
        },
        .dma_chan = 0,
        .p_arg = NULL,
        .port = 0,
    };

    hosal_adc_init(&adc0);

    hosal_adc_add_channel(&adc0, ADC_CHANNEL);

    for (;;) {
        int ret = hosal_adc_value_get(&adc0, ADC_CHANNEL, 100);

        /// ADC
        ///  |
        /// ┌┴┐
        /// | | 4.7 kΩ
        /// └┬┘
        ///  |
        ///  ├-----IO11
        ///  |
        /// ┌┴┐
        /// | | 1 kΩ
        /// └┬┘
        ///  |
        ///  ┴
        /// GND
        /// Actual Voltage = ADC output * 1000 / (4700 + 1000)  (Unit: mV)
        
        ret = ret * (4700 + 1000) / 1000;

        blog_info("ADC = %ld mV\r\n", ret);

        vTaskDelay(pdMS_TO_TICKS(2000));
    }
}
