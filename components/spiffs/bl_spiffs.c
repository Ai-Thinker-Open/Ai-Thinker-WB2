#include "bl_spiffs.h"

/* spi read call function type */
s32_t spiffs_read_flash(u32_t addr, u32_t size, u8_t *dst) {
    if(hosal_flash_raw_read(dst, addr, size) != 0){
        return -1;
    }
    return SPIFFS_OK;
}
/* spi write call function type */
s32_t spiffs_write_flash(u32_t addr, u32_t size, u8_t *src){
    if(hosal_flash_raw_write(src, addr, size) != 0){
        return -1;
    }
    return SPIFFS_OK;
}
/* spi erase call function type */
s32_t spiffs_erase_flash(u32_t addr, u32_t size){
    if(hosal_flash_raw_erase(addr, size) != 0){
        return -1;
    }
    return SPIFFS_OK;
}
