/*
 *  Description: GCM hardware acceleration
 *  Copyright (C) Bouffalo Lab 2016-2023
 *  SPDX-License-Identifier: Apache-2.0
 *  File Name:   gcm_alt.c
 *  Author:      Chien Wong(qwang@bouffalolab.com)
 *  Start Date:  Jun 20, 2023
 *  Last Update: Jun 25, 2023
 *
 *  Change log:
 *  Jun 25, 2023: qwang
 *      First version.
 */
#include "common.h"

#if defined(MBEDTLS_GCM_C)

#include "mbedtls/gcm.h"
#include "mbedtls/platform.h"
#include "mbedtls/platform_util.h"
#include "mbedtls/error.h"

#include <string.h>

#include <bl_sec.h>

/* Parameter validation macros */
#define GCM_VALIDATE_RET( cond ) \
    MBEDTLS_INTERNAL_VALIDATE_RET( cond, MBEDTLS_ERR_GCM_BAD_INPUT )
#define GCM_VALIDATE( cond ) \
    MBEDTLS_INTERNAL_VALIDATE( cond )

#define AES_CHECK_OP( op ) \
    do { \
        bl_aes_acquire_hw(); \
        if( op ) \
        { \
            bl_aes_release_hw(); \
            return( MBEDTLS_ERR_PLATFORM_HW_ACCEL_FAILED); \
        } \
        bl_aes_release_hw(); \
    } while(0)
#define GMAC_CHECK_OP( op ) \
    do { \
        bl_gmac_acquire_hw(); \
        if( op ) \
        { \
            bl_gmac_release_hw(); \
            return( MBEDTLS_ERR_PLATFORM_HW_ACCEL_FAILED); \
        } \
        bl_gmac_release_hw(); \
    } while(0)

/*
 * Initialize a context
 */
void mbedtls_gcm_init( mbedtls_gcm_context *ctx )
{
    GCM_VALIDATE( ctx != NULL );
    memset( ctx, 0, sizeof( mbedtls_gcm_context ) );
}

int mbedtls_gcm_setkey( mbedtls_gcm_context *ctx,
                        mbedtls_cipher_id_t cipher,
                        const unsigned char *key,
                        unsigned int keybits )
{
    unsigned char work_buf[16];

    GCM_VALIDATE_RET( ctx != NULL );
    GCM_VALIDATE_RET( key != NULL );
    GCM_VALIDATE_RET( keybits == 128 || keybits == 192 || keybits == 256 );

    if( cipher != MBEDTLS_CIPHER_ID_AES)
        return( MBEDTLS_ERR_PLATFORM_FEATURE_UNSUPPORTED );

    bl_aes_init( &ctx->aes );
    bl_aes_set_key( &ctx->aes, BL_AES_ENCRYPT, key, keybits / 8 );
    memset( work_buf, 0x00, sizeof(work_buf) );
    bl_aes_set_mode( &ctx->aes, BL_AES_ECB, NULL );
    AES_CHECK_OP( bl_aes_transform( &ctx->aes, BL_AES_ENCRYPT, work_buf, work_buf ) );
    bl_gmac_init( &ctx->gmac, work_buf );

    return( 0 );
}

static inline void ctr_inc( uint8_t ctr[16], uint32_t value )
{
    uint32_t carry = 0;
    for( int i = 15; i >= 0; i-- )
    {
        uint32_t sum = ctr[i] + ( value & 0xFF ) + carry;
        ctr[i] = sum;
        carry = sum >> 8;
        value >>= 8;
        if( value == 0 && carry == 0 )
            break;
    }
}

