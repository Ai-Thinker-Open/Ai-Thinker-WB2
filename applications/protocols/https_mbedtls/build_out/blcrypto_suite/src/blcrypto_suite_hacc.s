	.file	"blcrypto_suite_hacc.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.blcrypto_suite_hacc_reset,"ax",@progbits
	.align	1
	.globl	blcrypto_suite_hacc_reset
	.type	blcrypto_suite_hacc_reset, @function
blcrypto_suite_hacc_reset:
.LFB8:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/blcrypto_suite/src/blcrypto_suite_hacc.c"
	.loc 1 14 1
	.cfi_startproc
	.loc 1 15 5
	.loc 1 14 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 15 5
	call	Sec_Eng_PKA_Reset
.LVL0:
	.loc 1 16 5 is_stmt 1
	call	Sec_Eng_PKA_BigEndian_Enable
.LVL1:
	.loc 1 18 5
	.loc 1 19 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	blcrypto_suite_hacc_reset, .-blcrypto_suite_hacc_reset
	.section	.text.blcrypto_suite_hacc_gf2mont_256_bin,"ax",@progbits
	.align	1
	.globl	blcrypto_suite_hacc_gf2mont_256_bin
	.type	blcrypto_suite_hacc_gf2mont_256_bin, @function
blcrypto_suite_hacc_gf2mont_256_bin:
.LFB9:
	.loc 1 22 1 is_stmt 1
	.cfi_startproc
.LVL2:
	.loc 1 29 5
	.loc 1 22 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	mv	s0,a0
	mv	s2,a1
	mv	s1,a2
	.loc 1 29 5
	li	a3,1
	li	a2,16
.LVL3:
	li	a1,2
.LVL4:
	li	a0,4
.LVL5:
	.loc 1 22 1
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 29 5
	call	Sec_Eng_PKA_CREG
.LVL6:
	.loc 1 30 5 is_stmt 1
	mv	a2,s2
	li	a4,1
	li	a3,8
	li	a1,1
	li	a0,3
	call	Sec_Eng_PKA_Write_Data
.LVL7:
	.loc 1 31 5
	mv	a2,s1
	li	a4,1
	li	a3,8
	li	a1,2
	li	a0,3
	call	Sec_Eng_PKA_Write_Data
.LVL8:
	.loc 1 32 5
	li	a5,2
	sw	a5,0(sp)
	li	a7,3
	li	a6,2
	li	a5,4
	li	a4,256
	li	a3,1
	li	a2,3
	li	a1,0
	li	a0,3
	call	Sec_Eng_PKA_GF2Mont
.LVL9:
	.loc 1 33 5
	mv	a2,s0
	li	a0,3
	li	a3,8
	li	a1,0
	call	Sec_Eng_PKA_Read_Data
.LVL10:
	.loc 1 35 5
	.loc 1 36 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL11:
	lw	s1,20(sp)
	.cfi_restore 9
