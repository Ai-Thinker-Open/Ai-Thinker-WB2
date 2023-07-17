/**
 * @file aiot_compress_api.c
 * @brief compress模块的API接口实现, 提供数据压缩/解压的能力
 *
 * @copyright Copyright (C) 2020-2025 Alibaba Group Holding Limited
 *
 */

#include "compress_private.h"
#include "core_string.h"
#include "core_log.h"
#include "core_global.h"
#include "core_mqtt.h"
#include "libdeflate.h"

static void *_compress_malloc(size_t size)
{
    void *ptr = NULL;
    aiot_sysdep_portfile_t *sysdep = aiot_sysdep_get_portfile();
    if (sysdep == NULL) {
        return NULL;
    }

    ptr = sysdep->core_sysdep_malloc(size, COMPRESS_MODULE_NAME);
    /*
    core_log2(sysdep, STATE_COMPRESS_BASE, "malloc ptr %x, len %d\r\n", ptr, &size);
    */
    return ptr;
}

static void _compress_free(void *ptr)
{
    aiot_sysdep_portfile_t *sysdep = aiot_sysdep_get_portfile();
    if (sysdep == NULL) {
        return;
    }
    /*
    core_log1(sysdep, STATE_COMPRESS_BASE, "malloc ptr %x\r\n", ptr);
    */
    sysdep->core_sysdep_free(ptr);
}

static void _compress_core_mqtt_process_handler(void *context, aiot_mqtt_event_t *event, core_mqtt_event_t *core_event)
{
    compress_handle_t *compress_handle = (compress_handle_t *)context;

    if (core_event != NULL) {
        switch (core_event->type) {
        case CORE_MQTTEVT_DEINIT: {
            compress_handle->mqtt_handle = NULL;
            return;
        }
        default: {

        }
        break;
        }
    }
}

static int32_t _compress_core_mqtt_operate_process_handler(compress_handle_t *compress_handle, core_mqtt_option_t option)
{
    core_mqtt_process_data_t process_data;

    memset(&process_data, 0, sizeof(core_mqtt_process_data_t));
    process_data.handler = _compress_core_mqtt_process_handler;
    process_data.context = compress_handle;

    return core_mqtt_setopt(compress_handle->mqtt_handle, option, &process_data);
}

/* 查询topic是为压缩topic，是的话返回STATE_SUCCESS */
static int32_t _compress_topic_filter(compress_handle_t *compress_handle, char *topic, uint16_t topic_len)
{
    core_compr_node_t *compr_node = NULL;
    compress_handle->sysdep->core_sysdep_mutex_lock(compress_handle->data_mutex);
    core_list_for_each_entry(compr_node, &compress_handle->compr_list, linked_node, core_compr_node_t) {
        if (_core_mqtt_topic_compare(compr_node->topic, (uint32_t)(strlen(compr_node->topic)), topic,
                                     topic_len) == STATE_SUCCESS) {
            compress_handle->sysdep->core_sysdep_mutex_unlock(compress_handle->data_mutex);
            return STATE_SUCCESS;
        }
    }
    compress_handle->sysdep->core_sysdep_mutex_unlock(compress_handle->data_mutex);
    return STATE_MQTT_TOPIC_COMPARE_FAILED;
}

/* 查询topic是为解压缩topic，是的话返回STATE_SUCCESS */
static int32_t _decompress_topic_filter(compress_handle_t *compress_handle, char *topic, uint16_t topic_len)
{
    core_compr_node_t *compr_node = NULL;
    compress_handle->sysdep->core_sysdep_mutex_lock(compress_handle->data_mutex);
    core_list_for_each_entry(compr_node, &compress_handle->decompr_list, linked_node, core_compr_node_t) {
        if (_core_mqtt_topic_compare(compr_node->topic, (uint32_t)(strlen(compr_node->topic)), topic,
                                     topic_len) == STATE_SUCCESS) {
            compress_handle->sysdep->core_sysdep_mutex_unlock(compress_handle->data_mutex);
            return STATE_SUCCESS;
        }
    }
    compress_handle->sysdep->core_sysdep_mutex_unlock(compress_handle->data_mutex);
    return STATE_MQTT_TOPIC_COMPARE_FAILED;
}

