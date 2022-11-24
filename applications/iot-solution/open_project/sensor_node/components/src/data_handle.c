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

#define DEVICETYPE 1

 /**
  * @brief cjson_update_data
  *
  * @param led_status
  * @param temp_value
  * @param humi
  * @return char* json data
  */
char* cjson_update_data(bool led_status, double temp_value, unsigned char humi)
{
    cJSON* root = NULL;
    root = cJSON_CreateObject();
    cJSON_AddNumberToObject(root, "deviceType", DEVICETYPE);
    cJSON_AddNumberToObject(root, "led", led_status);
    cJSON_AddNumberToObject(root, "temperature", (uint8_t)temp_value);
    cJSON_AddNumberToObject(root, "humidness", humi);
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