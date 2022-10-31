# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/misaligned/misaligned_ldst.c"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/freertos_riscv_ram//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/misaligned/misaligned_ldst.c"


# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/misaligned/emulation.h" 1





# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/misaligned/encoding.h" 1
# 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/misaligned/emulation.h" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/misaligned/bits.h" 1
# 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/misaligned/emulation.h" 2
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
# 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/misaligned/emulation.h" 2


# 10 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/misaligned/emulation.h"
typedef uintptr_t insn_t;
typedef void (*emulation_func)(uintptr_t*, uintptr_t, uintptr_t, uintptr_t, insn_t);


void misaligned_load_trap(uintptr_t* regs, uintptr_t mcause, uintptr_t mepc);
void misaligned_store_trap(uintptr_t* regs, uintptr_t mcause, uintptr_t mepc);
void redirect_trap(uintptr_t epc, uintptr_t mstatus, uintptr_t badaddr);
void truly_illegal_insn(uintptr_t* regs, uintptr_t mcause, uintptr_t mepc, uintptr_t mstatus, insn_t insn);
void emulate_rvc_0(uintptr_t* regs, uintptr_t mcause, uintptr_t mepc, uintptr_t mstatus, insn_t insn);
void emulate_rvc_2(uintptr_t* regs, uintptr_t mcause, uintptr_t mepc, uintptr_t mstatus, insn_t insn);
# 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/misaligned/misaligned_ldst.c" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/misaligned/fp_emulation.h" 1
# 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/misaligned/misaligned_ldst.c" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/misaligned/unprivileged_memory.h" 1





# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/misaligned/encoding.h" 1
# 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/misaligned/unprivileged_memory.h" 2
# 39 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/misaligned/unprivileged_memory.h"
static inline uint8_t load_uint8_t(const uint8_t* addr, uintptr_t mepc) { register uintptr_t __mstatus_adjust asm ("a1") = 0x00020000; register uintptr_t __mepc asm ("a2") = mepc; register uintptr_t __mstatus asm ("a3"); uint8_t val; asm ("csrrs %0, mstatus, %3\n" "lbu" " %1, %2\n" "csrw mstatus, %0" : "+&r" (__mstatus), "=&r" (val) : "m" (*addr), "r" (__mstatus_adjust), "r" (__mepc)); return val; }
static inline uint16_t load_uint16_t(const uint16_t* addr, uintptr_t mepc) { register uintptr_t __mstatus_adjust asm ("a1") = 0x00020000; register uintptr_t __mepc asm ("a2") = mepc; register uintptr_t __mstatus asm ("a3"); uint16_t val; asm ("csrrs %0, mstatus, %3\n" "lhu" " %1, %2\n" "csrw mstatus, %0" : "+&r" (__mstatus), "=&r" (val) : "m" (*addr), "r" (__mstatus_adjust), "r" (__mepc)); return val; }
static inline int8_t load_int8_t(const int8_t* addr, uintptr_t mepc) { register uintptr_t __mstatus_adjust asm ("a1") = 0x00020000; register uintptr_t __mepc asm ("a2") = mepc; register uintptr_t __mstatus asm ("a3"); int8_t val; asm ("csrrs %0, mstatus, %3\n" "lb" " %1, %2\n" "csrw mstatus, %0" : "+&r" (__mstatus), "=&r" (val) : "m" (*addr), "r" (__mstatus_adjust), "r" (__mepc)); return val; }
static inline int16_t load_int16_t(const int16_t* addr, uintptr_t mepc) { register uintptr_t __mstatus_adjust asm ("a1") = 0x00020000; register uintptr_t __mepc asm ("a2") = mepc; register uintptr_t __mstatus asm ("a3"); int16_t val; asm ("csrrs %0, mstatus, %3\n" "lh" " %1, %2\n" "csrw mstatus, %0" : "+&r" (__mstatus), "=&r" (val) : "m" (*addr), "r" (__mstatus_adjust), "r" (__mepc)); return val; }
static inline int32_t load_int32_t(const int32_t* addr, uintptr_t mepc) { register uintptr_t __mstatus_adjust asm ("a1") = 0x00020000; register uintptr_t __mepc asm ("a2") = mepc; register uintptr_t __mstatus asm ("a3"); int32_t val; asm ("csrrs %0, mstatus, %3\n" "lw" " %1, %2\n" "csrw mstatus, %0" : "+&r" (__mstatus), "=&r" (val) : "m" (*addr), "r" (__mstatus_adjust), "r" (__mepc)); return val; }
static inline void store_uint8_t(uint8_t* addr, uint8_t val, uintptr_t mepc) { register uintptr_t __mstatus_adjust asm ("a1") = 0x00020000; register uintptr_t __mepc asm ("a2") = mepc; register uintptr_t __mstatus asm ("a3"); asm volatile ("csrrs %0, mstatus, %3\n" "sb" " %1, %2\n" "csrw mstatus, %0" : "+&r" (__mstatus) : "r" (val), "m" (*addr), "r" (__mstatus_adjust), "r" (__mepc)); }
static inline void store_uint16_t(uint16_t* addr, uint16_t val, uintptr_t mepc) { register uintptr_t __mstatus_adjust asm ("a1") = 0x00020000; register uintptr_t __mepc asm ("a2") = mepc; register uintptr_t __mstatus asm ("a3"); asm volatile ("csrrs %0, mstatus, %3\n" "sh" " %1, %2\n" "csrw mstatus, %0" : "+&r" (__mstatus) : "r" (val), "m" (*addr), "r" (__mstatus_adjust), "r" (__mepc)); }
static inline void store_uint32_t(uint32_t* addr, uint32_t val, uintptr_t mepc) { register uintptr_t __mstatus_adjust asm ("a1") = 0x00020000; register uintptr_t __mepc asm ("a2") = mepc; register uintptr_t __mstatus asm ("a3"); asm volatile ("csrrs %0, mstatus, %3\n" "sw" " %1, %2\n" "csrw mstatus, %0" : "+&r" (__mstatus) : "r" (val), "m" (*addr), "r" (__mstatus_adjust), "r" (__mepc)); }






