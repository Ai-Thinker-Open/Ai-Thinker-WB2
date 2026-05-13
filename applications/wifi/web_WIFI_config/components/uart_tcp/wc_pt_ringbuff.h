#pragma once

#include <stddef.h>
#include <stdint.h>

/**
 * 单生产者(ISR 写) + 单消费者(任务读) 环形缓冲，逻辑参考 hongfa axk_at_ringbuff。
 * 容量须为 2 的幂，供 1~4k 突发。
 */
int wc_pt_ring_init(void);
void wc_pt_ring_flush(void);

/** 仅在中断/RX 回调中调用 */
int wc_pt_ring_push_byte_isr(uint8_t b);

/**
 * 任务上下文：关中断后批量取出，避免与 ISR 竞态。
 * @return 实际拷贝字节数
 */
unsigned wc_pt_ring_pop_task(uint8_t *out, unsigned max_len);

/**
 * 任务上下文：只读复制队首数据，不前进读指针（用于 TCP send 成功后再 wc_pt_ring_consume_task）。
 */
unsigned wc_pt_ring_peek_task(uint8_t *out, unsigned max_len);

/** 任务上下文：跳过队首 nbytes 字节（已发送或已丢弃），须在关中断下与 peek 配对使用 */
void wc_pt_ring_consume_task(unsigned nbytes);

unsigned wc_pt_ring_used_task(void);

/**
 * 仅 ISR：无锁读 wr/rd 估计占用量，供背压/阈值唤醒；与任务侧精确值可能瞬时偏差。
 */
unsigned wc_pt_ring_used_approx_isr(void);
