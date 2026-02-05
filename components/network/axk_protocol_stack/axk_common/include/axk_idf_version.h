/*
 * SPDX-FileCopyrightText: 2019-2021 Axkressif Systems (Shanghai) CO LTD
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#pragma once

#ifdef __cplusplus
extern "C" {
#endif

/** Major version number (X.x.x) */
#define AXK_SDK_VERSION_MAJOR   5
/** Minor version number (x.X.x) */
#define AXK_SDK_VERSION_MINOR   0
/** Patch version number (x.x.X) */
#define AXK_SDK_VERSION_PATCH   0

/**
 * Macro to convert SDK version number into an integer
 *
 * To be used in comparisons, such as AXK_SDK_VERSION >= AXK_SDK_VERSION_VAL(4, 0, 0)
 */
#define AXK_SDK_VERSION_VAL(major, minor, patch) ((major << 16) | (minor << 8) | (patch))

/**
 * Current SDK version, as an integer
 *
 * To be used in comparisons, such as AXK_SDK_VERSION >= AXK_SDK_VERSION_VAL(4, 0, 0)
 */
#define AXK_SDK_VERSION  AXK_SDK_VERSION_VAL(AXK_SDK_VERSION_MAJOR, \
                                             AXK_SDK_VERSION_MINOR, \
                                             AXK_SDK_VERSION_PATCH)

#ifndef __ASSEMBLER__

/**
 * Return full SDK version string, same as 'git describe' output.
 *
 * @note If you are printing the AXK-SDK version in a log file or other information,
 * this function provides more information than using the numerical version macros.
 * For example, numerical version macros don't differentiate between development,
 * pre-release and release versions, but the output of this function does.
 *
 * @return constant string from SDK_VER
 */
const char* axk_get_sdk_version(void);

#endif

#ifdef __cplusplus
}
#endif
