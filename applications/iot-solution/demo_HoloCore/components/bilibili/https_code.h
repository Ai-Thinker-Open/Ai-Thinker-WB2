/**
 * @file https_code.h
 * @author Seahi-Mo (seahi-mo@foxmail.com)
 * @brief
 * @version 0.1
 * @date 2025-09-22
 *
 * @copyright Ai-Thinker co.,ltd (c) 2025
 *
 */
#ifndef __HTTPS_CODE_H__
#define __HTTPS_CODE_H__

#define HTTP_REQUEST_TYPE_JLC 0
#define HTTP_REQUEST_TYPE_BILIBILI 1
// 定义count对象提取的状态
typedef enum
{
	COUNT_STATE_NONE,	 // 未找到count起始
	COUNT_STATE_INSIDE,	 // 正在提取count对象
	COUNT_STATE_COMPLETE // count对象提取完成
} CountExtractState;
// 新增变量：跟踪响应解析状态
typedef enum
{
	RESPONSE_STATE_HEADER, // 正在读取响应头
	RESPONSE_STATE_BODY,   // 正在读取响应体
	RESPONSE_STATE_DONE	   // 响应读取完成
} ResponseState;

char *https_get_code(char *user_id, unsigned char uid_type);
#endif /* __HTTPS_CODE_H__ */