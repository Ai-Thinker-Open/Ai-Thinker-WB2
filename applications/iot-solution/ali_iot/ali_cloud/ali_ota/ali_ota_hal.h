#ifndef __ALI_OTA_H__
#define __ALI_OTA_H__

#include <stdint.h>
#include <stdio.h>
#include <string.h>

uint32_t hal_farmware_write(uint32_t dst_offset, const void *src, uint32_t src_len);
uint32_t hal_farmware_read(uint32_t dst_offset, void *src, uint32_t size);
uint32_t hal_farmware_erase(uint32_t start_addr, uint32_t size);
void hal_farmware_boot_set(void);
void set_reboot(void);

#endif
