/**
 * @file data_handle.h
 * @author your name (you@domain.com)
 * @brief
 * @version 0.1
 * @date 2022-11-23
 *
 * @copyright Copyright (c) 2022
 *
 */
#ifndef DATA_HANDLE_H
#define DATA_HANDLE_H

#include "radar_data_parse.h"

char* cjson_update_data(bool led_status, uint8_t radar_statis);
int get_led_status_from_json(char* json_data);
int get_udp_broadcast_data(const char* cjson_data, char* ip_buff, int* port);

#endif