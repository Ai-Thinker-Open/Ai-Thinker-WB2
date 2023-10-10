#include <stdbool.h>
#include <stdio.h>

#include <bl_sec.h>
#include "bl_sec_hw_common.h"

int bl_sec_gmac_init()
{
    Sec_Eng_GMAC_Enable_BE();
    Sec_Eng_GMAC_Enable_Link();
    return 0;
}

int bl_gmac_acquire_hw()
{
    taskENTER_CRITICAL();
    return 0;
}

int bl_gmac_release_hw()
{
    taskEXIT_CRITICAL();
    return 0;
}

int bl_gmac_init(bl_sec_gmac_t *ctx, const uint8_t key[16])
{
    if (!ctx || !key)
        return -1;
    memset(ctx, 0, sizeof(*ctx));
    memcpy(&ctx->link_cfg.gmacKey0, key, 16);
    return 0;
}

int bl_gmac_clear(bl_sec_gmac_t *ctx)
{
    if (!ctx)
        return -1;
    memset(&ctx->link_cfg.result, 0, 16);
    return 0;
}

int bl_gmac_update(bl_sec_gmac_t *ctx, const uint8_t *input, size_t input_len)
{
    int ret = 0;
    size_t len, rem;
    uint8_t tmp_buf[16];

    if (!ctx)
        return -1;
    if (input_len >= 16 * 65536)
        return -1;

    if (input_len == 0)
        return 0;

    rem = input_len % 16;
    len = input_len - rem;
    if (len)
        ret = Sec_Eng_GMAC_Link_Work((uint32_t)&ctx->link_cfg, input, len, tmp_buf);
    if (rem) {
        memcpy(tmp_buf, input + len, rem);
        memset(tmp_buf + rem, 0, 16 - rem);
        ret = Sec_Eng_GMAC_Link_Work((uint32_t)&ctx->link_cfg, tmp_buf, 16, tmp_buf);
    }
    return !(ret == SUCCESS);
}

int bl_gmac_finish(bl_sec_gmac_t *ctx, uint8_t result[16])
{
    if (!ctx || !result)
        return -1;
    memcpy(result, ctx->link_cfg.result, 16);
    return 0;
}


/*
 * Test cases
 */
#include <stdlib.h>

#define GMAC_TEST_ITERATIONS 100

bool tc_gmac()
{
    // Test vector from GMAC spec, Test Case 2
    const uint8_t H_key[16] = {0x66, 0xe9, 0x4b, 0xd4, 0xef, 0x8a, 0x2c, 0x3b, 0x88, 0x4c, 0xfa, 0x59, 0xca, 0x34, 0x2b, 0x2e};
    const uint8_t C[16] = {0x03, 0x88, 0xda, 0xce, 0x60, 0xb6, 0xa3, 0x92, 0xf3, 0x28, 0xc2, 0xb9, 0x71, 0xb2, 0xfe, 0x78};
    const uint8_t len_A_len_B[16] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80};
    const uint8_t ghash_H_A_C[16] = {0xf3, 0x8c, 0xbb, 0x1a, 0xd6, 0x92, 0x23, 0xdc, 0xc3, 0x45, 0x7a, 0xe5, 0xb6, 0xb0, 0xf8, 0x85};

    while (1) {
        bl_sec_gmac_t *ctx;
        uint8_t *in, *out;
        ctx = malloc(sizeof(*ctx));
        in = malloc(16);
        out = malloc(16);
        if (!ctx || !in || !out) {
            printf("Test end\r\n");
            return true;
        }

        printf("Test addr %p\r\n", ctx);
        for (size_t i = 0; i < GMAC_TEST_ITERATIONS; ++i) {
            // input from flash
            bl_gmac_init(ctx, H_key);
            bl_gmac_update(ctx, C, 16);
            bl_gmac_update(ctx, len_A_len_B, 16);
            bl_gmac_finish(ctx, out);

            if (memcmp(ghash_H_A_C, out, 16)) {
                return false;
            }

            // input from ram
            memcpy(in, H_key, 16);
            bl_gmac_init(ctx, in);
            memcpy(in, C, 16);
            bl_gmac_update(ctx, in, 16);
            memcpy(in, len_A_len_B, 16);
            bl_gmac_update(ctx, in, 16);
            bl_gmac_finish(ctx, out);

            if (memcmp(ghash_H_A_C, out, 16)) {
                return false;
            }
        }
    }
    return true;
}

#define MD(tc) {tc, #tc}
static struct {
    bool (*tc_fun)(void);
    const char *desc;
} tc[] = {
    MD(tc_gmac),
};


int bl_gmac_test()
{
    for (int i = 0; i < sizeof(tc) / sizeof(tc[0]); ++i) {
        printf("Running test case %s\r\n", tc[i].desc);
        if (tc[i].tc_fun()) {
            printf("\t\tPassed\r\n");
        } else {
            printf("\t\tFailed\r\n");
        }
    }
    return 0;
}