/* 添加topic到压缩/解压缩列表中 */
static int32_t _add_topic_filter(compress_handle_t *compress_handle, struct core_list_head *topic_list, char *topic)
{
    core_compr_node_t *compr_node = NULL;
    /* topic查重，避免重复添加 */
    core_list_for_each_entry(compr_node, topic_list, linked_node, core_compr_node_t) {
        if (_core_mqtt_topic_compare(compr_node->topic, (uint32_t)(strlen(compr_node->topic)), topic,
                                     strlen(topic)) == STATE_SUCCESS) {
            return STATE_COMPRESS_APPEND_REPEATED;
        }
    }

    /* 生成新的节点插入topic列表 */
    compr_node = compress_handle->sysdep->core_sysdep_malloc(sizeof(core_mqtt_sub_node_t), COMPRESS_MODULE_NAME);
    if (compr_node == NULL) {
        return STATE_SYS_DEPEND_MALLOC_FAILED;
    }
    CORE_INIT_LIST_HEAD(&compr_node->linked_node);
    compr_node->topic = compress_handle->sysdep->core_sysdep_malloc(strlen(topic) + 1, COMPRESS_MODULE_NAME);
    if (compr_node->topic == NULL) {
        compress_handle->sysdep->core_sysdep_free(compr_node);
        return STATE_SYS_DEPEND_MALLOC_FAILED;
    }

    memset(compr_node->topic, 0, strlen(topic) + 1);
    memcpy(compr_node->topic, topic, strlen(topic));
    core_list_add_tail(&compr_node->linked_node, topic_list);

    return STATE_SUCCESS;
}

/* 执行压缩操作 */
static int32_t _compress_process(void *context, const core_mqtt_msg_t *src, core_mqtt_msg_t *dest)
{
    compress_handle_t *compress_handle = (compress_handle_t *)context;
    uint8_t *buffer = NULL;
    uint32_t compr_len = 0;
    struct libdeflate_compressor *compressor = NULL;
    if(context == NULL || src == NULL || dest == NULL) {
        return STATE_USER_INPUT_NULL_POINTER;
    }

    if(src->payload_len <= 0) {
        return STATE_USER_INPUT_OUT_RANGE;
    }

    memcpy(dest, src, sizeof(*dest));
    /* 未匹配成功为正常情况，返回SUCCESS */
    if(STATE_SUCCESS != _compress_topic_filter(compress_handle, src->topic, src->topic_len)) {
        return STATE_SUCCESS;
    }

    compressor = libdeflate_alloc_compressor(compress_handle->compress_level);
    if (compressor == NULL) {
        core_log(compress_handle->sysdep, STATE_COMPRESS_COMPR_FAILED, "Compressor sysdep malloc failed !\r\n");
        return STATE_SYS_DEPEND_MALLOC_FAILED;
    }

    /* 处理压缩 */
    compr_len = libdeflate_gzip_compress_bound(compressor, src->payload_len);
    buffer = compress_handle->sysdep->core_sysdep_malloc(compr_len, COMPRESS_MODULE_NAME);
    if(buffer == NULL) {
        libdeflate_free_compressor(compressor);
        core_log(compress_handle->sysdep, STATE_COMPRESS_COMPR_FAILED, "Compressor sysdep malloc failed !\r\n");
        return STATE_SYS_DEPEND_MALLOC_FAILED;
    }

    compr_len = libdeflate_gzip_compress(compressor, src->payload, src->payload_len, buffer, compr_len);
    if(compr_len <= 0) {
        libdeflate_free_compressor(compressor);
        compress_handle->sysdep->core_sysdep_free(buffer);
        core_log(compress_handle->sysdep, STATE_COMPRESS_COMPR_FAILED, "Compressor gzip process error !\r\n");
        return STATE_COMPRESS_COMPR_FAILED;
    }
    libdeflate_free_compressor(compressor);

    /* payload */
    dest->payload = buffer;
    dest->payload_len = compr_len;
    core_log2(compress_handle->sysdep, STATE_COMPRESS_BASE, "compressed [%d] --> [%d]\r\n", (void *)&src->payload_len, (void *)&dest->payload_len);

    return STATE_COMPRESS_SUCCESS;
}

