#ifndef __FS_CFG_H__
#define __FS_CFG_H__

#include <stdint.h>

#define FS_SYS_MEDIA    1
#define FS_SYS_ROMFS    0

#if FS_SYS_MEDIA
    #define FS_MQTT_CERT_ADDR      0x0000
    #define FS_MQTT_CERT_SIZE      0x1000
    #define FS_MQTT_CLI_CERT_ADDR  FS_MQTT_CERT_ADDR + FS_MQTT_CERT_SIZE
    #define FS_MQTT_CLI_CERT_SIZE  0x1000
    #define FS_MQTT_CLI_KEY_ADDR   FS_MQTT_CLI_CERT_ADDR + FS_MQTT_CLI_CERT_SIZE
    #define FS_MQTT_CLI_KEY_SIZE   0x1000
#elif FS_SYS_ROMFS
    #define FS_MQTT_CERT_NAME      "/romfs/mqtt_ca.crt"
    #define FS_MQTT_CLI_CERT_NAME  "/romfs/mqtt_client.crt"
    #define FS_MQTT_CLI_KEY_NAME   "/romfs/mqtt_client.key"
#else
    #error "FS unset"
#endif

#endif
