	.file	"blcrypto_suite_aes.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.blcrypto_suite_aes_init,"ax",@progbits
	.align	1
	.globl	blcrypto_suite_aes_init
	.type	blcrypto_suite_aes_init, @function
blcrypto_suite_aes_init:
.LFB8:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/blcrypto_suite/src/blcrypto_suite_aes.c"
	.loc 1 28 1
	.cfi_startproc
	.loc 1 29 5
	.loc 1 31 5
	.loc 1 28 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 31 20
	li	a0,64
	.loc 1 28 1
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 31 20
	call	pvPortMalloc
.LVL0:
	mv	s0,a0
.LVL1:
	.loc 1 32 5 is_stmt 1
	.loc 1 32 8 is_stmt 0
	beq	a0,zero,.L1
	.loc 1 36 5 is_stmt 1
	.loc 1 36 26 is_stmt 0
	sw	zero,0(a0)
	.loc 1 38 5 is_stmt 1
	li	a0,0
	call	Sec_Eng_AES_Enable_BE
.LVL2:
	.loc 1 40 5
	li	a2,64
	li	a1,0
	mv	a0,s0
	call	memset
.LVL3:
	.loc 1 41 5
	.loc 1 42 5
	.loc 1 44 5
	.loc 1 41 38 is_stmt 0
	lbu	a5,5(s0)
	andi	a5,a5,-55
	ori	a5,a5,2
	sb	a5,5(s0)
	.loc 1 45 5 is_stmt 1
.L1:
	.loc 1 46 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	mv	a0,s0
	lw	s0,8(sp)
	.cfi_restore 8
.LVL4:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	blcrypto_suite_aes_init, .-blcrypto_suite_aes_init
	.section	.text.blcrypto_suite_aes_deinit,"ax",@progbits
	.align	1
	.globl	blcrypto_suite_aes_deinit
	.type	blcrypto_suite_aes_deinit, @function
blcrypto_suite_aes_deinit:
.LFB9:
	.loc 1 49 1 is_stmt 1
	.cfi_startproc
.LVL5:
	.loc 1 50 5
	.loc 1 50 8 is_stmt 0
	beq	a0,zero,.L16
	.loc 1 49 1 discriminator 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	mv	s0,a0
	.loc 1 50 25 discriminator 1
	lw	a0,0(a0)
.LVL6:
	.loc 1 50 9 discriminator 1
	beq	a0,zero,.L7
	.loc 1 54 5 is_stmt 1
	call	vPortFree
.LVL7:
	.loc 1 55 5
	.loc 1 55 10 is_stmt 0
	sw	zero,0(s0)
.L7:
	.loc 1 56 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL8:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL9:
.L16:
	ret
	.cfi_endproc
.LFE9:
	.size	blcrypto_suite_aes_deinit, .-blcrypto_suite_aes_deinit
	.section	.text.blcrypto_suite_aes_set_key,"ax",@progbits
	.align	1
	.globl	blcrypto_suite_aes_set_key
	.type	blcrypto_suite_aes_set_key, @function
blcrypto_suite_aes_set_key:
.LFB10:
	.loc 1 59 1 is_stmt 1
	.cfi_startproc
.LVL10:
	.loc 1 60 5
	.loc 1 60 8 is_stmt 0
	beq	a0,zero,.L23
	.loc 1 59 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 66 41
	lw	a5,4(a0)
	mv	a1,a2
.LVL11:
	.loc 1 63 5 is_stmt 1
	.loc 1 65 5
	.loc 1 66 5
	mv	a4,a0
	.loc 1 66 41 is_stmt 0
	andi	a2,a5,-65
.LVL12:
	sw	a2,4(a0)
	.loc 1 68 5 is_stmt 1
	li	a2,192
	beq	a3,a2,.L21
	li	a2,256
	beq	a3,a2,.L22
	li	a2,128
	li	a0,-1
.LVL13:
	bne	a3,a2,.L19
	.loc 1 70 13
	.loc 1 70 44 is_stmt 0
	andi	a5,a5,-89
	sw	a5,4(a4)
	.loc 1 71 13 is_stmt 1
	li	a2,16
