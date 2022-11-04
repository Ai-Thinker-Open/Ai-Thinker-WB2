/**
 * @file ili9488.c
 */

/*********************
 *      INCLUDES
 *********************/
#include "ili9488.h"
#include <blog.h>

#include "../lv_srcs/misc/lv_area.h"
#include "FreeRTOS.h"
#include "task.h"
#include <hosal_spi.h>
#include <hosal_gpio.h>
#include <hosal_dma.h>
#include <stdlib.h>

/*********************
 *      DEFINES
 *********************/

/**********************
 *      TYPEDEFS
 **********************/

/*The LCD needs a bunch of command/argument values to be initialized. They are stored in this struct. */
typedef struct {
    uint8_t cmd;
    uint8_t data[16];
    uint8_t databytes; //No of data in data; bit 7 = delay after set; 0xFF = end of cmds.
} lcd_init_cmd_t;

/**********************
 *  STATIC PROTOTYPES
 **********************/
static void ili9488_set_orientation(uint8_t orientation);

static void ili9488_send_cmd(uint8_t cmd);
static void ili9488_send_data(void * data, uint16_t length);
static void ili9488_send_color(void * data, uint16_t length);

/**********************
 *  STATIC VARIABLES
 **********************/

static hosal_gpio_dev_t rst_gpio = {
	.config = OUTPUT_PUSH_PULL,
	.port = ILI9488_RST,
};

static hosal_gpio_dev_t dc_gpio = {
	.config = OUTPUT_PUSH_PULL,
	.port = ILI9488_DC,
};

static hosal_spi_dev_t spi0 = {
	.cb = NULL,
	.config = {
		.dma_enable = false,
		.freq = 40000000,
		.mode = HOSAL_SPI_MODE_MASTER,
		.pin_clk = 11,
		.pin_miso = 21,
		.pin_mosi = 20,
		.polar_phase = 0,
	},
	.p_arg = NULL,
	.port = 0,
};

/**********************
 *      MACROS
 **********************/

/**********************
 *   GLOBAL FUNCTIONS
 **********************/
// From github.com/jeremyjh/ESP32_TFT_library
// From github.com/mvturnho/ILI9488-lvgl-ESP32-WROVER-B
void ili9488_init(void)
{
	lcd_init_cmd_t ili_init_cmds[]={
                {ILI9488_CMD_SLEEP_OUT, {0x00}, 0x80},
		{ILI9488_CMD_POSITIVE_GAMMA_CORRECTION, {0x00, 0x03, 0x09, 0x08, 0x16, 0x0A, 0x3F, 0x78, 0x4C, 0x09, 0x0A, 0x08, 0x16, 0x1A, 0x0F}, 15},
		{ILI9488_CMD_NEGATIVE_GAMMA_CORRECTION, {0x00, 0x16, 0x19, 0x03, 0x0F, 0x05, 0x32, 0x45, 0x46, 0x04, 0x0E, 0x0D, 0x35, 0x37, 0x0F}, 15},
		{ILI9488_CMD_POWER_CONTROL_1, {0x17, 0x15}, 2},
		{ILI9488_CMD_POWER_CONTROL_2, {0x41}, 1},
		{ILI9488_CMD_VCOM_CONTROL_1, {0x00, 0x12, 0x80}, 3},
		{ILI9488_CMD_MEMORY_ACCESS_CONTROL, {(0x20 | 0x08)}, 1},
		{ILI9488_CMD_COLMOD_PIXEL_FORMAT_SET, {0x66}, 1},
		{ILI9488_CMD_INTERFACE_MODE_CONTROL, {0x00}, 1},
		{ILI9488_CMD_FRAME_RATE_CONTROL_NORMAL, {0xA0}, 1},
		{ILI9488_CMD_DISPLAY_INVERSION_CONTROL, {0x02}, 1},
		{ILI9488_CMD_DISPLAY_FUNCTION_CONTROL, {0x02, 0x02}, 2},
		{ILI9488_CMD_SET_IMAGE_FUNCTION, {0x00}, 1},
		{ILI9488_CMD_WRITE_CTRL_DISPLAY, {0x28}, 1},
		{ILI9488_CMD_WRITE_DISPLAY_BRIGHTNESS, {0x7F}, 1},
		{ILI9488_CMD_ADJUST_CONTROL_3, {0xA9, 0x51, 0x2C, 0x02}, 4},
		{ILI9488_CMD_DISPLAY_ON, {0x00}, 0x80},
		{0, {0}, 0xff},
	};

	// hosal_dma_init();
	
	hosal_spi_init(&spi0);
	
    hosal_gpio_init(&dc_gpio);
	hosal_gpio_init(&rst_gpio);

	//Reset the display
	hosal_gpio_output_set(&rst_gpio, 0);
	vTaskDelay(100 / portTICK_RATE_MS);
	hosal_gpio_output_set(&rst_gpio, 1);
	vTaskDelay(100 / portTICK_RATE_MS);

	blog_info("ILI9488 initialization.");

	// Exit sleep
	ili9488_send_cmd(0x01);	/* Software reset */
	vTaskDelay(100 / portTICK_RATE_MS);

	//Send all the commands
	uint16_t cmd = 0;
	while (ili_init_cmds[cmd].databytes!=0xff) {
		ili9488_send_cmd(ili_init_cmds[cmd].cmd);
		ili9488_send_data(ili_init_cmds[cmd].data, ili_init_cmds[cmd].databytes&0x1F);
		if (ili_init_cmds[cmd].databytes & 0x80) {
			vTaskDelay(100 / portTICK_RATE_MS);
		}
		cmd++;
	}

    ili9488_set_orientation(0);
}

