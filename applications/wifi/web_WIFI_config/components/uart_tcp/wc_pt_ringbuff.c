#include "wc_pt_ringbuff.h"

#include <string.h>

#include "bl_irq.h"

#define WC_PT_RING_SZ 4096u
#define WC_PT_RING_MASK (WC_PT_RING_SZ - 1u)

static uint8_t s_rb[WC_PT_RING_SZ];
static volatile uint16_t s_wr;
static volatile uint16_t s_rd;

int wc_pt_ring_init(void)
{
    memset(s_rb, 0, sizeof(s_rb));
    s_wr = 0;
    s_rd = 0;
    return 0;
}

void wc_pt_ring_flush(void)
{
    int mask = bl_irq_save();
    s_wr = 0;
    s_rd = 0;
    bl_irq_restore(mask);
}

int wc_pt_ring_push_byte_isr(uint8_t b)
{
    uint16_t wr = s_wr;
    uint16_t rd = s_rd;
    uint16_t nwr = (uint16_t)((wr + 1u) & WC_PT_RING_MASK);

    if (nwr == rd) {
        return -1;
    }
    s_rb[wr] = b;
    s_wr = nwr;
    return 0;
}

unsigned wc_pt_ring_used_approx_isr(void)
{
    uint16_t wr = s_wr;
    uint16_t rd = s_rd;

    if (wr >= rd) {
        return (unsigned)(wr - rd);
    }
    return (unsigned)(WC_PT_RING_SZ - rd + wr);
}

unsigned wc_pt_ring_pop_task(uint8_t *out, unsigned max_len)
{
    unsigned n = 0;
    int mask;

    if (!out || max_len == 0) {
        return 0;
    }

    mask = bl_irq_save();
    while (n < max_len && s_rd != s_wr) {
        out[n++] = s_rb[s_rd];
        s_rd = (uint16_t)((s_rd + 1u) & WC_PT_RING_MASK);
    }
    bl_irq_restore(mask);
    return n;
}

unsigned wc_pt_ring_peek_task(uint8_t *out, unsigned max_len)
{
    unsigned n = 0;
    uint16_t rd;
    int mask;

    if (!out || max_len == 0) {
        return 0;
    }

    mask = bl_irq_save();
    rd = s_rd;
    while (n < max_len && rd != s_wr) {
        out[n++] = s_rb[rd];
        rd = (uint16_t)((rd + 1u) & WC_PT_RING_MASK);
    }
    bl_irq_restore(mask);
    return n;
}

void wc_pt_ring_consume_task(unsigned nbytes)
{
    int mask;

    if (nbytes == 0) {
        return;
    }

    mask = bl_irq_save();
    while (nbytes != 0u && s_rd != s_wr) {
        s_rd = (uint16_t)((s_rd + 1u) & WC_PT_RING_MASK);
        nbytes--;
    }
    bl_irq_restore(mask);
}

unsigned wc_pt_ring_used_task(void)
{
    uint16_t wr;
    uint16_t rd;
    int mask = bl_irq_save();
    wr = s_wr;
    rd = s_rd;
    bl_irq_restore(mask);
    if (wr >= rd) {
        return (unsigned)(wr - rd);
    }
    return (unsigned)(WC_PT_RING_SZ - rd + wr);
}
