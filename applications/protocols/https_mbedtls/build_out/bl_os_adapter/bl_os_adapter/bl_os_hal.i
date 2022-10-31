# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/bl_os_adapter//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
# 24 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.h" 1
# 28 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint.h" 1 3 4
# 11 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint.h" 3 4
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h" 1 3 4
# 34 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h" 3 4

# 34 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h" 3 4
typedef signed char int8_t;


typedef short int int16_t;


typedef long int int32_t;


typedef long long int int64_t;


typedef unsigned char uint8_t;


typedef short unsigned int uint16_t;


typedef long unsigned int uint32_t;


typedef long long unsigned int uint64_t;




typedef signed char int_least8_t;
typedef short int int_least16_t;
typedef long int int_least32_t;
typedef long long int int_least64_t;
typedef unsigned char uint_least8_t;
typedef short unsigned int uint_least16_t;
typedef long unsigned int uint_least32_t;
typedef long long unsigned int uint_least64_t;



typedef int int_fast8_t;
typedef int int_fast16_t;
typedef int int_fast32_t;
typedef long long int int_fast64_t;
typedef unsigned int uint_fast8_t;
typedef unsigned int uint_fast16_t;
typedef unsigned int uint_fast32_t;
typedef long long unsigned int uint_fast64_t;




typedef int intptr_t;


typedef unsigned int uintptr_t;




typedef long long int intmax_t;
typedef long long unsigned int uintmax_t;
# 12 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint.h" 2 3 4
# 29 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.h" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_type.h" 1
# 35 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_type.h"

# 35 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_type.h"
typedef void* BL_Timer_t;
typedef void* BL_TaskHandle_t;
typedef void* BL_Sem_t;
typedef void* BL_Mutex_t;
typedef void* BL_MessageQueue_t;
typedef void* BL_EventGroup_t;
typedef void* BL_TimeOut_t;
typedef uint32_t BL_TickType_t;
# 30 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.h" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_adapter.h" 1
# 25 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_adapter.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 143 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4

# 143 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 209 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 321 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4
typedef int wchar_t;
# 26 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_adapter.h" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdarg.h" 1 3 4
# 40 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 99 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdarg.h" 3 4
typedef __gnuc_va_list va_list;
# 27 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_adapter.h" 2
# 48 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_adapter.h"

# 48 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_adapter.h"
struct bl_ops_funcs
{
    int _version;
    void (*_printf)(const char *fmt, ...);
    void (*_puts)(const char *c);
    void (*_assert)(const char *file, int line, const char *func, const char *expr);
    int (*_init)(void);
    uint32_t (*_enter_critical)(void);
    void (*_exit_critical)(uint32_t level);
    int (*_msleep)(long ms);
    int (*_sleep)(unsigned int seconds);
    BL_EventGroup_t (*_event_group_create)(void);
    void (*_event_group_delete)(BL_EventGroup_t event);
    uint32_t (*_event_group_send)(BL_EventGroup_t event, uint32_t bits);
    uint32_t (*_event_group_wait)(BL_EventGroup_t event,
                                  uint32_t bits_to_wait_for,
                                  int clear_on_exit,
                                  int wait_for_all_bits,
                                  uint32_t block_time_tick);
    int (*_event_register)(int type, void *cb, void *arg);
    int (*_event_notify)(int evt, int val);
    int (*_task_create)(const char *name,
                        void *entry,
                        uint32_t stack_depth,
                        void *param,
                        uint32_t prio,
                        BL_TaskHandle_t task_handle);
    void (*_task_delete)(BL_TaskHandle_t task_handle);
    BL_TaskHandle_t (*_task_get_current_task)(void);
    BL_TaskHandle_t (*_task_notify_create)(void);
    void (*_task_notify)(BL_TaskHandle_t task_handle);
    void (*_task_wait)(BL_TaskHandle_t task_handle, uint32_t tick);
    void (*_lock_gaint)(void);
    void (*_unlock_gaint)(void);
    void (*_irq_attach)(int32_t n, void *f, void *arg);
    void (*_irq_enable)(int32_t n);
    void (*_irq_disable)(int32_t n);
    void *(*_workqueue_create)(void);
    int (*_workqueue_submit_hp)(void *work, void *woker, void *argv, long tick);
    int (*_workqueue_submit_lp)(void *work, void *woker, void *argv, long tick);
    BL_Timer_t (*_timer_create)(void *func, void *argv);
    int (*_timer_delete)(BL_Timer_t timerid, uint32_t tick);
    int (*_timer_start_once)(BL_Timer_t timerid, long t_sec, long t_nsec);
    int (*_timer_start_periodic)(BL_Timer_t timerid, long t_sec, long t_nsec);
    BL_Sem_t (*_sem_create)(uint32_t init);
    void (*_sem_delete)(BL_Sem_t semphr);
    int32_t (*_sem_take)(BL_Sem_t semphr, uint32_t tick);
    int32_t (*_sem_give)(BL_Sem_t semphr);
    BL_Mutex_t (*_mutex_create)(void);
    void (*_mutex_delete)(BL_Mutex_t mutex);
    int32_t (*_mutex_lock)(BL_Mutex_t mutex);
    int32_t (*_mutex_unlock)(BL_Mutex_t mutex);
    BL_MessageQueue_t (*_queue_create)(uint32_t queue_len, uint32_t item_size);
    void (*_queue_delete)(BL_MessageQueue_t queue);
    int (*_queue_send_wait)(BL_MessageQueue_t queue, void *item, uint32_t len, uint32_t ticks, int prio);
    int (*_queue_send)(BL_MessageQueue_t queue, void *item, uint32_t len);
    int (*_queue_recv)(BL_MessageQueue_t queue, void *item, uint32_t len, uint32_t tick);
    void *(*_malloc)(unsigned int size);
    void (*_free)(void *p);
    void *(*_zalloc)(unsigned int size);
    uint64_t (*_get_time_ms)(void);
    uint32_t (*_get_tick)(void);
    void (*_log_write)(uint32_t level, const char *tag, const char *file, int line, const char *format, ...);
    int (*_task_notify_isr)(BL_TaskHandle_t task_handle);
    void (*_yield_from_isr)(int xYield);
    unsigned int (*_ms_to_tick)(unsigned int ms);
    BL_TimeOut_t (*_set_timeout)(void);
    int (*_check_timeout)(BL_TimeOut_t xTimeOut, BL_TickType_t *xTicksToWait);
};

typedef struct bl_ops_funcs bl_ops_funcs_t;

extern bl_ops_funcs_t g_bl_ops_funcs;
# 31 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.h" 2
# 59 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.h"
void bl_os_printf(const char *__fmt, ...);

void bl_os_puts(const char *s);

void bl_os_assert_func(const char *file, int line, const char *func, const char *expr);

void *bl_os_malloc(unsigned int size);

void bl_os_free(void *ptr);

void *bl_os_zalloc(unsigned int size);

int bl_os_task_create(const char *name, void *entry, uint32_t stack_depth, void *param, uint32_t prio, BL_TaskHandle_t task_handle);

void bl_os_task_delete(BL_TaskHandle_t task_handle);

BL_TaskHandle_t bl_os_task_get_current_task(void);

BL_TaskHandle_t bl_os_task_notify_create(void);

void bl_os_task_notify(BL_TaskHandle_t task_handle);

void bl_os_task_wait(BL_TaskHandle_t task_handle, uint32_t tick);

BL_MessageQueue_t bl_os_mq_creat(uint32_t queue_len, uint32_t item_size);

void bl_os_mq_delete(BL_MessageQueue_t mq);

int bl_os_mq_send_wait(BL_MessageQueue_t queue, void *item, uint32_t len, uint32_t ticks, int prio);

int bl_os_mq_send(BL_MessageQueue_t queue, void *item, uint32_t len);

int bl_os_mq_recv(BL_MessageQueue_t queue, void *item, uint32_t len, uint32_t tick);

BL_Timer_t bl_os_timer_create(void *func, void *argv);

int bl_os_timer_delete(BL_Timer_t timerid, uint32_t tick);

int bl_os_timer_start_once(BL_Timer_t timerid, long t_sec, long t_nsec);

int bl_os_timer_start_periodic(BL_Timer_t timerid, long t_sec, long t_nsec);

void *bl_os_workqueue_create(void);

int bl_os_workqueue_submit_hpwork(void *work, void *worker, void *argv, long tick);

int bl_os_workqueue_submit_lpwork(void *work, void *worker, void *argv, long tick);

uint64_t bl_os_clock_gettime_ms(void);

void bl_os_irq_attach(int32_t n, void *f, void *arg);

void bl_os_irq_enable(int32_t n);

void bl_os_irq_disable(int32_t n);

BL_Mutex_t bl_os_mutex_create(void);

void bl_os_mutex_delete(BL_Mutex_t mutex_data);

int32_t bl_os_mutex_lock(BL_Mutex_t mutex_data);

int32_t bl_os_mutex_unlock(BL_Mutex_t mutex_data);

BL_Sem_t bl_os_sem_create(uint32_t init);

int32_t bl_os_sem_take(BL_Sem_t semphr, uint32_t ticks);

int32_t bl_os_sem_give(BL_Sem_t semphr);

void bl_os_sem_delete(BL_Sem_t semphr);

int bl_os_api_init(void);

BL_EventGroup_t bl_os_event_create(void);

void bl_os_event_delete(BL_EventGroup_t event);

uint32_t bl_os_event_send(BL_EventGroup_t event, uint32_t bits);

uint32_t bl_os_event_wait(BL_EventGroup_t event, uint32_t bits_to_wait_for, int clear_on_exit, int wait_for_all_bits, uint32_t block_time_tick);

int bl_os_event_register(int type, void *cb, void *arg);

int bl_os_event_notify(int evt, int val);

void bl_os_lock_gaint(void);

void bl_os_unlock_gaint(void);

int bl_os_msleep(long msec);

uint32_t bl_os_get_tick(void);

int bl_os_sleep(unsigned int seconds);

uint32_t bl_os_enter_critical(void);

void bl_os_exit_critical(uint32_t level);

void bl_os_log_write(uint32_t level, const char *tag, const char *file, int line, const char *format, ...);

int bl_os_task_notify_isr(BL_TaskHandle_t task_handle);

void bl_os_yield_from_isr(int xYield);

unsigned int bl_os_ms_to_tick(unsigned int ms);

BL_TimeOut_t bl_os_set_timeout(void);

int bl_os_check_timeout(BL_TimeOut_t xTimeOut, BL_TickType_t *xTicksToWait);
# 25 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c" 2

# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_log.h" 1
# 34 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_log.h"
typedef enum _bl_os_log_leve
{
    LOG_LEVEL_ALL = 0,
    LOG_LEVEL_DEBUG,
    LOG_LEVEL_INFO,
    LOG_LEVEL_WARN,
    LOG_LEVEL_ERROR,
    LOG_LEVEL_ASSERT,
    LOG_LEVEL_NEVER,
} bl_os_log_level_t;
# 27 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c" 2
# 57 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 1 3
# 29 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 1 3
# 10 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/newlib.h" 1 3
# 14 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/newlib.h" 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/_newlib_version.h" 1 3
# 15 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/newlib.h" 2 3
# 11 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 2 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/config.h" 1 3



# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/ieeefp.h" 1 3
# 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/config.h" 2 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/features.h" 1 3
# 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/config.h" 2 3
# 12 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 2 3
# 30 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3





# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/cdefs.h" 1 3
# 45 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/cdefs.h" 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 1 3
# 41 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3

# 41 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 46 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/cdefs.h" 2 3

# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 48 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/cdefs.h" 2 3
# 36 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 37 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3
# 60 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 1 3
# 13 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 1 3
# 14 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 2 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 15 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 2 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 1 3
# 24 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 350 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4
typedef unsigned int wint_t;
# 25 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 2 3


# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_types.h" 1 3
# 28 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 2 3


typedef long __blkcnt_t;



typedef long __blksize_t;



typedef __uint64_t __fsblkcnt_t;



