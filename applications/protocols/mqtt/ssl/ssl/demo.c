#include "blog.h"
#include <FreeRTOS.h>
#include <mqtt_client.h>
#include <stdio.h>
#include <task.h>

#define EMQX_CA_CRT "-----BEGIN CERTIFICATE-----\r\n"                                      \
                    "MIIDrzCCApegAwIBAgIQCDvgVpBCRrGhdWrJWZHHSjANBgkqhkiG9w0BAQUFADBh\r\n" \
                    "MQswCQYDVQQGEwJVUzEVMBMGA1UEChMMRGlnaUNlcnQgSW5jMRkwFwYDVQQLExB3\r\n" \
                    "d3cuZGlnaWNlcnQuY29tMSAwHgYDVQQDExdEaWdpQ2VydCBHbG9iYWwgUm9vdCBD\r\n" \
                    "QTAeFw0wNjExMTAwMDAwMDBaFw0zMTExMTAwMDAwMDBaMGExCzAJBgNVBAYTAlVT\r\n" \
                    "MRUwEwYDVQQKEwxEaWdpQ2VydCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdpY2VydC5j\r\n" \
                    "b20xIDAeBgNVBAMTF0RpZ2lDZXJ0IEdsb2JhbCBSb290IENBMIIBIjANBgkqhkiG\r\n" \
                    "9w0BAQEFAAOCAQ8AMIIBCgKCAQEA4jvhEXLeqKTTo1eqUKKPC3eQyaKl7hLOllsB\r\n" \
                    "CSDMAZOnTjC3U/dDxGkAV53ijSLdhwZAAIEJzs4bg7/fzTtxRuLWZscFs3YnFo97\r\n" \
                    "nh6Vfe63SKMI2tavegw5BmV/Sl0fvBf4q77uKNd0f3p4mVmFaG5cIzJLv07A6Fpt\r\n" \
                    "43C/dxC//AH2hdmoRBBYMql1GNXRor5H4idq9Joz+EkIYIvUX7Q6hL+hqkpMfT7P\r\n" \
                    "T19sdl6gSzeRntwi5m3OFBqOasv+zbMUZBfHWymeMr/y7vrTC0LUq7dBMtoM1O/4\r\n" \
                    "gdW7jVg/tRvoSSiicNoxBN33shbyTApOB6jtSj1etX+jkMOvJwIDAQABo2MwYTAO\r\n" \
                    "BgNVHQ8BAf8EBAMCAYYwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQUA95QNVbR\r\n" \
                    "TLtm8KPiGxvDl7I90VUwHwYDVR0jBBgwFoAUA95QNVbRTLtm8KPiGxvDl7I90VUw\r\n" \
                    "DQYJKoZIhvcNAQEFBQADggEBAMucN6pIExIK+t1EnE9SsPTfrgT1eXkIoyQY/Esr\r\n" \
                    "hMAtudXH/vTBH1jLuG2cenTnmCmrEbXjcKChzUyImZOMkXDiqw8cvpOp/2PV5Adg\r\n" \
                    "06O/nVsJ8dWO41P0jmP6P6fbtGbfYmbW0W5BjfIttep3Sp+dWOIrWcBAI+0tKIJF\r\n" \
                    "PnlUkiaY4IBIqDfv8NZ5YBberOgOzW6sRBc4L0na4UU+Krk2U886UAb3LujEV0ls\r\n" \
                    "YSEY1QSteDwsOoBrp+uvFRTp2InBuThs4pFsiv9kuXclVzDAGySj4dzp30d8tbQk\r\n" \
                    "CAUw7C29C79Fv1C5qfPrmAESrciIxpg0X40KPMbp1ZWVbd4=\r\n"                 \
                    "-----END CERTIFICATE-----\r\n"

