#ifndef     _OTA_HAL_H_
#define     _OTA_HAL_H_

void ai_paltform_set_calloc_free(void);
int partition_write_ota_farmware(int dst_offset, const void *src, int size);
int partition_erase(int start_addr, int size);
struct esp_partition_t* get_next_free_partition(void);
void set_boot_partition(void);
void set_reboot(_Bool ota_result);

#endif


