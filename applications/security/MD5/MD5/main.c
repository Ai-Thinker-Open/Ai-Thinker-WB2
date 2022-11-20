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
#include "mbedtls/md5.h"

#define MD5_TEXT "\x1b[0m%s\x1b[0m"

char* plain_text1 = "hello";
char* plain_text2 = "-";
char* plain_text3 = "Ai-WB2-Kit";

char* plain_text = "hello-Ai-WB2-Kit";
/**
 * @brief mbedtls_md5_test
 *
 */
void mbedtls_md5_test(void)
{
    uint8_t* outbuf = pvPortMalloc(16);
    memset(outbuf, 0, 16);
    mbedtls_md5_context md5_ctx;
    mbedtls_md5_init(&md5_ctx);
    mbedtls_md5_starts_ret(&md5_ctx);
    /**   Segmented MD5 verification         */
    //Update process plain_ text1
    mbedtls_md5_update_ret(&md5_ctx, (uint8_t*)plain_text1, strlen(plain_text1));
    blog_info("Update process:%s", (uint8_t*)plain_text1);
    //Update process plain_ text2
    mbedtls_md5_update_ret(&md5_ctx, (uint8_t*)plain_text2, strlen(plain_text2));
    blog_info("Update process:%s", (uint8_t*)plain_text2);
    //Update process plain_ text3
    mbedtls_md5_update_ret(&md5_ctx, (uint8_t*)plain_text3, strlen(plain_text3));
    blog_info("Update process:%s", plain_text3);
    mbedtls_md5_finish_ret(&md5_ctx, outbuf);
    mbedtls_md5_free(&md5_ctx);
    blog_info_hexdump("MD5", outbuf, 16);

    /**   Overall verification               */
    memset(outbuf, 0, 16);
    mbedtls_md5_init(&md5_ctx);
    mbedtls_md5((uint8_t*)plain_text, 16, outbuf);
    blog_info("Update process:%s", plain_text);
    blog_info_hexdump("MD5", outbuf, 16);
    mbedtls_md5_free(&md5_ctx);

    vPortFree(outbuf);
}
void main(void)
{
    mbedtls_md5_test();
}

