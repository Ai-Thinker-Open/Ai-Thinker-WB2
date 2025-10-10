/**
 * @file bilibili_follower.c
 * @author Seahi-Mo (seahi-mo@foxmail.com)
 * @brief
 * @version 0.1
 * @date 2025-09-22
 *
 * @copyright Ai-Thinker co.,ltd (c) 2025
 *
 */
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "cJSON.h"
#include "bilibili_follower.h"
#include "blog.h"
#include "FreeRTOS.h"
#include "task.h"
#include "device_state.h"

TaskHandle_t https_get_fans_task_handle = NULL;
static bool is_https_get_fans_task_running = false;
/**
 * @brief 获取粉丝数
 *
 * @param user_id
 * @return int
 */
static void https_get_fans_task(void *pvParameters)
{
	char *user_id = (char *)pvParameters;
	blog_info("get bilibili fans user_id:%s\r\n", user_id);

	while (1)
	{
		is_https_get_fans_task_running = true;
		char *http_data = https_get_code(user_id, HTTP_REQUEST_TYPE_BILIBILI);
		if (http_data == NULL)
		{
			vTaskSuspend(https_get_fans_task_handle);
			is_https_get_fans_task_running = false;
		}
		cJSON *root = cJSON_Parse(http_data); // 检查JSON格式是否正确
		if (root == NULL)
		{

			goto _exit;
		}
		cJSON *data = cJSON_GetObjectItem(root, "data");
		if (data == NULL)
		{

			goto _exit;
		}
		cJSON *follower = cJSON_GetObjectItem(data, "follower");
		if (follower == NULL)
		{

			goto _exit;
		}
		fans_count = follower->valueint;
		dev_msg_t dev_msg = {
			.device_state = DEVICE_STATE_HTTP_RESPONSE,
		};
		device_state_update(0, &dev_msg);

	_exit:
		cJSON_Delete(root);
		free(http_data);
		vTaskSuspend(https_get_fans_task_handle);
		is_https_get_fans_task_running = false;
	}
}

int bilibili_get_fans_count(char *user_id)
{
	if (user_id == NULL)
	{
		return -1;
	}
	// 创建任务
	if (https_get_fans_task_handle == NULL)
	{
		xTaskCreate(https_get_fans_task, "https_get_fans_task", 1024 * 2, user_id, 10, &https_get_fans_task_handle);
		vTaskSuspend(https_get_fans_task_handle);
		is_https_get_fans_task_running = false;
	}
	else
	{
		if (is_https_get_fans_task_running == false)
		{
			vTaskResume(https_get_fans_task_handle);
		}
	}
	return 0;
}