.LVL12:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL13:
	li	a0,0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	blcrypto_suite_hacc_gf2mont_256_bin, .-blcrypto_suite_hacc_gf2mont_256_bin
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sec_eng.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x25f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF27
	.byte	0xc
	.4byte	.LASF28
	.4byte	.LASF29
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF1
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF2
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.byte	0x3
	.4byte	.LASF30
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x5b
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x70
	.byte	0x2
	.byte	0x86
	.byte	0xe
	.4byte	0xc9
	.byte	0x6
	.4byte	.LASF10
	.byte	0x1
	.byte	0x6
	.4byte	.LASF11
	.byte	0x2
	.byte	0x6
	.4byte	.LASF12
	.byte	0x3
	.byte	0x6
	.4byte	.LASF13
	.byte	0x4
	.byte	0x6
	.4byte	.LASF14
	.byte	0x5
	.byte	0x6
	.4byte	.LASF15
	.byte	0x6
	.byte	0x6
	.4byte	.LASF16
	.byte	0x7
	.byte	0x6
	.4byte	.LASF17
	.byte	0x8
	.byte	0x6
	.4byte	.LASF18
	.byte	0x9
	.byte	0x6
	.4byte	.LASF19
	.byte	0xa
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x4f
	.byte	0x8
	.4byte	.LASF31
	.byte	0x1
	.byte	0x15
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x1e7
	.byte	0x9
	.4byte	.LASF20
	.byte	0x1
	.byte	0x15
	.byte	0x33
	.4byte	0xc9
	.4byte	.LLST0
	.byte	0xa
	.string	"src"
	.byte	0x1
	.byte	0x15
	.byte	0x45
	.4byte	0xc9
	.4byte	.LLST1
	.byte	0xa
	.string	"p"
	.byte	0x1
	.byte	0x15
	.byte	0x54
	.4byte	0xc9
	.4byte	.LLST2
	.byte	0xb
	.4byte	.LVL6
	.4byte	0x214
	.4byte	0x139
	.byte	0xc
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x34
	.byte	0xc
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0xc
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0xc
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0xb
	.4byte	.LVL7
	.4byte	0x221
	.4byte	0x161
	.byte	0xc
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
	.byte	0xc
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0xc
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0xc
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x38
	.byte	0xc
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0xb
	.4byte	.LVL8
	.4byte	0x221
	.4byte	0x189
	.byte	0xc
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
	.byte	0xc
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0xc
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xc
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x38
	.byte	0xc
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0xb
	.4byte	.LVL9
	.4byte	0x22e
	.4byte	0x1c7
	.byte	0xc
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
	.byte	0xc
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0xc
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x33
	.byte	0xc
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x31
	.byte	0xc
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x100
	.byte	0xc
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x34
	.byte	0xc
	.byte	0x1
	.byte	0x60
	.byte	0x1
	.byte	0x32
	.byte	0xc
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.byte	0x33
	.byte	0xc
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0xd
	.4byte	.LVL10
	.4byte	0x23b
	.byte	0xc
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
	.byte	0xc
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0xc
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xc
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x38
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LASF32
	.byte	0x1
	.byte	0xd
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x214
	.byte	0xf
	.4byte	.LVL0
	.4byte	0x248
	.byte	0xf
	.4byte	.LVL1
	.4byte	0x255
	.byte	0
	.byte	0x10
	.4byte	.LASF21
	.4byte	.LASF21
	.byte	0x2
	.2byte	0x1db
	.byte	0x6
	.byte	0x10
	.4byte	.LASF22
	.4byte	.LASF22
	.byte	0x2
	.2byte	0x1d8
	.byte	0x6
	.byte	0x10
	.4byte	.LASF23
	.4byte	.LASF23
	.byte	0x2
	.2byte	0x20f
	.byte	0x6
	.byte	0x10
	.4byte	.LASF24
	.4byte	.LASF24
	.byte	0x2
	.2byte	0x1da
	.byte	0x6
	.byte	0x10
	.4byte	.LASF25
	.4byte	.LASF25
	.byte	0x2
	.2byte	0x1d5
	.byte	0x6
	.byte	0x10
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x2
	.2byte	0x1d6
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
	.byte	0xe
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
	.byte	0x8
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
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
	.byte	0x49
	.byte	0x13
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
	.byte	0x9
	.byte	0x5
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xa
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
	.byte	0xb
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
	.byte	0xc
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0x49
	.byte	0x13
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
	.byte	0xf
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL11
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL4
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL13
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL3
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL12
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF26:
	.string	"Sec_Eng_PKA_BigEndian_Enable"
.LASF31:
	.string	"blcrypto_suite_hacc_gf2mont_256_bin"
.LASF11:
	.string	"SEC_ENG_PKA_REG_SIZE_16"
.LASF12:
	.string	"SEC_ENG_PKA_REG_SIZE_32"
.LASF7:
	.string	"long long unsigned int"
.LASF4:
	.string	"unsigned char"
.LASF6:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF22:
	.string	"Sec_Eng_PKA_Write_Data"
.LASF14:
	.string	"SEC_ENG_PKA_REG_SIZE_96"
.LASF32:
	.string	"blcrypto_suite_hacc_reset"
.LASF21:
	.string	"Sec_Eng_PKA_CREG"
.LASF24:
	.string	"Sec_Eng_PKA_Read_Data"
.LASF28:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/blcrypto_suite/src/blcrypto_suite_hacc.c"
.LASF8:
	.string	"unsigned int"
.LASF9:
	.string	"char"
.LASF16:
	.string	"SEC_ENG_PKA_REG_SIZE_192"
.LASF20:
	.string	"result"
.LASF3:
	.string	"long long int"
.LASF27:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF19:
	.string	"SEC_ENG_PKA_REG_SIZE_512"
.LASF18:
	.string	"SEC_ENG_PKA_REG_SIZE_384"
.LASF1:
	.string	"short int"
.LASF13:
	.string	"SEC_ENG_PKA_REG_SIZE_64"
.LASF29:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/blcrypto_suite"
.LASF30:
	.string	"uint32_t"
.LASF2:
	.string	"long int"
.LASF17:
	.string	"SEC_ENG_PKA_REG_SIZE_256"
.LASF10:
	.string	"SEC_ENG_PKA_REG_SIZE_8"
.LASF23:
	.string	"Sec_Eng_PKA_GF2Mont"
.LASF0:
	.string	"signed char"
.LASF25:
	.string	"Sec_Eng_PKA_Reset"
.LASF15:
	.string	"SEC_ENG_PKA_REG_SIZE_128"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
