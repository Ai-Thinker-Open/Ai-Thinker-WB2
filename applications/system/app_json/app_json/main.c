/**
 * @file main.c
 * @author your name (you@domain.com)
 * @brief
 * @version 0.1
 * @date 2022-10-21
 *
 * @copyright Copyright (c) 2022
 *
 */
#include <FreeRTOS.h>
#include <task.h>
#include <stdio.h>
#include <bl_sys_time.h>
#include <blog.h>
#include <cJSON.h>
 /**
  * @brief TaskCreateJSON
  *
  * @param pvParameters
  */
static void TaskCreateJSON(void* pvParameters)
{

    cJSON* cjson_test = NULL;
    cJSON* cjson_address = NULL;
    cJSON* cjson_skill = NULL;
    char* str = NULL;


    cjson_test = cJSON_CreateObject();

    cJSON_AddStringToObject(cjson_test, "name", "aithinker");

    cJSON_AddNumberToObject(cjson_test, "age", 22);

    cjson_address = cJSON_CreateObject();
    cJSON_AddStringToObject(cjson_address, "country", "China");
    cJSON_AddNumberToObject(cjson_address, "zip-code", 111111);
    cJSON_AddItemToObject(cjson_test, "address", cjson_address);

    cjson_skill = cJSON_CreateArray();
    cJSON_AddItemToArray(cjson_skill, cJSON_CreateString("C"));
    cJSON_AddItemToArray(cjson_skill, cJSON_CreateString("Java"));
    cJSON_AddItemToArray(cjson_skill, cJSON_CreateString("Python"));
    cJSON_AddItemToObject(cjson_test, "skill", cjson_skill);

    cJSON_AddFalseToObject(cjson_test, "KOL");

    str = cJSON_Print(cjson_test);
    char* str_unfm = cJSON_PrintUnformatted(cjson_test);


    char* str_print = cJSON_Print(cjson_test);
    if (str_print != NULL)
    {
        blog_info("%s", str_print);
        blog_info("%s", str_unfm);
        cJSON_free(str_print);
        str_print = NULL;
    }

    if (cjson_test != NULL)
        cJSON_Delete(cjson_test);

    vTaskDelete(NULL);
}
/**
 * @brief TaskParseJSON
 *
 * @param pvParameters
 */
static void TaskParseJSON(void* pvParameters)
{
    char* str_json = "{\"name\":\"aithinker-xuhongv\",\"age\":22,\"address\":{\"country\":\"China\",\"zip-code\":123},\"skill\":[\"C\",\"C++\",\"JavaScript\",\"Java\",\"Python\"],\"KOL\":false}";

    cJSON* root = cJSON_Parse(str_json);
    cJSON* p_name = cJSON_GetObjectItem(root, "name");
    blog_info("name=%s", p_name->valuestring);

    cJSON* p_age = cJSON_GetObjectItem(root, "age");
    blog_info("age=%d", p_age->valueint);

    cJSON* p_kol = cJSON_GetObjectItem(root, "KOL");
    blog_info("p_kol=%d", p_kol->valueint);

    cJSON* p_address = cJSON_GetObjectItem(root, "address");
    cJSON* p_country = cJSON_GetObjectItem(p_address, "country");
    blog_info("country=%s", p_country->valuestring);

    cJSON* p_zip_code = cJSON_GetObjectItem(p_address, "zip-code");
    blog_info("zip_code=%d", p_zip_code->valueint);

    cJSON* subject_arr = cJSON_GetObjectItem(root, "skill");
    int subject_arr_size = cJSON_GetArraySize(subject_arr);
    cJSON* item;

    int i;
    blog_info("stu_arr_size: %d", subject_arr_size);

    for (i = 0; i < subject_arr_size; ++i)
    {
        item = cJSON_GetArrayItem(subject_arr, i);
        blog_info("id:%d, skills=%s\n", i, item->valuestring);
    }

    if (root != NULL)
    {
        cJSON_Delete(root);
        root = NULL;
    }
    vTaskDelete(NULL);
}

void main(void)
{
    blog_info("json demo Start");
    xTaskCreate(TaskCreateJSON, (char*)"TaskCreateJSON", 1024, NULL, 15, NULL);
    vTaskDelay(1000 / portTICK_PERIOD_MS);
    xTaskCreate(TaskParseJSON, (char*)"TaskParseJSON", 1024, NULL, 15, NULL);
}
