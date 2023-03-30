#include <FreeRTOS.h>
#include <task.h>

#include "bluetooth.h"
#include "ble_cli_cmds.h"
#if defined(CONFIG_BT_MESH)
#include "mesh_cli_cmds.h"
#if defined(CONFIG_BT_MESH_MODEL)
#if (defined(CONFIG_BT_MESH_MODEL_GEN_SRV) || defined(CONFIG_BT_MESH_MODEL_GEN_CLI))
#include "bfl_ble_mesh_generic_model_api.h"
#include "bl_gpio.h"
#endif
#if (defined(CONFIG_BT_MESH_MODEL_LIGHT_SRV) || defined(CONFIG_BT_MESH_MODEL_LIGHT_CLI))
#include "bfl_ble_mesh_lighting_model_api.h"
#endif
#include "bfl_ble_mesh_local_data_operation_api.h"
#include "bfl_ble_mesh_networking_api.h"
#else
#if (defined(CONFIG_BT_MESH_MODEL_GEN_SRV) || defined(CONFIG_BT_MESH_MODEL_GEN_CLI))
#include "gen_srv.h"
#include "bl_gpio.h"
#endif
#endif /* CONFIG_BT_MESH_MODEL */

#endif
#include "hci_driver.h"
#include "ble_lib_api.h"
#include "log.h"
#if defined(CONFIG_BLE_TP_SERVER)
#include "ble_tp_svc.h"
#endif

#if defined(CONFIG_BT_MESH)
#if defined(CONFIG_BT_MESH_MODEL_GEN_SRV)
//#define LED_PIN         (21)
#define LED_PIN         (5)
#define LED_PIN_PULLUP  (0)
#define LED_PIN_PULDONW (0)

void model_gen_cb(uint8_t value)
{
    bl_gpio_output_set(LED_PIN, value); 
}

#if defined(CONFIG_BT_MESH_MODEL)
static void example_handle_gen_onoff_msg(bfl_ble_mesh_model_t *model,
										 bfl_ble_mesh_msg_ctx_t *ctx,
										 bfl_ble_mesh_server_recv_gen_onoff_set_t *set)
{
	bfl_ble_mesh_gen_onoff_srv_t *srv = model->user_data;

	switch (ctx->recv_op) {
	case BFL_BLE_MESH_MODEL_OP_GEN_ONOFF_GET:
		bfl_ble_mesh_server_model_send_msg(model, ctx,
			BFL_BLE_MESH_MODEL_OP_GEN_ONOFF_STATUS, sizeof(srv->state.onoff), &srv->state.onoff);
		break;
	case BFL_BLE_MESH_MODEL_OP_GEN_ONOFF_SET:
	case BFL_BLE_MESH_MODEL_OP_GEN_ONOFF_SET_UNACK:
		if (set->op_en == false) {
			srv->state.onoff = set->onoff;
		} else {
			/* TODO: Delay and state transition */
			srv->state.onoff = set->onoff;
		}
        model_gen_cb(set->onoff);
		if (ctx->recv_op == BFL_BLE_MESH_MODEL_OP_GEN_ONOFF_SET) {
			bfl_ble_mesh_server_model_send_msg(model, ctx,
				BFL_BLE_MESH_MODEL_OP_GEN_ONOFF_STATUS, sizeof(srv->state.onoff), &srv->state.onoff);
		}
		bfl_ble_mesh_model_publish(model, BFL_BLE_MESH_MODEL_OP_GEN_ONOFF_STATUS,
			sizeof(srv->state.onoff), &srv->state.onoff, ROLE_NODE);
		break;
	default:
		break;
	}
}