/* 执行解压缩动作 */
static int32_t _core_decompress_process(void *context, const core_mqtt_msg_t *src, core_mqtt_msg_t *dest)
{
    compress_handle_t *compress_handle = (compress_handle_t *)context;
    struct libdeflate_decompressor *decompressor = NULL;
    uint32_t expect_len = 0, res = 0;
    size_t decompr_len = 0;
    uint8_t *buffer = NULL;
    if(compress_handle == NULL || src == NULL || dest == NULL) {
        return STATE_USER_INPUT_NULL_POINTER;
    }

    memcpy(dest, src, sizeof(*dest));
    /* 未匹配成功为正常情况，返回SUCCESS */
    if(STATE_SUCCESS != _decompress_topic_filter(compress_handle, src->topic, src->topic_len)) {
        return STATE_SUCCESS;
    }

    /* 未达到压缩的长度阈值，直接返回 */
    expect_len = src->payload[src->payload_len - 1] << 24 | src->payload[src->payload_len - 2] << 16 | src->payload[src->payload_len - 3] << 8 | src->payload[src->payload_len - 4];
    if(expect_len >= CORE_MQTT_PAYLOAD_MAXLEN || expect_len <= 0) {
        core_log(compress_handle->sysdep, STATE_COMPRESS_DECOMPR_FAILED, "Decompressor dismatch payload lenth!\r\n");
        return STATE_COMPRESS_DECOMPR_FAILED;
    }

    /* 申请解压后的内存 */
    buffer = compress_handle->sysdep->core_sysdep_malloc(expect_len, COMPRESS_MODULE_NAME);
    if(buffer == NULL) {
        core_log(compress_handle->sysdep, STATE_COMPRESS_DECOMPR_FAILED, "Decompressor sysdep malloc failed !\r\n");
        return STATE_SYS_DEPEND_MALLOC_FAILED;
    }

    /* 处理解压缩 */
    decompressor = libdeflate_alloc_decompressor();
    if (decompressor == NULL) {
        compress_handle->sysdep->core_sysdep_free(buffer);
        core_log(compress_handle->sysdep, STATE_COMPRESS_DECOMPR_FAILED, "Decompressor sysdep malloc failed !\r\n");
        return STATE_COMPRESS_COMPR_FAILED;
    }

    res = libdeflate_gzip_decompress(decompressor, src->payload, src->payload_len, buffer, expect_len, &decompr_len);
    if(res != 0 ) {
        libdeflate_free_decompressor(decompressor);
        compress_handle->sysdep->core_sysdep_free(buffer);
        core_log(compress_handle->sysdep, STATE_COMPRESS_DECOMPR_FAILED, "Decompressor gzip process error !\r\n");
        return STATE_COMPRESS_COMPR_FAILED;
    }
    libdeflate_free_decompressor(decompressor);

    dest->payload = buffer;
    dest->payload_len = decompr_len;
    core_log2(compress_handle->sysdep, STATE_COMPRESS_BASE, "decompressed [%d] --> [%d]\r\n", (void *)&src->payload_len, (void *)&dest->payload_len);
    return STATE_COMPRESS_SUCCESS;
}

