
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

#define LVGL_CHECKBOX_EXAMPLE 1

static lv_style_t style_radio;
static lv_style_t style_radio_chk;
static uint32_t active_index_1 = 0;
static uint32_t active_index_2 = 0;

static void timer_cb(void* arg)
{
    lv_tick_inc(1);
}

static void event_handler(lv_event_t* e)
{
#if (LVGL_CHECKBOX_EXAMPLE==1)  
    lv_event_code_t code = lv_event_get_code(e);
    lv_obj_t* obj = lv_event_get_target(e);
    if (code == LV_EVENT_VALUE_CHANGED) {
        const char* txt = lv_checkbox_get_text(obj);
        const char* state = lv_obj_get_state(obj) & LV_STATE_CHECKED ? "Checked" : "Unchecked";
        blog_info("%s: %s", txt, state);
    }
#elif (LVGL_CHECKBOX_EXAMPLE==2)
    uint32_t* active_id = lv_event_get_user_data(e);
    lv_obj_t* cont = lv_event_get_current_target(e);
    lv_obj_t* act_cb = lv_event_get_target(e);
    lv_obj_t* old_cb = lv_obj_get_child(cont, *active_id);

    /*Do nothing if the container was clicked*/
    if (act_cb == cont) return;

    lv_obj_clear_state(old_cb, LV_STATE_CHECKED);   /*Uncheck the previous radio button*/
    lv_obj_add_state(act_cb, LV_STATE_CHECKED);     /*Uncheck the current radio button*/

    *active_id = lv_obj_get_index(act_cb);

    blog_info("Selected radio buttons: %d, %d", (int)active_index_1, (int)active_index_2);

#endif
}

void lv_example_checkbox_1(void)
{
    lv_obj_set_flex_flow(lv_scr_act(), LV_FLEX_FLOW_COLUMN);
    lv_obj_set_flex_align(lv_scr_act(), LV_FLEX_ALIGN_CENTER, LV_FLEX_ALIGN_START, LV_FLEX_ALIGN_CENTER);

    lv_obj_t* cb;
    cb = lv_checkbox_create(lv_scr_act());
    lv_checkbox_set_text(cb, "Apple");
    lv_obj_add_event_cb(cb, event_handler, LV_EVENT_ALL, NULL);

    cb = lv_checkbox_create(lv_scr_act());
    lv_checkbox_set_text(cb, "Banana");
    lv_obj_add_state(cb, LV_STATE_CHECKED);
    lv_obj_add_event_cb(cb, event_handler, LV_EVENT_ALL, NULL);

    cb = lv_checkbox_create(lv_scr_act());
    lv_checkbox_set_text(cb, "Lemon");
    lv_obj_add_state(cb, LV_STATE_DISABLED);
    lv_obj_add_event_cb(cb, event_handler, LV_EVENT_ALL, NULL);

    cb = lv_checkbox_create(lv_scr_act());
    lv_obj_add_state(cb, LV_STATE_CHECKED | LV_STATE_DISABLED);
    lv_checkbox_set_text(cb, "Melon\nand a new line");
    lv_obj_add_event_cb(cb, event_handler, LV_EVENT_ALL, NULL);

    lv_obj_update_layout(cb);
}
/*******************    example2          ********************/

static void radiobutton_create(lv_obj_t* parent, const char* txt)
{
    lv_obj_t* obj = lv_checkbox_create(parent);
    lv_checkbox_set_text(obj, txt);
    lv_obj_add_flag(obj, LV_OBJ_FLAG_EVENT_BUBBLE);
    lv_obj_add_style(obj, &style_radio, LV_PART_INDICATOR);
    lv_obj_add_style(obj, &style_radio_chk, LV_PART_INDICATOR | LV_STATE_CHECKED);
}

/**
 * Checkboxes as radio buttons
 */
void lv_example_checkbox_2(void)
{
    /* The idea is to enable `LV_OBJ_FLAG_EVENT_BUBBLE` on checkboxes and process the
     * `LV_EVENT_CLICKED` on the container.
     * A variable is passed as event user data where the index of the active
     * radiobutton is saved */


    lv_style_init(&style_radio);
    lv_style_set_radius(&style_radio, LV_RADIUS_CIRCLE);

    lv_style_init(&style_radio_chk);
    lv_style_set_bg_img_src(&style_radio_chk, NULL);

    uint32_t i;
    char buf[32];

    lv_obj_t* cont1 = lv_obj_create(lv_scr_act());
    lv_obj_set_flex_flow(cont1, LV_FLEX_FLOW_COLUMN);
    lv_obj_set_size(cont1, lv_pct(40), lv_pct(80));
    lv_obj_add_event_cb(cont1, event_handler, LV_EVENT_CLICKED, &active_index_1);

    for (i = 0;i < 5;i++) {
        lv_snprintf(buf, sizeof(buf), "A %d", (int)i + 1);
        radiobutton_create(cont1, buf);

    }
    /*Make the first checkbox checked*/
    lv_obj_add_state(lv_obj_get_child(cont1, 0), LV_STATE_CHECKED);

    lv_obj_t* cont2 = lv_obj_create(lv_scr_act());
    lv_obj_set_flex_flow(cont2, LV_FLEX_FLOW_COLUMN);
    lv_obj_set_size(cont2, lv_pct(40), lv_pct(80));
    lv_obj_set_x(cont2, lv_pct(50));
    lv_obj_add_event_cb(cont2, event_handler, LV_EVENT_CLICKED, &active_index_2);

    for (i = 0;i < 3;i++) {
        lv_snprintf(buf, sizeof(buf), "B %d", (int)i + 1);
        radiobutton_create(cont2, buf);
    }

    /*Make the first checkbox checked*/
    lv_obj_add_state(lv_obj_get_child(cont2, 0), LV_STATE_CHECKED);
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

#if (LVGL_CHECKBOX_EXAMPLE==1)
    lv_example_checkbox_1();
#elif (LVGL_CHECKBOX_EXAMPLE==2)
    lv_example_checkbox_2();
#endif

    while (1) {
        vTaskDelay(10/portTICK_PERIOD_MS);
        lv_timer_handler();
    }
}