static void example_ble_mesh_generic_server_cb(bfl_ble_mesh_generic_server_cb_event_t event,
                                               bfl_ble_mesh_generic_server_cb_param_t *param)
{
    bfl_ble_mesh_gen_onoff_srv_t *srv;
    printf("event 0x%02x, opcode 0x%04x, src 0x%04x, dst 0x%04x\n",
        event, param->ctx.recv_op, param->ctx.addr, param->ctx.recv_dst);

    switch (event) {
    case BFL_BLE_MESH_GENERIC_SERVER_STATE_CHANGE_EVT:
        printf("BFL_BLE_MESH_GENERIC_SERVER_STATE_CHANGE_EVT\n");
        if (param->ctx.recv_op == BFL_BLE_MESH_MODEL_OP_GEN_ONOFF_SET ||
            param->ctx.recv_op == BFL_BLE_MESH_MODEL_OP_GEN_ONOFF_SET_UNACK) {
            printf("onoff 0x%02x\n", param->value.state_change.onoff_set.onoff);
            model_gen_cb(param->value.state_change.onoff_set.onoff);
        }
        break;
    case BFL_BLE_MESH_GENERIC_SERVER_RECV_GET_MSG_EVT:
        printf("BFL_BLE_MESH_GENERIC_SERVER_RECV_GET_MSG_EVT\n");
        if (param->ctx.recv_op == BFL_BLE_MESH_MODEL_OP_GEN_ONOFF_GET) {
            srv = param->model->user_data;
            printf("onoff 0x%02x\n", srv->state.onoff);
            example_handle_gen_onoff_msg(param->model, &param->ctx, NULL);
        }
        break;
    case BFL_BLE_MESH_GENERIC_SERVER_RECV_SET_MSG_EVT:
        printf("BFL_BLE_MESH_GENERIC_SERVER_RECV_SET_MSG_EVT\n");
        if (param->ctx.recv_op == BFL_BLE_MESH_MODEL_OP_GEN_ONOFF_SET ||
            param->ctx.recv_op == BFL_BLE_MESH_MODEL_OP_GEN_ONOFF_SET_UNACK) {
            printf("onoff 0x%02x, tid 0x%02x\n", param->value.set.onoff.onoff, param->value.set.onoff.tid);
            if (param->value.set.onoff.op_en) {
                printf("trans_time 0x%02x, delay 0x%02x\n",
                    param->value.set.onoff.trans_time, param->value.set.onoff.delay);
            }
            example_handle_gen_onoff_msg(param->model, &param->ctx, &param->value.set.onoff);
        }
        break;
    default:
        printf( "Unknown Generic Server event 0x%02x\n", event);
        break;
    }
}
#endif/*CONFIG_BT_MESH_MODEL_GEN_SRV*/

#if defined(CONFIG_BT_MESH_MODEL_LIGHT_SRV)
static void example_handle_light_lgn_msg(bfl_ble_mesh_model_t *model,
										 bfl_ble_mesh_msg_ctx_t *ctx,
										 bfl_ble_mesh_server_recv_light_lightness_set_t *set)
{
	bfl_ble_mesh_light_lightness_srv_t *srv = model->user_data;

	switch (ctx->recv_op) {
	case BFL_BLE_MESH_MODEL_OP_LIGHT_LIGHTNESS_GET:
		bfl_ble_mesh_server_model_send_msg(model, ctx,
			BFL_BLE_MESH_MODEL_OP_LIGHT_LIGHTNESS_STATUS, sizeof(srv->state->lightness_actual), (uint8_t*)&srv->state->lightness_actual);
		break;
	case BFL_BLE_MESH_MODEL_OP_LIGHT_LIGHTNESS_SET:
	case BFL_BLE_MESH_MODEL_OP_LIGHT_LIGHTNESS_SET_UNACK:
		if (set->op_en == false) {
			srv->state->lightness_actual = set->lightness;
		} else {
			/* TODO: Delay and state transition */
			srv->state->lightness_actual = set->lightness;
		}
		if (ctx->recv_op == BFL_BLE_MESH_MODEL_OP_LIGHT_LIGHTNESS_SET) {
			bfl_ble_mesh_server_model_send_msg(model, ctx,
				BFL_BLE_MESH_MODEL_OP_LIGHT_LIGHTNESS_STATUS, sizeof(srv->state->lightness_actual), (uint8_t*)&srv->state->lightness_actual);
		}
		bfl_ble_mesh_model_publish(model, BFL_BLE_MESH_MODEL_OP_LIGHT_LIGHTNESS_STATUS,
			sizeof(srv->state->lightness_actual), (uint8_t*)&srv->state->lightness_actual, ROLE_NODE);
		break;
	default:
		break;
	}
}