#define CLIENT_CRT "-----BEGIN CERTIFICATE-----\r\n"                                      \
                   "MIIDQTCCAikCFENtcB6pWXcmAqgDMngIthVBj3d0MA0GCSqGSIb3DQEBCwUAMGcx\r\n" \
                   "CzAJBgNVBAYTAkNOMRIwEAYDVQQIDAlHVUFOR0RPTkcxETAPBgNVBAcMCFNIRU5a\r\n" \
                   "SEVOMQswCQYDVQQKDAJOQTELMAkGA1UECwwCTkExFzAVBgNVBAMMDjExOS4yOS4x\r\n" \
                   "NDEuMTE4MB4XDTIyMDkwMjExNTkyM1oXDTMyMDgzMDExNTkyM1owUzELMAkGA1UE\r\n" \
                   "BhMCQ04xETAPBgNVBAgMCFpoZWppYW5nMREwDwYDVQQHDAhIYW5nemhvdTENMAsG\r\n" \
                   "kf0kfqWJatfP9xhwFdfnFbW6Tj4pqyo9hwQ5lVsd1t80jS0XK48ZFiLeRjaVsdqC\r\n" \
                   "AQ8AMIIBCgKCAQEA1/cimuVevDg+V/5h8p+vOcGRHR9HqCYJq1HU7viK6aYaN7F6\r\n" \
                   "cnbknPAK2qyyYT1dYWyOW2K4zx1QST1Wwn+7zGOgwvMXCoFmxqjAxOVr11lfFb8F\r\n" \
                   "J9O1oyZS+2BO8vvORP3F9xZJQZ1GEmijyMMRrRu7ucX4j7aqFsG8wSyDxFyRCMwd\r\n" \
                   "zJWaEmPZejAYoSozCZNAuJmxKn5PSDTxdLsjX8pGMeRYargyl5yj+gMJyX1u3p79\r\n" \
                   "EmePGXrZqslbYBEzXmzNhAUirM54hmI3u6OzLmsCrR5P1BpiAul7ECo6IMt07u28\r\n" \
                   "xPJr1wACp5CQrWh3uCdEJp09OEcc4v4j/HITRQIDAQABMA0GCSqGSIb3DQEBCwUA\r\n" \
                   "A4IBAQCNbLN+TtANHtKafs6WRQWQW9dNCgPE6fHn6mJ9PShMWAS0lI97Ftq3HZ1q\r\n" \
                   "fA5NW2Vmh0DYvAJuw8uUhDxoHeTdw02GeRCzaPsj33FTbpnhknHgec3DkMNgt/Oc\r\n" \
                   "ikA1SOfKEzFmFYfJ77Buv78NRBOi1wCG34Mnr7Jq39lOYiTk+Hh1pO3O6AWW7T+V\r\n" \
                   "14kMtx5dio3fyfDGkPRmurhD7S2++JpFo/XDl8CFwHvLtGIrmmCxD2X94EIPr9s1\r\n" \
                   "1P3JEEY/ua4zb4eoalsvW1k1dh/jg6+02xoAEliai08+wI0BjkrivfNRHPCQ2CWn\r\n" \
                   "apM7+Ys5+qb435fkdMj6oZnZX+VU\r\n"                                     \
                   "-----END CERTIFICATE-----\r\n"

