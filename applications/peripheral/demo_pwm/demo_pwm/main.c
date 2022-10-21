#include <FreeRTOS.h>
#include <task.h>
#include <blog.h>
#include <bl602.h>
#include <bl602_gpio.h>
#include <bl602_glb.h>
#include <bl_pwm.h>

#define PWM_Get_Channel_Reg(ch)  (PWM_BASE+PWM_CHANNEL_OFFSET+(ch)*0x20)
#define PWM_STOP_TIMEOUT_COUNT          (160*1000)

/// @brief Copy from PWM_Smart_Configure. Use Bus Clock instead of External Crystal Clock for PWM Timer
/// @param ch PWM Channel
/// @param clkDiv PWM clock divider
/// @param period PWM period
/// @param threshold2 
/// @return 
BL_Err_Type PWM_Smart_Configure2(PWM_CH_ID_Type ch, uint16_t clkDiv, uint16_t period,uint16_t threshold2)
{
    uint32_t tmpVal;
    uint32_t timeoutCnt = PWM_STOP_TIMEOUT_COUNT;
    /* Get channel register */
    uint32_t PWMx = PWM_Get_Channel_Reg(ch);
        
    tmpVal = BL_RD_REG(PWMx, PWM_CONFIG);
    // if(BL_GET_REG_BITS_VAL(tmpVal, PWM_REG_CLK_SEL) != PWM_CLK_XCLK){
    if(BL_GET_REG_BITS_VAL(tmpVal, PWM_REG_CLK_SEL) != PWM_CLK_BCLK){
        BL_WR_REG(PWMx, PWM_CONFIG, BL_SET_REG_BIT(tmpVal, PWM_STOP_EN));
        while(!BL_IS_REG_BIT_SET(BL_RD_REG(PWMx, PWM_CONFIG), PWM_STS_TOP)){
            timeoutCnt--;
            if(timeoutCnt == 0){
                return TIMEOUT;
            }
        }
        // tmpVal = BL_SET_REG_BITS_VAL(tmpVal, PWM_REG_CLK_SEL, PWM_CLK_XCLK);
        tmpVal = BL_SET_REG_BITS_VAL(tmpVal, PWM_REG_CLK_SEL, PWM_CLK_BCLK);
    }
    tmpVal = BL_SET_REG_BITS_VAL(tmpVal, PWM_OUT_INV, PWM_POL_NORMAL);
    tmpVal = BL_SET_REG_BITS_VAL(tmpVal, PWM_STOP_MODE, PWM_STOP_GRACEFUL);
    BL_WR_REG(PWMx, PWM_CONFIG, tmpVal);

    /* Config pwm division */
    BL_WR_REG(PWMx, PWM_CLKDIV, clkDiv);

    /* Config pwm period and duty */
    BL_WR_REG(PWMx, PWM_PERIOD, period);
    BL_WR_REG(PWMx, PWM_THRE1, 0);
    BL_WR_REG(PWMx, PWM_THRE2, threshold2);
    
    return SUCCESS;
}

int main(void)
{
    GLB_GPIO_Cfg_Type cfg[3] = {
        {
            .drive = 0,
            .smtCtrl = 1,
            .gpioMode = GPIO_MODE_OUTPUT,
            .pullType = GPIO_PULL_DOWN,
            .gpioPin = 14,  /// red
            .gpioFun = 8,
        },
        {
            .drive = 0,
            .smtCtrl = 1,
            .gpioMode = GPIO_MODE_OUTPUT,
            .pullType = GPIO_PULL_DOWN,
            .gpioPin = 17,  /// green
            .gpioFun = 8,
        },
        {
            .drive = 0,
            .smtCtrl = 1,
            .gpioMode = GPIO_MODE_OUTPUT,
            .pullType = GPIO_PULL_DOWN,
            .gpioPin = 3,  /// blue
            .gpioFun = 8,
        },
    };

    for (int i = 0; i < 3; i++) {
        GLB_GPIO_Init(cfg + i);

        PWM_CH_ID_Type ch = cfg[i].gpioPin % PWM_CH_MAX;
        PWM_Channel_Disable(ch);
    }

    /// PWM Frequency = 80 Hz / Divider / Period

    /// set pwm channel 2 for 50% duty, 40MHz
    /// Divider = 1
    /// Period = 2
    PWM_Smart_Configure2(2, 1, 2, 1);
    PWM_Channel_Enable(2);

    /// set pwm channel 3 for 75% duty, 5MHz
    /// Divider = 2
    /// Period = 8
    PWM_Smart_Configure2(3, 2, 8, 6);
    PWM_Channel_Enable(3);

    /// set pwm channel 3 for 10% duty, 1MHz
    /// Divider = 8
    /// Period = 10
    PWM_Smart_Configure2(4, 8, 10, 1);
    PWM_Channel_Enable(4);

    for (;;) {
        vTaskDelay(pdMS_TO_TICKS(1000));
    }

    return 0;
}
