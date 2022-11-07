#include <stdio.h>
#include <string.h>
#include <errno.h>

#include "bl_boot2.h"
#include "bl_flash.h"
#include "hal_boot2.h"

#include <blog.h>
#define USER_UNUSED(a) ((void)(a))

#define PARTITION_BOOT2_RAM_ADDR_ACTIVE (0x4202DC00)
#define PARTITION_HEADER_BOOT2_RAM_ADDR (0x4202DC04)
#define PARTITION_BOOT2_FLASH_HEADER    (0x4202DD14)
#define PARTITION_BOOT2_FLASH_CONFIG    (0x4202DD18)
#define PARTITION_MAGIC                 (0x54504642)
#define PARTITION_FW_PART_NAME          "FW"
#define PARTITION_FW_PART_HEADER_SIZE   (0x1000)
//TODO use header file from project
#define FW_XIP_ADDRESS                  (0x23000000)

static struct {
    uint8_t partition_active_idx;
    uint8_t pad[3];
    PtTable_Stuff_Config table;
} boot2_partition_table;//XXX Dont change the name of varaible, since we refer this boot2_partition_table in linker script

void hal_boot2_set_ptable_opt(HALpPtTable_Flash_Erase erase, HALpPtTable_Flash_Write write)
{
    PtTable_Set_Flash_Operation((pPtTable_Flash_Erase)erase, (pPtTable_Flash_Write)write);
}

int hal_boot2_update_ptable(HALPartition_Entry_Config* ptEntry_hal)
{
    int ret;
    //FIXME force covert
    PtTable_Entry_Config* ptEntry = (PtTable_Entry_Config*)ptEntry_hal;

    ptEntry->activeIndex = !ptEntry->activeIndex;
    (ptEntry->age)++;
    ret = PtTable_Update_Entry(NULL, !boot2_partition_table.partition_active_idx, &boot2_partition_table.table, ptEntry);
    return ret;
}

static void _dump_partition(void)
{
    int i;
    PtTable_Stuff_Config* part = &boot2_partition_table.table;

    USER_UNUSED(i);
    USER_UNUSED(part);

    blog_print("======= PtTable_Config @%p=======", part);
    blog_print("magicCode 0x%08X;", (unsigned int)(part->ptTable.magicCode));
    blog_print(" version 0x%04X;", part->ptTable.version);
    blog_print(" entryCnt %u;", part->ptTable.entryCnt);
    blog_print(" age %lu;", part->ptTable.age);
    blog_print(" crc32 0x%08X", (unsigned int)part->ptTable.crc32);

    blog_print("idx  type device activeIndex     name   Address[0]  Address[1]  Length[0]   Length[1]   age");
    for (i = 0; i < part->ptTable.entryCnt; i++) {
        blog_print("[%02d] ", i);
        blog_print(" %02u", part->ptEntries[i].type);
        blog_print("     %u", part->ptEntries[i].device);
        blog_print("         %u", part->ptEntries[i].activeIndex);
        blog_print("      %8s", part->ptEntries[i].name);
        blog_print("  %p", (void*)(part->ptEntries[i].Address[0]));
        blog_print("  %p", (void*)(part->ptEntries[i].Address[1]));
        blog_print("  %p", (void*)(part->ptEntries[i].maxLen[0]));
        blog_print("  %p", (void*)(part->ptEntries[i].maxLen[1]));
        blog_print("  %lu", (part->ptEntries[i].age));
    }
}

uint32_t hal_boot2_get_flash_addr(void)
{
    extern uint8_t __boot2_pt_addr_src;

    return (uint32_t)(&__boot2_pt_addr_src + 4 +
                      sizeof(PtTable_Config) + sizeof(PtTable_Entry_Config) * boot2_partition_table.table.ptTable.entryCnt + 4);
}


