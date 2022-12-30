#ifndef _AI_OTA_H_
#define _AI_OTA_H_

#include "ota_parse.h"


typedef enum
{
    AT_OTA_STATE_FAIL = -1,
    AT_OTA_STATE_NONE,
    AT_OTA_STATE_FOUND_SERVER,
    AT_OTA_STATE_CONNECTED,
    AT_OTA_STATE_GET_VERSION,
    AT_OTA_STATE_FINISH,
} at_ota_update_state_t;

typedef enum
{
    AT_OTA_MODE_HTTP,
    AT_OTA_MODE_HTTPS,
    AT_OTA_MODE_ANY,
} at_ota_update_mode_t;

typedef struct
{
    uint32_t update_state;
    uint32_t nonblocking;
} at_ota_config_t;

ota_parame ai_ota_parame_init(char *host, int port, char *resource);
void ai_https_update_ota(void *param);
void ai_http_update_ota(void *param);


#endif

