#include <stdio.h>

#include <FreeRTOS.h>
#include <task.h>

#include <hosal_timer.h>
#include <bl_gpio.h>
#include <blog.h>

static void timer_cb(void *arg)
{
    static int i = 0;
    if (i % 2) {
        bl_gpio_output_set(3, 0);
    } else {
        bl_gpio_output_set(3, 1);
    }
    i++;
}

int main(void)
{
    bl_gpio_enable_output(3, 1, 0);

    static hosal_timer_dev_t timer0 = {
        .config = {
            .arg = NULL,
            .cb = timer_cb,
            .period = 100, /// 100us
            .reload_mode = TIMER_RELOAD_PERIODIC,
        },
        .port = 0,
    };

    hosal_timer_init(&timer0);

    hosal_timer_start(&timer0);

    return 0;
}
