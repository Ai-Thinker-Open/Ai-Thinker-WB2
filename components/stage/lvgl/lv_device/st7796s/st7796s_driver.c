/**
 * @file st7796s_driver.c
 * @author your name (you@domain.com)
 * @brief
 * @version 0.1
 * @date 2022-11-02
 *
 * @copyright Copyright (c) 2022
 *
 */


#include <stdio.h>
#include <stdlib.h>
#include <hosal_spi.h>
#include <bl_gpio.h>
#include <blog.h>
#include <st7796s_drive.h>
#include <task.h>
#include <FreeRTOS.h>

#include "lv_port_disp.h"

#if defined LV_DISPLAY_ST7796S
typedef struct {
    uint8_t cmd;
    uint8_t data[16];
    uint8_t data_len;
}st7796_data_bus_t;
/*
    ST7796 SPI
*/
// static hosal_spi_dev_t st7796s_dev;
static hosal_spi_dev_t st7796s_dev = {
    .config = {
        .dma_enable = 0,
        .freq = 500000,
        .mode = HOSAL_SPI_MODE_MASTER,
        .pin_clk = ST7796_SPI_CLK,
        .pin_mosi = ST7796_SPI_MOSI,
        .pin_miso = 17,
        .polar_phase = 0,
    },
    .port = 0,
    .p_arg = NULL,
};

static uint16_t width = MY_DISP_HOR_RES;
static uint16_t height = MY_DISP_VER_RES;
/**
 * @brief st7796s_drive_send
 *
 * @param data
 * @param mode
 * @return int
 */
int st7796s_drive_send(void* data, uint16_t byte_len, st7796_send_mode_t mode)
{
    int ret = 0;
    hosal_spi_set_cs(ST7796_SPI_SS, 0);
    switch (mode)
    {
        case ST7796S_SEND_MODE_CMD:

            bl_gpio_output_set(ST7796_SPI_DC, mode);
            ret = hosal_spi_send(&st7796s_dev, data, byte_len, 10000);
            if (ret!=0) {
                blog_error("hosal_spi_send cmd fail:%d", ret);
                hosal_spi_set_cs(ST7796_SPI_SS, 1);
                return -1;
            }

            break;
        case ST7796S_SEND_MODE_DATA:

            bl_gpio_output_set(ST7796_SPI_DC, mode);
            ret = hosal_spi_send(&st7796s_dev, data, byte_len, 10000);
            if (ret!=0) {
                hosal_spi_set_cs(ST7796_SPI_SS, 1);
                blog_error("hosal_spi_send data fail:%d", ret);
                return -1;
            }

            break;
    }
    hosal_spi_set_cs(ST7796_SPI_SS, 1);
    return ret;
}
/**
 * @brief st7796_drive_enable_backlight
 *
 * @param enable_bl
 * @return int
 */
int st7796_drive_enable_backlight(bool enable_bl)
{
    return bl_gpio_output_set(ST7796_SPI_BL, enable_bl);
}
/**
 * @brief
 *
 * @param orientation
 */
static void st7796_drive_set_orientation(uint8_t orientation)
{
    // ESP_ASSERT(orientation < 4);

    const char* orientation_str[] = {
        "PORTRAIT", "PORTRAIT_INVERTED", "LANDSCAPE", "LANDSCAPE_INVERTED" };
    blog_info("Display orientation: %s", orientation_str[orientation]);
    switch (orientation) {
        case LV_DISPLAY_LANDSCAPE:
        case LV_DISPLAY_PORTRAIT:
            width = MY_DISP_HOR_RES;
            height = MY_DISP_VER_RES;
            break;
        case LV_DISPLAY_PORTRAIT_INVERTED:
        case LV_DISPLAY_LANDSCAPE_INVERTED:
            width = MY_DISP_VER_RES;
            height = MY_DISP_HOR_RES;
            break;
    }
#if defined CONFIG_LV_PREDEFINED_DISPLAY_M5STACK
    uint8_t data[] = { 0x68, 0x68, 0x08, 0x08 };
#elif defined(CONFIG_LV_PREDEFINED_DISPLAY_WROVER4)
    uint8_t data[] = { 0x4C, 0x88, 0x28, 0xE8 };
#elif defined(CONFIG_LV_PREDEFINED_DISPLAY_WT32_SC01)
    uint8_t data[] = { 0x48, 0x88, 0x28, 0xE8 };
#elif defined(CONFIG_LV_PREDEFINED_DISPLAY_NONE)
    uint8_t data[] = { 0x48, 0x88, 0x28, 0xE8 };
#endif

    blog_info("0x36 command value: 0x%02X", data[orientation]);
    uint8_t cmd = 0x36;
    st7796s_drive_send(&cmd, 1, ST7796S_SEND_MODE_CMD);
    st7796s_drive_send(&data[orientation], 1, ST7796S_SEND_MODE_DATA);
}

