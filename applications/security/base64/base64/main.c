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
#include "mbedtls/base64.h"

#define BASE64_TEXT "\x1b[0m%s\x1b[0m"

char* plain_text = "hell_Ai-WB2";

void main(void)
{
    uint8_t* base64_enc = pvPortMalloc(128);
    size_t olen;
    //Start base64 encoding
    memset(base64_enc, 0, 128);
    int ret = mbedtls_base64_encode(base64_enc, 128, &olen, (uint8_t*)plain_text, strlen(plain_text));
    if (ret==MBEDTLS_ERR_BASE64_BUFFER_TOO_SMALL) {
        blog_error("\"base64_enc\" size to small");
    }
    else
        blog_info("base64 encode:" BASE64_TEXT, base64_enc);
    //Start base64 decoding
    memset(plain_text, 0, strlen(plain_text));
    ret = mbedtls_base64_decode((uint8_t*)plain_text, 11, &olen, base64_enc, strlen((char*)base64_enc));
    if (ret==MBEDTLS_ERR_BASE64_BUFFER_TOO_SMALL) {
        blog_error("\"plain_text\" size to small");
    }
    else
        blog_info("plain_text:" BASE64_TEXT, plain_text);

    vPortFree(base64_enc);
}
