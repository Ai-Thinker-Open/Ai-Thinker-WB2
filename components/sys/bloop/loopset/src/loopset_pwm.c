#include <FreeRTOS.h>
#include <task.h>
#include <stdio.h>
#include <stdlib.h>

#include <utils_debug.h>
#include <utils_log.h>
#include <blog.h>

#include <looprt.h>
#include <loopset.h>
#include <loopset_pwm.h>

#define EVT_MAP_PWM_TRIGGER     (1U << 0)
#define EVT_MAP_PWM_WAITING     (1U << 1)

struct pwm_trigger_item {
    struct loop_timer timer;
    loopset_func_t cb;
    void *p_arg;
};

struct pwm_trigger_item *trigger;

static int _pwm_bloop_evt(struct loop_ctx *loop, const struct loop_evt_handler *handler, uint32_t *bitmap_evt, uint32_t *evt_type_map)
{
    uint32_t map = *evt_type_map;

    if (trigger == NULL) {
        return -1;
    }
    if (map & EVT_MAP_PWM_WAITING) {
        looprt_timer_register(&trigger->timer);
    }

    *evt_type_map = 0;
    return 0;
}

int loopset_pwm_hook_on_looprt(void)
{
    static const struct loop_evt_handler _pwm_bloop_handler_holder = {
        .name = "PWM Trigger",
        .evt = _pwm_bloop_evt,
        .handle = NULL,
    };

    return looprt_handler_register(&_pwm_bloop_handler_holder, PWM_TASK_PRIORITY);
}

int loopset_pwm_hook_off_looprt(void)
{
    return 0;
}

static void _cb_pwm_trigger(struct loop_ctx *loop, struct loop_timer *timer, void *arg)
{
    struct pwm_trigger_item *trigger = (struct pwm_trigger_item*)arg;

    if (trigger->cb) {
        trigger->cb(trigger->p_arg);
    }
}

void loopset_pwm_trigger_stop (void)
{
    trigger->timer.flags &=  ~LOOP_TIMER_FLAG_AUTO_REPEAT;
}

void loopset_pwm_trigger_start (void)
{
    if (trigger->timer.flags & LOOP_TIMER_FLAG_AUTO_REPEAT) {
        return;
    }
    bloop_timer_repeat_enable(&trigger->timer);
    looprt_evt_notify_async(PWM_TASK_PRIORITY, EVT_MAP_PWM_WAITING);
}

void loopset_pwm_trigger_on(unsigned int timeon_ms, loopset_func_t cb, void *p_arg)
{
    if (trigger) {
        return;
    }
    trigger = pvPortMalloc(sizeof(struct pwm_trigger_item));
    BL_ASSERT(trigger);
    memset(trigger, 0, sizeof(struct pwm_trigger_item));

    trigger->cb = cb;
    trigger->p_arg = p_arg;

    bloop_timer_init(&trigger->timer, 0);
    bloop_timer_configure(&trigger->timer, timeon_ms,
        _cb_pwm_trigger,
        trigger,
        PWM_TASK_PRIORITY,
        EVT_MAP_PWM_TRIGGER
    );

    looprt_evt_notify_async(PWM_TASK_PRIORITY, EVT_MAP_PWM_WAITING);
}

void loopset_pwm_trigger_off(void)
{
    //...
}

