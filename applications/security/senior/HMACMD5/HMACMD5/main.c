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
#include "mbedtls/md.h"

char* plain_text1 = "hello";
char* plain_text2 = "-";
char* plain_text3 = "Ai-WB2-Kit";

char* plain_text = "hello-Ai-WB2-Kit";

char* entropy_key = "12345";

void mbedtls_hamcMD5_test(void)
{
    uint8_t* outbuff = pvPortMalloc(16);

    mbedtls_md_context_t hmacsha1_ctx;
    mbedtls_md_info_t* md_info = mbedtls_md_info_from_type(MBEDTLS_MD_MD5);
    mbedtls_md_init(&hmacsha1_ctx);
    mbedtls_md_init_ctx(&hmacsha1_ctx, md_info);

    memset(outbuff, 0, 16);
    //Update process
    mbedtls_md_hmac_starts(&hmacsha1_ctx, (uint8_t*)entropy_key, strlen(entropy_key));
    blog_info("Update process:%s", plain_text1);
    mbedtls_md_hmac_update(&hmacsha1_ctx, (uint8_t*)plain_text1, strlen(plain_text1));
    blog_info("Update process:%s", plain_text2);
    mbedtls_md_hmac_update(&hmacsha1_ctx, (uint8_t*)plain_text2, strlen(plain_text2));
    blog_info("Update process:%s", plain_text3);
    mbedtls_md_hmac_update(&hmacsha1_ctx, (uint8_t*)plain_text3, strlen(plain_text3));
    mbedtls_md_hmac_finish(&hmacsha1_ctx, outbuff);
    blog_info_hexdump("Segmental encryption", outbuff, 16);

    mbedtls_md_hmac_reset(&hmacsha1_ctx);
    //Overall encryption
    mbedtls_md_hmac(md_info, (uint8_t*)entropy_key, strlen(entropy_key), (uint8_t*)plain_text, strlen(plain_text), outbuff);
    blog_info_hexdump("Overall encryption", outbuff, 16);
    mbedtls_md_free(&hmacsha1_ctx);
    vPortFree(outbuff);
}

void main(void)
{
    mbedtls_hamcMD5_test();
}

