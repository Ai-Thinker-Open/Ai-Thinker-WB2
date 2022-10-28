/**
 * @file oled_drive.c
 * @author your name (you@domain.com)
 * @brief
 * @version 0.1
 * @date 2022-10-27
 *
 * @copyright Copyright (c) 2022
 *
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <FreeRTOS.h>
#include <task.h>
#include <blog.h>
#include "ssd1306_drive.h"
#include "lv_port_disp.h"

#define OLED_IIC_FREQ_10K 10000
#define OLED_IIC_FREQ_20K 20000
#define OLED_IIC_FREQ_50K 50000
#define OLED_IIC_FREQ_100K 100000
#define OLED_IIC_FREQ_200K 200000
#define OLED_IIC_FREQ_300K 300000
#define OLED_IIC_FREQ_400K 400000

#define OLED_CMD 0
#define OLED_DATA 1
 // SLA (0x3C) + WRITE_MODE (0x00) =  0x78 (0b01111000)
#define OLED_IIC_ADDR                       0x3C
#define OLED_WIDTH                          128
#define OLED_HEIGHT                         64
#define OLED_COLUMNS                        128
#define OLED_PAGES                          8
#define OLED_PIXEL_PER_PAGE                 8

// Control byte
#define OLED_CONTROL_BYTE_CMD_SINGLE        0x80
#define OLED_CONTROL_BYTE_CMD_STREAM        0x00
#define OLED_CONTROL_BYTE_DATA_STREAM       0x40

// Fundamental commands (pg.28)
#define OLED_CMD_SET_CONTRAST               0x81    // follow with 0x7F
#define OLED_CMD_DISPLAY_RAM                0xA4
#define OLED_CMD_DISPLAY_ALLON              0xA5
#define OLED_CMD_DISPLAY_NORMAL             0xA6
#define OLED_CMD_DISPLAY_INVERTED           0xA7
#define OLED_CMD_DISPLAY_OFF                0xAE
#define OLED_CMD_DISPLAY_ON                 0xAF

// Addressing Command Table (pg.30)
#define OLED_CMD_SET_MEMORY_ADDR_MODE       0x20    // follow with 0x00 = HORZ mode
#define OLED_CMD_SET_COLUMN_RANGE           0x21    // can be used only in HORZ/VERT mode - follow with 0x00 and 0x7F = COL127
#define OLED_CMD_SET_PAGE_RANGE             0xB0    // can be used only in HORZ/VERT mode - follow with 0x00 and 0x07 = PAGE7

// Hardware Config (pg.31)
#define OLED_CMD_SET_DISPLAY_START_LINE     0x40
#define OLED_CMD_SET_SEGMENT_REMAP          0xA1
#define OLED_CMD_SET_MUX_RATIO              0xA8    // follow with 0x3F = 64 MUX
#define OLED_CMD_SET_COM_SCAN_MODE_NORMAL   0xC0
#define OLED_CMD_SET_COM_SCAN_MODE_REMAP    0xC8
#define OLED_CMD_SET_DISPLAY_OFFSET         0xD3    // follow with 0x00
#define OLED_CMD_SET_COM_PIN_MAP            0xDA    // follow with 0x12
#define OLED_CMD_NOP                        0xE3    // NOP

// Timing and Driving Scheme (pg.32)
#define OLED_CMD_SET_DISPLAY_CLK_DIV        0xD5    // follow with 0x80
#define OLED_CMD_SET_PRECHARGE              0xD9    // follow with 0xF1
#define OLED_CMD_SET_VCOMH_DESELCT          0xDB    // follow with 0x30

// Charge Pump (pg.62)
#define OLED_CMD_SET_CHARGE_PUMP            0x8D    // follow with 0x14

static hosal_i2c_dev_t oled_iic_dev;

static uint8_t ssd1306_buff[MY_DISP_HOR_RES * MY_DISP_VER_RES / 8];
/**
 * @brief oled_drive_write
 *
 * @param oled_dev
 * @param byte
 * @param cmd
 * @return int
 */
static int oled_drive_write(char byte, char cmd)
{
    uint8_t cmd_data[2] = { 0 };
    //oled write command
    cmd_data[1] = byte;
    if (!cmd) {
        cmd_data[0] = 0x00;
    }
    else {
        //oled write data
        cmd_data[0] = 0x40;
    }
    return hosal_i2c_master_send(&oled_iic_dev, OLED_IIC_ADDR, cmd_data, 2, 100);
}
/**
 * @brief oled_drive_set_pos
 *
 * @param oled_dev
 * @param x
 * @param y
 * @return int
 */
int oled_drive_set_pos(uint8_t x, uint8_t y)
{

    int ret = oled_drive_write(0xb0+y, OLED_CMD);
    if (ret!=0) return -1;
    ret = oled_drive_write(((x & 0xf0) >> 4) | 0x10, OLED_CMD);
    if (ret!=0) return -1;
    ret = oled_drive_write((x & 0x0f) | 0x01, OLED_CMD);
    if (ret!=0) return -1;
    return 0;
}
/**
 * @brief
 *
 * @param color_buffer
 * @param len
 * @return int
 */
