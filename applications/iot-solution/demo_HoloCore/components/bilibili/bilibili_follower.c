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
/**
 * @brief 获取粉丝数
 *  {"code":0,"message":"0","ttl":1,"data":{"mid":355202584,"following":30,"whisper":0,"black":0,"follower":273}}
 * @param user_id
 * @return int
 */
static void https_get_fans_task(void *pvParameters)
{
	char *user_id = (char *)pvParameters;
	blog_info("get bilibili fans user_id:%s\r\n", user_id);
	char *http_data = https_get_code(user_id);
	if (http_data == NULL)
	{
		free(http_data);
		goto _exit;
	}
	cJSON *root = cJSON_Parse(http_data); // 检查JSON格式是否正确
	if (root == NULL)
	{
		cJSON_Delete(root);
		free(http_data);
		goto _exit;
	}
	cJSON *data = cJSON_GetObjectItem(root, "data");
	if (data == NULL)
	{
		cJSON_Delete(root);
		free(http_data);
		goto _exit;
	}
	cJSON *follower = cJSON_GetObjectItem(data, "follower");
	if (follower == NULL)
	{
		cJSON_Delete(root);
		free(http_data);
		goto _exit;
	}
	fans_count = follower->valueint;
	dev_msg_t dev_msg = {
		.device_state = DEVICE_STATE_HTTP_RESPONSE,
	};
	device_state_update(0, &dev_msg);
	cJSON_Delete(root);
	free(http_data);
_exit:
	vTaskDelete(https_get_fans_task_handle);
}
int bilibili_get_fans_count(char *user_id)
{
	if (user_id == NULL)
	{
		return -1;
	}
	// 创建任务
	xTaskCreate(https_get_fans_task, "https_get_fans_task", 2048, user_id, 10, &https_get_fans_task_handle);
	return 0;
}
