#include "sd_file_demo.h"
#include "main.h"
#include "fatfs.h"
#include "isp_log.h"
#include "bootrom_isp.h"

#include <stdio.h>
#include <string.h>
#include <ctype.h>

extern UART_HandleTypeDef huart1;

#ifndef SD_DEMO_FILE
#define SD_DEMO_FILE "Combo_24.1.1_20260630.bin"
#endif

#ifndef SD_LOADER_FILE
#define SD_LOADER_FILE "eflash_loader.bin"
#endif

static FIL s_loader_file;

static const char *sd_entry_name(FILINFO *fno)
{
#if _USE_LFN
    if (fno->lfname != NULL && fno->lfname[0] != 0) {
        return fno->lfname;
    }
#endif
    return fno->fname;
}

static int sd_name_ieq(const char *a, const char *b)
{
    while (*a && *b) {
        if (tolower((unsigned char)*a) != tolower((unsigned char)*b)) {
            return 0;
        }
        a++;
        b++;
    }
    return *a == *b;
}

static int sd_has_ext_bin(const char *name)
{
    size_t n = strlen(name);
    if (n < 4) {
        return 0;
    }
    return sd_name_ieq(name + n - 4, ".bin");
}

static int sd_contains_i(const char *hay, const char *needle)
{
    size_t nlen = strlen(needle);
    if (nlen == 0) {
        return 1;
    }
    for (; *hay; hay++) {
        size_t i;
        for (i = 0; i < nlen; i++) {
            if (hay[i] == 0) {
                break;
            }
            if (tolower((unsigned char)hay[i]) != tolower((unsigned char)needle[i])) {
                break;
            }
        }
        if (i == nlen) {
            return 1;
        }
    }
    return 0;
}

static int sd_is_loader_name(const char *name)
{
    return sd_contains_i(name, "eflash_loader");
}

/* 1 = exact name, 2 = fallback, 0 = none.
 * skip_loader: do not pick eflash_loader as the combo-image fallback.
 */
static int sd_find_open_name(const char *want, char *out, size_t out_sz, int skip_loader)
{
    DIR dir;
    FILINFO fno;
    FRESULT fr;
    char fallback[80];
    int have_fallback = 0;
#if _USE_LFN
    char lfn[_MAX_LFN + 1];
    fno.lfname = lfn;
    fno.lfsize = sizeof(lfn);
#endif

    fallback[0] = 0;
    fr = f_opendir(&dir, USERPath);
    if (fr != FR_OK) {
        return 0;
    }

    for (;;) {
        const char *nm;
#if _USE_LFN
        lfn[0] = 0;
#endif
        fr = f_readdir(&dir, &fno);
        if (fr != FR_OK || fno.fname[0] == 0) {
            break;
        }
        if (fno.fattrib & AM_DIR) {
            continue;
        }
        nm = sd_entry_name(&fno);
        if (sd_name_ieq(nm, want) || sd_name_ieq(fno.fname, want)) {
            snprintf(out, out_sz, "%s%s", USERPath, nm);
            f_closedir(&dir);
            return 1;
        }
        if (!have_fallback && sd_has_ext_bin(nm) && !(skip_loader && sd_is_loader_name(nm))) {
            snprintf(fallback, sizeof(fallback), "%s%s", USERPath, nm);
            have_fallback = 1;
        }
    }
    f_closedir(&dir);

    if (have_fallback) {
        snprintf(out, out_sz, "%s", fallback);
        return 2;
    }
    return 0;
}

static int sd_find_loader(char *out, size_t out_sz)
{
    static const char *const names[] = {
        SD_LOADER_FILE,
        "bl602_eflash_loader.bin",
        "bl602_eflash_loader_40m.bin",
    };
    unsigned i;
    DIR dir;
    FILINFO fno;
    FRESULT fr;
#if _USE_LFN
    char lfn[_MAX_LFN + 1];
    fno.lfname = lfn;
    fno.lfsize = sizeof(lfn);
#endif

    for (i = 0; i < (sizeof(names) / sizeof(names[0])); i++) {
        if (sd_find_open_name(names[i], out, out_sz, 1) == 1) {
            return 1;
        }
    }

    /* Any filename containing "eflash_loader" */
    fr = f_opendir(&dir, USERPath);
    if (fr != FR_OK) {
        return 0;
    }
    for (;;) {
        const char *nm;
#if _USE_LFN
        lfn[0] = 0;
#endif
        fr = f_readdir(&dir, &fno);
        if (fr != FR_OK || fno.fname[0] == 0) {
            break;
        }
        if (fno.fattrib & AM_DIR) {
            continue;
        }
        nm = sd_entry_name(&fno);
        if (sd_is_loader_name(nm) || sd_is_loader_name(fno.fname)) {
            snprintf(out, out_sz, "%s%s", USERPath, nm);
            f_closedir(&dir);
            return 1;
        }
    }
    f_closedir(&dir);
    return 0;
}

