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

#define CLIENT_CRT "-----BEGIN CERTIFICATE-----\r\n"\
"MIIDQTCCAikCFENtcB6pWXcmAqgDMngIthVBj3d0MA0GCSqGSIb3DQEBCwUAMGcx\r\n"\
"CzAJBgNVBAYTAkNOMRIwEAYDVQQIDAlHVUFOR0RPTkcxETAPBgNVBAcMCFNIRU5a\r\n"\
"SEVOMQswCQYDVQQKDAJOQTELMAkGA1UECwwCTkExFzAVBgNVBAMMDjExOS4yOS4x\r\n"\
"NDEuMTE4MB4XDTIyMDkwMjExNTkyM1oXDTMyMDgzMDExNTkyM1owUzELMAkGA1UE\r\n"\
"BhMCQ04xETAPBgNVBAgMCFpoZWppYW5nMREwDwYDVQQHDAhIYW5nemhvdTENMAsG\r\n"\
"kf0kfqWJatfP9xhwFdfnFbW6Tj4pqyo9hwQ5lVsd1t80jS0XK48ZFiLeRjaVsdqC\r\n"\
"AQ8AMIIBCgKCAQEA1/cimuVevDg+V/5h8p+vOcGRHR9HqCYJq1HU7viK6aYaN7F6\r\n"\
"cnbknPAK2qyyYT1dYWyOW2K4zx1QST1Wwn+7zGOgwvMXCoFmxqjAxOVr11lfFb8F\r\n"\
"J9O1oyZS+2BO8vvORP3F9xZJQZ1GEmijyMMRrRu7ucX4j7aqFsG8wSyDxFyRCMwd\r\n"\
"zJWaEmPZejAYoSozCZNAuJmxKn5PSDTxdLsjX8pGMeRYargyl5yj+gMJyX1u3p79\r\n"\
"EmePGXrZqslbYBEzXmzNhAUirM54hmI3u6OzLmsCrR5P1BpiAul7ECo6IMt07u28\r\n"\
"xPJr1wACp5CQrWh3uCdEJp09OEcc4v4j/HITRQIDAQABMA0GCSqGSIb3DQEBCwUA\r\n"\
"A4IBAQCNbLN+TtANHtKafs6WRQWQW9dNCgPE6fHn6mJ9PShMWAS0lI97Ftq3HZ1q\r\n"\
"fA5NW2Vmh0DYvAJuw8uUhDxoHeTdw02GeRCzaPsj33FTbpnhknHgec3DkMNgt/Oc\r\n"\
"ikA1SOfKEzFmFYfJ77Buv78NRBOi1wCG34Mnr7Jq39lOYiTk+Hh1pO3O6AWW7T+V\r\n"\
"14kMtx5dio3fyfDGkPRmurhD7S2++JpFo/XDl8CFwHvLtGIrmmCxD2X94EIPr9s1\r\n"\
"1P3JEEY/ua4zb4eoalsvW1k1dh/jg6+02xoAEliai08+wI0BjkrivfNRHPCQ2CWn\r\n"\
"apM7+Ys5+qb435fkdMj6oZnZX+VU\r\n"\
"-----END CERTIFICATE-----\r\n"

