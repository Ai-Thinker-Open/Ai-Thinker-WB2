/*
 * @Author: xuhongv@yeah.net xuhongv@yeah.net
 * @Date: 2022-10-03 15:02:19
 * @LastEditors: xuhongv@yeah.net xuhongv@yeah.net
 * @LastEditTime: 2022-10-08 14:55:16
 * @FilePath: \bl_iot_sdk_for_aithinker\applications\get-started\helloworld\helloworld\main.c
 * @Description: Hello world
 */
#include <stdio.h>
#include <string.h>
#include <FreeRTOS.h>
#include <task.h>
#include <blog.h>
#include "bl_sys.h"

void main(void)
{

    printf("Hello World.\r\n");
    for (int i = 10; i >= 0; i--)
    {
        printf("Restarting in %d seconds...\r\n", i);
        vTaskDelay(1000 / portTICK_PERIOD_MS);
    }
    printf("Restarting now.\r\n");

    bl_sys_reset_por();
}
