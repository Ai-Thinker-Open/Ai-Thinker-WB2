#include <stdio.h>
#include <FreeRTOS.h>
#include <task.h>
#include <cli.h>

#include <esp_log.h>
#include <esp_tls.h>
#include <mqtt_client.h>

#include "demo.h"

static const char *TAG = "MQTT_EXAMPLE";

#define BROKER_URI_TCP "mqtt://mqtt.eclipseprojects.io"
#define BROKER_URI_SSL "mqtts://mqtt.eclipseprojects.io:8883"
#define BROKER_URI_WS "ws://mqtt.eclipseprojects.io:80/mqtt"
#define BROKER_URI_WSS "wss://mqtt.eclipseprojects.io:443/mqtt"
#define BROKER_URI_SSL_PSK "mqtts://mqttsserver"
// Certificate for SSL/WSS demo. mqtt.eclipseprojects.io is using same certificate for two protocols.
// This certificate can be obtained via command: openssl s_client -showcerts -connect mqtt.eclipseprojects.io:8883 2>/dev/null </dev/null | sed -n "1,/Root CA/d;/BEGIN/,/END/p" | tr -d '\n'
#define BROKER_CERTIFICATE "<FIXME>"
static const char *server_crt = "-----BEGIN CERTIFICATE-----\n" BROKER_CERTIFICATE "\n-----END CERTIFICATE-----";

#define BROKER_URI_SSL_MUTUAL_AUTH "mqtts://mqttserver"
// client key, crt, ca crt for SSL mutual authentication demo
#define CLIENT_KEY "-----BEGIN RSA PRIVATE KEY-----\n" \
"<FIXME>" \
"\n-----END RSA PRIVATE KEY----- "
#define CLIENT_CRT "-----BEGIN CERTIFICATE-----\n" \
"<FIXME>" \
"\n-----END CERTIFICATE-----"
#define CA_CRT "-----BEGIN CERTIFICATE-----\n" \
"<FIXME>" \
"\n-----END CERTIFICATE-----"

/*
 * Define psk key and hint as defined in mqtt broker
 * example for mosquitto server, content of psk_file:
 * hint:BAD123
 *
 */
static const uint8_t s_key[] = { 0xBA, 0xD1, 0x23 };

static const psk_hint_key_t psk_hint_key = {
    .key = s_key,
    .key_size = sizeof(s_key),
    .hint = "hint"
};
static void log_error_if_nonzero(const char *message, int error_code)
{
    if (error_code != 0) {
        ESP_LOGE(TAG, "Last error %s: 0x%x", message, error_code);
    }
}

static esp_err_t event_cb(esp_mqtt_event_handle_t event)
{
    int32_t event_id;
    esp_mqtt_client_handle_t client = event->client;

    event_id = event->event_id;
    ESP_LOGD(TAG, "Event dispatched, event_id=%d", event_id);
    int msg_id;
    switch ((esp_mqtt_event_id_t)event_id) {
    case MQTT_EVENT_CONNECTED:
        ESP_LOGI(TAG, "MQTT_EVENT_CONNECTED");
        msg_id = esp_mqtt_client_publish(client, "/topic/qos1", "data_3", 0, 1, 0);
        ESP_LOGI(TAG, "sent publish successful, msg_id=%d", msg_id);

        msg_id = esp_mqtt_client_subscribe(client, "/topic/qos0", 0);
        ESP_LOGI(TAG, "sent subscribe successful, msg_id=%d", msg_id);

        msg_id = esp_mqtt_client_subscribe(client, "/topic/qos1", 1);
        ESP_LOGI(TAG, "sent subscribe successful, msg_id=%d", msg_id);

        msg_id = esp_mqtt_client_unsubscribe(client, "/topic/qos1");
        ESP_LOGI(TAG, "sent unsubscribe successful, msg_id=%d", msg_id);
        break;
    case MQTT_EVENT_DISCONNECTED:
        ESP_LOGI(TAG, "MQTT_EVENT_DISCONNECTED");
        break;

    case MQTT_EVENT_SUBSCRIBED:
        ESP_LOGI(TAG, "MQTT_EVENT_SUBSCRIBED, msg_id=%d", event->msg_id);
        msg_id = esp_mqtt_client_publish(client, "/topic/qos0", "data", 0, 0, 0);
        ESP_LOGI(TAG, "sent publish successful, msg_id=%d", msg_id);
        break;
    case MQTT_EVENT_UNSUBSCRIBED:
        ESP_LOGI(TAG, "MQTT_EVENT_UNSUBSCRIBED, msg_id=%d", event->msg_id);
        break;
    case MQTT_EVENT_PUBLISHED:
        ESP_LOGI(TAG, "MQTT_EVENT_PUBLISHED, msg_id=%d", event->msg_id);
        break;
    case MQTT_EVENT_DATA:
        ESP_LOGI(TAG, "MQTT_EVENT_DATA");
        printf("TOPIC=%.*s\r\n", event->topic_len, event->topic);
        printf("DATA=%.*s\r\n", event->data_len, event->data);
        break;
    case MQTT_EVENT_ERROR:
        ESP_LOGI(TAG, "MQTT_EVENT_ERROR");
        if (event->error_handle->error_type == MQTT_ERROR_TYPE_TCP_TRANSPORT) {
            log_error_if_nonzero("reported from esp-tls", event->error_handle->esp_tls_last_esp_err);
            log_error_if_nonzero("reported from tls stack", event->error_handle->esp_tls_stack_err);
            log_error_if_nonzero("captured as transport's socket errno",  event->error_handle->esp_transport_sock_errno);
            ESP_LOGI(TAG, "Last errno string (%s)", strerror(event->error_handle->esp_transport_sock_errno));
        }
        break;
    default:
        ESP_LOGI(TAG, "Other event id:%d", event->event_id);
        break;
    }
    return ESP_OK;
}

