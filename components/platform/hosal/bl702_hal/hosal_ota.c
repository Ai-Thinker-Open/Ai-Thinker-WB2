#include <stdio.h>
#include <string.h>
#include <aos/kernel.h>
#include <hal_boot2.h>
#include <hal_sys.h>
#include <utils_sha256.h>
#include <hosal_ota.h>
#include <bl_mtd.h>

typedef struct ota_parm_s 
{
    bl_mtd_handle_t mtd_handle;
    uint32_t file_size;
    uint32_t sector_erased[((HOSAL_OTA_FILE_SIZE_MAX + 4095)/4096 + 31)/32];
}hosal_ota_parm_t;

static hosal_ota_parm_t *ota_parm = NULL; 

static int hosal_ota_erase(uint32_t offset, uint32_t len)
{
    uint32_t start_index, end_index, index;
    int ret;
    
    start_index = offset / 4096;
    end_index = (offset + len - 1) / 4096;
    
    for (index = start_index; index <= end_index; index++) {
        if ((ota_parm->sector_erased[index / 32] & (1U << (index % 32))) == 0) {
            ret = bl_mtd_erase(ota_parm->mtd_handle, index * 4096, 4096);
            if (ret) {
                printf("mtd erase failed\r\n");
                return -1;
            }
            ota_parm->sector_erased[index / 32] |= (1U << (index % 32));
        }
    }
    
    return 0;
}

int hosal_ota_start(uint32_t file_size)
{
    int ret;
    uint32_t bin_size, ota_addr;
    HALPartition_Entry_Config ptEntry;
   
    if (ota_parm != NULL) {
        printf("ota had start\r\n");
        return 0;
    }
    
    ota_parm = (hosal_ota_parm_t *)aos_malloc(sizeof(hosal_ota_parm_t));
    if (NULL == ota_parm) {
        printf("have not enough memory\r\n");
        return -1;
    }
    memset(ota_parm, 0, sizeof(hosal_ota_parm_t));

    ota_parm->file_size = file_size;

    ret = bl_mtd_open(BL_MTD_PARTITION_NAME_FW_DEFAULT, &ota_parm->mtd_handle, BL_MTD_OPEN_FLAG_BACKUP);
    if (ret) {
        aos_free(ota_parm);
        ota_parm = NULL;
        printf("Open Default FW partition failed\r\n");
        return -1;
    }

    if (hal_boot2_get_active_entries(BOOT2_PARTITION_TYPE_FW, &ptEntry)) {
        bl_mtd_close(ota_parm->mtd_handle);
        aos_free(ota_parm);
        ota_parm = NULL;
        
        printf("PtTable_Get_Active_Entries fail\r\n");
        return -1;
    }
    ota_addr = ptEntry.Address[!ptEntry.activeIndex];
    bin_size = ptEntry.maxLen[!ptEntry.activeIndex];
    
    if (file_size > bin_size) {
        printf("file size is more than partition size\r\n");
        bl_mtd_close(ota_parm->mtd_handle);
        aos_free(ota_parm);
        ota_parm = NULL;
        return -1;
    }

    printf("Starting OTA. OTA size is %lu\r\n", bin_size);
    printf("[OTA] activeIndex is %u, use OTA address=%08x\r\n", ptEntry.activeIndex, (unsigned int)ota_addr);
#if 0
    printf("[OTA] [TEST] Erase flash with size %lu...", bin_size);
 
    hal_update_mfg_ptable();
    ret = bl_mtd_erase_all(ota_parm->mtd_handle);
    if (ret) {
        bl_mtd_close(ota_parm->mtd_handle);
        aos_free(ota_parm);
        ota_parm = NULL;
        printf("erase flash error\r\n");
        return -1;
    }
    printf("Done\r\n");
#endif
    return ret;
}

int hosal_ota_update(uint32_t filesize, uint32_t offset, uint8_t *buf, uint32_t buf_len)
{
    uint32_t file_size, ret;
    if (ota_parm == NULL) {
        printf("please start ota first\r\n");
        return -1;
    }
    
    file_size = ota_parm->file_size;
    if ((filesize > file_size) || (NULL == buf) || ((offset + buf_len) > file_size) || (buf_len == 0)) {
        printf("parm is error!\r\n");
        return -1;
    }
    
    ret = hosal_ota_erase(offset, buf_len);
    if (ret) {
        printf("erase failed\r\n");
        return -1;
    }
    
    ret = bl_mtd_write(ota_parm->mtd_handle, offset, buf_len, buf);
    if (ret) {
        printf("mtd write failed\r\n");
        return -1;
    }
    
    return ret;
}