int oled_drive_pixels(uint8_t* color_buffer, uint16_t len)
{
    uint16_t i = 0;
    uint8_t oled_data[len+1];
    oled_data[0] = 0x40;
    for (i = 1;i<len;i++) {
        oled_data[i] = color_buffer[i];
    }
    return  hosal_i2c_master_send(&oled_iic_dev, OLED_IIC_ADDR, oled_data, 1+len, 10000);
}
/**
 * @brief
 *
 * @return int
 */
int oled_refresh_screen(void)
{
    uint8_t y = 0;
    for (y = 0;y<8;y++) {
        oled_drive_write(0xB0+y, OLED_CMD);
        oled_drive_write(0x00, OLED_CMD);
        oled_drive_write(0x10, OLED_CMD);
        oled_drive_pixels(&ssd1306_buff[MY_DISP_HOR_RES*y], MY_DISP_HOR_RES);
    }
    oled_drive_write(0xB7, OLED_CMD);
    oled_drive_write(0x00, OLED_CMD);
    oled_drive_write(0x10, OLED_CMD);
    oled_drive_pixels(&ssd1306_buff[MY_DISP_HOR_RES*7], MY_DISP_HOR_RES);
    return 0;
}
/**
 * @brief oled_set_fill
 *
 * @param data
 * @return int
 */
int oled_set_fill(char data)
{
    memset(ssd1306_buff, (data==0)?0x00:0xff, sizeof(ssd1306_buff));
    return 0;
}
/**
 * @brief oled_drive_set_pixels
 *
 * @param area
 * @param color_p
 */
void oled_drive_set_pixels(uint8_t x, uint8_t y, char color_p)
{
    if (x>=MY_DISP_HOR_RES||y>=MY_DISP_VER_RES) return;
    if (color_p) ssd1306_buff[x + (y / 8) * MY_DISP_HOR_RES] &= ~(1<<(y % 8));
    else   ssd1306_buff[x + (y / 8) * MY_DISP_HOR_RES] |= 1<<(y % 8);
}
/**
 * @brief oled_i2c_driver_init
 *
 * @param oled_scl
 * @param oled_sda
 * @return hosal_i2c_dev_t*
 */

hosal_i2c_dev_t* oled_i2c_driver_init(int oled_scl, int oled_sda)
{
    uint8_t orientation_1 = 0;
    uint8_t orientation_2 = 0;
#if defined (LV_DISPLAY_ORIENTATION_LANDSCAPE)
    orientation_1 = OLED_CMD_SET_SEGMENT_REMAP;
    orientation_2 = OLED_CMD_SET_COM_SCAN_MODE_REMAP;
#elif defined (LV_DISPLAY_ORIENTATION_LANDSCAPE_INVERTED)
    orientation_1 = 0xA0;
    orientation_2 = OLED_CMD_SET_COM_SCAN_MODE_NORMAL;
#else
#error "Unsupported orientation"
#endif
    uint8_t display_mode = 0;

#if defined LV_INVERT_COLORS
    display_mode = OLED_CMD_DISPLAY_INVERTED;
#else
    display_mode = OLED_CMD_DISPLAY_NORMAL;
#endif

    uint8_t init_data[] = {
        OLED_CMD_DISPLAY_OFF,
        OLED_CMD_SET_MEMORY_ADDR_MODE,
        0x10,
        OLED_CMD_SET_PAGE_RANGE,
        orientation_2,
        0x00,
        0x10,
        0x40,
        OLED_CMD_SET_CONTRAST,
        0XFF,
        orientation_1,
        display_mode,
        OLED_CMD_SET_MUX_RATIO,
        0x3F,
        OLED_CMD_DISPLAY_RAM,
        OLED_CMD_SET_DISPLAY_OFFSET,
        0x00,
        OLED_CMD_SET_DISPLAY_CLK_DIV,
        0xF0,
        OLED_CMD_SET_PRECHARGE,
        0x22,
        OLED_CMD_SET_COM_PIN_MAP,
        0x12,
        OLED_CMD_SET_VCOMH_DESELCT,
        0x20,
        0x8D,
        0x14,
        OLED_CMD_DISPLAY_ON
    };
    int i = 0;
    oled_iic_dev.config.address_width = HOSAL_I2C_ADDRESS_WIDTH_7BIT;
    oled_iic_dev.config.freq = OLED_IIC_FREQ_400K;
    oled_iic_dev.config.mode = HOSAL_I2C_MODE_MASTER;
    oled_iic_dev.config.scl = oled_scl;
    oled_iic_dev.config.sda = oled_sda;
    oled_iic_dev.port = 0;
    hosal_i2c_init(&oled_iic_dev);
    for (i = 0;i<28;i++)
        oled_drive_write(init_data[i], OLED_CMD);
    oled_set_fill(0);
    oled_refresh_screen();
    oled_drive_set_pos(0, 0);
    return &oled_iic_dev;
}
/**
 * @brief oled_drive_sleep
 *
 * @return int
 */
int oled_drive_sleep(void)
{
    oled_drive_write(OLED_CMD_SET_CHARGE_PUMP, OLED_CMD);
    oled_drive_write(0x10, OLED_CMD);
    return oled_drive_write(OLED_CMD_DISPLAY_OFF, OLED_CMD);
}

int oled_drive_awaken(void)
{
    oled_drive_write(OLED_CMD_SET_CHARGE_PUMP, OLED_CMD);
    oled_drive_write(0x14, OLED_CMD);
    return oled_drive_write(OLED_CMD_DISPLAY_ON, OLED_CMD);
}