static void sd_list_root(void)
{
    DIR dir;
    FILINFO fno;
    FRESULT fr;
#if _USE_LFN
    char lfn[_MAX_LFN + 1];
    fno.lfname = lfn;
    fno.lfsize = sizeof(lfn);
#endif

    fr = f_opendir(&dir, USERPath);
    if (fr != FR_OK) {
        ISP_LOG("opendir %s fail: %d\r\n", USERPath, (int)fr);
        return;
    }

    ISP_LOG("---- SD root ----\r\n");
    for (;;) {
#if _USE_LFN
        lfn[0] = 0;
#endif
        fr = f_readdir(&dir, &fno);
        if (fr != FR_OK || fno.fname[0] == 0) {
            break;
        }
        ISP_LOG("  %c %lu  %s",
                (fno.fattrib & AM_DIR) ? 'D' : 'F',
                (unsigned long)fno.fsize,
                sd_entry_name(&fno));
        if (fno.fname[0] && strcmp(sd_entry_name(&fno), fno.fname) != 0) {
            ISP_LOG("  [%s]", fno.fname);
        }
        ISP_LOG("\r\n");
    }
    f_closedir(&dir);
    ISP_LOG("-----------------\r\n");
}

void sd_isp_flash_run(void)
{
    FRESULT fr;
    char loader_path[80];
    char image_path[80];
    int how;
    int rc;
    int loader_open = 0;
    int image_open = 0;

    ISP_LOG("\r\n==== SD -> BL602 ISP flash ====\r\n");
    ISP_LOG("SPI1 PA5=SCK PA6=MISO PA7=MOSI PA4=CS\r\n");
    ISP_LOG("ISP  PA9=TX PA10=RX PA11=DTR(BOOT) PA12=RTS(EN)\r\n");
    ISP_LOG("drive=%s loader=%s image=%s\r\n", USERPath, SD_LOADER_FILE, SD_DEMO_FILE);

    HAL_Delay(200);

    fr = f_mount(&USERFatFS, USERPath, 1);
    if (fr != FR_OK) {
        ISP_LOG("f_mount fail: %d\r\n", (int)fr);
        ISP_LOG("Check SD card, SPI wiring, and FAT/FAT32 format.\r\n");
        return;
    }
    ISP_LOG("f_mount OK\r\n");

    sd_list_root();

    if (!sd_find_loader(loader_path, sizeof(loader_path))) {
        ISP_LOG("no eflash_loader.bin on SD, abort\r\n");
        f_mount(NULL, USERPath, 0);
        return;
    }

    how = sd_find_open_name(SD_DEMO_FILE, image_path, sizeof(image_path), 1);
    if (how == 0) {
        ISP_LOG("no app .bin on SD, abort\r\n");
        f_mount(NULL, USERPath, 0);
        return;
    }
    if (how == 2) {
        ISP_LOG("%s not found, use %s\r\n", SD_DEMO_FILE, image_path);
    }

    fr = f_open(&s_loader_file, loader_path, FA_READ);
    if (fr != FR_OK) {
        ISP_LOG("open %s fail: %d\r\n", loader_path, (int)fr);
        f_mount(NULL, USERPath, 0);
        return;
    }
    loader_open = 1;
    ISP_LOG("open loader: %s  size=%lu\r\n",
            loader_path, (unsigned long)f_size(&s_loader_file));

    fr = f_open(&USERFile, image_path, FA_READ);
    if (fr != FR_OK) {
        ISP_LOG("open %s fail: %d\r\n", image_path, (int)fr);
        f_close(&s_loader_file);
        f_mount(NULL, USERPath, 0);
        return;
    }
    image_open = 1;
    ISP_LOG("open image: %s  size=%lu\r\n",
            image_path, (unsigned long)f_size(&USERFile));

    bootrom_isp_init(&huart1);
    ISP_LOG("Auto start in 1s...\r\n");
    HAL_Delay(1000);

    rc = bootrom_isp_program(&s_loader_file, &USERFile);

    if (image_open) {
        f_close(&USERFile);
    }
    if (loader_open) {
        f_close(&s_loader_file);
    }
    f_mount(NULL, USERPath, 0);

    if (rc == ISP_OK) {
        ISP_LOG("RESULT: SUCCESS\r\n");
    } else {
        ISP_LOG("RESULT: FAIL (%d)\r\n", rc);
    }
}
