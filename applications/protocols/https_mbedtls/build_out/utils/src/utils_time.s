	.file	"utils_time.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.utils_time_date_from_epoch.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"\037\034\037\036\037\036\037\037\036\037\036\037"
	.section	.text.utils_time_date_from_epoch,"ax",@progbits
	.align	1
	.globl	utils_time_date_from_epoch
	.type	utils_time_date_from_epoch, @function
utils_time_date_from_epoch:
.LFB0:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/src/utils_time.c"
	.loc 1 15 1
	.cfi_startproc
.LVL0:
	.loc 1 16 5
	.loc 1 17 5
	.loc 1 18 5
	.loc 1 15 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	.cfi_offset 8, -8
	mv	s0,a1
	.loc 1 18 19
	lui	a1,%hi(.LC0)
.LVL1:
	.loc 1 15 1
	sw	s1,36(sp)
	.loc 1 18 19
	li	a2,12
	.cfi_offset 9, -12
	.loc 1 15 1
	mv	s1,a0
	.loc 1 18 19
	addi	a1,a1,%lo(.LC0)
	addi	a0,sp,20
.LVL2:
	.loc 1 15 1
	sw	ra,44(sp)
	.cfi_offset 1, -4
	.loc 1 18 19
	call	memcpy
.LVL3:
	.loc 1 19 5 is_stmt 1
	.loc 1 19 19 is_stmt 0
	lui	a1,%hi(.LC1)
	li	a2,7
	addi	a1,a1,%lo(.LC1)
	addi	a0,sp,12
	call	memcpy
.LVL4:
	.loc 1 21 5 is_stmt 1
	.loc 1 22 5
	.loc 1 27 29 is_stmt 0
	li	a4,60
	remu	a5,s1,a4
	.loc 1 37 52
	li	a0,31535104
	addi	a0,a0,896
	.loc 1 21 21
	sh	zero,6(s0)
	.loc 1 27 5 is_stmt 1
	.loc 1 38 5 is_stmt 0
	li	a2,100
	li	a1,400
	.loc 1 27 22
	sb	a5,2(s0)
	.loc 1 28 5 is_stmt 1
	.loc 1 28 11 is_stmt 0
	divu	a5,s1,a4
.LVL5:
	.loc 1 29 5 is_stmt 1
	.loc 1 29 29 is_stmt 0
	remu	a3,a5,a4
	.loc 1 30 11
	divu	a5,a5,a4
.LVL6:
	.loc 1 31 27
	li	a4,24
.LVL7:
	.loc 1 29 22
	sb	a3,1(s0)
	.loc 1 30 5 is_stmt 1
.LVL8:
	.loc 1 31 5
	.loc 1 31 27 is_stmt 0
	remu	a3,a5,a4
	.loc 1 32 11
	divu	a5,a5,a4
.LVL9:
	.loc 1 35 58
	li	a4,7
	.loc 1 31 20
	sb	a3,0(s0)
	.loc 1 32 5 is_stmt 1
.LVL10:
	.loc 1 34 5
	.loc 1 35 35 is_stmt 0
	addi	a3,sp,32
	.loc 1 35 58
	remu	a4,a5,a4
	.loc 1 34 28
	sw	a5,12(s0)
	.loc 1 35 5 is_stmt 1
	.loc 1 37 52 is_stmt 0
	divu	s1,s1,a0
	.loc 1 35 35
	add	a4,a3,a4
	.loc 1 35 24
	lbu	a4,-20(a4)
	sb	a4,3(s0)
	.loc 1 37 5 is_stmt 1
	.loc 1 38 12 is_stmt 0
	li	a4,1972
	.loc 1 37 27
	addi	s1,s1,1970
	.loc 1 37 20
	sw	s1,8(s0)
	.loc 1 38 5 is_stmt 1
.LVL11:
.L2:
	.loc 1 38 41 discriminator 1
	.loc 1 38 5 is_stmt 0 discriminator 1
	bgtu	s1,a4,.L5
	.loc 1 45 5 is_stmt 1
	.loc 1 45 60 is_stmt 0
	lbu	a4,6(s0)
