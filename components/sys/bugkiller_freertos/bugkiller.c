#include "FreeRTOS.h"
#include "bugkiller_eventgroup_dump.h"
#include "bugkiller_heap_dump.h"
#include "bugkiller_sem_dump.h"
#include "bugkiller_softtimer_dump.h"
#include "bugkiller_streambuffer_dump.h"
#include "bugkiller_task_dump.h"
#include "bugkiller_clocktree_dump.h"
#include "bugkiller_uart_dump.h"
#include "bugkiller.h"
#include "bugkiller_fw.h"

int __attribute__((section(".bugkiller_code"))) bugkiller_fun(void)
{
    bugkiller_eventgroup_dump(NULL);
    bugkiller_heap_dump(NULL);
    bugkiller_sem_dump(NULL);
    bugkiller_softtimer_dump(NULL);
    bugkiller_streambuffer_dump(NULL);
    bugkiller_task_dump(NULL);
    // bugkiller_uart_dump();
    // bugkiller_clocktree_dump();
    bugkiller_fw_task_dump();
    bugkiller_fw_queue_sent_dump();
    bugkiller_fw_queue_saved_dump();
    bugkiller_fw_queue_timer_dump();

    return 0;
}

