#include "ali_ota_hal.h"

#include "bl_sys.h"
#include "FreeRTOS.h"
#include "task.h"

#include <hal_boot2.h>
#include <bl_mtd.h>

static uint8_t activeID;
static HALPartition_Entry_Config otaEntry;
static bl_mtd_handle_t otaHandle = NULL;
static uint8_t ota_init_state;
static uint32_t ota_addr;
static uint32_t part_size;
static uint32_t fw_size;
static uint32_t last_offset;

static uint32_t hal_farmware_partition_init(void)
{
    int ret;

    if (ota_init_state == 0)
    {
        ret = bl_mtd_open(BL_MTD_PARTITION_NAME_FW_DEFAULT, &otaHandle, BL_MTD_OPEN_FLAG_BACKUP);
        if (ret)
        {
            printf("Open Default FW partition failed\r\n");
            return -1;
        }

        activeID = hal_boot2_get_active_partition();
        printf("[OTA] activeID:%d \r\n", activeID);

        if (hal_boot2_get_active_entries(BOOT2_PARTITION_TYPE_FW, &otaEntry))
        {
            printf("PtTable_Get_Active_Entries fail\r\n");
            return -1;
        }
        ota_addr = otaEntry.Address[!otaEntry.activeIndex];
        part_size = otaEntry.maxLen[!otaEntry.activeIndex];
        hal_update_mfg_ptable();
        // bl_mtd_erase_all(otaHandle);
        printf("hal_farmware_partition_init success, ota_addr:0x%x, part_size:0x%hal_farmware_partition_initx \r\n", ota_addr, part_size);

        ota_init_state = 1;
    }

    return 0;
}

uint32_t hal_farmware_write(uint32_t dst_offset, const void *src, uint32_t src_len)
{
    int ret;

    if (hal_farmware_partition_init() != 0)
    {
        return -1;
    }

    if (dst_offset - last_offset > 0x4000)
    {
        last_offset = dst_offset;
        printf("[OTA] write dst_offset:0x%0x \r\n", last_offset);
    }

    if (bl_mtd_write(otaHandle, dst_offset, src_len, src) < 0)
    {
        return -1;
    }
    fw_size = dst_offset + src_len;

    return 0;
}

uint32_t hal_farmware_read(uint32_t dst_offset, void *src, uint32_t size)
{
    int ret;

    if (hal_farmware_partition_init() != 0)
    {
        return -1;
    }

    if (dst_offset - last_offset > 0x4000)
    {
        last_offset = dst_offset;
        printf("[OTA] write dst_offset:0x%0x \r\n", last_offset);
    }

    if (bl_mtd_read(otaHandle, dst_offset, size, (uint8_t *)src) < 0)
    {
        return -1;
    }
    fw_size = dst_offset + size;

    return 0;
}

uint32_t hal_farmware_erase(uint32_t start_addr, uint32_t size)
{
    if (hal_farmware_partition_init() != 0)
    {
        return -1;
    }
    if (start_addr + size > part_size)
    {
        printf("[OTA] erase out of area, part_size:0x%0x \r\n", part_size);
        return -1;
    }

    printf("[OTA] erase start_addr:0x%0x size:0x%0x \r\n", start_addr, size);
    if (bl_mtd_erase(otaHandle, start_addr, size) < 0)
    {
        return -1;
    }

    return 0;
}

void hal_farmware_boot_set(void)
{
    uint8_t buff[256];

    otaEntry.len = fw_size;
    printf("[OTA] ota size:0x%0x \r\n", fw_size);
    hal_boot2_update_ptable(&otaEntry);
}

void set_reboot(void)
{
    vTaskDelay(1000);
    bl_sys_reset_por();
}