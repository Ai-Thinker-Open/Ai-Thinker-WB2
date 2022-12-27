/*
 * SPDX-FileCopyrightText: 2015-2022 Axkressif Systems (Shanghai) CO LTD
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#ifndef __AXK_LOG_H__
#define __AXK_LOG_H__

#include <stdint.h>
#include <stdarg.h>
#include "sdkconfig.h"
/* #include "axk_rom_sys.h" */

#include <blog.h>

#ifdef __cplusplus
extern "C" {
#endif

#if 0 // ORIGINAL

/**
 * @brief Log level
 *
 */
typedef enum {
    AXK_LOG_NONE,       /*!< No log output */
    AXK_LOG_ERROR,      /*!< Critical errors, software module can not recover on its own */
    AXK_LOG_WARN,       /*!< Error conditions from which recovery measures have been taken */
    AXK_LOG_INFO,       /*!< Information messages which describe normal flow of events */
    AXK_LOG_DEBUG,      /*!< Extra information which is not necessary for normal use (values, pointers, sizes, etc). */
    AXK_LOG_VERBOSE     /*!< Bigger chunks of debugging information, or frequent messages which can potentially flood the output. */
} axk_log_level_t;

typedef int (*vprintf_like_t)(const char *, va_list);

/**
 * @brief Default log level
 *
 * This is used by the definition of AXK_EARLY_LOGx macros. It is not
 * recommended to set this directly, call axk_log_level_set("*", level)
 * instead.
 */
extern axk_log_level_t axk_log_default_level;

/**
 * @brief Set log level for given tag
 *
 * If logging for given component has already been enabled, changes previous setting.
 *
 * @note Note that this function can not raise log level above the level set using
 * CONFIG_LOG_MAXIMUM_LEVEL setting in menuconfig.
 * To raise log level above the default one for a given file, define
 * LOG_LOCAL_LEVEL to one of the AXK_LOG_* values, before including
 * axk_log.h in this file.
 *
 * @param tag Tag of the log entries to enable. Must be a non-NULL zero terminated string.
 *            Value "*" resets log level for all tags to the given value.
 *
 * @param level  Selects log level to enable. Only logs at this and lower verbosity
 * levels will be shown.
 */
void axk_log_level_set(const char* tag, axk_log_level_t level);

/**
 * @brief Get log level for a given tag, can be used to avoid expensive log statements
 *
 * @param tag Tag of the log to query current level. Must be a non-NULL zero terminated
 *            string.
 *
 * @return The current log level for the given tag
 */
axk_log_level_t axk_log_level_get(const char* tag);

/**
 * @brief Set function used to output log entries
 *
 * By default, log output goes to UART0. This function can be used to redirect log
 * output to some other destination, such as file or network. Returns the original
 * log handler, which may be necessary to return output to the previous destination.
 *
 * @note Please note that function callback here must be re-entrant as it can be
 * invoked in parallel from multiple thread context.
 *
 * @param func new Function used for output. Must have same signature as vprintf.
 *
 * @return func old Function used for output.
 */
vprintf_like_t axk_log_set_vprintf(vprintf_like_t func);

/**
 * @brief Function which returns timestamp to be used in log output
 *
 * This function is used in expansion of AXK_LOGx macros.
 * In the 2nd stage bootloader, and at early application startup stage
 * this function uses CPU cycle counter as time source. Later when
 * FreeRTOS scheduler start running, it switches to FreeRTOS tick count.
 *
 * For now, we ignore millisecond counter overflow.
 *
 * @return timestamp, in milliseconds
 */
uint32_t axk_log_timestamp(void);

/**
 * @brief Function which returns system timestamp to be used in log output
 *
 * This function is used in expansion of AXK_LOGx macros to print
 * the system time as "HH:MM:SS.sss". The system time is initialized to
 * 0 on startup, this can be set to the correct time with an SNTP sync,
 * or manually with standard POSIX time functions.
 *
 * Currently, this will not get used in logging from binary blobs
 * (i.e. Wi-Fi & Bluetooth libraries), these will still print the RTOS tick time.
 *
 * @return timestamp, in "HH:MM:SS.sss"
 */
char* axk_log_system_timestamp(void);

/**
 * @brief Function which returns timestamp to be used in log output
 *
 * This function uses HW cycle counter and does not depend on OS,
 * so it can be safely used after application crash.
 *
 * @return timestamp, in milliseconds
 */
uint32_t axk_log_early_timestamp(void);

/**
 * @brief Write message into the log
 *
 * This function is not intended to be used directly. Instead, use one of
 * AXK_LOGE, AXK_LOGW, AXK_LOGI, AXK_LOGD, AXK_LOGV macros.
 *
 * This function or these macros should not be used from an interrupt.
 */
void axk_log_write(axk_log_level_t level, const char* tag, const char* format, ...) __attribute__ ((format (printf, 3, 4)));

/**
 * @brief Write message into the log, va_list variant
 * @see axk_log_write()
 *
 * This function is provided to ease integration toward other logging framework,
 * so that axk_log can be used as a log sink.
 */
void axk_log_writev(axk_log_level_t level, const char* tag, const char* format, va_list args);

/** @cond */

#include "axk_log_internal.h"

#ifndef LOG_LOCAL_LEVEL
#ifndef BOOTLOADER_BUILD
#define LOG_LOCAL_LEVEL  CONFIG_LOG_MAXIMUM_LEVEL
#else
#define LOG_LOCAL_LEVEL  CONFIG_BOOTLOADER_LOG_LEVEL
#endif
#endif

/** @endcond */

/**
 * @brief Log a buffer of hex bytes at specified level, separated into 16 bytes each line.
 *
 * @param  tag      description tag
 * @param  buffer   Pointer to the buffer array
 * @param  buff_len length of buffer in bytes
 * @param  level    level of the log
 *
 */
#define AXK_LOG_BUFFER_HEX_LEVEL( tag, buffer, buff_len, level ) \
    do {\
        if ( LOG_LOCAL_LEVEL >= (level) ) { \
            axk_log_buffer_hex_internal( tag, buffer, buff_len, level ); \
        } \
    } while(0)

/**
 * @brief Log a buffer of characters at specified level, separated into 16 bytes each line. Buffer should contain only printable characters.
 *
 * @param  tag      description tag
 * @param  buffer   Pointer to the buffer array
 * @param  buff_len length of buffer in bytes
 * @param  level    level of the log
 *
 */
#define AXK_LOG_BUFFER_CHAR_LEVEL( tag, buffer, buff_len, level ) \
    do {\
        if ( LOG_LOCAL_LEVEL >= (level) ) { \
            axk_log_buffer_char_internal( tag, buffer, buff_len, level ); \
        } \
    } while(0)

/**
 * @brief Dump a buffer to the log at specified level.
 *
 * The dump log shows just like the one below:
 *
 *      W (195) log_example: 0x3ffb4280   45 53 50 33 32 20 69 73  20 67 72 65 61 74 2c 20  |BL602 is great, |
 *      W (195) log_example: 0x3ffb4290   77 6f 72 6b 69 6e 67 20  61 6c 6f 6e 67 20 77 69  |working along wi|
 *      W (205) log_example: 0x3ffb42a0   74 68 20 74 68 65 20 49  44 46 2e 00              |th the SDK..|
 *
 * It is highly recommended to use terminals with over 102 text width.
 *
 * @param tag description tag
 * @param buffer Pointer to the buffer array
 * @param buff_len length of buffer in bytes
 * @param level level of the log
 */
#define AXK_LOG_BUFFER_HEXDUMP( tag, buffer, buff_len, level ) \
    do { \
        if ( LOG_LOCAL_LEVEL >= (level) ) { \
            axk_log_buffer_hexdump_internal( tag, buffer, buff_len, level); \
        } \
    } while(0)

/**
 * @brief Log a buffer of hex bytes at Info level
 *
 * @param  tag      description tag
 * @param  buffer   Pointer to the buffer array
 * @param  buff_len length of buffer in bytes
 *
 * @see ``axk_log_buffer_hex_level``
 *
 */
#define AXK_LOG_BUFFER_HEX(tag, buffer, buff_len) \
    do { \
        if (LOG_LOCAL_LEVEL >= AXK_LOG_INFO) { \
            AXK_LOG_BUFFER_HEX_LEVEL( tag, buffer, buff_len, AXK_LOG_INFO ); \
        }\
    } while(0)

/**
 * @brief Log a buffer of characters at Info level. Buffer should contain only printable characters.
 *
 * @param  tag      description tag
 * @param  buffer   Pointer to the buffer array
 * @param  buff_len length of buffer in bytes
 *
 * @see ``axk_log_buffer_char_level``
 *
 */
#define AXK_LOG_BUFFER_CHAR(tag, buffer, buff_len) \
    do { \
        if (LOG_LOCAL_LEVEL >= AXK_LOG_INFO) { \
            AXK_LOG_BUFFER_CHAR_LEVEL( tag, buffer, buff_len, AXK_LOG_INFO ); \
        }\
    } while(0)

/** @cond */

//to be back compatible
#define axk_log_buffer_hex      AXK_LOG_BUFFER_HEX
#define axk_log_buffer_char     AXK_LOG_BUFFER_CHAR


#if CONFIG_LOG_COLORS
#define LOG_COLOR_BLACK   "30"
#define LOG_COLOR_RED     "31"
#define LOG_COLOR_GREEN   "32"
#define LOG_COLOR_BROWN   "33"
#define LOG_COLOR_BLUE    "34"
#define LOG_COLOR_PURPLE  "35"
#define LOG_COLOR_CYAN    "36"
#define LOG_COLOR(COLOR)  "\033[0;" COLOR "m"
#define LOG_BOLD(COLOR)   "\033[1;" COLOR "m"
#define LOG_RESET_COLOR   "\033[0m"
#define LOG_COLOR_E       LOG_COLOR(LOG_COLOR_RED)
#define LOG_COLOR_W       LOG_COLOR(LOG_COLOR_BROWN)
#define LOG_COLOR_I       LOG_COLOR(LOG_COLOR_GREEN)
#define LOG_COLOR_D
#define LOG_COLOR_V
#else //CONFIG_LOG_COLORS
#define LOG_COLOR_E
#define LOG_COLOR_W
#define LOG_COLOR_I
#define LOG_COLOR_D
#define LOG_COLOR_V
#define LOG_RESET_COLOR
#endif //CONFIG_LOG_COLORS

#define LOG_FORMAT(letter, format)  LOG_COLOR_ ## letter #letter " (%u) %s: " format LOG_RESET_COLOR "\n"
#define LOG_SYSTEM_TIME_FORMAT(letter, format)  LOG_COLOR_ ## letter #letter " (%s) %s: " format LOG_RESET_COLOR "\n"

/** @endcond */

/// macro to output logs in startup code, before heap allocator and syscalls have been initialized.
/// Log at ``AXK_LOG_ERROR`` level. @see ``printf``,``AXK_LOGE``,``AXK_DRAM_LOGE``

/**
 * In the future, we want to switch to C++20. We also want to become compatible with clang.
 * Hence, we provide two versions of the following macros which are using variadic arguments.
 * The first one is using the GNU extension \#\#__VA_ARGS__. The second one is using the C++20 feature __VA_OPT__(,).
 * This allows users to compile their code with standard C++20 enabled instead of the GNU extension.
 * Below C++20, we haven't found any good alternative to using \#\#__VA_ARGS__.
 */
#if defined(__cplusplus) && (__cplusplus >  201703L)
#define AXK_EARLY_LOGE( tag, format, ... ) AXK_LOG_EARLY_IMPL(tag, format, AXK_LOG_ERROR,   E __VA_OPT__(,) __VA_ARGS__)
/// macro to output logs in startup code at ``AXK_LOG_WARN`` level.  @see ``AXK_EARLY_LOGE``,``AXK_LOGE``, ``printf``
#define AXK_EARLY_LOGW( tag, format, ... ) AXK_LOG_EARLY_IMPL(tag, format, AXK_LOG_WARN,    W __VA_OPT__(,) __VA_ARGS__)
/// macro to output logs in startup code at ``AXK_LOG_INFO`` level.  @see ``AXK_EARLY_LOGE``,``AXK_LOGE``, ``printf``
#define AXK_EARLY_LOGI( tag, format, ... ) AXK_LOG_EARLY_IMPL(tag, format, AXK_LOG_INFO,    I __VA_OPT__(,) __VA_ARGS__)
/// macro to output logs in startup code at ``AXK_LOG_DEBUG`` level.  @see ``AXK_EARLY_LOGE``,``AXK_LOGE``, ``printf``
#define AXK_EARLY_LOGD( tag, format, ... ) AXK_LOG_EARLY_IMPL(tag, format, AXK_LOG_DEBUG,   D __VA_OPT__(,) __VA_ARGS__)
/// macro to output logs in startup code at ``AXK_LOG_VERBOSE`` level.  @see ``AXK_EARLY_LOGE``,``AXK_LOGE``, ``printf``
#define AXK_EARLY_LOGV( tag, format, ... ) AXK_LOG_EARLY_IMPL(tag, format, AXK_LOG_VERBOSE, V __VA_OPT__(,) __VA_ARGS__)
#else // !(defined(__cplusplus) && (__cplusplus >  201703L))
#define AXK_EARLY_LOGE( tag, format, ... ) AXK_LOG_EARLY_IMPL(tag, format, AXK_LOG_ERROR,   E, ##__VA_ARGS__)
/// macro to output logs in startup code at ``AXK_LOG_WARN`` level.  @see ``AXK_EARLY_LOGE``,``AXK_LOGE``, ``printf``
#define AXK_EARLY_LOGW( tag, format, ... ) AXK_LOG_EARLY_IMPL(tag, format, AXK_LOG_WARN,    W, ##__VA_ARGS__)
/// macro to output logs in startup code at ``AXK_LOG_INFO`` level.  @see ``AXK_EARLY_LOGE``,``AXK_LOGE``, ``printf``
#define AXK_EARLY_LOGI( tag, format, ... ) AXK_LOG_EARLY_IMPL(tag, format, AXK_LOG_INFO,    I, ##__VA_ARGS__)
/// macro to output logs in startup code at ``AXK_LOG_DEBUG`` level.  @see ``AXK_EARLY_LOGE``,``AXK_LOGE``, ``printf``
#define AXK_EARLY_LOGD( tag, format, ... ) AXK_LOG_EARLY_IMPL(tag, format, AXK_LOG_DEBUG,   D, ##__VA_ARGS__)
/// macro to output logs in startup code at ``AXK_LOG_VERBOSE`` level.  @see ``AXK_EARLY_LOGE``,``AXK_LOGE``, ``printf``
#define AXK_EARLY_LOGV( tag, format, ... ) AXK_LOG_EARLY_IMPL(tag, format, AXK_LOG_VERBOSE, V, ##__VA_ARGS__)
#endif // !(defined(__cplusplus) && (__cplusplus >  201703L))

#ifdef BOOTLOADER_BUILD
#define _AXK_LOG_EARLY_ENABLED(log_level) (LOG_LOCAL_LEVEL >= (log_level))
#else
/* For early log, there is no log tag filtering. So we want to log only if both the LOG_LOCAL_LEVEL and the
   currently configured min log level are higher than the log level */
#define _AXK_LOG_EARLY_ENABLED(log_level) (LOG_LOCAL_LEVEL >= (log_level) && axk_log_default_level >= (log_level))
#endif

#define AXK_LOG_EARLY_IMPL(tag, format, log_level, log_tag_letter, ...) do {                             \
        if (_AXK_LOG_EARLY_ENABLED(log_level)) {                                                         \
            axk_rom_printf(LOG_FORMAT(log_tag_letter, format), axk_log_timestamp(), tag, ##__VA_ARGS__); \
        }} while(0)

#ifndef BOOTLOADER_BUILD
#if defined(__cplusplus) && (__cplusplus >  201703L)
#define AXK_LOGE( tag, format, ... ) AXK_LOG_LEVEL_LOCAL(AXK_LOG_ERROR,   tag, format __VA_OPT__(,) __VA_ARGS__)
#define AXK_LOGW( tag, format, ... ) AXK_LOG_LEVEL_LOCAL(AXK_LOG_WARN,    tag, format __VA_OPT__(,) __VA_ARGS__)
#define AXK_LOGI( tag, format, ... ) AXK_LOG_LEVEL_LOCAL(AXK_LOG_INFO,    tag, format __VA_OPT__(,) __VA_ARGS__)
#define AXK_LOGD( tag, format, ... ) AXK_LOG_LEVEL_LOCAL(AXK_LOG_DEBUG,   tag, format __VA_OPT__(,) __VA_ARGS__)
#define AXK_LOGV( tag, format, ... ) AXK_LOG_LEVEL_LOCAL(AXK_LOG_VERBOSE, tag, format __VA_OPT__(,) __VA_ARGS__)
#else // !(defined(__cplusplus) && (__cplusplus >  201703L))
#define AXK_LOGE( tag, format, ... ) AXK_LOG_LEVEL_LOCAL(AXK_LOG_ERROR,   tag, format, ##__VA_ARGS__)
#define AXK_LOGW( tag, format, ... ) AXK_LOG_LEVEL_LOCAL(AXK_LOG_WARN,    tag, format, ##__VA_ARGS__)
#define AXK_LOGI( tag, format, ... ) AXK_LOG_LEVEL_LOCAL(AXK_LOG_INFO,    tag, format, ##__VA_ARGS__)
#define AXK_LOGD( tag, format, ... ) AXK_LOG_LEVEL_LOCAL(AXK_LOG_DEBUG,   tag, format, ##__VA_ARGS__)
#define AXK_LOGV( tag, format, ... ) AXK_LOG_LEVEL_LOCAL(AXK_LOG_VERBOSE, tag, format, ##__VA_ARGS__)
#endif // !(defined(__cplusplus) && (__cplusplus >  201703L))
#else

/**
 * Macro to output logs at AXK_LOG_ERROR level.
 *
 * @note This macro cannot be used when interrupts are disabled or inside an ISR. @see ``AXK_DRAM_LOGE``.
 *
 * @param tag tag of the log, which can be used to change the log level by ``axk_log_level_set`` at runtime.
 *
 * @see ``printf``
 */
#if defined(__cplusplus) && (__cplusplus >  201703L)
#define AXK_LOGE( tag, format, ... )  AXK_EARLY_LOGE(tag, format __VA_OPT__(,) __VA_ARGS__)
/// macro to output logs at ``AXK_LOG_WARN`` level.  @see ``AXK_LOGE``
#define AXK_LOGW( tag, format, ... )  AXK_EARLY_LOGW(tag, format __VA_OPT__(,) __VA_ARGS__)
/// macro to output logs at ``AXK_LOG_INFO`` level.  @see ``AXK_LOGE``
#define AXK_LOGI( tag, format, ... )  AXK_EARLY_LOGI(tag, format __VA_OPT__(,) __VA_ARGS__)
/// macro to output logs at ``AXK_LOG_DEBUG`` level.  @see ``AXK_LOGE``
#define AXK_LOGD( tag, format, ... )  AXK_EARLY_LOGD(tag, format __VA_OPT__(,) __VA_ARGS__)
/// macro to output logs at ``AXK_LOG_VERBOSE`` level.  @see ``AXK_LOGE``
#define AXK_LOGV( tag, format, ... )  AXK_EARLY_LOGV(tag, format __VA_OPT__(,) __VA_ARGS__)
#else // !(defined(__cplusplus) && (__cplusplus >  201703L))
#define AXK_LOGE( tag, format, ... )  AXK_EARLY_LOGE(tag, format, ##__VA_ARGS__)
/// macro to output logs at ``AXK_LOG_WARN`` level.  @see ``AXK_LOGE``
#define AXK_LOGW( tag, format, ... )  AXK_EARLY_LOGW(tag, format, ##__VA_ARGS__)
/// macro to output logs at ``AXK_LOG_INFO`` level.  @see ``AXK_LOGE``
#define AXK_LOGI( tag, format, ... )  AXK_EARLY_LOGI(tag, format, ##__VA_ARGS__)
/// macro to output logs at ``AXK_LOG_DEBUG`` level.  @see ``AXK_LOGE``
#define AXK_LOGD( tag, format, ... )  AXK_EARLY_LOGD(tag, format, ##__VA_ARGS__)
/// macro to output logs at ``AXK_LOG_VERBOSE`` level.  @see ``AXK_LOGE``
#define AXK_LOGV( tag, format, ... )  AXK_EARLY_LOGV(tag, format, ##__VA_ARGS__)
#endif // !(defined(__cplusplus) && (__cplusplus >  201703L))
#endif  // BOOTLOADER_BUILD

/** runtime macro to output logs at a specified level.
 *
 * @param tag tag of the log, which can be used to change the log level by ``axk_log_level_set`` at runtime.
 * @param level level of the output log.
 * @param format format of the output log. See ``printf``
 * @param ... variables to be replaced into the log. See ``printf``
 *
 * @see ``printf``
 */
#if defined(__cplusplus) && (__cplusplus >  201703L)
#if CONFIG_LOG_TIMESTAMP_SOURCE_RTOS
#define AXK_LOG_LEVEL(level, tag, format, ...) do {                     \
        if (level==AXK_LOG_ERROR )          { axk_log_write(AXK_LOG_ERROR,      tag, LOG_FORMAT(E, format), axk_log_timestamp(), tag __VA_OPT__(,) __VA_ARGS__); } \
        else if (level==AXK_LOG_WARN )      { axk_log_write(AXK_LOG_WARN,       tag, LOG_FORMAT(W, format), axk_log_timestamp(), tag __VA_OPT__(,) __VA_ARGS__); } \
        else if (level==AXK_LOG_DEBUG )     { axk_log_write(AXK_LOG_DEBUG,      tag, LOG_FORMAT(D, format), axk_log_timestamp(), tag __VA_OPT__(,) __VA_ARGS__); } \
        else if (level==AXK_LOG_VERBOSE )   { axk_log_write(AXK_LOG_VERBOSE,    tag, LOG_FORMAT(V, format), axk_log_timestamp(), tag __VA_OPT__(,) __VA_ARGS__); } \
        else                                { axk_log_write(AXK_LOG_INFO,       tag, LOG_FORMAT(I, format), axk_log_timestamp(), tag __VA_OPT__(,) __VA_ARGS__); } \
    } while(0)
