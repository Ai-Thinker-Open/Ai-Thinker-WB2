/*
 * Copyright (c) 2020 Bouffalolab.
 *
 * This file is part of
 *     *** Bouffalolab Software Dev Kit ***
 *      (see www.bouffalolab.com).
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *   1. Redistributions of source code must retain the above copyright notice,
 *      this list of conditions and the following disclaimer.
 *   2. Redistributions in binary form must reproduce the above copyright notice,
 *      this list of conditions and the following disclaimer in the documentation
 *      and/or other materials provided with the distribution.
 *   3. Neither the name of Bouffalo Lab nor the names of its contributors
 *      may be used to endorse or promote products derived from this software
 *      without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */
#include <FreeRTOS.h>
#include <task.h>
#include <timers.h>
#include <stdio.h>
#include <aos/kernel.h>
#include <aos/yloop.h>
#include <event_device.h>
#include <bl_uart.h>
#include <bl_chip.h>
#include <bl_wifi.h>
#include <bl_sec.h>
#include <bl_cks.h>
#include <bl_irq.h>
#include <bl_sys.h>
#include <bl_dma.h>
#include <hosal_uart.h>
#include <hal_sys.h>
#include <hal_boot2.h>
#include <hal_board.h>
#include <bl_sys_time.h>
#include <fdt.h>
#include <vfs.h>
#include <cli.h>
#include <libfdt.h>
#include <device/vfs_uart.h>
#include <blog.h>
#ifdef EASYFLASH_ENABLE
#include <easyflash.h>
#endif
#ifdef SYS_LOOPRT_ENABLE
#include <looprt.h>
#include <loopset.h>
#endif
#ifdef SYS_USER_VFS_ROMFS_ENABLE
#include <bl_romfs.h>
#endif

#ifdef CUSTOM_LOG_IO
HOSAL_UART_DEV_DECL(uart_stdio, 0, CUSTOM_LOG_TX_IO, CUSTOM_LOG_RX_IO, CUSTOM_LOG_RX_BAUD);
#else
HOSAL_UART_DEV_DECL(uart_stdio, 0, 16, 7, 115200);
// HOSAL_UART_DEV_DECL(uart_stdio, 0, 2, 4, 921600);
// HOSAL_UART_DEV_DECL(uart_stdio, 0, 14, 12, 921600);
// HOSAL_UART_DEV_DECL(uart_stdio, 0, 4, 0xff, 115200);
#endif

extern uint8_t _heap_start;
extern uint8_t _heap_size; // @suppress("Type cannot be resolved")
extern uint8_t _heap_wifi_start;
extern uint8_t _heap_wifi_size; // @suppress("Type cannot be resolved")
static HeapRegion_t xHeapRegions[] =
{
        { &_heap_start,  (unsigned int) &_heap_size}, //set on runtime
        { &_heap_wifi_start, (unsigned int) &_heap_wifi_size },
        { NULL, 0 }, /* Terminates the array. */
        { NULL, 0 } /* Terminates the array. */
};

void vApplicationStackOverflowHook(TaskHandle_t xTask, char *pcTaskName )
{
    puts("Stack Overflow checked\r\n");
    bl_sys_reset_por();
    while (1) {
        /*empty here*/
    }
}

void __attribute__((weak)) vApplicationMallocFailedHook(void)
{
    printf("Memory Allocate Failed. Current left size is %d bytes\r\n",
        xPortGetFreeHeapSize()
    );
#if 0
    while (1) {
        /*empty here*/
    }
#endif
}

void __attribute__((weak)) vApplicationIdleHook(void)
{
    __asm volatile(
            "   wfi     "
    );
    /*empty*/
}