.L29:
	.loc 1 81 13 is_stmt 0
	addi	a0,a4,32
	call	memcpy
.LVL14:
	.loc 1 82 13 is_stmt 1
	.loc 1 87 12 is_stmt 0
	li	a0,0
.L19:
	.loc 1 88 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL15:
.L21:
	.cfi_restore_state
	.loc 1 75 13 is_stmt 1
	.loc 1 75 44 is_stmt 0
	andi	a5,a5,-89
	ori	a5,a5,16
	sw	a5,4(a0)
	.loc 1 76 13 is_stmt 1
	li	a2,24
	j	.L29
.L22:
	.loc 1 80 13
	.loc 1 80 44 is_stmt 0
	andi	a5,a5,-89
	ori	a5,a5,8
	sw	a5,4(a0)
	.loc 1 81 13 is_stmt 1
	li	a2,32
	j	.L29
.LVL16:
.L23:
	.cfi_def_cfa_offset 0
	.cfi_restore 1
	.loc 1 61 16 is_stmt 0
	li	a0,-1
.LVL17:
	.loc 1 88 1
	ret
	.cfi_endproc
.LFE10:
	.size	blcrypto_suite_aes_set_key, .-blcrypto_suite_aes_set_key
	.section	.text.blcrypto_suite_aes_crypt,"ax",@progbits
	.align	1
	.globl	blcrypto_suite_aes_crypt
	.type	blcrypto_suite_aes_crypt, @function
blcrypto_suite_aes_crypt:
.LFB11:
	.loc 1 91 1 is_stmt 1
	.cfi_startproc
.LVL18:
	.loc 1 92 5
	.loc 1 91 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 91 1
	sw	a2,12(sp)
	sw	a3,8(sp)
	.loc 1 92 8
	beq	a0,zero,.L32
	.loc 1 98 38
	lw	a3,4(a0)
.LVL19:
	.loc 1 99 8
	snez	a1,a1
.LVL20:
	.loc 1 98 38
	li	a5,65536
	slli	a1,a1,5
	or	a1,a1,a5
	addi	a5,a5,-33
	and	a5,a3,a5
	or	a1,a1,a5
	mv	s0,a0
	.loc 1 95 5 is_stmt 1
.LVL21:
	.loc 1 97 5
	.loc 1 98 5
	.loc 1 99 5
	.loc 1 98 38 is_stmt 0
	sw	a1,4(a0)
	.loc 1 105 5 is_stmt 1
	lw	a0,0(a0)
.LVL22:
	call	Sec_Eng_AES_Enable_Link
.LVL23:
	.loc 1 106 5
	lw	a4,8(sp)
	lw	a2,12(sp)
	lw	a0,0(s0)
	li	a3,16
	addi	a1,s0,4
	call	Sec_Eng_AES_Link_Work
.LVL24:
	.loc 1 107 5
	lw	a0,0(s0)
	call	Sec_Eng_AES_Disable_Link
.LVL25:
	.loc 1 109 5
	.loc 1 109 12 is_stmt 0
	li	a0,0
.LVL26:
.L30:
	.loc 1 110 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL27:
	jr	ra
.LVL28:
.L32:
	.cfi_restore_state
	.loc 1 93 16
	li	a0,-1
.LVL29:
	j	.L30
	.cfi_endproc
