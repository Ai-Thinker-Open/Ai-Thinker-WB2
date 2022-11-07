
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
#include "st7796s_drive.h"
static void timer_cb(void* arg)
{
    // lv_tick_inc(1);
}


void main(void)
{

    // static hosal_timer_dev_t lv_timer_dev = {
    //     .config = {
    //         .arg = NULL,
    //         .cb = timer_cb,
    //         .period = 1000,
    //         .reload_mode = TIMER_RELOAD_PERIODIC,
    //     },
    //     .port = 0,
    // };
    // lv_init();

    // lv_port_disp_init();

    // hosal_timer_init(&lv_timer_dev);
    // hosal_timer_start(&lv_timer_dev);

    // lv_obj_t* label1 = lv_label_create(lv_scr_act());

    // lv_label_set_recolor(label1, 1);
    // lv_label_set_text(label1, "#001f Hello lvgl#");
    // lv_obj_align(label1, LV_ALIGN_CENTER, 1, 1);
    st7796s_drive_init();
    st7796_drive_set_pixels(10, 10, 0x0034);
    while (1) {
        vTaskDelay(10/portTICK_PERIOD_MS);
        // lv_timer_handler();
    }
}


