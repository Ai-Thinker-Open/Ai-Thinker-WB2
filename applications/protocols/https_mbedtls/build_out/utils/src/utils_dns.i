# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/src/utils_dns.c"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/utils//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/src/utils_dns.c"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_dns.h" 1


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
# 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_dns.h" 2

# 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_dns.h"
int utils_dns_domain_get(uint8_t *records, uint8_t *buf, int *len);
# 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/src/utils_dns.c" 2

int utils_dns_domain_get(uint8_t *records, uint8_t *buf, int *len)
{
    int i, pos_in, pos_out, size_buf;

    size_buf = *len;

    pos_in = 0;
    pos_out = 0;
    i = records[pos_in++];
    while (i > 0 && size_buf > 0) {
        buf[pos_out++] = records[pos_in++];
        i--;
        size_buf--;

        if (0 == i && size_buf > 0) {

            buf[pos_out++] = '.';
            i = records[pos_in++];
        }
    }
    *len = pos_out;

    return 0;
}
