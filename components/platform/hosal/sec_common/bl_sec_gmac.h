#pragma once

#include <stdint.h>
#include <stddef.h>

typedef struct {
    uint32_t :9;
    uint32_t gmacIntClr:1;
    uint32_t gmacIntSet:1;
    uint32_t :5;
    uint32_t gmacMsgLen:16;
    uint32_t gmacSrcAddr;
    uint32_t gmacKey0;
    uint32_t gmacKey1;
    uint32_t gmacKey2;
    uint32_t gmacKey3;
    uint32_t result[4];
} __attribute__((aligned(4))) bl_SEC_Eng_GMAC_Link_Config_Type;

typedef struct {
    bl_SEC_Eng_GMAC_Link_Config_Type link_cfg;
    uint32_t dummy_;
} bl_sec_gmac_t;

int bl_sec_gmac_init();

int bl_gmac_init(bl_sec_gmac_t *ctx, const uint8_t key[16]);
int bl_gmac_clear(bl_sec_gmac_t *ctx);
int bl_gmac_acquire_hw();
int bl_gmac_release_hw();
int bl_gmac_update(bl_sec_gmac_t *ctx, const uint8_t *input, size_t input_len);
int bl_gmac_finish(bl_sec_gmac_t *ctx, uint8_t result[16]);
