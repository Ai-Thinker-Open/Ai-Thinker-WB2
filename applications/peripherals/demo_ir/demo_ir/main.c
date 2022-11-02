/**
  ******************************************************************************
  * @file    ir_nec.c
  * @version V1.0
  * @date
  * @brief   This file is the peripheral case c file
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; COPYRIGHT(c) 2020 Bouffalo Lab</center></h2>
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
  *
  ******************************************************************************
  */

#include "bl602_ir.h"
#include "bl602_glb.h"
#include "bflb_platform.h"
#include <blog.h>

/** @addtogroup  BL602_Peripheral_Case
 *  @{
 */

/** @addtogroup  IR_NEC
 *  @{
 */

/** @defgroup  IR_NEC_Private_Macros
 *  @{
 */
#define IR_PIN_TX                       GLB_GPIO_PIN_11
#define IR_PIN_RX                       GLB_GPIO_PIN_12

/*@} end of group IR_NEC_Private_Macros */

/** @defgroup  IR_NEC_Private_Types
 *  @{
 */

/*@} end of group IR_NEC_Private_Types */

/** @defgroup  IR_NEC_Private_Variables
 *  @{
 */
static IR_TxCfg_Type txCfg = {
    32,                                                  /* 32-bit data */
    DISABLE,                                             /* Disable signal of tail pulse inverse */
    ENABLE,                                              /* Enable signal of tail pulse */
    DISABLE,                                             /* Disable signal of head pulse inverse */
    ENABLE,                                              /* Enable signal of head pulse */
    DISABLE,                                             /* Disable signal of logic 1 pulse inverse */
    DISABLE,                                             /* Disable signal of logic 0 pulse inverse */
    ENABLE,                                              /* Enable signal of data pulse */
    ENABLE,                                              /* Enable signal of output modulation */
    DISABLE                                              /* Disable signal of output inverse */
};

static IR_TxPulseWidthCfg_Type txPWCfg = {
    1,                                                   /* Pulse width of logic 0 pulse phase 1, 562.5us @2MHz source clock*/
    1,                                                   /* Pulse width of logic 0 pulse phase 0 */
    3,                                                   /* Pulse width of logic 1 pulse phase 1, 1687.5us */
    1,                                                   /* Pulse width of logic 1 pulse phase 0 */
    8,                                                   /* Pulse width of head pulse phase 1, 4.5ms */
    16,                                                  /* Pulse width of head pulse phase 0, 9ms */
    1,                                                   /* Pulse width of tail pulse phase 1 */
    1,                                                   /* Pulse width of tail pulse phase 0 */
    35,                                                  /* Modulation phase 1 width, 37.7kHz, duty=1/3 */
    18,                                                  /* Modulation phase 0 width, 37.7kHz, duty=1/3 */
    1125                                                 /* Pulse width unit */
};

static IR_RxCfg_Type rxCfg = {
    IR_RX_NEC,                                           /* Set ir rx mode NEC */
    ENABLE,                                              /* Disable signal of input inverse */
    9000,                                                /* Pulse width threshold to trigger end condition, 4.5ms @2MHz source clock */
    3400,                                                /* Pulse width threshold for logic 0/1 detection, 1.7ms */
    DISABLE,                                             /* Disable input de-glitch function */
    0                                                    /* De-glitch function cycle count */
};


/*@} end of group IR_NEC_Private_Variables */

/** @defgroup  IR_NEC_Global_Variables
 *  @{
 */

/*@} end of group IR_NEC_Global_Variables */

/** @defgroup  IR_NEC_Private_Fun_Declaration
 *  @{
 */

/*@} end of group IR_NEC_Private_Fun_Declaration */

/** @defgroup  IR_NEC_Private_Functions
 *  @{
 */

/****************************************************************************//**
 * @brief  IR TX and RX gpio init
 *
 * @param  None
 *
 * @return None
 *
*******************************************************************************/
static void IR_GPIO_Init(void)
{
    blog_info("IR GPIO init\n");
    GLB_GPIO_Type gpioPins[2] = {IR_PIN_TX,IR_PIN_RX};
    GLB_GPIO_FUNC_Type gpioFuns[2] = {GPIO_FUN_ANALOG,GPIO_FUN_SWGPIO};
    
    /* IR LED driver must use gpio11 */
    GLB_GPIO_Func_Init(gpioFuns[0],&gpioPins[0],1);
    /* IR RX gpio should run in SWGPIO mode */
    GLB_GPIO_Func_Init(gpioFuns[1],&gpioPins[1],1);
}


/****************************************************************************//**
 * @brief  IR TX and RX init
 *
 * @param  None
 *
 * @return None
 *
*******************************************************************************/
static void IR_Init(void)
{
    /* IR gpio init */
    IR_GPIO_Init();
    
    /* Enable ir tx driver */
    GLB_IR_LED_Driver_Enable();
    
    /* Select ir rx gpio */
    GLB_IR_RX_GPIO_Sel(IR_PIN_RX);
    
    /* Disable ir before config */
    IR_Disable(IR_TXRX);

    /* IR tx init */
    IR_TxInit(&txCfg);
    IR_TxPulseWidthConfig(&txPWCfg);
    
    /* IR rx init */
    IR_RxInit(&rxCfg);
}


/****************************************************************************//**
 * @brief  IR TX and RX NEC mode case funtion
 *
 * @param  None
 *
 * @return SUCCESS or ERROR
 *
*******************************************************************************/
static BL_Err_Type IR_NEC_TR(void)
{
    uint32_t wdata = 0xE916FF00;
    uint32_t rdata = 0;
    
    /* Enable ir rx */
    IR_Enable(IR_RX);

    /* TX send command */
    IR_SendCommand(0,wdata);
    
    vTaskDelay(1000);
    /* Wait for rx interrupt */
    if (SET != IR_GetIntStatus(IR_INT_RX)){
        return ERROR;
    }
    
    /* Disable ir rx */
    IR_Disable(IR_RX);
    
    /* Clear rx interrupt */
    IR_ClrIntStatus(IR_INT_RX);
    
    /* Check ir rx receive data */
    blog_info("Data bit count: %d\n",IR_GetRxDataBitCount());
    rdata = IR_ReceiveData(IR_WORD_0);
    if(rdata != 0xE916FF00){
        blog_info("Received data: %x\n",rdata);
        return ERROR;
    }
    
    return SUCCESS;
}


/*@} end of group IR_NEC_Private_Functions */

/** @defgroup  IR_NEC_Public_Functions
 *  @{
 */

/****************************************************************************//**
 * @brief  IR NEC case main function
 *
 * @param  None
 *
 * @return None
 *
*******************************************************************************/
int main(void)
{
    blog_info("IR NEC CASE:\n");
    
    IR_Init();

    IR_Enable(IR_TX);

    for (;;) {
        if(SUCCESS!=IR_NEC_TR()){
            blog_error("sw sim fail\r\n");
        }
    }
}


/*@} end of group IR_NEC_Public_Functions */

/*@} end of group IR_NEC */

/*@} end of group BL602_Peripheral_Case */
