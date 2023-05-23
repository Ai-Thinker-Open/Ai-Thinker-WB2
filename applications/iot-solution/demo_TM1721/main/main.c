#include <stdio.h>
#include <string.h>
#include <FreeRTOS.h>
#include <task.h>
#include "bl_sys.h"
#include "tm1721_driver.h"
#include <aos/kernel.h>
#include <bl_gpio.h>
#include <bl602_gpio.h>
#include <hosal_gpio.h>

#define TM1721_OPERAT_CMD 0x04
#define TM1721_DATA_CMD 0x40
#define TM1721_ADDR_CMD 0xC0
#define TM1721_SHOW_CMD 0x9F

#define SHORT_PRESS_TIMES_MIN 8
#define SHORT_PRESS_TIMES_MAX 40
#define LONG_PRESS_TIMES 280

typedef enum
{
    NONE_KEY = 0,
    TIMER_KEY = 1,
    CONFIRM_KEY,
    SWITCH_KEY,
    MODE_KEY,
    UP_KEY,
    DOWN_KEY
} key_confirm_t;
// LED----------------------------- a  b  c  d  e  f  g  h
static uint8_t NumberToLED[][8] = {{1, 1, 1, 1, 1, 1, 0, 0},  // 0
                                   {0, 1, 1, 0, 0, 0, 0, 0},  // 1
                                   {1, 1, 0, 1, 1, 0, 1, 0},  // 2
                                   {1, 1, 1, 1, 0, 0, 1, 0},  // 3
                                   {0, 1, 1, 0, 0, 1, 1, 0},  // 4
                                   {1, 0, 1, 1, 0, 1, 1, 0},  // 5
                                   {1, 0, 1, 1, 1, 1, 1, 0},  // 6
                                   {1, 1, 1, 0, 0, 0, 0, 0},  // 7
                                   {1, 1, 1, 1, 1, 1, 1, 0},  // 8
                                   {1, 1, 1, 1, 0, 1, 1, 0},  // 9
                                   {1, 0, 0, 1, 1, 1, 1, 0},  // E
                                   {0, 0, 0, 0, 0, 0, 1, 0}}; // -

void screen_bit_show_step_to_step()
{
    TM1721_init();
    uint8_t byte = 0xFF;
    uint8_t *Dbyte = calloc(1, sizeof(uint8_t) * 14);
    uint8_t *ADDR = calloc(1, sizeof(uint8_t) * 15);
    for (int i = 0; i < 16; i++)
    {
        ADDR[i] = i;
    }
    memset(Dbyte, 0, sizeof(uint8_t) * 14);
    TM1721_write_data_conytinous(0, Dbyte, 14);
    TM1721_write_data_conytinous(14, Dbyte, 2);
    vTaskDelay(portTICK_RATE_MS * 1000);
    byte = 0;
    for (int i = 0; i < 15; i++)
    {
        for (int j = 0; j < 8; j++)
        {
            byte = byte + (1 << j);
            TM1721_write_data_conytinous(i, &byte, 1);
            vTaskDelay(portTICK_RATE_MS * 500);
        }
        byte = 0;
    }
    byte = 0x0F;
    TM1721_write_data_conytinous(15, &byte, 1);
}

void main(void)
{
    uint8_t *key_read = calloc(1, sizeof(uint8_t) * 4);
    uint8_t *Dbyte = calloc(1, sizeof(uint8_t) * 16);
    key_confirm_t key_press = NONE_KEY;
    key_confirm_t key_front = NONE_KEY;
    uint8_t key_count = 0;
    TM1721_init();
    memset(Dbyte, 0xFF, 16);
    TM1721_write_data_conytinous(0, Dbyte, 14);
    TM1721_write_data_conytinous(14, Dbyte + 14, 2);
    vTaskDelay(portTICK_RATE_MS * 100);

    while (1)
    {
        TM1721_read_key_status(key_read);
        if (key_read[0] == 0x08)
        {
            key_press = TIMER_KEY;
            if (TIMER_KEY == key_front)
            {
                key_count++;
                if (key_count > LONG_PRESS_TIMES)
                {
                    printf("TIMER_KEY LONG PRESS\r\n");
                }
            }
        }
        else if (key_read[0] == 0x80)
        {
            key_press = CONFIRM_KEY;
            if (CONFIRM_KEY == key_front)
            {
                key_count++;
                if (key_count > LONG_PRESS_TIMES)
                {
                    printf("CONFIRM_KEY LONG PRESS\r\n");
                }
            }
        }
        else if (key_read[2] == 0x80)
        {
            key_press = SWITCH_KEY;
            if (SWITCH_KEY == key_front)
            {
                key_count++;
                if (key_count > LONG_PRESS_TIMES)
                {
                    printf("SWITCH_KEY LONG PRESS\r\n");
                }
            }
        }
        else if (key_read[2] == 0x08)
        {
            key_press = MODE_KEY;
            if (MODE_KEY == key_front)
            {
                key_count++;
                if (key_count > LONG_PRESS_TIMES)
                {
                    printf("MODE_KEY LONG PRESS\r\n");
                }
            }
        }
        else if (key_read[1] == 0x80)
        {
            key_press = UP_KEY;
            if (UP_KEY == key_front)
            {
                key_count++;
                if (key_count > LONG_PRESS_TIMES)
                {
                    printf("UP_KEY LONG PRESS\r\n");
                }
            }
        }
        else if (key_read[1] == 0x08)
        {
            key_press = DOWN_KEY;
            if (DOWN_KEY == key_front)
            {
                key_count++;
                if (key_count > LONG_PRESS_TIMES)
                {
                    printf("DOWN_KEY LONG PRESS\r\n");
                }
            }
        }
        else
        {
            key_press = 0;
            if (key_count > SHORT_PRESS_TIMES_MIN && key_count < SHORT_PRESS_TIMES_MAX)
            {
                switch (key_front)
                {
                case TIMER_KEY:
                    printf("TIMER_KEY SHORT PRESS\r\n");
                    break;
                case CONFIRM_KEY:
                    printf("CONFIRM_KEY SHORT PRESS\r\n");
                    break;
                case SWITCH_KEY:
                    printf("SWITCH_KEY SHORT PRESS\r\n");
                    break;
                case MODE_KEY:
                    printf("MODE_KEY SHORT PRESS\r\n");
                    break;
                case UP_KEY:
                    printf("UP_KEY SHORT PRESS\r\n");
                    break;
                case DOWN_KEY:
                    printf("DOWN_KEY SHORT PRESS\r\n");
                    break;
                default:
                    break;
                }
            }
            else
            {
                printf("prevent from wrong detect\r\n");
            }
        }
        key_count = 0;
        key_front = key_press;
        vTaskDelay(portTICK_RATE_MS * 10);
        printf("get key_press value: %02X\r\n", key_press);
    }
}