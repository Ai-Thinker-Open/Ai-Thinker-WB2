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
#include "mbedtls/sha256.h"

#define MD5_TEXT "\x1b[0m%s\x1b[0m"

char* plain_text1 = "hello";
char* plain_text2 = "-";
char* plain_text3 = "Ai-WB2-Kit";

char* plain_text = "hello-Ai-WB2-Kit";

void mbedtls_sha256_test(void)
{
    uint8_t* outbuff = pvPortMalloc(32);
    memset(outbuff, 0, 32);
    mbedtls_sha256_context sha256_ctx;
    //Segmentation check
    mbedtls_sha256_init(&sha256_ctx);
    mbedtls_sha256_starts_ret(&sha256_ctx, 0);
    //Update process plain_ text1
    blog_info("Update process:%s", (uint8_t*)plain_text1);
    mbedtls_sha256_update_ret(&sha256_ctx, (uint8_t*)plain_text1, strlen(plain_text1));

    //Update process plain_ text2
    blog_info("Update process:%s", (uint8_t*)plain_text2);
    mbedtls_sha256_update_ret(&sha256_ctx, (uint8_t*)plain_text2, strlen(plain_text2));

    //Update process plain_ text3
    blog_info("Update process:%s", plain_text3);
    mbedtls_sha256_update_ret(&sha256_ctx, (uint8_t*)plain_text3, strlen(plain_text3));

    mbedtls_sha256_finish_ret(&sha256_ctx, outbuff);
    blog_info_hexdump("sha256 Segmentation check", outbuff, 32);
    mbedtls_sha256_free(&sha256_ctx);
    //Overall verification
    memset(outbuff, 0, 32);
    mbedtls_sha256_init(&sha256_ctx);
    mbedtls_sha256((uint8_t*)plain_text, 16, outbuff, 0);
    blog_info_hexdump("sha256 Overall verification", outbuff, 32);
    mbedtls_sha256_free(&sha256_ctx);
    vPortFree(outbuff);
}

void mbedtls_sha224_test(void)
{
    uint8_t* outbuff = pvPortMalloc(28);
    memset(outbuff, 0, 28);
    mbedtls_sha256_context sha256_ctx;
    //Segmentation check
    mbedtls_sha256_init(&sha256_ctx);
    mbedtls_sha256_starts_ret(&sha256_ctx, 1);
    //Update process plain_ text1
    blog_info("Update process:%s", (uint8_t*)plain_text1);
    mbedtls_sha256_update_ret(&sha256_ctx, (uint8_t*)plain_text1, strlen(plain_text1));

    //Update process plain_ text2
    blog_info("Update process:%s", (uint8_t*)plain_text2);
    mbedtls_sha256_update_ret(&sha256_ctx, (uint8_t*)plain_text2, strlen(plain_text2));

    //Update process plain_ text3
    blog_info("Update process:%s", plain_text3);
    mbedtls_sha256_update_ret(&sha256_ctx, (uint8_t*)plain_text3, strlen(plain_text3));

    mbedtls_sha256_finish_ret(&sha256_ctx, outbuff);
    blog_info_hexdump("sha224 Segmentation check", outbuff, 28);
    mbedtls_sha256_free(&sha256_ctx);
    //Overall verification
    memset(outbuff, 0, 28);
    mbedtls_sha256_init(&sha256_ctx);
    mbedtls_sha256((uint8_t*)plain_text, 16, outbuff, 1);
    blog_info_hexdump("sha224 Overall verification", outbuff, 28);
    mbedtls_sha256_free(&sha256_ctx);
    vPortFree(outbuff);
}
void main(void)
{
    mbedtls_sha224_test();
    mbedtls_sha256_test();
}