#define CLIENT_KEY "-----BEGIN RSA PRIVATE KEY-----\r\n"\
"MIIEpAIBAAKCAQEA1/cimuVevDg+V/5h8p+vOcGRHR9HqCYJq1HU7viK6aYaN7F6\r\n"\
"cnbknPAK2qyyYT1dYWyOW2K4zx1QST1Wwn+7zGOgwvMXCoFmxqjAxOVr11lfFb8F\r\n"\
"J9O1oyZS+2BO8vvORP3F9xZJQZ1GEmijyMMRrRu7ucX4j7aqFsG8wSyDxFyRCMwd\r\n"\
"zJWaEmPZejAYoSozCZNAuJmxKn5PSDTxdLsjX8pGMeRYargyl5yj+gMJyX1u3p79\r\n"\
"EmePGXrZqslbYBEzXmzNhAUirM54hmI3u6OzLmsCrR5P1BpiAul7ECo6IMt07u28\r\n"\
"xPJr1wACp5CQrWh3uCdEJp09OEcc4v4j/HITRQIDAQABAoIBAAllG+FHJybi/3tO\r\n"\
"eq5WWgYWMJzmtnRPK06DodK/hzOA4VUY6G3AVFOrcZ1vs9bdF4ncchjxo36HFO4K\r\n"\
"uBKAAghzMRQqBQ+U74am4rPuExHsNmG4zJ2d7SHq0eNTnjudzqxbqdgE5SzwjZLR\r\n"\
"cIaUTdmNAk6jmRuPY7jXtsFkkVriY3yWnE1LWRqv1ggmH567ZOBOTDx8eYMpt30+\r\n"\
"QY2GM0Piq2XeXfbmfSi2YDajoZGJgeSD86aZGzcq29b5h3MYY8NEcaxQTTYCCte+\r\n"\
"pGDbigPq21w49C0RYafh+EEiNBsTid+SiAq5pzkaRdcre5rqAQCqnl65ZgOIBD3f\r\n"\
"PaoYUIUCgYEA/aHtIqIo5SIV3twFSP61GU8aNKGfXV6IN7joReXxpwnKc4cyLSXl\r\n"\
"D0mD4YwV/HQpJYuofM3LxcnIBpO8t1cdU0V8wdmbiTpOpyTEj0atfQH9Z+2YWh8D\r\n"\
"2OtVb1HTw4o+jEkJYZPZjRjfpadi5JK66Wvpdzb91rZT4GzAu91BpPcCgYEA2fsz\r\n"\
"ToCRTntPQucQs7jQi4Xto8UF0isIFPWYvkEjYy+p3ZK+CWSSH1YKTzk7PkFjbEBj\r\n"\
"w6c5HtwJ1VmNi6UeAEYswELiJPU3GVMdmiKKBbvtzdVQlkFib3o0Z2m2KUBKjmVi\r\n"\
"XtmqhOG6z/xgyORjZO7NBGW4p+Ido43m40mpxqMCgYEAvU/g5WnuZmDTvD2zwDFF\r\n"\
"0XdGkyRUBGgr+pOM46dngQuAzkyKOkK/v3Ja+r4KJx45HCoq/8TIJYCgSbB6OsrO\r\n"\
"O7pxDWw0ePBJht6dzGev1M/oamtgvVvLDl1Rrr5/9sM4PpPBadDmoDeBr27KFNwk\r\n"\
"oVgHshEc1OfQoYHrNg5HEi8CgYBWQwl/xHM8WqH4ONasOLQWss5jI+H01OCi4roq\r\n"\
"eD6XztHrBFo9/1WwHu1/goeGUHwW57hTQgbhxnQBwSm5nIMt2pd1EkLKG1xNok2x\r\n"\
"pH94W3F1Jjh47bEVqoe4cOYMlwuqJEb0gDDx2x6Blj964J7Q34u0dMjJbzsJcWtw\r\n"\
"gMM1/wKBgQDKRsEapM6PWohiVqh+Oqg618b7PGPSNU4Ia7MartVprGRVGXVgOCfo\r\n"\
"sLrzJB6Qi+90h+I6UWtQqnjosycN85YLLkF5VM+dgrgYqJukoWwqSJr0PCj0opyE\r\n"\
"wLARUPdl18sv8X7e1+i1L1BOv1nlYHxmw+1tYwaZDoJQd1lyDg+sjA==\r\n"\
"-----END RSA PRIVATE KEY-----\r\n"

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
        .uri="mqtts://mqtt.eclipseprojects.io:8883",
        .cert_pem=CA_CRT,
        .client_cert_pem=CLIENT_CRT,
        .client_key_pem=CLIENT_KEY,
        .event_handle = event_cb,
    };
    axk_mqtt_client_handle_t client = axk_mqtt_client_init(&mqtt_cfg);
    axk_mqtt_client_start(client);
}