int hal_boot2_partition_bus_addr(const char* name, uint32_t* addr0, uint32_t* addr1, uint32_t* size0, uint32_t* size1, int* active)
{
    int i;
    uint32_t addr0_t, addr1_t;

    if (PARTITION_MAGIC != boot2_partition_table.table.ptTable.magicCode) {
        return -EIO;
    }

    /*Get Target partition*/
    for (i = 0; i < boot2_partition_table.table.ptTable.entryCnt; i++) {
        if (0 == strcmp((char*)&(boot2_partition_table.table.ptEntries[i].name[0]), name)) {
            break;
        }
    }
    if (boot2_partition_table.table.ptTable.entryCnt == i) {
        return -ENOENT;
    }
    addr0_t = boot2_partition_table.table.ptEntries[i].Address[0];
    addr1_t = boot2_partition_table.table.ptEntries[i].Address[1];
    *active = boot2_partition_table.table.ptEntries[i].activeIndex;
    *size0 = boot2_partition_table.table.ptEntries[i].maxLen[0];
    *size1 = boot2_partition_table.table.ptEntries[i].maxLen[1];

    /*cal partition address*/
    for (i = 0; i < boot2_partition_table.table.ptTable.entryCnt; i++) {
        if (0 == strcmp((char*)&(boot2_partition_table.table.ptEntries[i].name[0]), PARTITION_FW_PART_NAME)) {
            break;
        }
    }
    if (boot2_partition_table.table.ptTable.entryCnt == i) {
        return -ECANCELED;
    }
    /*Make sure target partition is after FW partition*/
    if ((addr0_t && (addr0_t < boot2_partition_table.table.ptEntries[i].Address[0])) ||
         (addr0_t && (addr0_t < boot2_partition_table.table.ptEntries[i].Address[1])) ||
         (addr1_t && (addr1_t < boot2_partition_table.table.ptEntries[i].Address[0])) ||
         (addr1_t && (addr1_t < boot2_partition_table.table.ptEntries[i].Address[1]))) {
        return -EINVAL;
    }
    if ((0 != boot2_partition_table.table.ptEntries[i].activeIndex) &&
        (1 != boot2_partition_table.table.ptEntries[i].activeIndex)) {
        return -EFAULT;
    }
    //*addr0 = addr0_t - boot2_partition_table.table.ptEntries[i].Address[boot2_partition_table.table.ptEntries[i].activeIndex] - PARTITION_FW_PART_HEADER_SIZE + FW_XIP_ADDRESS;
    //*addr1 = addr1_t - boot2_partition_table.table.ptEntries[i].Address[boot2_partition_table.table.ptEntries[i].activeIndex] - PARTITION_FW_PART_HEADER_SIZE + FW_XIP_ADDRESS;
    // Use flash image offset to suport firmware booting from either FW entry or mfg entry
    *addr0 = addr0_t - SF_Ctrl_Get_Flash_Image_Offset() + FW_XIP_ADDRESS;
    *addr1 = addr1_t - SF_Ctrl_Get_Flash_Image_Offset() + FW_XIP_ADDRESS;

    return 0;
}

int hal_boot2_partition_bus_addr_active(const char* name, uint32_t* addr, uint32_t* size)
{
    uint32_t addr0, addr1;
    uint32_t size0, size1;
    int active, ret;

    if ((ret = hal_boot2_partition_bus_addr(name, &addr0, &addr1, &size0, &size1, &active))) {
        return ret;
    }
    *addr = active ? addr1 : addr0;
    *size = active ? size1 : size0;

    return 0;
}

int hal_boot2_partition_bus_addr_inactive(const char* name, uint32_t* addr, uint32_t* size)
{
    uint32_t addr0, addr1;
    uint32_t size0, size1;
    int active, ret;

    if ((ret = hal_boot2_partition_bus_addr(name, &addr0, &addr1, &size0, &size1, &active))) {
        return ret;
    }
    *addr = active ? addr0 : addr1;
    *size = active ? size0 : size1;

    return 0;
}

