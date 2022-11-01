#ifndef __BL_HBN_H__
#define __BL_HBN_H__


#include "bl702_glb.h"
#include "bl702_sec_eng.h"
#include "bl702_sf_cfg.h"
#include "bl702_sflash.h"
#include "bl702_romdriver.h"


#define ATTR_NOINLINE              __attribute__((noinline))
#define ATTR_HBN_CODE_SECTION      __attribute__((section(".hbn_code." ATTR_UNI_SYMBOL)))
#define ATTR_HBN_DATA_SECTION      __attribute__((section(".hbn_data")))
#define ATTR_HBN_NOINIT_SECTION    __attribute__((section(".hbn_noinit")))

#define HBN_WAKEUP_BY_RTC          1
#define HBN_WAKEUP_BY_GPIO         2


void bl_hbn_fastboot_init(void);
void bl_hbn_gpio_wakeup_cfg(uint8_t pin_list[], uint8_t pin_num);  // available gpio: 9 - 12
void bl_hbn_enter_with_fastboot(uint32_t hbnSleepCycles);
void bl_hbn_fastboot_done_callback(void);
int bl_hbn_get_wakeup_source(void);
uint32_t bl_hbn_get_wakeup_gpio(void);


typedef struct _hbn_type {
    uint8_t buflen;
    uint8_t active;
    uint8_t buf[1];
} hbn_type_t;

int bl_hbn_enter(hbn_type_t *hbn, uint32_t *time);

#endif

