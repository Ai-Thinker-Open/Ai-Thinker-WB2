#include <stdio.h>

#include <FreeRTOS.h>
#include <task.h>
#include <blog.h>
#include "driver_mpu6050.h"
#include "driver_mpu6050_basic.h"

int main(void)
{
    mpu6050_basic_init(MPU6050_ADDRESS_AD0_LOW);
    
    for (;;) {
        float accel[3];
        float gyro[3];
        mpu6050_basic_read(accel, gyro);
        blog_info("accel: %.2f %.2f %.2f\tgyro: %.2f %.2f %.2f\r\n", accel[0], accel[1], accel[2], gyro[0], gyro[1], gyro[2]);
        vTaskDelay(pdMS_TO_TICKS(1000));
    }

    return 0;
}
