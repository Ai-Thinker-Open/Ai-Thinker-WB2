/*
 * Copyright (C) 2015-2018 Alibaba Group Holding Limited
 */
#ifndef INFRA_AES_H
#define INFRA_AES_H

#ifdef __cplusplus
extern "C" {
#endif

#include <stddef.h>
#include <stdint.h>


#if ( defined(__ARMCC_VERSION) || defined(_MSC_VER) ) && \
    !defined(inline) && !defined(__cplusplus)
#define inline __inline
#endif

int iotx_aes_cbc_encrypt(const unsigned char *src, int len, const unsigned char *key, void *out);
int iotx_aes_cbc_decrypt(const unsigned char *src, int len, const unsigned char *key, void *out);

#ifdef __cplusplus
}
#endif
#endif /* aes.h */