.LFE11:
	.size	blcrypto_suite_aes_crypt, .-blcrypto_suite_aes_crypt
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sec_eng.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Common/platform_print/bflb_platform.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/blcrypto_suite/inc/blcrypto_suite/blcrypto_suite_aes.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x53a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF67
	.byte	0xc
	.4byte	.LASF68
	.4byte	.LASF69
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
	.byte	0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x52
	.byte	0x4
	.4byte	0x41
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x6a
	.byte	0x4
	.4byte	0x59
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.byte	0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x7d
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.byte	0x6
	.4byte	.LASF70
	.byte	0x7
	.byte	0x4
	.4byte	0x92
	.byte	0x6
	.byte	0x8
	.byte	0x6
	.4byte	0xb8
	.byte	0x7
	.4byte	.LASF12
	.byte	0
	.byte	0x7
	.4byte	.LASF13
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0x8
	.byte	0x4
	.4byte	0x41
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x92
	.byte	0x3
	.byte	0x39
	.byte	0xe
	.4byte	0xda
	.byte	0x7
	.4byte	.LASF15
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x92
	.byte	0x3
	.byte	0x51
	.byte	0xe
	.4byte	0xfb
	.byte	0x7
	.4byte	.LASF16
	.byte	0
	.byte	0x7
	.4byte	.LASF17
	.byte	0x1
	.byte	0x7
	.4byte	.LASF18
	.byte	0x2
	.byte	0
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x92
	.byte	0x3
	.byte	0x5a
	.byte	0xe
	.4byte	0x122
	.byte	0x7
	.4byte	.LASF19
	.byte	0
	.byte	0x7
	.4byte	.LASF20
	.byte	0x1
	.byte	0x7
	.4byte	.LASF21
	.byte	0x2
	.byte	0x7
	.4byte	.LASF22
	.byte	0x3
	.byte	0
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x92
	.byte	0x3
	.byte	0x6e
	.byte	0xe
	.4byte	0x13d
	.byte	0x7
	.4byte	.LASF23
	.byte	0
	.byte	0x7
	.4byte	.LASF24
	.byte	0x1
	.byte	0
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x92
	.byte	0x3
	.byte	0x7e
	.byte	0xe
	.4byte	0x158
	.byte	0x7
	.4byte	.LASF25
	.byte	0
	.byte	0x7
	.4byte	.LASF26
	.byte	0x1
	.byte	0
	.byte	0xa
	.byte	0x3c
	.byte	0x4
	.byte	0x3
	.byte	0xf1
	.byte	0x9
	.4byte	0x2b6
	.byte	0xb
	.4byte	.LASF27
	.byte	0x3
	.byte	0xf3
	.byte	0xe
	.4byte	0x71
	.byte	0x4
	.byte	0x2
	.byte	0x1b
	.byte	0
	.byte	0xb
	.4byte	.LASF28
	.byte	0x3
	.byte	0xf4
	.byte	0xe
	.4byte	0x71
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.byte	0xb
	.4byte	.LASF29
	.byte	0x3
	.byte	0xf5
	.byte	0xe
	.4byte	0x71
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.byte	0xb
	.4byte	.LASF30
	.byte	0x3
	.byte	0xf6
	.byte	0xe
	.4byte	0x71
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.byte	0xb
	.4byte	.LASF31
	.byte	0x3
	.byte	0xf8
	.byte	0xe
	.4byte	0x71
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.byte	0xb
	.4byte	.LASF32
	.byte	0x3
	.byte	0xf9
	.byte	0xe
	.4byte	0x71
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.byte	0xb
	.4byte	.LASF33
	.byte	0x3
	.byte	0xfb
	.byte	0xe
	.4byte	0x71
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0
	.byte	0xb
	.4byte	.LASF34
	.byte	0x3
	.byte	0xfc
	.byte	0xe
	.4byte	0x71
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.byte	0xb
	.4byte	.LASF35
	.byte	0x3
	.byte	0xfe
	.byte	0xe
	.4byte	0x71
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	.LASF36
	.byte	0x3
	.byte	0xff
	.byte	0xe
	.4byte	0x71
	.byte	0x4
	.byte	0xd
	.4byte	.LASF37
	.byte	0x3
	.2byte	0x100
	.byte	0xe
	.4byte	0x71
	.byte	0x8
	.byte	0xd
	.4byte	.LASF38
	.byte	0x3
	.2byte	0x101
	.byte	0xe
	.4byte	0x71
	.byte	0xc
	.byte	0xd
	.4byte	.LASF39
	.byte	0x3
	.2byte	0x102
	.byte	0xe
	.4byte	0x71
	.byte	0x10
	.byte	0xd
	.4byte	.LASF40
	.byte	0x3
	.2byte	0x103
	.byte	0xe
	.4byte	0x71
	.byte	0x14
	.byte	0xd
	.4byte	.LASF41
	.byte	0x3
	.2byte	0x104
	.byte	0xe
	.4byte	0x71
	.byte	0x18
	.byte	0xd
	.4byte	.LASF42
	.byte	0x3
	.2byte	0x105
	.byte	0xe
	.4byte	0x71
	.byte	0x1c
	.byte	0xd
	.4byte	.LASF43
	.byte	0x3
	.2byte	0x106
	.byte	0xe
	.4byte	0x71
	.byte	0x20
	.byte	0xd
	.4byte	.LASF44
	.byte	0x3
	.2byte	0x107
	.byte	0xe
	.4byte	0x71
	.byte	0x24
	.byte	0xd
	.4byte	.LASF45
	.byte	0x3
	.2byte	0x108
	.byte	0xe
	.4byte	0x71
	.byte	0x28
	.byte	0xd
	.4byte	.LASF46
	.byte	0x3
	.2byte	0x109
	.byte	0xe
	.4byte	0x71
	.byte	0x2c
	.byte	0xd
	.4byte	.LASF47
	.byte	0x3
	.2byte	0x10a
	.byte	0xe
	.4byte	0x71
	.byte	0x30
	.byte	0xd
	.4byte	.LASF48
	.byte	0x3
	.2byte	0x10b
	.byte	0xe
	.4byte	0x71
	.byte	0x34
	.byte	0xd
	.4byte	.LASF49
	.byte	0x3
	.2byte	0x10c
	.byte	0xe
	.4byte	0x71
	.byte	0x38
	.byte	0
	.byte	0xe
	.4byte	.LASF71
	.byte	0x3
	.2byte	0x10d
	.byte	0x1e
	.4byte	0x158
	.byte	0x4
	.byte	0xf
	.4byte	.LASF72
	.byte	0x40
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x8
	.4byte	0x2ee
	.byte	0xc
	.4byte	.LASF50
	.byte	0x1
	.byte	0x17
	.byte	0x9
	.4byte	0x8b
	.byte	0
	.byte	0x10
	.4byte	.LASF73
	.byte	0x1
	.byte	0x18
	.byte	0x22
	.4byte	0x2b6
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x11
	.4byte	.LASF54
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.4byte	0x8b
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x3a1
	.byte	0x12
	.string	"aes"
	.byte	0x1
	.byte	0x5a
	.byte	0x39
	.4byte	0x3a6
	.4byte	.LLST7
	.byte	0x13
	.4byte	.LASF51
	.byte	0x1
	.byte	0x5a
	.byte	0x53
	.4byte	0x99
	.4byte	.LLST8
	.byte	0x12
	.string	"in"
	.byte	0x1
	.byte	0x5a
	.byte	0x68
	.4byte	0x3ac
	.4byte	.LLST9
	.byte	0x12
	.string	"out"
	.byte	0x1
	.byte	0x5a
	.byte	0x75
	.4byte	0xbf
	.4byte	.LLST10
	.byte	0x14
	.4byte	.LASF52
	.byte	0x1
	.byte	0x5f
	.byte	0x29
	.4byte	0x3b2
	.4byte	.LLST11
	.byte	0x14
	.4byte	.LASF53
	.byte	0x1
	.byte	0x61
	.byte	0x14
	.4byte	0x65
	.4byte	.LLST12
	.byte	0x15
	.4byte	.LVL23
	.4byte	0x4d9
	.byte	0x16
	.4byte	.LVL24
	.4byte	0x4e6
	.4byte	0x397
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x4
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0x17
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x40
	.byte	0x17
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0x91
	.byte	0x68
	.byte	0x6
	.byte	0
	.byte	0x15
	.4byte	.LVL25
	.4byte	0x4f3
	.byte	0
	.byte	0x18
	.4byte	.LASF74
	.byte	0x8
	.byte	0x4
	.4byte	0x3a1
	.byte	0x8
	.byte	0x4
	.4byte	0x4d
	.byte	0x8
	.byte	0x4
	.4byte	0x2c4
	.byte	0x11
	.4byte	.LASF55
	.byte	0x1
	.byte	0x3a
	.byte	0x5
	.4byte	0x8b
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x436
	.byte	0x12
	.string	"aes"
	.byte	0x1
	.byte	0x3a
	.byte	0x3b
	.4byte	0x3a6
	.4byte	.LLST2
	.byte	0x13
	.4byte	.LASF51
	.byte	0x1
	.byte	0x3a
	.byte	0x55
	.4byte	0x99
	.4byte	.LLST3
	.byte	0x12
	.string	"key"
	.byte	0x1
	.byte	0x3a
	.byte	0x6a
	.4byte	0x3ac
	.4byte	.LLST4
	.byte	0x13
	.4byte	.LASF56
	.byte	0x1
	.byte	0x3a
	.byte	0x73
	.4byte	0x8b
	.4byte	.LLST5
	.byte	0x14
	.4byte	.LASF52
	.byte	0x1
	.byte	0x3f
	.byte	0x29
	.4byte	0x3b2
	.4byte	.LLST6
	.byte	0x19
	.4byte	.LVL14
	.4byte	0x500
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LASF57
	.byte	0x1
	.byte	0x30
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x466
	.byte	0x12
	.string	"aes"
	.byte	0x1
	.byte	0x30
	.byte	0x3c
	.4byte	0x466
	.4byte	.LLST1
	.byte	0x15
	.4byte	.LVL7
	.4byte	0x50c
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x3a6
	.byte	0x1b
	.4byte	.LASF58
	.byte	0x1
	.byte	0x1b
	.byte	0x1c
	.4byte	0x3a6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x4d9
	.byte	0x14
	.4byte	.LASF52
	.byte	0x1
	.byte	0x1d
	.byte	0x29
	.4byte	0x3b2
	.4byte	.LLST0
	.byte	0x16
	.4byte	.LVL0
	.4byte	0x518
	.4byte	0x4aa
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0x16
	.4byte	.LVL2
	.4byte	0x524
	.4byte	0x4bd
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x19
	.4byte	.LVL3
	.4byte	0x531
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LASF59
	.4byte	.LASF59
	.byte	0x3
	.2byte	0x1c1
	.byte	0x6
	.byte	0x1c
	.4byte	.LASF60
	.4byte	.LASF60
	.byte	0x3
	.2byte	0x1c3
	.byte	0xd
	.byte	0x1c
	.4byte	.LASF61
	.4byte	.LASF61
	.byte	0x3
	.2byte	0x1c2
	.byte	0x6
	.byte	0x1d
	.4byte	.LASF62
	.4byte	.LASF62
	.byte	0x4
	.byte	0x1f
	.byte	0x8
	.byte	0x1d
	.4byte	.LASF63
	.4byte	.LASF63
	.byte	0x5
	.byte	0xf
	.byte	0x6
	.byte	0x1d
	.4byte	.LASF64
	.4byte	.LASF64
	.byte	0x5
	.byte	0xc
	.byte	0x8
	.byte	0x1c
	.4byte	.LASF65
	.4byte	.LASF65
	.byte	0x3
	.2byte	0x1c0
	.byte	0x6
	.byte	0x1d
	.4byte	.LASF66
	.4byte	.LASF66
	.byte	0x4
	.byte	0x21
	.byte	0x8
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x5
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
	.byte	0x6
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0xe
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
	.byte	0x7
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
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
	.byte	0xa
	.byte	0x13
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x88,0x1
	.byte	0xb
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
	.byte	0xb
	.byte	0xd
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
	.byte	0xb
	.byte	0xb
	.byte	0xd
	.byte	0xb
	.byte	0xc
	.byte	0xb
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0xd
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
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x88,0x1
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.byte	0x88,0x1
	.byte	0xb
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
	.byte	0x10
	.byte	0xd
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
	.byte	0x88,0x1
	.byte	0xb
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x14
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
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
	.byte	0x17
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
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
	.byte	0x1b
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
	.byte	0x1c
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
	.byte	0x1d
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
.LLST7:
	.4byte	.LVL18
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL22
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL29
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL20
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL18
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL23-1
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x2
	.byte	0x72
	.byte	0x6c
	.4byte	.LVL28
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL19
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x91
	.byte	0x68
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x2
	.byte	0x72
	.byte	0x68
	.4byte	.LVL28
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL22
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL21
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL14-1
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL11
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL12
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL14-1
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL16
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL14-1
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL14-1
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL4
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
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
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF54:
	.string	"blcrypto_suite_aes_crypt"
