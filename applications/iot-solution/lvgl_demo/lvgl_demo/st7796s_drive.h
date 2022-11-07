/**
 * @file st7796s_drive.h
 * @author your name (you@domain.com)
 * @brief
 * @version 0.1
 * @date 2022-11-02
 *
 * @copyright Copyright (c) 2022
 *
 */

#ifndef ST7796S_DRIVE_H
#define ST7796S_DRIVE_H


#define ST7796_SPI_SS 5
#define ST7796_SPI_RST 4
#define ST7796_SPI_DC 11
#define ST7796_SPI_MOSI 12
#define ST7796_SPI_CLK 3

#define ST7796_SPI_BL 14

 // config st7796s display direction

#define CONFIG_LV_PREDEFINED_DISPLAY_M5STACK
 // #define CONFIG_LV_PREDEFINED_DISPLAY_WROVER4
 // #define CONFIG_LV_PREDEFINED_DISPLAY_WT32_SC01
// #define CONFIG_LV_PREDEFINED_DISPLAY_NONE

// color invert
#define ST7796S_INVERT_COLORS 0

typedef enum {
    ST7796S_SEND_MODE_CMD = 0,
    ST7796S_SEND_MODE_DATA,
}st7796_send_mode_t;

typedef enum {
    LV_DISPLAY_PORTRAIT = 0,
    LV_DISPLAY_PORTRAIT_INVERTED,
    LV_DISPLAY_LANDSCAPE,
    LV_DISPLAY_LANDSCAPE_INVERTED,
}st7796_direction_t;


int st7796s_drive_init(void);
int st7796_drive_set_pixels(uint16_t x, uint16_t y, uint16_t color);
void st7796s_set_windows(uint16_t x1, uint16_t x2, uint16_t y1, uint16_t y2);
int st7796s_drive_set_color(uint16_t color_data);

#endif