static void _compress_comprlist_destroy(compress_handle_t *compress_handle)
{
    core_compr_node_t *node = NULL, *next = NULL;

    /* 释放上行压缩列表 */
    core_list_for_each_entry_safe(node, next, &compress_handle->compr_list, linked_node, core_compr_node_t) {
        core_list_del(&node->linked_node);
        compress_handle->sysdep->core_sysdep_free(node->topic);
        compress_handle->sysdep->core_sysdep_free(node);
    }

    /* 释放下行解压缩列表 */
    node = NULL;
    next = NULL;
    core_list_for_each_entry_safe(node, next, &compress_handle->decompr_list, linked_node, core_compr_node_t) {
        core_list_del(&node->linked_node);
        compress_handle->sysdep->core_sysdep_free(node->topic);
        compress_handle->sysdep->core_sysdep_free(node);
    }
}

void *aiot_compress_init(void)
{
    compress_handle_t *compress_handle = NULL;
    aiot_sysdep_portfile_t *sysdep = NULL;

    sysdep = aiot_sysdep_get_portfile();
    if (sysdep == NULL) {
        return NULL;
    }

    compress_handle = sysdep->core_sysdep_malloc(sizeof(compress_handle_t), COMPRESS_MODULE_NAME);
    if (compress_handle == NULL) {
        return NULL;
    }
    memset(compress_handle, 0, sizeof(compress_handle_t));
    compress_handle->sysdep = sysdep;
    compress_handle->compress_level = COMPRESS_DEFAULT_LEVEL;
    compress_handle->mqtt_handle = NULL;
    compress_handle->data_mutex = sysdep->core_sysdep_mutex_init();
    compress_handle->exec_enabled = 1;
    CORE_INIT_LIST_HEAD(&compress_handle->compr_list);
    CORE_INIT_LIST_HEAD(&compress_handle->decompr_list);

    libdeflate_set_memory_allocator(_compress_malloc, _compress_free);

    return compress_handle;
}

int32_t aiot_compress_setopt(void *handle, aiot_compress_option_t option, void *data)
{
    int32_t res = STATE_SUCCESS;
    compress_handle_t *compress_handle = (compress_handle_t *)handle;
    core_mqtt_compress_data_t prepare_compress, prepare_decompress;
    uint8_t level = 0;

    if (handle == NULL || data == NULL) {
        return STATE_USER_INPUT_NULL_POINTER;
    }

    if (option >= AIOT_COMPRESSOPT_MAX) {
        return STATE_USER_INPUT_OUT_RANGE;
    }

    if (compress_handle->exec_enabled == 0) {
        return STATE_USER_INPUT_EXEC_DISABLED;
    }

    compress_handle->sysdep->core_sysdep_mutex_lock(compress_handle->data_mutex);
    switch (option) {
    case AIOT_COMPRESSOPT_MQTT_HANDLE: {
        /* 设置mqtt发送前预处理 */
        compress_handle->mqtt_handle = data;
        prepare_compress.handler = _compress_process;
        prepare_compress.context = compress_handle;
        core_mqtt_setopt(compress_handle->mqtt_handle, CORE_MQTTOPT_COMPRESS_HANDLER, &prepare_compress);

        /* 设置mqtt接收消息后预处理 */
        prepare_decompress.handler = _core_decompress_process;
        prepare_decompress.context = compress_handle;
        core_mqtt_setopt(compress_handle->mqtt_handle, CORE_MQTTOPT_DECOMPRESS_HANDLER, &prepare_decompress);
        _compress_core_mqtt_operate_process_handler(compress_handle, CORE_MQTTOPT_APPEND_PROCESS_HANDLER);
    }
    break;
    case AIOT_COMPRESSOPT_LEVEL: {
        level = *(uint8_t *)data;
        if(level > 0 && level < 10) {
            compress_handle->compress_level = level;
        } else {
            compress_handle->sysdep->core_sysdep_mutex_unlock(compress_handle->data_mutex);
            return STATE_USER_INPUT_OUT_RANGE;
        }
    }
    break;
    case AIOT_COMPRESSOPT_APPEND_COMPR_TOPIC: {
        res = _add_topic_filter(compress_handle, &compress_handle->compr_list, (char *)data);
    }
    break;
    case AIOT_COMPRESSOPT_APPEND_DECOMPR_TOPIC: {
        res = _add_topic_filter(compress_handle, &compress_handle->decompr_list, (char *)data);
    }
    break;
    case AIOT_COMPRESSOPT_RECV_HANDLER: {
        compress_handle->recv_handler = (aiot_compress_recv_handler_t)data;
    }
    break;
    case AIOT_COMPRESSOPT_USERDATA: {
        compress_handle->userdata = data;
    }
    break;
    default: {
        res = STATE_USER_INPUT_UNKNOWN_OPTION;
    }
    break;
    }
    compress_handle->sysdep->core_sysdep_mutex_unlock(compress_handle->data_mutex);


    return res;
}

