#include "isp_log.h"
#include "main.h"
#include <stdio.h>
#include <stdbool.h>

extern UART_HandleTypeDef huart2;

void isp_log_init(void)
{
}

void isp_log_set_deferred(bool enable)
{
    /* Logs go out USART2 (PA2), separate from USART1 ISP. Always live. */
    (void)enable;
}

void isp_log_flush(void)
{
}

void isp_log_printf(const char *fmt, ...)
{
    char line[120];
    va_list ap;
    va_start(ap, fmt);
    int n = vsnprintf(line, sizeof(line), fmt, ap);
    va_end(ap);
    if (n <= 0) {
        return;
    }
    if (n >= (int)sizeof(line)) {
        n = (int)sizeof(line) - 1;
    }
    (void)HAL_UART_Transmit(&huart2, (uint8_t *)line, (uint16_t)n, 1000);
}