static void example_ble_mesh_lighting_server_cb(bfl_ble_mesh_lighting_server_cb_event_t event,
			bfl_ble_mesh_lighting_server_cb_param_t *param)
{
    printf("event 0x%02x, opcode 0x%04x, src 0x%04x, dst 0x%04x\n",
        event, param->ctx.recv_op, param->ctx.addr, param->ctx.recv_dst);

    switch (event) {
    case BFL_BLE_MESH_LIGHTING_SERVER_STATE_CHANGE_EVT:
        printf("BFL_BLE_MESH_LIGHTING_SERVER_STATE_CHANGE_EVT\n");
        if (param->ctx.recv_op == BFL_BLE_MESH_MODEL_OP_LIGHT_LIGHTNESS_SET ||
            param->ctx.recv_op == BFL_BLE_MESH_MODEL_OP_LIGHT_LIGHTNESS_SET_UNACK) {
            printf("Light lightness [%x]\n", param->value.state_change.lightness_set.lightness);
        }
		else if (param->ctx.recv_op == BFL_BLE_MESH_MODEL_OP_LIGHT_CTL_SET ||
            param->ctx.recv_op == BFL_BLE_MESH_MODEL_OP_LIGHT_CTL_SET_UNACK) {
            printf("Light ctl ln[%x]tp[%x]uv[%x]\n", 
				param->value.state_change.ctl_set.lightness,
				param->value.state_change.ctl_set.temperature,
				param->value.state_change.ctl_set.delta_uv);
        }
		else if (param->ctx.recv_op == BFL_BLE_MESH_MODEL_OP_LIGHT_HSL_SET ||
	        param->ctx.recv_op == BFL_BLE_MESH_MODEL_OP_LIGHT_HSL_SET_UNACK) {
	        printf("Light hsl l[%x]h[%x]s[%x]\n", 
				param->value.state_change.hsl_set.lightness,
				param->value.state_change.hsl_set.hue,
				param->value.state_change.hsl_set.saturation);
        }
        break;
    case BFL_BLE_MESH_LIGHTING_SERVER_RECV_GET_MSG_EVT:
        printf("BFL_BLE_MESH_LIGHTING_SERVER_RECV_GET_MSG_EVT\n");
        if (param->ctx.recv_op == BFL_BLE_MESH_MODEL_OP_LIGHT_LIGHTNESS_GET) {
            bfl_ble_mesh_light_lightness_srv_t *srv = param->model->user_data;
            printf("onoff 0x%02x\n", srv->state->lightness_actual);
            example_handle_light_lgn_msg(param->model, &param->ctx, NULL);
        }
		else if (param->ctx.recv_op == BFL_BLE_MESH_MODEL_OP_LIGHT_CTL_GET) {
            bfl_ble_mesh_light_ctl_srv_t *srv = param->model->user_data;
            printf("Light ctl ln[%x]ln_t[%x] tp[%x]tp_t[%x] uv[%x]uv_t[%x]\n", 
            		srv->state->lightness, srv->state->target_lightness,
            		srv->state->temperature, srv->state->target_temperature,
            		srv->state->delta_uv, srv->state->target_delta_uv);
            //example_handle_gen_onoff_msg(param->model, &param->ctx, NULL);
        }
		else if (param->ctx.recv_op == BFL_BLE_MESH_MODEL_OP_LIGHT_HSL_GET) {
            bfl_ble_mesh_light_hsl_srv_t *srv = param->model->user_data;
            printf("Light ctl l[%x]l_t[%x] h[%x]h_t[%x] s[%x]s_t[%x]\n", 
            		srv->state->lightness, srv->state->target_lightness,
            		srv->state->hue, srv->state->target_hue,
            		srv->state->saturation, srv->state->target_saturation);
            //example_handle_gen_onoff_msg(param->model, &param->ctx, NULL);
        }
        break;
    case BFL_BLE_MESH_LIGHTING_SERVER_RECV_SET_MSG_EVT:
        printf("BFL_BLE_MESH_GENERIC_SERVER_RECV_SET_MSG_EVT\n");
        if (param->ctx.recv_op == BFL_BLE_MESH_MODEL_OP_LIGHT_LIGHTNESS_SET ||
            param->ctx.recv_op == BFL_BLE_MESH_MODEL_OP_LIGHT_LIGHTNESS_SET_UNACK) {
            printf("Light lightness [%x], tid[%x]\n", param->value.set.lightness.lightness, param->value.set.lightness.tid);
            if (param->value.set.lightness.op_en) {
                printf("trans_time [%x], delay [%x]\n",
                    param->value.set.lightness.trans_time, param->value.set.lightness.delay);
            }
            example_handle_light_lgn_msg(param->model, &param->ctx, &param->value.set.lightness);
        }
		else if (param->ctx.recv_op == BFL_BLE_MESH_MODEL_OP_LIGHT_CTL_SET ||
            param->ctx.recv_op == BFL_BLE_MESH_MODEL_OP_LIGHT_CTL_SET_UNACK) {
            printf("Light ctl ln[%x] tp[%d] uv[%x] tid[%x]\n", 
				param->value.set.ctl.lightness,
				param->value.set.ctl.temperature,
				param->value.set.ctl.delta_uv,
				param->value.set.ctl.tid);
            if (param->value.set.ctl.op_en) {
                printf("trans_time [%x], delay [%x]\n",
                    param->value.set.ctl.trans_time, param->value.set.ctl.delay);
            }
            //example_handle_gen_onoff_msg(param->model, &param->ctx, &param->value.set.onoff);
        }
		else if (param->ctx.recv_op == BFL_BLE_MESH_MODEL_OP_LIGHT_HSL_SET ||
            param->ctx.recv_op == BFL_BLE_MESH_MODEL_OP_LIGHT_HSL_SET_UNACK) {
            printf("Light hsl l[%x] h[%d] s[%x] tid[%x]\n", 
				param->value.set.hsl.lightness,
				param->value.set.hsl.hue,
				param->value.set.hsl.saturation,
				param->value.set.hsl.tid);
            if (param->value.set.hsl.op_en) {
                printf("trans_time 0x%02x, delay 0x%02x\n",
                    param->value.set.hsl.trans_time, param->value.set.hsl.delay);
            }
            //example_handle_gen_onoff_msg(param->model, &param->ctx, &param->value.set.onoff);
        }
        break;
    default:
        printf( "Unknown Server event opcode[%x] 0x%02x", param->ctx.recv_op, event);
        break;
    }
}
#endif /*CONFIG_BT_MESH_MODEL_LIGHT_SRV*/
#endif /* CONFIG_BT_MESH_MODEL */
#endif /*CONFIG_BT_MESH*/

