/*
* Copyright © 2020 Wolfgang Christl
* Permission is hereby granted, free of charge, to any person obtaining a copy of this
* software and associated documentation files (the “Software”), to deal in the Software
* without restriction, including without limitation the rights to use, copy, modify, merge,
* publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons
* to whom the Software is furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in all copies or
* substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
* INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
* PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE
* FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
* ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*/

#include <lvgl.h>
#include "ft6x36.h"
#include <blog.h>
#include <hosal_i2c.h>

#define FT6X36_TOUCH_QUEUE_ELEMENTS 1

static ft6x36_status_t ft6x36_status;
static uint8_t current_dev_addr;       // set during init
static ft6x36_touch_t touch_inputs = { -1, -1, LV_INDEV_STATE_REL };    // -1 coordinates to designate it was never touched

static hosal_i2c_dev_t i2c0 = {
    .config = {
        .address_width = HOSAL_I2C_ADDRESS_WIDTH_7BIT,
        .freq = 1000000,
        .mode = HOSAL_I2C_MODE_MASTER,
        .scl = 12,
        .sda = 3,
    },
    .port = 0,
};

QueueHandle_t ft6x36_touch_queue_handle;

static int ft6x06_i2c_read8(uint8_t slave_addr, uint8_t register_addr, uint8_t *data_buf) {
    return hosal_i2c_mem_read(&i2c0, slave_addr, register_addr, 1, data_buf, 1, 100);
}

/**
  * @brief  Read the FT6x36 gesture ID. Initialize first!
  * @param  dev_addr: I2C FT6x36 Slave address.
  * @retval The gesture ID or 0x00 in case of failure
  */
uint8_t ft6x36_get_gesture_id() {
    if (!ft6x36_status.inited) {
        blog_error("Init first!");
        return 0x00;
    }
    uint8_t data_buf;
    int ret;
    if ((ret = ft6x06_i2c_read8(current_dev_addr, FT6X36_GEST_ID_REG, &data_buf) != 0))
        blog_error("Error reading from device: %d", ret);
    return data_buf;
}

/**
  * @brief  Initialize for FT6x36 communication via I2C
  * @param  dev_addr: Device address on communication Bus (I2C slave address of FT6X36).
  * @retval None
  */
void ft6x06_init(uint16_t dev_addr) {

    hosal_i2c_init(&i2c0);

    ft6x36_status.inited = true;
    current_dev_addr = dev_addr;
    uint8_t data_buf;
    int ret;
    blog_info("Found touch panel controller");
    if ((ret = ft6x06_i2c_read8(dev_addr, FT6X36_PANEL_ID_REG, &data_buf) != 0))
        blog_error("Error reading from device: %d", ret);    // Only show error the first time
    blog_info("\tDevice ID: 0x%02x", data_buf);

    ft6x06_i2c_read8(dev_addr, FT6X36_CHIPSELECT_REG, &data_buf);
    blog_info("\tChip ID: 0x%02x", data_buf);

    ft6x06_i2c_read8(dev_addr, FT6X36_DEV_MODE_REG, &data_buf);
    blog_info("\tDevice mode: 0x%02x", data_buf);

    ft6x06_i2c_read8(dev_addr, FT6X36_FIRMWARE_ID_REG, &data_buf);
    blog_info("\tFirmware ID: 0x%02x", data_buf);

    ft6x06_i2c_read8(dev_addr, FT6X36_RELEASECODE_REG, &data_buf);
    blog_info("\tRelease code: 0x%02x", data_buf);
    
    ft6x36_touch_queue_handle = xQueueCreate( FT6X36_TOUCH_QUEUE_ELEMENTS, sizeof( ft6x36_touch_t ) );
    if( ft6x36_touch_queue_handle == NULL )
    {
        blog_error( "\tError creating touch input FreeRTOS queue" );
        return;
    }
    xQueueSend( ft6x36_touch_queue_handle, &touch_inputs, 0 );
}

/**
  * @brief  Get the touch screen X and Y positions values. Ignores multi touch
  * @param  drv:
  * @param  data: Store data here
  * @retval Always false
  */
bool ft6x36_read(lv_indev_drv_t *drv, lv_indev_data_t *data) {
    if (!ft6x36_status.inited) {
        blog_error("Init first!");
        return 0x00;
    }
    uint8_t data_buf[5];        // 1 byte status, 2 bytes X, 2 bytes Y

    int ret = hosal_i2c_mem_read(&i2c0, current_dev_addr, FT6X36_TD_STAT_REG, 1, &data_buf[0], 5, 100);
    if (ret != 0) {
        blog_error("Error talking to touch IC: %d", ret);
    }
    uint8_t touch_pnt_cnt = data_buf[0];  // Number of detected touch points

    if (ret != 0 || touch_pnt_cnt != 1) {    // ignore no touch & multi touch
        if ( touch_inputs.current_state != LV_INDEV_STATE_REL)
        {
            touch_inputs.current_state = LV_INDEV_STATE_REL;
            xQueueOverwrite( ft6x36_touch_queue_handle, &touch_inputs );
        } 
        data->point.x = touch_inputs.last_x;
        data->point.y = touch_inputs.last_y;
        data->state = touch_inputs.current_state;
        return false;
    }

    touch_inputs.current_state = LV_INDEV_STATE_PR;
    touch_inputs.last_x = ((data_buf[1] & FT6X36_MSB_MASK) << 8) | (data_buf[2] & FT6X36_LSB_MASK);
    touch_inputs.last_y = ((data_buf[3] & FT6X36_MSB_MASK) << 8) | (data_buf[4] & FT6X36_LSB_MASK);

#if CONFIG_LV_FT6X36_SWAPXY
    int16_t swap_buf = touch_inputs.last_x;
    touch_inputs.last_x = touch_inputs.last_y;
    touch_inputs.last_y = swap_buf;
#endif
#if CONFIG_LV_FT6X36_INVERT_X
    touch_inputs.last_x =  LV_HOR_RES - touch_inputs.last_x;
#endif
#if CONFIG_LV_FT6X36_INVERT_Y
    touch_inputs.last_y = LV_VER_RES - touch_inputs.last_y;
#endif
    data->point.x = touch_inputs.last_x;
    data->point.y = touch_inputs.last_y;
    data->state = touch_inputs.current_state;
    blog_debug("X=%u Y=%u", data->point.x, data->point.y);

    xQueueOverwrite( ft6x36_touch_queue_handle, &touch_inputs );

    return false;
}