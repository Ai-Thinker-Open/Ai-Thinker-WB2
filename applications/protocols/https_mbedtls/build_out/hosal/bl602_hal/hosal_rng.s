	.file	"hosal_rng.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.hosal_rng_init,"ax",@progbits
	.align	1
	.globl	hosal_rng_init
	.type	hosal_rng_init, @function
hosal_rng_init:
.LFB3:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/hosal_rng.c"
	.loc 1 7 1
	.cfi_startproc
	.loc 1 8 5
	.loc 1 7 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 8 5
	call	bl_sec_init
.LVL0:
	.loc 1 9 5 is_stmt 1
	.loc 1 10 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	hosal_rng_init, .-hosal_rng_init
	.section	.text.hosal_random_num_read,"ax",@progbits
	.align	1
	.globl	hosal_random_num_read
	.type	hosal_random_num_read, @function
hosal_random_num_read:
.LFB4:
	.loc 1 13 1 is_stmt 1
	.cfi_startproc
.LVL1:
	.loc 1 14 5
	.loc 1 15 5
	.loc 1 16 5
	.loc 1 18 2
	.loc 1 18 4 is_stmt 0
	beq	a0,zero,.L10
	.loc 1 13 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	mv	s0,a0
	mv	s1,a1
	.loc 1 23 5 is_stmt 1
.LVL2:
	.loc 1 25 5
	.loc 1 25 20 is_stmt 0
	srli	s3,a1,2
.LVL3:
	.loc 1 27 5 is_stmt 1
	.loc 1 27 12 is_stmt 0
	li	s2,0
.LVL4:
.L5:
	.loc 1 27 17 is_stmt 1 discriminator 1
	.loc 1 27 5 is_stmt 0 discriminator 1
	blt	s2,s3,.L6
	.loc 1 30 5 is_stmt 1
	.loc 1 30 9 is_stmt 0
	andi	a0,s1,-4
	add	s0,s0,a0
.LVL5:
	.loc 1 32 5 is_stmt 1
	.loc 1 32 11 is_stmt 0
	call	bl_rand
.LVL6:
	.loc 1 34 5 is_stmt 1
	.loc 1 34 15 is_stmt 0
	andi	s1,s1,3
.LVL7:
	.loc 1 34 8
	li	a5,1
	bne	s1,a5,.L7
	.loc 1 35 9 is_stmt 1
	.loc 1 35 29 is_stmt 0
	sb	a0,0(s0)
	.loc 1 37 5 is_stmt 1
	.loc 1 41 5
.LVL8:
.L15:
	.loc 1 48 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL9:
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
.LVL10:
	lw	s3,12(sp)
	.cfi_restore 19
.LVL11:
	.loc 1 47 12
	li	a0,0
	.loc 1 48 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL12:
.L6:
	.cfi_restore_state
	.loc 1 28 9 is_stmt 1 discriminator 3
	.loc 1 28 18 is_stmt 0 discriminator 3
	call	bl_rand
.LVL13:
	.loc 1 28 16 discriminator 3
	slli	a5,s2,2
	add	a5,s0,a5
	sw	a0,0(a5)
	.loc 1 27 29 is_stmt 1 discriminator 3
	.loc 1 27 30 is_stmt 0 discriminator 3
	addi	s2,s2,1
.LVL14:
	j	.L5
.LVL15:
.L7:
	.loc 1 37 5 is_stmt 1
	.loc 1 37 8 is_stmt 0
	li	a5,2
	beq	s1,a5,.L8
	.loc 1 41 5 is_stmt 1
	.loc 1 41 8 is_stmt 0
	li	a5,3
	bne	s1,a5,.L15
	.loc 1 42 9 is_stmt 1
	.loc 1 43 47 is_stmt 0
	srli	a5,a0,16
	.loc 1 42 29
	sb	a0,0(s0)
	.loc 1 43 9 is_stmt 1
	.loc 1 44 47 is_stmt 0
	srli	a0,a0,24
.LVL16:
	.loc 1 43 33
	sb	a5,1(s0)
	.loc 1 44 9 is_stmt 1
	.loc 1 44 33 is_stmt 0
	sb	a0,2(s0)
	j	.L15