static inline uint32_t load_uint32_t(const uint32_t* addr, uintptr_t mepc) { register uintptr_t __mstatus_adjust asm ("a1") = 0x00020000; register uintptr_t __mepc asm ("a2") = mepc; register uintptr_t __mstatus asm ("a3"); uint32_t val; asm ("csrrs %0, mstatus, %3\n" "lw" " %1, %2\n" "csrw mstatus, %0" : "+&r" (__mstatus), "=&r" (val) : "m" (*addr), "r" (__mstatus_adjust), "r" (__mepc)); return val; }
static inline uintptr_t load_uintptr_t(const uintptr_t* addr, uintptr_t mepc) { register uintptr_t __mstatus_adjust asm ("a1") = 0x00020000; register uintptr_t __mepc asm ("a2") = mepc; register uintptr_t __mstatus asm ("a3"); uintptr_t val; asm ("csrrs %0, mstatus, %3\n" "lw" " %1, %2\n" "csrw mstatus, %0" : "+&r" (__mstatus), "=&r" (val) : "m" (*addr), "r" (__mstatus_adjust), "r" (__mepc)); return val; }

static inline uint64_t load_uint64_t(const uint64_t* addr, uintptr_t mepc)
{
  return load_uint32_t((uint32_t*)addr, mepc)
         + ((uint64_t)load_uint32_t((uint32_t*)addr + 1, mepc) << 32);
}

static inline void store_uint64_t(uint64_t* addr, uint64_t val, uintptr_t mepc)
{
  store_uint32_t((uint32_t*)addr, val, mepc);
  store_uint32_t((uint32_t*)addr + 1, val >> 32, mepc);
}


