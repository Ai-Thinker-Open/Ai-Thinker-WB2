	.file	"utils_psk_fast.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.Bl_F_fast.constprop.0,"ax",@progbits
	.align	1
	.type	Bl_F_fast.constprop.0, @function
Bl_F_fast.constprop.0:
.LFB7:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/src/utils_psk_fast.c"
	.loc 1 10 13
	.cfi_startproc
.LVL0:
	.loc 1 12 5
	.loc 1 13 5
	.loc 1 10 13 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s1,52(sp)
	.cfi_offset 9, -12
	mv	s1,a0
	.loc 1 13 15
	mv	a0,a2
.LVL1:
	.loc 1 10 13
	sw	ra,60(sp)
	sw	a3,12(sp)
	sw	s0,56(sp)
	sw	s2,48(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	mv	s0,a4
	mv	s2,a1
	sw	s3,44(sp)
	sw	s4,40(sp)
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	mv	s3,a2
	sw	s5,36(sp)
	sw	s6,32(sp)
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.loc 1 10 13
	mv	s5,a6
	mv	s6,a5
	.loc 1 13 15
	call	strlen
.LVL2:
	.loc 1 18 5
	lw	a1,12(sp)
	.loc 1 14 29
	addi	a5,s0,4
	.loc 1 18 5
	mv	a2,s0
	.loc 1 13 15
	mv	s4,a0
.LVL3:
	.loc 1 14 5 is_stmt 1
	.loc 1 18 5 is_stmt 0
	mv	a0,s1
.LVL4:
	.loc 1 14 9
	sw	a5,24(sp)
	.loc 1 15 5 is_stmt 1
	.loc 1 15 21 is_stmt 0
	sw	s1,28(sp)
	.loc 1 18 5 is_stmt 1
	call	memcpy
.LVL5:
	.loc 1 19 5
	.loc 1 19 24 is_stmt 0
	add	a4,s1,s0
	.loc 1 22 28
	sb	s6,3(a4)
	.loc 1 19 24
	sb	zero,0(a4)
	.loc 1 20 5 is_stmt 1
	.loc 1 20 26 is_stmt 0
	sb	zero,1(a4)
	.loc 1 21 5 is_stmt 1
	.loc 1 21 26 is_stmt 0
	sb	zero,2(a4)
	.loc 1 22 5 is_stmt 1
	.loc 1 24 5
	call	bl_sha_mutex_take
.LVL6:
	.loc 1 25 5
	li	a6,20
	mv	a5,s2
	mv	a4,s4
	mv	a3,s3
	li	a2,1
	addi	a1,sp,24
	addi	a0,sp,28
	call	utils_hmac_sha1_fast
.LVL7:
	.loc 1 34 5
	li	a2,20
	mv	a1,s2
	mv	a0,s5
	.loc 1 35 11 is_stmt 0
	li	s0,4096
.LVL8:
	.loc 1 34 5
	call	memcpy
.LVL9:
	.loc 1 35 5 is_stmt 1
	.loc 1 35 11 is_stmt 0
	addi	s0,s0,-1
	sw	s2,28(sp)
	.loc 1 36 5 is_stmt 1
.LVL10:
	.loc 1 36 17
	.loc 1 38 16 is_stmt 0
	li	s6,20
.LVL11:
.L3:
	.loc 1 38 9 is_stmt 1
	.loc 1 41 9 is_stmt 0
	mv	a5,s1
	li	a6,20
	mv	a4,s4
	mv	a3,s3
	li	a2,1
	addi	a1,sp,24
	addi	a0,sp,28
	.loc 1 38 16
	sw	s6,24(sp)
	.loc 1 41 9 is_stmt 1
	call	utils_hmac_sha1_fast
.LVL12:
	.loc 1 49 9
	li	a2,20
	mv	a1,s1
	mv	a0,s2
	call	memcpy
.LVL13:
	.loc 1 52 9
	.loc 1 52 21
	.loc 1 52 16 is_stmt 0
	li	a5,0
.LVL14:
.L2:
	.loc 1 54 13 is_stmt 1
	add	a3,s5,a5
	.loc 1 54 32 is_stmt 0
	add	a4,s1,a5
	.loc 1 54 23
	lbu	a4,0(a4)
	lbu	a2,0(a3)
	.loc 1 52 30
	addi	a5,a5,1
.LVL15:
	.loc 1 54 23
	xor	a4,a4,a2
	sb	a4,0(a3)
	.loc 1 52 29 is_stmt 1
.LVL16:
	.loc 1 52 21
	.loc 1 52 9 is_stmt 0
	bne	a5,s6,.L2
	.loc 1 36 33 is_stmt 1
.LVL17:
	.loc 1 36 17
	.loc 1 36 5 is_stmt 0
	addi	s0,s0,-1
.LVL18:
	bne	s0,zero,.L3
	.loc 1 57 5 is_stmt 1
	call	bl_sha_mutex_give
.LVL19:
	.loc 1 58 1 is_stmt 0
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
.LVL20:
	lw	s1,52(sp)
	.cfi_restore 9
.LVL21:
	lw	s2,48(sp)
	.cfi_restore 18
.LVL22:
	lw	s3,44(sp)
	.cfi_restore 19
.LVL23:
	lw	s4,40(sp)
	.cfi_restore 20
.LVL24:
	lw	s5,36(sp)
	.cfi_restore 21
.LVL25:
	lw	s6,32(sp)
	.cfi_restore 22
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
.LVL26:
	jr	ra
	.cfi_endproc
.LFE7:
	.size	Bl_F_fast.constprop.0, .-Bl_F_fast.constprop.0
	.section	.text.utils_wifi_psk_cal_fast_bin,"ax",@progbits
	.align	1
	.globl	utils_wifi_psk_cal_fast_bin
	.type	utils_wifi_psk_cal_fast_bin, @function
utils_wifi_psk_cal_fast_bin:
.LFB5:
	.loc 1 61 1 is_stmt 1
	.cfi_startproc
.LVL27:
	.loc 1 62 5
	.loc 1 64 5
	.loc 1 61 1 is_stmt 0
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	s0,88(sp)
	sw	s1,84(sp)
	sw	s2,80(sp)
	sw	s3,76(sp)
	sw	ra,92(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.loc 1 61 1
	mv	s2,a0
	mv	s3,a1
	mv	s1,a2
	mv	s0,a3
	.loc 1 64 10
	call	strlen
.LVL28:
	.loc 1 64 8
	li	a5,63
	bgtu	a0,a5,.L9
	.loc 1 64 33 discriminator 1
	li	a5,32
	.loc 1 65 16 discriminator 1
	li	a0,-1
	.loc 1 64 33 discriminator 1
	bgt	s1,a5,.L7
	.loc 1 68 5 is_stmt 1
	mv	a6,s0
	li	a5,2
	mv	a4,s1
	mv	a3,s3
	mv	a2,s2
	addi	a1,sp,8
	addi	a0,sp,28
	call	Bl_F_fast.constprop.0
.LVL29:
	.loc 1 69 5
	li	a2,12
	mv	a1,s0
	addi	a0,s0,20
	call	memcpy
.LVL30:
	.loc 1 70 5
	addi	a0,sp,28
	mv	a6,s0
	li	a5,1
	mv	a4,s1
	mv	a3,s3
	mv	a2,s2
	addi	a1,sp,8
	call	Bl_F_fast.constprop.0
.LVL31:
	.loc 1 72 5
	.loc 1 72 12 is_stmt 0
	li	a0,0
.L7:
	.loc 1 73 1
	lw	ra,92(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
.LVL32:
	lw	s1,84(sp)
	.cfi_restore 9
.LVL33:
	lw	s2,80(sp)
	.cfi_restore 18
.LVL34:
	lw	s3,76(sp)
	.cfi_restore 19
.LVL35:
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
.LVL36:
.L9:
	.cfi_restore_state
	.loc 1 65 16
	li	a0,-1
	j	.L7
	.cfi_endproc
.LFE5:
	.size	utils_wifi_psk_cal_fast_bin, .-utils_wifi_psk_cal_fast_bin
	.section	.text.utils_wifi_psk_cal_fast,"ax",@progbits
	.align	1
	.globl	utils_wifi_psk_cal_fast
	.type	utils_wifi_psk_cal_fast, @function
utils_wifi_psk_cal_fast:
.LFB6:
	.loc 1 76 1 is_stmt 1
	.cfi_startproc
.LVL37:
	.loc 1 77 5
	.loc 1 78 5
	.loc 1 80 5
	.loc 1 76 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s1,36(sp)
	.cfi_offset 9, -12
	mv	s1,a3
	.loc 1 80 11
	mv	a3,sp
.LVL38:
	.loc 1 76 1
	sw	s0,40(sp)
	sw	ra,44(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 80 11
	call	utils_wifi_psk_cal_fast_bin
.LVL39:
	mv	s0,a0
.LVL40:
	.loc 1 81 5 is_stmt 1
	.loc 1 81 8 is_stmt 0
	bne	a0,zero,.L12
	.loc 1 82 9 is_stmt 1
	li	a2,32
	mv	a1,sp
	mv	a0,s1
	call	utils_bin2hex
.LVL41:
	.loc 1 85 5
.L12:
	.loc 1 86 1 is_stmt 0
	lw	ra,44(sp)
	.cfi_restore 1
	mv	a0,s0
	lw	s0,40(sp)
	.cfi_restore 8
.LVL42:
	lw	s1,36(sp)
	.cfi_restore 9
.LVL43:
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	utils_wifi_psk_cal_fast, .-utils_wifi_psk_cal_fast
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_hex.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_sec.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_hmac_sha1_fast.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x4fe
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF29
	.byte	0xc
	.4byte	.LASF30
	.4byte	.LASF31
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
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x4
	.byte	0x4
	.4byte	0x41
	.byte	0x4
	.byte	0x4
	.4byte	0x77
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x5
	.4byte	.LASF14
	.byte	0x1
	.byte	0x4b
	.byte	0x5
	.4byte	0x5d
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x13d
	.byte	0x6
	.4byte	.LASF10
	.byte	0x1
	.byte	0x4b
	.byte	0x23
	.4byte	0x71
	.4byte	.LLST14
	.byte	0x6
	.4byte	.LASF11
	.byte	0x1
	.byte	0x4b
	.byte	0x33
	.4byte	0x71
	.4byte	.LLST15
	.byte	0x6
	.4byte	.LASF12
	.byte	0x1
	.byte	0x4b
	.byte	0x3d
	.4byte	0x5d
	.4byte	.LLST16
	.byte	0x6
	.4byte	.LASF13
	.byte	0x1
	.byte	0x4b
	.byte	0x4d
	.4byte	0x71
	.4byte	.LLST17
	.byte	0x7
	.string	"ret"
	.byte	0x1
	.byte	0x4d
	.byte	0x9
	.4byte	0x5d
	.4byte	.LLST18
	.byte	0x8
	.string	"psk"
	.byte	0x1
	.byte	0x4e
	.byte	0xa
	.4byte	0x13d
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x9
	.4byte	.LVL39
	.4byte	0x14d
	.4byte	0x120
	.byte	0xa
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xa
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0xa
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0xa
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0
	.byte	0xb
	.4byte	.LVL41
	.4byte	0x4b9
	.byte	0xa
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xa
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0xa
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	0x77
	.4byte	0x14d
	.byte	0xd
	.4byte	0x64
	.byte	0x1f
	.byte	0
	.byte	0x5
	.4byte	.LASF15
	.byte	0x1
	.byte	0x3c
	.byte	0x5
	.4byte	0x5d
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x27b
	.byte	0x6
	.4byte	.LASF10
	.byte	0x1
	.byte	0x3c
	.byte	0x27
	.4byte	0x71
	.4byte	.LLST10
	.byte	0x6
	.4byte	.LASF11
	.byte	0x1
	.byte	0x3c
	.byte	0x40
	.4byte	0x6b
	.4byte	.LLST11
	.byte	0x6
	.4byte	.LASF16
	.byte	0x1
	.byte	0x3c
	.byte	0x4a
	.4byte	0x5d
	.4byte	.LLST12
	.byte	0x6
	.4byte	.LASF13
	.byte	0x1
	.byte	0x3c
	.byte	0x65
	.4byte	0x6b
	.4byte	.LLST13
	.byte	0xe
	.4byte	.LASF17
	.byte	0x1
	.byte	0x3e
	.byte	0x13
	.4byte	0x27b
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0xe
	.4byte	.LASF18
	.byte	0x1
	.byte	0x3e
	.byte	0x1f
	.4byte	0x28b
	.byte	0x3
	.byte	0x91
	.byte	0xa8,0x7f
	.byte	0x9
	.4byte	.LVL28
	.4byte	0x4c5
	.4byte	0x1db
	.byte	0xa
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x9
	.4byte	.LVL29
	.4byte	0x341
	.4byte	0x21d
	.byte	0xa
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0xa
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xa8,0x7f
	.byte	0xa
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0xa
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0xa
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xa
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x32
	.byte	0xa
	.byte	0x1
	.byte	0x60
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xf
	.4byte	0x2e4
	.byte	0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0
	.byte	0x9
	.4byte	.LVL30
	.4byte	0x4d1
	.4byte	0x23c
	.byte	0xa
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x14
	.byte	0xa
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xa
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0xb
	.4byte	.LVL31
	.4byte	0x341
	.byte	0xa
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0xa
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xa8,0x7f
	.byte	0xa
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0xa
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0xa
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xa
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x31
	.byte	0xa
	.byte	0x1
	.byte	0x60
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xf
	.4byte	0x2e4
	.byte	0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	0x41
	.4byte	0x28b
	.byte	0xd
	.4byte	0x64
	.byte	0x23
	.byte	0
	.byte	0xc
	.4byte	0x41
	.4byte	0x29b
	.byte	0xd
	.4byte	0x64
	.byte	0x13
	.byte	0
	.byte	0x10
	.4byte	.LASF32
	.byte	0x1
	.byte	0xa
	.byte	0xd
	.byte	0x1
	.4byte	0x341
	.byte	0x11
	.4byte	.LASF17
	.byte	0x1
	.byte	0xa
	.byte	0x25
	.4byte	0x6b
	.byte	0x11
	.4byte	.LASF18
	.byte	0x1
	.byte	0xa
	.byte	0x3f
	.4byte	0x6b
	.byte	0x11
	.4byte	.LASF10
	.byte	0x1
	.byte	0xa
	.byte	0x52
	.4byte	0x71
	.byte	0x11
	.4byte	.LASF11
	.byte	0x1
	.byte	0xa
	.byte	0x6b
	.4byte	0x6b
	.byte	0x11
	.4byte	.LASF16
	.byte	0x1
	.byte	0xa
	.byte	0x75
	.4byte	0x5d
	.byte	0x11
	.4byte	.LASF19
	.byte	0x1
	.byte	0xa
	.byte	0x85
	.4byte	0x5d
	.byte	0x11
	.4byte	.LASF20
	.byte	0x1
	.byte	0xa
	.byte	0x95
	.4byte	0x5d
	.byte	0x11
	.4byte	.LASF13
	.byte	0x1
	.byte	0xa
	.byte	0xab
	.4byte	0x6b
	.byte	0x12
	.string	"i"
	.byte	0x1
	.byte	0xc
	.byte	0x9
	.4byte	0x5d
	.byte	0x12
	.string	"j"
	.byte	0x1
	.byte	0xc
	.byte	0xc
	.4byte	0x5d
	.byte	0x12
	.string	"len"
	.byte	0x1
	.byte	0xd
	.byte	0x9
	.4byte	0x5d
	.byte	0x13
	.4byte	.LASF21
	.byte	0x1
	.byte	0xe
	.byte	0x9
	.4byte	0x5d
	.byte	0x13
	.4byte	.LASF22
	.byte	0x1
	.byte	0xf
	.byte	0x15
	.4byte	0x6b
	.byte	0
	.byte	0x14
	.4byte	0x29b
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x4b9
	.byte	0x15
	.4byte	0x2a8
	.4byte	.LLST0
	.byte	0x15
	.4byte	0x2b4
	.4byte	.LLST1
	.byte	0x15
	.4byte	0x2c0
	.4byte	.LLST2
	.byte	0x15
	.4byte	0x2cc
	.4byte	.LLST3
	.byte	0x15
	.4byte	0x2d8
	.4byte	.LLST4
	.byte	0x15
	.4byte	0x2f0
	.4byte	.LLST5
	.byte	0x15
	.4byte	0x2fc
	.4byte	.LLST6
	.byte	0x16
	.4byte	0x308
	.4byte	.LLST7
	.byte	0x16
	.4byte	0x312
	.4byte	.LLST8
	.byte	0x16
	.4byte	0x31c
	.4byte	.LLST9
	.byte	0x17
	.4byte	0x328
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x17
	.4byte	0x334
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x18
	.4byte	0x2e4
	.2byte	0x1000
	.byte	0x9
	.4byte	.LVL2
	.4byte	0x4c5
	.4byte	0x3d9
	.byte	0xa
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x9
	.4byte	.LVL5
	.4byte	0x4d1
	.4byte	0x3fa
	.byte	0xa
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xa
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x4c
	.byte	0x6
	.byte	0xa
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LVL6
	.4byte	0x4dd
	.byte	0x9
	.4byte	.LVL7
	.4byte	0x4e9
	.4byte	0x439
	.byte	0xa
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0xa
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0xa
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0xa
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0xa
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0xa
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0xa
	.byte	0x1
	.byte	0x60
	.byte	0x1
	.byte	0x44
	.byte	0
	.byte	0x9
	.4byte	.LVL9
	.4byte	0x4d1
	.4byte	0x458
	.byte	0xa
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0xa
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0xa
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x44
	.byte	0
	.byte	0x9
	.4byte	.LVL12
	.4byte	0x4e9
	.4byte	0x48f
	.byte	0xa
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0xa
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0xa
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0xa
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0xa
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0xa
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xa
	.byte	0x1
	.byte	0x60
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0
	.byte	0x9
	.4byte	.LVL13
	.4byte	0x4d1
	.4byte	0x4af
	.byte	0xa
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0xa
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xa
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LVL19
	.4byte	0x4f5
	.byte	0
	.byte	0x1a
	.4byte	.LASF23
	.4byte	.LASF23
	.byte	0x2
	.byte	0x3
	.byte	0x7
	.byte	0x1a
	.4byte	.LASF24
	.4byte	.LASF24
	.byte	0x3
	.byte	0x29
	.byte	0x8
	.byte	0x1a
	.4byte	.LASF25
	.4byte	.LASF25
	.byte	0x3
	.byte	0x1f
	.byte	0x8
	.byte	0x1a
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x4
	.byte	0x2d
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF27
	.4byte	.LASF27
	.byte	0x5
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.4byte	.LASF28
	.4byte	.LASF28
	.byte	0x4
	.byte	0x2e
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
	.byte	0x4
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x5
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
	.byte	0x6
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
	.byte	0x7
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
	.byte	0x8
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0xa
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0xf
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x2e
	.byte	0x1
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0
	.byte	0
	.byte	0x13
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
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x2e
	.byte	0x1
	.byte	0x31
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
	.byte	0x15
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x1c
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
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
.LLST14:
	.4byte	.LVL37
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL39-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL37
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL39-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL37
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL39-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL38
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL43
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL42
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28-1
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL28-1
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL28-1
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL33
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL28-1
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL32
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL21
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2-1
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL22
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL2-1
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL23
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL2-1
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x91
	.byte	0x4c
	.4byte	.LVL26
	.4byte	.LFE7
	.2byte	0x2
	.byte	0x72
	.byte	0x4c
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL2-1
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL8
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL2-1
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL11
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL2-1
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL25
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x60
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL17
	.2byte	0x7
	.byte	0xa
	.2byte	0x1000
	.byte	0x78
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x7
	.byte	0xa
	.2byte	0x1001
	.byte	0x78
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x7
	.byte	0xa
	.2byte	0x1000
	.byte	0x78
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x3
	.byte	0x7f
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL19-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF27:
	.string	"utils_hmac_sha1_fast"
.LASF20:
	.string	"count"
.LASF8:
	.string	"unsigned int"
.LASF31:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/utils"
.LASF30:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/src/utils_psk_fast.c"
.LASF18:
	.string	"digest1"
.LASF12:
	.string	"ssid_len"
.LASF4:
	.string	"unsigned char"
.LASF6:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF19:
	.string	"iterations"
.LASF28:
	.string	"bl_sha_mutex_give"
.LASF26:
	.string	"bl_sha_mutex_take"
.LASF22:
	.string	"pTemp"
.LASF23:
	.string	"utils_bin2hex"
.LASF24:
	.string	"strlen"
.LASF7:
	.string	"long long unsigned int"
.LASF32:
	.string	"Bl_F_fast"
.LASF21:
	.string	"tmpLen"
.LASF3:
	.string	"long long int"
.LASF15:
	.string	"utils_wifi_psk_cal_fast_bin"
.LASF29:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF9:
	.string	"char"
.LASF11:
	.string	"ssid"
.LASF1:
	.string	"short int"
.LASF13:
	.string	"output"
.LASF25:
	.string	"memcpy"
.LASF16:
	.string	"ssidlength"
.LASF17:
	.string	"digest"
.LASF2:
	.string	"long int"
.LASF14:
	.string	"utils_wifi_psk_cal_fast"
.LASF0:
	.string	"signed char"
.LASF10:
	.string	"password"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
