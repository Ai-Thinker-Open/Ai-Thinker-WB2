	.file	"bl_rtc.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.bl_rtc_init,"ax",@progbits
	.align	1
	.globl	bl_rtc_init
	.type	bl_rtc_init, @function
bl_rtc_init:
.LFB8:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_rtc.c"
	.loc 1 5 1
	.cfi_startproc
	.loc 1 9 5
	.loc 1 5 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 9 5
	li	a0,0
	.loc 1 5 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 9 5
	call	HBN_32K_Sel
.LVL0:
	.loc 1 12 5 is_stmt 1
	call	HBN_Clear_RTC_Counter
.LVL1:
	.loc 1 13 5
	.loc 1 14 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 13 5
	tail	HBN_Enable_RTC_Counter
.LVL2:
	.cfi_endproc
.LFE8:
	.size	bl_rtc_init, .-bl_rtc_init
	.section	.text.bl_rtc_get_counter,"ax",@progbits
	.align	1
	.globl	bl_rtc_get_counter
	.type	bl_rtc_get_counter, @function
bl_rtc_get_counter:
.LFB9:
	.loc 1 17 1 is_stmt 1
	.cfi_startproc
	.loc 1 18 5
	.loc 1 20 5
	.loc 1 17 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 20 5
	addi	a1,sp,12
	addi	a0,sp,8
	.loc 1 17 1
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 20 5
	call	HBN_Get_RTC_Timer_Val
.LVL3:
	.loc 1 22 5 is_stmt 1
	.loc 1 23 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	a0,8(sp)
	lw	a1,12(sp)
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	bl_rtc_get_counter, .-bl_rtc_get_counter
	.section	.text.bl_rtc_get_timestamp_ms,"ax",@progbits
	.align	1
	.globl	bl_rtc_get_timestamp_ms
	.type	bl_rtc_get_timestamp_ms, @function
bl_rtc_get_timestamp_ms:
.LFB10:
	.loc 1 26 1 is_stmt 1
	.cfi_startproc
	.loc 1 27 5
	.loc 1 29 5
	.loc 1 26 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 29 11
	call	bl_rtc_get_counter
.LVL4:
	.loc 1 31 5 is_stmt 1
	.loc 1 31 20 is_stmt 0
	slli	a5,a1,27
	srli	a4,a0,5
	or	a4,a5,a4
	.loc 1 31 35
	slli	a2,a1,21
	srli	a5,a0,11
	.loc 1 31 51
	slli	a6,a1,20
	srli	a0,a0,12
.LVL5:
	.loc 1 31 35
	or	a5,a2,a5
	.loc 1 31 51
	or	a0,a6,a0
	.loc 1 31 20
	srli	a3,a1,5
	.loc 1 31 35
	srli	a2,a1,11
	.loc 1 31 42
	add	a0,a5,a0
	.loc 1 31 51
	srli	a1,a1,12
	.loc 1 32 1
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 31 42
	sltu	a5,a0,a5
	add	a1,a2,a1
	sub	a0,a4,a0
	add	a5,a5,a1
	sgtu	a4,a0,a4
	sub	a1,a3,a5
	.loc 1 32 1
	sub	a1,a1,a4
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	bl_rtc_get_timestamp_ms, .-bl_rtc_get_timestamp_ms
	.section	.text.bl_rtc_get_delta_counter,"ax",@progbits
	.align	1
	.globl	bl_rtc_get_delta_counter
	.type	bl_rtc_get_delta_counter, @function
bl_rtc_get_delta_counter:
.LFB11:
	.loc 1 35 1 is_stmt 1
	.cfi_startproc
.LVL6:
	.loc 1 36 5
	.loc 1 38 5
	.loc 1 35 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.loc 1 35 1
	mv	s1,a1
	mv	s0,a0
	.loc 1 38 11
	call	bl_rtc_get_counter
.LVL7:
	.loc 1 39 13
	andi	a4,s1,255
	.loc 1 38 11
	mv	a5,a0
.LVL8:
	.loc 1 39 5 is_stmt 1
	.loc 1 41 5
	.loc 1 41 7 is_stmt 0
	bgtu	a4,a1,.L10
	bne	a4,a1,.L8
	bleu	s0,a0,.L8
.L10:
	.loc 1 42 9 is_stmt 1
	.loc 1 42 13 is_stmt 0
	addi	a1,a1,256
