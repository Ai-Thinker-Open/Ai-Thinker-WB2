#include "bl702_rf_public.h"
#include "bl_wireless.h"
#include "bl_adc.h"
#include "hal_hwtimer.h"
#include "hal_tcal.h"

#define TCAL_PERIOD_MS             (1000*10)

#define printf(...)                (void)0

static int tcal_init = 0;
static hw_timer_t *tcal_timer = NULL;
static int16_t tcal_temperature = 0;

static void hal_tcal_callback(int16_t tsen_val)
{
    if(tcal_init == 0){
        printf("[tcal] rf702_set_init_tsen_value(%d)\r\n", tsen_val);
        
        rf702_set_init_tsen_value(tsen_val);
        
        tcal_init = 1;
    }else{
        printf("[tcal] rf702_inc_cal_tsen_based(%d)\r\n", tsen_val);
        
        rf702_inc_cal_tsen_based(tsen_val);
    }
    
    tcal_temperature = tsen_val;
}

static void hal_tcal_trigger(void)
{
    bl_adc_tsen_dma_trigger();
}

int hal_tcal_init(void)
{
    bl_adc_tsen_cfg_t tsen_cfg = {
        .tsen_dma_ch = 0,
        .tsen_event = hal_tcal_callback,
    };
    
    if(bl_wireless_tcal_en_get() == 0){
        return -1;
    }
    
    printf("[tcal] hal_tcal_init\r\n");
    
    return bl_adc_tsen_dma_init(&tsen_cfg);
}

int hal_tcal_restart(void)
{
    if(bl_wireless_tcal_en_get() == 0){
        return -1;
    }
    
    printf("[tcal] hal_tcal_restart\r\n");
    
    // Stop periodical tcal trigger
    if(tcal_timer != NULL){
        hal_hwtimer_delete(tcal_timer);
        tcal_timer = NULL;
    }
    
    // Perform initial tcal trigger
    tcal_init = 0;
    hal_tcal_trigger();
    
    // Start periodical tcal trigger
    tcal_timer = hal_hwtimer_create(TCAL_PERIOD_MS, hal_tcal_trigger, 1);
    
    return 0;
}

int hal_tcal_pause(void)
{
    if(bl_wireless_tcal_en_get() == 0){
        return -1;
    }
    
    if(tcal_timer != NULL){
        hal_hwtimer_delete(tcal_timer);
        tcal_timer = NULL;
    }
    
    while(bl_adc_tsen_dma_is_busy());
    
    printf("[tcal] hal_tcal_pause\r\n");
    
    return 0;
}

int hal_tcal_resume(void)
{
    if(bl_wireless_tcal_en_get() == 0){
        return -1;
    }
    
    if(tcal_timer == NULL){
        tcal_timer = hal_hwtimer_create(TCAL_PERIOD_MS, hal_tcal_trigger, 1);
    }
    
    printf("[tcal] hal_tcal_resume\r\n");
    
    return 0;
}

int16_t hal_tcal_get_temperature(void)
{
    return tcal_temperature;
}
