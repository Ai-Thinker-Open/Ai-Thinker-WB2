/**
 * @file sensor_sht3x.h
 * @author your name (you@domain.com)
 * @brief
 * @version 0.1
 * @date 2022-11-22
 *
 * @copyright Copyright (c) 2022
 *
 */
#ifndef SENSOR_SHT3X_H
#define SENSOR_SHT3X_H


typedef enum {
    SHT31_MPS_0_5_HIGH = 0,
    SHT31_MPS_0_5_MDN,
    SHT31_MPS_0_5_LOW,
    SHT31_MPS_1_HIGH,
    SHT31_MPS_1_MDN,
    SHT31_MPS_1_LOW,
    SHT31_MPS_2_HIGH,
    SHT31_MPS_2_MDN,
    SHT31_MPS_2_LOW,
    SHT31_MPS_4_HIGH,
    SHT31_MPS_4_MDN,
    SHT31_MPS_4_LOW,
    SHT31_MPS_10_HIGH,
    SHT31_MPS_10_MDN,
    SHT31_MPS_10_LOW,
    SHT31_CLOCK_STR_ENABLE,
    SHT31_CLOCK_STR_DISABLE
}sht31_mps_t;

typedef struct {
    double temp_value;
    unsigned char humi_value;
    char* temp_string;
    char* humi_string;
}sht31_value_t;


int sensor_sht30_init(void);
int sensor_sht31_deint(void);
int sensor_sht31_set_mps(sht31_mps_t mps);
sht31_value_t* sensor_sht31_get_value(void);
#endif