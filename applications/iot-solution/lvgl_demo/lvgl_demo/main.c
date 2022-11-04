
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
#include <hosal_gpio.h>
#include <hosal_i2c.h>
#include <bl602_glb.h>

static void timer_cb(void* arg)
{
    lv_tick_inc(1);
}


void main(void)
{
    static hosal_i2c_dev_t i2c0 = {
        .config = {
            .address_width = HOSAL_I2C_ADDRESS_WIDTH_7BIT,
            .freq = 25000,
            .mode = HOSAL_I2C_MODE_MASTER,
            .scl = 20,
            .sda = 21,
        },
        .port = 0,
    };

    hosal_i2c_init(&i2c0);

    static hosal_gpio_dev_t rst_pin = {
        .config = OUTPUT_PUSH_PULL,
        .port = 22,
    };

    hosal_gpio_init(&rst_pin);
    hosal_gpio_output_set(&rst_pin, 0);

    vTaskDelay(pdMS_TO_TICKS(50));

    hosal_gpio_output_set(&rst_pin, 1);
    vTaskDelay(pdMS_TO_TICKS(100));

    uint8_t value[2] = { 0 };
    // int ret = hosal_i2c_mem_write(&i2c0, 0x38, 0x00, 1, &value, 1, 100);
    int ret = hosal_i2c_master_send(&i2c0, 0x38, value, 2, 100);
    if (ret == 0) {
        value[0] = 0x80;
        value[1] = 12;
        ret = hosal_i2c_master_send(&i2c0, 0x38, value, 2, 100);
        if (ret == 0) {
            value[0] = 0x88;
            ret = hosal_i2c_master_send(&i2c0, 0x38, value, 2, 100);
            if (ret == 0) {
                for (;;) {
                    value[0] = 0x02;
                    ret = hosal_i2c_master_send(&i2c0, 0x38, value, 1, 100);
                    if (ret == 0) {
                        ret = hosal_i2c_master_recv(&i2c0, 0x38, value + 1, 1, 100);
                        if (ret == 0) {
                            blog_info("touch points: %u\r\n", value[1]);
                        }
                        else {
                            blog_error("i2c read timeout\r\n");
                        }
                    }
                    else {
                        blog_error("i2c write timeout\r\n");
                    }
                    vTaskDelay(pdMS_TO_TICKS(1000));
                }
            }
            else {
                blog_error("i2c write timeout\r\n");
            }
        }
        else {
            blog_error("i2c write timeout\r\n");
        }
    }
    else {
        blog_error("i2c write timeout\r\n");
    }

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
    // lv_label_set_text(label1, "Hello lvgl");
    // lv_obj_align(label1, LV_ALIGN_CENTER, 1, 1);

    // while (1) {
    //     vTaskDelay(10/portTICK_PERIOD_MS);
    //     lv_timer_handler();
    // }
}


