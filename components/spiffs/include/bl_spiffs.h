#ifndef __BL_SPIFFS_API_H__
#define __BL_SPIFFS_API_H__

#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <hosal_flash.h>
#include <spiffs.h>

/* spi read call function type */
s32_t spiffs_read_flash(u32_t addr, u32_t size, u8_t *dst);
/* spi write call function type */
s32_t spiffs_write_flash(u32_t addr, u32_t size, u8_t *src);
/* spi erase call function type */
s32_t spiffs_erase_flash(u32_t addr, u32_t size);

#endif /*__BL_SPIFFS_API_H__*/