void __attribute__((weak)) vApplicationGetIdleTaskMemory(StaticTask_t **ppxIdleTaskTCBBuffer, StackType_t **ppxIdleTaskStackBuffer, uint32_t *pulIdleTaskStackSize)
{
    /* If the buffers to be provided to the Idle task are declared inside this
    function then they must be declared static - otherwise they will be allocated on
    the stack and so not exists after this function exits. */
    static StaticTask_t xIdleTaskTCB;
    static StackType_t uxIdleTaskStack[ configMINIMAL_STACK_SIZE ];

    /* Pass out a pointer to the StaticTask_t structure in which the Idle task's
    state will be stored. */
    *ppxIdleTaskTCBBuffer = &xIdleTaskTCB;

    /* Pass out the array that will be used as the Idle task's stack. */
    *ppxIdleTaskStackBuffer = uxIdleTaskStack;

    /* Pass out the size of the array pointed to by *ppxIdleTaskStackBuffer.
    Note that, as the array is necessarily of type StackType_t,
    configMINIMAL_STACK_SIZE is specified in words, not bytes. */
    *pulIdleTaskStackSize = configMINIMAL_STACK_SIZE;
}

/* configSUPPORT_STATIC_ALLOCATION and configUSE_TIMERS are both set to 1, so the
application must provide an implementation of vApplicationGetTimerTaskMemory()
to provide the memory that is used by the Timer service task. */
void vApplicationGetTimerTaskMemory(StaticTask_t **ppxTimerTaskTCBBuffer, StackType_t **ppxTimerTaskStackBuffer, uint32_t *pulTimerTaskStackSize)
{
    /* If the buffers to be provided to the Timer task are declared inside this
    function then they must be declared static - otherwise they will be allocated on
    the stack and so not exists after this function exits. */
    static StaticTask_t xTimerTaskTCB;
    static StackType_t uxTimerTaskStack[ configTIMER_TASK_STACK_DEPTH ];

    /* Pass out a pointer to the StaticTask_t structure in which the Timer
    task's state will be stored. */
    *ppxTimerTaskTCBBuffer = &xTimerTaskTCB;

    /* Pass out the array that will be used as the Timer task's stack. */
    *ppxTimerTaskStackBuffer = uxTimerTaskStack;

    /* Pass out the size of the array pointed to by *ppxTimerTaskStackBuffer.
    Note that, as the array is necessarily of type StackType_t,
    configTIMER_TASK_STACK_DEPTH is specified in words, not bytes. */
    *pulTimerTaskStackSize = configTIMER_TASK_STACK_DEPTH;
}

void user_vAssertCalled(void) __attribute__ ((weak, alias ("vAssertCalled")));
void __attribute__((weak)) vAssertCalled(void)
{
    taskDISABLE_INTERRUPTS();
    abort();
}

#ifdef SYS_VFS_UART_ENABLE
static int get_dts_addr(const char *name, uint32_t *start, uint32_t *off)
{
    uint32_t addr = hal_board_get_factory_addr();
    const void *fdt = (const void *)addr;
    uint32_t offset;

    if (!name || !start || !off) {
        return -1;
    }

    offset = fdt_subnode_offset(fdt, 0, name);
    if (offset <= 0) {
       log_error("%s NULL.\r\n", name);
       return -1;
    }

    *start = (uint32_t)fdt;
    *off = offset;

    return 0;
}
#endif

static void app_main_entry(void *pvParameters)
{
    extern int main();
    main();
    vTaskDelete(NULL);
}

