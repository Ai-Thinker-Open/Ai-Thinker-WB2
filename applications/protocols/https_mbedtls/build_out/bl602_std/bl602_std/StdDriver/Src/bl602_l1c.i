# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_l1c.c"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/bl602_std//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_l1c.c"
# 37 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_l1c.c"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_l1c.h" 1
# 39 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_l1c.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/l1c_reg.h" 1
# 39 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/l1c_reg.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h" 1
# 65 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h"
typedef enum {
# 79 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h"
    MSOFT_IRQn = 3,
    MTIME_IRQn = 7,
    MEXT_IRQn = 11,
    CLIC_SOFT_PEND_IRQn = 12,


    BMX_ERR_IRQn = 16 + 0,
    BMX_TO_IRQn = 16 + 1,
    L1C_BMX_ERR_IRQn = 16 + 2,
    L1C_BMX_TO_IRQn = 16 + 3,
    SEC_BMX_ERR_IRQn = 16 + 4,
    RF_TOP_INT0_IRQn = 16 + 5,
    RF_TOP_INT1_IRQn = 16 + 6,
    SDIO_IRQn = 16 + 7,
    DMA_BMX_ERR_IRQn = 16 + 8,
    SEC_GMAC_IRQn = 16 + 9,
    SEC_CDET_IRQn = 16 + 10,
    SEC_PKA_IRQn = 16 + 11,
    SEC_TRNG_IRQn = 16 + 12,
    SEC_AES_IRQn = 16 + 13,
    SEC_SHA_IRQn = 16 + 14,
    DMA_ALL_IRQn = 16 + 15,
    RESERVED0 = 16 + 16,
    RESERVED1 = 16 + 17,
    RESERVED2 = 16 + 18,
    IRTX_IRQn = 16 + 19,
    IRRX_IRQn = 16 + 20,
    RESERVED3 = 16 + 21,
    RESERVED4 = 16 + 22,
    SF_CTRL_IRQn = 16 + 23,
    RESERVED5 = 16 + 24,
    GPADC_DMA_IRQn = 16 + 25,
    EFUSE_IRQn = 16 + 26,
    SPI_IRQn = 16 + 27,
    RESERVED6 = 16 + 28,
    UART0_IRQn = 16 + 29,
    UART1_IRQn = 16 + 30,
    RESERVED7 = 16 + 31,
    I2C_IRQn = 16 + 32,
    RESERVED8 = 16 + 33,
    PWM_IRQn = 16 + 34,
    RESERVED9 = 16 + 35,
    TIMER_CH0_IRQn = 16 + 36,
    TIMER_CH1_IRQn = 16 + 37,
    TIMER_WDT_IRQn = 16 + 38,
    RESERVED10 = 16 + 39,
    RESERVED11 = 16 + 40,
    RESERVED12 = 16 + 41,
    RESERVED13 = 16 + 42,
    RESERVED14 = 16 + 43,
    GPIO_INT0_IRQn = 16 + 44,
    RESERVED16 = 16 + 45,
    RESERVED17 = 16 + 46,
    RESERVED18 = 16 + 47,
    RESERVED19 = 16 + 48,
    RESERVED20 = 16 + 49,
    PDS_WAKEUP_IRQn = 16 + 50,
    HBN_OUT0_IRQn = 16 + 51,
    HBN_OUT1_IRQn = 16 + 52,
    BOR_IRQn = 16 + 53,
    WIFI_IRQn = 16 + 54,
    BZ_PHY_IRQn = 16 + 55,
    BLE_IRQn = 16 + 56,
    MAC_TXRX_TIMER_IRQn = 16 + 57,
    MAC_TXRX_MISC_IRQn = 16 + 58,
    MAC_RX_TRG_IRQn = 16 + 59,
    MAC_TX_TRG_IRQn = 16 + 60,
    MAC_GEN_IRQn = 16 + 61,
    MAC_PORT_TRG_IRQn = 16 + 62,
    WIFI_IPC_PUBLIC_IRQn = 16 + 63,
    IRQn_LAST,
} IRQn_Type;
# 211 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h"
typedef enum {
    BL_AHB_SLAVE1_GLB = 0x00,
    BL_AHB_SLAVE1_RF = 0x01,
    BL_AHB_SLAVE1_GPIP_PHY_AGC = 0x02,
    BL_AHB_SLAVE1_SEC_DBG = 0x03,
    BL_AHB_SLAVE1_SEC = 0x04,
    BL_AHB_SLAVE1_TZ1 = 0x05,
    BL_AHB_SLAVE1_TZ2 = 0x06,
    BL_AHB_SLAVE1_EFUSE = 0x07,
    BL_AHB_SLAVE1_CCI = 0x08,
    BL_AHB_SLAVE1_L1C = 0x09,
    BL_AHB_SLAVE1_RSVD0A = 0x0A,
    BL_AHB_SLAVE1_SFC = 0x0B,
    BL_AHB_SLAVE1_DMA = 0x0C,
    BL_AHB_SLAVE1_SDU = 0x0D,
    BL_AHB_SLAVE1_PDS_HBN_AON_HBNRAM = 0x0E,
    BL_AHB_SLAVE1_RSVD0F = 0x0F,
    BL_AHB_SLAVE1_UART0 = 0x10,
    BL_AHB_SLAVE1_UART1 = 0x11,
    BL_AHB_SLAVE1_SPI = 0x12,
    BL_AHB_SLAVE1_I2C = 0x13,
    BL_AHB_SLAVE1_PWM = 0x14,
    BL_AHB_SLAVE1_TMR = 0x15,
    BL_AHB_SLAVE1_IRR = 0x16,
    BL_AHB_SLAVE1_CKS = 0x17,
    BL_AHB_SLAVE1_MAX = 0x18,
} BL_AHB_Slave1_Type;

typedef enum {
    BL_AHB_SEC_ENG_AES0 = 0,
    BL_AHB_SEC_ENG_AES1,
    BL_AHB_SEC_ENG_SHA0,
    BL_AHB_SEC_ENG_SHA1,
} BL_AHB_Sec_Eng_Type;

typedef enum {
    BL_AHB_DMA0_CH0 = 0,
    BL_AHB_DMA0_CH1,
    BL_AHB_DMA0_CH2,
    BL_AHB_DMA0_CH3,
    BL_AHB_DMA0_CH4,
} BL_AHB_DMA0_CHNL_Type;

