/**
 * @file aiot_compress_api.h
 * @brief compress模块头文件, 提供数据压缩/解压缩的能力
 *
 * @copyright Copyright (C) 2020-2025 Alibaba Group Holding Limited
 *
 */
#ifndef __AIOT_COMPRESS_API_H__
#define __AIOT_COMPRESS_API_H__

#if defined(__cplusplus)
extern "C" {
#endif

#include <stdint.h>

/* TODO: 这一段列出compress模块使用的状态码, 每个状态码需要有doxygen的brief说明, 每个码之间有1个空行隔开 */
/**
 * @brief -0x2200~-0x22FF表达SDK在compress模块内的状态码
 */
#define STATE_COMPRESS_BASE                                             (-0x2200)

/**
 * @brief 设置的压缩等级超出范围，范围：1～9
 */
#define STATE_COMPRESS_LEVEL_INVALID                                    (-0x2201)

/**
 * @brief 压缩内部错误，压缩失败
 */
#define STATE_COMPRESS_COMPR_FAILED                                     (-0x2202)

/**
 * @brief 解压缩内部错误，解压缩失败
 */
#define STATE_COMPRESS_DECOMPR_FAILED                                   (-0x2203)

/**
 * @brief 重复添加需要压缩/解压缩的topic
 */
#define STATE_COMPRESS_APPEND_REPEATED                                  (-0x2204)

/**
 * @brief compress模块收到从网络上来的报文时, 通知用户的报文类型
 */
typedef enum {
    AIOT_COMPRESS_UPDATE_REPLY
} aiot_compress_recv_type_t;

/**
 * @brief compress模块收到从网络上来的报文时, 通知用户的报文内容
 */
typedef struct {
    /**
     * @brief 报文内容所对应的报文类型, 更多信息请参考@ref aiot_compress_recv_type_t
     */
    aiot_compress_recv_type_t  type;
    union {
        /**
         * @brief 上报需要压缩解压缩的topic列表的结果返回
         */
        struct {
            uint32_t code;
            char *message;
            uint32_t message_len;
        } update_reply;
    } data;
} aiot_compress_recv_t;

/**
 * @brief compress模块收到从网络上来的报文时, 通知用户所调用的数据回调函数
 *
 * @param[in] handle compress会话句柄
 * @param[in] packet compress消息结构体, 存放收到的compress报文内容
 * @param[in] userdata 用户上下文
 *
 * @return void
 */
typedef void (* aiot_compress_recv_handler_t)(void *handle,
        const aiot_compress_recv_t *packet, void *userdata);

/**
 * @brief @ref aiot_compress_setopt 接口的option参数可选值.
 *
 * @details 下文每个选项中的数据类型, 指的是@ref aiot_compress_setopt 中, data参数的数据类型
 *
 */
typedef enum {
    /**
     * @brief 模块依赖的MQTT句柄，为该MQTT句柄连接提供压缩能力
     *
     * @details
     *
     * data-model模块依赖底层的MQTT模块, 用户必需配置正确的MQTT句柄, 否则无法正常工作
     *
     * 数据类型: (void *)
     */
    AIOT_COMPRESSOPT_MQTT_HANDLE,

    /**
     * @brief 压缩等级设置，等级越高压缩率越高，消耗的内存和时间也更多
     *
     * @details
     *
     * 默认等级为1，支持1～9，2～9需要的内存大幅增加
     *
     * 数据类型: (uint8_t *)
     */
    AIOT_COMPRESSOPT_LEVEL,

    /**
     * @brief 添加上行消息中，需要压缩的topic
     *
     * @details
     *
     * 数据类型: (char *)
     */
    AIOT_COMPRESSOPT_APPEND_COMPR_TOPIC,

    /**
     * @brief 添加下行消息中，需要解压缩的topic
     *
     * @details
     *
     * 数据类型: (char *)
     */
    AIOT_COMPRESSOPT_APPEND_DECOMPR_TOPIC,

    /**
     * @brief 设置回调, 它在SDK收到网络报文的时候被调用, 告知用户
     *
     * @details
     *
     * 数据类型: ( @ref aiot_compress_recv_handler_t )
     */
    AIOT_COMPRESSOPT_RECV_HANDLER,

    /**
     * @brief 用户需要SDK暂存的上下文
     *
     * @details 这个上下文指针会在 AIOT_COMPRESSOPT_RECV_HANDLER 和 AIOT_COMPRESSOPT_EVENT_HANDLER 设置的回调被调用时, 由SDK传给用户
     *
     * 数据类型: (void *)
     */
    AIOT_COMPRESSOPT_USERDATA,

    AIOT_COMPRESSOPT_MAX,
} aiot_compress_option_t;

/**
 * @brief 创建compress会话实例, 并以默认值配置会话参数
 *
 * @return void *
 * @retval 非NULL compress实例的句柄
 * @retval NULL   初始化失败, 一般是内存分配失败导致
 *
 */
void *aiot_compress_init(void);

/**
 * @brief 配置compress模块参数
 *
 * @param[in] handle compress会话句柄
 * @param[in] option 配置选项, 更多信息请参考@ref aiot_compress_option_t
 * @param[in] data   配置选项数据, 更多信息请参考@ref aiot_compress_option_t
 *
 * @return int32_t
 * @retval <STATE_SUCCESS  参数配置失败
 * @retval >=STATE_SUCCESS 参数配置成功
 *
 */
int32_t aiot_compress_setopt(void *handle, aiot_compress_option_t option, void *data);

/**
 * @brief 结束compress会话, 销毁实例并回收资源
 *
 * @param[in] handle 指向compress会话句柄的指针
 *
 * @return int32_t
 * @retval <STATE_SUCCESS  执行失败
 * @retval >=STATE_SUCCESS 执行成功
 *
 */
int32_t aiot_compress_deinit(void **handle);


/**
 * @brief 同步给云平台，需要压缩/解压缩的topic
 *
 * @param[in] handle 指向compress会话句柄的指针
 *
 * @return int32_t
 * @retval <STATE_SUCCESS  执行失败
 * @retval >=STATE_SUCCESS 执行成功
 *
 */
int32_t aiot_compress_topiclist_update(void *handle);

#if defined(__cplusplus)
}
#endif

#endif  /* __AIOT_COMPRESS_API_H__ */