#elif CONFIG_LOG_TIMESTAMP_SOURCE_SYSTEM
#define AXK_LOG_LEVEL(level, tag, format, ...) do {                     \
        if (level==AXK_LOG_ERROR )          { axk_log_write(AXK_LOG_ERROR,      tag, LOG_SYSTEM_TIME_FORMAT(E, format), axk_log_system_timestamp(), tag __VA_OPT__(,) __VA_ARGS__); } \
        else if (level==AXK_LOG_WARN )      { axk_log_write(AXK_LOG_WARN,       tag, LOG_SYSTEM_TIME_FORMAT(W, format), axk_log_system_timestamp(), tag __VA_OPT__(,) __VA_ARGS__); } \
        else if (level==AXK_LOG_DEBUG )     { axk_log_write(AXK_LOG_DEBUG,      tag, LOG_SYSTEM_TIME_FORMAT(D, format), axk_log_system_timestamp(), tag __VA_OPT__(,) __VA_ARGS__); } \
        else if (level==AXK_LOG_VERBOSE )   { axk_log_write(AXK_LOG_VERBOSE,    tag, LOG_SYSTEM_TIME_FORMAT(V, format), axk_log_system_timestamp(), tag __VA_OPT__(,) __VA_ARGS__); } \
        else                                { axk_log_write(AXK_LOG_INFO,       tag, LOG_SYSTEM_TIME_FORMAT(I, format), axk_log_system_timestamp(), tag __VA_OPT__(,) __VA_ARGS__); } \
    } while(0)
