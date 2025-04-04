/**
 * @file st7789.c
 *
 * Mostly taken from lbthomsen/esp-idf-littlevgl github.
 */

#include "FreeRTOS.h"
#include "task.h"

#include "blog.h"

#include "st7789_drive.h"

#include "hosal_spi.h"
#include "hosal_gpio.h"
#include "hosal_dma.h"

#ifdef LV_DISPLAY_ST7789
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
static void st7789_set_orientation(uint8_t orientation);

void st7789_send_cmd(uint8_t cmd);
void st7789_send_data(uint8_t* data, uint16_t length);
void st7789_send_color(uint8_t* data, uint16_t length);

/**********************
 *  STATIC VARIABLES
 **********************/

static hosal_spi_dev_t spi0 = {
    .config = {
        .dma_enable = 1,
        .freq = 40000000,
        .mode = HOSAL_SPI_MODE_MASTER,
        .pin_clk = ST7789_CLK,
        .pin_miso = ST7789_MISO,
        .pin_mosi = ST7789_MOSI,
        .polar_phase = 0,
    },
};

static hosal_gpio_dev_t dc_pin = {
    .config = OUTPUT_PUSH_PULL,
    .port = ST7789_DC,
};

static hosal_gpio_dev_t cs_pin = {
    .config = OUTPUT_PUSH_PULL,
    .port = ST7789_CS,
};

#if !defined(CONFIG_LV_DISP_ST7789_SOFT_RESET)
static hosal_gpio_dev_t rst_pin = {
    .config = OUTPUT_PUSH_PULL,
    .port = ST7789_RST,
};
#endif

#if ST7789_ENABLE_BACKLIGHT_CONTROL
static hosal_gpio_dev_t bckl_pin = {
    .config = OUTPUT_PUSH_PULL,
    .port = ST7789_BCKL,
};
#endif

/**********************
 *      MACROS
 **********************/

 /**********************
  *   GLOBAL FUNCTIONS
  **********************/
void st7789_init(void)
{
    lcd_init_cmd_t st7789_init_cmds[] = {
        {0xCF, {0x00, 0x83, 0X30}, 3},
        {0xED, {0x64, 0x03, 0X12, 0X81}, 4},
        {ST7789_PWCTRL2, {0x85, 0x01, 0x79}, 3},
        {0xCB, {0x39, 0x2C, 0x00, 0x34, 0x02}, 5},
        {0xF7, {0x20}, 1},
        {0xEA, {0x00, 0x00}, 2},
        {ST7789_LCMCTRL, {0x26}, 1},
        {ST7789_IDSET, {0x11}, 1},
        {ST7789_VCMOFSET, {0x35, 0x3E}, 2},
        {ST7789_CABCCTRL, {0xBE}, 1},
        {ST7789_MADCTL, {0x00}, 1}, // Set to 0x28 if your display is flipped
        {ST7789_COLMOD, {0x55}, 1},

#if ST7789_INVERT_COLORS == 1
        {ST7789_INVON, {0}, 0}, // set inverted mode
#else
        {ST7789_INVOFF, {0}, 0}, // set non-inverted mode
#endif

        {ST7789_RGBCTRL, {0x00, 0x1B}, 2},
        {0xF2, {0x08}, 1},
        {ST7789_GAMSET, {0x01}, 1},
        {ST7789_PVGAMCTRL, {0xD0, 0x00, 0x02, 0x07, 0x0A, 0x28, 0x32, 0x44, 0x42, 0x06, 0x0E, 0x12, 0x14, 0x17}, 14},
        {ST7789_NVGAMCTRL, {0xD0, 0x00, 0x02, 0x07, 0x0A, 0x28, 0x31, 0x54, 0x47, 0x0E, 0x1C, 0x17, 0x1B, 0x1E}, 14},

        {ST7789_CASET, {0x00, 0x00, 0x00, 0xEF}, 4},
        {ST7789_RASET, {0x00, 0x00, 0x00, 0xEF}, 4},

        {ST7789_RAMWR, {0}, 0},
        {ST7789_GCTRL, {0x07}, 1},
        {0xB6, {0x0A, 0x82, 0x27, 0x00}, 4},
        {ST7789_SLPOUT, {0}, 0x80},
        {ST7789_DISPON, {0}, 0x80},
        {0, {0}, 0xff},
    };

    hosal_spi_init(&spi0);
    // hosal_dma_init();
    //Initialize non-SPI GPIOs
    hosal_gpio_init(&dc_pin);
    hosal_gpio_output_set(&dc_pin, 1);

    hosal_gpio_init(&cs_pin);
    hosal_gpio_output_set(&cs_pin, 1);

#if !defined(CONFIG_LV_DISP_ST7789_SOFT_RESET)
    hosal_gpio_init(&rst_pin);
    hosal_gpio_output_set(&rst_pin, 1);
#endif

#if ST7789_ENABLE_BACKLIGHT_CONTROL
    hosal_gpio_init(&bckl_pin);
    hosal_gpio_output_set(&bckl_pin, 1);
#endif

    //Reset the display
#if !defined(CONFIG_LV_DISP_ST7789_SOFT_RESET)
    hosal_gpio_init(&rst_pin);
    hosal_gpio_output_set(&rst_pin, 1);
    hosal_gpio_output_set(&rst_pin, 0);
    vTaskDelay(100 / portTICK_RATE_MS);
    hosal_gpio_output_set(&rst_pin, 1);
    vTaskDelay(100 / portTICK_RATE_MS);
#else
    st7789_send_cmd(ST7789_SWRESET);
#endif

    blog_info("ST7789 initialization.\n");

    //Send all the commands
    uint16_t cmd = 0;
    while (st7789_init_cmds[cmd].databytes!=0xff) {
        st7789_send_cmd(st7789_init_cmds[cmd].cmd);
        st7789_send_data(st7789_init_cmds[cmd].data, st7789_init_cmds[cmd].databytes&0x1F);
        if (st7789_init_cmds[cmd].databytes & 0x80) {
            vTaskDelay(100 / portTICK_RATE_MS);
        }
        cmd++;
    }
    st7789_set_orientation(CONFIG_LV_DISPLAY_ORIENTATION);
    st7789_enable_backlight(true);


}

