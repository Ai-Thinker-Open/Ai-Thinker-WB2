#include <stdio.h>

#include <FreeRTOS.h>
#include <task.h>

#include <hosal_spi.h>
#include <bl_gpio.h>
#include <blog.h>

#include <u8g2.h>

static uint8_t u8x8_bl602_spi(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr)
{
    static hosal_spi_dev_t spi0 = {
        .cb = NULL,
        .config = {
            .dma_enable = 0,
            .freq = 10000000,
            .mode = HOSAL_SPI_MODE_MASTER,
            .pin_clk = 3,
            .pin_miso = 17,
            .pin_mosi = 12,
            .polar_phase = 0,
        },
        .p_arg = NULL,
        .port = 0,
    };

    switch (msg)
    {
        case U8X8_MSG_BYTE_INIT: {
            bl_gpio_enable_output(5, 1, 0);
            return !hosal_spi_init(&spi0);
        }

        case U8X8_MSG_BYTE_SEND: {
            return !hosal_spi_send(&spi0, arg_ptr, arg_int, HOSAL_WAIT_FOREVER);
        }

        case U8X8_MSG_BYTE_START_TRANSFER: {
            return !hosal_spi_set_cs(4, 0);
        }

        case U8X8_MSG_BYTE_END_TRANSFER: {
            return !hosal_spi_set_cs(4, 1);
        }

        case U8X8_MSG_BYTE_SET_DC: {
            return !bl_gpio_output_set(5, arg_int);
        }

        case U8X8_MSG_DELAY_MILLI: {
            vTaskDelay(portTICK_RATE_MS * arg_int);
            return 1;
        }

        default: {
            blog_error("%s: unknown message %u", __func__ , msg);
            return 0;
        }
    }
}

int main(void)
{
    static u8g2_t u8g2;
    u8g2_Setup_ssd1306_128x64_noname_f(&u8g2, U8G2_R0, u8x8_bl602_spi, u8x8_bl602_spi);

    u8g2_InitDisplay(&u8g2);
	u8g2_ClearBuffer(&u8g2);
	u8g2_SetPowerSave(&u8g2, 0);

	u8g2_SetFont(&u8g2, u8g2_font_ncenB08_tr);
	u8g2_DrawStr(&u8g2, 1, 14, "Ai-Thinker");

	u8g2_SetFont(&u8g2, u8g2_font_unifont_t_symbols);
	u8g2_DrawGlyph(&u8g2, 112, 56, 0x2603);

	u8g2_SendBuffer(&u8g2);

    for (;;) {
        vTaskDelay(portTICK_RATE_MS * 10000);
    }

    return 0;
}
