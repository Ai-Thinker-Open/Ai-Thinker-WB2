#include <stdio.h>

#include <FreeRTOS.h>
#include <task.h>

#include <hosal_i2c.h>
#include <bl_gpio.h>
#include <blog.h>

#define BH1750_DEFAULT_ADDR BH1750_ADDR_L
#define BH1750_ADDR_H 0x5c
#define BH1750_ADDR_L 0x23
#define BH1750_POWER_DOWN 0x00
#define BH1750_POWER_ON 0x01
#define BH1750_RESET 0x07
#define BH1750_CONTINUOUS_H_MODE  0x10
#define BH1750_CONTINUOUS_H_MODE2  0x11
#define BH1750_CONTINUOUS_L_MODE  0x13
#define BH1750_ONETIME_H_MODE  0x20
#define BH1750_ONETIME_H_MODE2  0x21
#define BH1750_ONETIME_L_MODE  0x23

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
        
        uint8_t buffer[2];
        uint8_t cmd = BH1750_ONETIME_H_MODE;
        hosal_i2c_master_send(&i2c0, BH1750_DEFAULT_ADDR, &cmd, 1, HOSAL_WAIT_FOREVER);
        int ret = hosal_i2c_master_recv(&i2c0, BH1750_DEFAULT_ADDR, buffer, 2, 100);
        if (ret) {
            cmd = BH1750_POWER_ON;
            hosal_i2c_master_send(&i2c0, BH1750_DEFAULT_ADDR, &cmd, 1, 100);
            blog_error("i2c timeout\r\n");
        }
        else {
            uint16_t result = buffer[0];
            result <<= 8;
            result |= buffer[1];

            float luxlevel = result;
            result /= 1.2f;

            blog_info("lux level: %.02f\r\n", luxlevel);
        }

        vTaskDelay(portTICK_RATE_MS * 1000);
    }

    return 0;
}
