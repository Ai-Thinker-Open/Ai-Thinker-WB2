/*
 * SPDX-FileCopyrightText: 2020-2021 Axkressif Systems (Shanghai) CO LTD
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include "axk_tls_config.h"

#include "axk_tls_crypto.h"
#include "axk_log.h"
#include "axk_err.h"
static const char *TAG = "axk_crypto";
#ifdef CONFIG_AXK_TLS_USING_MBEDTLS
#include "mbedtls/sha1.h"
#include "mbedtls/base64.h"
#define _axk_crypto_sha1 axk_crypto_sha1_mbedtls
#define _axk_crypto_base64_encode axk_crypto_bas64_encode_mbedtls
#elif  CONFIG_AXK_TLS_USING_WOLFSSL
#include "wolfssl/ssl.h" /* SHA functions are listed in wolfssl/ssl.h */
#include "wolfssl/wolfcrypt/coding.h"
#define _axk_crypto_sha1 axk_crypto_sha1_wolfSSL
#define _axk_crypto_base64_encode axk_crypto_base64_encode_woflSSL
#endif

#ifdef CONFIG_AXK_TLS_USING_MBEDTLS
static int axk_crypto_sha1_mbedtls( const unsigned char *input,
                                    size_t ilen,
                                    unsigned char output[20])
{
    int ret = mbedtls_sha1_ret(input, ilen, output);
    if (ret != 0) {
        AXK_LOGE(TAG, "Error in calculating sha1 sum , Returned 0x%02X", ret);
    }
    return ret;
}

static int axk_crypto_bas64_encode_mbedtls( unsigned char *dst, size_t dlen,
        size_t *olen, const unsigned char *src,
        size_t slen)
{
    return mbedtls_base64_encode(dst, dlen, olen, src, slen);
}

#elif CONFIG_AXK_TLS_USING_WOLFSSL
static int axk_crypto_sha1_wolfSSL( const unsigned char *input,
                                    size_t ilen,
                                    unsigned char output[20])
{
    unsigned char *ret = wolfSSL_SHA1(input, ilen, output);
    if (ret == NULL) {
        AXK_LOGE(TAG, "Error in calculating sha1 sum");
        return -1;
    }
    return 0;
}

static int axk_crypto_base64_encode_woflSSL(unsigned char *dst, size_t dlen, size_t *olen,
        const unsigned char *src, size_t slen)
{
    *olen = dlen;
    return Base64_Encode_NoNl((const byte *) src, (word32) slen, (byte *) dst, (word32 *) olen);
}

#else
#error "No TLS/SSL Stack selected"
#endif

int axk_crypto_sha1( const unsigned char *input,
                     size_t ilen,
                     unsigned char output[20])
{
    return _axk_crypto_sha1(input, ilen, output);
}

int axk_crypto_base64_encode(unsigned char *dst, size_t dlen, size_t *olen,
                             const unsigned char *src, size_t slen )
{
    return _axk_crypto_base64_encode(dst, dlen, olen, src, slen);
}