typedef __uint32_t __fsfilcnt_t;



typedef long _off_t;





typedef int __pid_t;



typedef short __dev_t;



typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



typedef __uint32_t __id_t;







typedef unsigned short __ino_t;
# 90 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
typedef __uint32_t __mode_t;





__extension__ typedef long long _off64_t;





typedef _off_t __off_t;


typedef _off64_t __loff_t;


typedef long __key_t;







typedef long _fpos_t;
# 131 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
typedef unsigned int __size_t;
# 147 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
typedef signed int _ssize_t;
# 158 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
typedef _ssize_t __ssize_t;



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;




typedef void *_iconv_t;






typedef unsigned long __clock_t;






typedef __int_least64_t __time_t;





typedef unsigned long __clockid_t;


typedef unsigned long __timer_t;


typedef __uint8_t __sa_family_t;



typedef __uint32_t __socklen_t;


typedef int __nl_item;
typedef unsigned short __nlink_t;
typedef long __suseconds_t;
typedef unsigned long __useconds_t;







typedef __builtin_va_list __va_list;
# 16 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 2 3






typedef unsigned long __ULong;
# 34 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h" 1 3
# 11 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h" 3
typedef int _LOCK_T;
typedef int _LOCK_RECURSIVE_T;
# 35 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 2 3
typedef _LOCK_RECURSIVE_T _flock_t;







struct _reent;

struct __locale_t;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};
# 98 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 122 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 186 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  _ssize_t (*_read) (struct _reent *, void *,
        char *, int);
  _ssize_t (*_write) (struct _reent *, void *,
         const char *,
         int);
  _fpos_t (*_seek) (struct _reent *, void *, _fpos_t, int);
  int (*_close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  _off_t _offset;


  struct _reent *_data;



  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 292 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 324 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 613 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];


  int _unspecified_locale_info;
  struct __locale_t *_locale;

  int __sdidinit;

  void (*__cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {
          unsigned int _unused_rand;
          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
   int _h_errno;
        } _reent;



      struct
        {

          unsigned char * _nextf[30];
          unsigned int _nmalloc[30];
        } _unused;
    } _new;



  struct _atexit *_atexit;
  struct _atexit _atexit0;



  void (**(_sig_func))(int);




  struct _glue __sglue;

  __FILE __sf[3];

};
# 819 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
extern struct _reent *_impure_ptr ;
extern struct _reent *const _global_impure_ptr ;

void _reclaim_reent (struct _reent *);
# 61 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 1 3
# 28 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 3
typedef __uint8_t u_int8_t;


typedef __uint16_t u_int16_t;


typedef __uint32_t u_int32_t;


typedef __uint64_t u_int64_t;

typedef __intptr_t register_t;






# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h" 1 3
# 20 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h" 3
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 47 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3


# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/endian.h" 1 3





# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_endian.h" 1 3
# 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/endian.h" 2 3
# 50 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 1 3
# 14 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_sigset.h" 1 3
# 41 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_sigset.h" 3
typedef unsigned long __sigset_t;
# 15 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 2 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timeval.h" 1 3
# 37 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timeval.h" 3
typedef __suseconds_t suseconds_t;




typedef __int_least64_t time_t;
# 54 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timeval.h" 3
struct timeval {
 time_t tv_sec;
 suseconds_t tv_usec;
};
# 16 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 2 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/timespec.h" 1 3
# 38 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/timespec.h" 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timespec.h" 1 3
# 47 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timespec.h" 3
struct timespec {
 time_t tv_sec;
 long tv_nsec;
};
# 39 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/timespec.h" 2 3
# 58 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/timespec.h" 3
struct itimerspec {
 struct timespec it_interval;
 struct timespec it_value;
};
# 17 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 2 3



typedef __sigset_t sigset_t;
# 34 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 3
typedef unsigned long __fd_mask;

typedef __fd_mask fd_mask;
# 48 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 3
typedef struct fd_set {
 __fd_mask __fds_bits[(((64) + ((((int)sizeof(__fd_mask) * 8)) - 1)) / (((int)sizeof(__fd_mask) * 8)))];
} fd_set;
# 74 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 3


int select (int __n, fd_set *__readfds, fd_set *__writefds, fd_set *__exceptfds, struct timeval *__timeout)
                                                   ;

int pselect (int __n, fd_set *__readfds, fd_set *__writefds, fd_set *__exceptfds, const struct timespec *__timeout, const sigset_t *__set)

                           ;



# 51 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3




typedef __uint32_t in_addr_t;




typedef __uint16_t in_port_t;



typedef __uintptr_t u_register_t;






typedef unsigned char u_char;



typedef unsigned short u_short;



typedef unsigned int u_int;



typedef unsigned long u_long;







typedef unsigned short ushort;
typedef unsigned int uint;
typedef unsigned long ulong;



typedef __blkcnt_t blkcnt_t;




typedef __blksize_t blksize_t;




typedef unsigned long clock_t;
# 119 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 3
typedef long daddr_t;



typedef char * caddr_t;




typedef __fsblkcnt_t fsblkcnt_t;
typedef __fsfilcnt_t fsfilcnt_t;




typedef __id_t id_t;




typedef __ino_t ino_t;
# 157 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 3
typedef __off_t off_t;



typedef __dev_t dev_t;



typedef __uid_t uid_t;



typedef __gid_t gid_t;




typedef __pid_t pid_t;




typedef __key_t key_t;




typedef _ssize_t ssize_t;




typedef __mode_t mode_t;




typedef __nlink_t nlink_t;




typedef __clockid_t clockid_t;





typedef __timer_t timer_t;





typedef __useconds_t useconds_t;
# 220 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 3
typedef __int64_t sbintime_t;


# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 1 3
# 23 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/sched.h" 1 3
# 48 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/sched.h" 3
struct sched_param {
  int sched_priority;
# 61 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/sched.h" 3
};
# 24 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 2 3
# 32 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
typedef __uint32_t pthread_t;
# 61 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
typedef struct {
  int is_initialized;
  void *stackaddr;
  int stacksize;
  int contentionscope;
  int inheritsched;
  int schedpolicy;
  struct sched_param schedparam;





  int detachstate;
} pthread_attr_t;
# 154 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
typedef __uint32_t pthread_mutex_t;

typedef struct {
  int is_initialized;
# 168 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
  int recursive;
} pthread_mutexattr_t;






typedef __uint32_t pthread_cond_t;



typedef struct {
  int is_initialized;
  clock_t clock;



} pthread_condattr_t;



typedef __uint32_t pthread_key_t;

typedef struct {
  int is_initialized;
  int init_executed;
} pthread_once_t;
# 224 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/types.h" 1 3
# 225 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3
# 62 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3




typedef __FILE FILE;






typedef _fpos_t fpos_t;





# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/stdio.h" 1 3
# 80 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3
# 181 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
char * ctermid (char *);


char * cuserid (char *);

FILE * tmpfile (void);
char * tmpnam (char *);

char * tempnam (const char *, const char *) __attribute__((__malloc__)) __attribute__((__warn_unused_result__));

