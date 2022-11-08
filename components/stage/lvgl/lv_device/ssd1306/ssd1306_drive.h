/**
 * @file oled_drive.h
 * @author your name (you@domain.com)
 * @brief
 * @version 0.1
 * @date 2022-10-27
 *
 * @copyright Copyright (c) 2022
 *
 */
#ifndef SSD1306_DRIVE_H
#define SSD1306_DRIVE_H
#include <hosal_i2c.h>
#include <bl_gpio.h>


hosal_i2c_dev_t* oled_i2c_driver_init(int oled_scl, int oled_sda);
void oled_drive_set_pixels(uint8_t x, uint8_t y, char color_p);
int oled_refresh_screen(void);
int oled_drive_sleep(void);
int oled_drive_awaken(void);
#endif