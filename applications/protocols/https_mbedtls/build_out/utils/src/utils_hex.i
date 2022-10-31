# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/src/utils_hex.c"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/utils//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/src/utils_hex.c"
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
# 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/src/utils_hex.c" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 143 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 209 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 321 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4
typedef int wchar_t;
# 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/src/utils_hex.c" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_hex.h" 1



# 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_hex.h"
char *utils_bin2hex(char *dst, const void *src, size_t count);
size_t utils_hex2bin(const char *hex, size_t hexlen, uint8_t *buf, size_t buflen);
# 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/src/utils_hex.c" 2

const char hex_asc[] = "0123456789abcdef";
const char hex_asc_upper[] = "0123456789ABCDEF";



static inline char *hex_byte_pack(char *buf, uint8_t byte)
{
    *buf++ = hex_asc_upper[((byte) & 0xf0) >> 4];
    *buf++ = hex_asc_upper[((byte) & 0x0f)];
    return buf;
}

static int char2hex(char c, uint8_t *x)
{
 if (c >= '0' && c <= '9') {
  *x = c - '0';
 } else if (c >= 'a' && c <= 'f') {
  *x = c - 'a' + 10;
 } else if (c >= 'A' && c <= 'F') {
  *x = c - 'A' + 10;
 } else {
  return -1;
 }

 return 0;
}

char *utils_bin2hex(char *dst, const void *src, size_t count)
{
    const unsigned char *_src = src;

    while (count--) {
        dst = hex_byte_pack(dst, *_src++);
    }

    return dst;
}

size_t utils_hex2bin(const char *hex, size_t hexlen, uint8_t *buf, size_t buflen)
{
 uint8_t dec;

 if (buflen < hexlen / 2 + hexlen % 2) {
  return 0;
 }


 if (hexlen % 2) {
  if (char2hex(hex[0], &dec) < 0) {
   return 0;
  }
  buf[0] = dec;
  hex++;
  buf++;
 }


 for (size_t i = 0; i < hexlen / 2; i++) {
  if (char2hex(hex[2 * i], &dec) < 0) {
   return 0;
  }
  buf[i] = dec << 4;

  if (char2hex(hex[2 * i + 1], &dec) < 0) {
   return 0;
  }
  buf[i] += dec;
 }

 return hexlen / 2 + hexlen % 2;
}