.LASF42:
	.string	"aesKey0"
.LASF43:
	.string	"aesKey1"
.LASF44:
	.string	"aesKey2"
.LASF21:
	.string	"SEC_ENG_AES_KEY_192BITS"
.LASF46:
	.string	"aesKey4"
.LASF18:
	.string	"SEC_ENG_AES_CBC"
.LASF48:
	.string	"aesKey6"
.LASF49:
	.string	"aesKey7"
.LASF16:
	.string	"SEC_ENG_AES_ECB"
.LASF1:
	.string	"short int"
.LASF72:
	.string	"blcrypto_suite_aes_internal"
.LASF65:
	.string	"Sec_Eng_AES_Enable_BE"
.LASF12:
	.string	"AES_ENC"
.LASF53:
	.string	"n_blk"
.LASF62:
	.string	"memcpy"
.LASF51:
	.string	"mode"
.LASF26:
	.string	"SEC_ENG_AES_DECRYPTION"
.LASF57:
	.string	"blcrypto_suite_aes_deinit"
.LASF69:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/blcrypto_suite"
.LASF5:
	.string	"uint8_t"
.LASF68:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/blcrypto_suite/src/blcrypto_suite_aes.c"
.LASF22:
	.string	"SEC_ENG_AES_DOUBLE_KEY_128BITS"
