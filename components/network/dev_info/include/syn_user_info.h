/**
 * @file        syn_user_info.h
 * @brief
 * @author      Jimmy
 * @version     v1.0.0
 * @date        2022-07-29
 * 
 * @copyright   Copyright (c) 2022 Shenzhen Ai-Thinker Technology Co., Ltd. All Rights Reserved.
 * 
 * Disclaimer:  This program is for informational purposes only, please keep author information and source code license.
 * 
 */

#ifndef __SYN_USER_INFO__
#define __SYN_USER_INFO__

#include "stdint.h"

#ifdef __cplusplus
extern "C"
{
#endif

/**
 * @brief Authentication status event enumeration
 */
enum
{
    SYN_EVT_INIT_INFO,  /**< Authentication information is being initialized */
    SYN_EVT_PROCESSING, /**< Authentication data processing*/
    SYN_EVT_COMPLETE,   /**< Authentication completed */
};

/**
 * @brief Event callback message structure
 */
typedef struct
{
    uint8_t state; /**< Status report, @see DEV_STA_E*/
    void *data;    /**< context data*/
} Event_Msg_t;

typedef void (*syn_evt_reg_t)(uint8_t event, Event_Msg_t *pMsg);

/**
 * @brief Synthesized user information
 * @param  syn_evt_cb Callback function to be registered
 * @param  sta finished condition
 * @return uint8_t 
 */
uint8_t syn_user_info(syn_evt_reg_t syn_evt_cb, uint8_t * sta);

#ifdef __cplusplus
}
#endif

#endif //__SYN_USER_INFO__ 
/************************ Copyright (c) 2022 Shenzhen Ai-Thinker Technology Co., Ltd. ************************/
