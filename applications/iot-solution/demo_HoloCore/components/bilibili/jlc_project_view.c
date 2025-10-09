/**
 * @file jlc_project_view.c
 * @author Seahi-Mo (seahi-mo@foxmail.com)
 * @brief
 * @version 0.1
 * @date 2025-10-09
 *
 * @copyright Ai-Thinker co.,ltd (c) 2025
 *
 */

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "cJSON.h"
#include "blog.h"
#include "FreeRTOS.h"
#include "task.h"
#include "jlc_project_view.h"
#include "device_state.h"

TaskHandle_t https_get_project_view_task_handle = NULL;

static void https_get_project_view_task(void *pvParameters)
{
	char *proUID = (char *)pvParameters;
	// blog_info("get jlc_puid:%s", proUID);
	char *http_data = https_get_code(proUID, HTTP_REQUEST_TYPE_JLC);
	if (http_data == NULL)
	{
		vTaskDelete(https_get_project_view_task_handle);
		goto _exit;
	}
	// blog_info("http_data:%s", http_data);
	// puts(http_data);
	cJSON *root = cJSON_Parse(http_data);
	if (root == NULL)
	{
		blog_error("cJSON_Parse error");
		free(http_data);
		vTaskDelete(https_get_project_view_task_handle);
		goto _exit;
	}
	cJSON *result = cJSON_GetObjectItem(root, "result");
	if (result == NULL)
	{
		blog_error("cJSON_GetObjectItem error");
		cJSON_Delete(root);
		free(http_data);
		vTaskDelete(https_get_project_view_task_handle);
		goto _exit;
	}
	cJSON *count = cJSON_GetObjectItem(result, "count");
	if (count == NULL)
	{
		blog_error("cJSON_GetObjectItem error");
		cJSON_Delete(root);
		free(http_data);
		vTaskDelete(https_get_project_view_task_handle);
		goto _exit;
	}
	cJSON *view = cJSON_GetObjectItem(count, "views");
	if (view == NULL)
	{
		blog_error("cJSON_GetObjectItem error");
		cJSON_Delete(root);
		free(http_data);
		vTaskDelete(https_get_project_view_task_handle);
		goto _exit;
	}
	project_view_count = view->valueint;
	blog_info("project_view_count:%d", project_view_count);

	cJSON_Delete(root);
	if (http_data != NULL)
		free(http_data);

	dev_msg_t dev_msg = {
		.device_state = DEVICE_STATE_HTTP_RESPONSE,
	};
	device_state_update(0, &dev_msg);
_exit:
	vTaskDelete(https_get_project_view_task_handle);
}

int jlc_get_views_count(char *user_id)
{
	if (user_id == NULL)
	{
		return -1;
	}
	// 创建任务
	xTaskCreate(https_get_project_view_task, "https_get_project_view_task", 1024 * 2, user_id, 10, &https_get_project_view_task_handle);
	return 0;
}