.LASF74:
	.string	"blcrypto_suite_aes"
.LASF31:
	.string	"aesIntClr"
.LASF45:
	.string	"aesKey3"
.LASF35:
	.string	"aesMsgLen"
.LASF50:
	.string	"aes_id"
.LASF33:
	.string	"aesBlockMode"
.LASF3:
	.string	"long long int"
.LASF56:
	.string	"bits"
.LASF66:
	.string	"memset"
.LASF55:
	.string	"blcrypto_suite_aes_set_key"
.LASF2:
	.string	"long int"
.LASF24:
	.string	"SEC_ENG_AES_USE_OLD"
.LASF9:
	.string	"long unsigned int"
.LASF25:
	.string	"SEC_ENG_AES_ENCRYPTION"
.LASF60:
	.string	"Sec_Eng_AES_Link_Work"
.LASF30:
	.string	"aesHwKeyEn"
.LASF28:
	.string	"aesDecEn"
.LASF52:
	.string	"aes_internal"
.LASF4:
	.string	"unsigned char"
.LASF20:
	.string	"SEC_ENG_AES_KEY_256BITS"
.LASF0:
	.string	"signed char"
.LASF10:
	.string	"long long unsigned int"
.LASF8:
	.string	"uint32_t"
.LASF11:
	.string	"unsigned int"
