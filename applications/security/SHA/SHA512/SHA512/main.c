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
#include "mbedtls/sha512.h"

#define MD5_TEXT "\x1b[0m%s\x1b[0m"

char* plain_text1 = "hello";
char* plain_text2 = "-";
char* plain_text3 = "Ai-WB2-Kit";

char* plain_text = "hello-Ai-WB2-Kit";

void mbedtls_sha512_test(void)
{
    uint8_t* outbuff = pvPortMalloc(64);
    memset(outbuff, 0, 64);
    mbedtls_sha512_context sha512_ctx;
    //Segmentation check
    mbedtls_sha512_init(&sha512_ctx);
    mbedtls_sha512_starts_ret(&sha512_ctx, 0);
    //Update process plain_ text1
    blog_info("Update process:%s", (uint8_t*)plain_text1);
    mbedtls_sha512_update_ret(&sha512_ctx, (uint8_t*)plain_text1, strlen(plain_text1));

    //Update process plain_ text2
    blog_info("Update process:%s", (uint8_t*)plain_text2);
    mbedtls_sha512_update_ret(&sha512_ctx, (uint8_t*)plain_text2, strlen(plain_text2));

    //Update process plain_ text3
    blog_info("Update process:%s", plain_text3);
    mbedtls_sha512_update_ret(&sha512_ctx, (uint8_t*)plain_text3, strlen(plain_text3));

    mbedtls_sha512_finish_ret(&sha512_ctx, outbuff);
    blog_info_hexdump("sha512 Segmentation check", outbuff, 64);

    mbedtls_sha512_free(&sha512_ctx);
    //Overall verification
    memset(outbuff, 0, 64);
    mbedtls_sha512_init(&sha512_ctx);
    mbedtls_sha512((uint8_t*)plain_text, 16, outbuff, 0);
    blog_info_hexdump("sha512 Overall verification", outbuff, 64);

    mbedtls_sha512_free(&sha512_ctx);
    vPortFree(outbuff);
}

void mbedtls_sha384_test(void)
{
    uint8_t* outbuff = pvPortMalloc(48);
    memset(outbuff, 0, 48);
    mbedtls_sha512_context sha512_ctx;
    //Segmentation check
    mbedtls_sha512_init(&sha512_ctx);
    mbedtls_sha512_starts_ret(&sha512_ctx, 1);
    //Update process plain_ text1
    blog_info("Update process:%s", (uint8_t*)plain_text1);
    mbedtls_sha512_update_ret(&sha512_ctx, (uint8_t*)plain_text1, strlen(plain_text1));

    //Update process plain_ text2
    blog_info("Update process:%s", (uint8_t*)plain_text2);
    mbedtls_sha512_update_ret(&sha512_ctx, (uint8_t*)plain_text2, strlen(plain_text2));

    //Update process plain_ text3
    blog_info("Update process:%s", plain_text3);
    mbedtls_sha512_update_ret(&sha512_ctx, (uint8_t*)plain_text3, strlen(plain_text3));

    mbedtls_sha512_finish_ret(&sha512_ctx, outbuff);
    blog_info_hexdump("sha384 Segmentation check", outbuff, 48);
    mbedtls_sha512_free(&sha512_ctx);
    //Overall verification
    memset(outbuff, 0, 48);
    mbedtls_sha512_init(&sha512_ctx);
    mbedtls_sha512((uint8_t*)plain_text, 16, outbuff, 1);
    blog_info_hexdump("sha384 Overall verification", outbuff, 48);

    mbedtls_sha512_free(&sha512_ctx);
    vPortFree(outbuff);
}
void main(void)
{
    mbedtls_sha384_test();
    mbedtls_sha512_test();
}