void st7796s_set_windows(uint16_t x1, uint16_t x2, uint16_t y1, uint16_t y2)
{
    uint8_t cmd = 0;
    uint8_t data[4];

    data[0] = (x1>>8);
    data[1] = x1&0x00ff;
    data[2] = (x2>>8);
    data[3] = x2&0x00FF;
    cmd = 0X2A;
    st7796s_drive_send(&cmd, 1, ST7796S_SEND_MODE_CMD);
    st7796s_drive_send(data, 4, ST7796S_SEND_MODE_DATA);

    cmd = 0X2B;
    data[0] = (y1>>8);
    data[1] = y1&0x00FF;
    data[2] = (y2>>8);
    data[3] = y2&0x00FF;
    st7796s_drive_send(&cmd, 1, ST7796S_SEND_MODE_CMD);
    st7796s_drive_send(data, 4, ST7796S_SEND_MODE_DATA);

    cmd = 0x2C;
    st7796s_drive_send(&cmd, 1, ST7796S_SEND_MODE_CMD);
}
/**
 * @brief st7796s_drive_set_color
 *
 * @param color_data
 * @return int
 */
int st7796s_drive_set_color(uint16_t color_data)
{
    uint8_t color_dat[2];
    color_dat[0] = color_data>>8;
    color_dat[1] = color_data;
    return st7796s_drive_send(color_dat, 2, ST7796S_SEND_MODE_DATA);
}
/**
 * @brief st7796s_drive_clear
 *
 * @param color
 * @return int
 */
static int st7796s_drive_clear(uint16_t color)
{
    uint16_t i = 0, m = 0;
    st7796s_set_windows(0, width-1, 0, height-1);

    for (i = 0;i<height;i++)
    {
        for (m = 0;m<width;m++)
        {
            st7796s_drive_set_color(color);
        }
    }
    hosal_spi_set_cs(ST7796_SPI_SS, 1);
    return 0;
}
/**
 * @brief st7796s_drive_init
 *
 * @return int
 */
