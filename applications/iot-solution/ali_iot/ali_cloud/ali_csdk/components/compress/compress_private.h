/**
 * @file compress_private.h
 * @brief compress模块内部的宏定义和数据结构声明, 不面向其它模块, 更不面向用户
 *
 * @copyright Copyright (C) 2020-2025 Alibaba Group Holding Limited
 *
 */
#ifndef __COMPRESS_PRIVATE_H__
#define __COMPRESS_PRIVATE_H__

#if defined(__cplusplus)
extern "C" {
#endif

/* 用这种方式包含标准C库的头文件 */
#include "core_stdinc.h"
#include "aiot_state_api.h"
#include "aiot_sysdep_api.h"
#include "aiot_compress_api.h"      /* 内部头文件是用户可见头文件的超集 */
#include "core_list.h"

typedef struct {
    char *topic;
    struct core_list_head linked_node;
} core_compr_node_t;

typedef struct {
    aiot_sysdep_portfile_t     *sysdep;             /* 底层依赖回调合集的引用指针 */
    uint8_t    compress_level;                      /* 设置的压缩等级 */
    void       *mqtt_handle;                        /* 关联的mqtt句柄 */
    struct core_list_head compr_list;               /* 需要压缩的topic列表 */
    struct core_list_head decompr_list;             /* 需要解压缩的topic列表 */
    aiot_compress_recv_handler_t    recv_handler;   /* 组件从协议栈读到内容时, 通知用户的回调 */
    void *userdata;                                 /* 组件调用以上2个 compress_handler 时的入参之一 */

    void *data_mutex;
    uint8_t exec_enabled;
} compress_handle_t;

#define COMPRESS_UPDATE_TOPIC_FMT                "/sys/%s/%s/codec/topic/update"
#define COMPRESS_UPDATE_REPLY_TOPIC_FMT          "/sys/%s/%s/codec/topic/update_reply"

#define COMPRESS_MODULE_NAME                    "compress"  /* 用于内存统计的模块名字符串 */
#define COMPRESS_DEFAULT_LEVEL                  (1)

#if defined(__cplusplus)
}
#endif
#endif  /* __COMPRESS_PRIVATE_H__ */

