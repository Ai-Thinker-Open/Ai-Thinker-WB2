/**
 * @file main.c
 * @author your name (you@domain.com)
 * @brief
 * @version 0.1
 * @date 2022-10-22
 *
 * @copyright Copyright (c) 2022
 *
 */
#include <stdio.h>
#include <string.h>
#include <FreeRTOS.h>
#include <task.h>
#include <blog.h>
#include "bl_sys.h"

void main(void)
{
    blog_set_level_log_component(BLOG_LEVEL_ALL, "blog_demo");
    blog_print("The log level is LOG_LEVEL_ALL\n");
    blog_debug("The log level is LOG_LEVEL_DEBUG");
    blog_info("The log level is LOG_LEVEL_INFO");
    blog_warn("The log level is LOG_LEVEL_WARN");
    blog_error("The log level is LOG_LEVEL_ERROR");
    blog_assert("The log level is LOG_LEVEL_ASSERT");
    blog_print("The log level is LOG_LEVEL_NEVER\r\n");
    printf("\r\n");
    blog_set_level_log_component(BLOG_LEVEL_DEBUG, "blog_demo");

    blog_debug("The log level is LOG_LEVEL_DEBUG");
    blog_info("The log level is LOG_LEVEL_INFO");
    blog_warn("The log level is LOG_LEVEL_WARN");
    blog_error("The log level is LOG_LEVEL_ERROR");
    blog_assert("The log level is LOG_LEVEL_ASSERT");

    blog_print("The log level is LOG_LEVEL_NEVE\r\n");
    printf("\r\n");
    blog_set_level_log_component(BLOG_LEVEL_INFO, "blog_demo");

    blog_debug("The log level is LOG_LEVEL_DEBUG");
    blog_info("The log level is LOG_LEVEL_INFO");
    blog_warn("The log level is LOG_LEVEL_WARN");
    blog_error("The log level is LOG_LEVEL_ERROR");
    blog_assert("The log level is LOG_LEVEL_ASSERT");

    blog_print("The log level is LOG_LEVEL_NEVER\r\n");
    printf("\r\n");
    blog_set_level_log_component(BLOG_LEVEL_WARN, "blog_demo");

    blog_debug("The log level is LOG_LEVEL_DEBUG");
    blog_info("The log level is LOG_LEVEL_INFO");
    blog_warn("The log level is LOG_LEVEL_WARN");
    blog_error("The log level is LOG_LEVEL_ERROR");
    blog_assert("The log level is LOG_LEVEL_ASSERT");
    blog_print("The log level is LOG_LEVEL_NEVER\r\n");

    printf("\r\n");
    blog_set_level_log_component(BLOG_LEVEL_ERROR, "blog_demo");

    blog_debug("The log level is LOG_LEVEL_DEBUG");
    blog_info("The log level is LOG_LEVEL_INFO");
    blog_warn("The log level is LOG_LEVEL_WARN");
    blog_error("The log level is LOG_LEVEL_ERROR");
    blog_assert("The log level is LOG_LEVEL_ASSERT");
    blog_print("The log level is LOG_LEVEL_NEVER\r\n");

    printf("\r\n");
    blog_set_level_log_component(BLOG_LEVEL_ASSERT, "blog_demo");

    blog_debug("The log level is LOG_LEVEL_DEBUG");
    blog_info("The log level is LOG_LEVEL_INFO");
    blog_warn("The log level is LOG_LEVEL_WARN");
    blog_error("The log level is LOG_LEVEL_ERROR");
    blog_assert("The log level is LOG_LEVEL_ASSERT");
    blog_print("The log level is LOG_LEVEL_NEVER\r\n");

    printf("\r\n");
    blog_set_level_log_component(BLOG_LEVEL_NEVER, "blog_demo");

    blog_debug("The log level is LOG_LEVEL_DEBUG");
    blog_info("The log level is LOG_LEVEL_INFO");
    blog_warn("The log level is LOG_LEVEL_WARN");
    blog_error("The log level is LOG_LEVEL_ERROR");
    blog_assert("The log level is LOG_LEVEL_ASSERT");
    blog_print("The log level is LOG_LEVEL_NEVER\r\n");
}