#endif //CONFIG_LOG_TIMESTAMP_SOURCE_xxx
#else // !(defined(__cplusplus) && (__cplusplus >  201703L))
#if CONFIG_LOG_TIMESTAMP_SOURCE_RTOS
#define AXK_LOG_LEVEL(level, tag, format, ...) do {                     \
        if (level==AXK_LOG_ERROR )          { axk_log_write(AXK_LOG_ERROR,      tag, LOG_FORMAT(E, format), axk_log_timestamp(), tag, ##__VA_ARGS__); } \
        else if (level==AXK_LOG_WARN )      { axk_log_write(AXK_LOG_WARN,       tag, LOG_FORMAT(W, format), axk_log_timestamp(), tag, ##__VA_ARGS__); } \
        else if (level==AXK_LOG_DEBUG )     { axk_log_write(AXK_LOG_DEBUG,      tag, LOG_FORMAT(D, format), axk_log_timestamp(), tag, ##__VA_ARGS__); } \
        else if (level==AXK_LOG_VERBOSE )   { axk_log_write(AXK_LOG_VERBOSE,    tag, LOG_FORMAT(V, format), axk_log_timestamp(), tag, ##__VA_ARGS__); } \
        else                                { axk_log_write(AXK_LOG_INFO,       tag, LOG_FORMAT(I, format), axk_log_timestamp(), tag, ##__VA_ARGS__); } \
    } while(0)
#elif CONFIG_LOG_TIMESTAMP_SOURCE_SYSTEM
#define AXK_LOG_LEVEL(level, tag, format, ...) do {                     \
        if (level==AXK_LOG_ERROR )          { axk_log_write(AXK_LOG_ERROR,      tag, LOG_SYSTEM_TIME_FORMAT(E, format), axk_log_system_timestamp(), tag, ##__VA_ARGS__); } \
        else if (level==AXK_LOG_WARN )      { axk_log_write(AXK_LOG_WARN,       tag, LOG_SYSTEM_TIME_FORMAT(W, format), axk_log_system_timestamp(), tag, ##__VA_ARGS__); } \
        else if (level==AXK_LOG_DEBUG )     { axk_log_write(AXK_LOG_DEBUG,      tag, LOG_SYSTEM_TIME_FORMAT(D, format), axk_log_system_timestamp(), tag, ##__VA_ARGS__); } \
        else if (level==AXK_LOG_VERBOSE )   { axk_log_write(AXK_LOG_VERBOSE,    tag, LOG_SYSTEM_TIME_FORMAT(V, format), axk_log_system_timestamp(), tag, ##__VA_ARGS__); } \
        else                                { axk_log_write(AXK_LOG_INFO,       tag, LOG_SYSTEM_TIME_FORMAT(I, format), axk_log_system_timestamp(), tag, ##__VA_ARGS__); } \
    } while(0)
#endif //CONFIG_LOG_TIMESTAMP_SOURCE_xxx
#endif // !(defined(__cplusplus) && (__cplusplus >  201703L))

/** runtime macro to output logs at a specified level. Also check the level with ``LOG_LOCAL_LEVEL``.
 *
 * @see ``printf``, ``AXK_LOG_LEVEL``
 */
#define AXK_LOG_LEVEL_LOCAL(level, tag, format, ...) do {               \
        if ( LOG_LOCAL_LEVEL >= level ) AXK_LOG_LEVEL(level, tag, format, ##__VA_ARGS__); \
    } while(0)


/**
 * @brief Macro to output logs when the cache is disabled. Log at ``AXK_LOG_ERROR`` level.
 *
 * @note Unlike normal logging macros, it's possible to use this macro when interrupts are
 * disabled or inside an ISR.
 *
 * Similar to @see ``AXK_EARLY_LOGE``, the log level cannot be changed per-tag, however
 * axk_log_level_set("*", level) will set the default level which controls these log lines also.
 *
 * Usage: `AXK_DRAM_LOGE(DRAM_STR("my_tag"), "format", or `AXK_DRAM_LOGE(TAG, "format", ...)`,
 * where TAG is a char* that points to a str in the DRAM.
 *
 * @note Placing log strings in DRAM reduces available DRAM, so only use when absolutely essential.
 *
 * @see ``axk_rom_printf``,``AXK_LOGE``
 */
#if defined(__cplusplus) && (__cplusplus >  201703L)
#define AXK_DRAM_LOGE( tag, format, ... ) AXK_DRAM_LOG_IMPL(tag, format, AXK_LOG_ERROR,   E __VA_OPT__(,) __VA_ARGS__)
/// macro to output logs when the cache is disabled at ``AXK_LOG_WARN`` level.  @see ``AXK_DRAM_LOGW``,``AXK_LOGW``, ``axk_rom_printf``
#define AXK_DRAM_LOGW( tag, format, ... ) AXK_DRAM_LOG_IMPL(tag, format, AXK_LOG_WARN,    W __VA_OPT__(,) __VA_ARGS__)
/// macro to output logs when the cache is disabled at ``AXK_LOG_INFO`` level.  @see ``AXK_DRAM_LOGI``,``AXK_LOGI``, ``axk_rom_printf``
#define AXK_DRAM_LOGI( tag, format, ... ) AXK_DRAM_LOG_IMPL(tag, format, AXK_LOG_INFO,    I __VA_OPT__(,) __VA_ARGS__)
/// macro to output logs when the cache is disabled at ``AXK_LOG_DEBUG`` level.  @see ``AXK_DRAM_LOGD``,``AXK_LOGD``, ``axk_rom_printf``
#define AXK_DRAM_LOGD( tag, format, ... ) AXK_DRAM_LOG_IMPL(tag, format, AXK_LOG_DEBUG,   D __VA_OPT__(,) __VA_ARGS__)
/// macro to output logs when the cache is disabled at ``AXK_LOG_VERBOSE`` level.  @see ``AXK_DRAM_LOGV``,``AXK_LOGV``, ``axk_rom_printf``
#define AXK_DRAM_LOGV( tag, format, ... ) AXK_DRAM_LOG_IMPL(tag, format, AXK_LOG_VERBOSE, V __VA_OPT__(,) __VA_ARGS__)
#else // !(defined(__cplusplus) && (__cplusplus >  201703L))
#define AXK_DRAM_LOGE( tag, format, ... ) AXK_DRAM_LOG_IMPL(tag, format, AXK_LOG_ERROR,   E, ##__VA_ARGS__)
/// macro to output logs when the cache is disabled at ``AXK_LOG_WARN`` level.  @see ``AXK_DRAM_LOGW``,``AXK_LOGW``, ``axk_rom_printf``
#define AXK_DRAM_LOGW( tag, format, ... ) AXK_DRAM_LOG_IMPL(tag, format, AXK_LOG_WARN,    W, ##__VA_ARGS__)
/// macro to output logs when the cache is disabled at ``AXK_LOG_INFO`` level.  @see ``AXK_DRAM_LOGI``,``AXK_LOGI``, ``axk_rom_printf``
#define AXK_DRAM_LOGI( tag, format, ... ) AXK_DRAM_LOG_IMPL(tag, format, AXK_LOG_INFO,    I, ##__VA_ARGS__)
/// macro to output logs when the cache is disabled at ``AXK_LOG_DEBUG`` level.  @see ``AXK_DRAM_LOGD``,``AXK_LOGD``, ``axk_rom_printf``
#define AXK_DRAM_LOGD( tag, format, ... ) AXK_DRAM_LOG_IMPL(tag, format, AXK_LOG_DEBUG,   D, ##__VA_ARGS__)
/// macro to output logs when the cache is disabled at ``AXK_LOG_VERBOSE`` level.  @see ``AXK_DRAM_LOGV``,``AXK_LOGV``, ``axk_rom_printf``
#define AXK_DRAM_LOGV( tag, format, ... ) AXK_DRAM_LOG_IMPL(tag, format, AXK_LOG_VERBOSE, V, ##__VA_ARGS__)
#endif // !(defined(__cplusplus) && (__cplusplus >  201703L))

/** @cond */
#define _AXK_LOG_DRAM_LOG_FORMAT(letter, format)  DRAM_STR(#letter " %s: " format "\n")

#if defined(__cplusplus) && (__cplusplus >  201703L)
#define AXK_DRAM_LOG_IMPL(tag, format, log_level, log_tag_letter, ...) do {                                  \
        if (_AXK_LOG_EARLY_ENABLED(log_level)) {                                                             \
            axk_rom_printf(_AXK_LOG_DRAM_LOG_FORMAT(log_tag_letter, format), tag __VA_OPT__(,) __VA_ARGS__); \
        }} while(0)
#else // !(defined(__cplusplus) && (__cplusplus >  201703L))
#define AXK_DRAM_LOG_IMPL(tag, format, log_level, log_tag_letter, ...) do {                       \
        if (_AXK_LOG_EARLY_ENABLED(log_level)) {                                                  \
            axk_rom_printf(_AXK_LOG_DRAM_LOG_FORMAT(log_tag_letter, format), tag, ##__VA_ARGS__); \
        }} while(0)
#endif // !(defined(__cplusplus) && (__cplusplus >  201703L))
/** @endcond */

#else // ORIGINAL

#define AXK_LOGE( tag, format, ... ) do{(void)tag; blog_debug("[%s] " format "\r\n", tag, ##__VA_ARGS__);}while(0)
#define AXK_LOGW( tag, format, ... ) do{(void)tag; blog_warn("[%s] " format "\r\n", tag, ##__VA_ARGS__);}while(0)
#define AXK_LOGI( tag, format, ... ) do{(void)tag; blog_info("[%s] " format "\r\n", tag, ##__VA_ARGS__);}while(0)
#define AXK_LOGD( tag, format, ... ) do{(void)tag; blog_debug("[%s] " format "\r\n", tag, ##__VA_ARGS__);}while(0)
#define AXK_LOGV( tag, format, ... ) do{(void)tag; blog_debug("[%s] " format "\r\n", tag, ##__VA_ARGS__);}while(0)

#define AXK_LOG_BUFFER_HEX(tag, buffer, buff_len) \
    do { \
        (void)tag; \
        blog_info_hexdump(tag, (void *)buffer, buff_len); \
    } while(0)
#endif

#ifdef __cplusplus
}
#endif


#endif /* __AXK_LOG_H__ */
