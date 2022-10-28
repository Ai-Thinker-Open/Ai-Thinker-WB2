#include "bl_rtc.h"


void bl_rtc_init(void)
{
#ifdef CFG_USE_XTAL32K
    HBN_32K_Sel(HBN_32K_XTAL);
#else
    HBN_32K_Sel(HBN_32K_RC);
#endif
    
//    HBN_Clear_RTC_Counter();
    HBN_Enable_RTC_Counter();
}

uint64_t bl_rtc_get_counter(void)
{
#if 1
    uint32_t valLow, valHigh;
    
    HBN_Get_RTC_Timer_Val(&valLow, &valHigh);
    
    return ((uint64_t)valHigh << 32) | valLow;
#else
    uint32_t valLow1, valHigh1;
    uint32_t valLow2, valHigh2;
    
    // fix issue: read rtc counter twice, the second one may be smaller than the first one
    do{
        HBN_Get_RTC_Timer_Val(&valLow1, &valHigh1);
        HBN_Get_RTC_Timer_Val(&valLow2, &valHigh2);
    }while(valLow2 < valLow1 || valHigh2 != valHigh1);
    
    return ((uint64_t)valHigh2 << 32) | valLow2;
#endif
}

uint64_t bl_rtc_get_timestamp_ms(void)
{
    uint64_t cnt;
    
    cnt = bl_rtc_get_counter();
    
    return BL_RTC_COUNTER_TO_MS(cnt);
}

uint64_t bl_rtc_get_delta_counter(uint64_t ref_cnt)
{
    uint64_t cnt;
    
    cnt = bl_rtc_get_counter();
    ref_cnt &= BL_RTC_MAX_COUNTER;
    
    if(cnt < ref_cnt){
        cnt += BL_RTC_MAX_COUNTER + 1;
    }
    
    return cnt - ref_cnt;
}

uint64_t bl_rtc_get_delta_time_ms(uint64_t ref_cnt)
{
    uint64_t cnt;
    
    cnt = bl_rtc_get_delta_counter(ref_cnt);
    
    return BL_RTC_COUNTER_TO_MS(cnt);
}
