
#include <stdio.h>
#include <string.h>
#include <FreeRTOS.h>
#include <task.h>
#include <blog.h>
#include "bl_sys.h"
#include "bl_rtc.h"

void main(void)
{
    uint32_t cnt;
    bl_rtc_init();
    while(1)
    {
        vTaskDelay(1000 / portTICK_PERIOD_MS);
        cnt=bl_rtc_get_timestamp_ms();
        printf("cnt:%d\r\n",cnt);
    }
}