typedef enum {
    BL_CORE_MASTER_IBUS_CPU = 0,
    BL_CORE_MASTER_DBUS_CPU,
    BL_CORE_MASTER_BUS_S2F,
    BL_CORE_MASTER_MAX,
} BL_Core_Master_Type;

typedef enum {
    BL_CORE_SLAVE0_DTCM_CPU = 0,
    BL_CORE_SLAVE0_MAX,
} BL_Core_Slave0_Type;

typedef enum {
    BL_CORE_SLAVE1_XIP_CPU = 0,
    BL_CORE_SLAVE1_ITCM_CPU,
    BL_CORE_SLAVE1_ROM,
    BL_CORE_SLAVE1_MAX,
} BL_Core_Slave1_Type;

typedef enum {
    BL_CORE_SLAVE2_F2S = 0,
    BL_CORE_SLAVE2_MAX,
} BL_Core_Slave2_Type;




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
# 282 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/RISCV/Device/Bouffalo/BL602/Startup/system_bl602.h" 1








# 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/RISCV/Device/Bouffalo/BL602/Startup/system_bl602.h"
extern uint32_t SystemCoreClock;

extern void SystemCoreClockUpdate (void);
extern void SystemInit (void);
extern void System_NVIC_SetPriority(IRQn_Type IRQn, uint32_t PreemptPriority, uint32_t SubPriority);
extern void Systick_Stop(void);
extern void Systick_Start(void);
# 283 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h" 2
# 295 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/RISCV/Core/Include/cmsis_compatible_gcc.h" 1
# 87 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/RISCV/Core/Include/cmsis_compatible_gcc.h"
__attribute__( ( always_inline ) ) static inline void __enable_irq(void)
{
  __asm volatile ("csrsi mstatus, 8");
}

__attribute__( ( always_inline ) ) static inline void __disable_irq(void)
{
  __asm volatile ("csrci mstatus, 8");
}

__attribute__((always_inline)) static inline uint32_t __REV(uint32_t value)
{

    uint32_t res = 0;

    res = (value << 24) | (value >> 24);
    res &= 0xFF0000FF;
    res |= ((value >> 8) & 0x0000FF00) | ((value << 8) & 0x00FF0000);

    return res;
}

__attribute__((always_inline)) static inline uint32_t __REV16(uint32_t value)
{
  return __builtin_bswap16(value);
}

extern void clic_enable_interrupt (uint32_t source);
extern void clic_disable_interrupt ( uint32_t source);
extern void clic_set_pending(uint32_t source);
extern void clic_clear_pending(uint32_t source);
# 296 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/RISCV/Core/Include/clic.h" 1
# 297 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/RISCV/Core/Include/riscv_encoding.h" 1
# 298 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h" 2
# 40 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/l1c_reg.h" 2
# 196 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/l1c_reg.h"
struct l1c_reg {

    union {
        struct
        {
            uint32_t l1c_cacheable : 1;
            uint32_t l1c_cnt_en : 1;
            uint32_t l1c_invalid_en : 1;
            uint32_t l1c_invalid_done : 1;
            uint32_t reserved_4_7 : 4;
            uint32_t l1c_way_dis : 4;
            uint32_t irom_2t_access : 1;
            uint32_t reserved_13 : 1;
            uint32_t l1c_bypass : 1;
            uint32_t l1c_bmx_err_en : 1;
            uint32_t l1c_bmx_arb_mode : 2;
            uint32_t reserved_18_19 : 2;
            uint32_t l1c_bmx_timeout_en : 4;
            uint32_t l1c_bmx_busy_option_dis : 1;
            uint32_t early_resp_dis : 1;
            uint32_t wrap_dis : 1;
            uint32_t reserved_27_31 : 5;
        } BF;
        uint32_t WORD;
    } l1c_config;


    union {
        struct
        {
            uint32_t hit_cnt_lsb : 32;
        } BF;
        uint32_t WORD;
    } hit_cnt_lsb;


    union {
        struct
        {
            uint32_t hit_cnt_msb : 32;
        } BF;
        uint32_t WORD;
    } hit_cnt_msb;


    union {
        struct
        {
            uint32_t miss_cnt : 32;
        } BF;
        uint32_t WORD;
    } miss_cnt;


    union {
        struct
        {
            uint32_t reserved_0_31 : 32;
        } BF;
        uint32_t WORD;
    } l1c_range;


    uint8_t RESERVED0x14[492];


    union {
        struct
        {
            uint32_t l1c_bmx_err_addr_dis : 1;
            uint32_t reserved_1_3 : 3;
            uint32_t l1c_bmx_err_dec : 1;
            uint32_t l1c_bmx_err_tz : 1;
            uint32_t reserved_6_15 : 10;
            uint32_t l1c_hsel_option : 4;
            uint32_t reserved_20_31 : 12;
        } BF;
        uint32_t WORD;
    } l1c_bmx_err_addr_en;


    union {
        struct
        {
            uint32_t l1c_bmx_err_addr : 32;
        } BF;
        uint32_t WORD;
    } l1c_bmx_err_addr;


    union {
        struct
        {
            uint32_t irom1_misr_dataout_0 : 32;
        } BF;
        uint32_t WORD;
    } irom1_misr_dataout_0;


    union {
        struct
        {
            uint32_t reserved_0_31 : 32;
        } BF;
        uint32_t WORD;
    } irom1_misr_dataout_1;


    union {
        struct
        {
            uint32_t force_e21_clock_on_0 : 1;
            uint32_t force_e21_clock_on_1 : 1;
            uint32_t force_e21_clock_on_2 : 1;
            uint32_t reserved_3_31 : 29;
        } BF;
        uint32_t WORD;
    } cpu_clk_gate;
};

typedef volatile struct l1c_reg l1c_reg_t;
# 40 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_l1c.h" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h" 1



# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h" 1
# 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Common/platform_print/bflb_platform.h" 1




# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 1 3
# 29 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 1 3
# 10 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/newlib.h" 1 3
# 14 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/newlib.h" 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/_newlib_version.h" 1 3
# 15 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/newlib.h" 2 3
# 11 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 2 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/config.h" 1 3



# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/ieeefp.h" 1 3
# 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/config.h" 2 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/features.h" 1 3
# 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/config.h" 2 3
# 12 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 2 3
# 30 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3





# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/cdefs.h" 1 3
# 45 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/cdefs.h" 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 1 3
# 41 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3

# 41 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 46 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/cdefs.h" 2 3

# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 209 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 48 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/cdefs.h" 2 3
# 36 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 143 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 321 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4
typedef int wchar_t;
# 37 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3



# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdarg.h" 1 3 4
# 40 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 41 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3





typedef __gnuc_va_list va_list;
# 60 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 1 3
# 13 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 1 3
# 14 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 2 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 15 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 2 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 1 3
# 24 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 350 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4
typedef unsigned int wint_t;
# 25 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 2 3


# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_types.h" 1 3
# 28 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 2 3


typedef long __blkcnt_t;



typedef long __blksize_t;



typedef __uint64_t __fsblkcnt_t;



typedef __uint32_t __fsfilcnt_t;



typedef long _off_t;





typedef int __pid_t;



typedef short __dev_t;



typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



typedef __uint32_t __id_t;







typedef unsigned short __ino_t;
# 90 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
typedef __uint32_t __mode_t;





__extension__ typedef long long _off64_t;





typedef _off_t __off_t;


typedef _off64_t __loff_t;


typedef long __key_t;







typedef long _fpos_t;
# 131 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
typedef unsigned int __size_t;
# 147 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
typedef signed int _ssize_t;
# 158 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
typedef _ssize_t __ssize_t;



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;




typedef void *_iconv_t;






typedef unsigned long __clock_t;






typedef __int_least64_t __time_t;





typedef unsigned long __clockid_t;


typedef unsigned long __timer_t;


typedef __uint8_t __sa_family_t;



typedef __uint32_t __socklen_t;


typedef int __nl_item;
typedef unsigned short __nlink_t;
typedef long __suseconds_t;
typedef unsigned long __useconds_t;







typedef __builtin_va_list __va_list;
# 16 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 2 3






typedef unsigned long __ULong;
# 34 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h" 1 3
# 11 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h" 3
typedef int _LOCK_T;
typedef int _LOCK_RECURSIVE_T;
# 35 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 2 3
typedef _LOCK_RECURSIVE_T _flock_t;







struct _reent;

struct __locale_t;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};
# 98 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 122 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 186 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  _ssize_t (*_read) (struct _reent *, void *,
        char *, int);
  _ssize_t (*_write) (struct _reent *, void *,
         const char *,
         int);
  _fpos_t (*_seek) (struct _reent *, void *, _fpos_t, int);
  int (*_close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  _off_t _offset;


  struct _reent *_data;



  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 292 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 324 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 613 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];


  int _unspecified_locale_info;
  struct __locale_t *_locale;

  int __sdidinit;

  void (*__cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {
          unsigned int _unused_rand;
          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
   int _h_errno;
        } _reent;



      struct
        {

          unsigned char * _nextf[30];
          unsigned int _nmalloc[30];
        } _unused;
    } _new;



  struct _atexit *_atexit;
  struct _atexit _atexit0;



  void (**(_sig_func))(int);




  struct _glue __sglue;

  __FILE __sf[3];

};
# 819 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
extern struct _reent *_impure_ptr ;
extern struct _reent *const _global_impure_ptr ;

void _reclaim_reent (struct _reent *);
# 61 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 1 3
# 28 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 3
typedef __uint8_t u_int8_t;


typedef __uint16_t u_int16_t;


typedef __uint32_t u_int32_t;


typedef __uint64_t u_int64_t;

typedef __intptr_t register_t;






# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h" 1 3
# 20 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h" 3
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 47 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3


# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/endian.h" 1 3





# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_endian.h" 1 3
# 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/endian.h" 2 3
# 50 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 1 3
# 14 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_sigset.h" 1 3
# 41 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_sigset.h" 3
typedef unsigned long __sigset_t;
# 15 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 2 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timeval.h" 1 3
# 37 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timeval.h" 3
typedef __suseconds_t suseconds_t;




typedef __int_least64_t time_t;
# 54 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timeval.h" 3
struct timeval {
 time_t tv_sec;
 suseconds_t tv_usec;
};
# 16 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 2 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/timespec.h" 1 3
# 38 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/timespec.h" 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timespec.h" 1 3
# 47 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timespec.h" 3
struct timespec {
 time_t tv_sec;
 long tv_nsec;
};
# 39 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/timespec.h" 2 3
# 58 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/timespec.h" 3
struct itimerspec {
 struct timespec it_interval;
 struct timespec it_value;
};
# 17 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 2 3



typedef __sigset_t sigset_t;
# 34 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 3
typedef unsigned long __fd_mask;

typedef __fd_mask fd_mask;
# 48 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 3
typedef struct fd_set {
 __fd_mask __fds_bits[(((64) + ((((int)sizeof(__fd_mask) * 8)) - 1)) / (((int)sizeof(__fd_mask) * 8)))];
} fd_set;
# 74 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 3


int select (int __n, fd_set *__readfds, fd_set *__writefds, fd_set *__exceptfds, struct timeval *__timeout)
                                                   ;

int pselect (int __n, fd_set *__readfds, fd_set *__writefds, fd_set *__exceptfds, const struct timespec *__timeout, const sigset_t *__set)

                           ;



# 51 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3




typedef __uint32_t in_addr_t;




typedef __uint16_t in_port_t;



typedef __uintptr_t u_register_t;






typedef unsigned char u_char;



typedef unsigned short u_short;



typedef unsigned int u_int;



typedef unsigned long u_long;







typedef unsigned short ushort;
typedef unsigned int uint;
typedef unsigned long ulong;



typedef __blkcnt_t blkcnt_t;




typedef __blksize_t blksize_t;




typedef unsigned long clock_t;
# 119 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 3
typedef long daddr_t;



typedef char * caddr_t;




typedef __fsblkcnt_t fsblkcnt_t;
typedef __fsfilcnt_t fsfilcnt_t;




typedef __id_t id_t;




typedef __ino_t ino_t;
# 157 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 3
typedef __off_t off_t;



typedef __dev_t dev_t;



typedef __uid_t uid_t;



typedef __gid_t gid_t;




typedef __pid_t pid_t;




typedef __key_t key_t;




typedef _ssize_t ssize_t;




typedef __mode_t mode_t;




typedef __nlink_t nlink_t;




typedef __clockid_t clockid_t;





typedef __timer_t timer_t;





