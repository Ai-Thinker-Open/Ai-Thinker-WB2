#include <stdio.h>

#include <FreeRTOS.h>
#include <task.h>

#include <hosal_i2c.h>
#include <bl_gpio.h>
#include <blog.h>

#define SHT31_DEFAULT_ADDR 0x0044
#define SHT31_MEAS_HIGHREP 0x2400

#pragma pack(1)
struct sht3x_data
{
    uint8_t st_high;
    uint8_t st_low;
    uint8_t st_crc8;
    uint8_t srh_high;
    uint8_t srh_low;
    uint8_t srh_crc8;
};
#pragma pack()

static uint8_t crc8(uint8_t *data, int len)
{
    const uint8_t POLYNOMIAL = 0x31;
    uint8_t crc = 0xFF;
    for (int j = len; j; --j)
    {
        crc ^= *data++;
        for (int i = 8; i; --i)
        {
            crc = (crc & 0x80)
                      ? (crc << 1) ^ POLYNOMIAL
                      : (crc << 1);
        }
    }
    return crc;
}

int main(void)
{
    static hosal_i2c_dev_t i2c0 = {
        .config = {
            .address_width = HOSAL_I2C_ADDRESS_WIDTH_7BIT,
            .freq = 100000,
            .mode = HOSAL_I2C_MODE_MASTER,
            .scl = 12,
            .sda = 3,
        },
        .port = 0,
    };

    hosal_i2c_init(&i2c0);

    for (;;) {
        
        struct sht3x_data data;

        uint8_t command[2] = { SHT31_MEAS_HIGHREP >> 8, SHT31_MEAS_HIGHREP & 0xff };
        hosal_i2c_master_send(&i2c0, SHT31_DEFAULT_ADDR, command, sizeof command, 100);
        hosal_i2c_master_recv(&i2c0, SHT31_DEFAULT_ADDR, (uint8_t*)&data, sizeof data, 100);

        char temperature_str[8];
        char humidity_str[8];

        if (crc8(&data.st_high, 2) == data.st_crc8) {
            uint16_t st = data.st_high;
            st <<= 8;
            st |= data.st_low;

            int temp = st;
            temp *= 17500;
            temp /= 0xffff;
            temp = -4500 + temp;

            int temperature_integer = temp / 100;
            
            if (temp < 0) {
                temp = -temp;
            }

            unsigned temperature_decimal = temp % 100;

            sprintf(temperature_str, "%d.%02u C", temperature_integer, temperature_decimal);
        }
        else {
            sprintf(temperature_str, "%s", "N/A C");
        }
        
        if (crc8(&data.srh_high, 2) == data.srh_crc8) {
            uint16_t srh = data.srh_high;
            srh <<= 8;
            srh |= data.srh_low;

            unsigned humidity = srh;
            humidity *= 10000;
            humidity /= 0xFFFF;

            unsigned humidity_integer = humidity / 100;

            sprintf(humidity_str, "%u %%", humidity_integer);
        }
        else {
            sprintf(humidity_str, "N/A %%");
        }

        blog_info("temperature: %s\thumidity: %s\r\n", temperature_str, humidity_str);

        vTaskDelay(portTICK_RATE_MS * 1000);
    }

    return 0;
}
