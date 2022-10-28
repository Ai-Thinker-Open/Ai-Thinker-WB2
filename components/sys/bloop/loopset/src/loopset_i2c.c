#include <FreeRTOS.h>
#include <task.h>
#include <stdio.h>
#include <stdlib.h>

#include <utils_debug.h>
#include <utils_log.h>
#include <blog.h>

#include <looprt.h>
#include <loopset.h>
#include <bl_gpio.h>
#include <loopset_i2c.h>
#include <bl_i2c.h>
#include <hal_i2c.h>
#include <aos/yloop.h>

static i2c_msg_t *gpstmsg;
static int glevent;
struct loop_evt_handler_holder {
    const struct loop_evt_handler handler;
};

static int _i2c_bloop_evt(struct loop_ctx *loop, const struct loop_evt_handler *handler, uint32_t *bitmap_evt, uint32_t *evt_type_map)
{                                                                                                                                    
    uint32_t map = *evt_type_map;

redo: if (map & EVT_MAP_INSERT_I2C_TRIGGER) {
          map &= (~EVT_MAP_INSERT_I2C_TRIGGER);
          i2c_insert_msgs_process(gpstmsg);
      } else if (map & EVT_MAP_NOTINSERT_I2C_TRIGGER){
          map &= (~EVT_MAP_NOTINSERT_I2C_TRIGGER);
          i2c_msgs_process(gpstmsg);
      } else if (map & EVT_MAP_POST_EVENT_I2C_TRIGGER) {
          map &= (~EVT_MAP_POST_EVENT_I2C_TRIGGER);
          if (glevent == EV_I2C_END_INT) {
              aos_post_event(EV_I2C, CODE_I2C_END, 0);
          } else if (glevent == EV_I2C_ARB_INT) {
              aos_post_event(EV_I2C, CODE_I2C_ARB, 0);
          } else if (glevent == EV_I2C_FER_INT) {
              aos_post_event(EV_I2C, CODE_I2C_FER, 0);
          } else if (glevent == EV_I2C_NAK_INT) {
              aos_post_event(EV_I2C, CODE_I2C_NAK, 0);
          } else {
          }
          
      } else {
          BL_ASSERT_ERROR(0 == map);
      }

      if (map) {
          goto redo;
      } 

      *evt_type_map = 0;

    return 0;
}

static int _i2c_bloop_msg(struct loop_ctx *loop, const struct loop_evt_handler *handler, struct loop_msg *msg)
{
    blog_debug("[I2C] [MSG] called with msg info\r\n");
    return 0;
}

int loopset_i2c_hook_on_looprt(void)
{
    static const struct loop_evt_handler_holder _i2c_bloop_handler_holder = {
        .handler = {
            .name = "I2C Trigger",
            .evt = _i2c_bloop_evt,
            .handle = _i2c_bloop_msg,
        },
      
    };

    return looprt_handler_register(&_i2c_bloop_handler_holder.handler, LOOPSET_I2C_PRIORITY);
}

void i2c_async_trigger(i2c_msg_t *pst, int flag)
{
    gpstmsg = pst;
    if (flag == NOT_INSERT_FLAG) {
         looprt_evt_notify_async(LOOPSET_I2C_PRIORITY, EVT_MAP_NOTINSERT_I2C_TRIGGER);
    } else if(flag == INSERT_FLAG){
        looprt_evt_notify_async(LOOPSET_I2C_PRIORITY, EVT_MAP_INSERT_I2C_TRIGGER);
    } else if (flag == POST_FLAG){
        glevent = gpstmsg->event;
        looprt_evt_notify_async_fromISR(LOOPSET_I2C_PRIORITY, EVT_MAP_POST_EVENT_I2C_TRIGGER);
    } else {
    }
    return;
}