typedef __useconds_t useconds_t;
# 220 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 3
typedef __int64_t sbintime_t;


# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 1 3
# 23 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/sched.h" 1 3
# 48 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/sched.h" 3
struct sched_param {
  int sched_priority;
# 61 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/sched.h" 3
};
# 24 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 2 3
# 32 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
typedef __uint32_t pthread_t;
# 61 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
typedef struct {
  int is_initialized;
  void *stackaddr;
  int stacksize;
  int contentionscope;
  int inheritsched;
  int schedpolicy;
  struct sched_param schedparam;





  int detachstate;
} pthread_attr_t;
# 154 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
typedef __uint32_t pthread_mutex_t;

typedef struct {
  int is_initialized;
# 168 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
  int recursive;
} pthread_mutexattr_t;






typedef __uint32_t pthread_cond_t;



typedef struct {
  int is_initialized;
  clock_t clock;



} pthread_condattr_t;



typedef __uint32_t pthread_key_t;

typedef struct {
  int is_initialized;
  int init_executed;
} pthread_once_t;
# 224 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/types.h" 1 3
# 225 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3
# 62 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3




typedef __FILE FILE;






typedef _fpos_t fpos_t;





# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/stdio.h" 1 3
# 80 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3
# 181 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
char * ctermid (char *);


char * cuserid (char *);

FILE * tmpfile (void);
char * tmpnam (char *);

char * tempnam (const char *, const char *) __attribute__((__malloc__)) __attribute__((__warn_unused_result__));

