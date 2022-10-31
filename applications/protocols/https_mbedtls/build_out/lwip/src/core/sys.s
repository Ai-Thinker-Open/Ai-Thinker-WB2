	.file	"sys.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.sys_msleep,"ax",@progbits
	.align	1
	.globl	sys_msleep
	.type	sys_msleep, @function
sys_msleep:
.LFB4:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/core/sys.c"
	.loc 1 136 1
	.cfi_startproc
.LVL0:
	.loc 1 137 3
	.loc 1 137 6 is_stmt 0
	beq	a0,zero,.L8
	.loc 1 136 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
.LBB2:
	.loc 1 139 17
	li	a1,0
	.cfi_offset 8, -8
	mv	s0,a0
	.loc 1 138 5 is_stmt 1
	.loc 1 139 5
	.loc 1 139 17 is_stmt 0
	addi	a0,sp,12
.LVL1:
.LBE2:
	.loc 1 136 1
	sw	ra,28(sp)
	.cfi_offset 1, -4
.LBB3:
	.loc 1 139 17
	call	sys_sem_new
.LVL2:
	.loc 1 140 5 is_stmt 1
	.loc 1 140 8 is_stmt 0
	bne	a0,zero,.L1
	.loc 1 141 7 is_stmt 1
	mv	a1,s0
	addi	a0,sp,12
.LVL3:
	call	sys_arch_sem_wait
.LVL4:
	.loc 1 142 7
	addi	a0,sp,12
	call	sys_sem_free
.LVL5:
.L1:
.LBE3:
	.loc 1 145 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL6:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL7:
.L8:
	ret
	.cfi_endproc
.LFE4:
	.size	sys_msleep, .-sys_msleep
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/arch.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/err.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/semphr.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/lwip-port/arch/sys_arch.h"
	.file 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/sys.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x219
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF41
	.byte	0xc
	.4byte	.LASF42
	.4byte	.LASF43
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x29
	.byte	0x15
	.4byte	0x38
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x67
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.byte	0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.byte	0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x14
	.byte	0x12
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x5b
	.byte	0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x7e
	.byte	0x10
	.4byte	0x8a
	.byte	0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x81
	.byte	0x12
	.4byte	0x96
	.byte	0x5
	.byte	0x5
	.byte	0x4
	.4byte	0x25
	.byte	0x5
	.byte	0x35
	.byte	0xe
	.4byte	0x12f
	.byte	0x6
	.4byte	.LASF16
	.byte	0
	.byte	0x7
	.4byte	.LASF17
	.byte	0x7f
	.byte	0x7
	.4byte	.LASF18
	.byte	0x7e
	.byte	0x7
	.4byte	.LASF19
	.byte	0x7d
	.byte	0x7
	.4byte	.LASF20
	.byte	0x7c
	.byte	0x7
	.4byte	.LASF21
	.byte	0x7b
	.byte	0x7
	.4byte	.LASF22
	.byte	0x7a
	.byte	0x7
	.4byte	.LASF23
	.byte	0x79
	.byte	0x7
	.4byte	.LASF24
	.byte	0x78
	.byte	0x7
	.4byte	.LASF25
	.byte	0x77
	.byte	0x7
	.4byte	.LASF26
	.byte	0x76
	.byte	0x7
	.4byte	.LASF27
	.byte	0x75
	.byte	0x7
	.4byte	.LASF28
	.byte	0x74
	.byte	0x7
	.4byte	.LASF29
	.byte	0x73
	.byte	0x7
	.4byte	.LASF30
	.byte	0x72
	.byte	0x7
	.4byte	.LASF31
	.byte	0x71
	.byte	0x7
	.4byte	.LASF32
	.byte	0x70
	.byte	0
	.byte	0x3
	.4byte	.LASF33
	.byte	0x5
	.byte	0x60
	.byte	0xe
	.4byte	0xa2
	.byte	0x3
	.4byte	.LASF34
	.byte	0x6
	.byte	0x30
	.byte	0x22
	.4byte	0x147
	.byte	0x8
	.byte	0x4
	.4byte	0x14d
	.byte	0x9
	.4byte	.LASF44
	.byte	0x3
	.4byte	.LASF35
	.byte	0x7
	.byte	0x25
	.byte	0x17
	.4byte	0x13b
	.byte	0x3
	.4byte	.LASF36
	.byte	0x8
	.byte	0x2c
	.byte	0x1b
	.4byte	0x152
	.byte	0xa
	.4byte	.LASF45
	.byte	0x1
	.byte	0x87
	.byte	0x1
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x1f8
	.byte	0xb
	.string	"ms"
	.byte	0x1
	.byte	0x87
	.byte	0x12
	.4byte	0xae
	.4byte	.LLST0
	.byte	0xc
	.4byte	.Ldebug_ranges0+0
	.byte	0xd
	.4byte	.LASF37
	.byte	0x1
	.byte	0x8a
	.byte	0xf
	.4byte	0x15e
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0xe
	.string	"err"
	.byte	0x1
	.byte	0x8b
	.byte	0xb
	.4byte	0x12f
	.4byte	.LLST1
	.byte	0xf
	.4byte	.LVL2
	.4byte	0x1f8
	.4byte	0x1cc
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0xf
	.4byte	.LVL4
	.4byte	0x204
	.4byte	0x1e6
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LVL5
	.4byte	0x210
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x9
	.byte	0xc3
	.byte	0x7
	.byte	0x12
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x9
	.byte	0xdb
	.byte	0x7
	.byte	0x12
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x9
	.byte	0xe1
	.byte	0x6
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.byte	0x13
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0x1b
	.byte	0xe
	.byte	0x55
	.byte	0x17
	.byte	0x11
	.byte	0x1
	.byte	0x10
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x4
	.byte	0x1
	.byte	0x3e
	.byte	0xb
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xd
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0x6e
	.byte	0xe
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	0
	.4byte	0
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"__int8_t"
.LASF40:
	.string	"sys_sem_free"
