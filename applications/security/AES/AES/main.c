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
#include "mbedtls/aes.h"

#define AES_TEXT "\x1b[0m%s\x1b[0m"

char* plain_text = "hello-Ai-WB2-Kit";


/**
 * @brief AES ECB mode Encryption and decryption funtion
 *
 */
static void mbedtls_aes_ecb(void)
{
    uint16_t keybits = 0;
    uint8_t outbuf[16];
    memset(outbuf, 0, 16);
    mbedtls_aes_context aesecb_ctx;
    mbedtls_aes_init(&aesecb_ctx);
    //ecb 128
    keybits = 128;
    uint8_t key_16[16] = "MTIzNDU2Nzg5YWJj";

    mbedtls_aes_setkey_enc(&aesecb_ctx, key_16, keybits);
    int ret = 0;
    ret = mbedtls_aes_crypt_ecb(&aesecb_ctx, MBEDTLS_AES_ENCRYPT, (uint8_t*)plain_text, outbuf);
    if (ret!=0) goto __return;
    blog_info("AES ecb %d %s:", keybits, "encrtpt");
    blog_info_hexdump("AES ECB", outbuf, 16);
    mbedtls_aes_setkey_dec(&aesecb_ctx, key_16, keybits);
    memset(plain_text, 0, 16);
    ret = mbedtls_aes_crypt_ecb(&aesecb_ctx, MBEDTLS_AES_DECRYPT, (uint8_t*)outbuf, (uint8_t*)plain_text);
    blog_info("AES ecb %d %s:%s\r\n", keybits, "decrypt", plain_text);
    //ecb 192
    keybits = 192;
    uint8_t key_24[24] = "MTIzNDU2Nzg5YWJja8deqgsg";
    mbedtls_aes_setkey_enc(&aesecb_ctx, key_24, keybits);
    memset(outbuf, 0, 16);
    ret = mbedtls_aes_crypt_ecb(&aesecb_ctx, MBEDTLS_AES_ENCRYPT, (uint8_t*)plain_text, outbuf);
    if (ret!=0) goto __return;
    blog_info("AES ecb %d %s:", keybits, "encrtpt");
    blog_info_hexdump("AES ECB", outbuf, 16);
    mbedtls_aes_setkey_dec(&aesecb_ctx, key_24, keybits);
    memset(plain_text, 0, 16);
    ret = mbedtls_aes_crypt_ecb(&aesecb_ctx, MBEDTLS_AES_DECRYPT, (uint8_t*)outbuf, (uint8_t*)plain_text);
    blog_info("AES ecb %d %s:%s\r\n", keybits, "decrypt", plain_text);
    //ecb256
    keybits = 256;
    uint8_t key_32[32] = "YXNkYXdxcnRzZmdzZ2VyZ2RnZHNhc2Q=";
    mbedtls_aes_setkey_enc(&aesecb_ctx, key_32, keybits);
    memset(outbuf, 0, 16);
    ret = mbedtls_aes_crypt_ecb(&aesecb_ctx, MBEDTLS_AES_ENCRYPT, (uint8_t*)plain_text, outbuf);
    if (ret!=0) goto __return;
    blog_info_hexdump("AES ECB", outbuf, 16);
    mbedtls_aes_setkey_dec(&aesecb_ctx, key_32, keybits);
    memset(plain_text, 0, 16);
    ret = mbedtls_aes_crypt_ecb(&aesecb_ctx, MBEDTLS_AES_DECRYPT, (uint8_t*)outbuf, (uint8_t*)plain_text);
    blog_info("AES ecb %d %s:%s", keybits, "decrypt", plain_text);
__return:

    mbedtls_aes_free(&aesecb_ctx);
}

/**
 * @brief AES CBC mode Encryption and decryption funtion
 *
 */
static void mbedtls_aed_cbc(uint16_t keybits)
{

    uint8_t cbc_iv[16] = "0123456789123456";
    uint8_t outbuf[32];
    memset(outbuf, 0, 32);
    mbedtls_aes_context aescbc_ctx;

    mbedtls_aes_init(&aescbc_ctx);
    int ret = 0;

    switch (keybits) {
        // CBC 128 encrypt
        case 128: {
            uint8_t key_16[16] = "MTIzNDU2Nzg5YWJj";
            mbedtls_aes_setkey_enc(&aescbc_ctx, key_16, keybits);

            mbedtls_aes_crypt_cbc(&aescbc_ctx, MBEDTLS_AES_ENCRYPT, 32, cbc_iv, (uint8_t*)plain_text, outbuf);
            if (ret!=0) goto __return;
            blog_info("AES CBC %d %s:", keybits, "encrtpt");
            blog_info_hexdump("AES CBC", outbuf, 16);
            mbedtls_aes_setkey_dec(&aescbc_ctx, key_16, keybits);
            ret = mbedtls_aes_crypt_cbc(&aescbc_ctx, MBEDTLS_AES_DECRYPT, 16, cbc_iv, outbuf, (uint8_t*)plain_text);
            blog_info("AES CBC %d %s:%s\r\n", keybits, "decrypt", plain_text);
        }
                break;
                // CBC 192 encrypt
        case 192: {
            uint8_t key_24[24] = "MTIzNDU2Nzg5YWJja8deqgsg";
            mbedtls_aes_setkey_enc(&aescbc_ctx, key_24, keybits);
            ret = mbedtls_aes_crypt_cbc(&aescbc_ctx, MBEDTLS_AES_ENCRYPT, 16, cbc_iv, (uint8_t*)plain_text, outbuf);
            if (ret!=0) goto __return;
            blog_info("AES CBC %d %s:", keybits, "encrtpt");
            blog_info_hexdump("AES CBC", outbuf, 16);
            mbedtls_aes_setkey_dec(&aescbc_ctx, key_24, keybits);
            ret = mbedtls_aes_crypt_cbc(&aescbc_ctx, MBEDTLS_AES_DECRYPT, 16, cbc_iv, outbuf, (uint8_t*)plain_text);
            blog_info("AES CBC %d %s:%s\r\n", keybits, "decrypt", plain_text);
        }
                break;
                // CBC 256 encrypt
        case 256: {
            uint8_t key_32[32] = "YXNkYXdxcnRzZmdzZ2VyZ2RnZHNhc2Q=";

            mbedtls_aes_setkey_enc(&aescbc_ctx, key_32, keybits);
            ret = mbedtls_aes_crypt_cbc(&aescbc_ctx, MBEDTLS_AES_ENCRYPT, 16, cbc_iv, (uint8_t*)plain_text, outbuf);
            if (ret!=0) goto __return;
            blog_info("AES CBC %d %s:", keybits, "encrtpt");
            blog_info_hexdump("AES CBC", outbuf, 16);
            mbedtls_aes_setkey_dec(&aescbc_ctx, key_32, keybits);
            memset(plain_text, 0, 16);
            mbedtls_aes_crypt_cbc(&aescbc_ctx, MBEDTLS_AES_DECRYPT, 16, cbc_iv, outbuf, (uint8_t*)plain_text);
            blog_info("AES CBC %d %s:%s\r\n", keybits, "decrypt", plain_text);
        }
                break;
    }

__return:
    mbedtls_aes_free(&aescbc_ctx);
}

void main(void)
{
    mbedtls_aes_ecb();
    mbedtls_aed_cbc(128);
    mbedtls_aed_cbc(192);
    mbedtls_aed_cbc(256);

}

