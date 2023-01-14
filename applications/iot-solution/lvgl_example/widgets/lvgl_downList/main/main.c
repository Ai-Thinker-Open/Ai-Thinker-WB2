
#include <stdio.h>
#include <string.h>
#include <FreeRTOS.h>
#include <task.h>
#include <blog.h>
#include "bl_sys.h"
#include "lvgl.h"
#include "lv_conf.h"
#include "lv_port_disp.h"
#include "lv_port_indev.h"

#include <hosal_timer.h>

#define LVGL_DROPDOWNLIST_EXAMPLE 3

static void timer_cb(void* arg)
{
    lv_tick_inc(1);
}

static void event_handler(lv_event_t* e)
{
#if (LVGL_DROPDOWNLIST_EXAMPLE ==1)
    lv_event_code_t code = lv_event_get_code(e);
    lv_obj_t* obj = lv_event_get_target(e);
    if (code == LV_EVENT_VALUE_CHANGED) {
        char buf[32];
        lv_dropdown_get_selected_str(obj, buf, sizeof(buf));
        blog_info("Option: %s", buf);
    }
#elif (LVGL_DROPDOWNLIST_EXAMPLE ==3)
    lv_obj_t* dropdown = lv_event_get_target(e);
    char buf[64];
    lv_dropdown_get_selected_str(dropdown, buf, sizeof(buf));
    blog_info("'%s' is selected", buf);
#endif
}

void lv_example_dropdown_1(void)
{

    /*Create a normal drop down list*/
    lv_obj_t* dd = lv_dropdown_create(lv_scr_act());
    lv_dropdown_set_options(dd, "Apple\n"
                                "Banana\n"
                                "Orange\n"
                                "Cherry\n"
                                "Grape\n"
                                "Raspberry\n"
                                "Melon\n"
                                "Orange\n"
                                "Lemon\n"
                                "Nuts");

    lv_obj_align(dd, LV_ALIGN_TOP_MID, 0, 20);
    lv_obj_add_event_cb(dd, event_handler, LV_EVENT_ALL, NULL);
}


void lv_example_dropdown_2(void)
{
    static const char* opts = "Apple\n"
        "Banana\n"
        "Orange\n"
        "Melon";

    lv_obj_t* dd;

    static lv_style_t R_L_dropdown_style;
    lv_style_init(&R_L_dropdown_style);
    lv_style_set_width(&R_L_dropdown_style, 100);

    dd = lv_dropdown_create(lv_scr_act());
    lv_dropdown_set_options_static(dd, opts);

    lv_obj_align(dd, LV_ALIGN_TOP_MID, 0, 10);

    dd = lv_dropdown_create(lv_scr_act());
    lv_dropdown_set_options_static(dd, opts);
    lv_dropdown_set_dir(dd, LV_DIR_BOTTOM);
    lv_dropdown_set_symbol(dd, LV_SYMBOL_UP);
    lv_obj_align(dd, LV_ALIGN_BOTTOM_MID, 0, -10);

    dd = lv_dropdown_create(lv_scr_act());
    lv_dropdown_set_options_static(dd, opts);
    lv_dropdown_set_dir(dd, LV_DIR_RIGHT);
    lv_dropdown_set_symbol(dd, LV_SYMBOL_RIGHT);
    lv_obj_add_style(dd, &R_L_dropdown_style, LV_PART_MAIN);

    lv_obj_align(dd, LV_ALIGN_LEFT_MID, 10, 0);

    dd = lv_dropdown_create(lv_scr_act());
    lv_dropdown_set_options_static(dd, opts);
    lv_dropdown_set_dir(dd, LV_DIR_LEFT);
    lv_dropdown_set_symbol(dd, LV_SYMBOL_LEFT);
    lv_obj_add_style(dd, &R_L_dropdown_style, LV_PART_MAIN);
    lv_obj_align(dd, LV_ALIGN_RIGHT_MID, -10, 0);
}

void lv_example_dropdown_3(void)
{
    /*Create a drop down list*/
    lv_obj_t* dropdown = lv_dropdown_create(lv_scr_act());
    lv_obj_align(dropdown, LV_ALIGN_TOP_LEFT, 10, 10);
    lv_dropdown_set_options(dropdown, "New project\n"
                                      "New file\n"
                                      "Save\n"
                                      "Save as ...\n"
                                      "Open project\n"
                                      "Recent projects\n"
                                      "Preferences\n"
                                      "Exit");

    /*Set a fixed text to display on the button of the drop-down list*/
    lv_dropdown_set_text(dropdown, "Menu");

    /*Use a custom image as down icon and flip it when the list is opened*/
    LV_IMG_DECLARE(img_caret_down);
    lv_dropdown_set_symbol(dropdown, &img_caret_down);
    lv_obj_set_style_transform_angle(dropdown, 1800, LV_PART_INDICATOR | LV_STATE_CHECKED);

    /*In a menu we don't need to show the last clicked item*/
    lv_dropdown_set_selected_highlight(dropdown, false);

    lv_obj_add_event_cb(dropdown, event_handler, LV_EVENT_VALUE_CHANGED, NULL);
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
    lv_port_indev_init();

    hosal_timer_init(&lv_timer_dev);
    hosal_timer_start(&lv_timer_dev);

#if (LVGL_DROPDOWNLIST_EXAMPLE==1)
    lv_example_dropdown_1();
#elif (LVGL_DROPDOWNLIST_EXAMPLE==2)
    lv_example_dropdown_2();
#elif (LVGL_DROPDOWNLIST_EXAMPLE==3)
    lv_example_dropdown_3();
#endif

    while (1) {
        vTaskDelay(10/portTICK_PERIOD_MS);
        lv_timer_handler();
    }
}


