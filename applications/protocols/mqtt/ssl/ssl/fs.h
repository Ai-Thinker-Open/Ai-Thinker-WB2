#ifndef __FS_H__
#define __FS_H__

#include <stdint.h>

typedef enum {
    FS_INDEX_MQTT_NONE,
    FS_INDEX_MQTT_CERT,
    FS_INDEX_MQTT_CLI_CERT,
    FS_INDEX_MQTT_CLI_KEY,
} fs_file_index_t;

typedef struct 
{
    uint32_t length;
    uint32_t reserve;
} __attribute__((packed)) fs_media_head_t;


int fs_init(void);
/**
 * @brief
 *
 * @param buff
 * @param buff_size
 *
 * @return actual number of bytes read
 *         if file size is greater than buffer size, return -1
 */
int fs_bin_read(int32_t file_index, uint8_t *buff, uint16_t buff_size);
/**
 * @brief
 *
 * @param data
 * @param length
 *
 * @return actual number of bytes write
 */
int fs_bin_write(int32_t file_index, uint8_t *data, uint16_t length);

int fs_bin_eraser(void);

#endif