int fclose (FILE *);
int fflush (FILE *);
FILE * freopen (const char *restrict, const char *restrict, FILE *restrict);
void setbuf (FILE *restrict, char *restrict);
int setvbuf (FILE *restrict, char *restrict, int, size_t);
int fprintf (FILE *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int fscanf (FILE *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int printf (const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 1, 2)));
int scanf (const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 1, 2)));
int sscanf (const char *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int vfprintf (FILE *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int vprintf (const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 1, 0)));
int vsprintf (char *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int fgetc (FILE *);
char * fgets (char *restrict, int, FILE *restrict);
int fputc (int, FILE *);
int fputs (const char *restrict, FILE *restrict);
int getc (FILE *);
int getchar (void);
char * gets (char *);
int putc (int, FILE *);
int putchar (int);
int puts (const char *);
int ungetc (int, FILE *);
size_t fread (void *restrict, size_t _size, size_t _n, FILE *restrict);
size_t fwrite (const void *restrict , size_t _size, size_t _n, FILE *);



int fgetpos (FILE *restrict, fpos_t *restrict);

int fseek (FILE *, long, int);



int fsetpos (FILE *, const fpos_t *);

long ftell ( FILE *);
void rewind (FILE *);
void clearerr (FILE *);
int feof (FILE *);
int ferror (FILE *);
void perror (const char *);

FILE * fopen (const char *restrict _name, const char *restrict _type);
int sprintf (char *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int remove (const char *);
int rename (const char *, const char *);
# 257 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
int fseeko (FILE *, off_t, int);
off_t ftello (FILE *);



int fcloseall (void);



int snprintf (char *restrict, size_t, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int vsnprintf (char *restrict, size_t, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int vfscanf (FILE *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int vscanf (const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 1, 0)));
int vsscanf (const char *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));


int asprintf (char **restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int vasprintf (char **, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));


int asiprintf (char **, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
char * asniprintf (char *, size_t *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
char * asnprintf (char *restrict, size_t *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));

int diprintf (int, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));

int fiprintf (FILE *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int fiscanf (FILE *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int iprintf (const char *, ...)
               __attribute__ ((__format__ (__printf__, 1, 2)));
int iscanf (const char *, ...)
               __attribute__ ((__format__ (__scanf__, 1, 2)));
int siprintf (char *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int siscanf (const char *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int sniprintf (char *, size_t, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int vasiprintf (char **, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
char * vasniprintf (char *, size_t *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
char * vasnprintf (char *, size_t *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int vdiprintf (int, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int vfiprintf (FILE *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int vfiscanf (FILE *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int viprintf (const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 1, 0)));
int viscanf (const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 1, 0)));
int vsiprintf (char *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int vsiscanf (const char *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int vsniprintf (char *, size_t, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
# 339 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
FILE * fdopen (int, const char *);

int fileno (FILE *);


int pclose (FILE *);
FILE * popen (const char *, const char *);



void setbuffer (FILE *, char *, int);
int setlinebuf (FILE *);



int getw (FILE *);
int putw (int, FILE *);


int getc_unlocked (FILE *);
int getchar_unlocked (void);
void flockfile (FILE *);
int ftrylockfile (FILE *);
void funlockfile (FILE *);
int putc_unlocked (int, FILE *);
int putchar_unlocked (int);
# 374 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
int dprintf (int, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));

FILE * fmemopen (void *restrict, size_t, const char *restrict);


FILE * open_memstream (char **, size_t *);
int vdprintf (int, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));



int renameat (int, const char *, int, const char *);
# 396 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
int _asiprintf_r (struct _reent *, char **, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
char * _asniprintf_r (struct _reent *, char *, size_t *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
char * _asnprintf_r (struct _reent *, char *restrict, size_t *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
int _asprintf_r (struct _reent *, char **restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _diprintf_r (struct _reent *, int, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _dprintf_r (struct _reent *, int, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _fclose_r (struct _reent *, FILE *);
int _fcloseall_r (struct _reent *);
FILE * _fdopen_r (struct _reent *, int, const char *);
int _fflush_r (struct _reent *, FILE *);
int _fgetc_r (struct _reent *, FILE *);
int _fgetc_unlocked_r (struct _reent *, FILE *);
char * _fgets_r (struct _reent *, char *restrict, int, FILE *restrict);
char * _fgets_unlocked_r (struct _reent *, char *restrict, int, FILE *restrict);




int _fgetpos_r (struct _reent *, FILE *, fpos_t *);
int _fsetpos_r (struct _reent *, FILE *, const fpos_t *);

int _fiprintf_r (struct _reent *, FILE *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _fiscanf_r (struct _reent *, FILE *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
FILE * _fmemopen_r (struct _reent *, void *restrict, size_t, const char *restrict);
FILE * _fopen_r (struct _reent *, const char *restrict, const char *restrict);
FILE * _freopen_r (struct _reent *, const char *restrict, const char *restrict, FILE *restrict);
int _fprintf_r (struct _reent *, FILE *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _fpurge_r (struct _reent *, FILE *);
int _fputc_r (struct _reent *, int, FILE *);
int _fputc_unlocked_r (struct _reent *, int, FILE *);
int _fputs_r (struct _reent *, const char *restrict, FILE *restrict);
int _fputs_unlocked_r (struct _reent *, const char *restrict, FILE *restrict);
size_t _fread_r (struct _reent *, void *restrict, size_t _size, size_t _n, FILE *restrict);
size_t _fread_unlocked_r (struct _reent *, void *restrict, size_t _size, size_t _n, FILE *restrict);
int _fscanf_r (struct _reent *, FILE *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
int _fseek_r (struct _reent *, FILE *, long, int);
int _fseeko_r (struct _reent *, FILE *, _off_t, int);
long _ftell_r (struct _reent *, FILE *);
_off_t _ftello_r (struct _reent *, FILE *);
void _rewind_r (struct _reent *, FILE *);
size_t _fwrite_r (struct _reent *, const void *restrict, size_t _size, size_t _n, FILE *restrict);
size_t _fwrite_unlocked_r (struct _reent *, const void *restrict, size_t _size, size_t _n, FILE *restrict);
int _getc_r (struct _reent *, FILE *);
int _getc_unlocked_r (struct _reent *, FILE *);
int _getchar_r (struct _reent *);
int _getchar_unlocked_r (struct _reent *);
char * _gets_r (struct _reent *, char *);
int _iprintf_r (struct _reent *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int _iscanf_r (struct _reent *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
FILE * _open_memstream_r (struct _reent *, char **, size_t *);
void _perror_r (struct _reent *, const char *);
int _printf_r (struct _reent *, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int _putc_r (struct _reent *, int, FILE *);
int _putc_unlocked_r (struct _reent *, int, FILE *);
int _putchar_unlocked_r (struct _reent *, int);
int _putchar_r (struct _reent *, int);
int _puts_r (struct _reent *, const char *);
int _remove_r (struct _reent *, const char *);
int _rename_r (struct _reent *,
      const char *_old, const char *_new);
int _scanf_r (struct _reent *, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int _siprintf_r (struct _reent *, char *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _siscanf_r (struct _reent *, const char *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
int _sniprintf_r (struct _reent *, char *, size_t, const char *, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
int _snprintf_r (struct _reent *, char *restrict, size_t, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
int _sprintf_r (struct _reent *, char *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _sscanf_r (struct _reent *, const char *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
char * _tempnam_r (struct _reent *, const char *, const char *);
FILE * _tmpfile_r (struct _reent *);
char * _tmpnam_r (struct _reent *, char *);
int _ungetc_r (struct _reent *, int, FILE *);
int _vasiprintf_r (struct _reent *, char **, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
char * _vasniprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
char * _vasnprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
int _vasprintf_r (struct _reent *, char **, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vdiprintf_r (struct _reent *, int, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vdprintf_r (struct _reent *, int, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vfiprintf_r (struct _reent *, FILE *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vfiscanf_r (struct _reent *, FILE *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));
int _vfprintf_r (struct _reent *, FILE *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vfscanf_r (struct _reent *, FILE *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));
int _viprintf_r (struct _reent *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int _viscanf_r (struct _reent *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int _vprintf_r (struct _reent *, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int _vscanf_r (struct _reent *, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int _vsiprintf_r (struct _reent *, char *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vsiscanf_r (struct _reent *, const char *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));
int _vsniprintf_r (struct _reent *, char *, size_t, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
int _vsnprintf_r (struct _reent *, char *restrict, size_t, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
int _vsprintf_r (struct _reent *, char *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vsscanf_r (struct _reent *, const char *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));



int fpurge (FILE *);
ssize_t __getdelim (char **, size_t *, int, FILE *);
ssize_t __getline (char **, size_t *, FILE *);


void clearerr_unlocked (FILE *);
int feof_unlocked (FILE *);
int ferror_unlocked (FILE *);
int fileno_unlocked (FILE *);
int fflush_unlocked (FILE *);
int fgetc_unlocked (FILE *);
int fputc_unlocked (int, FILE *);
size_t fread_unlocked (void *restrict, size_t _size, size_t _n, FILE *restrict);
size_t fwrite_unlocked (const void *restrict , size_t _size, size_t _n, FILE *);



char * fgets_unlocked (char *restrict, int, FILE *restrict);
int fputs_unlocked (const char *restrict, FILE *restrict);
# 577 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
int __srget_r (struct _reent *, FILE *);
int __swbuf_r (struct _reent *, int, FILE *);
# 601 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
FILE *funopen (const void *__cookie,
  int (*__readfn)(void *__cookie, char *__buf,
    int __n),
  int (*__writefn)(void *__cookie, const char *__buf,
     int __n),
  fpos_t (*__seekfn)(void *__cookie, fpos_t __off, int __whence),
  int (*__closefn)(void *__cookie));
FILE *_funopen_r (struct _reent *, const void *__cookie,
  int (*__readfn)(void *__cookie, char *__buf,
    int __n),
  int (*__writefn)(void *__cookie, const char *__buf,
     int __n),
  fpos_t (*__seekfn)(void *__cookie, fpos_t __off, int __whence),
  int (*__closefn)(void *__cookie));
# 624 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
typedef ssize_t cookie_read_function_t(void *__cookie, char *__buf, size_t __n);
typedef ssize_t cookie_write_function_t(void *__cookie, const char *__buf,
     size_t __n);




typedef int cookie_seek_function_t(void *__cookie, off_t *__off, int __whence);

typedef int cookie_close_function_t(void *__cookie);
typedef struct
{


  cookie_read_function_t *read;
  cookie_write_function_t *write;
  cookie_seek_function_t *seek;
  cookie_close_function_t *close;
} cookie_io_functions_t;
FILE *fopencookie (void *__cookie,
  const char *__mode, cookie_io_functions_t __functions);
FILE *_fopencookie_r (struct _reent *, void *__cookie,
  const char *__mode, cookie_io_functions_t __functions);
# 687 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
static __inline__ int __sputc_r(struct _reent *_ptr, int _c, FILE *_p) {




 if (--_p->_w >= 0 || (_p->_w >= _p->_lbfsize && (char)_c != '\n'))
  return (*_p->_p++ = _c);
 else
  return (__swbuf_r(_ptr, _c, _p));
}
# 741 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
static __inline int
_getchar_unlocked(void)
{
 struct _reent *_ptr;

 _ptr = _impure_ptr;
 return ((--(((_ptr)->_stdin))->_r < 0 ? __srget_r(_ptr, ((_ptr)->_stdin)) : (int)(*(((_ptr)->_stdin))->_p++)));
}

static __inline int
_putchar_unlocked(int _c)
{
 struct _reent *_ptr;

 _ptr = _impure_ptr;
 return (__sputc_r(_ptr, _c, ((_ptr)->_stdout)));
}
# 797 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3

# 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Common/platform_print/bflb_platform.h" 2

# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 1 3
# 17 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 18 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3


# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_locale.h" 1 3
# 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_locale.h" 3
struct __locale_t;
typedef struct __locale_t *locale_t;
# 21 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3



# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/strings.h" 1 3
# 44 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/strings.h" 3


int bcmp(const void *, const void *, size_t) __attribute__((__pure__));
void bcopy(const void *, void *, size_t);
void bzero(void *, size_t);


void explicit_bzero(void *, size_t);


int ffs(int) __attribute__((__const__));


int ffsl(long) __attribute__((__const__));
int ffsll(long long) __attribute__((__const__));
int fls(int) __attribute__((__const__));
int flsl(long) __attribute__((__const__));
int flsll(long long) __attribute__((__const__));


char *index(const char *, int) __attribute__((__pure__));
char *rindex(const char *, int) __attribute__((__pure__));

int strcasecmp(const char *, const char *) __attribute__((__pure__));
int strncasecmp(const char *, const char *, size_t) __attribute__((__pure__));


int strcasecmp_l (const char *, const char *, locale_t);
int strncasecmp_l (const char *, const char *, size_t, locale_t);


# 25 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3




void * memchr (const void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void * memcpy (void *restrict, const void *restrict, size_t);
void * memmove (void *, const void *, size_t);
void * memset (void *, int, size_t);
char *strcat (char *restrict, const char *restrict);
char *strchr (const char *, int);
int strcmp (const char *, const char *);
int strcoll (const char *, const char *);
char *strcpy (char *restrict, const char *restrict);
size_t strcspn (const char *, const char *);
char *strerror (int);
size_t strlen (const char *);
char *strncat (char *restrict, const char *restrict, size_t);
int strncmp (const char *, const char *, size_t);
char *strncpy (char *restrict, const char *restrict, size_t);
char *strpbrk (const char *, const char *);
char *strrchr (const char *, int);
size_t strspn (const char *, const char *);
char *strstr (const char *, const char *);

char *strtok (char *restrict, const char *restrict);

size_t strxfrm (char *restrict, const char *restrict, size_t);


int strcoll_l (const char *, const char *, locale_t);
char *strerror_l (int, locale_t);
size_t strxfrm_l (char *restrict, const char *restrict, size_t, locale_t);


char *strtok_r (char *restrict, const char *restrict, char **restrict);


int timingsafe_bcmp (const void *, const void *, size_t);
int timingsafe_memcmp (const void *, const void *, size_t);


void * memccpy (void *restrict, const void *restrict, int, size_t);


void * mempcpy (void *, const void *, size_t);
void * memmem (const void *, size_t, const void *, size_t);
void * memrchr (const void *, int, size_t);
void * rawmemchr (const void *, int);


char *stpcpy (char *restrict, const char *restrict);
char *stpncpy (char *restrict, const char *restrict, size_t);


char *strcasestr (const char *, const char *);
char *strchrnul (const char *, int);


char *strdup (const char *) __attribute__((__malloc__)) __attribute__((__warn_unused_result__));

char *_strdup_r (struct _reent *, const char *);

char *strndup (const char *, size_t) __attribute__((__malloc__)) __attribute__((__warn_unused_result__));

char *_strndup_r (struct _reent *, const char *, size_t);






char *strerror_r (int, char *, size_t);
# 112 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 3
char * _strerror_r (struct _reent *, int, int, int *);


size_t strlcat (char *, const char *, size_t);
size_t strlcpy (char *, const char *, size_t);


size_t strnlen (const char *, size_t);


char *strsep (char **, const char *);


char *strnstr(const char *, const char *, size_t) __attribute__((__pure__));



char *strlwr (char *);
char *strupr (char *);



char *strsignal (int __signo);







int strverscmp (const char *, const char *);
# 172 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 3
char *__attribute__((__nonnull__ (1))) basename (const char *) __asm__("" "__gnu_basename");


# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/string.h" 1 3
# 15 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/string.h" 3
static __inline unsigned long __libc_detect_null(unsigned long w)
{
  unsigned long mask = 0x7f7f7f7f;
  if (sizeof (long) == 8)
    mask = ((mask << 16) << 16) | mask;
  return ~(((w & mask) + mask) | w | mask);
}
# 176 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3


# 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Common/platform_print/bflb_platform.h" 2





# 12 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Common/platform_print/bflb_platform.h"
void * pvPortMalloc( size_t xWantedSize );
void* pvPortRealloc(void* ptr, size_t newsize);
void* pvPortCalloc(size_t numElements, size_t sizeOfElement);
void vPortFree( void *pv );






void bflb_platform_init(uint32_t baudrate);
void bflb_platform_deinit(void);
void bflb_platform_printf(char *fmt,...);
void bflb_platform_dump(const void *data,uint32_t len);
void bflb_platform_prints(char *data);
void bflb_platform_printx(uint32_t val);
void bflb_platform_printc(char c);
void bflb_platform_print_set(uint8_t logDisable);
int bflb_platform_get_random(uint8_t *data,uint32_t len);
int bflb_platform_get_input(uint8_t *data,uint32_t maxLen);

void bflb_platform_clear_time(void);
uint32_t bflb_platform_get_systick_int_cnt(void);
uint64_t bflb_platform_get_time_ms();
void bflb_platform_start_time(void);
void bflb_platform_stop_time(void);
void bflb_platform_set_alarm_time(uint64_t time);
void bflb_platform_init_time(void);
void bflb_platform_deinit_time(void);
void bflb_platform_delay_ms(uint32_t time);
uint32_t bflb_platform_get_log(uint8_t *data,uint32_t maxlen);
# 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h" 2
# 22 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
typedef enum
{
  SUCCESS = 0,
  ERROR = 1,
  TIMEOUT = 2,
}BL_Err_Type;




typedef enum
{
  DISABLE = 0,
  ENABLE = 1,
}BL_Fun_Type;




typedef enum
{
  RESET = 0,
  SET = 1,
}BL_Sts_Type;




typedef enum
{
  UNMASK = 0,
  MASK = 1
}BL_Mask_Type;
# 106 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
typedef enum
{
  LOGIC_LO = 0,
  LOGIC_HI = !LOGIC_LO
}LogicalStatus;




typedef enum
{
  DEACTIVE = 0,
  ACTIVE = !DEACTIVE
}ActiveStatus;




typedef void (intCallback_Type)(void);
typedef void( *pFunc )( void );







void Interrupt_Handler_Register(IRQn_Type irq,pFunc interruptFun);
void ASM_Delay_Us(uint32_t core,uint32_t cnt);
void BL602_Delay_US(uint32_t cnt);
void BL602_Delay_MS(uint32_t cnt);
void *BL602_MemCpy(void *dst, const void *src, uint32_t n);
uint32_t *BL602_MemCpy4(uint32_t *dst, const uint32_t *src, uint32_t n);
void *BL602_MemCpy_Fast(void *pdst, const void *psrc, uint32_t n);
void* BL602_MemSet(void *s, uint8_t c, uint32_t n);
uint32_t *BL602_MemSet4(uint32_t *dst, const uint32_t val, uint32_t n);
int BL602_MemCmp(const void *s1, const void *s2, uint32_t n);
# 41 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_l1c.h" 2
# 57 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_l1c.h"
typedef struct {
    BL_Fun_Type wrapDis;
    BL_Fun_Type bypassEn;
    uint8_t wayDis;
    BL_Fun_Type cntEn;
}L1C_CACHE_Cfg_Type;




typedef enum {
    L1C_BMX_ARB_FIX,
    L1C_BMX_ARB_ROUND_ROBIN,
    L1C_BMX_ARB_RANDOM,
}L1C_BMX_ARB_Type;




typedef struct {
    uint8_t timeoutEn;
    BL_Fun_Type errEn;
    L1C_BMX_ARB_Type arbMod;
}L1C_BMX_Cfg_Type;




typedef enum {
    L1C_BMX_BUS_ERR_TRUSTZONE_DECODE,
    L1C_BMX_BUS_ERR_ADDR_DECODE,
}L1C_BMX_BUS_ERR_Type;




typedef enum {
    L1C_BMX_ERR_INT_ERR,
    L1C_BMX_ERR_INT_ALL,
}L1C_BMX_ERR_INT_Type;




typedef enum {
    L1C_BMX_TO_INT_TIMEOUT,
    L1C_BMX_TO_INT_ALL,
}L1C_BMX_TO_INT_Type;
# 160 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_l1c.h"
BL_Err_Type L1C_Set_Wrap(BL_Fun_Type wrap);
BL_Err_Type L1C_Set_Way_Disable(uint8_t disableVal);
BL_Err_Type L1C_IROM_2T_Access_Set(uint8_t enable);

BL_Err_Type L1C_BMX_Init(L1C_BMX_Cfg_Type *l1cBmxCfg);
BL_Err_Type L1C_BMX_Addr_Monitor_Enable(void);
BL_Err_Type L1C_BMX_Addr_Monitor_Disable(void);
BL_Err_Type L1C_BMX_BusErrResponse_Enable(void);
BL_Err_Type L1C_BMX_BusErrResponse_Disable(void);
BL_Sts_Type L1C_BMX_Get_Status(L1C_BMX_BUS_ERR_Type errType);
uint32_t L1C_BMX_Get_Err_Addr(void);
BL_Err_Type L1C_BMX_ERR_INT_Callback_Install(L1C_BMX_ERR_INT_Type intType,intCallback_Type* cbFun);
BL_Err_Type L1C_BMX_TIMEOUT_INT_Callback_Install(L1C_BMX_TO_INT_Type intType,
                                                 intCallback_Type* cbFun);
              ;
# 38 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_l1c.c" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h" 1
# 39 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_l1c.c" 2
# 63 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_l1c.c"
static intCallback_Type * l1cBmxErrIntCbfArra[L1C_BMX_ERR_INT_ALL]={
# 63 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_l1c.c" 3 4
                                                                   ((void *)0)
# 63 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_l1c.c"
                                                                       };
static intCallback_Type * l1cBmxToIntCbfArra[L1C_BMX_TO_INT_ALL]={
# 64 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_l1c.c" 3 4
                                                                 ((void *)0)
# 64 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_l1c.c"
                                                                     };
# 100 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_l1c.c"
__attribute__((weak))
BL_Err_Type __attribute__((section(".tcm_code.""/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_l1c.c" "101"))) L1C_Set_Wrap(BL_Fun_Type wrap)
{
    uint32_t tmpVal = 0;
    uint8_t cacheEn = 0;

    tmpVal=(*((volatile uint32_t*)(((uint32_t)0x40009000)+(0x0))));
    cacheEn = ( ((((uint32_t)0x40009000))&(1U<<((0U)))) !=0 );
    if(cacheEn != 0){
        tmpVal=( (tmpVal) & (~(((1U << (1U)) - 1) << (0U))) );
        ((*(volatile uint32_t*)(((uint32_t)0x40009000)+(0x0)))=(tmpVal));
    }

    tmpVal=(*((volatile uint32_t*)(((uint32_t)0x40009000)+(0x0))));
    if(wrap == ENABLE){
        tmpVal=( (tmpVal) & (~(((1U << (1U)) - 1) << (26U))) );
    }else{
        tmpVal=( (tmpVal) |(1U<<(26U)));
    }
    ((*(volatile uint32_t*)(((uint32_t)0x40009000)+(0x0)))=(tmpVal));

    if(cacheEn != 0){
        tmpVal=( (tmpVal) |(1U<<(0U)));
        ((*(volatile uint32_t*)(((uint32_t)0x40009000)+(0x0)))=(tmpVal));
    }

    return SUCCESS;
}
# 139 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_l1c.c"
__attribute__((weak))
BL_Err_Type __attribute__((section(".tcm_code.""/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_l1c.c" "140"))) L1C_Set_Way_Disable(uint8_t disableVal)
{
    uint32_t tmpVal = 0;
    uint8_t cacheEn = 0;

    tmpVal=(*((volatile uint32_t*)(((uint32_t)0x40009000)+(0x0))));
    cacheEn = ( ((((uint32_t)0x40009000))&(1U<<((0U)))) !=0 );
    if(cacheEn != 0){
        tmpVal=( (tmpVal) & (~(((1U << (1U)) - 1) << (0U))) );
        ((*(volatile uint32_t*)(((uint32_t)0x40009000)+(0x0)))=(tmpVal));
    }

    tmpVal=(*((volatile uint32_t*)(((uint32_t)0x40009000)+(0x0))));
    tmpVal=( ((tmpVal)&(~(((1U << (4U)) - 1) << (8U)))) | ((uint32_t)(disableVal)<<(8U)) );
    ((*(volatile uint32_t*)(((uint32_t)0x40009000)+(0x0)))=(tmpVal));

    if(cacheEn != 0){
        tmpVal=( (tmpVal) |(1U<<(0U)));
        ((*(volatile uint32_t*)(((uint32_t)0x40009000)+(0x0)))=(tmpVal));
    }

    return SUCCESS;
}
# 174 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_l1c.c"
__attribute__((weak))
BL_Err_Type __attribute__((section(".tcm_code.""/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_l1c.c" "175"))) L1C_IROM_2T_Access_Set(uint8_t enable)
{
    uint32_t tmpVal = 0;

    tmpVal=(*((volatile uint32_t*)(((uint32_t)0x40009000)+(0x0))));
    if(enable){
        tmpVal=( (tmpVal) |(1U<<(12U)));
    }else{
        tmpVal=( (tmpVal) & (~(((1U << (1U)) - 1) << (12U))) );
    }
    ((*(volatile uint32_t*)(((uint32_t)0x40009000)+(0x0)))=(tmpVal));

    return SUCCESS;
}
# 199 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_l1c.c"
BL_Err_Type L1C_BMX_Init(L1C_BMX_Cfg_Type *l1cBmxCfg)
{
    uint32_t tmpVal = 0;

    ((void)0);

    tmpVal=(*((volatile uint32_t*)(((uint32_t)0x40009000)+(0x0))));
    tmpVal=( ((tmpVal)&(~(((1U << (4U)) - 1) << (20U)))) | ((uint32_t)(l1cBmxCfg->timeoutEn)<<(20U)) );
    tmpVal=( ((tmpVal)&(~(((1U << (1U)) - 1) << (15U)))) | ((uint32_t)(l1cBmxCfg->errEn)<<(15U)) );
    tmpVal=( ((tmpVal)&(~(((1U << (2U)) - 1) << (16U)))) | ((uint32_t)(l1cBmxCfg->arbMod)<<(16U)) );
    ((*(volatile uint32_t*)(((uint32_t)0x40009000)+(0x0)))=(tmpVal));






    return SUCCESS;
}
# 227 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_l1c.c"
BL_Err_Type L1C_BMX_Addr_Monitor_Enable(void)
{
    uint32_t tmpVal = 0;

    tmpVal=(*((volatile uint32_t*)(((uint32_t)0x40009000)+(0x200))));
    tmpVal=( (tmpVal) & (~(((1U << (1U)) - 1) << (0U))) );
    ((*(volatile uint32_t*)(((uint32_t)0x40009000)+(0x200)))=(tmpVal));

    return SUCCESS;
}
# 246 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_l1c.c"
BL_Err_Type L1C_BMX_Addr_Monitor_Disable(void)
{
    uint32_t tmpVal = 0;

    tmpVal=(*((volatile uint32_t*)(((uint32_t)0x40009000)+(0x200))));
    tmpVal=( (tmpVal) |(1U<<(0U)));
    ((*(volatile uint32_t*)(((uint32_t)0x40009000)+(0x200)))=(tmpVal));

    return SUCCESS;
}
# 265 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_l1c.c"
BL_Err_Type L1C_BMX_BusErrResponse_Enable(void)
{
    uint32_t tmpVal = 0;

    tmpVal=(*((volatile uint32_t*)(((uint32_t)0x40009000)+(0x0))));
    tmpVal=( (tmpVal) |(1U<<(15U)));
    ((*(volatile uint32_t*)(((uint32_t)0x40009000)+(0x0)))=(tmpVal));

    return SUCCESS;
}
# 284 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_l1c.c"
BL_Err_Type L1C_BMX_BusErrResponse_Disable(void)
{
    uint32_t tmpVal = 0;

    tmpVal=(*((volatile uint32_t*)(((uint32_t)0x40009000)+(0x0))));
    tmpVal=( (tmpVal) & (~(((1U << (1U)) - 1) << (15U))) );
    ((*(volatile uint32_t*)(((uint32_t)0x40009000)+(0x0)))=(tmpVal));

    return SUCCESS;
}
# 303 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_l1c.c"
BL_Sts_Type L1C_BMX_Get_Status(L1C_BMX_BUS_ERR_Type errType)
{
    uint32_t tmpVal = 0;

    ((void)0);

    tmpVal=(*((volatile uint32_t*)(((uint32_t)0x40009000)+(0x200))));
    if(errType==L1C_BMX_BUS_ERR_TRUSTZONE_DECODE){
        return ( ((tmpVal) & (((1U << (1U)) - 1) << (5U))) >> (5U) )?SET:RESET;
    }else{
        return ( ((tmpVal) & (((1U << (1U)) - 1) << (4U))) >> (4U) )?SET:RESET;
    }
}
# 325 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_l1c.c"
uint32_t L1C_BMX_Get_Err_Addr(void)
{
    return (*((volatile uint32_t*)(((uint32_t)0x40009000)+(0x204))));
}
# 339 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_l1c.c"
BL_Err_Type L1C_BMX_ERR_INT_Callback_Install(L1C_BMX_ERR_INT_Type intType,intCallback_Type* cbFun)
{
    ((void)0);

    l1cBmxErrIntCbfArra[intType] = cbFun;

    return SUCCESS;
}
# 383 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_l1c.c"
BL_Err_Type L1C_BMX_TIMEOUT_INT_Callback_Install(L1C_BMX_TO_INT_Type intType,intCallback_Type* cbFun)
{
    ((void)0);

    l1cBmxToIntCbfArra[intType] = cbFun;

    return SUCCESS;
}
