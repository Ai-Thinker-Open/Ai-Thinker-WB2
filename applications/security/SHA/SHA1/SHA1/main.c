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
#include "mbedtls/sha1.h"

#define MD5_TEXT "\x1b[0m%s\x1b[0m"

char* plain_text1 = "hello";
char* plain_text2 = "-";
char* plain_text3 = "Ai-WB2-Kit";

char* plain_text = "hello-Ai-WB2-Kit";

void mbedtls_sha1_test(void)
{
    uint8_t* outbuff = pvPortMalloc(20);
    memset(outbuff, 0, 20);
    mbedtls_sha1_context sha1_ctx;
    //Segmentation check
    mbedtls_sha1_init(&sha1_ctx);
    mbedtls_sha1_starts_ret(&sha1_ctx);
    //Update process plain_ text1
    blog_info("Update process:%s", (uint8_t*)plain_text1);
    mbedtls_sha1_update_ret(&sha1_ctx, (uint8_t*)plain_text1, strlen(plain_text1));

    //Update process plain_ text2
    blog_info("Update process:%s", (uint8_t*)plain_text2);
    mbedtls_sha1_update_ret(&sha1_ctx, (uint8_t*)plain_text2, strlen(plain_text2));

    //Update process plain_ text3
    blog_info("Update process:%s", plain_text3);
    mbedtls_sha1_update_ret(&sha1_ctx, (uint8_t*)plain_text3, strlen(plain_text3));

    mbedtls_sha1_finish_ret(&sha1_ctx, outbuff);
    blog_info_hexdump("sha1 Segmentation check", outbuff, 20);
    mbedtls_sha1_free(&sha1_ctx);
    //Overall verification
    memset(outbuff, 0, 20);
    mbedtls_sha1_init(&sha1_ctx);
    mbedtls_sha1((uint8_t*)plain_text, 16, outbuff);
    blog_info_hexdump("sha1 Overall verification", outbuff, 20);
    mbedtls_sha1_free(&sha1_ctx);
    vPortFree(outbuff);
}
void main(void)
{
    mbedtls_sha1_test();
}

