/*
 * SPDX-FileCopyrightText: 2015-2021 Axkressif Systems (Shanghai) CO LTD
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#ifndef __AXK_LOG_INTERNAL_H__
#define __AXK_LOG_INTERNAL_H__

//these functions do not check level versus AXK_LOCAL_LEVEL, this should be done in axk_log.h
void axk_log_buffer_hex_internal(const char *tag, const void *buffer, uint16_t buff_len, axk_log_level_t level);
void axk_log_buffer_char_internal(const char *tag, const void *buffer, uint16_t buff_len, axk_log_level_t level);
void axk_log_buffer_hexdump_internal( const char *tag, const void *buffer, uint16_t buff_len, axk_log_level_t log_level);

#endif