static uintptr_t inline __attribute__((always_inline)) get_insn(uintptr_t mepc, uintptr_t* mstatus)
{
  register uintptr_t __mstatus_adjust asm ("a1") = 0x00020000 | 0x00080000;
  register uintptr_t __mepc asm ("a2") = mepc;
  register uintptr_t __mstatus asm ("a3");
  uintptr_t val;







  uintptr_t rvc_mask = 3, tmp;
  asm ("csrrs %[mstatus], mstatus, %[mprv]\n"
       "and %[tmp], %[addr], 2\n"
       "bnez %[tmp], 1f\n"
       "lw" " %[insn], (%[addr])\n"
       "and %[tmp], %[insn], %[rvc_mask]\n"
       "beq %[tmp], %[rvc_mask], 2f\n"
       "sll %[insn], %[insn], %[xlen_minus_16]\n"
       "srl %[insn], %[insn], %[xlen_minus_16]\n"
       "j 2f\n"
       "1:\n"
       "lhu %[insn], (%[addr])\n"
       "and %[tmp], %[insn], %[rvc_mask]\n"
       "bne %[tmp], %[rvc_mask], 2f\n"
       "lhu %[tmp], 2(%[addr])\n"
       "sll %[tmp], %[tmp], 16\n"
       "add %[insn], %[insn], %[tmp]\n"
       "2: csrw mstatus, %[mstatus]"
       : [mstatus] "+&r" (__mstatus), [insn] "=&r" (val), [tmp] "=&r" (tmp)
       : [mprv] "r" (__mstatus_adjust), [addr] "r" (__mepc),
         [rvc_mask] "r" (rvc_mask), [xlen_minus_16] "i" (32 - 16));

  *mstatus = __mstatus;
  return val;
}
# 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/misaligned/misaligned_ldst.c" 2
# 17 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/misaligned/misaligned_ldst.c"
union byte_array {
  uint8_t bytes[8];
  uintptr_t intx;
  uint64_t int64;
};

static inline int insn_len(long insn)
{
  return (insn & 0x3) < 0x3 ? 2 : 4;
}

void truly_illegal_insn(uintptr_t* regs, uintptr_t mcause, uintptr_t mepc, uintptr_t mstatus, insn_t insn)
{
    __asm volatile ("ebreak");
    while(1);
}

void misaligned_load_trap(uintptr_t* regs, uintptr_t mcause, uintptr_t mepc)
{
  union byte_array val;
  uintptr_t mstatus;
  insn_t insn = get_insn(mepc, &mstatus);
  uintptr_t npc = mepc + insn_len(insn);
  uintptr_t addr = ({ unsigned long __tmp; asm volatile ("csrr %0, " "mbadaddr" : "=r"(__tmp)); __tmp; });

  int shift = 0, fp = 0, len;
  if ((insn & 0x707f) == 0x2003)
    len = 4, shift = 8*(sizeof(uintptr_t) - len);
# 56 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/misaligned/misaligned_ldst.c"
  else if ((insn & 0x707f) == 0x2007)
    fp = 1, len = 4;

  else if ((insn & 0x707f) == 0x1003)
    len = 2, shift = 8*(sizeof(uintptr_t) - len);
  else if ((insn & 0x707f) == 0x5003)
    len = 2;







  else if ((insn & 0xe003) == 0x4000)
    len = 4, shift = 8*(sizeof(uintptr_t) - len), insn = (8 + (((insn) >> (2)) & ((1 << (3)) - 1))) << 7;
  else if ((insn & 0xe003) == 0x4002 && ((insn >> 7) & 0x1f))
    len = 4, shift = 8*(sizeof(uintptr_t) - len);
# 82 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/misaligned/misaligned_ldst.c"
  else if ((insn & 0xe003) == 0x6000)
    fp = 1, len = 4, insn = (8 + (((insn) >> (2)) & ((1 << (3)) - 1))) << 7;
  else if ((insn & 0xe003) == 0x6002)
    fp = 1, len = 4;



  else {
    mcause = 0x5;
    ({ asm volatile ("csrw " "mcause" ", %0" :: "rK"(mcause)); });
    return truly_illegal_insn(regs, mcause, mepc, mstatus, insn);
  }

  val.int64 = 0;
  for (intptr_t i = 0; i < len; i++)
    val.bytes[i] = load_uint8_t((void *)(addr + i), mepc);

  if (!fp)
    (*({ int mask = (1 << (5+2)) - (1 << 2); (uintptr_t*)((uintptr_t)regs + 31 * 4 + ((((7) - 2) < 0 ? ((insn) << -((7) - 2)) : ((insn) >> ((7) - 2))) & (mask))); }) = ((intptr_t)val.intx << shift >> shift));




  else {

    len = ((7) < 0 ? ((insn) << -(7)) : ((insn) >> (7))) & 0x1f;
    regs[(1) + len] = val.intx;
  }

  regs[(0)] = npc;
}

