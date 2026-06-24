#include "blog.h"
#include <FreeRTOS.h>
#include <mqtt_client.h>
#include <stdio.h>
#include <task.h>
#include <vfs.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>

#define ROOTCERT_PATH "/romfs/rootcert.pem"
#define CLI_CERT_PATH "/romfs/ccert.crt"
#define CLI_KEY_PATH "/romfs/ckey.key"  

#define PUB_TOPIC "test/echo"
#define SUB_TOPIC "test/echo"


static int load_romfs_file(int index, char *out_buf, size_t *out_len)
{
    int fd = -1;
    switch (index) {
        case 0:
            fd = aos_open(ROOTCERT_PATH, 0);
            break;
        case 1:
            fd = aos_open(CLI_CERT_PATH, 0);
            break;
        case 2:
            fd = aos_open(CLI_KEY_PATH, 0);
            break;
        default:
            return -1;
    }

    if (fd < 0) {   
        blog_error("aos_open path[%d] failed", index);
        return -1;
    }

    ssize_t size = aos_lseek(fd, 0, SEEK_END);
    if (size < 0) {
        blog_error("aos_lseek SEEK_END failed");
        aos_close(fd);
        return -1;
    }
    aos_lseek(fd, 0, SEEK_SET);

    if (aos_read(fd, out_buf, size) != size) {

        aos_close(fd);
        return -1;
    }
    out_buf[size] = '\0';
    aos_close(fd);
    *out_len = size;
    return 0;
}

static void log_error_if_nonzero(const char *message, int error_code)
{
    if (error_code != 0)
    {
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
    switch ((axk_mqtt_event_id_t)event_id)
    {
    case MQTT_EVENT_CONNECTED:
        blog_info("MQTT_EVENT_CONNECTED");
        msg_id = axk_mqtt_client_subscribe(client, SUB_TOPIC, 0);
        blog_info("sent subscribe successful, msg_id=%d", msg_id);

        msg_id = axk_mqtt_client_publish(client, PUB_TOPIC, "data_3", 0, 1, 0);
        blog_info("sent publish successful, msg_id=%d", msg_id);
        break;
    case MQTT_EVENT_DISCONNECTED:
        blog_info("MQTT_EVENT_DISCONNECTED");
        break;

    case MQTT_EVENT_SUBSCRIBED:
        blog_info("MQTT_EVENT_SUBSCRIBED, msg_id=%d", event->msg_id);
        msg_id = axk_mqtt_client_publish(client, PUB_TOPIC, "data", 0, 0, 0);
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
        if (event->error_handle) {
            blog_info("error_type=%d, sock_errno=%d, tls_err=%d, tls_stack_err=%d, cert_verify=0x%x",
                      event->error_handle->error_type,
                      event->error_handle->axk_transport_sock_errno,
                      event->error_handle->axk_tls_last_axk_err,
                      event->error_handle->axk_tls_stack_err,
                      event->error_handle->axk_tls_cert_verify_flags);
            if (event->error_handle->error_type == MQTT_ERROR_TYPE_TCP_TRANSPORT) {
                log_error_if_nonzero("reported from axk-tls", event->error_handle->axk_tls_last_axk_err);
                log_error_if_nonzero("reported from tls stack", event->error_handle->axk_tls_stack_err);
                log_error_if_nonzero("captured as transport's socket errno", event->error_handle->axk_transport_sock_errno);
                blog_info("Last errno string (%s)", strerror(event->error_handle->axk_transport_sock_errno));
            } else if (event->error_handle->error_type == MQTT_ERROR_TYPE_CONNECTION_REFUSED) {
                blog_info("Connection refused, return_code=%d", event->error_handle->connect_return_code);
            }
        } else {
            blog_info("error_handle is NULL");
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
    char *ca_buf = malloc( sizeof(char)*2048);
    char *cli_buf = malloc( sizeof(char)*2048);
    char *key_buf = malloc( sizeof(char)*2048);
    memset(ca_buf, 0, sizeof(char)*2048);
    memset(cli_buf, 0, sizeof(char)*2048);
    memset(key_buf, 0, sizeof(char)*2048);
    size_t ca_len = 0, cli_len = 0, key_len = 0;
    if (load_romfs_file(0, ca_buf, &ca_len) != 0 ||
        load_romfs_file(1, cli_buf, &cli_len) != 0 ||
        load_romfs_file(2, key_buf, &key_len) != 0) {
        blog_error("Failed to load certificates from MEDIA");
        return;
    }
    blog_error("load_romfs_file success ca_len:%d, cli_len:%d, key_len:%d\r\n", ca_len, cli_len, key_len);
    axk_mqtt_client_config_t mqtt_cfg = {
        .uri = "mqtts://hostname.com:8883",
        .cert_pem = ca_buf,
        .cert_len = 0,
        .client_cert_pem = cli_buf,     // 双向认证：客户端证书
        .client_cert_len = 0,
        .client_key_pem = key_buf,      // 双向认证：客户端私钥
        .client_key_len = 0,
        .username = "123",
        .password = "12345678",
        .client_id = "11111111",
        .event_handle = event_cb,
    };

    axk_mqtt_client_handle_t client = axk_mqtt_client_init(&mqtt_cfg);
    if (client == NULL) {
        blog_error("[MQTT] axk_mqtt_client_init returned NULL! Check config/URI.");
        return;
    }
    blog_info("[MQTT] axk_mqtt_client_init OK, starting client...");
    axk_mqtt_client_start(client);

    // 注意：ca_buf / cli_buf / key_buf 需要在 client 生命周期内保持有效
    //（示例中未 free，实际可做 static 或在 deinit 时释放）
}