.LVL12:
	.loc 1 45 72
	li	a3,365
	.loc 1 45 54
	sub	a4,a5,a4
	.loc 1 45 72
	divu	a4,a4,a3
	.loc 1 45 27
	addi	a4,a4,1970
	.loc 1 45 20
	sw	a4,8(s0)
	.loc 1 46 5 is_stmt 1
	.loc 1 46 25 is_stmt 0
	andi	a3,a4,3
	.loc 1 46 8
	bne	a3,zero,.L6
	li	a3,100
	remu	a3,a4,a3
	.loc 1 46 32 discriminator 1
	bne	a3,zero,.L7
.L6:
	li	a3,400
	remu	a3,a4,a3
	.loc 1 46 60 discriminator 3
	bne	a3,zero,.L8
.L7:
	.loc 1 47 9 is_stmt 1
	.loc 1 47 22 is_stmt 0
	li	a3,29
	sb	a3,21(sp)
	.loc 1 48 9 is_stmt 1
	.loc 1 48 29 is_stmt 0
	li	a3,1
	sb	a3,7(s0)
.L8:
	.loc 1 53 5 is_stmt 1
.LVL13:
	.loc 1 53 36 is_stmt 0
	sb	zero,6(s0)
	.loc 1 53 12
	li	a3,1972
	.loc 1 53 5
	li	a1,100
	li	a0,400
.LVL14:
.L9:
	.loc 1 53 41 is_stmt 1 discriminator 1
	.loc 1 53 5 is_stmt 0 discriminator 1
	bgtu	a4,a3,.L12
	.loc 1 59 5 is_stmt 1
	.loc 1 59 98 is_stmt 0
	li	a3,720896
.LVL15:
	addi	a3,a3,-1845
	add	a5,a5,a3
.LVL16:
	.loc 1 59 54
	lbu	a3,6(s0)
	.loc 1 64 26
	sb	zero,5(s0)
	.loc 1 64 5
	li	a1,11
	.loc 1 59 98
	sub	a5,a5,a3
	.loc 1 59 66
	li	a3,365
	mul	a4,a4,a3
	.loc 1 59 98
	sub	a5,a5,a4
	.loc 1 59 23
	sw	a5,16(s0)
	.loc 1 62 5 is_stmt 1
.LVL17:
	.loc 1 64 5
	.loc 1 62 15 is_stmt 0
	li	a4,0
.LVL18:
.L13:
	.loc 1 64 31 is_stmt 1 discriminator 1
	.loc 1 64 35 is_stmt 0 discriminator 1
	lbu	a3,5(s0)
	addi	a2,sp,32
	add	a2,a2,a3
	.loc 1 64 5 discriminator 1
	bleu	a3,a1,.L15
.L14:
	.loc 1 72 5 is_stmt 1
.LVL19:
	.loc 1 73 5
	.loc 1 72 39 is_stmt 0
	lbu	a3,-13(a2)
.LVL20:
	.loc 1 76 1
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s1,36(sp)
	.cfi_restore 9
	.loc 1 72 15
	sub	a4,a4,a3
.LVL21:
	.loc 1 73 40
	sub	a5,a5,a4
	.loc 1 73 20
	sb	a5,4(s0)
	.loc 1 75 5 is_stmt 1
	.loc 1 76 1 is_stmt 0
	lw	s0,40(sp)
	.cfi_restore 8
.LVL22:
	li	a0,0
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL23:
.L5:
	.cfi_restore_state
	.loc 1 40 9 is_stmt 1
	.loc 1 38 5 is_stmt 0
	rem	a3,a4,a2
	.loc 1 40 22
	bne	a3,zero,.L3
	rem	a3,a4,a1
	.loc 1 40 37 discriminator 3
	bne	a3,zero,.L4
.L3:
	.loc 1 41 13 is_stmt 1
	.loc 1 41 28 is_stmt 0
	lbu	a3,6(s0)
	addi	a3,a3,1
	sb	a3,6(s0)
.L4:
	.loc 1 38 61 is_stmt 1 discriminator 2
	.loc 1 38 62 is_stmt 0 discriminator 2
	addi	a4,a4,4
.LVL24:
	j	.L2
.LVL25:
.L12:
	.loc 1 55 9 is_stmt 1
	.loc 1 53 5 is_stmt 0
	rem	a2,a3,a1
	.loc 1 55 22
	bne	a2,zero,.L10
	rem	a2,a3,a0
	.loc 1 55 37 discriminator 3
	bne	a2,zero,.L11