int mbedtls_gcm_starts( mbedtls_gcm_context *ctx,
                int mode,
                const unsigned char *iv,
                size_t iv_len,
                const unsigned char *add,
                size_t add_len )
{
    const unsigned char *p;

    GCM_VALIDATE_RET( ctx != NULL );
    GCM_VALIDATE_RET( iv != NULL );
    GCM_VALIDATE_RET( add_len == 0 || add != NULL );

    /* IV and AD are limited to 2^64 bits, so 2^61 bytes */
    /* IV is not allowed to be zero length */
    if( iv_len == 0 ||
      ( (uint64_t) iv_len  ) >> 61 != 0 ||
      ( (uint64_t) add_len ) >> 61 != 0 )
    {
        return( MBEDTLS_ERR_GCM_BAD_INPUT );
    }

    memset( ctx->y, 0x00, sizeof(ctx->y) );

    ctx->mode = mode;
    ctx->len = 0;
    ctx->add_len = 0;

    if( iv_len == 12 )
    {
        memcpy( ctx->y, iv, iv_len );
        ctx->y[15] = 1;
    }
    else
    {
        return( MBEDTLS_ERR_PLATFORM_FEATURE_UNSUPPORTED );
    }

    bl_aes_set_mode( &ctx->aes, BL_AES_ECB, NULL );
    AES_CHECK_OP( bl_aes_transform( &ctx->aes, BL_AES_ENCRYPT, ctx->y, ctx->base_ectr ) );

    bl_gmac_clear( &ctx->gmac );
    ctx->add_len = add_len;
    p = add;
    if( add_len > 0 )
        GMAC_CHECK_OP( bl_gmac_update( &ctx->gmac, p, add_len ) );

    return( 0 );
}

int mbedtls_gcm_update( mbedtls_gcm_context *ctx,
                size_t length,
                const unsigned char *input,
                unsigned char *output )
{
    unsigned char ectr[16];
    size_t i;
    const unsigned char *p;
    unsigned char *out_p = output;

    GCM_VALIDATE_RET( ctx != NULL );
    GCM_VALIDATE_RET( length == 0 || input != NULL );
    GCM_VALIDATE_RET( length == 0 || output != NULL );

    if( output > input && (size_t) ( output - input ) < length )
        return( MBEDTLS_ERR_GCM_BAD_INPUT );

    /* Total length is restricted to 2^39 - 256 bits, ie 2^36 - 2^5 bytes
     * Also check for possible overflow */
    if( ctx->len + length < ctx->len ||
        (uint64_t) ctx->len + length > 0xFFFFFFFE0ull )
    {
        return( MBEDTLS_ERR_GCM_BAD_INPUT );
    }

    if( length > 16 * 65535 )
        return( MBEDTLS_ERR_PLATFORM_FEATURE_UNSUPPORTED );

    ctx->len += length;

    p = input;
    if( ctx->mode == MBEDTLS_GCM_DECRYPT )
        GMAC_CHECK_OP( bl_gmac_update( &ctx->gmac, input, length ) );

    size_t blocks = length / 16;
    size_t rem = length % 16;
    if( blocks > 0 )
    {
        ctr_inc( ctx->y, 1 );
        bl_aes_set_mode( &ctx->aes, BL_AES_CTR, ctx->y );
        AES_CHECK_OP( bl_aes_transform_blocks( &ctx->aes, BL_AES_ENCRYPT, p, blocks, out_p ) );
        ctr_inc( ctx->y, blocks - 1 );
    }
    if( rem )
    {
        p += blocks * 16;
        out_p += blocks * 16;

        ctr_inc( ctx->y, 1 );

        bl_aes_set_mode( &ctx->aes, BL_AES_ECB, NULL );
        AES_CHECK_OP( bl_aes_transform( &ctx->aes, BL_AES_ENCRYPT, ctx->y, ectr ) );
        for( i = 0; i < rem; i++ )
            out_p[i] = ectr[i] ^ p[i];
    }
    if( ctx->mode == MBEDTLS_GCM_ENCRYPT )
        GMAC_CHECK_OP( bl_gmac_update( &ctx->gmac, output, length ) );

    return( 0 );
}

