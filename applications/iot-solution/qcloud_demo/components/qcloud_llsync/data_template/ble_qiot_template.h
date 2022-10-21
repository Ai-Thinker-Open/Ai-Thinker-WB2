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
#ifndef BLE_QIOT_TEMPLATE_H_
#define BLE_QIOT_TEMPLATE_H_
#ifdef __cplusplus
extern "C"{
#endif

#include <stdint.h>
#include <stdbool.h>

// data type in template, corresponding to type in json file
enum {
	BLE_QIOT_DATA_TYPE_BOOL = 0,
	BLE_QIOT_DATA_TYPE_INT,
	BLE_QIOT_DATA_TYPE_STRING,
	BLE_QIOT_DATA_TYPE_FLOAT,
	BLE_QIOT_DATA_TYPE_ENUM,
	BLE_QIOT_DATA_TYPE_TIME,
	BLE_QIOT_DATA_TYPE_STRUCT,
	BLE_QIOT_DATA_TYPE_ARRAY,
	BLE_QIOT_DATA_TYPE_BUTT,
};

#define BLE_QIOT_ARRAY_INT_BIT_MASK     (1 << 4)
#define BLE_QIOT_ARRAY_STRING_BIT_MASK  (1 << 5)
#define BLE_QIOT_ARRAY_FLOAT_BIT_MASK   (1 << 6)
#define BLE_QIOT_ARRAY_STRUCT_BIT_MASK  (1 << 7)
// message type, reference data template 
enum {
	BLE_QIOT_PROPERTY_AUTH_RW = 0,
	BLE_QIOT_PROPERTY_AUTH_READ,
	BLE_QIOT_PROPERTY_AUTH_BUTT,
};

// define message flow direction
enum {
	BLE_QIOT_EFFECT_REQUEST = 0,
	BLE_QIOT_EFFECT_REPLY,
	BLE_QIOT_EFFECT_BUTT,
};

#define	BLE_QIOT_PACKAGE_MSG_HEAD(_TYPE, _REPLY, _ID)	(((_TYPE) << 6) | (((_REPLY) == BLE_QIOT_EFFECT_REPLY) << 5) | ((_ID) & 0X1F))
#define	BLE_QIOT_PACKAGE_TLV_HEAD(_TYPE, _ID)   	    (((_TYPE) << 5) | ((_ID) & 0X1F))

// define tlv struct
typedef struct{	uint8_t type;
	uint8_t id;
	uint16_t len;
	char *val;
}e_ble_tlv;


#define	BLE_QIOT_INCLUDE_PROPERTY 

// define property id
enum {
	BLE_QIOT_PROPERTY_ID_POWER_SWITCH,
	BLE_QIOT_PROPERTY_ID_BRIGHTNESS,
	BLE_QIOT_PROPERTY_ID_COLOR,
	BLE_QIOT_PROPERTY_ID_COLOR_TEMP,
	BLE_QIOT_PROPERTY_ID_NAME,
	BLE_QIOT_PROPERTY_ID_BUTT,
};

// define brightness attributes
#define BLE_QIOT_PROPERTY_BRIGHTNESS_MIN	(0)
#define BLE_QIOT_PROPERTY_BRIGHTNESS_MAX	(100)
#define BLE_QIOT_PROPERTY_BRIGHTNESS_START	(1)
#define BLE_QIOT_PROPERTY_BRIGHTNESS_STEP	(1)
// define color enum
enum {
	BLE_QIOT_PROPERTY_COLOR_RED = 0,
	BLE_QIOT_PROPERTY_COLOR_GREEN = 1,
	BLE_QIOT_PROPERTY_COLOR_BLUE = 2,
	BLE_QIOT_PROPERTY_COLOR_BUTT,
};

// define color_temp attributes
#define BLE_QIOT_PROPERTY_COLOR_TEMP_MIN	(0)
#define BLE_QIOT_PROPERTY_COLOR_TEMP_MAX	(100)
#define BLE_QIOT_PROPERTY_COLOR_TEMP_START	(0)
#define BLE_QIOT_PROPERTY_COLOR_TEMP_STEP	(10)
// define name length limit
#define BLE_QIOT_PROPERTY_NAME_LEN_MIN	(0)
#define BLE_QIOT_PROPERTY_NAME_LEN_MAX	(64)
// define property set handle return 0 if success, other is error
// sdk call the function that inform the server data to the device
typedef int (*property_set_cb)(const char *data, uint16_t len);
// define property get handle. return the data length obtained, -1 is error, 0 is no data
// sdk call the function fetch user data and send to the server, the data should wrapped by user adn skd just transmit
typedef int (*property_get_cb)(char *buf, uint16_t buf_len);
// each property have a struct ble_property_t, make up a array named sg_ble_property_array
typedef struct{
	property_set_cb set_cb;	//set callback
	property_get_cb get_cb;	//get callback
	uint8_t authority;	//property authority
	uint8_t type;	//data type
	uint16_t elem_num;
}ble_property_t;
typedef int (*property_array_set_cb)(const char *data, uint16_t len, uint16_t index);
typedef int (*property_array_get_cb)(char *buf, uint16_t buf_len, uint16_t index);


#define	BLE_QIOT_INCLUDE_EVENT 

// define event id
enum {
	BLE_QIOT_EVENT_ID_STATUS_REPORT,
	BLE_QIOT_EVENT_ID_LOW_VOLTAGE,
	BLE_QIOT_EVENT_ID_HARDWARE_FAULT,
	BLE_QIOT_EVENT_ID_BUTT,
};

// define event status_report param id
enum {
	BLE_QIOT_EVENT_STATUS_REPORT_PARAM_ID_STATUS,
	BLE_QIOT_EVENT_STATUS_REPORT_PARAM_ID_MESSAGE,
	BLE_QIOT_EVENT_STATUS_REPORT_PARAM_ID_BUTT,
};

// define status_reportmessage length limit
#define BLE_QIOT_EVENT_STATUS_REPORT_MESSAGE_LEN_MIN	(0)
#define BLE_QIOT_EVENT_STATUS_REPORT_MESSAGE_LEN_MAX	(64)
// define event low_voltage param id
enum {
	BLE_QIOT_EVENT_LOW_VOLTAGE_PARAM_ID_VOLTAGE,
	BLE_QIOT_EVENT_LOW_VOLTAGE_PARAM_ID_BUTT,
};

// define low_voltage voltage attributes
#define BLE_QIOT_EVENT_LOW_VOLTAGE_VOLTAGE_MIN	(0.0)
#define BLE_QIOT_EVENT_LOW_VOLTAGE_VOLTAGE_MAX	(24.0)
#define BLE_QIOT_EVENT_LOW_VOLTAGE_VOLTAGE_START	(1)
#define BLE_QIOT_EVENT_LOW_VOLTAGE_VOLTAGE_STEP	(1)
// define event hardware_fault param id
enum {
	BLE_QIOT_EVENT_HARDWARE_FAULT_PARAM_ID_NAME,
	BLE_QIOT_EVENT_HARDWARE_FAULT_PARAM_ID_ERROR_CODE,
	BLE_QIOT_EVENT_HARDWARE_FAULT_PARAM_ID_BUTT,
};

// define hardware_faultname length limit
#define BLE_QIOT_EVENT_HARDWARE_FAULT_NAME_LEN_MIN	(0)
#define BLE_QIOT_EVENT_HARDWARE_FAULT_NAME_LEN_MAX	(64)
// define hardware_fault error_code attributes
#define BLE_QIOT_EVENT_HARDWARE_FAULT_ERROR_CODE_MIN	(0)
#define BLE_QIOT_EVENT_HARDWARE_FAULT_ERROR_CODE_MAX	(2000)
#define BLE_QIOT_EVENT_HARDWARE_FAULT_ERROR_CODE_START	(1)
#define BLE_QIOT_EVENT_HARDWARE_FAULT_ERROR_CODE_STEP	(1)
// define event get handle. return the data length obtained, -1 is error, 0 is no data
// sdk call the function fetch user data and send to the server, the data should wrapped by user adn skd just transmit
typedef int (*event_get_cb)(char *buf, uint16_t buf_len);
// each param have a struct ble_event_param, make up a array for the event
typedef struct{
	event_get_cb get_cb;	//get param data callback
	uint8_t type;	//param type
}ble_event_param;
// a array named sg_ble_event_array is composed by all the event array
typedef struct{
	ble_event_param *event_array;	//array of params data
	uint8_t array_size;	//array size
}ble_event_t;

#define BLE_QIOT_ACTION_INPUT_ID_BUTT	0
#define BLE_QIOT_ACTION_OUTPUT_ID_BUTT	0
// define action input handle, return 0 is success, other is error.
// input_param_array carry the data from server, include input id, data length ,data val
// input_array_size means how many input id
// output_id_array filling with output id numbers that need obtained, sdk will traverse it and call the action_output_handle to obtained data
typedef int (*action_input_handle)(e_ble_tlv *input_param_array, uint8_t input_array_size, uint8_t *output_id_array);
// define action output handle, return length of the data, 0 is no data, -1 is error
// output_id means which id data should be obtained
typedef int (*action_output_handle)(uint8_t output_id, char *buf, uint16_t buf_len);
// each action have a struct ble_action_t, make up a array named sg_ble_action_array
typedef struct{
	action_input_handle input_cb;	//handle input data
	action_output_handle output_cb;	// get output data in the callback
	uint8_t *input_type_array;	//type array for input id
	uint8_t *output_type_array;	//type array for output id
	uint8_t input_id_size;	//numbers of input id
	uint8_t output_id_size;	//numbers of output id
}ble_action_t;

// property module
#ifdef BLE_QIOT_INCLUDE_PROPERTY
uint8_t ble_get_property_type_by_id(uint8_t id);
int ble_user_property_set_data(const e_ble_tlv *tlv);
int ble_user_property_get_data_by_id(uint8_t id, char *buf, uint16_t buf_len);
int ble_user_property_report_reply_handle(uint8_t result);
int ble_lldata_parse_tlv(const char *buf, int buf_len, e_ble_tlv *tlv);
int ble_user_property_struct_handle(const char *in_buf, uint16_t buf_len, ble_property_t *struct_arr, uint8_t arr_size);
int ble_user_property_struct_get_data(char *in_buf, uint16_t buf_len, ble_property_t *struct_arr, uint8_t arr_size);
int ble_user_property_struct_array_set(uint8_t id, const char *in_buf, uint16_t buf_len, ble_property_t struct_arr[], uint8_t arr_size);
int ble_user_property_struct_array_get(uint8_t id, char *in_buf, uint16_t buf_len, ble_property_t struct_arr[], uint8_t arr_size);
#endif
// event module
#ifdef BLE_QIOT_INCLUDE_EVENT
int     ble_event_get_id_array_size(uint8_t event_id);
uint8_t ble_event_get_param_id_type(uint8_t event_id, uint8_t param_id);
int     ble_event_get_data_by_id(uint8_t event_id, uint8_t param_id, char *out_buf, uint16_t buf_len);
int     ble_user_event_reply_handle(uint8_t event_id, uint8_t result);
#endif
// action module
#ifdef BLE_QIOT_INCLUDE_ACTION
uint8_t ble_action_get_intput_type_by_id(uint8_t action_id, uint8_t input_id);
uint8_t ble_action_get_output_type_by_id(uint8_t action_id, uint8_t output_id);
int     ble_action_get_input_id_size(uint8_t action_id);
int     ble_action_get_output_id_size(uint8_t action_id);
int     ble_action_user_handle_input_param(uint8_t action_id, e_ble_tlv *input_param_array, uint8_t input_array_size, uint8_t *output_id_array);
int     ble_action_user_handle_output_param(uint8_t action_id, uint8_t output_id, char *buf, uint16_t buf_len);
#endif

#ifdef __cplusplus
}
#endif
#endif //BLE_QIOT_TEMPLATE_H_