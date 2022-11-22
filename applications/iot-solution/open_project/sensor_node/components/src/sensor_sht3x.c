/**
 * @file sensor_sht3x.c
 * @author your name (you@domain.com)
 * @brief
 * @version 0.1
 * @date 2022-11-22
 *
 * @copyright Copyright (c) 2022
 *
 */
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <blog.h>
#include <hosal_i2c.h>
#include "sensor_sht3x.h"

#define SHT31_DEFAULT_ADDR 0x0044
#define SHT31_MEAS_HIGHREP 0x2400

#define SHT31_I2C_SDA 3
#define SHT31_I2C_SCL 12

#define SHT31_I2C_FREQ_100K 100000
#define SHT31_I2C_FREQ_150K 150000
#define SHT31_I2C_FREQ_200K 200000
#define SHT31_I2C_FREQ_300K 300000
#define SHT31_I2C_FREQ_400K 400000

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

static sht31_mps_t sht31_mps_buf = SHT31_MPS_0_5_HIGH;
#pragma pack()

static hosal_i2c_dev_t i2c0 = {
        .config = {
            .address_width = HOSAL_I2C_ADDRESS_WIDTH_7BIT,
            .freq = SHT31_I2C_FREQ_400K,
            .mode = HOSAL_I2C_MODE_MASTER,
            .scl = SHT31_I2C_SCL,
            .sda = SHT31_I2C_SDA,
        },
        .port = 0,
};

static sht31_value_t sht31_value;

/**
 * @brief crc8
 *
 * @param data
 * @param len
 * @return uint8_t
 */
static uint8_t crc8(uint8_t* data, int len)
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

static int sensor_sht31_soft_reset(void)
{
    uint8_t cmd[2] = { 0x30,0xa2 };
    return hosal_i2c_master_send(&i2c0, SHT31_DEFAULT_ADDR, cmd, 2, 1000);;
}
/**
 * @brief
 *
 * @param mps
 * @return int
 */
int sensor_sht31_set_mps(sht31_mps_t mps)
{
    uint8_t cmd[2] = { 0 };
    sht31_mps_buf = mps;

    switch (mps) {
        case SHT31_MPS_0_5_HIGH:
            cmd[0] = 0x20;
            cmd[1] = 0x32;
            break;
        case SHT31_MPS_0_5_MDN:

            cmd[0] = 0x20;
            cmd[1] = 0x24;
            break;
        case SHT31_MPS_0_5_LOW:
            cmd[0] = 0x20;
            cmd[1] = 0x2F;
            break;
        case SHT31_MPS_1_HIGH:
            cmd[0] = 0x21;
            cmd[1] = 0x30;
            break;
        case SHT31_MPS_1_MDN:
            cmd[0] = 0x21;
            cmd[1] = 0x26;
            break;
        case SHT31_MPS_1_LOW:
            cmd[0] = 0x21;
            cmd[1] = 0x2D;
            break;
        case SHT31_MPS_2_HIGH:
            cmd[0] = 0x22;
            cmd[1] = 0x36;
            break;
        case SHT31_MPS_2_MDN:
            cmd[0] = 0x22;
            cmd[1] = 0x20;
            break;
        case SHT31_MPS_2_LOW:
            cmd[0] = 0x22;
            cmd[1] = 0x2B;
            break;
        case SHT31_MPS_4_HIGH:
            cmd[0] = 0x23;
            cmd[1] = 0x34;
            break;
        case SHT31_MPS_4_MDN:
            cmd[0] = 0x23;
            cmd[1] = 0x22;
            break;
        case SHT31_MPS_4_LOW:
            cmd[0] = 0x23;
            cmd[1] = 0x29;
            break;
        case SHT31_MPS_10_HIGH:
            cmd[0] = 0x27;
            cmd[1] = 0x37;
            break;
        case SHT31_MPS_10_MDN:
            cmd[0] = 0x27;
            cmd[1] = 0x21;
            break;
        case SHT31_MPS_10_LOW:
            cmd[0] = 0x27;
            cmd[1] = 0x2A;
            break;
        default:
            return 0;
            break;
    }
    return hosal_i2c_master_send(&i2c0, SHT31_DEFAULT_ADDR, cmd, 2, 1000);;
}
/**
 * @brief sensor_sth31_get_mps
 *
 * @return sht31_mps_t
 */
sht31_mps_t sensor_sth31_get_mps(void)
{
    return sht31_mps_buf;
}
/**
 * @brief  sensor_sht30_init
 *
 * @return int
 */
int sensor_sht30_init(void)
{
    uint8_t cmd[2] = { 0xe0,0x00 };
    sht31_value.humi_string = pvPortMalloc(8);
    sht31_value.temp_string = pvPortMalloc(8);
    sht31_value.humi_value = 0;
    sht31_value.temp_value = 0;
    hosal_i2c_init(&i2c0);

    sensor_sht31_set_mps(SHT31_MPS_2_HIGH);
    sensor_sht31_soft_reset();
    vTaskDelay(500/portTICK_PERIOD_MS);
    if (sensor_sth31_get_mps()!=SHT31_CLOCK_STR_ENABLE||sensor_sth31_get_mps()!=SHT31_CLOCK_STR_DISABLE)
        return   hosal_i2c_master_send(&i2c0, SHT31_DEFAULT_ADDR, cmd, 2, 1000);
    else return 0;

}
/**
 * @brief sensor_sht31_deint
 *
 * @return int
 */
int sensor_sht31_deint(void)
{
    vPortFree(sht31_value.humi_string);
    vPortFree(sht31_value.temp_string);
    return  hosal_i2c_finalize(&i2c0);
}
/**
 * @brief sensor_sht31_get_value
 *
 * @return sht31_value_t*
 */
sht31_value_t* sensor_sht31_get_value(void)
{
    uint8_t cmd[2] = { 0 };
    struct sht3x_data sht31_data;
    if (sensor_sth31_get_mps()==SHT31_CLOCK_STR_ENABLE) {
        cmd[0] = 0x2C;cmd[1] = 0x06;
        hosal_i2c_master_send(&i2c0, SHT31_DEFAULT_ADDR, cmd, 2, 1000);
    }
    else if (sensor_sth31_get_mps()!=SHT31_CLOCK_STR_DISABLE) {
        cmd[0] = 0x24;cmd[1] = 0x00;
        hosal_i2c_master_send(&i2c0, SHT31_DEFAULT_ADDR, cmd, 2, 1000);
    }

    hosal_i2c_master_recv(&i2c0, SHT31_DEFAULT_ADDR, (uint8_t*)&sht31_data, sizeof sht31_data, 100);

    if (crc8(&sht31_data.st_high, 2) == sht31_data.st_crc8) {
        uint16_t st = sht31_data.st_high;
        st <<= 8;
        st |= sht31_data.st_low;
        sht31_value.temp_value = (double)(175.0*(st/65535.0))-45.0;

        sprintf(sht31_value.temp_string, "%.2fC", sht31_value.temp_value);
    }
    else {
        sprintf(sht31_value.temp_string, "%s", "N/A C");
    }

    if (crc8(&sht31_data.srh_high, 2) == sht31_data.srh_crc8) {
        uint16_t srh = sht31_data.srh_high;
        srh <<= 8;
        srh |= sht31_data.srh_low;
        sht31_value.humi_value = 100*((double)srh/65535);

        sprintf(sht31_value.humi_string, "%d", sht31_value.humi_value);
    }
    else {
        sprintf(sht31_value.humi_string, "N/A %%");
    }

    return &sht31_value;
}