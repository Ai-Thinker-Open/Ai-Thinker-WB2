/*
 * @Author: Sean Kwok 1026025056@qq.com
 * @Date: 2022-10-09 10:53:46
 * @LastEditors: Sean Kwok 1026025056@qq.com
 * @LastEditTime: 2022-10-14 15:34:26
 * @FilePath: /Ai-Thinker-WB2/applications/easyflash/easyflash/main.c
 * @Description: EasyFlash Example
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <FreeRTOS.h>
#include <task.h>
#include <blog.h>
#include "bl_sys.h"
#include "easyflash_common.h"

void ef_rw_bytes_test(){
    uint8_t write_bytes[10] = {0};
    printf("\r\nef_bytes_key write bytes: ");
    for(uint8_t i=0; i<sizeof(write_bytes); i++){
        write_bytes[i] = i;
        printf("%x ", write_bytes[i]);
    }
    ef_set_bytes("ef_bytes_key", write_bytes, sizeof(write_bytes));
    uint8_t read_bytes[10] = {0};
    printf("\r\nef_bytes_key read bytes: ");
    if(ef_get_bytes("ef_bytes_key", read_bytes, sizeof(read_bytes))){
        for(uint8_t i=0; i<sizeof(read_bytes); i++){
            printf("%x ", read_bytes[i]);
        }
    }else{
        printf("read ef_bytes_key error");
    }
    ef_del_key("ef_bytes_key");
}

void ef_rw_u8_test(){
    printf("\r\nef_u8_key write uint8: ");
    printf("%x", 0x08);
    ef_set_u8("ef_u8_key", 0x08);
    printf("\r\nef_u8_key read uint8: ");
    uint8_t value;
    if(ef_get_u8("ef_u8_key", &value)){
        printf("%x", value);
    }else{
        printf("read ef_u8_key error");
    }
    ef_del_key("ef_u8_key");
}

void ef_rw_u16_test(){
    printf("\r\nef_u16_key write uint16: ");
    printf("%x", 0x1616);
    ef_set_u16("ef_u16_key", 0x1616);
    printf("\r\nef_u16_key read uint16: ");
    uint16_t value;
    if(ef_get_u16("ef_u16_key", &value)){
        printf("%x", value);
    }else{
        printf("read ef_u16_key error");
    }
    ef_del_key("ef_u16_key");
}

void ef_rw_u32_test(){
    printf("\r\nef_u32_key write uint32: ");
    printf("%x", 0x32323232);
    ef_set_u32("ef_u32_key", 0x32323232);
    printf("\r\nef_u32_key read uint32: ");
    uint32_t value;
    if(ef_get_u32("ef_u32_key", &value)){
        printf("%x", value);
    }else{
        printf("read ef_u32_key error");
    }
    ef_del_key("ef_u32_key");
}

void ef_rw_int_test(){
    printf("\r\nef_int_key write int: ");
    printf("%d", -666);
    ef_set_int("ef_int_key", -666);
    printf("\r\nef_int_key read int: ");
    int value;
    if(ef_get_int("ef_int_key", &value)){
        printf("%d", value);
    }else{
        printf("read ef_int_key error");
    }
    ef_del_key("ef_int_key");
}

void ef_rw_str_test(){
    printf("\r\nef_str_key write string: ");
    char *data = "Hello World!";
    printf("%s", data);
    ef_set_str("ef_str_key", data);
    printf("\r\nef_str_key read string: ");
    char string[100];
    if(ef_get_str("ef_str_key", string, sizeof(string))){
        printf("%s", string);
    }else{
        printf("read ef_str_key error");
    }
    ef_del_key("ef_str_key");
}

void ef_rw_float_test(){
    printf("\r\nef_float_key write float: ");
    printf("%f", 3.141592);
    ef_set_float("ef_float_key", 3.141592);
    printf("\r\nef_float_key read float: ");
    float value;
    if(ef_get_float("ef_float_key", &value)){
        printf("%f\r\n", value);
    }else{
        printf("read ef_float_key error");
    }
    ef_del_key("ef_float_key");
}

void main(void)
{
    printf("--------easyflash write/read demo--------");
    easyflash_init();
    ef_rw_bytes_test();
    ef_rw_u8_test();
    ef_rw_u16_test();
    ef_rw_u32_test();
    ef_rw_int_test();
    ef_rw_str_test();
    ef_rw_float_test();
}