void st7789_enable_backlight(bool backlight)
{
#if ST7789_ENABLE_BACKLIGHT_CONTROL
    blog_info("%s backlight.\n", backlight ? "Enabling" : "Disabling");
    uint32_t tmp = 0;

#if (ST7789_BCKL_ACTIVE_LVL==1)
    tmp = backlight ? 1 : 0;
#else
    tmp = backlight ? 0 : 1;
#endif

    hosal_gpio_output_set(&bckl_pin, tmp);
#endif
}

/* The ST7789 display controller can drive 320*240 displays, when using a 240*240
 * display there's a gap of 80px, we need to edit the coordinates to take into
 * account that gap, this is not necessary in all orientations. */
void st7789_flush(lv_disp_drv_t* drv, const lv_area_t* area, lv_color_t* color_map)
{
    uint8_t data[4] = { 0 };

    uint16_t offsetx1 = area->x1;
    uint16_t offsetx2 = area->x2;
    uint16_t offsety1 = area->y1;
    uint16_t offsety2 = area->y2;

#if (CONFIG_LV_TFT_DISPLAY_OFFSETS)
    offsetx1 += CONFIG_LV_TFT_DISPLAY_X_OFFSET;
    offsetx2 += CONFIG_LV_TFT_DISPLAY_X_OFFSET;
    offsety1 += CONFIG_LV_TFT_DISPLAY_Y_OFFSET;
    offsety2 += CONFIG_LV_TFT_DISPLAY_Y_OFFSET;

#elif (LV_HOR_RES_MAX == 240) && (LV_VER_RES_MAX == 240)
#if (CONFIG_LV_DISPLAY_ORIENTATION_PORTRAIT)
    offsetx1 += 80;
    offsetx2 += 80;
#elif (CONFIG_LV_DISPLAY_ORIENTATION_LANDSCAPE_INVERTED)
    offsety1 += 80;
    offsety2 += 80;
#endif
#endif

    /*Column addresses*/
    st7789_send_cmd(ST7789_CASET);
    data[0] = (offsetx1 >> 8) & 0xFF;
    data[1] = offsetx1 & 0xFF;
    data[2] = (offsetx2 >> 8) & 0xFF;
    data[3] = offsetx2 & 0xFF;
    st7789_send_data(data, 4);

    /*Page addresses*/
    st7789_send_cmd(ST7789_RASET);
    data[0] = (offsety1 >> 8) & 0xFF;
    data[1] = offsety1 & 0xFF;
    data[2] = (offsety2 >> 8) & 0xFF;
    data[3] = offsety2 & 0xFF;
    st7789_send_data(data, 4);

    /*Memory write*/
    st7789_send_cmd(ST7789_RAMWR);

    uint16_t width = lv_area_get_width(area);
    uint16_t height = lv_area_get_height(area);

    const uint16_t max_height = 4;
    uint16_t numbers = height / max_height;

    for (uint16_t i = 0; i < numbers; i++) {
        uint16_t size = width * max_height;
        st7789_send_color((void*)(color_map + (i * width * max_height)), size * 2);
    }
}

/**********************
 *   STATIC FUNCTIONS
 **********************/
void st7789_send_cmd(uint8_t cmd)
{
    hosal_gpio_output_set(&dc_pin, 0);
    hosal_gpio_output_set(&cs_pin, 0);
    hosal_spi_send(&spi0, &cmd, 1, HOSAL_WAIT_FOREVER);
    hosal_gpio_output_set(&cs_pin, 1);
}

void st7789_send_data(uint8_t* data, uint16_t length)
{
    hosal_gpio_output_set(&dc_pin, 1);
    hosal_gpio_output_set(&cs_pin, 0);
    if (length) {
        hosal_spi_send(&spi0, data, length, HOSAL_WAIT_FOREVER);
    }
    hosal_gpio_output_set(&cs_pin, 1);
}

void st7789_send_color(uint8_t* data, uint16_t length)
{
    st7789_send_data(data, length);
}

static void st7789_set_orientation(uint8_t orientation)
{
    // blog_assert(orientation < 4);

    const char* orientation_str[] = {
        "PORTRAIT", "PORTRAIT_INVERTED", "LANDSCAPE", "LANDSCAPE_INVERTED"
    };

    blog_info("Display orientation: %s", orientation_str[orientation]);

    uint8_t data[] =
    {
#if CONFIG_LV_PREDEFINED_DISPLAY_TTGO
    0x60, 0xA0, 0x00, 0xC0
#else
    0xC0, 0x00, 0x70, 0xA0
#endif
    };

    blog_info("0x36 command value: 0x%02X", data[orientation]);

    st7789_send_cmd(ST7789_MADCTL);
    st7789_send_data((void*)&data[orientation], 1);
}

#endif