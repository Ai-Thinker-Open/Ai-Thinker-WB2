#include <stdio.h>

#include <FreeRTOS.h>
#include <task.h>

#include <hosal_i2c.h>
#include <bl_gpio.h>
#include <blog.h>
#include "sensor_sht3x.h"

int main(void)
{

    sensor_sht30_init();
    // for (;;) {

    //     struct sht3x_data data;

    //     uint8_t command[2] = { SHT31_MEAS_HIGHREP >> 8, SHT31_MEAS_HIGHREP & 0xff };
    //     hosal_i2c_master_send(&i2c0, SHT31_DEFAULT_ADDR, command, sizeof command, 100);
    //     hosal_i2c_master_recv(&i2c0, SHT31_DEFAULT_ADDR, (uint8_t*)&data, sizeof data, 100);

    //     char temperature_str[8];
    //     char humidity_str[8];

    //     if (crc8(&data.st_high, 2) == data.st_crc8) {
    //         uint16_t st = data.st_high;
    //         st <<= 8;
    //         st |= data.st_low;

    //         int temp = st;
    //         temp *= 17500;
    //         temp /= 0xffff;
    //         temp = -4500 + temp;

    //         int temperature_integer = temp / 100;

    //         if (temp < 0) {
    //             temp = -temp;
    //         }

    //         unsigned temperature_decimal = temp % 100;

    //         sprintf(temperature_str, "%d.%02u C", temperature_integer, temperature_decimal);
    //     }
    //     else {
    //         sprintf(temperature_str, "%s", "N/A C");
    //     }

    //     if (crc8(&data.srh_high, 2) == data.srh_crc8) {
    //         uint16_t srh = data.srh_high;
    //         srh <<= 8;
    //         srh |= data.srh_low;

    //         unsigned humidity = srh;
    //         humidity *= 10000;
    //         humidity /= 0xFFFF;

    //         unsigned humidity_integer = humidity / 100;

    //         sprintf(humidity_str, "%u %%", humidity_integer);
    //     }
    //     else {
    //         sprintf(humidity_str, "N/A %%");
    //     }

    //     blog_info("temperature: %s\thumidity: %s\r\n", temperature_str, humidity_str);

    //     vTaskDelay(portTICK_RATE_MS * 1000);
    // }

    return 0;
}