int st7796s_drive_init(void)
{
    st7796_data_bus_t init_cmds[] = {
        {0xCF, {0x00, 0x83, 0X30}, 3},
        {0xED, {0x64, 0x03, 0X12, 0X81}, 4},
        {0xE8, {0x85, 0x01, 0x79}, 3},
        {0xCB, {0x39, 0x2C, 0x00, 0x34, 0x02}, 5},
        {0xF7, {0x20}, 1},
        {0xEA, {0x00, 0x00}, 2},
        {0xC0, {0x26}, 1},		 /*Power control*/
        {0xC1, {0x11}, 1},		 /*Power control */
        {0xC5, {0x35, 0x3E}, 2}, /*VCOM control*/
        {0xC7, {0xBE}, 1},		 /*VCOM control*/
        {0x36, {0x28}, 1},		 /*Memory Access Control*/
        {0x3A, {0x55}, 1},		 /*Pixel Format Set*/
        {0xB1, {0x00, 0x1B}, 2},
        {0xF2, {0x08}, 1},
        {0x26, {0x01}, 1},
        {0xE0, {0x1F, 0x1A, 0x18, 0x0A, 0x0F, 0x06, 0x45, 0X87, 0x32, 0x0A, 0x07, 0x02, 0x07, 0x05, 0x00}, 15},
        {0XE1, {0x00, 0x25, 0x27, 0x05, 0x10, 0x09, 0x3A, 0x78, 0x4D, 0x05, 0x18, 0x0D, 0x38, 0x3A, 0x1F}, 15},
        {0x2A, {0x00, 0x00, 0x00, 0xEF}, 4},
        {0x2B, {0x00, 0x00, 0x01, 0x3f}, 4},
        {0x2C, {0}, 1},
        {0xB7, {0x07}, 1},
        {0xB6, {0x0A, 0x82, 0x27, 0x00}, 4},
        {0x11, {0}, 1},
        {0x29, {0}, 1},
        {0, {0}, 0xff},
    };
    // st7796_data_bus_t init_cmds[] = {
    //     {0xF0,{0xc3},1},
    //     {0xF0,{0x96},1},
    //     {0x36,{0X68},1},
    //     {0x3A,{0X05},1},
    //     {0xb0,{0X80},1},
    //     {0xB6,{0X00,0X02},2},
    //     {0xB5,{0x02,0x03,0x00,0x04},4},
    //     {0xB1,{0X80,0X10},2},
    //     {0xB4,{0X00},1},
    //     {0xB7,{0XC6},1},
    //     {0xC5,{0X24},1},
    //     {0xE4,{0X31},1},
    //     {0xE8,{0X40,0X8A,0X00,0X00,0X29,0X19,0XA5,0X33},8},
    //     {0xC2,{0},0},
    //     {0xA7,{0},0},
    //     {0xE0,{0x1F, 0x24, 0x24, 0x0D, 0x12, 0x09, 0x52, 0xB7, 0x3F, 0x0C, 0x15, 0x06, 0x0E, 0x08, 0x00},15},
    //     {0xE1,{0x00, 0x1B, 0x1B, 0x02, 0x0E, 0x06, 0x2E, 0x48, 0x3F, 0x03, 0x0A, 0x09, 0x31, 0x37, 0x1F},15},
    //     {0x36,{0xec},1},
    //     {0xf0,{0xc3},1},
    //     {0xf0,{0x69},1},
    //     {0x13,{0},0},
    //     {0x11,{0},0},
    //     {0x29,{0},0},
    //     {0,{0},0xff},
    // };
    bl_gpio_enable_output(ST7796_SPI_DC, 1, 0);
    bl_gpio_enable_output(ST7796_SPI_RST, 1, 0);
    hosal_spi_set_cs(ST7796_SPI_SS, 1);
    bl_gpio_output_set(ST7796_SPI_DC, 1);
    bl_gpio_output_set(ST7796_SPI_RST, 1);
#ifdef ST7796_SPI_BL    
    bl_gpio_enable_output(ST7796_SPI_BL, 1, 0);
#endif
    bl_gpio_output_set(ST7796_SPI_RST, 0);
    vTaskDelay(100/portTICK_PERIOD_MS);
    bl_gpio_output_set(ST7796_SPI_RST, 1);
    vTaskDelay(100/portTICK_PERIOD_MS);

    hosal_spi_init(&st7796s_dev);

    //Send all the commands
    uint16_t cmd = 0;

    while (init_cmds[cmd].data_len != 0xff)
    {
        st7796s_drive_send(&init_cmds[cmd].cmd, 1, ST7796S_SEND_MODE_CMD);

        if (init_cmds[cmd].data_len>0)
            st7796s_drive_send(init_cmds[cmd].data, init_cmds[cmd].data_len, ST7796S_SEND_MODE_DATA);

        if (init_cmds[cmd].cmd==0x11||init_cmds[cmd].cmd==0x29)
        {
            vTaskDelay(100 / portTICK_RATE_MS);
        }
        cmd++;
    }
    st7796_drive_set_orientation(LV_DISPLAY_PORTRAIT);

#ifdef ST7796_SPI_BL 
    st7796_drive_enable_backlight(true);
#endif

    uint8_t end_init_cmd = 0;
#if ST7796S_INVERT_COLORS == 1
    end_init_cmd = 0x21;
#else 
    end_init_cmd = 0x20;
#endif
    // st7796s_drive_clear(0x0000);
    return  st7796s_drive_send(&end_init_cmd, 1, ST7796S_SEND_MODE_CMD);

}

/**
 * @brief st7796_drive_set_pixels
 *
 * @param x
 * @param y
 * @param color
 * @return int
 */
int st7796_drive_set_pixels(uint16_t x, uint16_t y, uint16_t color)
{

    st7796s_set_windows(x, x, y, y);

    st7796s_drive_set_color(color);
    return 0;
}
#endif