void misaligned_store_trap(uintptr_t* regs, uintptr_t mcause, uintptr_t mepc)
{
  union byte_array val;
  uintptr_t mstatus;
  insn_t insn = get_insn(mepc, &mstatus);
  uintptr_t npc = mepc + insn_len(insn);
  int len;

  val.intx = (*({ int mask = (1 << (5+2)) - (1 << 2); (uintptr_t*)((uintptr_t)regs + 31 * 4 + ((((20) - 2) < 0 ? ((insn) << -((20) - 2)) : ((insn) >> ((20) - 2))) & (mask))); }));
  if ((insn & 0x707f) == 0x2023)
    len = 4;
# 134 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/misaligned/misaligned_ldst.c"
  else if ((insn & 0x707f) == 0x2027)
    len = 4, val.intx = (({ register int32_t value asm("a0") = (((20)-3) < 0 ? ((insn) << -((20)-3)) : ((insn) >> ((20)-3))) & 0xf8; uintptr_t tmp; asm ("1: auipc %0, %%pcrel_hi(get_f32_reg); add %0, %0, %1; jalr t0, %0, %%pcrel_lo(1b)" : "=&r"(tmp), "+&r"(value) :: "t0"); value; }));

  else if ((insn & 0x707f) == 0x1023)
    len = 2;







  else if ((insn & 0xe003) == 0xc000)
    len = 4, val.intx = (*({ int mask = (1 << (5+2)) - (1 << 2); (uintptr_t*)((uintptr_t)regs + 31 * 4 + ((((0) - 2) < 0 ? (((8 + (((insn) >> (2)) & ((1 << (3)) - 1)))) << -((0) - 2)) : (((8 + (((insn) >> (2)) & ((1 << (3)) - 1)))) >> ((0) - 2))) & (mask))); }));
  else if ((insn & 0xe003) == 0xc002 && ((insn >> 7) & 0x1f))
    len = 4, val.intx = (*({ int mask = (1 << (5+2)) - (1 << 2); (uintptr_t*)((uintptr_t)regs + 31 * 4 + ((((2) - 2) < 0 ? ((insn) << -((2) - 2)) : ((insn) >> ((2) - 2))) & (mask))); }));
# 158 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/misaligned/misaligned_ldst.c"
  else if ((insn & 0xe003) == 0xe000)
    len = 4, val.intx = (({ register int32_t value asm("a0") = (((0)-3) < 0 ? (((8 + (((insn) >> (2)) & ((1 << (3)) - 1)))) << -((0)-3)) : (((8 + (((insn) >> (2)) & ((1 << (3)) - 1)))) >> ((0)-3))) & 0xf8; uintptr_t tmp; asm ("1: auipc %0, %%pcrel_hi(get_f32_reg); add %0, %0, %1; jalr t0, %0, %%pcrel_lo(1b)" : "=&r"(tmp), "+&r"(value) :: "t0"); value; }));
  else if ((insn & 0xe003) == 0xe002)
    len = 4, val.intx = (({ register int32_t value asm("a0") = (((2)-3) < 0 ? ((insn) << -((2)-3)) : ((insn) >> ((2)-3))) & 0xf8; uintptr_t tmp; asm ("1: auipc %0, %%pcrel_hi(get_f32_reg); add %0, %0, %1; jalr t0, %0, %%pcrel_lo(1b)" : "=&r"(tmp), "+&r"(value) :: "t0"); value; }));



  else {
    mcause = 0x7;
    ({ asm volatile ("csrw " "mcause" ", %0" :: "rK"(mcause)); });
    return truly_illegal_insn(regs, mcause, mepc, mstatus, insn);
  }

  uintptr_t addr = ({ unsigned long __tmp; asm volatile ("csrr %0, " "mbadaddr" : "=r"(__tmp)); __tmp; });
  for (int i = 0; i < len; i++)
    store_uint8_t((void *)(addr + i), val.bytes[i], mepc);

  regs[(0)] = npc;
}