.L10:
	.loc 1 56 13 is_stmt 1
	.loc 1 56 28 is_stmt 0
	lbu	a2,6(s0)
	addi	a2,a2,1
	sb	a2,6(s0)
.L11:
	.loc 1 53 61 is_stmt 1 discriminator 2
	.loc 1 53 62 is_stmt 0 discriminator 2
	addi	a3,a3,4
.LVL26:
	j	.L9
.LVL27:
.L15:
	.loc 1 66 9 is_stmt 1
	.loc 1 66 12 is_stmt 0
	bleu	a5,a4,.L14
	.loc 1 69 9 is_stmt 1 discriminator 2
	.loc 1 69 43 is_stmt 0 discriminator 2
	lbu	a2,-12(a2)
	.loc 1 64 69 discriminator 2
	addi	a3,a3,1
	sb	a3,5(s0)
	.loc 1 69 19 discriminator 2
	add	a4,a4,a2
.LVL28:
	slli	a4,a4,16
	srli	a4,a4,16
.LVL29:
	.loc 1 64 54 is_stmt 1 discriminator 2
	j	.L13
	.cfi_endproc
.LFE0:
	.size	utils_time_date_from_epoch, .-utils_time_date_from_epoch
	.section	.rodata
	.align	2
.LC1:
	.string	"\004\005\006"
	.ascii	"\001\002\003"
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_time.h"
	.file 3 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1fc
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
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x3
	.byte	0x9
	.4byte	0x10b
	.byte	0x5
	.4byte	.LASF10
	.byte	0x2
	.byte	0x4
	.byte	0x13
	.4byte	0x3a
	.byte	0
	.byte	0x5
	.4byte	.LASF11
	.byte	0x2
	.byte	0x5
	.byte	0x13
	.4byte	0x3a
	.byte	0x1
	.byte	0x5
	.4byte	.LASF12
	.byte	0x2
	.byte	0x6
	.byte	0x13
	.4byte	0x3a
	.byte	0x2
	.byte	0x5
	.4byte	.LASF13
	.byte	0x2
	.byte	0x7
	.byte	0x13
	.4byte	0x3a
	.byte	0x3
	.byte	0x5
	.4byte	.LASF14
	.byte	0x2
	.byte	0x8
	.byte	0x13
	.4byte	0x3a
	.byte	0x4
	.byte	0x5
	.4byte	.LASF15
	.byte	0x2
	.byte	0x9
	.byte	0x13
	.4byte	0x3a
	.byte	0x5
	.byte	0x5
	.4byte	.LASF16
	.byte	0x2
	.byte	0xa
	.byte	0x13
	.4byte	0x3a
	.byte	0x6
	.byte	0x5
	.4byte	.LASF17
	.byte	0x2
	.byte	0xb
	.byte	0x13
	.4byte	0x3a
	.byte	0x7
	.byte	0x5
	.4byte	.LASF18
	.byte	0x2
	.byte	0xc
	.byte	0x12
	.4byte	0x25
	.byte	0x8
	.byte	0x5
	.4byte	.LASF19
	.byte	0x2
	.byte	0xd
	.byte	0x12
	.4byte	0x25
	.byte	0xc
	.byte	0x5
	.4byte	.LASF20
	.byte	0x2
	.byte	0xe
	.byte	0x12
	.4byte	0x25
	.byte	0x10
	.byte	0
	.byte	0x6
	.4byte	.LASF29
	.byte	0x2
	.byte	0xf
	.byte	0x3
	.4byte	0x72
	.byte	0x7
	.4byte	.LASF30
	.byte	0x1
	.byte	0xe
	.byte	0x5
	.4byte	0x2c
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.4byte	0x1ce
	.byte	0x8
	.4byte	.LASF21
	.byte	0x1
	.byte	0xe
	.byte	0x2d
	.4byte	0x25
	.4byte	.LLST0
	.byte	0x8
	.4byte	.LASF22
	.byte	0x1
	.byte	0xe
	.byte	0x47
	.4byte	0x1ce
	.4byte	.LLST1
	.byte	0x9
	.string	"i"
	.byte	0x1
	.byte	0x10
	.byte	0x9
	.4byte	0x2c
	.4byte	.LLST2
	.byte	0xa
	.4byte	.LASF23
	.byte	0x1
	.byte	0x11
	.byte	0x14
	.4byte	0x48
	.4byte	.LLST3
	.byte	0xb
	.4byte	.LASF24
	.byte	0x1
	.byte	0x12
	.byte	0x13
	.4byte	0x1d4
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0xb
	.4byte	.LASF25
	.byte	0x1
	.byte	0x13
	.byte	0x13
	.4byte	0x1e4
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0xc
	.4byte	.LVL3
	.4byte	0x1f4
	.4byte	0x1af
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0xd
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0xd
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0xe
	.4byte	.LVL4
	.4byte	0x1f4
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0xd
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0xd
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x37
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x10b
	.byte	0x10
	.4byte	0x3a
	.4byte	0x1e4
	.byte	0x11
	.4byte	0x25
	.byte	0xb
	.byte	0
	.byte	0x10
	.4byte	0x3a
	.4byte	0x1f4
	.byte	0x11
	.4byte	0x25
	.byte	0x6
	.byte	0
	.byte	0x12
	.4byte	.LASF31
	.4byte	.LASF32
	.byte	0x3
	.byte	0
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
	.byte	0x13
	.byte	0x1
	.byte	0xb
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
	.byte	0x5
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
	.byte	0x6
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xc
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
	.byte	0xd
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0xc
	.byte	0x79
	.byte	0
	.byte	0xf7
	.byte	0x25
	.byte	0x7e
	.byte	0
	.byte	0xf7
	.byte	0x25
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0xc
	.byte	0x79
	.byte	0
	.byte	0xf7
	.byte	0x25
	.byte	0x8
	.byte	0x3c
	.byte	0xf7
	.byte	0x25
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x15
	.byte	0x79
	.byte	0
	.byte	0xf7
	.byte	0x25
	.byte	0x8
	.byte	0x3c
	.byte	0xf7
	.byte	0x25
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0xf7
	.byte	0x25
	.byte	0x8
	.byte	0x3c
	.byte	0xf7
	.byte	0x25
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL16
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x78
	.byte	0xc
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x23
	.byte	0xc
	.4byte	.LVL23
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL27
	.4byte	.LFE0
	.2byte	0x2
	.byte	0x78
	.byte	0xc
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xa
	.2byte	0x7b4
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x10
	.byte	0x7e
	.byte	0
	.byte	0x91
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x22
	.byte	0x4d
	.byte	0x1c
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x15
	.byte	0x7e
	.byte	0
	.byte	0x78
	.byte	0x5
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x91
	.byte	0
	.byte	0x22
	.byte	0x4d
	.byte	0x1c
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL29
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x5e
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF9:
	.string	"char"