.LASF47:
	.string	"aesKey5"
.LASF6:
	.string	"uint16_t"
.LASF37:
	.string	"aesDstAddr"
.LASF38:
	.string	"aesIV0"
.LASF39:
	.string	"aesIV1"
.LASF40:
	.string	"aesIV2"
.LASF41:
	.string	"aesIV3"
.LASF59:
	.string	"Sec_Eng_AES_Enable_Link"
.LASF23:
	.string	"SEC_ENG_AES_USE_NEW"
.LASF14:
	.string	"char"
.LASF32:
	.string	"aesIntSet"
.LASF7:
	.string	"short unsigned int"
.LASF19:
	.string	"SEC_ENG_AES_KEY_128BITS"
.LASF34:
	.string	"aesIVSel"
.LASF36:
	.string	"aesSrcAddr"
.LASF58:
	.string	"blcrypto_suite_aes_init"
.LASF63:
	.string	"vPortFree"
.LASF15:
	.string	"SEC_ENG_AES_ID0"
.LASF71:
	.string	"SEC_Eng_AES_Link_Config_Type"
.LASF73:
	.string	"link_cfg"
.LASF13:
	.string	"AES_DEC"
.LASF17:
	.string	"SEC_ENG_AES_CTR"
.LASF61:
	.string	"Sec_Eng_AES_Disable_Link"
.LASF29:
	.string	"aesDecKeySel"
.LASF64:
	.string	"pvPortMalloc"
.LASF70:
	.string	"crypto_aes_mode"
.LASF27:
	.string	"aesMode"
.LASF67:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
