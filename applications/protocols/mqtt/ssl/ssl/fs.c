#include "fs.h"
#include "fs_cfg.h"

#include <stdio.h>
#include <vfs.h>
#include "bl_mtd.h"

static bl_mtd_handle_t handle_media;

static int romfs_read(char *filename, uint8_t *buff, uint16_t buff_size)
{
    int fd;
    int len;
    int ret;
    char tmp[32];

    fd = aos_open(filename, 0);
    if (fd < 0) {
        printf("[FS] open error ret:%d\r\n", fd);
        return -1;
    }

    len = aos_lseek(fd, 0L, SEEK_END);
    if (len > buff_size) {
        printf("[FS] file size:%d buff size:%d\r\n", len, buff_size);
        return -1;
    }

    aos_lseek(fd, 0L, SEEK_SET);
    ret = aos_read(fd, buff, len);
    if (ret != len) {
        printf("[FS] read ret:%d\r\n", ret);
        return -1;
    }
    aos_close(fd);

    return len;
}

static int media_read(uint32_t addr, uint32_t block_size, uint8_t *buff, uint16_t buff_size)
{
    int len;
    int ret;
    char tmp[32];
    fs_media_head_t head;

    if (NULL == handle_media) {
        printf("[FS] uninit\r\n");
        return -1;
    }

    if (bl_mtd_read(handle_media, addr, sizeof(head), &head) != 0) {
        printf("[FS] read head fail\r\n");
        return -1;
    }

    len = head.length;
    if (len > buff_size || len > (block_size - sizeof(head))) {
        printf("[FS] file size:%d buff size:%d\r\n", len, buff_size);
        return -1;
    }

    if (bl_mtd_read(handle_media, addr + sizeof(head), len, buff) != 0) {
        printf("[FS] read head fail\r\n");
        return -1;
    }

    return len;
}

static int media_write(uint32_t addr, uint32_t block_size, uint8_t *buff, uint16_t size)
{
    int len;
    int ret;
    char tmp[32];
    fs_media_head_t head = {0};

    if (NULL == handle_media) {
        printf("[FS] uninit\r\n");
        return -1;
    }

    if (size > (block_size - sizeof(head))) {
        printf("[FS] file size:%d block size:%d\r\n", size, block_size);
        return -1;
    }

    bl_mtd_erase(handle_media, addr, block_size);

    head.length = size;
    if (bl_mtd_write(handle_media, addr + sizeof(head), size, buff) != 0) {
        printf("[FS] write data fail\r\n");
        return -1;
    }

    if (bl_mtd_write(handle_media, addr, sizeof(head), &head) != 0) {
        printf("[FS] write head fail\r\n");
        return -1;
    }

    return size;
}

int fs_init(void)
{
#if FS_SYS_MEDIA
    if (bl_mtd_open(BL_MTD_PARTITION_NAME_ROMFS, &handle_media, BL_MTD_OPEN_FLAG_BUSADDR) != 0) {
        printf("[FS] open media fail\r\n");
        return -1;
    }

    return 0;
#else
    return 0;
#endif
}

int fs_bin_read(int32_t file_index, uint8_t *buff, uint16_t buff_size)
{
#if FS_SYS_MEDIA
    uint32_t addr;
    uint32_t block_size;

    switch (file_index) {
        case FS_INDEX_MQTT_CERT:
            addr = FS_MQTT_CERT_ADDR;
            block_size = FS_MQTT_CERT_SIZE;
            break;
        case FS_INDEX_MQTT_CLI_CERT:
            addr = FS_MQTT_CLI_CERT_ADDR;
            block_size = FS_MQTT_CLI_CERT_SIZE;
            break;
        case FS_INDEX_MQTT_CLI_KEY:
            addr = FS_MQTT_CLI_KEY_ADDR;
            block_size = FS_MQTT_CLI_KEY_SIZE;
            break;
        default:
            printf("[FS] unknown:%d\r\n", file_index);
            return -1;
    }

    return media_read(addr, block_size, buff, buff_size);
#else
    char *filename = NULL;
    switch (file_index) {
        case FS_INDEX_MQTT_CERT:
            filename = FS_MQTT_CERT_NAME;
            break;
        case FS_INDEX_MQTT_CLI_CERT:
            filename = FS_MQTT_CLI_CERT_NAME;
            break;
        case FS_INDEX_MQTT_CLI_KEY:
            filename = FS_MQTT_CLI_KEY_NAME;
            break;
        default:
            printf("[FS] unknown:%d\r\n", file_index);
            return -1;
    }
    return romfs_read(filename, buff, buff_size);
#endif
}

int fs_bin_write(int32_t file_index, uint8_t *data, uint16_t length)
{
#if FS_SYS_MEDIA
    uint32_t addr;
    uint32_t block_size;

    switch (file_index) {
        case FS_INDEX_MQTT_CERT:
            addr = FS_MQTT_CERT_ADDR;
            block_size = FS_MQTT_CERT_SIZE;
            break;
        case FS_INDEX_MQTT_CLI_CERT:
            addr = FS_MQTT_CLI_CERT_ADDR;
            block_size = FS_MQTT_CLI_CERT_SIZE;
            break;
        case FS_INDEX_MQTT_CLI_KEY:
            addr = FS_MQTT_CLI_KEY_ADDR;
            block_size = FS_MQTT_CLI_KEY_SIZE;
            break;
        default:
            printf("[FS] unknown:%d\r\n", file_index);
            return -1;
    }

    return media_write(addr, block_size, data, length);
#else
    return -1;
#endif
}

int fs_bin_eraser(void)
{
#if FS_SYS_MEDIA
    if (NULL == handle_media) {
        printf("[FS] uninit\r\n");
        return -1;
    }

    bl_mtd_erase(handle_media, FS_MQTT_CERT_ADDR, 0x3000);

    return 0;
#else
    return -1;
#endif
}
