/*
 * Copyright (C) 2019 THL A29 Limited, a Tencent company. All rights reserved.
 * Licensed under the MIT License (the "License"); you may not use this file except in
 * compliance with the License. You may obtain a copy of the License at
 * http://opensource.org/licenses/MIT
 * Unless required by applicable law or agreed to in writing, software distributed under the License is
 * distributed on an "AS IS" basis, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND,
 * either express or implied. See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */
#ifdef __cplusplus
extern "C" {
#endif

#include <stdio.h>
#include <string.h>

#include "ble_qiot_export.h"
#include "ble_qiot_template.h"
#include "ble_qiot_param_check.h"
#include "ble_qiot_common.h"

extern ble_action_t sg_ble_action_array[];
extern ble_event_t sg_ble_event_array[];
extern ble_property_t sg_ble_property_array[];
static bool ble_check_space_enough_by_type(uint8_t type, uint16_t left_size)
{
    switch(type)
    {
        case BLE_QIOT_DATA_TYPE_BOOL:
            return left_size >= sizeof(uint8_t);
        case BLE_QIOT_DATA_TYPE_INT:
        case BLE_QIOT_DATA_TYPE_FLOAT:
        case BLE_QIOT_DATA_TYPE_TIME:
            return left_size >= sizeof(uint32_t);
        case BLE_QIOT_DATA_TYPE_ENUM:
            return left_size >= sizeof(uint16_t);
        default:
            // string length is unknow, default true
            return true;
    }
}

static uint16_t ble_check_ret_value_by_type(uint8_t type, uint16_t buf_len, uint16_t ret_val)
{
    switch(type)
    {
        case BLE_QIOT_DATA_TYPE_BOOL:
            return ret_val <= sizeof(uint8_t);
        case BLE_QIOT_DATA_TYPE_INT:
        case BLE_QIOT_DATA_TYPE_FLOAT:
        case BLE_QIOT_DATA_TYPE_TIME:
            return ret_val <= sizeof(uint32_t);
        case BLE_QIOT_DATA_TYPE_ENUM:
            return ret_val <= sizeof(uint16_t);
        default:
            // string length is unknow, default true
            return ret_val <= buf_len;
    }
}

uint8_t ble_get_property_type_by_id(uint8_t id)
{
    if (id >= BLE_QIOT_PROPERTY_ID_BUTT) {
        ble_qiot_log_e("invalid property id %d", id);
        return BLE_QIOT_DATA_TYPE_BUTT;
    }
    return sg_ble_property_array[id].type & 0x0F;
}

int ble_user_property_struct_array_data_set(const e_ble_tlv *tlv)
{
    uint16_t parse_len = 0;
    uint16_t index = 0;
    uint16_t str_len;
    int ret = BLE_QIOT_RS_OK;
    uint8_t array_type = sg_ble_property_array[tlv->id].type & 0xF0;

    while (parse_len < tlv->len)
    {
        if (index >= sg_ble_property_array[tlv->id].elem_num){
            ble_qiot_log_e("too long array %d >= %d", index, sg_ble_property_array[tlv->id].elem_num);
            return -1;
        }
        if ((BLE_QIOT_ARRAY_INT_BIT_MASK == array_type) || (BLE_QIOT_ARRAY_FLOAT_BIT_MASK == array_type))
        {
            ret = ((property_array_set_cb)sg_ble_property_array[tlv->id].set_cb)(tlv->val + parse_len, sizeof(int), index);
            parse_len += sizeof(int);
        }
        else if (BLE_QIOT_ARRAY_STRING_BIT_MASK == array_type){
            memcpy(&str_len, &tlv->val[parse_len], sizeof(uint16_t));
            str_len = NTOHS(str_len);
            parse_len += sizeof(uint16_t);
            ret = ((property_array_set_cb)sg_ble_property_array[tlv->id].set_cb)(tlv->val + parse_len, str_len, index);
            parse_len += str_len;
        }else{
            ret = sg_ble_property_array[tlv->id].set_cb(tlv->val, tlv->len);
            parse_len = tlv->len;
        }
        if (ret != BLE_QIOT_RS_OK){
            ble_qiot_log_e("set property id %d failed", tlv->id);
            return -1;
        }
        index++;
    }

    return parse_len == tlv->len ? BLE_QIOT_RS_OK : BLE_QIOT_RS_ERR;
}

int ble_user_property_struct_array_data_get(uint8_t id, char *buf, uint16_t len)
{
    int index = 0;
    uint16_t data_len = 0;
    uint8_t array_type = sg_ble_property_array[id].type & 0xF0;
    uint16_t tmp_len = 0;
    uint16_t ret_len = 0;

    if (BLE_QIOT_ARRAY_STRUCT_BIT_MASK == array_type){
        return sg_ble_property_array[id].get_cb(buf, len);
    }

    for (index = 0; index < sg_ble_property_array[id].elem_num; index++){
        if ((BLE_QIOT_ARRAY_INT_BIT_MASK == array_type) || (BLE_QIOT_ARRAY_FLOAT_BIT_MASK == array_type)){
            ret_len = ((property_array_get_cb)sg_ble_property_array[id].get_cb)(buf + data_len, len - data_len, index);
        }else{
            ret_len = ((property_array_get_cb)sg_ble_property_array[id].get_cb)(buf + data_len + 2, len - data_len - 2, index);
            if (ret_len != 0)
            {
                tmp_len = NTOHS(ret_len);
                memcpy(&buf[data_len], &tmp_len, sizeof(uint16_t));
                ret_len += 2;
            }
        }
        if (ret_len < 0) {
            ble_qiot_log_e("get property id %d data failed", id);
            return -1;
        }
        data_len += ret_len;
    }

    return data_len;
}

int ble_user_property_set_data(const e_ble_tlv *tlv)
{
    POINTER_SANITY_CHECK(tlv, BLE_QIOT_RS_ERR_PARA);
    if (tlv->id >= BLE_QIOT_PROPERTY_ID_BUTT) {
        ble_qiot_log_e("invalid property id %d", tlv->id);
        return BLE_QIOT_RS_ERR;
    }

    if (NULL != sg_ble_property_array[tlv->id].set_cb) {
        if (BLE_QIOT_DATA_TYPE_ARRAY == tlv->type){
            if (0 != ble_user_property_struct_array_data_set(tlv)) {
                ble_qiot_log_e("set property id %d failed", tlv->id);
                return BLE_QIOT_RS_ERR;
            }
        }else{
            if (0 != sg_ble_property_array[tlv->id].set_cb(tlv->val, tlv->len)) {
                ble_qiot_log_e("set property id %d failed", tlv->id);
                return BLE_QIOT_RS_ERR;
            }
        }
        return BLE_QIOT_RS_OK;
    }
    ble_qiot_log_e("invalid set callback, id %d", tlv->id);

    return BLE_QIOT_RS_ERR;
}

int ble_user_property_get_data_by_id(uint8_t id, char *buf, uint16_t buf_len)
{
    int ret_len = 0;

    POINTER_SANITY_CHECK(buf, BLE_QIOT_RS_ERR_PARA);
    if (id >= BLE_QIOT_PROPERTY_ID_BUTT) {
        ble_qiot_log_e("invalid property id %d", id);
        return -1;
    }

    if (NULL != sg_ble_property_array[id].get_cb) {
        if (!ble_check_space_enough_by_type(sg_ble_property_array[id].type & 0x0F, buf_len)) {
            ble_qiot_log_e("not enough space get property id %d data", id);
            return -1;
        }
        if ((sg_ble_property_array[id].type & 0x0F) == BLE_QIOT_DATA_TYPE_ARRAY){
            ret_len = ble_user_property_struct_array_data_get(id, buf, buf_len);
        }else{
            ret_len = sg_ble_property_array[id].get_cb(buf, buf_len);
        }
        if (ret_len < 0) {
            ble_qiot_log_e("get property id %d data failed", id);
            return -1;
        }else {
            if (ble_check_ret_value_by_type(sg_ble_property_array[id].type & 0x0F, buf_len, ret_len)){
                return ret_len;
            }else{
                ble_qiot_log_e("property id %d length invalid", id);
                return -1;
            }
        }
    }
    ble_qiot_log_e("invalid callback, property id %d", id);

    return 0;
}

int ble_user_property_report_reply_handle(uint8_t result)
{
    ble_qiot_log_d("report reply result %d", result);

    return BLE_QIOT_RS_OK;
}

int ble_user_property_struct_handle(const char *in_buf, uint16_t buf_len, ble_property_t struct_arr[], uint8_t arr_size)
{
    uint16_t              parse_len = 0;
    uint16_t              ret_len   = 0;
    e_ble_tlv             tlv;

    while (parse_len < buf_len) {
        memset(&tlv, 0, sizeof(e_ble_tlv));
        ret_len = ble_lldata_parse_tlv(in_buf + parse_len, buf_len - parse_len, &tlv);
        parse_len += ret_len;
        if (parse_len > buf_len) {
            ble_qiot_log_e("parse struct failed");
            return parse_len;
        }

        if (tlv.id >= arr_size){
            ble_qiot_log_e("invalid array index %d", tlv.id);
            return parse_len;
        }
        if (NULL == struct_arr[tlv.id].set_cb){
            ble_qiot_log_e("invalid member id %d", tlv.id);
            return parse_len;
        }
        if (BLE_QIOT_RS_OK != struct_arr[tlv.id].set_cb(tlv.val, tlv.len)) {
            ble_qiot_log_e("user handle property error, member id %d, type %d, len %d", tlv.id, tlv.type, tlv.len);
            return parse_len;
        }
    }

    return 0;
}

int ble_user_property_struct_get_data(char *in_buf, uint16_t buf_len, ble_property_t struct_arr[], uint8_t arr_size)
{
    uint8_t  property_id                       = 0;
    uint8_t  property_type                     = 0;
    int      property_len                      = 0;
    char     *data_buf                         = in_buf;
    uint16_t data_len                          = 0;
    uint16_t string_len                        = 0;

    for (property_id = 0; property_id < arr_size; property_id++) {
        property_type = struct_arr[property_id].type;
        if (property_type >= BLE_QIOT_DATA_TYPE_BUTT) {
            ble_qiot_log_e("member id %d type %d invalid", property_id, property_type);
            return BLE_QIOT_RS_ERR;
        }
        data_buf[data_len++] = BLE_QIOT_PACKAGE_TLV_HEAD(property_type, property_id);
        if (BLE_QIOT_DATA_TYPE_STRING == property_type) {
            // reserved 2 bytes for string length
            property_len = struct_arr[property_id].get_cb((char *)data_buf + data_len + 2, buf_len - data_len - 2);
        } else {
            property_len = struct_arr[property_id].get_cb((char *)data_buf + data_len, buf_len - data_len);
        }
        if (property_len < 0) {
            ble_qiot_log_e("too long data, member id %d, data length %d", property_id, data_len);
            return BLE_QIOT_RS_ERR;
        } else if (property_len == 0) {
            // no data to post
            data_len--;
            data_buf[data_len] = '0';
            ble_qiot_log_d("member id %d no data to post", property_id);
        } else {
            if (BLE_QIOT_DATA_TYPE_STRING == property_type) {
                string_len = HTONS(property_len);
                memcpy(data_buf + data_len, &string_len, sizeof(uint16_t));
                data_len += sizeof(uint16_t);
            }
            data_len += property_len;
        }
    }

    return data_len;
}

int ble_user_property_struct_array_set(uint8_t id, const char *in_buf, uint16_t buf_len, ble_property_t struct_arr[], uint8_t arr_size)
{
    uint16_t  parse_len = 2;
    uint16_t  ret_len   = 0;
    e_ble_tlv tlv;
    char param_num = 0;
    uint16_t temp = 0;
    uint16_t temp_len = 0;
    uint8_t array_num = 0;

    memcpy(&temp, &in_buf[0], sizeof(uint16_t));
    temp_len = NTOHS(temp) + parse_len;

    while (parse_len < buf_len) {
        if (array_num >= sg_ble_property_array[id].elem_num) {
            ble_qiot_log_e("too long array %d >= %d", array_num, sg_ble_property_array[id].elem_num);
            return parse_len;
        }

        memset(&tlv, 0, sizeof(e_ble_tlv));
        ret_len = ble_lldata_parse_tlv(in_buf + parse_len, buf_len - parse_len + 3, &tlv);
        parse_len += ret_len;
        if (parse_len > buf_len) {
            ble_qiot_log_e("parse struct failed");
            return parse_len;
        }

        if (tlv.id >= arr_size) {
            ble_qiot_log_e("invalid array index %d", tlv.id);
            return parse_len;
        }

        if (NULL == struct_arr[tlv.id].set_cb) {
            ble_qiot_log_e("invalid member id %d", tlv.id);
            return parse_len;
        }

        if (BLE_QIOT_RS_OK != ((property_array_set_cb)struct_arr[tlv.id].set_cb)(tlv.val, tlv.len, array_num)) {
            ble_qiot_log_e("user handle property error, member id %d, type %d, len %d", tlv.id, tlv.type, tlv.len);
            return parse_len;
        }

        if (parse_len == temp_len) {
            memcpy(&temp, &in_buf[parse_len], sizeof(uint16_t));
            temp_len += NTOHS(temp) + 2;
            array_num += 1;
            parse_len = parse_len + 2;
        }
    }

    return 0;
}

int ble_user_property_struct_array_get(uint8_t id, char *in_buf, uint16_t buf_len, ble_property_t struct_arr[], uint8_t arr_size)
{
    uint8_t  property_id   = 0;
    uint8_t  property_type = 0;
    int      property_len  = 0;
    char *   data_buf      = in_buf;
    uint16_t data_len      = 2;
    uint16_t string_len    = 0;
    uint16_t last_len = 0;
    uint16_t index = 0;
    uint8_t param_num = sg_ble_property_array[id].elem_num;

    for (int i = 0; i < param_num; i++) {
        for (int property_id = 0; property_id < arr_size; property_id++){
            property_type = struct_arr[property_id].type;
            if (property_type >= BLE_QIOT_DATA_TYPE_BUTT) {
                ble_qiot_log_e("member id %d type %d invalid", property_id, property_type);
                return BLE_QIOT_RS_ERR;
            }

            data_buf[data_len++] = BLE_QIOT_PACKAGE_TLV_HEAD(property_type, property_id);
            if (BLE_QIOT_DATA_TYPE_STRING == property_type) {
                // reserved 2 bytes for string length
                property_len = ((property_array_get_cb)struct_arr[property_id].get_cb)((char *)data_buf + data_len + 2, buf_len - data_len - 2, i);
            } else {
                property_len = ((property_array_get_cb)struct_arr[property_id].get_cb)((char *)data_buf + data_len, buf_len - data_len, i);
            }

            if (property_len < 0) {
                ble_qiot_log_e("too long data, member id %d, data length %d", property_id, data_len);
                return BLE_QIOT_RS_ERR;
            } else if (property_len == 0) {
                // no data to post
                data_len--;
                data_buf[data_len] = '0';
                ble_qiot_log_d("member id %d no data to post", property_id);
            } else {
                if (BLE_QIOT_DATA_TYPE_STRING == property_type) {
                    string_len = HTONS(property_len);
                    memcpy(data_buf + data_len, &string_len, sizeof(uint16_t));
                    data_len += sizeof(uint16_t);
                }
                data_len += property_len;
            }
        }

        last_len = NTOHS(data_len - index - 2);
        memcpy(&data_buf[index], &last_len, sizeof(uint16_t));
        index = data_len;
        data_len += 2;
    }

    return (data_len - 2);
}

#ifdef BLE_QIOT_INCLUDE_EVENT
int ble_event_get_id_array_size(uint8_t event_id)
{
    if (event_id >= BLE_QIOT_EVENT_ID_BUTT) {
        ble_qiot_log_e("invalid event id %d", event_id);
        return -1;
    }

    return sg_ble_event_array[event_id].array_size;
}

uint8_t ble_event_get_param_id_type(uint8_t event_id, uint8_t param_id)
{
    if (event_id >= BLE_QIOT_EVENT_ID_BUTT) {
        ble_qiot_log_e("invalid event id %d", event_id);
        return BLE_QIOT_DATA_TYPE_BUTT;
    }
    if (param_id >= sg_ble_event_array[event_id].array_size) {
        ble_qiot_log_e("invalid param id %d", param_id);
        return BLE_QIOT_DATA_TYPE_BUTT;
    }

    return sg_ble_event_array[event_id].event_array[param_id].type;
}

int ble_event_get_data_by_id(uint8_t event_id, uint8_t param_id, char *out_buf, uint16_t buf_len)
{
    int ret_len = 0;

    if (event_id >= BLE_QIOT_EVENT_ID_BUTT) {
        ble_qiot_log_e("invalid event id %d", event_id);
        return -1;
    }
    if (param_id >= sg_ble_event_array[event_id].array_size) {
        ble_qiot_log_e("invalid param id %d", param_id);
        return -1;
    }
    if (NULL == sg_ble_event_array[event_id].event_array[param_id].get_cb) {
        ble_qiot_log_e("invalid callback, event id %d, param id %d", event_id, param_id);
        return 0;
    }

    if (!ble_check_space_enough_by_type(sg_ble_event_array[event_id].event_array[param_id].type, buf_len)) {
        ble_qiot_log_e("not enough space get data, event id %d, param id %d", event_id, param_id);
        return -1;
    }
    ret_len = sg_ble_event_array[event_id].event_array[param_id].get_cb(out_buf, buf_len);
    if (ret_len < 0) {
        ble_qiot_log_e("get event data failed, event id %d, param id %d", event_id, param_id);
        return -1;
    }else {
        if (ble_check_ret_value_by_type(sg_ble_event_array[event_id].event_array[param_id].type, buf_len, ret_len)){
            return ret_len;
        }else{
            ble_qiot_log_e("evnet data length invalid, event id %d, param id %d", event_id, param_id);
            return -1;
        }
    }
}

int ble_user_event_reply_handle(uint8_t event_id, uint8_t result)
{
    ble_qiot_log_d("event id %d, reply result %d", event_id, result);

    return BLE_QIOT_RS_OK;
}
#endif

#ifdef BLE_QIOT_INCLUDE_ACTION
uint8_t ble_action_get_intput_type_by_id(uint8_t action_id, uint8_t input_id)
{
    if (action_id >= BLE_QIOT_ACTION_ID_BUTT) {
        ble_qiot_log_e("invalid action id %d", action_id);
        return BLE_QIOT_DATA_TYPE_BUTT;
    }
    if (input_id >= sg_ble_event_array[action_id].array_size) {
        ble_qiot_log_e("invalid input id %d", input_id);
        return BLE_QIOT_DATA_TYPE_BUTT;
    }

    return sg_ble_action_array[action_id].input_type_array[input_id];
}

uint8_t ble_action_get_output_type_by_id(uint8_t action_id, uint8_t output_id)
{
    if (action_id >= BLE_QIOT_ACTION_ID_BUTT) {
        ble_qiot_log_e("invalid action id %d", action_id);
        return BLE_QIOT_DATA_TYPE_BUTT;
    }
    if (output_id >= sg_ble_event_array[action_id].array_size) {
        ble_qiot_log_e("invalid output id %d", output_id);
        return BLE_QIOT_DATA_TYPE_BUTT;
    }

    return sg_ble_action_array[action_id].output_type_array[output_id];
}

int ble_action_get_input_id_size(uint8_t action_id)
{
    if (action_id >= BLE_QIOT_ACTION_ID_BUTT) {
        ble_qiot_log_e("invalid action id %d", action_id);
        return -1;
    }

    return sg_ble_action_array[action_id].input_id_size;
}

int ble_action_get_output_id_size(uint8_t action_id)
{
    if (action_id >= BLE_QIOT_ACTION_ID_BUTT) {
        ble_qiot_log_e("invalid action id %d", action_id);
        return -1;
    }

    return sg_ble_action_array[action_id].output_id_size;
}

int ble_action_user_handle_input_param(uint8_t action_id, e_ble_tlv *input_param_array, uint8_t input_array_size, uint8_t *output_id_array)
{
    if (action_id >= BLE_QIOT_ACTION_ID_BUTT) {
        ble_qiot_log_e("invalid action id %d", action_id);
        return -1;
    }

    if (NULL != sg_ble_action_array[action_id].input_cb) {
        if (0 != sg_ble_action_array[action_id].input_cb(input_param_array, input_array_size, output_id_array)) {
            ble_qiot_log_e("input handle error");
            return -1;
        }
    }

    return 0;
}

int ble_action_user_handle_output_param(uint8_t action_id, uint8_t output_id, char *buf, uint16_t buf_len)
{
    int ret_len = 0;

    if (action_id >= BLE_QIOT_ACTION_ID_BUTT) {
        ble_qiot_log_e("invalid action id %d", action_id);
        return -1;
    }
    if (NULL == sg_ble_action_array[action_id].output_cb){
        ble_qiot_log_e("invalid callback, action id %d", action_id);
        return 0;
    }

    if (!ble_check_space_enough_by_type(sg_ble_action_array[action_id].output_type_array[output_id], buf_len)) {
        ble_qiot_log_e("not enough space get data, action id %d, output id %d", action_id, output_id);
        return -1;
    }

    ret_len = sg_ble_action_array[action_id].output_cb(output_id, buf, buf_len);
    if (ret_len < 0) {
        ble_qiot_log_e("get action data failed, action id %d, output id %d", action_id, output_id);
        return -1;
    }else {
        if (ble_check_ret_value_by_type(sg_ble_action_array[action_id].output_type_array[output_id], buf_len, ret_len)){
            return ret_len;
        }else{
            ble_qiot_log_e("action data length invalid, action id %d, output id %d", action_id, output_id);
            return -1;
        }
    }
}
#endif

#ifdef __cplusplus
}
#endif
