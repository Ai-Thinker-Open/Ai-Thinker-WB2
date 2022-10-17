
#include "easyflash_common.h"

bool ef_set_bytes(const char *key, uint8_t *value, int len) {
    int result = ef_set_env_blob(key, value, len);
    return result == EF_NO_ERR ? true : false;
}

int ef_get_bytes(const char *key, uint8_t *value, int len) {
    size_t read_len = 0;
    int result      = ef_get_env_blob(key, value, len, &read_len);
    return result;
}

bool ef_del_key(const char *key){
    return ef_del_env(key);
}

bool ef_set_str(const char *key, char *str) {
    return ef_set_bytes(key, (uint8_t *)str, strlen(str));
}

bool ef_get_str(const char *key, char *str, int len) {
    int index  = ef_get_bytes(key, (uint8_t *)str, len);
    str[index] = '\0';
    return index;
}

bool ef_set_u8(const char *key, uint8_t value) {
    return ef_set_bytes(key, &value, sizeof(uint8_t));
}

bool ef_get_u8(const char *key, uint8_t *value) {
    return ef_get_bytes(key, value, sizeof(uint8_t));
}

bool ef_set_u16(const char *key, uint16_t value) {
    uint8_t data[2];
    *(uint16_t *)data = value;
    return ef_set_bytes(key, data, sizeof(data));
}

bool ef_get_u16(const char *key, uint16_t *value) {
    uint8_t data[2];
    if (ef_get_bytes(key, data, sizeof(data))) {
        memcpy(value, data, 2);
        return true;
    } else {
        return false;
    }
}

bool ef_set_u32(const char *key, uint32_t value) {
    uint8_t data[4];
    *(uint32_t *)data = value;
    return ef_set_bytes(key, data, sizeof(data));
}

bool ef_get_u32(const char *key, uint32_t *value) {
    uint8_t data[4];
    if (ef_get_bytes(key, data, sizeof(data))) {
        memcpy(value, data, 4);
        return true;
    } else {
        return false;
    }
}

bool ef_set_int(const char *key, int value) {
    uint8_t data[4];
    *(int *)data = value;
    return ef_set_bytes(key, data, sizeof(data));
}

bool ef_get_int(const char *key, int *value) {
    uint8_t data[4];
    if (ef_get_bytes(key, data, sizeof(data))) {
        memcpy(value, data, 4);
        return true;
    } else {
        return false;
    }
}


bool ef_set_float(const char *key, float value) {
    uint8_t data[4];
    *(float *)data = value;
    return ef_set_bytes(key, data, sizeof(data));
}

bool ef_get_float(const char *key, float *value) {
    uint8_t data[4];
    if (ef_get_bytes(key, data, sizeof(data))) {
        memcpy(value, data, 4);
        return true;
    } else {
        return false;
    }
}
