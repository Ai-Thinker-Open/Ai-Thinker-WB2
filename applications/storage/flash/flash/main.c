/*
 * @Author: Sean Kwok 1026025056@qq.com
 * @Date: 2022-10-09 10:53:46
 * @LastEditors: Sean Kwok 1026025056@qq.com
 * @LastEditTime: 2022-10-31 09:45:55
 * @FilePath: /Ai-Thinker-WB2/applications/storage/flash/flash/main.c
 * @Description: Flash Write/Read Example
 */

#include <stdio.h>
#include <hosal_flash.h>
#include <stdlib.h>
#include <blog.h>

#define DEMO_HOSAL_FLASH_TEST_BLOCK 1024
#define DEMO_HOSAL_FLASH_TEST_ADDR 0x192000
#define DEMO_HOSAL_FLASH_TEST_LEN  1024
#define DEMO_HOSAL_FLASH_TEST_BLOCK 1024

/**
 * hal flash R/W test demo
 */
void flash_partition_rw(void)
{
    int i;
    uint32_t offset = 0;
    uint8_t *p_wbuf, *p_rbuf;
    hosal_flash_dev_t *p_flash;
    hosal_logic_partition_t part;

    /* flash partition open use address 0 */
    p_flash = hosal_flash_open("DATA", HOSAL_FLASH_FLAG_ADDR_0);

    /* Open the partition table and use the bus physical address of flash. */
    // p_flash = hosal_flash_open("DATA", HOSAL_FLASH_FLAG_ADDR_0 | HOSAL_FLASH_FLAG_BUSADDR);


    if (p_flash == NULL) {
        blog_info("no partition name DATA!");
        return;
    }
    
    /* get flash partition info */
    hosal_flash_info_get(p_flash, &part);
    blog_info("partition name         : %s", part.partition_description);
    blog_info("partition start address: 0x%08x", part.partition_start_addr);
    blog_info("partition length       : %d", part.partition_length);

    p_wbuf = malloc(DEMO_HOSAL_FLASH_TEST_BLOCK);
    if (p_wbuf == NULL) {
        blog_info("no memory!");
        return;
    }

    p_rbuf = malloc(DEMO_HOSAL_FLASH_TEST_BLOCK);
    if (p_rbuf == NULL) {
        blog_info("no memory!");
        return;
    }

    for (i = 0; i < DEMO_HOSAL_FLASH_TEST_BLOCK; i++) {
        p_wbuf[i] = i & 0xff;
    }

    /* erase flash partition and write data */
    offset = 0;
    hosal_flash_erase_write(p_flash, &offset, p_wbuf, DEMO_HOSAL_FLASH_TEST_BLOCK);
    
    /* read flash partition data */
    offset = 0;
    hosal_flash_read(p_flash, &offset, p_rbuf, DEMO_HOSAL_FLASH_TEST_BLOCK);
    
    /* check flash read data */
    if (memcmp(p_rbuf, p_wbuf, DEMO_HOSAL_FLASH_TEST_BLOCK) != 0) {
        blog_info("hal flash R/W failed!");
    } else {
        blog_info("hal flash partition data R/W successful!");
    }
    
    /* close the flash partition and free buf */
    hosal_flash_close(p_flash);
    free(p_wbuf);
    free(p_rbuf);
}

/**
 * hal flash R/W test demo
 */

void flash_raw_addr_rw(void)
{
    int i;
    uint8_t *p_wbuf, *p_rbuf;

    p_wbuf = malloc(DEMO_HOSAL_FLASH_TEST_LEN);
    if (p_wbuf == NULL) {
        blog_info("no memory!");
        return;
    }

    p_rbuf = malloc(DEMO_HOSAL_FLASH_TEST_LEN);
    if (p_rbuf == NULL) {
        blog_info("no memory!");
        return;
    }

    for (i = 0; i < DEMO_HOSAL_FLASH_TEST_LEN; i++) {
        p_wbuf[i] = i & 0xff;
    }
    hosal_flash_raw_write(p_wbuf, DEMO_HOSAL_FLASH_TEST_ADDR, DEMO_HOSAL_FLASH_TEST_LEN);
    hosal_flash_raw_read(p_rbuf, DEMO_HOSAL_FLASH_TEST_ADDR, DEMO_HOSAL_FLASH_TEST_LEN);    
    /* check flash read data */
    if (memcmp(p_rbuf, p_wbuf, DEMO_HOSAL_FLASH_TEST_LEN) != 0) {
        blog_info("hal flash addr R/W failed!");
    } else {
        blog_info("hal flash addr R/W successful!");
    }
    free(p_wbuf);
    free(p_rbuf);
}


void main(void)
{
    blog_info("--------flash write/read demo--------");
    flash_partition_rw();
    flash_raw_addr_rw();
}
