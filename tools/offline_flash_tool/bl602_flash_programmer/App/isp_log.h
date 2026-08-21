#ifndef ISP_LOG_H
#define ISP_LOG_H

#include <stdarg.h>
#include <stdbool.h>

void isp_log_init(void);
void isp_log_set_deferred(bool enable);
void isp_log_flush(void);
void isp_log_printf(const char *fmt, ...);

#define ISP_LOG(...) isp_log_printf(__VA_ARGS__)

#endif