int mbedtls_gcm_finish( mbedtls_gcm_context *ctx,
                unsigned char *tag,
                size_t tag_len )
{
    unsigned char work_buf[16];
    size_t i;
    uint64_t orig_len;
    uint64_t orig_add_len;

    GCM_VALIDATE_RET( ctx != NULL );
    GCM_VALIDATE_RET( tag != NULL );

    orig_len = ctx->len * 8;
    orig_add_len = ctx->add_len * 8;

    if( tag_len > 16 || tag_len < 4 )
        return( MBEDTLS_ERR_GCM_BAD_INPUT );

    bl_aes_set_mode( &ctx->aes, BL_AES_ECB, NULL );

    memcpy( tag, ctx->base_ectr, tag_len );

    if( orig_len || orig_add_len )
    {
        memset( work_buf, 0x00, 16 );

        MBEDTLS_PUT_UINT32_BE( ( orig_add_len >> 32 ), work_buf, 0  );
        MBEDTLS_PUT_UINT32_BE( ( orig_add_len       ), work_buf, 4  );
        MBEDTLS_PUT_UINT32_BE( ( orig_len     >> 32 ), work_buf, 8  );
        MBEDTLS_PUT_UINT32_BE( ( orig_len           ), work_buf, 12 );

        GMAC_CHECK_OP( bl_gmac_update( &ctx->gmac, work_buf, 16 ) );
        bl_gmac_finish( &ctx->gmac, work_buf );

        for( i = 0; i < tag_len; i++ )
            tag[i] ^= work_buf[i];
    }

    return( 0 );
}

int mbedtls_gcm_crypt_and_tag( mbedtls_gcm_context *ctx,
                       int mode,
                       size_t length,
                       const unsigned char *iv,
                       size_t iv_len,
                       const unsigned char *add,
                       size_t add_len,
                       const unsigned char *input,
                       unsigned char *output,
                       size_t tag_len,
                       unsigned char *tag )
{
    int ret = MBEDTLS_ERR_ERROR_CORRUPTION_DETECTED;

    GCM_VALIDATE_RET( ctx != NULL );
    GCM_VALIDATE_RET( iv != NULL );
    GCM_VALIDATE_RET( add_len == 0 || add != NULL );
    GCM_VALIDATE_RET( length == 0 || input != NULL );
    GCM_VALIDATE_RET( length == 0 || output != NULL );
    GCM_VALIDATE_RET( tag != NULL );

    if( ( ret = mbedtls_gcm_starts( ctx, mode, iv, iv_len, add, add_len ) ) != 0 )
        return( ret );

    if( ( ret = mbedtls_gcm_update( ctx, length, input, output ) ) != 0 )
        return( ret );

    if( ( ret = mbedtls_gcm_finish( ctx, tag, tag_len ) ) != 0 )
        return( ret );

    return( 0 );
}

int mbedtls_gcm_auth_decrypt( mbedtls_gcm_context *ctx,
                      size_t length,
                      const unsigned char *iv,
                      size_t iv_len,
                      const unsigned char *add,
                      size_t add_len,
                      const unsigned char *tag,
                      size_t tag_len,
                      const unsigned char *input,
                      unsigned char *output )
{
    int ret = MBEDTLS_ERR_ERROR_CORRUPTION_DETECTED;
    unsigned char check_tag[16];
    size_t i;
    int diff;

    GCM_VALIDATE_RET( ctx != NULL );
    GCM_VALIDATE_RET( iv != NULL );
    GCM_VALIDATE_RET( add_len == 0 || add != NULL );
    GCM_VALIDATE_RET( tag != NULL );
    GCM_VALIDATE_RET( length == 0 || input != NULL );
    GCM_VALIDATE_RET( length == 0 || output != NULL );

    if( ( ret = mbedtls_gcm_crypt_and_tag( ctx, MBEDTLS_GCM_DECRYPT, length,
                                   iv, iv_len, add, add_len,
                                   input, output, tag_len, check_tag ) ) != 0 )
    {
        return( ret );
    }

    /* Check tag in "constant-time" */
    for( diff = 0, i = 0; i < tag_len; i++ )
        diff |= tag[i] ^ check_tag[i];

    if( diff != 0 )
    {
        mbedtls_platform_zeroize( output, length );
        return( MBEDTLS_ERR_GCM_AUTH_FAILED );
    }

    return( 0 );
}

void mbedtls_gcm_free( mbedtls_gcm_context *ctx )
{
    if( ctx == NULL )
        return;
    mbedtls_platform_zeroize( ctx, sizeof( mbedtls_gcm_context ) );
}

#endif /* MBEDTLS_GCM_C */
