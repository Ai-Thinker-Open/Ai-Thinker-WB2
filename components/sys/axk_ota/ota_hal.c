#include <stdio.h>
#include <string.h>

#include "bl_sys.h"
#include "FreeRTOS.h"
#include "task.h"

#include <hal_boot2.h>
#include <bl_mtd.h>
// #include <hal_sys.h>

static uint8_t activeID;
static HALPartition_Entry_Config otaEntry;
static bl_mtd_handle_t otaHandle = NULL;
static uint8_t ota_init_state;
static uint32_t ota_addr;
static uint32_t part_size;
static uint32_t fw_size;
static uint32_t last_offset;

static int init_ota_partition(void)
{
    int ret;

    if (ota_init_state == 0) {
        ret = bl_mtd_open(BL_MTD_PARTITION_NAME_FW_DEFAULT, &otaHandle, BL_MTD_OPEN_FLAG_BACKUP);
        if (ret) {
            printf("Open Default FW partition failed\r\n");
            return -1;
        }

        activeID = hal_boot2_get_active_partition();
        printf("[OTA] activeID:%d \r\n", activeID);

        if (hal_boot2_get_active_entries(BOOT2_PARTITION_TYPE_FW, &otaEntry)) {
            printf("PtTable_Get_Active_Entries fail\r\n");
            return -1;
        }
        ota_addr = otaEntry.Address[!otaEntry.activeIndex];
        part_size = otaEntry.maxLen[!otaEntry.activeIndex];
        hal_update_mfg_ptable();
        // bl_mtd_erase_all(otaHandle);
        printf("init_ota_partition success, ota_addr:0x%x, part_size:0x%x \r\n",(unsigned int) ota_addr, (unsigned int)part_size);

        ota_init_state = 1;
    }
    
    return 0;
}

#if defined(MBEDTLS_RANDOM_CONFIG) 
/*描述：硬件随机接口，由各个平台适配，根据output_len参数生成多少位随机数
*p_rng：rng随机数句柄，无需处理
*output:指向随机数存储空间指针
*output_len:生产随机数位数
*/
int ai_random(void *p_rng, unsigned char *output, long unsigned int output_len)
{
    ( void ) p_rng;

    return 0;
}
#endif

/*
*描述：设置自己内存实现的API
*当前该API只有RTL平台需要使用，其它平台无需实现
*/
void ai_paltform_set_calloc_free(void)
{
    // mbedtls_platform_set_calloc_free(my_calloc, vPortFree);
    return;
}

/*******************************
*描述：写flash回调函数，由各平台适配
*dst_offset：偏移地址
*src：写flash的数据
*size：数据长度
*return: -1:failed   0:success
********************************/
int partition_write_ota_farmware(int dst_offset, const void *src, int size)
{
    int ret;

    if (init_ota_partition() != 0) {
        return -1;
    }

    if (dst_offset - last_offset > 0x4000) {
        last_offset = dst_offset;
        printf("[OTA] write dst_offset:0x%0x \r\n", (unsigned int)last_offset);
    }

    bl_mtd_write(otaHandle, dst_offset, size, src);
    fw_size = dst_offset + size;

    return 0;
}


/*******************************
*描述：擦除flash回调函数，由各平台适配
*start_addr：擦除起始地址
*size：擦除长度
*return: -1:failed   0:success
********************************/
int partition_erase(int start_addr, int size)
{
    if (init_ota_partition() != 0) {
        return -1;
    }
    if (start_addr + size > part_size) {
        printf("[OTA] erase out of area, part_size:0x%0x \r\n", (unsigned int)part_size);
        return -1;
    }

    printf("[OTA] erase start_addr:0x%0x size:0x%0x \r\n", start_addr, size);
    bl_mtd_erase(otaHandle, start_addr, size);

    return 0;
}


/*******************************
*描述：设置启动分区，由各平台适配
********************************/
void set_boot_partition(void)
{
    uint8_t buff[256];

    otaEntry.len = fw_size;
    printf("[OTA] ota size:0x%0x \r\n", (unsigned int)fw_size);
    hal_boot2_update_ptable(&otaEntry);
}

/*******************************
*描述：重启，由各平台适配
*ota_result:    true:OTA成功
                false:OTA失败
********************************/
void set_reboot(_Bool ota_result)
{
    vTaskDelay(1000);
    bl_sys_reset_por();
}