#define CLIENT_KEY "-----BEGIN RSA PRIVATE KEY-----\r\n"                                  \
                   "MIIEpAIBAAKCAQEA1/cimuVevDg+V/5h8p+vOcGRHR9HqCYJq1HU7viK6aYaN7F6\r\n" \
                   "cnbknPAK2qyyYT1dYWyOW2K4zx1QST1Wwn+7zGOgwvMXCoFmxqjAxOVr11lfFb8F\r\n" \
                   "J9O1oyZS+2BO8vvORP3F9xZJQZ1GEmijyMMRrRu7ucX4j7aqFsG8wSyDxFyRCMwd\r\n" \
                   "zJWaEmPZejAYoSozCZNAuJmxKn5PSDTxdLsjX8pGMeRYargyl5yj+gMJyX1u3p79\r\n" \
                   "EmePGXrZqslbYBEzXmzNhAUirM54hmI3u6OzLmsCrR5P1BpiAul7ECo6IMt07u28\r\n" \
                   "xPJr1wACp5CQrWh3uCdEJp09OEcc4v4j/HITRQIDAQABAoIBAAllG+FHJybi/3tO\r\n" \
                   "eq5WWgYWMJzmtnRPK06DodK/hzOA4VUY6G3AVFOrcZ1vs9bdF4ncchjxo36HFO4K\r\n" \
                   "uBKAAghzMRQqBQ+U74am4rPuExHsNmG4zJ2d7SHq0eNTnjudzqxbqdgE5SzwjZLR\r\n" \
                   "cIaUTdmNAk6jmRuPY7jXtsFkkVriY3yWnE1LWRqv1ggmH567ZOBOTDx8eYMpt30+\r\n" \
                   "QY2GM0Piq2XeXfbmfSi2YDajoZGJgeSD86aZGzcq29b5h3MYY8NEcaxQTTYCCte+\r\n" \
                   "pGDbigPq21w49C0RYafh+EEiNBsTid+SiAq5pzkaRdcre5rqAQCqnl65ZgOIBD3f\r\n" \
                   "PaoYUIUCgYEA/aHtIqIo5SIV3twFSP61GU8aNKGfXV6IN7joReXxpwnKc4cyLSXl\r\n" \
                   "D0mD4YwV/HQpJYuofM3LxcnIBpO8t1cdU0V8wdmbiTpOpyTEj0atfQH9Z+2YWh8D\r\n" \
                   "2OtVb1HTw4o+jEkJYZPZjRjfpadi5JK66Wvpdzb91rZT4GzAu91BpPcCgYEA2fsz\r\n" \
                   "ToCRTntPQucQs7jQi4Xto8UF0isIFPWYvkEjYy+p3ZK+CWSSH1YKTzk7PkFjbEBj\r\n" \
                   "w6c5HtwJ1VmNi6UeAEYswELiJPU3GVMdmiKKBbvtzdVQlkFib3o0Z2m2KUBKjmVi\r\n" \
                   "XtmqhOG6z/xgyORjZO7NBGW4p+Ido43m40mpxqMCgYEAvU/g5WnuZmDTvD2zwDFF\r\n" \
                   "0XdGkyRUBGgr+pOM46dngQuAzkyKOkK/v3Ja+r4KJx45HCoq/8TIJYCgSbB6OsrO\r\n" \
                   "O7pxDWw0ePBJht6dzGev1M/oamtgvVvLDl1Rrr5/9sM4PpPBadDmoDeBr27KFNwk\r\n" \
                   "oVgHshEc1OfQoYHrNg5HEi8CgYBWQwl/xHM8WqH4ONasOLQWss5jI+H01OCi4roq\r\n" \
                   "eD6XztHrBFo9/1WwHu1/goeGUHwW57hTQgbhxnQBwSm5nIMt2pd1EkLKG1xNok2x\r\n" \
                   "pH94W3F1Jjh47bEVqoe4cOYMlwuqJEb0gDDx2x6Blj964J7Q34u0dMjJbzsJcWtw\r\n" \
                   "gMM1/wKBgQDKRsEapM6PWohiVqh+Oqg618b7PGPSNU4Ia7MartVprGRVGXVgOCfo\r\n" \
                   "sLrzJB6Qi+90h+I6UWtQqnjosycN85YLLkF5VM+dgrgYqJukoWwqSJr0PCj0opyE\r\n" \
                   "wLARUPdl18sv8X7e1+i1L1BOv1nlYHxmw+1tYwaZDoJQd1lyDg+sjA==\r\n"         \
                   "-----END RSA PRIVATE KEY-----\r\n"

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
        if (event->error_handle->error_type == MQTT_ERROR_TYPE_TCP_TRANSPORT)
        {
            log_error_if_nonzero("reported from axk-tls", event->error_handle->axk_tls_last_axk_err);
            log_error_if_nonzero("reported from tls stack", event->error_handle->axk_tls_stack_err);
            log_error_if_nonzero("captured as transport's socket errno", event->error_handle->axk_transport_sock_errno);
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
        .uri = "mqtts://broker.emqx.io:8883",
        .cert_pem = EMQX_CA_CRT,
        .cert_len = sizeof(EMQX_CA_CRT),
        // .client_cert_pem = CLIENT_CRT,
        // .client_key_pem = CLIENT_KEY,
        .username = "wb2-12f",
        .password = "12345678",
        .client_id = "Ai-Thinker-WB2",
        .event_handle = event_cb,
    };
    axk_mqtt_client_handle_t client = axk_mqtt_client_init(&mqtt_cfg);
    axk_mqtt_client_start(client);
}
