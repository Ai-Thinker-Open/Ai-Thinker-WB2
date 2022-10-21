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
#include "ble_qiot_template.h"
#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include "ble_qiot_export.h"
#include "ble_qiot_common.h"
#include "ble_qiot_param_check.h"
static int ble_property_power_switch_set(const char *data, uint16_t len)
{
	uint8_t tmp_bool = 0;
	tmp_bool = data[0];
	ble_qiot_log_d("set id power_switch bool value %02x", data[0]);
	return 0;
}

static int ble_property_power_switch_get( char *data, uint16_t len)
{
	uint8_t tmp_bool = 1;
	data[0] = tmp_bool;
	ble_qiot_log_d("get id power_switch bool value %02x", data[0]);
	return sizeof(uint8_t);
}

static int ble_property_brightness_set(const char *data, uint16_t len)
{
	int tmp_int = 0;
	memcpy(&tmp_int, data, sizeof(int));
	tmp_int = NTOHL(tmp_int);
	ble_qiot_log_d("set id brightness int value %d", tmp_int);
	return 0;
}

static int ble_property_brightness_get( char *data, uint16_t len)
{
	int tmp_int = 1;
	tmp_int = HTONL(tmp_int);
	memcpy(data, &tmp_int, sizeof(int));
	ble_qiot_log_d("get id brightness int value %d", 12345678);
	return sizeof(int);
}

static int ble_property_color_set(const char *data, uint16_t len)
{
	uint16_t tmp_enum = 0;
	memcpy(&tmp_enum, data, sizeof(uint16_t));
	tmp_enum = NTOHS(tmp_enum);
	ble_qiot_log_d("set id color int value %d", tmp_enum);
	return 0;
}

static int ble_property_color_get( char *data, uint16_t len)
{
	uint16_t tmp_enum = 0;
	tmp_enum = HTONS(tmp_enum);
	memcpy(data, &tmp_enum, sizeof(uint16_t));
	ble_qiot_log_d("get id color int value %d", 1234);
	return sizeof(uint16_t);
}

static int ble_property_color_temp_set(const char *data, uint16_t len)
{
	int tmp_int = 0;
	memcpy(&tmp_int, data, sizeof(int));
	tmp_int = NTOHL(tmp_int);
	ble_qiot_log_d("set id color_temp int value %d", tmp_int);
	return 0;
}

static int ble_property_color_temp_get( char *data, uint16_t len)
{
	int tmp_int = 1;
	tmp_int = HTONL(tmp_int);
	memcpy(data, &tmp_int, sizeof(int));
	ble_qiot_log_d("get id color_temp int value %d", 12345678);
	return sizeof(int);
}

static int ble_property_name_set(const char *data, uint16_t len)
{
	char tmp_str[128] = "";//copy the actual length of the text
	memcpy(tmp_str, data, 1);
	ble_qiot_log_d("set id name string value %s", data);
	return 0;
}

static int ble_property_name_get( char *data, uint16_t len)
{
	char tmp_str[2] = "a";
	memcpy(data, tmp_str, strlen(tmp_str));
	ble_qiot_log_d("get id name string value %s", data);
	return strlen(tmp_str);
}

ble_property_t sg_ble_property_array[5] = {
	{ble_property_power_switch_set, ble_property_power_switch_get, 0, BLE_QIOT_DATA_TYPE_BOOL, 1},
	{ble_property_brightness_set, ble_property_brightness_get, 0, BLE_QIOT_DATA_TYPE_INT, 1},
	{ble_property_color_set, ble_property_color_get, 0, BLE_QIOT_DATA_TYPE_ENUM, 1},
	{ble_property_color_temp_set, ble_property_color_temp_get, 0, BLE_QIOT_DATA_TYPE_INT, 1},
	{ble_property_name_set, ble_property_name_get, 0, BLE_QIOT_DATA_TYPE_STRING, 1},
};


static int ble_event_get_status_report_status_get( char *data, uint16_t len)
{
	uint8_t tmp_bool = 1;
	data[0] = tmp_bool;
	ble_qiot_log_d("get id status bool value %02x", data[0]);
	return sizeof(uint8_t);
}

static int ble_event_get_status_report_message_get( char *data, uint16_t len)
{
	char tmp_str[2] = "a";
	memcpy(data, tmp_str, strlen(tmp_str));
	ble_qiot_log_d("get id message string value %s", data);
	return strlen(tmp_str);
}

static ble_event_param sg_ble_event_status_report_array[2] = {
	{ble_event_get_status_report_status_get, BLE_QIOT_DATA_TYPE_BOOL},
	{ble_event_get_status_report_message_get, BLE_QIOT_DATA_TYPE_STRING},
};

static int ble_event_get_low_voltage_voltage_get( char *data, uint16_t len)
{
	float tmp_float = 1.23456;
	memcpy(data, &tmp_float, sizeof(float));
	ble_qiot_log_d("get id voltage float value %f", tmp_float);
	return sizeof(float);
}

static ble_event_param sg_ble_event_low_voltage_array[1] = {
	{ble_event_get_low_voltage_voltage_get, BLE_QIOT_DATA_TYPE_FLOAT},
};

static int ble_event_get_hardware_fault_name_get( char *data, uint16_t len)
{
	char tmp_str[2] = "a";
	memcpy(data, tmp_str, strlen(tmp_str));
	ble_qiot_log_d("get id name string value %s", data);
	return strlen(tmp_str);
}

static int ble_event_get_hardware_fault_error_code_get( char *data, uint16_t len)
{
	int tmp_int = 1;
	tmp_int = HTONL(tmp_int);
	memcpy(data, &tmp_int, sizeof(int));
	ble_qiot_log_d("get id error_code int value %d", 12345678);
	return sizeof(int);
}

static ble_event_param sg_ble_event_hardware_fault_array[2] = {
	{ble_event_get_hardware_fault_name_get, BLE_QIOT_DATA_TYPE_STRING},
	{ble_event_get_hardware_fault_error_code_get, BLE_QIOT_DATA_TYPE_INT},
};

ble_event_t sg_ble_event_array[3] = {
	{sg_ble_event_status_report_array, 2},
	{sg_ble_event_low_voltage_array, 1},
	{sg_ble_event_hardware_fault_array, 2},
};


#ifdef __cplusplus
}
#endif
