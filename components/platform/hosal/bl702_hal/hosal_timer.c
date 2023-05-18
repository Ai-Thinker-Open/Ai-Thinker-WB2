#include <bl702_timer.h>
#include <bl702_common.h>
#include <bl702.h>
#include <bl702_glb.h>
#include <bl_irq.h>
#include <hosal_timer.h>

static void timer_process(void *ctx)
{
	hosal_timer_dev_t *tim= (hosal_timer_dev_t *)ctx;
    void *arg;
	hosal_timer_cb_t handle;
    
    handle = tim->config.cb;
    arg = tim->config.arg;

    if (tim->port == 0) {
        TIMER_IntMask(TIMER_CH0, TIMER_INT_ALL, MASK);
        TIMER_ClearIntStatus(TIMER_CH0, TIMER_COMP_ID_0);
        if (tim->config.reload_mode == TIMER_RELOAD_ONCE) {
            TIMER_Disable(TIMER_CH0);
        }
    } else if (tim->port == 1) {
        TIMER_IntMask(TIMER_CH1, TIMER_INT_ALL, MASK);
        TIMER_ClearIntStatus(TIMER_CH1, TIMER_COMP_ID_0);
        if (tim->config.reload_mode == TIMER_RELOAD_ONCE) {
            TIMER_Disable(TIMER_CH1);
        }
    }

    if (handle) {
        handle(arg);
    }

    if (tim->port == 0) {
        TIMER_IntMask(TIMER_CH0, TIMER_INT_COMP_0, UNMASK);
    } else if (tim->port == 1) {
        TIMER_IntMask(TIMER_CH1, TIMER_INT_COMP_0, UNMASK);
    }
}

int hosal_timer_init(hosal_timer_dev_t *tim)
{
	TIMER_CFG_Type timer_cfg =
    {
        TIMER_CH1,
        TIMER_CLKSRC_XTAL,
        TIMER_PRELOAD_TRIG_COMP0,
        TIMER_COUNT_PRELOAD,
        31,
        0xFFFFFFFF,
        0xFFFFFFFF,
        0xFFFFFFFF,
        0,
    };
    if (tim->port == 0) {
        timer_cfg.timerCh = 0;
    } else if (tim->port == 1) {
        timer_cfg.timerCh = 1;
    } else {
        printf("timer channel %d not exists\r\n", tim->port);
		return -1;
    }
	timer_cfg.matchVal0 = tim->config.period;
    TIMER_IntMask(timer_cfg.timerCh, TIMER_INT_ALL, MASK);
    TIMER_Disable(timer_cfg.timerCh);
    //GLB_AHB_Slave1_Reset(BL_AHB_SLAVE1_TMR);
    TIMER_Init(&timer_cfg);

    /* Clear interrupt status*/
    TIMER_ClearIntStatus(timer_cfg.timerCh, TIMER_COMP_ID_0);
    TIMER_ClearIntStatus(timer_cfg.timerCh, TIMER_COMP_ID_1);
    TIMER_ClearIntStatus(timer_cfg.timerCh, TIMER_COMP_ID_2);

    /* Enable timer match interrupt */
    TIMER_IntMask(timer_cfg.timerCh, TIMER_INT_COMP_0, UNMASK);
    TIMER_IntMask(timer_cfg.timerCh, TIMER_INT_COMP_1, MASK);
    TIMER_IntMask(timer_cfg.timerCh, TIMER_INT_COMP_2, MASK);
   
    if (tim->port == 0) {
		bl_irq_register_with_ctx(TIMER_CH0_IRQn, timer_process, tim);
    } else {
		bl_irq_register_with_ctx(TIMER_CH1_IRQn, timer_process, tim);
    }

    return 0;
}


int hosal_timer_start(hosal_timer_dev_t *tim)
{
    if (tim->port == 0) {
		bl_irq_enable(TIMER_CH0_IRQn);
		TIMER_Enable(TIMER_CH0);
    } else if (tim->port == 1) {
		bl_irq_enable(TIMER_CH1_IRQn);
		TIMER_Enable(TIMER_CH1);
    } else {
        printf("timer channel %d not exists\r\n", tim->port);
		return -1;
    }
    return 0;
}

void hosal_timer_stop(hosal_timer_dev_t *tim)
{
    if (tim->port == 0) {
		bl_irq_disable(TIMER_CH0_IRQn);
		TIMER_Disable(TIMER_CH0);
    } else if (tim->port == 1) {
		bl_irq_disable(TIMER_CH1_IRQn);
		TIMER_Disable(TIMER_CH1);
    } else {
        printf("timer channel %d not exists\r\n", tim->port);
		return;
    }
}

int hosal_timer_finalize(hosal_timer_dev_t *tim)
{
    if (tim->port == 0) {
		bl_irq_disable(TIMER_CH0_IRQn);
        bl_irq_unregister(TIMER_CH0_IRQn, timer_process);
        TIMER_IntMask(TIMER_CH0, TIMER_INT_ALL, MASK);
		TIMER_Disable(TIMER_CH0);
    } else if (tim->port == 1) {
		bl_irq_disable(TIMER_CH1_IRQn);
        bl_irq_unregister(TIMER_CH1_IRQn, timer_process);
        TIMER_IntMask(TIMER_CH1, TIMER_INT_ALL, MASK);
		TIMER_Disable(TIMER_CH1);
    } else {
        printf("timer channel %d not exists\r\n", tim->port);
		return -1;
    }
    return 0;
}