int32_t aiot_compress_deinit(void **handle)
{
    compress_handle_t *compress_handle = NULL;
    core_mqtt_compress_data_t prepare_data = {NULL, NULL};

    if (handle == NULL || *handle == NULL) {
        return STATE_USER_INPUT_NULL_POINTER;
    }

    compress_handle = *(compress_handle_t **)handle;

    if (compress_handle->exec_enabled == 0) {
        return STATE_USER_INPUT_EXEC_DISABLED;
    }

    compress_handle->sysdep->core_sysdep_mutex_lock(compress_handle->data_mutex);
    compress_handle->exec_enabled = 0;
    if(compress_handle->mqtt_handle != NULL) {
        core_mqtt_setopt(compress_handle->mqtt_handle, CORE_MQTTOPT_COMPRESS_HANDLER, &prepare_data);
        core_mqtt_setopt(compress_handle->mqtt_handle, CORE_MQTTOPT_DECOMPRESS_HANDLER, &prepare_data);
        _compress_core_mqtt_operate_process_handler(compress_handle, CORE_MQTTOPT_REMOVE_PROCESS_HANDLER);
        compress_handle->mqtt_handle = NULL;
    }

    _compress_comprlist_destroy(compress_handle);

    *handle = NULL;
    compress_handle->sysdep->core_sysdep_mutex_unlock(compress_handle->data_mutex);
    compress_handle->sysdep->core_sysdep_mutex_deinit(&compress_handle->data_mutex);

    compress_handle->sysdep->core_sysdep_free(compress_handle);

    return STATE_SUCCESS;
}

static void _compress_default_recv_handler(void *handle, const aiot_mqtt_recv_t *packet, void *userdata)
{
    compress_handle_t *compress_handle = (compress_handle_t *)userdata;
    char *key_code = "code", *key_message = "message";
    char *value = NULL;
    uint32_t value_len = 0;
    aiot_compress_recv_t recv;
    memset(&recv, 0, sizeof(recv));
    if(packet->type != AIOT_MQTTRECV_PUB) {
        return;
    }

    /* 解析报文中的code和message */
    if ((core_json_value((char *)packet->data.pub.payload, packet->data.pub.payload_len,
                            key_code, strlen(key_code), &value, &value_len)) < 0 ||
        (core_str2uint(value, value_len, &recv.data.update_reply.code)) < 0 ||
        (core_json_value((char *)packet->data.pub.payload, packet->data.pub.payload_len,
                            key_message, strlen(key_message),
                            &recv.data.update_reply.message,
                            &recv.data.update_reply.message_len)) < 0) {
        core_log(compress_handle->sysdep, STATE_COMPRESS_BASE, "update compress topic list reply failed\r\n");
        return;
    }

    if(compress_handle->recv_handler != NULL) {
        compress_handle->recv_handler(compress_handle, &recv, compress_handle->userdata);
    }
}

