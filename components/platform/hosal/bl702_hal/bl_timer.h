#ifndef __BL_TIMER_H__
#define __BL_TIMER_H__

#include <stdint.h>

#define BL_TIMER_CH_NUM            2
#define BL_TIMER_UNIT_US           1

typedef void (*bl_timer_cb_t)(void);

void bl_timer_init(void);
uint32_t bl_timer_get_overflow_cnt(void);
uint32_t bl_timer_get_current_time(void);  // unit: us
uint32_t bl_timer_get_remaining_time(uint8_t ch);  // unit: us
void bl_timer_start(uint8_t ch, uint32_t target_time, bl_timer_cb_t cb);  // unit: us
void* bl_timer_stop(uint8_t ch);
void bl_timer_store(void);
void bl_timer_restore(uint32_t jump_time);  // unit: us
void bl_timer_restore_ext(uint32_t jump_time);// unit: us
uint32_t bl_timer_now_us(void);
void bl_timer_delay_us(uint32_t us);
uint64_t bl_timer_now_us64(void);

#endif