.LVL9:
.L8:
	.loc 1 45 5 is_stmt 1
	.loc 1 45 16 is_stmt 0
	sub	a0,a5,s0
.LVL10:
	.loc 1 46 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL11:
	.loc 1 45 16
	sgtu	a5,a0,a5
.LVL12:
	sub	a1,a1,a4
	.loc 1 46 1
	lw	s1,4(sp)
	.cfi_restore 9
	sub	a1,a1,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	bl_rtc_get_delta_counter, .-bl_rtc_get_delta_counter
	.section	.text.bl_rtc_get_delta_time_ms,"ax",@progbits
	.align	1
	.globl	bl_rtc_get_delta_time_ms
	.type	bl_rtc_get_delta_time_ms, @function
bl_rtc_get_delta_time_ms:
.LFB12:
	.loc 1 49 1 is_stmt 1
	.cfi_startproc
.LVL13:
	.loc 1 50 5
	.loc 1 52 5
	.loc 1 49 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 52 11
	call	bl_rtc_get_delta_counter
.LVL14:
	.loc 1 54 5 is_stmt 1
	.loc 1 54 20 is_stmt 0
	slli	a5,a1,27
	srli	a4,a0,5
	or	a4,a5,a4
	.loc 1 54 35
	slli	a2,a1,21
	srli	a5,a0,11
	.loc 1 54 51
	slli	a6,a1,20
	srli	a0,a0,12
.LVL15:
	.loc 1 54 35
	or	a5,a2,a5
	.loc 1 54 51
	or	a0,a6,a0
	.loc 1 54 20
	srli	a3,a1,5
	.loc 1 54 35
	srli	a2,a1,11
	.loc 1 54 42
	add	a0,a5,a0
	.loc 1 54 51
	srli	a1,a1,12
	.loc 1 55 1
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 54 42
	sltu	a5,a0,a5
	add	a1,a2,a1
	sub	a0,a4,a0
	add	a5,a5,a1
	sgtu	a4,a0,a4
	sub	a1,a3,a5
	.loc 1 55 1
	sub	a1,a1,a4
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE12:
	.size	bl_rtc_get_delta_time_ms, .-bl_rtc_get_delta_time_ms
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_hbn.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x232
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF26
	.byte	0xc
	.4byte	.LASF27
	.4byte	.LASF28
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.byte	0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x69
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0x37
	.byte	0x20
	.4byte	0x25
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x3
	.byte	0x64
	.byte	0xe
	.4byte	0xab
	.byte	0x6
	.4byte	.LASF12
	.byte	0
	.byte	0x6
	.4byte	.LASF13
	.byte	0x1
	.byte	0x6
	.4byte	.LASF14
	.byte	0x3
	.byte	0
	.byte	0x7
	.4byte	.LASF15
	.byte	0x1
	.byte	0x30
	.byte	0xa
	.4byte	0x70
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0xfe
	.byte	0x8
	.4byte	.LASF17
	.byte	0x1
	.byte	0x30
	.byte	0x2c
	.4byte	0x70
	.4byte	.LLST3
	.byte	0x9
	.string	"cnt"
	.byte	0x1
	.byte	0x32
	.byte	0xe
	.4byte	0x70
	.4byte	.LLST4
	.byte	0xa
	.4byte	.LVL14
	.4byte	0xfe
	.byte	0xb
	.byte	0x6
	.byte	0x5a
	.byte	0x93
	.byte	0x4
	.byte	0x5b
	.byte	0x93
	.byte	0x4
	.byte	0x5
	.byte	0xf3
	.byte	0x3
	.byte	0xf5
	.byte	0xa
	.byte	0x25
	.byte	0
	.byte	0
	.byte	0x7
	.4byte	.LASF16
	.byte	0x1
	.byte	0x22
	.byte	0xa
	.4byte	0x70
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x142
	.byte	0x8
	.4byte	.LASF17
	.byte	0x1
	.byte	0x22
	.byte	0x2c
	.4byte	0x70
	.4byte	.LLST1
	.byte	0x9
	.string	"cnt"
	.byte	0x1
	.byte	0x24
	.byte	0xe
	.4byte	0x70
	.4byte	.LLST2
	.byte	0xc
	.4byte	.LVL7
	.4byte	0x176
	.byte	0
	.byte	0x7
	.4byte	.LASF18
	.byte	0x1
	.byte	0x19
	.byte	0xa
	.4byte	0x70
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x176
	.byte	0x9
	.string	"cnt"
	.byte	0x1
	.byte	0x1b
	.byte	0xe
	.4byte	0x70
	.4byte	.LLST0
	.byte	0xc
	.4byte	.LVL4
	.4byte	0x176
	.byte	0
	.byte	0x7
	.4byte	.LASF19
	.byte	0x1
	.byte	0x10
	.byte	0xa
	.4byte	0x70
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x1c5
	.byte	0xd
	.4byte	.LASF20
	.byte	0x1
	.byte	0x12
	.byte	0xe
	.4byte	0x5d
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0xd
	.4byte	.LASF21
	.byte	0x1
	.byte	0x12
	.byte	0x16
	.4byte	0x5d
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0xa
	.4byte	.LVL3
	.4byte	0x201
	.byte	0xb
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0xb
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LASF29
	.byte	0x1
	.byte	0x4
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x201
	.byte	0xf
	.4byte	.LVL0
	.4byte	0x20e
	.4byte	0x1ee
	.byte	0xb
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0xc
	.4byte	.LVL1
	.4byte	0x21b
	.byte	0x10
	.4byte	.LVL2
	.4byte	0x228
	.byte	0
	.byte	0x11
	.4byte	.LASF22
	.4byte	.LASF22
	.byte	0x3
	.2byte	0x1c6
	.byte	0xd
	.byte	0x11
	.4byte	.LASF23
	.4byte	.LASF23
	.byte	0x3
	.2byte	0x1b5
	.byte	0xd
	.byte	0x11
	.4byte	.LASF24
	.4byte	.LASF24
	.byte	0x3
	.2byte	0x1c3
	.byte	0xd
	.byte	0x11
	.4byte	.LASF25
	.4byte	.LASF25
	.byte	0x3
	.2byte	0x1c4
	.byte	0xd
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
	.byte	0x9
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
	.byte	0xa
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
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
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
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
.LLST3:
	.4byte	.LVL13
	.4byte	.LVL14-1
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.byte	0x4
	.byte	0x5b
	.byte	0x93
	.byte	0x4
	.4byte	.LVL14-1
	.4byte	.LFE12
	.2byte	0x6
	.byte	0xf3
	.byte	0x3
	.byte	0xf5
	.byte	0xa
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.byte	0x4
	.byte	0x5b
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL6
	.4byte	.LVL7-1
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.byte	0x4
	.byte	0x5b
	.byte	0x93
	.byte	0x4
	.4byte	.LVL7-1
	.4byte	.LVL8
	.2byte	0x6
	.byte	0xf3
	.byte	0x3
	.byte	0xf5
	.byte	0xa
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.byte	0x4
	.byte	0x5e
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.byte	0x4
	.byte	0x5b
	.byte	0x93
	.byte	0x4
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x6
	.byte	0x5f
	.byte	0x93
	.byte	0x4
	.byte	0x5b
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.byte	0x4
	.byte	0x5b
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
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
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
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
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"long long int"
.LASF13:
	.string	"HBN_32K_XTAL"
