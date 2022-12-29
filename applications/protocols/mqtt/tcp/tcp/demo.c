#include <stdio.h>
#include <FreeRTOS.h>
#include <task.h>
#include <mqtt_client.h>
#include "blog.h"

static void log_error_if_nonzero(const char *message, int error_code)
{
    if (error_code != 0) {
        blog_error("Last error %s: 0x%x", message, error_code);
    }
}

static axk_err_t event_cb(axk_mqtt_event_handle_t event)
{
    int32_t event_id;
    axk_mqtt_client_handle_t client = event->client;

    event_id = event->event_id;
    blog_debug("Event dispatched, event_id=%d", event_id);
    int msg_id;
    switch ((axk_mqtt_event_id_t)event_id) {
    case MQTT_EVENT_CONNECTED:
        blog_info("MQTT_EVENT_CONNECTED");
        msg_id = axk_mqtt_client_publish(client, "/topic/qos1", "data_3", 0, 1, 0);
        blog_info("sent publish successful, msg_id=%d", msg_id);

        msg_id = axk_mqtt_client_subscribe(client, "/topic/qos0", 0);
        blog_info("sent subscribe successful, msg_id=%d", msg_id);

        msg_id = axk_mqtt_client_subscribe(client, "/topic/qos1", 1);
        blog_info("sent subscribe successful, msg_id=%d", msg_id);

        msg_id = axk_mqtt_client_unsubscribe(client, "/topic/qos1");
        blog_info("sent unsubscribe successful, msg_id=%d", msg_id);
        break;
    case MQTT_EVENT_DISCONNECTED:
        blog_info("MQTT_EVENT_DISCONNECTED");
        break;

    case MQTT_EVENT_SUBSCRIBED:
        blog_info("MQTT_EVENT_SUBSCRIBED, msg_id=%d", event->msg_id);
        msg_id = axk_mqtt_client_publish(client, "/topic/qos0", "data", 0, 0, 0);
        blog_info("sent publish successful, msg_id=%d", msg_id);
        break;
    case MQTT_EVENT_UNSUBSCRIBED:
        blog_info("MQTT_EVENT_UNSUBSCRIBED, msg_id=%d", event->msg_id);
        break;
    case MQTT_EVENT_PUBLISHED:
        blog_info("MQTT_EVENT_PUBLISHED, msg_id=%d", event->msg_id);
        break;
    case MQTT_EVENT_DATA:
        blog_info("MQTT_EVENT_DATA");
        printf("TOPIC=%.*s\r\n", event->topic_len, event->topic);
        printf("DATA=%.*s\r\n", event->data_len, event->data);
        break;
    case MQTT_EVENT_ERROR:
        blog_info("MQTT_EVENT_ERROR");
        if (event->error_handle->error_type == MQTT_ERROR_TYPE_TCP_TRANSPORT) {
            log_error_if_nonzero("reported from axk-tls", event->error_handle->axk_tls_last_axk_err);
            log_error_if_nonzero("reported from tls stack", event->error_handle->axk_tls_stack_err);
            log_error_if_nonzero("captured as transport's socket errno",  event->error_handle->axk_transport_sock_errno);
            blog_info("Last errno string (%s)", strerror(event->error_handle->axk_transport_sock_errno));
        }
        break;
    default:
        blog_info("Other event id:%d", event->event_id);
        break;
    }
    return AXK_OK;
}

void mqtt_start(void)
{
    axk_mqtt_client_config_t mqtt_cfg = {
        .uri = "mqtt://mqtt.eclipseprojects.io",
        .event_handle = event_cb,
    };
    axk_mqtt_client_handle_t client = axk_mqtt_client_init(&mqtt_cfg);
    axk_mqtt_client_start(client);
}