// Flush function based on mvturnho repo
void ili9488_flush(lv_disp_drv_t * drv, const lv_area_t * area, lv_color_t * color_map)
{
    uint32_t size = lv_area_get_width(area) * lv_area_get_height(area);

    lv_color16_t *buffer_16bit = (lv_color16_t *) color_map;
    uint8_t *mybuf;
    do {
        mybuf = (uint8_t *) malloc(3 * size * sizeof(uint8_t));
        if (mybuf == NULL)  blog_warn("Could not allocate enough DMA memory!");
    } while (mybuf == NULL);

    uint32_t LD = 0;
    uint32_t j = 0;

    for (uint32_t i = 0; i < size; i++) {
        LD = buffer_16bit[i].full;
        mybuf[j] = (uint8_t) (((LD & 0xF800) >> 8) | ((LD & 0x8000) >> 13));
        j++;
        mybuf[j] = (uint8_t) ((LD & 0x07E0) >> 3);
        j++;
        mybuf[j] = (uint8_t) (((LD & 0x001F) << 3) | ((LD & 0x0010) >> 2));
        j++;
    }

	/* Column addresses  */
	uint8_t xb[] = {
	    (uint8_t) (area->x1 >> 8) & 0xFF,
	    (uint8_t) (area->x1) & 0xFF,
	    (uint8_t) (area->x2 >> 8) & 0xFF,
	    (uint8_t) (area->x2) & 0xFF,
	};

	/* Page addresses  */
	uint8_t yb[] = {
	    (uint8_t) (area->y1 >> 8) & 0xFF,
	    (uint8_t) (area->y1) & 0xFF,
	    (uint8_t) (area->y2 >> 8) & 0xFF,
	    (uint8_t) (area->y2) & 0xFF,
	};

	/*Column addresses*/
	ili9488_send_cmd(ILI9488_CMD_COLUMN_ADDRESS_SET);
	ili9488_send_data(xb, 4);

	/*Page addresses*/
	ili9488_send_cmd(ILI9488_CMD_PAGE_ADDRESS_SET);
	ili9488_send_data(yb, 4);

	/*Memory write*/
	ili9488_send_cmd(ILI9488_CMD_MEMORY_WRITE);

	ili9488_send_color((void *) mybuf, size * 3);
	free(mybuf);
}

/**********************
 *   STATIC FUNCTIONS
 **********************/


static void ili9488_send_cmd(uint8_t cmd)
{
	hosal_gpio_output_set(&dc_gpio, 0);
	hosal_spi_send(&spi0, &cmd, 1, 100);
}

static void ili9488_send_data(void * data, uint16_t length)
{
    hosal_gpio_output_set(&dc_gpio, 1);	 /*Data mode*/
	hosal_spi_send(&spi0, data, length, 100);
}

static void ili9488_send_color(void * data, uint16_t length)
{
    hosal_gpio_output_set(&dc_gpio, 1);   /*Data mode*/
    hosal_spi_send(&spi0, data, length, 100);
}

static void ili9488_set_orientation(uint8_t orientation)
{
    // ESP_ASSERT(orientation < 4);

    const char *orientation_str[] = {
        "PORTRAIT", "PORTRAIT_INVERTED", "LANDSCAPE", "LANDSCAPE_INVERTED"
    };

    blog_info("Display orientation: %s", orientation_str[orientation]);

    uint8_t data[] = {0x48, 0x88, 0x28, 0xE8};

    blog_info("0x36 command value: 0x%02X", data[orientation]);

    ili9488_send_cmd(0x36);
    ili9488_send_data((void *) &data[orientation], 1);
}