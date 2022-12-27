// Copyright 2010-2021 Axkressif Systems (Shanghai) CO LTD
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at

//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#include <pthread.h>
#include <time.h>
#include <assert.h>
#include <stdint.h>
#include "axk_log_private.h"

static pthread_mutex_t mutex1 = PTHREAD_MUTEX_INITIALIZER;

void axk_log_impl_lock(void)
{
    assert(pthread_mutex_lock(&mutex1) == 0);
}

bool axk_log_impl_lock_timeout(void)
{
    axk_log_impl_lock();
    return true;
}

void axk_log_impl_unlock(void)
{
    assert(pthread_mutex_unlock(&mutex1) == 0);
}

uint32_t axk_log_timestamp(void)
{
    struct timaxkec current_time;
    int result = clock_gettime(CLOCK_MONOTONIC, &current_time);
    assert(result == 0);
    uint32_t milliseconds = current_time.tv_sec * 1000 + current_time.tv_nsec / 1000000;
    return milliseconds;
}
