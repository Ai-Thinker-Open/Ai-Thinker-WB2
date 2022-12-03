/**
 * @file data_handle.c
 * @author your name (you@domain.com)
 * @brief
 * @version 0.1
 * @date 2022-11-23
 *
 * @copyright Copyright (c) 2022
 *
 */
#include <stdio.h>
#include <blog.h>
#include <FreeRTOS.h>
#include <stdlib.h>
#include <string.h>
#include <cJSON.h>
#include "radar_data_parse.h"

#define DEVICETYPE 1

 /**
  * @brief cjson_update_data
  *
  * @param led_status
  * @param temp_value
  * @param humi
  * @return char* json data
  */
char* cjson_update_data(bool led_status, uint8_t radar_statis)
{
    cJSON* root = NULL;
    root = cJSON_CreateObject();
    cJSON_AddNumberToObject(root, "deviceType", DEVICETYPE);
    cJSON_AddNumberToObject(root, "led", led_status);
    cJSON_AddNumberToObject(root, "radar", radar_statis);
    char* json_data = cJSON_PrintUnformatted(root);
    cJSON_Delete(root);
    return json_data;
}
/**
 * @brief Get the led status from json object
 *
 * @param json_data
 * @return true
 * @return false
 */
int get_led_status_from_json(char* json_data)
{
    cJSON* root = cJSON_Parse(json_data);
    cJSON* led_data = cJSON_GetObjectItem(root, "led");
    if (led_data==NULL) {
        blog_error("no led data");
        return -1;
    }
    bool led_status = led_data->valueint;
    cJSON_Delete(root);
    return led_status;
}
/**
 * @brief Get the udp broadcast data object
 *
 * @param cjson_data
 * @param ip_buff
 * @param port
 * @return int
 */
int get_udp_broadcast_data(const char* cjson_data, char* ip_buff, int* port)
{

    cJSON* root = cJSON_Parse(cjson_data);
    if (root==NULL) {
        blog_error("cjson data is NULL");
        return -1;
    }
    cJSON* JSON_ip = cJSON_GetObjectItem(root, "ip");
    if (JSON_ip==NULL) {
        blog_error("No \"ip\" object in cjson data");
        return -1;
    }
    cJSON* JSON_port = cJSON_GetObjectItem(root, "port");
    if (JSON_port==NULL) {
        blog_error("No \"port\" object in cjson data");
        return -1;
    }
    strcpy(ip_buff, JSON_ip->valuestring);

    *port = JSON_port->valueint;

    cJSON_Delete(root);
    return 0;
}