void bt_enable_cb(int err)
{
    if (!err) {     
#ifdef CONFIG_BT_STACK_CLI 
		ble_cli_register();
#if defined(CONFIG_BT_STACK_PTS)
        pts_cli_register();
#endif
#endif /* CONFIG_BT_STACK_CLI */

#if defined(CONFIG_BT_MESH)
        blemesh_cli_register();
#if defined(CONFIG_BT_MESH_MODEL)
#if defined(CONFIG_BT_MESH_MODEL_GEN_SRV)
        bl_gpio_enable_output(LED_PIN, LED_PIN_PULLUP, LED_PIN_PULDONW);	
		bfl_ble_mesh_register_generic_server_callback(example_ble_mesh_generic_server_cb);
#endif
#if defined(CONFIG_BT_MESH_MODEL_LIGHT_SRV)
		bfl_ble_mesh_register_lighting_server_callback(example_ble_mesh_lighting_server_cb);
#endif
#else
		bl_gpio_enable_output(LED_PIN, LED_PIN_PULLUP, LED_PIN_PULDONW);
		mesh_gen_srv_callback_register(model_gen_cb);
#endif /* CONFIG_BT_MESH_MODEL */
#endif

#if defined(CONFIG_BLE_TP_SERVER)
        ble_tp_init();
#endif
    }
}

void ble_stack_start(void)
{
     // Initialize BLE controller
    ble_controller_init(configMAX_PRIORITIES - 1);
    // Initialize BLE Host stack
    hci_driver_init();
    bt_enable(bt_enable_cb);
}