int hal_boot2_partition_addr(const char* name, uint32_t* addr0, uint32_t* addr1, uint32_t* size0, uint32_t* size1, int* active)
{
    int i;

    if (PARTITION_MAGIC != boot2_partition_table.table.ptTable.magicCode) {
        return -EIO;
    }

    /*Get Target partition*/
    for (i = 0; i < boot2_partition_table.table.ptTable.entryCnt; i++) {
        if (0 == strcmp((char*)&(boot2_partition_table.table.ptEntries[i].name[0]), name)) {
            break;
        }
    }
    if (boot2_partition_table.table.ptTable.entryCnt == i) {
        return -ENOENT;
    }
    *addr0 = boot2_partition_table.table.ptEntries[i].Address[0];
    *addr1 = boot2_partition_table.table.ptEntries[i].Address[1];
    *size0 = boot2_partition_table.table.ptEntries[i].maxLen[0];
    *size1 = boot2_partition_table.table.ptEntries[i].maxLen[1];
    *active = boot2_partition_table.table.ptEntries[i].activeIndex;

    return 0;
}

int hal_boot2_partition_addr_active(const char* name, uint32_t* addr, uint32_t* size)
{
    uint32_t addr0, addr1;
    uint32_t size0, size1;
    int active, ret;

    if ((ret = hal_boot2_partition_addr(name, &addr0, &addr1, &size0, &size1, &active))) {
        return ret;
    }
    *addr = active ? addr1 : addr0;
    *size = active ? size1 : size0;

    return 0;
}

int hal_boot2_partition_addr_inactive(const char* name, uint32_t* addr, uint32_t* size)
{
    uint32_t addr0, addr1;
    uint32_t size0, size1;
    int active, ret;

    if ((ret = hal_boot2_partition_addr(name, &addr0, &addr1, &size0, &size1, &active))) {
        return ret;
    }
    *addr = active ? addr0 : addr1;
    *size = active ? size0 : size1;

    return 0;
}

uint8_t hal_boot2_get_active_partition(void)
{
    return boot2_partition_table.partition_active_idx;
}

int hal_boot2_get_active_entries_byname(uint8_t* name, HALPartition_Entry_Config* ptEntry_hal)
{
    PtTable_Entry_Config* ptEntry = (PtTable_Entry_Config*)ptEntry_hal;
    if (PtTable_Get_Active_Entries_By_Name(&boot2_partition_table.table, name, ptEntry)) {
        return -1;
    }
    return 0;
}

int hal_boot2_get_active_entries(int type, HALPartition_Entry_Config* ptEntry_hal)
{
    PtTable_Entry_Config* ptEntry = (PtTable_Entry_Config*)ptEntry_hal;
    if (PtTable_Get_Active_Entries(&boot2_partition_table.table, type, ptEntry)) {
        return -1;
    }
    return 0;
}

int hal_boot2_dump(void)
{
    _dump_partition();
    return 0;
}

int hal_boot2_init(void)
{
    blog_info("[HAL] [BOOT2] Active Partition[%u] consumed %d Bytes",
            boot2_partition_table.partition_active_idx,
            sizeof(PtTable_Config) + sizeof(PtTable_Entry_Config) * boot2_partition_table.table.ptTable.entryCnt + 4
    );
    _dump_partition();
    bl_flash_config_update();

    return 0;
}

#define     PT_OTA_TYPE_NAME         "FW" 
#define     PT_MEDIA_TYPE_NAME       "mfg"
void hal_update_mfg_ptable(void)
{
    PtTable_Entry_Config ptEntry_fw;
    PtTable_Entry_Config ptEntry_media;

    printf("update mfg table.");
    printf("====================");
    if (0 == hal_boot2_get_active_entries_byname((uint8_t*)PT_OTA_TYPE_NAME, (HALPartition_Entry_Config*)(&ptEntry_fw))) {       // ota
        if (0 == hal_boot2_get_active_entries_byname((uint8_t*)PT_MEDIA_TYPE_NAME, (HALPartition_Entry_Config*)(&ptEntry_media))) { // media
            if (ptEntry_fw.Address[1] == ptEntry_media.Address[0]) {

                memset(ptEntry_media.name, 0, sizeof(ptEntry_media.name));
                PtTable_Update_Entry(NULL, !boot2_partition_table.partition_active_idx, &boot2_partition_table.table, &ptEntry_media);

                printf("===== update mfg partition =====");
            }
        }
    }

    printf("====================");
    printf("update mfg table.");
}