static void aos_loop_proc(void *pvParameters)
{
#ifdef SYS_LOOPRT_ENABLE
    static StackType_t proc_stack_looprt[512];
    static StaticTask_t proc_task_looprt;

    /*Init bloop stuff*/
    looprt_start(proc_stack_looprt, 512, &proc_task_looprt);
    loopset_led_hook_on_looprt();
#endif
#ifdef EASYFLASH_ENABLE
    easyflash_init();
#endif

#ifdef SYS_VFS_ENABLE
    vfs_init();
    vfs_device_init();
#endif

#ifdef SYS_VFS_UART_ENABLE
    uint32_t fdt = 0, offset = 0;
    const char *uart_node[] = {
        "uart@4000A000",
        "uart@4000A100",
    };

    if (0 == get_dts_addr("uart", &fdt, &offset)) {
        vfs_uart_init(fdt, offset, uart_node, 2);
    }
#endif

#ifdef SYS_USER_VFS_ROMFS_ENABLE
    romfs_register();
#endif

#ifdef SYS_AOS_LOOP_ENABLE
    aos_loop_init();
#endif

#ifdef SYS_AOS_CLI_ENABLE
    int fd_console;
    fd_console = aos_open("/dev/ttyS0", 0);
    if (fd_console >= 0) {
        printf("Init CLI with event Driven\r\n");
        aos_cli_init(0);
        aos_poll_read_fd(fd_console, aos_cli_event_cb_read_get(), (void*)0x12345678);
    }
#endif

    xTaskCreate(app_main_entry,
            (char*)"main",
            SYS_APP_TASK_STACK_SIZE / sizeof(StackType_t),
            NULL,
            SYS_APP_TASK_PRIORITY,
            NULL);

#ifdef SYS_AOS_LOOP_ENABLE
    aos_loop_run();
#endif
    puts("------------------------------------------\r\n");
    puts("+++++++++Critical Exit From AOS LOOP entry++++++++++\r\n");
    puts("******************************************\r\n");
    vTaskDelete(NULL);
}

static void _dump_boot_info(void)
{
    char chip_feature[40];
    puts("Booting Ai-WB2 Modules...\r\n");
    puts("RISC-V Core Feature:");
    bl_chip_info(chip_feature);
    puts(chip_feature);
    puts("\r\n");
    puts("Build Version: ");
    puts(BL_SDK_VER); // @suppress("Symbol is not resolved")
    puts("\r\n");
    puts("Build Date: ");
    puts(__DATE__);
    puts("\r\n");
    puts("Build Time: ");
    puts(__TIME__);
    puts("\r\n");

}

static void system_early_init(void)
{
#ifdef SYS_BLOG_ENABLE
    blog_init();
#endif

    bl_irq_init();
    bl_sec_init();
    hal_boot2_init();

#ifdef SYS_DMA_ENABLE
    hosal_dma_init();
#endif

    /* To be added... */

    /* board config is set after system is init*/
    hal_board_cfg(0);

#ifdef CFG_COMPONENT_BUGKILLER_ENABLE
    /* add for bugkiller code compile，avoid compile-time optimization bugkiller_fun()*/
extern int bugkiller_enable __attribute__((weak));
extern int bugkiller_fun(void);

    if (&bugkiller_enable) {
        bugkiller_fun();
    }
#endif
}

#include "bl602_glb.h"

void log_port_reset(void)
{
    GLB_GPIO_Cfg_Type cfg;

    cfg.drive = 0;
    cfg.smtCtrl = 1;
    cfg.gpioPin = 16;
    cfg.gpioFun = GPIO0_FUN_UNUSED3; //all the function number of GPIO is the same, we use def from GPIO0 here
    cfg.gpioMode = GPIO_MODE_OUTPUT;
    cfg.pullType = GPIO_PULL_NONE;
    GLB_GPIO_Init(&cfg);

    cfg.gpioPin = 7;
    GLB_GPIO_Init(&cfg);
}

void bfl_main()
{
    TaskHandle_t aos_loop_proc_task;
    
    bl_sys_early_init();
 
#ifdef SYS_REBOOT_LOG_DISENABLE
    /*Init UART In the first place*/
    log_port_reset();
#endif


    hosal_uart_init_only_tx(&uart_stdio);
    puts("Starting bl602 now....\r\n");

    _dump_boot_info();

    vPortDefineHeapRegions(xHeapRegions);

    system_early_init();

    puts("[OS] Starting aos_loop_proc task...\r\n");
    xTaskCreate(aos_loop_proc, (char*)"event_loop", 1024, NULL, 15, &aos_loop_proc_task);

    puts("[OS] Starting OS Scheduler...\r\n");
    vTaskStartScheduler();
}