.LVL17:
.L8:
	.loc 1 38 9 is_stmt 1
	.loc 1 38 29 is_stmt 0
	sb	a0,0(s0)
	.loc 1 39 9 is_stmt 1
	.loc 1 39 47 is_stmt 0
	srli	a0,a0,8
.LVL18:
	.loc 1 39 33
	sb	a0,1(s0)
	.loc 1 41 5 is_stmt 1
	j	.L15
.LVL19:
.L10:
	.cfi_def_cfa_offset 0
	.cfi_restore 1
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 18
	.cfi_restore 19
	.loc 1 20 10 is_stmt 0
	li	a0,-1
.LVL20:
	.loc 1 48 1
	ret
	.cfi_endproc
.LFE4:
	.size	hosal_random_num_read, .-hosal_random_num_read
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_sec.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x16e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF20
	.byte	0xc
	.4byte	.LASF21
	.4byte	.LASF22
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x38
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x60
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x5
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x54
	.byte	0x6
	.byte	0x4
	.4byte	0x98
	.byte	0x7
	.4byte	.LASF16
	.byte	0x1
	.byte	0xc
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x135
	.byte	0x8
	.string	"buf"
	.byte	0x1
	.byte	0xc
	.byte	0x21
	.4byte	0x83
	.4byte	.LLST0
	.byte	0x9
	.4byte	.LASF14
	.byte	0x1
	.byte	0xc
	.byte	0x2f
	.4byte	0x98
	.4byte	.LLST1
	.byte	0xa
	.string	"tmp"
	.byte	0x1
	.byte	0xe
	.byte	0xe
	.4byte	0x98
	.4byte	.LLST2
	.byte	0xa
	.string	"val"
	.byte	0x1
	.byte	0xf
	.byte	0xf
	.4byte	0xa4
	.4byte	.LLST3
	.byte	0xa
	.string	"i"
	.byte	0x1
	.byte	0x10
	.byte	0x9
	.4byte	0x75
	.4byte	.LLST4
	.byte	0xb
	.4byte	.LASF15
	.byte	0x1
	.byte	0x10
	.byte	0xc
	.4byte	0x75
	.4byte	.LLST5
	.byte	0xc
	.4byte	.LVL6
	.4byte	0x159
	.byte	0xc
	.4byte	.LVL13
	.4byte	0x159
	.byte	0
	.byte	0x7
	.4byte	.LASF17
	.byte	0x1
	.byte	0x6
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x159
	.byte	0xc
	.4byte	.LVL0
	.4byte	0x165
	.byte	0
	.byte	0xd
	.4byte	.LASF18
	.4byte	.LASF18
	.byte	0x4
	.byte	0x29
	.byte	0x5
	.byte	0xd
	.4byte	.LASF19
	.4byte	.LASF19
	.byte	0x4
	.byte	0x21
	.byte	0x5
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
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
	.byte	0x8
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
	.byte	0xb
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
	.byte	0xc
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
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
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL5
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL15
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL7
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL15
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL9
	.4byte	.LVL12
	.2byte	0xb
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9
	.byte	0xfc
	.byte	0x1a
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL12
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL3
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x6
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x63
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF8:
	.string	"long long int"
.LASF10:
	.string	"unsigned int"
.LASF6:
	.string	"__uint32_t"
.LASF14:
	.string	"bytes"
.LASF15:
	.string	"nwords"
.LASF7:
	.string	"long unsigned int"
.LASF17:
	.string	"hosal_rng_init"
.LASF21:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/hosal_rng.c"
.LASF5:
	.string	"__uint8_t"
.LASF18:
	.string	"bl_rand"
.LASF9:
	.string	"long long unsigned int"
.LASF12:
	.string	"uint8_t"
.LASF1:
	.string	"unsigned char"
.LASF11:
	.string	"char"
.LASF13:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF3:
	.string	"short unsigned int"
.LASF0:
	.string	"signed char"
.LASF19:
	.string	"bl_sec_init"
.LASF2:
	.string	"short int"
.LASF22:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/hosal"
.LASF16:
	.string	"hosal_random_num_read"
.LASF20:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
