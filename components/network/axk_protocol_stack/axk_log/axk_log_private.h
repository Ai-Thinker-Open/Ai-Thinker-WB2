#pragma once
#include <stdbool.h>

void axk_log_impl_lock(void);
bool axk_log_impl_lock_timeout(void);
void axk_log_impl_unlock(void);
