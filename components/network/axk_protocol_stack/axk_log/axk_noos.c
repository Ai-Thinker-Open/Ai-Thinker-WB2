/*
 * SPDX-FileCopyrightText: 2019-2021 Axkressif Systems (Shanghai) CO LTD
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <assert.h>
#include "axk_log_private.h"
#include "axk_rom_sys.h"
#include "hal/cpu_hal.h"

static int s_lock = 0;

void axk_log_impl_lock(void)
{
    assert(s_lock == 0);
    s_lock = 1;
}

bool axk_log_lock_impl_timeout(void)
{
    axk_log_impl_lock();
    return true;
}

void axk_log_impl_unlock(void)
{
    assert(s_lock == 1);
    s_lock = 0;
}

/* FIXME: define an API for getting the timestamp in soc/hal SDK-2351 */
uint32_t axk_log_early_timestamp(void)
{
    return cpu_hal_get_cycle_count() / (axk_rom_get_cpu_ticks_per_us() * 1000);
}

uint32_t axk_log_timestamp(void) __attribute__((alias("axk_log_early_timestamp")));
