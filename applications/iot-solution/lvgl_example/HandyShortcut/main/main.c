
#include <stdio.h>
#include <string.h>
#include <FreeRTOS.h>
#include <task.h>
#include <blog.h>
#include "bl_sys.h"
#include "lvgl.h"
#include "lv_conf.h"
#include "lv_port_disp.h"
#include <hosal_timer.h>


extern const lv_img_dsc_t Au_img;
static void timer_cb(void* arg)
{
    lv_tick_inc(1);
}

void main(void)
{

    static hosal_timer_dev_t lv_timer_dev = {
        .config = {
            .arg = NULL,
            .cb = timer_cb,
            .period = 1000,
            .reload_mode = TIMER_RELOAD_PERIODIC,
        },
        .port = 0,
    };
    lv_init();

    lv_port_disp_init();

    hosal_timer_init(&lv_timer_dev);
    hosal_timer_start(&lv_timer_dev);

    lv_obj_t* window = lv_win_create(lv_scr_act(), 240);


    LV_IMG_DECLARE(Au_img);
    lv_obj_t* img1 = lv_img_create(window);
    lv_img_set_src(img1, &Au_img);
    lv_obj_align(img1, LV_ALIGN_OUT_LEFT_TOP, 10, 10);
    lv_obj_set_size(img1, 91, 89);


    while (1) {
        vTaskDelay(10/portTICK_PERIOD_MS);
        lv_timer_handler();
    }
}


