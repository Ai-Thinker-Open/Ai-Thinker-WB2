	.file	"utils_hmac_sha1_fast.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.utils_hmac_sha1_fast,"ax",@progbits
	.align	1
	.globl	utils_hmac_sha1_fast
	.type	utils_hmac_sha1_fast, @function
utils_hmac_sha1_fast:
.LFB4:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/src/utils_hmac_sha1_fast.c"
	.loc 1 15 1
	.cfi_startproc
.LVL0:
	.loc 1 16 5
	.loc 1 17 5
	.loc 1 18 5
	.loc 1 19 5
	.loc 1 20 5
	.loc 1 23 5
	.loc 1 15 1 is_stmt 0
	addi	sp,sp,-288
	.cfi_def_cfa_offset 288
.LVL1:
	.loc 1 24 5 is_stmt 1
	.loc 1 27 5
	.loc 1 15 1 is_stmt 0
	sw	s1,276(sp)
	sw	s2,272(sp)
	sw	s4,264(sp)
	sw	s5,260(sp)
	sw	s7,252(sp)
	sw	s8,248(sp)
	sw	s9,244(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	mv	s4,a5
	sw	ra,284(sp)
	sw	s0,280(sp)
	sw	s3,268(sp)
	sw	s6,256(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 19, -20
	.cfi_offset 22, -32
	.loc 1 27 8
	li	a5,64
.LVL2:
	.loc 1 15 1
	mv	s8,a0
	mv	s9,a1
	mv	s7,a2
	mv	s2,a3
	mv	s1,a4
	mv	s5,a6
	.loc 1 27 8
	ble	a4,a5,.L2
	.loc 1 29 9 is_stmt 1
	li	a1,2
.LVL3:
	addi	a0,sp,92
.LVL4:
	call	bl_sha_init
.LVL5:
	.loc 1 30 9
	mv	a2,s1
	mv	a1,s2
	addi	a0,sp,92
	call	bl_sha_update
.LVL6:
	.loc 1 31 9
	mv	a1,s2
	addi	a0,sp,92
	call	bl_sha_finish
.LVL7:
	.loc 1 33 9
	.loc 1 33 17 is_stmt 0
	li	s1,20
.LVL8:
.L2:
	.loc 1 49 5 is_stmt 1
	li	a2,64
	li	a1,0
	mv	a0,sp
	call	memset
.LVL9:
	.loc 1 50 5
	mv	a2,s1
	mv	a1,s2
	mv	a0,sp
	call	memcpy
.LVL10:
	.loc 1 53 5
	.loc 1 53 17
	.loc 1 55 32 is_stmt 0
	li	a5,909520896
	mv	s0,sp
	addi	s6,sp,64
.LVL11:
	.loc 1 50 5
	mv	a4,sp
	.loc 1 55 32
	addi	a5,a5,1590
.LVL12:
.L3:
	.loc 1 55 9 is_stmt 1 discriminator 3
	.loc 1 55 32 is_stmt 0 discriminator 3
	lw	a3,0(a4)
	xor	a3,a3,a5
	sw	a3,0(a4)
	lw	a3,4(a4)
	xor	a3,a3,a5
	sw	a3,4(a4)
	.loc 1 53 24 is_stmt 1 discriminator 3
	.loc 1 53 17 discriminator 3
	.loc 1 53 5 is_stmt 0 discriminator 3
	addi	a4,a4,8
	bne	a4,s6,.L3
	.loc 1 58 5 is_stmt 1
	li	a1,2
	addi	a0,sp,92
	call	bl_sha_init
.LVL13:
	.loc 1 59 5
	li	a2,64
	mv	a1,sp
	addi	a0,sp,92
	call	bl_sha_update
.LVL14:
	.loc 1 60 5
	.loc 1 60 12 is_stmt 0
	li	s3,0
.LVL15:
.L4:
	.loc 1 60 17 is_stmt 1 discriminator 1
	.loc 1 60 5 is_stmt 0 discriminator 1
	blt	s3,s7,.L5
	.loc 1 66 5 is_stmt 1
	mv	a1,s6
	addi	a0,sp,92
	call	bl_sha_finish
.LVL16:
	.loc 1 70 5
	li	a2,64
	li	a1,0
	mv	a0,sp
	call	memset
.LVL17:
	.loc 1 71 5
	mv	a2,s1
	mv	a1,s2
	mv	a0,sp
	call	memcpy
.LVL18:
	.loc 1 74 5
	.loc 1 74 17
	.loc 1 76 32 is_stmt 0
	li	a4,1549557760
	addi	a4,a4,-932
.LVL19:
.L6:
	.loc 1 76 9 is_stmt 1 discriminator 3
	.loc 1 76 32 is_stmt 0 discriminator 3
	lw	a5,0(s0)
	xor	a5,a5,a4
	sw	a5,0(s0)
	lw	a5,4(s0)
	xor	a5,a5,a4
	sw	a5,4(s0)
	.loc 1 74 24 is_stmt 1 discriminator 3
	.loc 1 74 17 discriminator 3
	.loc 1 74 5 is_stmt 0 discriminator 3
	addi	s0,s0,8
	bne	s0,s6,.L6
	.loc 1 79 5 is_stmt 1
	addi	a0,sp,92
	li	a1,2
	call	bl_sha_init
.LVL20:
	.loc 1 80 5
	mv	a1,sp
	li	a2,64
	addi	a0,sp,92
	call	bl_sha_update
.LVL21:
	.loc 1 81 5
	li	a2,20
	mv	a1,s0
	addi	a0,sp,92
	call	bl_sha_update
.LVL22:
	.loc 1 82 5
	mv	a1,s0
	addi	a0,sp,92
	call	bl_sha_finish
.LVL23:
	.loc 1 83 5
	mv	a2,s5
	mv	a1,s0
	mv	a0,s4
	call	memcpy
.LVL24:
	.loc 1 84 1 is_stmt 0
	lw	ra,284(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,280(sp)
	.cfi_restore 8
	lw	s1,276(sp)
	.cfi_restore 9
.LVL25:
	lw	s2,272(sp)
	.cfi_restore 18
.LVL26:
	lw	s3,268(sp)
	.cfi_restore 19
	lw	s4,264(sp)
	.cfi_restore 20
.LVL27:
	lw	s5,260(sp)
	.cfi_restore 21
.LVL28:
	lw	s6,256(sp)
	.cfi_restore 22
.LVL29:
	lw	s7,252(sp)
	.cfi_restore 23
.LVL30:
	lw	s8,248(sp)
	.cfi_restore 24
.LVL31:
	lw	s9,244(sp)
	.cfi_restore 25
.LVL32:
	addi	sp,sp,288
	.cfi_def_cfa_offset 0
.LVL33:
	jr	ra
.LVL34:
.L5:
	.cfi_restore_state
	.loc 1 63 9 is_stmt 1 discriminator 3
	slli	a4,s3,2
	.loc 1 63 52 is_stmt 0 discriminator 3
	add	a5,s9,a4
	.loc 1 63 9 discriminator 3
	add	a4,s8,a4
	lw	a2,0(a5)
	lw	a1,0(a4)
	addi	a0,sp,92
	.loc 1 60 31 discriminator 3
	addi	s3,s3,1
.LVL35:
	.loc 1 63 9 discriminator 3
	call	bl_sha_update
.LVL36:
	.loc 1 60 30 is_stmt 1 discriminator 3
	j	.L4
	.cfi_endproc
.LFE4:
	.size	utils_hmac_sha1_fast, .-utils_hmac_sha1_fast
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_sec.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x469
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF37
	.byte	0xc
	.4byte	.LASF38
	.4byte	.LASF39
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
	.4byte	.LASF6
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x4d
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.byte	0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x67
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x37
	.byte	0x20
	.4byte	0x7a
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.byte	0x5
	.byte	0x4
	.4byte	0x4d
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0x6
	.byte	0x14
	.byte	0x3
	.byte	0xb
	.byte	0x9
	.4byte	0xda
	.byte	0x7
	.4byte	.LASF13
	.byte	0x3
	.byte	0xc
	.byte	0xe
	.4byte	0xda
	.byte	0
	.byte	0x7
	.4byte	.LASF14
	.byte	0x3
	.byte	0xd
	.byte	0xf
	.4byte	0xea
	.byte	0x8
	.byte	0x7
	.4byte	.LASF15
	.byte	0x3
	.byte	0xe
	.byte	0xf
	.4byte	0xea
	.byte	0xc
	.byte	0x7
	.4byte	.LASF16
	.byte	0x3
	.byte	0xf
	.byte	0xd
	.4byte	0x41
	.byte	0x10
	.byte	0
	.byte	0x8
	.4byte	0x5b
	.4byte	0xea
	.byte	0x9
	.4byte	0x88
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x5b
	.byte	0x3
	.4byte	.LASF17
	.byte	0x3
	.byte	0x10
	.byte	0x3
	.4byte	0x9c
	.byte	0xa
	.byte	0x7
	.byte	0x4
	.4byte	0x88
	.byte	0x3
	.byte	0x13
	.byte	0xe
	.4byte	0x11d
	.byte	0xb
	.4byte	.LASF18
	.byte	0
	.byte	0xb
	.4byte	.LASF19
	.byte	0x1
	.byte	0xb
	.4byte	.LASF20
	.byte	0x2
	.byte	0
	.byte	0xc
	.4byte	.LASF40
	.byte	0x94
	.byte	0x3
	.byte	0x19
	.byte	0x10
	.4byte	0x152
	.byte	0x7
	.4byte	.LASF21
	.byte	0x3
	.byte	0x1a
	.byte	0x22
	.4byte	0xf0
	.byte	0
	.byte	0xd
	.string	"tmp"
	.byte	0x3
	.byte	0x1b
	.byte	0xe
	.4byte	0x152
	.byte	0x14
	.byte	0xd
	.string	"pad"
	.byte	0x3
	.byte	0x1c
	.byte	0xe
	.4byte	0x152
	.byte	0x54
	.byte	0
	.byte	0x8
	.4byte	0x5b
	.4byte	0x162
	.byte	0x9
	.4byte	0x88
	.byte	0xf
	.byte	0
	.byte	0x3
	.4byte	.LASF22
	.byte	0x3
	.byte	0x1d
	.byte	0x3
	.4byte	0x11d
	.byte	0xe
	.4byte	.LASF41
	.byte	0x1
	.byte	0x8
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x414
	.byte	0xf
	.4byte	.LASF23
	.byte	0x1
	.byte	0x8
	.byte	0x2c
	.4byte	0x414
	.4byte	.LLST0
	.byte	0xf
	.4byte	.LASF24
	.byte	0x1
	.byte	0x9
	.byte	0x1b
	.4byte	0x41a
	.4byte	.LLST1
	.byte	0xf
	.4byte	.LASF25
	.byte	0x1
	.byte	0xa
	.byte	0x19
	.4byte	0x81
	.4byte	.LLST2
	.byte	0x10
	.string	"key"
	.byte	0x1
	.byte	0xb
	.byte	0x24
	.4byte	0x8f
	.4byte	.LLST3
	.byte	0xf
	.4byte	.LASF26
	.byte	0x1
	.byte	0xc
	.byte	0x19
	.4byte	0x81
	.4byte	.LLST4
	.byte	0xf
	.4byte	.LASF27
	.byte	0x1
	.byte	0xd
	.byte	0x24
	.4byte	0x8f
	.4byte	.LLST5
	.byte	0xf
	.4byte	.LASF28
	.byte	0x1
	.byte	0xe
	.byte	0x19
	.4byte	0x81
	.4byte	.LLST6
	.byte	0x11
	.4byte	.LASF29
	.byte	0x1
	.byte	0x10
	.byte	0xe
	.4byte	0x420
	.byte	0x3
	.byte	0x91
	.byte	0xe0,0x7d
	.byte	0x11
	.4byte	.LASF21
	.byte	0x1
	.byte	0x11
	.byte	0x12
	.4byte	0x162
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7e
	.byte	0x12
	.4byte	.LASF30
	.byte	0x1
	.byte	0x12
	.byte	0x14
	.4byte	0x8f
	.4byte	.LLST7
	.byte	0x12
	.4byte	.LASF31
	.byte	0x1
	.byte	0x13
	.byte	0x14
	.4byte	0x8f
	.4byte	.LLST8
	.byte	0x13
	.string	"i"
	.byte	0x1
	.byte	0x14
	.byte	0x9
	.4byte	0x81
	.4byte	.LLST9
	.byte	0x14
	.4byte	.LVL5
	.4byte	0x430
	.4byte	0x25c
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7e
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x14
	.4byte	.LVL6
	.4byte	0x43c
	.4byte	0x27d
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7e
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LVL7
	.4byte	0x448
	.4byte	0x298
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7e
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LVL9
	.4byte	0x454
	.4byte	0x2b7
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0x14
	.4byte	.LVL10
	.4byte	0x460
	.4byte	0x2d7
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LVL13
	.4byte	0x430
	.4byte	0x2f1
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7e
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x14
	.4byte	.LVL14
	.4byte	0x43c
	.4byte	0x312
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7e
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0x14
	.4byte	.LVL16
	.4byte	0x448
	.4byte	0x32d
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7e
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LVL17
	.4byte	0x454
	.4byte	0x34c
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0x14
	.4byte	.LVL18
	.4byte	0x460
	.4byte	0x36c
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LVL20
	.4byte	0x430
	.4byte	0x386
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7e
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x14
	.4byte	.LVL21
	.4byte	0x43c
	.4byte	0x3a7
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7e
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0x14
	.4byte	.LVL22
	.4byte	0x43c
	.4byte	0x3c7
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7e
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x44
	.byte	0
	.byte	0x14
	.4byte	.LVL23
	.4byte	0x448
	.4byte	0x3e2
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7e
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LVL24
	.4byte	0x460
	.4byte	0x402
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LVL36
	.4byte	0x43c
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7e
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x8f
	.byte	0x5
	.byte	0x4
	.4byte	0x81
	.byte	0x8
	.4byte	0x6e
	.4byte	0x430
	.byte	0x9
	.4byte	0x88
	.byte	0xa
	.byte	0
	.byte	0x17
	.4byte	.LASF32
	.4byte	.LASF32
	.byte	0x3
	.byte	0x2f
	.byte	0x6
	.byte	0x17
	.4byte	.LASF33
	.4byte	.LASF33
	.byte	0x3
	.byte	0x30
	.byte	0x5
	.byte	0x17
	.4byte	.LASF34
	.4byte	.LASF34
	.byte	0x3
	.byte	0x31
	.byte	0x5
	.byte	0x17
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x4
	.byte	0x21
	.byte	0x8
	.byte	0x17
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x4
	.byte	0x1f
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
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
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
	.byte	0x7
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
	.byte	0x8
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xa
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
	.byte	0xb
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
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
	.byte	0xd
	.byte	0xd
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
	.byte	0x38
	.byte	0xb
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
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x14
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
	.byte	0x15
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
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
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL31
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL5-1
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL30
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL5-1
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL26
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL5-1
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x44
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL34
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL2
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL27
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL0
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL5-1
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL28
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x60
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL1
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x4
	.byte	0x72
	.byte	0xe0,0x7d
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL1
	.4byte	.LVL11
	.2byte	0x4
	.byte	0x91
	.byte	0xa0,0x7e
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL29
	.4byte	.LVL33
	.2byte	0x4
	.byte	0x91
	.byte	0xa0,0x7e
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x4
	.byte	0x72
	.byte	0xa0,0x7e
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x3
	.byte	0x83
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x63
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
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF22:
	.string	"bl_sha_ctx_t"
.LASF33:
	.string	"bl_sha_update"
.LASF41:
	.string	"utils_hmac_sha1_fast"
.LASF15:
	.string	"shaPadding"
.LASF24:
	.string	"pTextLen"
.LASF16:
	.string	"shaFeed"
.LASF9:
	.string	"uint64_t"
.LASF19:
	.string	"BL_SHA224"
.LASF39:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/utils"
.LASF17:
	.string	"_bl_sha_SEC_Eng_SHA256_Ctx_t"
.LASF4:
	.string	"unsigned char"
.LASF38:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/src/utils_hmac_sha1_fast.c"
.LASF8:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF14:
	.string	"shaBuf"
.LASF34:
	.string	"bl_sha_finish"
.LASF35:
	.string	"memset"
.LASF1:
	.string	"short int"
.LASF20:
	.string	"BL_SHA1"
.LASF11:
	.string	"unsigned int"
.LASF10:
	.string	"long long unsigned int"
.LASF6:
	.string	"uint8_t"
.LASF21:
	.string	"sha_ctx"
.LASF29:
	.string	"pBuf"
.LASF13:
	.string	"total"
.LASF3:
	.string	"long long int"
.LASF37:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF12:
	.string	"char"
.LASF36:
	.string	"memcpy"
.LASF18:
	.string	"BL_SHA256"
.LASF27:
	.string	"output"
.LASF25:
	.string	"textNum"
.LASF26:
	.string	"key_len"
.LASF7:
	.string	"uint32_t"
.LASF2:
	.string	"long int"
.LASF32:
	.string	"bl_sha_init"
.LASF28:
	.string	"outputLen"
.LASF0:
	.string	"signed char"
.LASF23:
	.string	"ppText"
.LASF30:
	.string	"k_pad"
.LASF31:
	.string	"digest"
.LASF40:
	.string	"bl_sha_ctx"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
