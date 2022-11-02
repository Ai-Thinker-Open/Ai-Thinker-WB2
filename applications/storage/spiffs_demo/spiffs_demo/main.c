/*
 * @Author: Sean Kwok 1026025056@qq.com
 * @Date: 2022-10-09 10:53:46
 * @LastEditors: Sean Kwok 1026025056@qq.com
 * @LastEditTime: 2022-10-28 17:37:50
 * @FilePath: /Ai-Thinker-WB2/applications/storage/spiffs_demo/spiffs_demo/main.c
 * @Description: SPIFFS Example
 */

#include <stdio.h>
#include <hosal_flash.h>
#include <stdlib.h>
#include <blog.h>
#include <vfs.h>
#include <bl_spiffs.h>

static spiffs fs;
#define DEMO_HOSAL_FLASH_TEST_ADDR 0x001a2000
#define LOG_PAGE_SIZE 256

static u8_t spiffs_work_buf[LOG_PAGE_SIZE * 2];
static u8_t spiffs_fds[32 * 4];
static u8_t spiffs_cache_buf[(LOG_PAGE_SIZE + 32) * 4];

spiffs_config cfg = {
    .phys_size = 0x00047000,                 // use all spi flash
    .phys_addr = DEMO_HOSAL_FLASH_TEST_ADDR, // start spiffs at start of spi flash
    .phys_erase_block = 4096,                // according to datasheet
    .log_block_size = 4096,                  // let us not complicate things
    .log_page_size = LOG_PAGE_SIZE,          // as we said
    .hal_read_f = spiffs_read_flash,
    .hal_write_f = spiffs_write_flash,
    .hal_erase_f = spiffs_erase_flash,
};

void sys_spiffs_format(void)
{
    blog_info(">---format spiffs coreflash");
    SPIFFS_unmount(&fs);
    SPIFFS_format(&fs);

    int res = SPIFFS_mount(&fs,
                           &cfg,
                           spiffs_work_buf,
                           spiffs_fds,
                           sizeof(spiffs_fds),
                           spiffs_cache_buf,
                           sizeof(spiffs_cache_buf),
                           0);
    blog_info("mount res: %i", res);
    blog_info(">---format spiffs coreflash finish");
}

void spiffs_mount(void)
{
    int res = SPIFFS_mount(&fs,
                           &cfg,
                           spiffs_work_buf,
                           spiffs_fds,
                           sizeof(spiffs_fds),
                           spiffs_cache_buf,
                           sizeof(spiffs_cache_buf),
                           0);
    if (SPIFFS_ERR_NOT_A_FS == res)
    {
        blog_warn("spiffs start format");
        sys_spiffs_format();
    }
    else
    {
        blog_info("spiffs mount success");
    }
}

static void spiffs_write_read_test()
{
    char buf[13] = {0};
    // Surely, I've mounted spiffs before entering here
    spiffs_file fd = SPIFFS_open(&fs, "my_file", SPIFFS_CREAT | SPIFFS_TRUNC | SPIFFS_RDWR, 0);
    if (SPIFFS_write(&fs, fd, (u8_t *)"Hello world", 12) < 0)
        blog_info("errno %i\n", SPIFFS_errno(&fs));
    SPIFFS_close(&fs, fd);

    fd = SPIFFS_open(&fs, "my_file", SPIFFS_RDWR, 0);
    if (SPIFFS_read(&fs, fd, (u8_t *)buf, 12) < 0)
        blog_info("errno %i\n", SPIFFS_errno(&fs));
    SPIFFS_close(&fs, fd);
    blog_info("--> %s <--\n", buf);
}

void main(void)
{
    blog_set_level_log_component(BLOG_LEVEL_ALL, "spiffs_demo");
    blog_info("--> spiffs write/read demo <--");
    spiffs_mount();
    spiffs_write_read_test();
}
