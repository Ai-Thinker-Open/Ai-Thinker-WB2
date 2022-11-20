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


char* plain_text = "hello-Ai-WB2-Kit";

char* entropy_key = "12345";

void mbedtls_cipher_aesCBC_test(void)
{

}

void main(void)
{
    mbedtls_cipher_aesCBC_test();
}