.LASF37:
	.string	"delaysem"
.LASF22:
	.string	"ERR_VAL"
.LASF34:
	.string	"QueueHandle_t"
.LASF39:
	.string	"sys_arch_sem_wait"
.LASF14:
	.string	"s8_t"
.LASF24:
	.string	"ERR_USE"
.LASF26:
	.string	"ERR_ISCONN"
.LASF44:
	.string	"QueueDefinition"
.LASF33:
	.string	"err_t"
.LASF12:
	.string	"int8_t"
.LASF30:
	.string	"ERR_RST"
.LASF28:
	.string	"ERR_IF"
.LASF17:
	.string	"ERR_MEM"
.LASF7:
	.string	"long unsigned int"
.LASF42:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/core/sys.c"
.LASF3:
	.string	"short unsigned int"
.LASF29:
	.string	"ERR_ABRT"
.LASF1:
	.string	"unsigned char"
.LASF20:
	.string	"ERR_RTE"
.LASF35:
	.string	"SemaphoreHandle_t"
.LASF6:
	.string	"__uint32_t"
.LASF15:
	.string	"u32_t"
.LASF21:
	.string	"ERR_INPROGRESS"
.LASF16:
	.string	"ERR_OK"
.LASF10:
	.string	"unsigned int"
.LASF43:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/lwip"
.LASF9:
	.string	"long long unsigned int"
.LASF45:
	.string	"sys_msleep"
.LASF31:
	.string	"ERR_CLSD"
.LASF18:
	.string	"ERR_BUF"
.LASF8:
	.string	"long long int"
.LASF38:
	.string	"sys_sem_new"
.LASF41:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF11:
	.string	"char"
.LASF32:
	.string	"ERR_ARG"
.LASF2:
	.string	"short int"
.LASF27:
	.string	"ERR_CONN"
.LASF13:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF36:
	.string	"sys_sem_t"
.LASF0:
	.string	"signed char"
.LASF23:
	.string	"ERR_WOULDBLOCK"
.LASF19:
	.string	"ERR_TIMEOUT"
.LASF25:
	.string	"ERR_ALREADY"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