int fclose (FILE *);
int fflush (FILE *);
FILE * freopen (const char *restrict, const char *restrict, FILE *restrict);
void setbuf (FILE *restrict, char *restrict);
int setvbuf (FILE *restrict, char *restrict, int, size_t);
int fprintf (FILE *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int fscanf (FILE *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int printf (const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 1, 2)));
int scanf (const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 1, 2)));
int sscanf (const char *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int vfprintf (FILE *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int vprintf (const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 1, 0)));
int vsprintf (char *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int fgetc (FILE *);
char * fgets (char *restrict, int, FILE *restrict);
int fputc (int, FILE *);
int fputs (const char *restrict, FILE *restrict);
int getc (FILE *);
int getchar (void);
char * gets (char *);
int putc (int, FILE *);
int putchar (int);
int puts (const char *);
int ungetc (int, FILE *);
size_t fread (void *restrict, size_t _size, size_t _n, FILE *restrict);
size_t fwrite (const void *restrict , size_t _size, size_t _n, FILE *);



int fgetpos (FILE *restrict, fpos_t *restrict);

int fseek (FILE *, long, int);



int fsetpos (FILE *, const fpos_t *);

long ftell ( FILE *);
void rewind (FILE *);
void clearerr (FILE *);
int feof (FILE *);
int ferror (FILE *);
void perror (const char *);

FILE * fopen (const char *restrict _name, const char *restrict _type);
int sprintf (char *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int remove (const char *);
int rename (const char *, const char *);
# 257 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
int fseeko (FILE *, off_t, int);
off_t ftello (FILE *);



int fcloseall (void);



int snprintf (char *restrict, size_t, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int vsnprintf (char *restrict, size_t, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int vfscanf (FILE *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int vscanf (const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 1, 0)));
int vsscanf (const char *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));


int asprintf (char **restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int vasprintf (char **, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));


int asiprintf (char **, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
char * asniprintf (char *, size_t *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
char * asnprintf (char *restrict, size_t *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));

int diprintf (int, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));

int fiprintf (FILE *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int fiscanf (FILE *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int iprintf (const char *, ...)
               __attribute__ ((__format__ (__printf__, 1, 2)));
int iscanf (const char *, ...)
               __attribute__ ((__format__ (__scanf__, 1, 2)));
int siprintf (char *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int siscanf (const char *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int sniprintf (char *, size_t, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int vasiprintf (char **, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
char * vasniprintf (char *, size_t *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
char * vasnprintf (char *, size_t *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int vdiprintf (int, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int vfiprintf (FILE *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int vfiscanf (FILE *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int viprintf (const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 1, 0)));
int viscanf (const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 1, 0)));
int vsiprintf (char *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int vsiscanf (const char *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int vsniprintf (char *, size_t, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
# 339 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
FILE * fdopen (int, const char *);

int fileno (FILE *);


int pclose (FILE *);
FILE * popen (const char *, const char *);



void setbuffer (FILE *, char *, int);
int setlinebuf (FILE *);



int getw (FILE *);
int putw (int, FILE *);


int getc_unlocked (FILE *);
int getchar_unlocked (void);
void flockfile (FILE *);
int ftrylockfile (FILE *);
void funlockfile (FILE *);
int putc_unlocked (int, FILE *);
int putchar_unlocked (int);
# 374 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
int dprintf (int, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));

FILE * fmemopen (void *restrict, size_t, const char *restrict);


FILE * open_memstream (char **, size_t *);
int vdprintf (int, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));



int renameat (int, const char *, int, const char *);
# 396 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
int _asiprintf_r (struct _reent *, char **, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
char * _asniprintf_r (struct _reent *, char *, size_t *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
char * _asnprintf_r (struct _reent *, char *restrict, size_t *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
int _asprintf_r (struct _reent *, char **restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _diprintf_r (struct _reent *, int, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _dprintf_r (struct _reent *, int, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _fclose_r (struct _reent *, FILE *);
int _fcloseall_r (struct _reent *);
FILE * _fdopen_r (struct _reent *, int, const char *);
int _fflush_r (struct _reent *, FILE *);
int _fgetc_r (struct _reent *, FILE *);
int _fgetc_unlocked_r (struct _reent *, FILE *);
char * _fgets_r (struct _reent *, char *restrict, int, FILE *restrict);
char * _fgets_unlocked_r (struct _reent *, char *restrict, int, FILE *restrict);




int _fgetpos_r (struct _reent *, FILE *, fpos_t *);
int _fsetpos_r (struct _reent *, FILE *, const fpos_t *);

int _fiprintf_r (struct _reent *, FILE *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _fiscanf_r (struct _reent *, FILE *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
FILE * _fmemopen_r (struct _reent *, void *restrict, size_t, const char *restrict);
FILE * _fopen_r (struct _reent *, const char *restrict, const char *restrict);
FILE * _freopen_r (struct _reent *, const char *restrict, const char *restrict, FILE *restrict);
int _fprintf_r (struct _reent *, FILE *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _fpurge_r (struct _reent *, FILE *);
int _fputc_r (struct _reent *, int, FILE *);
int _fputc_unlocked_r (struct _reent *, int, FILE *);
int _fputs_r (struct _reent *, const char *restrict, FILE *restrict);
int _fputs_unlocked_r (struct _reent *, const char *restrict, FILE *restrict);
size_t _fread_r (struct _reent *, void *restrict, size_t _size, size_t _n, FILE *restrict);
size_t _fread_unlocked_r (struct _reent *, void *restrict, size_t _size, size_t _n, FILE *restrict);
int _fscanf_r (struct _reent *, FILE *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
int _fseek_r (struct _reent *, FILE *, long, int);
int _fseeko_r (struct _reent *, FILE *, _off_t, int);
long _ftell_r (struct _reent *, FILE *);
_off_t _ftello_r (struct _reent *, FILE *);
void _rewind_r (struct _reent *, FILE *);
size_t _fwrite_r (struct _reent *, const void *restrict, size_t _size, size_t _n, FILE *restrict);
size_t _fwrite_unlocked_r (struct _reent *, const void *restrict, size_t _size, size_t _n, FILE *restrict);
int _getc_r (struct _reent *, FILE *);
int _getc_unlocked_r (struct _reent *, FILE *);
int _getchar_r (struct _reent *);
int _getchar_unlocked_r (struct _reent *);
char * _gets_r (struct _reent *, char *);
int _iprintf_r (struct _reent *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int _iscanf_r (struct _reent *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
FILE * _open_memstream_r (struct _reent *, char **, size_t *);
void _perror_r (struct _reent *, const char *);
int _printf_r (struct _reent *, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int _putc_r (struct _reent *, int, FILE *);
int _putc_unlocked_r (struct _reent *, int, FILE *);
int _putchar_unlocked_r (struct _reent *, int);
int _putchar_r (struct _reent *, int);
int _puts_r (struct _reent *, const char *);
int _remove_r (struct _reent *, const char *);
int _rename_r (struct _reent *,
      const char *_old, const char *_new);
int _scanf_r (struct _reent *, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int _siprintf_r (struct _reent *, char *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _siscanf_r (struct _reent *, const char *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
int _sniprintf_r (struct _reent *, char *, size_t, const char *, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
int _snprintf_r (struct _reent *, char *restrict, size_t, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
int _sprintf_r (struct _reent *, char *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _sscanf_r (struct _reent *, const char *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
char * _tempnam_r (struct _reent *, const char *, const char *);
FILE * _tmpfile_r (struct _reent *);
char * _tmpnam_r (struct _reent *, char *);
int _ungetc_r (struct _reent *, int, FILE *);
int _vasiprintf_r (struct _reent *, char **, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
char * _vasniprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
char * _vasnprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
int _vasprintf_r (struct _reent *, char **, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vdiprintf_r (struct _reent *, int, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vdprintf_r (struct _reent *, int, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vfiprintf_r (struct _reent *, FILE *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vfiscanf_r (struct _reent *, FILE *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));
int _vfprintf_r (struct _reent *, FILE *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vfscanf_r (struct _reent *, FILE *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));
int _viprintf_r (struct _reent *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int _viscanf_r (struct _reent *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int _vprintf_r (struct _reent *, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int _vscanf_r (struct _reent *, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int _vsiprintf_r (struct _reent *, char *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vsiscanf_r (struct _reent *, const char *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));
int _vsniprintf_r (struct _reent *, char *, size_t, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
int _vsnprintf_r (struct _reent *, char *restrict, size_t, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
int _vsprintf_r (struct _reent *, char *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vsscanf_r (struct _reent *, const char *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));



int fpurge (FILE *);
ssize_t __getdelim (char **, size_t *, int, FILE *);
ssize_t __getline (char **, size_t *, FILE *);


void clearerr_unlocked (FILE *);
int feof_unlocked (FILE *);
int ferror_unlocked (FILE *);
int fileno_unlocked (FILE *);
int fflush_unlocked (FILE *);
int fgetc_unlocked (FILE *);
int fputc_unlocked (int, FILE *);
size_t fread_unlocked (void *restrict, size_t _size, size_t _n, FILE *restrict);
size_t fwrite_unlocked (const void *restrict , size_t _size, size_t _n, FILE *);



char * fgets_unlocked (char *restrict, int, FILE *restrict);
int fputs_unlocked (const char *restrict, FILE *restrict);
# 577 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
int __srget_r (struct _reent *, FILE *);
int __swbuf_r (struct _reent *, int, FILE *);
# 601 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
FILE *funopen (const void *__cookie,
  int (*__readfn)(void *__cookie, char *__buf,
    int __n),
  int (*__writefn)(void *__cookie, const char *__buf,
     int __n),
  fpos_t (*__seekfn)(void *__cookie, fpos_t __off, int __whence),
  int (*__closefn)(void *__cookie));
FILE *_funopen_r (struct _reent *, const void *__cookie,
  int (*__readfn)(void *__cookie, char *__buf,
    int __n),
  int (*__writefn)(void *__cookie, const char *__buf,
     int __n),
  fpos_t (*__seekfn)(void *__cookie, fpos_t __off, int __whence),
  int (*__closefn)(void *__cookie));
# 624 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
typedef ssize_t cookie_read_function_t(void *__cookie, char *__buf, size_t __n);
typedef ssize_t cookie_write_function_t(void *__cookie, const char *__buf,
     size_t __n);




typedef int cookie_seek_function_t(void *__cookie, off_t *__off, int __whence);

typedef int cookie_close_function_t(void *__cookie);
typedef struct
{


  cookie_read_function_t *read;
  cookie_write_function_t *write;
  cookie_seek_function_t *seek;
  cookie_close_function_t *close;
} cookie_io_functions_t;
FILE *fopencookie (void *__cookie,
  const char *__mode, cookie_io_functions_t __functions);
FILE *_fopencookie_r (struct _reent *, void *__cookie,
  const char *__mode, cookie_io_functions_t __functions);
# 687 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
static __inline__ int __sputc_r(struct _reent *_ptr, int _c, FILE *_p) {




 if (--_p->_w >= 0 || (_p->_w >= _p->_lbfsize && (char)_c != '\n'))
  return (*_p->_p++ = _c);
 else
  return (__swbuf_r(_ptr, _c, _p));
}
# 741 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
static __inline int
_getchar_unlocked(void)
{
 struct _reent *_ptr;

 _ptr = _impure_ptr;
 return ((--(((_ptr)->_stdin))->_r < 0 ? __srget_r(_ptr, ((_ptr)->_stdin)) : (int)(*(((_ptr)->_stdin))->_p++)));
}

static __inline int
_putchar_unlocked(int _c)
{
 struct _reent *_ptr;

 _ptr = _impure_ptr;
 return (__sputc_r(_ptr, _c, ((_ptr)->_stdout)));
}
# 797 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3

# 58 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c" 2


# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h" 1
# 34 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 35 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h" 2
# 56 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOSConfig.h" 1
# 74 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOSConfig.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/platform.h" 1
# 127 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/platform.h"

# 127 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/platform.h"
unsigned long get_cpu_freq(void);
unsigned long get_timer_freq(void);
uint64_t get_timer_value(void);
# 75 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOSConfig.h" 2
# 57 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h" 2


# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/projdefs.h" 1
# 35 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/projdefs.h"
typedef void (*TaskFunction_t)( void * );
# 60 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h" 2


# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h" 1
# 45 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/deprecated_definitions.h" 1
# 46 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h" 2






# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h" 1
# 62 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
typedef uint32_t StackType_t;
typedef int32_t BaseType_t;
typedef uint32_t UBaseType_t;
typedef uint32_t TickType_t;
# 84 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
extern void vTaskSwitchContext( void );
extern void vEnvironmentCall( uint32_t exception );
# 97 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
extern void vTaskEnterCritical( void );
extern void vTaskExitCritical( void );
# 152 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
BaseType_t xPortIsInsideInterrupt( void );
# 53 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h" 2
# 99 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/mpu_wrappers.h" 1
# 100 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h" 2
# 117 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h"
  StackType_t *pxPortInitialiseStack( StackType_t *pxTopOfStack, TaskFunction_t pxCode, void *pvParameters ) ;




typedef struct HeapRegion
{
 uint8_t *pucStartAddress;
 size_t xSizeInBytes;
} HeapRegion_t;
# 139 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h"
void vPortDefineHeapRegions( const HeapRegion_t * const pxHeapRegions ) ;





void *pvPortMalloc( size_t xSize ) ;
void *pvPortCalloc(size_t numElements, size_t sizeOfElement); ;
void *pvPortRealloc(void *pv, size_t xSize) ;
void vPortFree( void *pv ) ;
void vPortInitialiseBlocks( void ) ;
size_t xPortGetFreeHeapSize( void ) ;
size_t xPortGetMinimumEverFreeHeapSize( void ) ;





BaseType_t xPortStartScheduler( void ) ;






void vPortEndScheduler( void ) ;
# 63 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h" 2
# 1044 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
struct xSTATIC_LIST_ITEM
{



 TickType_t xDummy2;
 void *pvDummy3[ 4 ];



};
typedef struct xSTATIC_LIST_ITEM StaticListItem_t;


struct xSTATIC_MINI_LIST_ITEM
{



 TickType_t xDummy2;
 void *pvDummy3[ 2 ];
};
typedef struct xSTATIC_MINI_LIST_ITEM StaticMiniListItem_t;


typedef struct xSTATIC_LIST
{



 UBaseType_t uxDummy2;
 void *pvDummy3;
 StaticMiniListItem_t xDummy4;



} StaticList_t;
# 1095 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
typedef struct xSTATIC_TCB
{
 void *pxDummy1;



 StaticListItem_t xDummy3[ 2 ];
 UBaseType_t uxDummy5;
 void *pxDummy6;
 uint8_t ucDummy7[ ( 16 ) ];




  UBaseType_t uxDummy9;


  UBaseType_t uxDummy10[ 2 ];


  UBaseType_t uxDummy12[ 2 ];
# 1130 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
  uint32_t ulDummy18;
  uint8_t ucDummy19;


  uint8_t uxDummy20;
# 1143 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
} StaticTask_t;
# 1159 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
typedef struct xSTATIC_QUEUE
{
 void *pvDummy1[ 3 ];

 union
 {
  void *pvDummy2;
  UBaseType_t uxDummy2;
 } u;

 StaticList_t xDummy3[ 2 ];
 UBaseType_t uxDummy4[ 3 ];
 uint8_t ucDummy5[ 2 ];


  uint8_t ucDummy6;







  UBaseType_t uxDummy8;
  uint8_t ucDummy9;


} StaticQueue_t;
typedef StaticQueue_t StaticSemaphore_t;
# 1203 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
typedef struct xSTATIC_EVENT_GROUP
{
 TickType_t xDummy1;
 StaticList_t xDummy2;


  UBaseType_t uxDummy3;



   uint8_t ucDummy4;


} StaticEventGroup_t;
# 1232 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
typedef struct xSTATIC_TIMER
{
 void *pvDummy1;
 StaticListItem_t xDummy2;
 TickType_t xDummy3;
 void *pvDummy5;
 TaskFunction_t pvDummy6;

  UBaseType_t uxDummy7;

 uint8_t ucDummy8;

} StaticTimer_t;
# 1260 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
typedef struct xSTATIC_STREAM_BUFFER
{
 size_t uxDummy1[ 4 ];
 void * pvDummy2[ 3 ];
 uint8_t ucDummy3;

  UBaseType_t uxDummy4;

} StaticStreamBuffer_t;


typedef StaticStreamBuffer_t StaticMessageBuffer_t;
# 61 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/semphr.h" 1
# 35 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/semphr.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h" 1
# 40 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h" 1
# 36 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/list.h" 1
# 139 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/list.h"
struct xLIST;
struct xLIST_ITEM
{

 TickType_t xItemValue;
 struct xLIST_ITEM * pxNext;
 struct xLIST_ITEM * pxPrevious;
 void * pvOwner;
 struct xLIST * pvContainer;

};
typedef struct xLIST_ITEM ListItem_t;

struct xMINI_LIST_ITEM
{

 TickType_t xItemValue;
 struct xLIST_ITEM * pxNext;
 struct xLIST_ITEM * pxPrevious;
};
typedef struct xMINI_LIST_ITEM MiniListItem_t;




typedef struct xLIST
{

 volatile UBaseType_t uxNumberOfItems;
 ListItem_t * pxIndex;
 MiniListItem_t xListEnd;

} List_t;
# 345 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/list.h"
void vListInitialise( List_t * const pxList ) ;
# 356 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/list.h"
void vListInitialiseItem( ListItem_t * const pxItem ) ;
# 369 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/list.h"
void vListInsert( List_t * const pxList, ListItem_t * const pxNewListItem ) ;
# 390 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/list.h"
void vListInsertEnd( List_t * const pxList, ListItem_t * const pxNewListItem ) ;
# 405 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/list.h"
UBaseType_t uxListRemove( ListItem_t * const pxItemToRemove ) ;
# 37 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h" 2
# 69 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
struct tskTaskControlBlock;
typedef struct tskTaskControlBlock* TaskHandle_t;





typedef BaseType_t (*TaskHookFunction_t)( void * );


typedef enum
{
 eRunning = 0,
 eReady,
 eBlocked,
 eSuspended,
 eDeleted,
 eInvalid
} eTaskState;


typedef enum
{
 eNoAction = 0,
 eSetBits,
 eIncrement,
 eSetValueWithOverwrite,
 eSetValueWithoutOverwrite
} eNotifyAction;




typedef struct xTIME_OUT
{
 BaseType_t xOverflowCount;
 TickType_t xTimeOnEntering;
} TimeOut_t;




typedef struct xMEMORY_REGION
{
 void *pvBaseAddress;
 uint32_t ulLengthInBytes;
 uint32_t ulParameters;
} MemoryRegion_t;




typedef struct xTASK_PARAMETERS
{
 TaskFunction_t pvTaskCode;
 const char * const pcName;
 uint16_t usStackDepth;
 void *pvParameters;
 UBaseType_t uxPriority;
 StackType_t *puxStackBuffer;
 MemoryRegion_t xRegions[ 1 ];



} TaskParameters_t;



typedef struct xTASK_STATUS
{
 TaskHandle_t xHandle;
 const char *pcTaskName;
 UBaseType_t xTaskNumber;
 eTaskState eCurrentState;
 UBaseType_t uxCurrentPriority;
 UBaseType_t uxBasePriority;
 uint32_t ulRunTimeCounter;
 StackType_t *pxStackBase;
 uint16_t usStackHighWaterMark;
} TaskStatus_t;


typedef enum
{
 eAbortSleep = 0,
 eStandardSleep,
 eNoTasksWaitingTimeout
} eSleepModeStatus;
# 330 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
 BaseType_t xTaskCreate( TaskFunction_t pxTaskCode,
       const char * const pcName,
       const uint16_t usStackDepth,
       void * const pvParameters,
       UBaseType_t uxPriority,
       TaskHandle_t * const pxCreatedTask ) ;
# 446 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
 TaskHandle_t xTaskCreateStatic( TaskFunction_t pxTaskCode,
         const char * const pcName,
         const uint32_t ulStackDepth,
         void * const pvParameters,
         UBaseType_t uxPriority,
         StackType_t * const puxStackBuffer,
         StaticTask_t * const pxTaskBuffer ) ;
# 665 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskAllocateMPURegions( TaskHandle_t xTask, const MemoryRegion_t * const pxRegions ) ;
# 706 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskDelete( TaskHandle_t xTaskToDelete ) ;
# 758 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskDelay( const TickType_t xTicksToDelay ) ;
# 817 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskDelayUntil( TickType_t * const pxPreviousWakeTime, const TickType_t xTimeIncrement ) ;
# 842 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskAbortDelay( TaskHandle_t xTask ) ;
# 889 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
UBaseType_t uxTaskPriorityGet( const TaskHandle_t xTask ) ;







UBaseType_t uxTaskPriorityGetFromISR( const TaskHandle_t xTask ) ;
# 915 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
eTaskState eTaskGetState( TaskHandle_t xTask ) ;
# 971 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskGetInfo( TaskHandle_t xTask, TaskStatus_t *pxTaskStatus, BaseType_t xGetFreeStackSpace, eTaskState eState ) ;
# 1013 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskPrioritySet( TaskHandle_t xTask, UBaseType_t uxNewPriority ) ;
# 1064 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskSuspend( TaskHandle_t xTaskToSuspend ) ;
# 1113 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskResume( TaskHandle_t xTaskToResume ) ;
# 1142 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskResumeFromISR( TaskHandle_t xTaskToResume ) ;
# 1175 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskStartScheduler( void ) ;
# 1231 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskEndScheduler( void ) ;
# 1282 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskSuspendAll( void ) ;
# 1336 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskResumeAll( void ) ;
# 1351 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
TickType_t xTaskGetTickCount( void ) ;
BaseType_t xTaskGetTickCount2( TickType_t *ticks, BaseType_t *overflow ) ;
# 1368 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
TickType_t xTaskGetTickCountFromISR( void ) ;
# 1382 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
UBaseType_t uxTaskGetNumberOfTasks( void ) ;
# 1395 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
char *pcTaskGetName( TaskHandle_t xTaskToQuery ) ;
# 1411 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
TaskHandle_t xTaskGetHandle( const char *pcNameToQuery ) ;
# 1438 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
UBaseType_t uxTaskGetStackHighWaterMark( TaskHandle_t xTask ) ;
# 1465 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
uint16_t uxTaskGetStackHighWaterMark2( TaskHandle_t xTask ) ;
# 1529 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskCallApplicationTaskHook( TaskHandle_t xTask, void *pvParameter ) ;
# 1538 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
TaskHandle_t xTaskGetIdleTaskHandle( void ) ;
# 1637 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
UBaseType_t uxTaskGetSystemState( TaskStatus_t * const pxTaskStatusArray, const UBaseType_t uxArraySize, uint32_t * const pulTotalRunTime ) ;
UBaseType_t xAddTasksToAllList( void ) ;
List_t * pxTaskGetAllList( void ) ;
# 1686 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskList( char * pcWriteBuffer ) ;
# 1740 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskGetRunTimeStats( char *pcWriteBuffer ) ;
# 1770 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
TickType_t xTaskGetIdleRunTimeCounter( void ) ;
# 1851 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskGenericNotify( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, uint32_t *pulPreviousNotificationValue ) ;
# 1942 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskGenericNotifyFromISR( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, uint32_t *pulPreviousNotificationValue, BaseType_t *pxHigherPriorityTaskWoken ) ;
# 2019 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskNotifyWait( uint32_t ulBitsToClearOnEntry, uint32_t ulBitsToClearOnExit, uint32_t *pulNotificationValue, TickType_t xTicksToWait ) ;
# 2120 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskNotifyGiveFromISR( TaskHandle_t xTaskToNotify, BaseType_t *pxHigherPriorityTaskWoken ) ;
# 2189 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
uint32_t ulTaskNotifyTake( BaseType_t xClearCountOnExit, TickType_t xTicksToWait ) ;
# 2205 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskNotifyStateClear( TaskHandle_t xTask );
# 2226 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskIncrementTick( void ) ;
# 2259 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskPlaceOnEventList( List_t * const pxEventList, const TickType_t xTicksToWait ) ;
void vTaskPlaceOnUnorderedEventList( List_t * pxEventList, const TickType_t xItemValue, const TickType_t xTicksToWait ) ;
# 2273 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskPlaceOnEventListRestricted( List_t * const pxEventList, TickType_t xTicksToWait, const BaseType_t xWaitIndefinitely ) ;
# 2299 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskRemoveFromEventList( const List_t * const pxEventList ) ;
void vTaskRemoveFromUnorderedEventList( ListItem_t * pxEventListItem, const TickType_t xItemValue ) ;
# 2310 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
 void vTaskSwitchContext( void ) ;





TickType_t uxTaskResetEventItemValue( void ) ;




TaskHandle_t xTaskGetCurrentTaskHandle( void ) ;




void vTaskSetTimeOutState( TimeOut_t * const pxTimeOut ) ;





BaseType_t xTaskCheckForTimeOut( TimeOut_t * const pxTimeOut, TickType_t * const pxTicksToWait ) ;





void vTaskMissedYield( void ) ;





BaseType_t xTaskGetSchedulerState( void ) ;





BaseType_t xTaskPriorityInherit( TaskHandle_t const pxMutexHolder ) ;





BaseType_t xTaskPriorityDisinherit( TaskHandle_t const pxMutexHolder ) ;
# 2366 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskPriorityDisinheritAfterTimeout( TaskHandle_t const pxMutexHolder, UBaseType_t uxHighestPriorityWaitingTask ) ;




UBaseType_t uxTaskGetTaskNumber( TaskHandle_t xTask ) ;





void vTaskSetTaskNumber( TaskHandle_t xTask, const UBaseType_t uxHandle ) ;
# 2387 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskStepTick( const TickType_t xTicksToJump ) ;
void vTaskStepTickSafe( const TickType_t xTicksToJump ) ;
# 2404 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
eSleepModeStatus eTaskConfirmSleepModeStatus( void ) ;





TaskHandle_t pvTaskIncrementMutexHeldCount( void ) ;





void vTaskInternalSetTimeOutState( TimeOut_t * const pxTimeOut ) ;
# 41 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h" 2






struct QueueDefinition;
typedef struct QueueDefinition * QueueHandle_t;






typedef struct QueueDefinition * QueueSetHandle_t;






typedef struct QueueDefinition * QueueSetMemberHandle_t;
# 650 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
BaseType_t xQueueGenericSend( QueueHandle_t xQueue, const void * const pvItemToQueue, TickType_t xTicksToWait, const BaseType_t xCopyPosition ) ;
# 744 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
BaseType_t xQueuePeek( QueueHandle_t xQueue, void * const pvBuffer, TickType_t xTicksToWait ) ;
# 777 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
BaseType_t xQueuePeekFromISR( QueueHandle_t xQueue, void * const pvBuffer ) ;
# 868 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
BaseType_t xQueueReceive( QueueHandle_t xQueue, void * const pvBuffer, TickType_t xTicksToWait ) ;
# 883 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
UBaseType_t uxQueueMessagesWaiting( const QueueHandle_t xQueue ) ;
# 900 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
UBaseType_t uxQueueSpacesAvailable( const QueueHandle_t xQueue ) ;
# 914 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
void vQueueDelete( QueueHandle_t xQueue ) ;
# 1295 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
BaseType_t xQueueGenericSendFromISR( QueueHandle_t xQueue, const void * const pvItemToQueue, BaseType_t * const pxHigherPriorityTaskWoken, const BaseType_t xCopyPosition ) ;
BaseType_t xQueueGiveFromISR( QueueHandle_t xQueue, BaseType_t * const pxHigherPriorityTaskWoken ) ;
# 1385 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
BaseType_t xQueueReceiveFromISR( QueueHandle_t xQueue, void * const pvBuffer, BaseType_t * const pxHigherPriorityTaskWoken ) ;





BaseType_t xQueueIsQueueEmptyFromISR( const QueueHandle_t xQueue ) ;
BaseType_t xQueueIsQueueFullFromISR( const QueueHandle_t xQueue ) ;
UBaseType_t uxQueueMessagesWaitingFromISR( const QueueHandle_t xQueue ) ;
# 1404 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
BaseType_t xQueueCRSendFromISR( QueueHandle_t xQueue, const void *pvItemToQueue, BaseType_t xCoRoutinePreviouslyWoken );
BaseType_t xQueueCRReceiveFromISR( QueueHandle_t xQueue, void *pvBuffer, BaseType_t *pxTaskWoken );
BaseType_t xQueueCRSend( QueueHandle_t xQueue, const void *pvItemToQueue, TickType_t xTicksToWait );
BaseType_t xQueueCRReceive( QueueHandle_t xQueue, void *pvBuffer, TickType_t xTicksToWait );






QueueHandle_t xQueueCreateMutex( const uint8_t ucQueueType ) ;
QueueHandle_t xQueueCreateMutexStatic( const uint8_t ucQueueType, StaticQueue_t *pxStaticQueue ) ;
QueueHandle_t xQueueCreateCountingSemaphore( const UBaseType_t uxMaxCount, const UBaseType_t uxInitialCount ) ;
QueueHandle_t xQueueCreateCountingSemaphoreStatic( const UBaseType_t uxMaxCount, const UBaseType_t uxInitialCount, StaticQueue_t *pxStaticQueue ) ;
BaseType_t xQueueSemaphoreTake( QueueHandle_t xQueue, TickType_t xTicksToWait ) ;
TaskHandle_t xQueueGetMutexHolder( QueueHandle_t xSemaphore ) ;
TaskHandle_t xQueueGetMutexHolderFromISR( QueueHandle_t xSemaphore ) ;





BaseType_t xQueueTakeMutexRecursive( QueueHandle_t xMutex, TickType_t xTicksToWait ) ;
BaseType_t xQueueGiveMutexRecursive( QueueHandle_t xMutex ) ;
# 1458 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
 void vQueueAddToRegistry( QueueHandle_t xQueue, const char *pcQueueName ) ;
# 1472 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
 void vQueueUnregisterQueue( QueueHandle_t xQueue ) ;
# 1487 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
 const char *pcQueueGetName( QueueHandle_t xQueue ) ;
# 1496 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
 QueueHandle_t xQueueGenericCreate( const UBaseType_t uxQueueLength, const UBaseType_t uxItemSize, const uint8_t ucQueueType ) ;
# 1505 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
 QueueHandle_t xQueueGenericCreateStatic( const UBaseType_t uxQueueLength, const UBaseType_t uxItemSize, uint8_t *pucQueueStorage, StaticQueue_t *pxStaticQueue, const uint8_t ucQueueType ) ;
# 1556 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
QueueSetHandle_t xQueueCreateSet( const UBaseType_t uxEventQueueLength ) ;
# 1580 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
BaseType_t xQueueAddToSet( QueueSetMemberHandle_t xQueueOrSemaphore, QueueSetHandle_t xQueueSet ) ;
# 1599 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
BaseType_t xQueueRemoveFromSet( QueueSetMemberHandle_t xQueueOrSemaphore, QueueSetHandle_t xQueueSet ) ;
# 1635 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
QueueSetMemberHandle_t xQueueSelectFromSet( QueueSetHandle_t xQueueSet, const TickType_t xTicksToWait ) ;




QueueSetMemberHandle_t xQueueSelectFromSetFromISR( QueueSetHandle_t xQueueSet ) ;


void vQueueWaitForMessageRestricted( QueueHandle_t xQueue, TickType_t xTicksToWait, const BaseType_t xWaitIndefinitely ) ;
BaseType_t xQueueGenericReset( QueueHandle_t xQueue, BaseType_t xNewQueue ) ;
void vQueueSetQueueNumber( QueueHandle_t xQueue, UBaseType_t uxQueueNumber ) ;
UBaseType_t uxQueueGetQueueNumber( QueueHandle_t xQueue ) ;
uint8_t ucQueueGetQueueType( QueueHandle_t xQueue ) ;
# 36 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/semphr.h" 2

typedef QueueHandle_t SemaphoreHandle_t;
# 62 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h" 1
# 63 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/event_groups.h" 1
# 36 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/event_groups.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h" 1
# 76 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h"
struct tmrTimerControl;
typedef struct tmrTimerControl * TimerHandle_t;




typedef void (*TimerCallbackFunction_t)( TimerHandle_t xTimer );





typedef void (*PendedFunction_t)( void *, uint32_t );
# 228 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h"
 TimerHandle_t xTimerCreate( const char * const pcTimerName,
        const TickType_t xTimerPeriodInTicks,
        const UBaseType_t uxAutoReload,
        void * const pvTimerID,
        TimerCallbackFunction_t pxCallbackFunction ) ;
# 358 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h"
 TimerHandle_t xTimerCreateStatic( const char * const pcTimerName,
          const TickType_t xTimerPeriodInTicks,
          const UBaseType_t uxAutoReload,
          void * const pvTimerID,
          TimerCallbackFunction_t pxCallbackFunction,
          StaticTimer_t *pxTimerBuffer ) ;
# 386 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h"
void *pvTimerGetTimerID( const TimerHandle_t xTimer ) ;
# 407 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h"
void vTimerSetTimerID( TimerHandle_t xTimer, void *pvNewID ) ;
# 444 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h"
BaseType_t xTimerIsTimerActive( TimerHandle_t xTimer ) ;







TaskHandle_t xTimerGetTimerDaemonTaskHandle( void ) ;
# 1187 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h"
BaseType_t xTimerPendFunctionCallFromISR( PendedFunction_t xFunctionToPend, void *pvParameter1, uint32_t ulParameter2, BaseType_t *pxHigherPriorityTaskWoken ) ;
# 1221 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h"
BaseType_t xTimerPendFunctionCall( PendedFunction_t xFunctionToPend, void *pvParameter1, uint32_t ulParameter2, TickType_t xTicksToWait ) ;
# 1232 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h"
const char * pcTimerGetName( TimerHandle_t xTimer ) ;
# 1249 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h"
void vTimerSetReloadMode( TimerHandle_t xTimer, const UBaseType_t uxAutoReload ) ;
# 1260 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h"
TickType_t xTimerGetPeriod( TimerHandle_t xTimer ) ;
# 1275 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h"
TickType_t xTimerGetExpiryTime( TimerHandle_t xTimer ) ;





BaseType_t xTimerCreateTimerTask( void ) ;
BaseType_t xTimerGenericCommand( TimerHandle_t xTimer, const BaseType_t xCommandID, const TickType_t xOptionalValue, BaseType_t * const pxHigherPriorityTaskWoken, const TickType_t xTicksToWait ) ;


 void vTimerSetTimerNumber( TimerHandle_t xTimer, UBaseType_t uxTimerNumber ) ;
 UBaseType_t uxTimerGetTimerNumber( TimerHandle_t xTimer ) ;
# 37 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/event_groups.h" 2
# 81 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/event_groups.h"
struct EventGroupDef_t;
typedef struct EventGroupDef_t * EventGroupHandle_t;
# 92 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/event_groups.h"
typedef TickType_t EventBits_t;
# 147 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/event_groups.h"
 EventGroupHandle_t xEventGroupCreate( void ) ;
# 200 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/event_groups.h"
 EventGroupHandle_t xEventGroupCreateStatic( StaticEventGroup_t *pxEventGroupBuffer ) ;
# 295 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/event_groups.h"
EventBits_t xEventGroupWaitBits( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToWaitFor, const BaseType_t xClearOnExit, const BaseType_t xWaitForAllBits, TickType_t xTicksToWait ) ;
# 352 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/event_groups.h"
EventBits_t xEventGroupClearBits( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToClear ) ;
# 408 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/event_groups.h"
 BaseType_t xEventGroupClearBitsFromISR( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToClear ) ;
# 485 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/event_groups.h"
EventBits_t xEventGroupSetBits( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToSet ) ;
# 560 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/event_groups.h"
 BaseType_t xEventGroupSetBitsFromISR( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToSet, BaseType_t *pxHigherPriorityTaskWoken ) ;
# 689 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/event_groups.h"
EventBits_t xEventGroupSync( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToSet, const EventBits_t uxBitsToWaitFor, TickType_t xTicksToWait ) ;
# 725 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/event_groups.h"
EventBits_t xEventGroupGetBitsFromISR( EventGroupHandle_t xEventGroup ) ;
# 739 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/event_groups.h"
void vEventGroupDelete( EventGroupHandle_t xEventGroup ) ;


void vEventGroupSetBitsCallback( void *pvEventGroup, const uint32_t ulBitsToSet ) ;
void vEventGroupClearBitsCallback( void *pvEventGroup, const uint32_t ulBitsToClear ) ;



 UBaseType_t uxEventGroupGetNumber( void* xEventGroup ) ;
 void vEventGroupSetNumber( void* xEventGroup, UBaseType_t uxEventGroupNumber ) ;
# 64 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/message_buffer.h" 1
# 66 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/message_buffer.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/stream_buffer.h" 1
# 64 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/stream_buffer.h"
struct StreamBufferDef_t;
typedef struct StreamBufferDef_t * StreamBufferHandle_t;
# 308 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/stream_buffer.h"
size_t xStreamBufferSend( StreamBufferHandle_t xStreamBuffer,
        const void *pvTxData,
        size_t xDataLengthBytes,
        TickType_t xTicksToWait ) ;
# 409 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/stream_buffer.h"
size_t xStreamBufferSendFromISR( StreamBufferHandle_t xStreamBuffer,
         const void *pvTxData,
         size_t xDataLengthBytes,
         BaseType_t * const pxHigherPriorityTaskWoken ) ;
# 498 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/stream_buffer.h"
size_t xStreamBufferReceive( StreamBufferHandle_t xStreamBuffer,
        void *pvRxData,
        size_t xBufferLengthBytes,
        TickType_t xTicksToWait ) ;
# 584 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/stream_buffer.h"
size_t xStreamBufferReceiveFromISR( StreamBufferHandle_t xStreamBuffer,
         void *pvRxData,
         size_t xBufferLengthBytes,
         BaseType_t * const pxHigherPriorityTaskWoken ) ;
# 609 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/stream_buffer.h"
void vStreamBufferDelete( StreamBufferHandle_t xStreamBuffer ) ;
# 629 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/stream_buffer.h"
BaseType_t xStreamBufferIsFull( StreamBufferHandle_t xStreamBuffer ) ;
# 649 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/stream_buffer.h"
BaseType_t xStreamBufferIsEmpty( StreamBufferHandle_t xStreamBuffer ) ;
# 672 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/stream_buffer.h"
BaseType_t xStreamBufferReset( StreamBufferHandle_t xStreamBuffer ) ;
# 693 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/stream_buffer.h"
size_t xStreamBufferSpacesAvailable( StreamBufferHandle_t xStreamBuffer ) ;
# 714 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/stream_buffer.h"
size_t xStreamBufferBytesAvailable( StreamBufferHandle_t xStreamBuffer ) ;
# 751 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/stream_buffer.h"
BaseType_t xStreamBufferSetTriggerLevel( StreamBufferHandle_t xStreamBuffer, size_t xTriggerLevel ) ;
# 790 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/stream_buffer.h"
BaseType_t xStreamBufferSendCompletedFromISR( StreamBufferHandle_t xStreamBuffer, BaseType_t *pxHigherPriorityTaskWoken ) ;
# 830 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/stream_buffer.h"
BaseType_t xStreamBufferReceiveCompletedFromISR( StreamBufferHandle_t xStreamBuffer, BaseType_t *pxHigherPriorityTaskWoken ) ;


StreamBufferHandle_t xStreamBufferGenericCreate( size_t xBufferSizeBytes,
             size_t xTriggerLevelBytes,
             BaseType_t xIsMessageBuffer ) ;

StreamBufferHandle_t xStreamBufferGenericCreateStatic( size_t xBufferSizeBytes,
                size_t xTriggerLevelBytes,
                BaseType_t xIsMessageBuffer,
                uint8_t * const pucStreamBufferStorageArea,
                StaticStreamBuffer_t * const pxStaticStreamBuffer ) ;

size_t xStreamBufferNextMessageLengthBytes( StreamBufferHandle_t xStreamBuffer ) ;


 void vStreamBufferSetStreamBufferNumber( StreamBufferHandle_t xStreamBuffer, UBaseType_t uxStreamBufferNumber ) ;
 UBaseType_t uxStreamBufferGetStreamBufferNumber( StreamBufferHandle_t xStreamBuffer ) ;
 uint8_t ucStreamBufferGetStreamBufferType( StreamBufferHandle_t xStreamBuffer ) ;
# 67 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/message_buffer.h" 2
# 78 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/message_buffer.h"
typedef void * MessageBufferHandle_t;
# 65 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h" 1
# 66 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog.h" 1
# 35 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdbool.h" 1 3 4
# 36 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog.h" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 1 3
# 17 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 18 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3


# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_locale.h" 1 3
# 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_locale.h" 3

# 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_locale.h" 3
struct __locale_t;
typedef struct __locale_t *locale_t;
# 21 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3



# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/strings.h" 1 3
# 44 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/strings.h" 3


int bcmp(const void *, const void *, size_t) __attribute__((__pure__));
void bcopy(const void *, void *, size_t);
void bzero(void *, size_t);


void explicit_bzero(void *, size_t);


int ffs(int) __attribute__((__const__));


int ffsl(long) __attribute__((__const__));
int ffsll(long long) __attribute__((__const__));
int fls(int) __attribute__((__const__));
int flsl(long) __attribute__((__const__));
int flsll(long long) __attribute__((__const__));


char *index(const char *, int) __attribute__((__pure__));
char *rindex(const char *, int) __attribute__((__pure__));

int strcasecmp(const char *, const char *) __attribute__((__pure__));
int strncasecmp(const char *, const char *, size_t) __attribute__((__pure__));


int strcasecmp_l (const char *, const char *, locale_t);
int strncasecmp_l (const char *, const char *, size_t, locale_t);


# 25 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3




void * memchr (const void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void * memcpy (void *restrict, const void *restrict, size_t);
void * memmove (void *, const void *, size_t);
void * memset (void *, int, size_t);
char *strcat (char *restrict, const char *restrict);
char *strchr (const char *, int);
int strcmp (const char *, const char *);
int strcoll (const char *, const char *);
char *strcpy (char *restrict, const char *restrict);
size_t strcspn (const char *, const char *);
char *strerror (int);
size_t strlen (const char *);
char *strncat (char *restrict, const char *restrict, size_t);
int strncmp (const char *, const char *, size_t);
char *strncpy (char *restrict, const char *restrict, size_t);
char *strpbrk (const char *, const char *);
char *strrchr (const char *, int);
size_t strspn (const char *, const char *);
char *strstr (const char *, const char *);

char *strtok (char *restrict, const char *restrict);

size_t strxfrm (char *restrict, const char *restrict, size_t);


int strcoll_l (const char *, const char *, locale_t);
char *strerror_l (int, locale_t);
size_t strxfrm_l (char *restrict, const char *restrict, size_t, locale_t);


char *strtok_r (char *restrict, const char *restrict, char **restrict);


int timingsafe_bcmp (const void *, const void *, size_t);
int timingsafe_memcmp (const void *, const void *, size_t);


void * memccpy (void *restrict, const void *restrict, int, size_t);


void * mempcpy (void *, const void *, size_t);
void * memmem (const void *, size_t, const void *, size_t);
void * memrchr (const void *, int, size_t);
void * rawmemchr (const void *, int);


char *stpcpy (char *restrict, const char *restrict);
char *stpncpy (char *restrict, const char *restrict, size_t);


char *strcasestr (const char *, const char *);
char *strchrnul (const char *, int);


char *strdup (const char *) __attribute__((__malloc__)) __attribute__((__warn_unused_result__));

char *_strdup_r (struct _reent *, const char *);

char *strndup (const char *, size_t) __attribute__((__malloc__)) __attribute__((__warn_unused_result__));

char *_strndup_r (struct _reent *, const char *, size_t);






char *strerror_r (int, char *, size_t);
# 112 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 3
char * _strerror_r (struct _reent *, int, int, int *);


size_t strlcat (char *, const char *, size_t);
size_t strlcpy (char *, const char *, size_t);


size_t strnlen (const char *, size_t);


char *strsep (char **, const char *);


char *strnstr(const char *, const char *, size_t) __attribute__((__pure__));



char *strlwr (char *);
char *strupr (char *);



char *strsignal (int __signo);







int strverscmp (const char *, const char *);
# 172 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 3
char *__attribute__((__nonnull__ (1))) basename (const char *) __asm__("" "__gnu_basename");


# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/string.h" 1 3
# 15 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/string.h" 3
static __inline unsigned long __libc_detect_null(unsigned long w)
{
  unsigned long mask = 0x7f7f7f7f;
  if (sizeof (long) == 8)
    mask = ((mask << 16) << 16) | mask;
  return ~(((w & mask) + mask) | w | mask);
}
# 176 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3


# 37 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog.h" 2


# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h" 1
# 40 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog.h" 2

# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_log.h" 1
# 56 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_log.h"

# 56 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_log.h"
typedef enum LOG_BUF_OUT_DATA_TYPE {
    LOG_BUF_OUT_DATA_TYPE_HEX,
    LOG_BUF_OUT_DATA_TYPE_INT8,
    LOG_BUF_OUT_DATA_TYPE_UNT8,
} LOG_BUF_OUT_DATA_TYPE_T;
# 127 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_log.h"
int log_buf_out(const char *file, int line, const void *inbuf, int len, LOG_BUF_OUT_DATA_TYPE_T type);

void bl_printk(const char *format, ...);
# 42 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog.h" 2

# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog_type.h" 1
# 34 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog_type.h"
typedef enum _blog_leve {
    BLOG_LEVEL_ALL = 0,
    BLOG_LEVEL_DEBUG,
    BLOG_LEVEL_INFO,
    BLOG_LEVEL_WARN,
    BLOG_LEVEL_ERROR,
    BLOG_LEVEL_ASSERT,
    BLOG_LEVEL_NEVER,
} blog_level_t;

typedef struct _blog_info {
    blog_level_t *level;
    char *name;
} blog_info_t;
# 44 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog.h" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog_cfg.h" 1
# 45 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog.h" 2
# 339 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog.h"
    void blog_init(void);

    void blog_hexdump_out(const char *name, uint8_t width, uint8_t *buf, uint16_t size);

    int blog_set_level_log_component(char *level, char *component_name);
# 67 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/aos/yloop.h" 1
# 12 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/aos/yloop.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/event_type_code.h" 1
# 13 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/aos/yloop.h" 2
# 100 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/aos/yloop.h"
typedef struct {

    uint32_t time;

    uint16_t type;

    uint16_t code;

    unsigned long value;

    unsigned long extra;
} input_event_t;


typedef void (*aos_event_cb)(input_event_t *event, void *private_data);

typedef void (*aos_call_t)(void *arg);

typedef void (*aos_poll_call_t)(int fd, void *arg);
# 129 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/aos/yloop.h"
int aos_register_event_filter(uint16_t type, aos_event_cb cb, void *priv);
# 140 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/aos/yloop.h"
int aos_unregister_event_filter(uint16_t type, aos_event_cb cb, void *priv);
# 151 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/aos/yloop.h"
int aos_post_event(uint16_t type, uint16_t code, unsigned long value);
# 162 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/aos/yloop.h"
int aos_poll_read_fd(int fd, aos_poll_call_t action, void *param);
# 171 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/aos/yloop.h"
void aos_cancel_poll_read_fd(int fd, aos_poll_call_t action, void *param);
# 182 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/aos/yloop.h"
int aos_post_delayed_action(int ms, aos_call_t action, void *arg);
# 191 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/aos/yloop.h"
void aos_cancel_delayed_action(int ms, aos_call_t action, void *arg);
# 204 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/aos/yloop.h"
int aos_schedule_call(aos_call_t action, void *arg);

typedef void *aos_loop_t;






aos_loop_t aos_loop_init(void);






aos_loop_t aos_current_loop(void);




void aos_loop_run(void);




void aos_loop_exit(void);




void aos_loop_destroy(void);
# 246 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/aos/yloop.h"
int aos_loop_schedule_call(aos_loop_t *loop, aos_call_t action, void *arg);
# 259 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/aos/yloop.h"
void *aos_loop_schedule_work(int ms, aos_call_t action, void *arg1,
                             aos_call_t fini_cb, void *arg2);
# 269 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/aos/yloop.h"
void aos_cancel_work(void *work, aos_call_t action, void *arg1);
# 68 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c" 2

# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_irq.h" 1


void bl_irq_enable(unsigned int source);
void bl_irq_disable(unsigned int source);
typedef enum {
    BL_IRQ_EXCEPTION_TYPE_LOAD_MISALIGN,
    BL_IRQ_EXCEPTION_TYPE_STORE_MISALIGN,
    BL_IRQ_EXCEPTION_TYPE_ACCESS_ILLEGAL,
    BL_IRQ_EXCEPTION_TYPE_ILLEGAL_INSTRUCTION,
} BL_IRQ_EXCEPTION_TYPE_T;
void bl_irq_exception_trigger(BL_IRQ_EXCEPTION_TYPE_T type, void *ptr);

void bl_irq_init(void);

void bl_sec_aes_IRQHandler(void);
void bl_sec_sha_IRQHandler(void);
void bl_sec_pka_IRQHandler(void);
void bl_dma_IRQHandler(void);
void intc_irq(void);
void bl_irq_handler(void);
void bl_irq_register_with_ctx(int irqnum, void *handler, void *ctx);
void bl_irq_register(int irqnum, void *handler);
void bl_irq_unregister(int irqnum, void *handler);
void bl_irq_ctx_get(int irqnum, void **ctx);

int bl_irq_save(void);
void bl_irq_restore(int flags);
void __attribute__((noreturn)) bl_sys_abort(const char *details);
# 70 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c" 2
# 80 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
struct mq_adpt
{
};

struct irq_adpt
{
    void (*func)(void *arg);
    void *arg;
};

enum bl_os_timer_mode
{
    BL_OS_TIEMR_ONCE = 0,
    BL_OS_TIEMR_CYCLE
};

typedef enum bl_os_timer_mode bl_os_timer_mode_t;

struct timer_adpt
{
    TimerHandle_t handle;
    int32_t delay;
    bl_os_timer_mode_t mode;
    void (*func)(void *arg);
    void *arg;
};





extern void *__attribute__((weak)) _wifi_log_flag;

bl_ops_funcs_t g_bl_ops_funcs =
{
    ._version = ((int)0x00000001),
    ._printf = bl_os_printf,
    ._puts = bl_os_puts,
    ._assert = bl_os_assert_func,
    ._init = bl_os_api_init,
    ._enter_critical = bl_os_enter_critical,
    ._exit_critical = bl_os_exit_critical,
    ._msleep = bl_os_msleep,
    ._sleep = bl_os_sleep,
    ._event_group_create = bl_os_event_create,
    ._event_group_delete = bl_os_event_delete,
    ._event_group_send = bl_os_event_send,
    ._event_group_wait = bl_os_event_wait,
    ._event_register = bl_os_event_register,
    ._event_notify = bl_os_event_notify,
    ._task_create = bl_os_task_create,
    ._task_delete = bl_os_task_delete,
    ._task_get_current_task = bl_os_task_get_current_task,
    ._task_notify_create = bl_os_task_notify_create,
    ._task_notify = bl_os_task_notify,
    ._task_wait = bl_os_task_wait,
    ._irq_attach = bl_os_irq_attach,
    ._irq_enable = bl_os_irq_enable,
    ._irq_disable = bl_os_irq_disable,
    ._workqueue_create = bl_os_workqueue_create,
    ._workqueue_submit_hp = bl_os_workqueue_submit_hpwork,
    ._workqueue_submit_lp = bl_os_workqueue_submit_lpwork,
    ._timer_create = bl_os_timer_create,
    ._timer_delete = bl_os_timer_delete,
    ._timer_start_once = bl_os_timer_start_once,
    ._timer_start_periodic = bl_os_timer_start_periodic,
    ._sem_create = bl_os_sem_create,
    ._sem_delete = bl_os_sem_delete,
    ._sem_take = bl_os_sem_take,
    ._sem_give = bl_os_sem_give,
    ._mutex_create = bl_os_mutex_create,
    ._mutex_delete = bl_os_mutex_delete,
    ._mutex_lock = bl_os_mutex_lock,
    ._mutex_unlock = bl_os_mutex_unlock,
    ._queue_create = bl_os_mq_creat,
    ._queue_delete = bl_os_mq_delete,
    ._queue_send_wait = bl_os_mq_send_wait,
    ._queue_send = bl_os_mq_send,
    ._queue_recv = bl_os_mq_recv,
    ._malloc = bl_os_malloc,
    ._free = bl_os_free,
    ._zalloc = bl_os_zalloc,
    ._get_time_ms = bl_os_clock_gettime_ms,
    ._get_tick = bl_os_get_tick,
    ._log_write = bl_os_log_write,
    ._task_notify_isr = bl_os_task_notify_isr,
    ._yield_from_isr = bl_os_yield_from_isr,
    ._ms_to_tick = bl_os_ms_to_tick,
    ._set_timeout = bl_os_set_timeout,
    ._check_timeout = bl_os_check_timeout
};

extern void vprint(const char *fmt, va_list argp);
extern volatile 
# 173 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c" 3 4
               _Bool 
# 173 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
                    sys_log_all_enable;
# 196 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
void bl_os_assert_func(const char *file, int line, const char *func, const char *expr)
{
    printf("Assert failed in %s, %s:%d (%s)", func, file, line, expr);

    if( ( 0 ) == 0 ) vEnvironmentCall((1 << 1));
}
# 216 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
BL_EventGroup_t bl_os_event_create(void)
{
    struct EventGroupDef_t *event;

    event = xEventGroupCreate();

    if (event == 
# 222 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c" 3 4
                ((void *)0)
# 222 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
                    ) {
        if( ( 0 ) == 0 ) vEnvironmentCall((1 << 1));
    }

    return event;
}
# 243 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
void bl_os_event_delete(BL_EventGroup_t event)
{
    vEventGroupDelete((EventGroupHandle_t)event);
}
# 261 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
uint32_t bl_os_event_send(BL_EventGroup_t event, uint32_t bits)
{
    EventGroupHandle_t p_event = (EventGroupHandle_t)event;
    BaseType_t xHigherPriorityTaskWoken;
    BaseType_t xResult;



    if (xPortIsInsideInterrupt()) {
        xResult = xEventGroupSetBitsFromISR(p_event, bits, &xHigherPriorityTaskWoken);
    } else {
        xResult = xEventGroupSetBits(p_event, bits);
    }

    return xResult;
}
# 295 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
uint32_t bl_os_event_wait(BL_EventGroup_t event, uint32_t bits_to_wait_for, int clear_on_exit,
                          int wait_for_all_bits, uint32_t block_time_tick)
{
    EventGroupHandle_t p_event = (EventGroupHandle_t)event;

    return xEventGroupWaitBits((EventGroupHandle_t)p_event,
                               bits_to_wait_for,
                               (clear_on_exit != (0) ? ( ( BaseType_t ) 1 ) : ( ( BaseType_t ) 0 )),
                               (wait_for_all_bits != (0) ? ( ( BaseType_t ) 1 ) : ( ( BaseType_t ) 0 )),
                               (block_time_tick == (0xffffffffUL) ? ( TickType_t ) 0xffffffffUL : block_time_tick));
}
# 318 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
int bl_os_event_register(int type, void *cb, void *arg)
{
    return 0;
}
# 334 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
int bl_os_event_notify(int evt, int val)
{
    return aos_post_event(0x0002, evt, val);
}
# 350 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
int bl_os_task_create(const char *name,
                      void *entry,
                      uint32_t stack_depth,
                      void *param,
                      uint32_t prio,
                      BL_TaskHandle_t task_handle)
{
    return xTaskCreate((TaskFunction_t)entry,
                       name,
                       (stack_depth >> 2),
                       param,
                       prio,
                       (TaskHandle_t *)&task_handle);
}
# 376 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
void bl_os_task_delete(BL_TaskHandle_t task_handle)
{
    vTaskDelete((TaskHandle_t)task_handle);
}
# 392 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
BL_TaskHandle_t bl_os_task_get_current_task(void)
{
    return xTaskGetCurrentTaskHandle();
}
# 408 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
BL_TaskHandle_t bl_os_task_notify_create(void)
{
    return xTaskGetCurrentTaskHandle();
}
# 424 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
void bl_os_task_notify(BL_TaskHandle_t task_handle)
{
    BaseType_t xHigherPriorityTaskWoken;

    if( ( task_handle ) == 0 ) vEnvironmentCall((1 << 1));

    if (xPortIsInsideInterrupt()) {
        vTaskNotifyGiveFromISR(task_handle, &xHigherPriorityTaskWoken);
        if( xHigherPriorityTaskWoken ) vTaskSwitchContext();
    } else {
        xTaskGenericNotify( ( task_handle ), ( 0 ), eIncrement, 
# 434 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c" 3 4
       ((void *)0) 
# 434 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
       );
    }
}
# 449 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
void bl_os_task_wait(BL_TaskHandle_t task_handle, uint32_t tick)
{
    ulTaskNotifyTake(( ( BaseType_t ) 1 ), tick);
}
# 465 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
int bl_os_api_init(void)
{
    return ( ( BaseType_t ) 1 );
}
# 481 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
void bl_os_lock_gaint(void)
{
}
# 496 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
void bl_os_unlock_gaint(void)
{
}
# 514 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
uint32_t bl_os_enter_critical(void)
{
    vTaskEnterCritical();

    return 0;
}
# 535 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
void bl_os_exit_critical(uint32_t level)
{
    vTaskExitCritical();
}
# 552 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
int bl_os_msleep(long msec)
{
    const TickType_t ms = msec / ( ( TickType_t ) 1000 / ( ( TickType_t ) 1000 ) );

    vTaskDelay(ms);

    return ( ( BaseType_t ) 1 );
}
# 572 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
int bl_os_sleep(unsigned int seconds)
{
    const TickType_t ms = seconds * 1000 / ( ( TickType_t ) 1000 / ( ( TickType_t ) 1000 ) );

    vTaskDelay(ms);

    return ( ( BaseType_t ) 1 );
}
# 595 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
void bl_os_printf(const char *__fmt, ...)
{
    va_list args;

    if (sys_log_all_enable) {

        
# 601 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c" 3 4
       __builtin_va_start(
# 601 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
       args
# 601 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c" 3 4
       ,
# 601 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
       __fmt
# 601 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c" 3 4
       )
# 601 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
                            ;


        vprint(__fmt, args);

        
# 606 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c" 3 4
       __builtin_va_end(
# 606 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
       args
# 606 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c" 3 4
       )
# 606 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
                   ;
    }
}
# 624 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
void bl_os_puts(const char *s)
{
    if (s != 
# 626 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c" 3 4
            ((void *)0)
# 626 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
                ) {
        puts(s);
    }
}
# 645 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
void *bl_os_malloc(unsigned int size)
{
    return pvPortMalloc(size);
}
# 664 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
void bl_os_free(void *ptr)
{
    vPortFree(ptr);
}
# 683 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
void *bl_os_zalloc(unsigned int size)
{
    return pvPortCalloc(1, size);
}
# 703 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
static void bl_os_update_time(uint32_t *ms, uint32_t ticks)
{

}
# 722 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
static inline int32_t bl_os_errno_trans(int ret)
{
    if (ret == ( ( BaseType_t ) 1 )) {
        return 0;
    } else {
        return 1;
    }
}
# 742 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
BL_MessageQueue_t bl_os_mq_creat(uint32_t queue_len, uint32_t item_size)
{
    return xQueueGenericCreate( ( queue_len ), ( item_size ), ( ( ( uint8_t ) 0U ) ) );
}
# 758 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
void bl_os_mq_delete(BL_MessageQueue_t mq)
{
    vQueueDelete((QueueHandle_t)mq);
}
# 780 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
int bl_os_mq_send_wait(BL_MessageQueue_t queue, void *item, uint32_t len, uint32_t ticks, int prio)
{
    int ret;
    QueueHandle_t mq = (QueueHandle_t)queue;
    BaseType_t xHigherPriorityTaskWoken = ( ( BaseType_t ) 0 );






    if (xPortIsInsideInterrupt()) {
        ret = xQueueGenericSendFromISR( ( mq ), ( item ), ( &xHigherPriorityTaskWoken ), ( ( BaseType_t ) 0 ) );
    } else {
        ret = xQueueGenericSend( ( mq ), ( item ), ( ticks ), ( ( BaseType_t ) 0 ) );
    }

    return bl_os_errno_trans(ret);
}
# 816 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
int bl_os_mq_send(BL_MessageQueue_t queue, void *item, uint32_t len)
{
    return bl_os_mq_send_wait(queue, item, len, 0, 0);
}
# 837 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
int bl_os_mq_recv(BL_MessageQueue_t queue, void *item, uint32_t len, uint32_t tick)
{
    int ret;
    QueueHandle_t mq = (QueueHandle_t)queue;
    BaseType_t xHigherPriorityTaskWoken = ( ( BaseType_t ) 0 );






    if (xPortIsInsideInterrupt()) {
        ret = xQueueReceiveFromISR(mq, item, &xHigherPriorityTaskWoken);
    } else {
        ret = xQueueReceive(mq, item, tick);
    }

    return bl_os_errno_trans(ret);
}
# 868 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
static void bl_os_timer_callback(TimerHandle_t arg)
{
    TimerHandle_t handle;
    struct timer_adpt *timer;

    handle = (TimerHandle_t)arg;
    timer = (struct timer_adpt *)pvTimerGetTimerID(handle);

    if (timer != 
# 876 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c" 3 4
                ((void *)0) 
# 876 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
                     && timer->func) {
        timer->func(timer->arg);
    }
}
# 892 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
BL_Timer_t bl_os_timer_create(void *func, void *argv)
{
    struct timer_adpt *timer;

    timer = (struct timer_adpt *)pvPortCalloc(1, sizeof(struct timer_adpt));

    if (!timer) {
        if( ( 0 ) == 0 ) vEnvironmentCall((1 << 1));
    }

    timer->handle = xTimerCreate(
# 902 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c" 3 4
                                ((void *)0)
# 902 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
                                    , 1000, ( ( BaseType_t ) 0 ), (void *)timer, bl_os_timer_callback);

    if (timer->handle == 
# 904 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c" 3 4
                        ((void *)0)
# 904 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
                            ) {
        if( ( 0 ) == 0 ) vEnvironmentCall((1 << 1));
    }

    timer->func = (void (*)(void *arg))func;
    timer->arg = argv;

    return timer;
}
# 925 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
int bl_os_timer_delete(BL_Timer_t timerid, uint32_t tick)
{
    struct timer_adpt *timer;

    timer = (struct timer_adpt *)timerid;

    if (!timer) {
        return ( ( BaseType_t ) 0 );
    }

    xTimerGenericCommand( ( timer->handle ), ( ( BaseType_t ) 3 ), 0U, 
# 935 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c" 3 4
   ((void *)0)
# 935 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
   , ( tick ) );

    xTimerGenericCommand( ( timer->handle ), ( ( BaseType_t ) 5 ), 0U, 
# 937 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c" 3 4
   ((void *)0)
# 937 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
   , ( tick ) );

    vPortFree(timer);

    return ( ( BaseType_t ) 1 );
}
# 955 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
int bl_os_timer_start_once(BL_Timer_t timerid, long t_sec, long t_nsec)
{
    struct timer_adpt *timer;
    int32_t tick;
    int ret;
    BaseType_t xHigherPriorityTaskWoken = ( ( BaseType_t ) 0 );

    timer = (struct timer_adpt *)timerid;

    if (!timer) {
        return ( ( BaseType_t ) 0 );
    }

    tick = ( ( TickType_t ) ( ( ( TickType_t ) ( (t_sec * 1000) + ((t_nsec > 1e6) ? (t_nsec / 1e6) : 0) ) * ( TickType_t ) ( ( TickType_t ) 1000 ) ) / ( TickType_t ) 1000 ) );

    timer->mode = BL_OS_TIEMR_ONCE;
    timer->delay = tick;

    vTimerSetReloadMode(timer->handle, ( ( BaseType_t ) 0 ));

    if (xPortIsInsideInterrupt()) {
        ret = xTimerGenericCommand( ( timer->handle ), ( ( BaseType_t ) 9 ), ( tick ), ( &xHigherPriorityTaskWoken ), 0U );
    }
    else {
        ret = xTimerGenericCommand( ( timer->handle ), ( ( BaseType_t ) 4 ), ( tick ), 
# 979 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c" 3 4
             ((void *)0)
# 979 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
             , ( ( TickType_t ) 0xffffffffUL ) );

    }

    return bl_os_errno_trans(ret);
}
# 997 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
int bl_os_timer_start_periodic(BL_Timer_t timerid, long t_sec, long t_nsec)
{
    struct timer_adpt *timer;
    int32_t tick;
    int ret;
    BaseType_t xHigherPriorityTaskWoken = ( ( BaseType_t ) 0 );

    timer = (struct timer_adpt *)timerid;

    if (!timer) {
        return ( ( BaseType_t ) 0 );
    }

    tick = ( ( TickType_t ) ( ( ( TickType_t ) ( (t_sec * 1000) + ((t_nsec > 1e6) ? (t_nsec / 1e6) : 0) ) * ( TickType_t ) ( ( TickType_t ) 1000 ) ) / ( TickType_t ) 1000 ) );

    timer->mode = BL_OS_TIEMR_CYCLE;
    timer->delay = tick;

    vTimerSetReloadMode(timer->handle, ( ( BaseType_t ) 1 ));

    if (xPortIsInsideInterrupt()) {
        ret = xTimerGenericCommand( ( timer->handle ), ( ( BaseType_t ) 9 ), ( tick ), ( &xHigherPriorityTaskWoken ), 0U );
    }
    else {
        ret = xTimerGenericCommand( ( timer->handle ), ( ( BaseType_t ) 4 ), ( tick ), 
# 1021 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c" 3 4
             ((void *)0)
# 1021 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
             , ( ( TickType_t ) 0xffffffffUL ) );

    }

    return bl_os_errno_trans(ret);
}
# 1039 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
void *bl_os_workqueue_create(void)
{
    return xTaskGetCurrentTaskHandle();
}
# 1055 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
int bl_os_workqueue_submit_hpwork(void *work, void *worker, void *argv, long tick)
{
    bl_os_task_notify(work);

    return 0;
}
# 1073 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
int bl_os_workqueue_submit_lpwork(void *work, void *worker, void *argv, long tick)
{
    bl_os_task_notify(work);

    return 0;
}
# 1091 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
uint64_t bl_os_clock_gettime_ms(void)
{
    long long ms = 0;
    TickType_t ticks = 0;
    BaseType_t overflow_count = 0;

    xTaskGetTickCount2(&ticks, &overflow_count);

    ms = ((long long)ticks) + ((TickType_t)(-1) * ((long long)overflow_count));

    return ms;
}
# 1115 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
uint32_t bl_os_get_tick()
{
    uint32_t tick;

    if (xPortIsInsideInterrupt()) {
        tick = xTaskGetTickCountFromISR();
    }
    else {
        tick = xTaskGetTickCount();
    }

    return tick;
}
# 1143 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
static int bl_os_isr_adpt_cb(int irq, void *context, void *arg)
{
    struct irq_adpt *adapter = (struct irq_adpt *)arg;

    adapter->func(adapter->arg);

    return 0;
}
# 1163 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
void bl_os_irq_attach(int32_t n, void *f, void *arg)
{
    struct irq_adpt *adapter;

    ;

    adapter = (struct irq_adpt *)pvPortCalloc(1, sizeof(struct irq_adpt));
    if( ( adapter ) == 0 ) vEnvironmentCall((1 << 1));

    adapter->func = f;
    adapter->arg = arg;

    extern void bl_irq_pending_clear(unsigned int source);
    bl_irq_pending_clear(n);

    bl_irq_register_with_ctx(n, bl_os_isr_adpt_cb, adapter);
    bl_irq_enable(n);
}
# 1193 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
void bl_os_irq_enable(int32_t n)
{
    bl_irq_enable(n);
}
# 1209 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
void bl_os_irq_disable(int32_t n)
{
    bl_irq_disable(n);
}
# 1228 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
BL_Mutex_t bl_os_mutex_create(void)
{
    SemaphoreHandle_t xSemaphore;

    xSemaphore = xQueueCreateMutex( ( ( uint8_t ) 1U ) );
    if( ( xSemaphore ) == 0 ) vEnvironmentCall((1 << 1));

    return xSemaphore;
}
# 1252 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
void bl_os_mutex_delete(BL_Mutex_t mutex_data)
{
    SemaphoreHandle_t sem = (SemaphoreHandle_t)mutex_data;

    vQueueDelete( ( QueueHandle_t ) ( sem ) );
}
# 1273 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
int32_t bl_os_mutex_lock(BL_Mutex_t mutex_data)
{
    SemaphoreHandle_t sem = (SemaphoreHandle_t)mutex_data;
    BaseType_t xHigherPriorityTaskWoken;
    int ret = ( ( BaseType_t ) 0 );

    if (sem != 
# 1279 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c" 3 4
              ((void *)0)
# 1279 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
                  ) {
        if (xPortIsInsideInterrupt()) {
            ret = xQueueReceiveFromISR( ( QueueHandle_t ) ( sem ), 
# 1281 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c" 3 4
                 ((void *)0)
# 1281 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
                 , ( &xHigherPriorityTaskWoken ) );
        } else {
            ret = xQueueSemaphoreTake( ( sem ), ( ( TickType_t ) 0xffffffffUL ) );
        }
    }

    return bl_os_errno_trans(ret);
}
# 1304 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
int32_t bl_os_mutex_unlock(BL_Mutex_t mutex_data)
{
    SemaphoreHandle_t sem = (SemaphoreHandle_t)mutex_data;
    BaseType_t xHigherPriorityTaskWoken;
    int ret = ( ( BaseType_t ) 0 );

    if (sem != 
# 1310 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c" 3 4
              ((void *)0)
# 1310 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
                  ) {
        if (xPortIsInsideInterrupt()) {
            ret = xQueueGiveFromISR( ( QueueHandle_t ) ( sem ), ( &xHigherPriorityTaskWoken ) );
        } else {
            ret = xQueueGenericSend( ( QueueHandle_t ) ( sem ), 
# 1314 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c" 3 4
                 ((void *)0)
# 1314 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
                 , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
        }
    }

    return bl_os_errno_trans(ret);
}
# 1336 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
BL_Sem_t bl_os_sem_create(uint32_t init)
{
    SemaphoreHandle_t xSemaphore;

    xSemaphore = xQueueGenericCreate( ( UBaseType_t ) 1, ( ( uint8_t ) 0U ), ( ( uint8_t ) 3U ) );
    if( ( xSemaphore ) == 0 ) vEnvironmentCall((1 << 1));

    return xSemaphore;
}
# 1360 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
void bl_os_sem_delete(BL_Sem_t semphr)
{
    SemaphoreHandle_t sem = (SemaphoreHandle_t)semphr;

    vQueueDelete( ( QueueHandle_t ) ( sem ) );
}
# 1382 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
int32_t bl_os_sem_take(BL_Sem_t semphr, uint32_t ticks)
{
    SemaphoreHandle_t sem = (SemaphoreHandle_t)semphr;
    BaseType_t xHigherPriorityTaskWoken;
    int ret = ( ( BaseType_t ) 0 );

    if (sem != 
# 1388 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c" 3 4
              ((void *)0)
# 1388 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
                  ) {
        if (xPortIsInsideInterrupt()) {
            ret = xQueueReceiveFromISR( ( QueueHandle_t ) ( sem ), 
# 1390 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c" 3 4
                 ((void *)0)
# 1390 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
                 , ( &xHigherPriorityTaskWoken ) );
        } else {
            ret = xQueueSemaphoreTake( ( sem ), ( ( TickType_t ) 0xffffffffUL ) );
        }
    }

    return bl_os_errno_trans(ret);
}
# 1413 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
int32_t bl_os_sem_give(BL_Sem_t semphr)
{
    SemaphoreHandle_t sem = (SemaphoreHandle_t)semphr;
    BaseType_t xHigherPriorityTaskWoken;
    int ret = ( ( BaseType_t ) 0 );

    if (sem != 
# 1419 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c" 3 4
              ((void *)0)
# 1419 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
                  ) {
        if (xPortIsInsideInterrupt()) {
            ret = xQueueGiveFromISR( ( QueueHandle_t ) ( sem ), ( &xHigherPriorityTaskWoken ) );
        } else {
            ret = xQueueGenericSend( ( QueueHandle_t ) ( sem ), 
# 1423 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c" 3 4
                 ((void *)0)
# 1423 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
                 , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
        }
    }

    return bl_os_errno_trans(ret);
}
# 1449 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
static void bl_os_log_writev(uint32_t level,
                             const char *tag,
                             const char *file,
                             int line,
                             const char *format,
                             va_list args)
{
# 1471 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
}
# 1491 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
void bl_os_log_write(uint32_t level, const char *tag, const char *file, int line, const char *format, ...)
{
    va_list list;
    
# 1494 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c" 3 4
   __builtin_va_start(
# 1494 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
   list
# 1494 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c" 3 4
   ,
# 1494 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
   format
# 1494 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c" 3 4
   )
# 1494 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
                         ;

    switch (level) {
        case LOG_LEVEL_ERROR:
        {
            bl_os_log_writev(BLOG_LEVEL_ERROR, "\x1b[31mERROR \x1b[0m", file, line, format, list);
            break;
        }
        case LOG_LEVEL_WARN:
        {
            bl_os_log_writev(BLOG_LEVEL_WARN, "\x1b[33mWARN  \x1b[0m", file, line, format, list);
            break;
        }
        case LOG_LEVEL_INFO:
        {
            bl_os_log_writev(BLOG_LEVEL_INFO, "\x1b[32mINFO  \x1b[0m", file, line, format, list);
            break;
        }
        case LOG_LEVEL_DEBUG:
        {
            bl_os_log_writev(BLOG_LEVEL_DEBUG, "DEBUG ", file, line, format, list);
            break;
        }
    }

    
# 1519 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c" 3 4
   __builtin_va_end(
# 1519 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
   list
# 1519 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c" 3 4
   )
# 1519 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
               ;
}
# 1533 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
int bl_os_task_notify_isr(BL_TaskHandle_t task_handle)
{
    BaseType_t xHigherPriorityTaskWoken;

    if( ( task_handle ) == 0 ) vEnvironmentCall((1 << 1));

    vTaskNotifyGiveFromISR(task_handle, &xHigherPriorityTaskWoken);

    return xHigherPriorityTaskWoken;
}
# 1555 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
void bl_os_yield_from_isr(int xYield)
{
    if( xYield ) vTaskSwitchContext();
}
# 1571 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
unsigned int bl_os_ms_to_tick(unsigned int ms)
{
    return ( ( TickType_t ) ( ( ( TickType_t ) ( ms ) * ( TickType_t ) ( ( TickType_t ) 1000 ) ) / ( TickType_t ) 1000 ) );
}
# 1587 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
BL_TimeOut_t bl_os_set_timeout(void)
{
    TimeOut_t *xTimeOut = 
# 1589 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c" 3 4
                         ((void *)0)
# 1589 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
                             ;

    xTimeOut = (TimeOut_t *)bl_os_malloc(sizeof(TimeOut_t));

    vTaskSetTimeOutState(xTimeOut);

    return (BL_TimeOut_t)xTimeOut;
}
# 1609 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/bl_os_hal.c"
int bl_os_check_timeout(BL_TimeOut_t xTimeOut, BL_TickType_t *xTicksToWait)
{
    return xTaskCheckForTimeOut((TimeOut_t *)xTimeOut, (TickType_t *)xTicksToWait);
}
