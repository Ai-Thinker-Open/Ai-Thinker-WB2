# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/easyflash4/src/easyflash.c"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/easyflash4//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/easyflash4/src/easyflash.c"
# 50 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/easyflash4/src/easyflash.c"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/easyflash4/inc/easyflash.h" 1
# 33 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/easyflash4/inc/easyflash.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint.h" 1 3 4
# 11 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint.h" 3 4
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h" 1 3 4
# 34 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h" 3 4

# 34 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h" 3 4
typedef signed char int8_t;


typedef short int int16_t;


typedef long int int32_t;


typedef long long int int64_t;


typedef unsigned char uint8_t;


typedef short unsigned int uint16_t;


typedef long unsigned int uint32_t;


typedef long long unsigned int uint64_t;




typedef signed char int_least8_t;
typedef short int int_least16_t;
typedef long int int_least32_t;
typedef long long int int_least64_t;
typedef unsigned char uint_least8_t;
typedef short unsigned int uint_least16_t;
typedef long unsigned int uint_least32_t;
typedef long long unsigned int uint_least64_t;



typedef int int_fast8_t;
typedef int int_fast16_t;
typedef int int_fast32_t;
typedef long long int int_fast64_t;
typedef unsigned int uint_fast8_t;
typedef unsigned int uint_fast16_t;
typedef unsigned int uint_fast32_t;
typedef long long unsigned int uint_fast64_t;




typedef int intptr_t;


typedef unsigned int uintptr_t;




typedef long long int intmax_t;
typedef long long unsigned int uintmax_t;
# 12 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint.h" 2 3 4
# 34 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/easyflash4/inc/easyflash.h" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 143 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 209 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 321 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4
typedef int wchar_t;
# 35 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/easyflash4/inc/easyflash.h" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdbool.h" 1 3 4
# 36 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/easyflash4/inc/easyflash.h" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/easyflash4/inc/ef_cfg.h" 1
# 84 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/easyflash4/inc/ef_cfg.h"

# 84 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/easyflash4/inc/ef_cfg.h"
extern uint32_t ENV_AREA_SIZE;
# 37 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/easyflash4/inc/easyflash.h" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/easyflash4/inc/ef_def.h" 1
# 73 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/easyflash4/inc/ef_def.h"
typedef struct _ef_env {
    char *key;
    void *value;
    size_t value_len;
} ef_env, *ef_env_t;


typedef enum {
    EF_NO_ERR,
    EF_ERASE_ERR,
    EF_READ_ERR,
    EF_WRITE_ERR,
    EF_ENV_NAME_ERR,
    EF_ENV_NAME_EXIST,
    EF_ENV_FULL,
    EF_ENV_INIT_FAILED,
    EF_ENV_ARG_ERR,
} EfErrCode;


typedef enum {
    EF_SECTOR_EMPTY,
    EF_SECTOR_USING,
    EF_SECTOR_FULL,
} EfSecrorStatus;

enum env_status {
    ENV_UNUSED,
    ENV_PRE_WRITE,
    ENV_WRITE,
    ENV_PRE_DELETE,
    ENV_DELETED,
    ENV_ERR_HDR,
    ENV_STATUS_NUM,
};
typedef enum env_status env_status_t;

struct env_node_obj {
    env_status_t status;
    
# 112 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/easyflash4/inc/ef_def.h" 3 4
   _Bool 
# 112 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/easyflash4/inc/ef_def.h"
        crc_is_ok;
    uint8_t name_len;
    uint32_t magic;
    uint32_t len;
    uint32_t value_len;
    char name[(64)];
    struct {
        uint32_t start;
        uint32_t value;
    } addr;
};
typedef struct env_node_obj *env_node_obj_t;
# 38 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/easyflash4/inc/easyflash.h" 2






EfErrCode easyflash_init(void);



size_t ef_get_env_blob(const char *key, void *value_buf, size_t buf_len, size_t *saved_value_len);

# 49 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/easyflash4/inc/easyflash.h" 3 4
_Bool 
# 49 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/easyflash4/inc/easyflash.h"
    ef_get_env_obj(const char *key, env_node_obj_t env);
size_t ef_read_env_value(env_node_obj_t env, uint8_t *value_buf, size_t buf_len);
EfErrCode ef_set_env_blob(const char *key, const void *value_buf, size_t buf_len);


EfErrCode ef_load_env(void);
void ef_print_env(void);

typedef 
# 57 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/easyflash4/inc/easyflash.h" 3 4
       _Bool 
# 57 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/easyflash4/inc/easyflash.h"
            (*print_env_cb_t)(env_node_obj_t env, void *arg1, void *arg2);
void ef_print_env_cb(print_env_cb_t cb);

char *ef_get_env(const char *key);
EfErrCode ef_set_env(const char *key, const char *value);
EfErrCode ef_del_env(const char *key);
EfErrCode ef_save_env(void);
EfErrCode ef_env_set_default(void);
size_t ef_get_env_write_bytes(void);
EfErrCode ef_set_and_save_env(const char *key, const char *value);
EfErrCode ef_del_and_save_env(const char *key);
# 100 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/easyflash4/inc/easyflash.h"
uint32_t ef_calc_crc32(uint32_t crc, const void *buf, size_t size);


EfErrCode ef_port_read(uint32_t addr, uint32_t *buf, size_t size);
EfErrCode ef_port_erase(uint32_t addr, size_t size);
EfErrCode ef_port_write(uint32_t addr, const uint32_t *buf, size_t size);
void ef_port_env_lock(void);
void ef_port_env_unlock(void);
void ef_log_debug(const char *file, const long line, const char *format, ...);
void ef_log_info(const char *format, ...);
void ef_print(const char *format, ...);

int easyflash_cli_init(void);
# 51 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/easyflash4/src/easyflash.c" 2
# 65 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/easyflash4/src/easyflash.c"
EfErrCode easyflash_init(void) {
    extern EfErrCode ef_port_init(ef_env const **default_env, size_t *default_env_size);
    extern EfErrCode ef_env_init(ef_env const *default_env, size_t default_env_size);
    extern EfErrCode ef_iap_init(void);
    extern EfErrCode ef_log_init(void);

    size_t default_env_set_size = 0;
    const ef_env *default_env_set;
    EfErrCode result = EF_NO_ERR;

    result = ef_port_init(&default_env_set, &default_env_set_size);


    if (result == EF_NO_ERR) {
        result = ef_env_init(default_env_set, default_env_set_size);
    }
# 95 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/easyflash4/src/easyflash.c"
    if (result == EF_NO_ERR) {
        ef_log_info("EasyFlash V%s is initialize success.\r\n", "4.0.99");
    } else {
        ef_log_info("EasyFlash V%s is initialize fail.\r\n", "4.0.99");
    }
    ef_log_info("You can get the latest version on https://github.com/armink/EasyFlash .\r\n");

    return result;
}
