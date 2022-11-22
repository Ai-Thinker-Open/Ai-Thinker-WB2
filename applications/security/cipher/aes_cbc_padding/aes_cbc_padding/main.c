/**
 * @file main.c
 * @author your name (you@domain.com)
 * @brief
 * @version 0.1
 * @date 2022-11-15
 *
 * @copyright Copyright (c) 2022
 *
 */
#include <stdio.h>
#include <string.h>
#include <FreeRTOS.h>
#include <task.h>
#include <blog.h>
#include "bl_sys.h"
#include "mbedtls/cipher.h"

char* plain_text = "hello_Ai-WB2_Kit";

void mbedtls_cipher_aesCBC_test(mbedtls_cipher_type_t cipher_type)
{
    char* cbc_iv = "0123456789abcdef";
    size_t size_outbuff = 0;
    size_t olen;
    uint8_t* entropy_key = NULL;
    uint8_t* outbuff = NULL;
    uint8_t* plain_text_value = NULL;

    mbedtls_cipher_context_t cipher_ctx;
    const mbedtls_cipher_info_t* cipher_info = mbedtls_cipher_info_from_type(cipher_type);

    mbedtls_cipher_init(&cipher_ctx);
    mbedtls_cipher_setup(&cipher_ctx, cipher_info);
    switch (cipher_type) {
        case MBEDTLS_CIPHER_AES_128_CBC:
            blog_info("AES-128-CBC PKCS7 padding ");
            entropy_key = pvPortMalloc(128/8);
            sprintf((char*)entropy_key, "0123456789fedcba");
            outbuff = pvPortMalloc(32);
            memset(outbuff, 0, 32);

            plain_text_value = pvPortMalloc(128/8);
            memset(plain_text_value, 0, 128/8);
            break;
        case MBEDTLS_CIPHER_AES_192_CBC:
            blog_info("AES-192-CBC PKCS7 padding ");
            entropy_key = pvPortMalloc(24);
            sprintf((char*)entropy_key, "0123456789fedcba1235sadf");
            outbuff = pvPortMalloc(32);
            memset(outbuff, 0, 32);
            plain_text_value = pvPortMalloc(192/8);
            memset(plain_text_value, 0, 192/8);
            break;
        case MBEDTLS_CIPHER_AES_256_CBC:
            blog_info("AES-256-CBC PKCS7 padding ");
            entropy_key = pvPortMalloc(256/8);
            sprintf((char*)entropy_key, "0123456789fedcba1235sadfasvkmkjs");
            outbuff = pvPortMalloc(32);
            memset(outbuff, 0, 32);
            plain_text_value = pvPortMalloc(256/8);
            memset(plain_text_value, 0, 256/8);
            break;
        default:
            break;
    }
    //encrypt
    mbedtls_cipher_setkey(&cipher_ctx, entropy_key, strlen((char*)entropy_key)*8, MBEDTLS_ENCRYPT);

    mbedtls_cipher_set_iv(&cipher_ctx, (uint8_t*)cbc_iv, strlen(cbc_iv));

    mbedtls_cipher_set_padding_mode(&cipher_ctx, MBEDTLS_PADDING_PKCS7);

    mbedtls_cipher_update(&cipher_ctx, (uint8_t*)plain_text, strlen(plain_text), outbuff, &olen);
    size_outbuff += olen;
    mbedtls_cipher_finish(&cipher_ctx, &outbuff[olen], &olen);
    size_outbuff += olen;
    blog_info_hexdump("aes_cbc", outbuff, size_outbuff);
    //decrypt
    mbedtls_cipher_reset(&cipher_ctx);
    mbedtls_cipher_setkey(&cipher_ctx, entropy_key, strlen((char*)entropy_key)*8, MBEDTLS_DECRYPT);

    mbedtls_cipher_set_iv(&cipher_ctx, (uint8_t*)cbc_iv, strlen(cbc_iv));
    mbedtls_cipher_set_padding_mode(&cipher_ctx, MBEDTLS_PADDING_PKCS7);

    mbedtls_cipher_update(&cipher_ctx, outbuff, size_outbuff, plain_text_value, &olen);

    if (!olen) {
        mbedtls_cipher_finish(&cipher_ctx, plain_text_value, &olen);
        blog_info_hexdump("decrypt value", plain_text_value, olen);
    }
    else {
        blog_info_hexdump("decrypt value", plain_text_value, olen);
        mbedtls_cipher_finish(&cipher_ctx, plain_text_value, &olen);
    }
    mbedtls_cipher_free(&cipher_ctx);
    vPortFree(outbuff);
    vPortFree(entropy_key);
    vPortFree(plain_text_value);
}

void main(void)
{
    mbedtls_cipher_aesCBC_test(MBEDTLS_CIPHER_AES_128_CBC);
    mbedtls_cipher_aesCBC_test(MBEDTLS_CIPHER_AES_192_CBC);
    mbedtls_cipher_aesCBC_test(MBEDTLS_CIPHER_AES_256_CBC);
}

