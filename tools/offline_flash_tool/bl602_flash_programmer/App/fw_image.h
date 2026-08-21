#ifndef FW_IMAGE_H
#define FW_IMAGE_H

#include <stdint.h>

/* eflash_loader is embedded in STM32 flash (firmware/fw_embed.S).
 * The BL602 application image is read from SD at runtime.
 */
extern const uint8_t bl602_eflash_loader[];
extern const uint8_t bl602_eflash_loader_end[];

#define BL602_EFLASH_LOADER_SIZE \
    ((uint32_t)(bl602_eflash_loader_end - bl602_eflash_loader))

#endif