int hosal_ota_finish(uint8_t check_hash, uint8_t auto_reset)
{
    if (ota_parm == NULL) {
        printf("please start ota first\r\n");
        return -1;
    }
    uint32_t bin_size; 
    HALPartition_Entry_Config ptEntry;
   
    if (ota_parm->file_size <= 32) {
        bl_mtd_close(ota_parm->mtd_handle);
        aos_free(ota_parm);
        ota_parm = NULL;
        return -1;
    }

    bin_size = ota_parm->file_size - 32;

    if (hal_boot2_get_active_entries(BOOT2_PARTITION_TYPE_FW, &ptEntry)) {
        printf("PtTable_Get_Active_Entries fail\r\n");
        bl_mtd_close(ota_parm->mtd_handle);
        aos_free(ota_parm);
        ota_parm = NULL;
        return -1;
    }
    printf("[OTA] prepare OTA partition info\r\n");

    if (check_hash) {
#define CHECK_IMG_BUF_SIZE   512
        uint8_t sha_check[32] = {0};
        uint8_t dst_sha[32] = {0};
        uint32_t read_size;
        iot_sha256_context sha256_ctx;
        int i, offset = 0;
        uint8_t *r_buf;

        r_buf = aos_malloc(CHECK_IMG_BUF_SIZE);
        if (r_buf == NULL) {
            bl_mtd_close(ota_parm->mtd_handle);
            aos_free(ota_parm);
            ota_parm = NULL;
            printf("malloc error\r\n");
            return -1;
        }

        utils_sha256_init(&sha256_ctx);
        utils_sha256_starts(&sha256_ctx);
    
        memset(sha_check, 0, 32);
        memset(dst_sha , 0, 32);
        offset = 0;
        while (offset < bin_size) {
            (bin_size - offset >= CHECK_IMG_BUF_SIZE) ? (read_size = CHECK_IMG_BUF_SIZE):(read_size = bin_size - offset);
            if (bl_mtd_read(ota_parm->mtd_handle, offset, read_size, r_buf)) {
                printf("mtd read failed\r\n");
                bl_mtd_close(ota_parm->mtd_handle);
                aos_free(ota_parm);
                ota_parm = NULL;
                aos_free(r_buf);
                return -1;
            }
            
            utils_sha256_update(&sha256_ctx, (const uint8_t *)r_buf, read_size);
            offset += read_size;
        }

        utils_sha256_finish(&sha256_ctx, sha_check);
        aos_free(r_buf);

        bl_mtd_read(ota_parm->mtd_handle, offset, 32, dst_sha);
        for (i = 0; i < 32; i++) {
            printf("%02X", dst_sha[i]);
        }
        puts("\r\nHeader SET SHA256 Checksum:");
        for (i = 0; i < 32; i++) {
            printf("%02X", sha_check[i]);
        }

        if (memcmp(sha_check, (const void *)dst_sha, 32) != 0) {
            printf("sha256 check error\r\n");
            bl_mtd_close(ota_parm->mtd_handle);
            aos_free(ota_parm);
            ota_parm = NULL;
            utils_sha256_free(&sha256_ctx);
            return -1;
        }

        utils_sha256_free(&sha256_ctx);
    } 
    
    ptEntry.len = bin_size;
    printf("[OTA] Update PARTITION, partition len is %lu\r\n", ptEntry.len);
    hal_boot2_update_ptable(&ptEntry);
    bl_mtd_close(ota_parm->mtd_handle);
    aos_free(ota_parm);
    ota_parm = NULL;
    
    if (auto_reset) {
        hal_reboot();
    }
    
    return 0;
}

int hosal_ota_read(uint32_t offset, uint8_t *buf, uint32_t buf_len)
{
    if (ota_parm == NULL) {
        printf("please start ota first\r\n");
        return -1;
    }

    if ((NULL == buf) || ((offset + buf_len) > ota_parm->file_size) || (buf_len == 0)) {
        printf("parm is error!\r\n");
        return -1;
    }

    return bl_mtd_read(ota_parm->mtd_handle, offset, buf_len, buf);
}