int32_t aiot_compress_topiclist_update(void *handle)
{
    compress_handle_t *compress_handle = (compress_handle_t *)handle;
    char *header = "{\"params\":[";
    char *format_h = "{\"topic\": \"";
    char *compr_format_e = "\",\"operation\": \"decompress\",\"format\": \"gzip\"},";
    char *decompr_format_e = "\",\"operation\": \"compress\",\"format\": \"gzip\"},";
    char *tailer = "]}";
    uint8_t *payload = NULL;
    int32_t payload_size = 64, pos = 0;
    core_compr_node_t *node = NULL;
    char *topic = NULL, *src[2] = {NULL, NULL};
    int32_t res = STATE_SUCCESS;

    if(handle == NULL || compress_handle->mqtt_handle == NULL) {
        return STATE_USER_INPUT_NULL_POINTER;
    }

    /* 生成topic */
    src[0] = core_mqtt_get_product_key(compress_handle->mqtt_handle);
    src[1] = core_mqtt_get_device_name(compress_handle->mqtt_handle);
    res = core_sprintf(compress_handle->sysdep, &topic, COMPRESS_UPDATE_REPLY_TOPIC_FMT, src, sizeof(src) / sizeof(char *),
                       COMPRESS_MODULE_NAME);
    if (NULL == topic) {
        return res;
    }
    aiot_mqtt_sub(compress_handle->mqtt_handle, topic, _compress_default_recv_handler, 0, compress_handle);
    compress_handle->sysdep->core_sysdep_free(topic);
    compress_handle->sysdep->core_sysdep_sleep(500);

    topic = NULL;
    res = core_sprintf(compress_handle->sysdep, &topic, COMPRESS_UPDATE_TOPIC_FMT, src, sizeof(src) / sizeof(char *),
                       COMPRESS_MODULE_NAME);
    if (NULL == topic) {
        return res;
    }

    /* 生成payload */
    compress_handle->sysdep->core_sysdep_mutex_lock(compress_handle->data_mutex);

    /* 先统计长度，申请内存 */
    core_list_for_each_entry(node, &compress_handle->compr_list, linked_node, core_compr_node_t) {
        payload_size += strlen(format_h) + strlen(compr_format_e) + strlen(node->topic);
    }
    node = NULL;
    core_list_for_each_entry(node, &compress_handle->decompr_list, linked_node, core_compr_node_t) {
        payload_size += strlen(format_h) + strlen(decompr_format_e) + strlen(node->topic);
    }
    payload = compress_handle->sysdep->core_sysdep_malloc(payload_size, COMPRESS_MODULE_NAME);
    if(payload == NULL) {
        compress_handle->sysdep->core_sysdep_free(topic);
        compress_handle->sysdep->core_sysdep_mutex_unlock(compress_handle->data_mutex);
        return STATE_SYS_DEPEND_MALLOC_FAILED;
    }

    /* 拼接生成payload */
    memset(payload, 0, payload_size);
    memcpy(payload + pos, header, strlen(header));
    pos += strlen(header);
    core_list_for_each_entry(node, &compress_handle->compr_list, linked_node, core_compr_node_t) {
        memcpy(payload + pos, format_h, strlen(format_h));
        pos += strlen(format_h);
        memcpy(payload + pos, node->topic, strlen(node->topic));
        pos += strlen(node->topic);
        memcpy(payload + pos, compr_format_e, strlen(compr_format_e));
        pos += strlen(compr_format_e);
    }

    core_list_for_each_entry(node, &compress_handle->decompr_list, linked_node, core_compr_node_t) {
        memcpy(payload + pos, format_h, strlen(format_h));
        pos += strlen(format_h);
        memcpy(payload + pos, node->topic, strlen(node->topic));
        pos += strlen(node->topic);
        memcpy(payload + pos, decompr_format_e, strlen(decompr_format_e));
        pos += strlen(decompr_format_e);
    }
    compress_handle->sysdep->core_sysdep_mutex_unlock(compress_handle->data_mutex);

    if(payload[pos - 1] == ',') {
        pos -= 1;
    }
    memcpy(payload + pos, tailer, strlen(tailer));
    pos += strlen(tailer);

    /* 上报pub消息 */
    res = aiot_mqtt_pub(compress_handle->mqtt_handle, topic, payload, pos, 0);
    compress_handle->sysdep->core_sysdep_free(topic);
    compress_handle->sysdep->core_sysdep_free(payload);

    return res;
}