.LASF12:
	.string	"ntp_second"
.LASF16:
	.string	"leap_days"
.LASF28:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/utils"
.LASF18:
	.string	"ntp_year"
.LASF25:
	.string	"week_days"
.LASF22:
	.string	"date"
.LASF11:
	.string	"ntp_minute"
.LASF24:
	.string	"month_days"
.LASF14:
	.string	"ntp_date"
.LASF4:
	.string	"short unsigned int"
.LASF23:
	.string	"temp_days"
.LASF2:
	.string	"unsigned char"
.LASF6:
	.string	"long unsigned int"
.LASF29:
	.string	"utils_time_date_t"
.LASF0:
	.string	"unsigned int"
.LASF8:
	.string	"long long unsigned int"
.LASF19:
	.string	"days_since_epoch"
.LASF32:
	.string	"__builtin_memcpy"
.LASF30:
	.string	"utils_time_date_from_epoch"
.LASF10:
	.string	"ntp_hour"
.LASF7:
	.string	"long long int"
.LASF26:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF31:
	.string	"memcpy"
.LASF17:
	.string	"leap_year_ind"
.LASF3:
	.string	"short int"
.LASF27:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/src/utils_time.c"
.LASF21:
	.string	"epoch"
.LASF20:
	.string	"day_of_year"
.LASF5:
	.string	"long int"
.LASF15:
	.string	"ntp_month"
.LASF1:
	.string	"signed char"
.LASF13:
	.string	"ntp_week_day"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
