#pragma once

#define IDF_VER "Z"

// transport
#define CONFIG_WS_BUFFER_SIZE 1024

// TLS
// XXX these configs should sync with mbedtls_sample_config.h
#define CONFIG_MBEDTLS_SSL_ALPN
#define CONFIG_ESP_TLS_PSK_VERIFICATION 1

// MQTT
#define CONFIG_MQTT_TRANSPORT_SSL 1
#define CONFIG_MQTT_TRANSPORT_WEBSOCKET 1
#define CONFIG_MQTT_TRANSPORT_WEBSOCKET_SECURE 1
#define CONFIG_MQTT_PROTOCOL_311
#define CONFIG_MQTT_TASK_STACK_SIZE (2*1024)

// HTTP
#define CONFIG_ESP_HTTP_CLIENT_ENABLE_HTTPS 1
//#define CONFIG_ESP_HTTP_CLIENT_ENABLE_DIGEST_AUTH 1
//define CONFIG_ESP_HTTP_CLIENT_ENABLE_BASIC_AUTH 1
// Certificate bundle is not supported yet!
//#define CONFIG_MBEDTLS_CERTIFICATE_BUNDLE 1


// Check
#if CONFIG_MBEDTLS_CERTIFICATE_BUNDLE
#error "Certificate bundle is not supported!"
#endif