.LASF25:
	.string	"HBN_Enable_RTC_Counter"
.LASF10:
	.string	"uint64_t"
.LASF0:
	.string	"long long unsigned int"
.LASF6:
	.string	"unsigned char"
.LASF8:
	.string	"long unsigned int"
.LASF7:
	.string	"short unsigned int"
.LASF16:
	.string	"bl_rtc_get_delta_counter"
.LASF17:
	.string	"ref_cnt"
.LASF26:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF27:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_rtc.c"
.LASF1:
	.string	"unsigned int"
.LASF28:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/hosal"
.LASF18:
	.string	"bl_rtc_get_timestamp_ms"
.LASF11:
	.string	"char"
.LASF24:
	.string	"HBN_Clear_RTC_Counter"
.LASF14:
	.string	"HBN_32K_DIG"
.LASF22:
	.string	"HBN_Get_RTC_Timer_Val"
.LASF12:
	.string	"HBN_32K_RC"
.LASF29:
	.string	"bl_rtc_init"
.LASF19:
	.string	"bl_rtc_get_counter"
.LASF3:
	.string	"short int"
.LASF21:
	.string	"valHigh"
.LASF20:
	.string	"valLow"
.LASF9:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF2:
	.string	"signed char"
.LASF15:
	.string	"bl_rtc_get_delta_time_ms"
.LASF23:
	.string	"HBN_32K_Sel"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