#define IS_MODE(cmd) (!strcmp(argv[1], cmd))

static void cmd_mqtt(char *buf, int len, int argc, char **argv)
{
    esp_mqtt_client_config_t mqtt_cfg = {
        .uri = BROKER_URI_TCP,
        .event_handle = event_cb,
    };

    if (argc > 1) {
        if (IS_MODE("tcp")) {
            goto tcp;
        } else if (IS_MODE("ssl")) {
            ESP_LOGI(TAG, "Running SSL demo");
            mqtt_cfg.uri = BROKER_URI_SSL;
            mqtt_cfg.cert_pem = server_crt;
        } else if (IS_MODE("ws")) {
            ESP_LOGI(TAG, "Running ws demo");
            mqtt_cfg.uri = BROKER_URI_WS;
        } else if (IS_MODE("wss")) {
            ESP_LOGI(TAG, "Running wss demo");
            mqtt_cfg.uri = BROKER_URI_WSS;
            mqtt_cfg.cert_pem = server_crt;
        } else if (IS_MODE("psk")) {
            ESP_LOGI(TAG, "Running SSL PSK demo");
            mqtt_cfg.uri = BROKER_URI_SSL_PSK;
            mqtt_cfg.psk_hint_key = &psk_hint_key;
        } else if (IS_MODE("ssl_mutual")) {
            ESP_LOGI(TAG, "Running SSL mutual authentication demo");
            mqtt_cfg.uri = BROKER_URI_SSL_MUTUAL_AUTH;
            mqtt_cfg.client_cert_pem = CLIENT_CRT;
            mqtt_cfg.client_key_pem = CLIENT_KEY;
            mqtt_cfg.cert_pem = CA_CRT;
        } else {
            // Unknown mode, run default
            goto tcp;
        }
    } else {
tcp:
        ESP_LOGI(TAG, "Running TCP demo");
    }
    esp_mqtt_client_handle_t client = esp_mqtt_client_init(&mqtt_cfg);
    esp_mqtt_client_start(client);
}


// STATIC_CLI_CMD_ATTRIBUTE makes this(these) command(s) static
const static struct cli_command cmds_user[] STATIC_CLI_CMD_ATTRIBUTE = {
    {"mqtt", "demo mqtt client. Usage: mqtt [tcp|ssl|ws|wss|psk|ssl_mutual]", cmd_mqtt},
};

int mqtt_client_cli_init(void)
{
    // static command(s) do NOT need to call aos_cli_register_command(s) to register.
    // However, calling aos_cli_register_command(s) here is OK but is of no effect as cmds_user are included in cmds list.
    // XXX NOTE: Calling this *empty* function is necessary to make cmds_user in this file to be kept in the final link.
    //return aos_cli_register_commands(cmds_user, sizeof(cmds_user)/sizeof(cmds_user[0]));
    return 0;
}
