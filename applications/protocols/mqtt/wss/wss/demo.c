#include <stdio.h>
#include <FreeRTOS.h>
#include <task.h>
#include <mqtt_client.h>
#include "blog.h"

#define CA_CRT "-----BEGIN CERTIFICATE-----\r\n"\
"MIIDrzCCApegAwIBAgIUAoT5V7wISewRX8qgJvOdv8CTrRcwDQYJKoZIhvcNAQEL\r\n"\
"BQAwZzELMAkGA1UEBhMCQ04xEjAQBgNVBAgMCUdVQU5HRE9ORzERMA8GA1UEBwwI\r\n"\
"U0hFTlpIRU4xCzAJBgNVBAoMAk5BMQswCQYDVQQLDAJOQTEXMBUGA1UEAwwOMTE5\r\n"\
"LjI5LjE0MS4xMTgwHhcNMjIwOTAyMTE1MzUzWhcNMzIwODMwMTE1MzUzWjBnMQsw\r\n"\
"CQYDVQQGEwJDTjESMBAGA1UECAwJR1VBTkdET05HMREwDwYDVQQHDAhTSEVOWkhF\r\n"\
"TjELMAkGA1UECgwCTkExCzAJBgNVBAsMAk5BMRcwFQYDVQQDDA4xMTkuMjkuMTQx\r\n"\
"LjExODCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALq6wmlbpXuusfRn\r\n"\
"xWycdmaqpqOZkSNM34DPR/4Odwrl8+20AgsNkfC7JXOUjUBslf7BkNkjJD0E6oKC\r\n"\
"L1cI/KztSwKhiUQtURJaFodP2ExmSPNgWysgTLwq+dWuYGE7+RHToSW+xS9V8ttD\r\n"\
"qz+NxS8vtyMKWAqNVHu9x7UBxJ5qPCEIe9R+mUR212AgEedBl8d1LIPqqZ3iYmGB\r\n"\
"xYvJgeO5Fdzl8h28oWCWk23xgLSWmR3dyGVAzNi5HdV4uc1XlekpfPaR/4n6gN7W\r\n"\
"Ky668vViNBX/vbfTqm/dYGBhVlIBbm2T8uEadjiR63MyViuc7Xju8hPzpqXRv/zW\r\n"\
"pw7QJekCAwEAAaNTMFEwHQYDVR0OBBYEFOTafkqTagK0sdPygdiVnsnkdiQ4MB8G\r\n"\
"A1UdIwQYMBaAFOTafkqTagK0sdPygdiVnsnkdiQ4MA8GA1UdEwEB/wQFMAMBAf8w\r\n"\
"DQYJKoZIhvcNAQELBQADggEBAJvEP3hL1xJCdRQvTGAg1ijRIU5pJNEzbOrAIo1R\r\n"\
"aW6ULPwD6/CSZ3dSrO+myHMT70f8iS1brQ3SG7Xgwd+3H7bK9OMJIsZy0Ti4qRl4\r\n"\
"yLpYoDj4smm68bNkvag4H5WbbyK7V+SQpjWCCQOG398clzCR/HT+f5GjlSEC/jz8\r\n"\
"sQgevc2+Pw5AAMm0vuOnSH/Ve8xnAZatQZrBk/bojnNWu+TqTOrdufXpdZafxL7j\r\n"\
"2SlPiwYHoXs+ackh9YyxTL0Ti1HjP6PB7SKwm3U51xIfPagoQzxISsKTYC2TRsfo\r\n"\
"95Wicf6x+3rdHF7dAZmRJP0JJe+GLAB45wFtOERwHkSpT4I=\r\n"\
"-----END CERTIFICATE-----\r\n"

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
        .uri="wss://mqtt.eclipseprojects.io:443/mqtt",
        .cert_pem=CA_CRT,
        .event_handle = event_cb,
    };
    axk_mqtt_client_handle_t client = axk_mqtt_client_init(&mqtt_cfg);
    axk_mqtt_client_start(client);
}
