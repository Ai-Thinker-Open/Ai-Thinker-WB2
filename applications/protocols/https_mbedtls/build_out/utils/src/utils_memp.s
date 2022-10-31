	.file	"utils_memp.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.utils_memp_init,"ax",@progbits
	.align	1
	.globl	utils_memp_init
	.type	utils_memp_init, @function
utils_memp_init:
.LFB0:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/src/utils_memp.c"
	.loc 1 10 1
	.cfi_startproc
.LVL0:
	.loc 1 11 5
	.loc 1 12 5
	.loc 1 13 5
	.loc 1 14 5
	.loc 1 15 5
	.loc 1 16 5
	.loc 1 18 5
	.loc 1 10 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 18 50
	addi	a3,a3,3
.LVL1:
	.loc 1 10 1
	sw	s1,20(sp)
	sw	s5,4(sp)
	.cfi_offset 9, -12
	.cfi_offset 21, -28
	.loc 1 19 85
	addi	s1,a1,3
	.loc 1 18 15
	andi	s5,a3,252
.LVL2:
	.loc 1 19 5 is_stmt 1
	.loc 1 19 89 is_stmt 0
	neg	a3,s5
	.loc 1 19 85
	add	s1,s5,s1
	.loc 1 19 22
	and	s1,s1,a3
	slli	s1,s1,16
	srli	s1,s1,16
.LVL3:
	.loc 1 21 5 is_stmt 1
	.loc 1 22 5
	.loc 1 10 1 is_stmt 0
	sw	s4,8(sp)
	.cfi_offset 20, -24
	mv	s4,a0
	.loc 1 23 30
	mul	a0,s1,a2
.LVL4:
	.loc 1 22 35
	addi	a5,s5,31
	.loc 1 10 1
	sw	s0,24(sp)
	.cfi_offset 8, -8
	.loc 1 22 10
	and	s0,a5,a3
.LVL5:
	.loc 1 23 5 is_stmt 1
	.loc 1 25 5
	.loc 1 10 1 is_stmt 0
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	ra,28(sp)
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.loc 1 10 1
	mv	s3,a1
	mv	s2,a2
	.loc 1 25 13
	add	a0,a0,s0
	call	pvPortMalloc
.LVL6:
	.loc 1 27 5 is_stmt 1
	.loc 1 27 8 is_stmt 0
	beq	a0,zero,.L5
	.loc 1 31 5 is_stmt 1
	.loc 1 31 10 is_stmt 0
	add	a5,a0,s0
.LVL7:
	.loc 1 32 5 is_stmt 1
	.loc 1 32 23 is_stmt 0
	sw	a5,20(a0)
	.loc 1 33 5 is_stmt 1
	.loc 1 33 22 is_stmt 0
	sw	s3,0(a0)
	.loc 1 34 5 is_stmt 1
	.loc 1 34 21 is_stmt 0
	sw	s2,4(a0)
	.loc 1 35 5 is_stmt 1
	.loc 1 35 22 is_stmt 0
	sw	zero,8(a0)
	.loc 1 36 5 is_stmt 1
	.loc 1 36 22 is_stmt 0
	sb	s5,12(a0)
	.loc 1 37 5 is_stmt 1
	.loc 1 37 29 is_stmt 0
	sw	s1,16(a0)
	.loc 1 38 5 is_stmt 1
	.loc 1 39 5
.LVL8:
	.loc 1 41 5
	.loc 1 41 11 is_stmt 0
	li	a4,0
	.loc 1 39 14
	li	a3,0
.LVL9:
.L3:
	.loc 1 41 16 is_stmt 1 discriminator 1
	.loc 1 41 5 is_stmt 0 discriminator 1
	bne	a4,s2,.L4
	.loc 1 46 5 is_stmt 1
	.loc 1 46 16 is_stmt 0
	sw	a3,28(a0)
	.loc 1 47 5 is_stmt 1
	.loc 1 47 22 is_stmt 0
	sw	a3,24(a0)
	.loc 1 48 5 is_stmt 1
	.loc 1 48 11 is_stmt 0
	sw	a0,0(s4)
	.loc 1 50 5 is_stmt 1
	.loc 1 50 12 is_stmt 0
	li	a0,0
.LVL10:
.L1:
	.loc 1 51 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL11:
	lw	s1,20(sp)
	.cfi_restore 9
.LVL12:
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
.LVL13:
	lw	s4,8(sp)
	.cfi_restore 20
.LVL14:
	lw	s5,4(sp)
	.cfi_restore 21
.LVL15:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL16:
.L4:
	.cfi_restore_state
	.loc 1 42 9 is_stmt 1 discriminator 3
	.loc 1 41 30 is_stmt 0 discriminator 3
	addi	a4,a4,1
.LVL17:
	slli	a4,a4,16
	.loc 1 42 20 discriminator 3
	sw	a3,0(a5)
	.loc 1 43 9 is_stmt 1 discriminator 3
.LVL18:
	.loc 1 44 9 discriminator 3
	.loc 1 41 30 discriminator 3
	srli	a4,a4,16
.LVL19:
	mv	a3,a5
	.loc 1 44 14 is_stmt 0 discriminator 3
	add	a5,a5,s1
.LVL20:
	j	.L3
.LVL21:
.L5:
	.loc 1 28 16
	li	a0,-1
.LVL22:
	j	.L1
	.cfi_endproc
.LFE0:
	.size	utils_memp_init, .-utils_memp_init
	.section	.text.utils_memp_deinit,"ax",@progbits
	.align	1
	.globl	utils_memp_deinit
	.type	utils_memp_deinit, @function
utils_memp_deinit:
.LFB1:
	.loc 1 54 1 is_stmt 1
	.cfi_startproc
.LVL23:
	.loc 1 55 5
	.loc 1 55 8 is_stmt 0
	beq	a0,zero,.L9
	.loc 1 58 5 is_stmt 1
	.loc 1 54 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 58 5
	call	vPortFree
.LVL24:
	.loc 1 60 5 is_stmt 1
	.loc 1 61 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 60 12
	li	a0,0
	.loc 1 61 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL25:
.L9:
	.loc 1 56 16
	li	a0,-1
.LVL26:
	.loc 1 61 1
	ret
	.cfi_endproc
.LFE1:
	.size	utils_memp_deinit, .-utils_memp_deinit
	.section	.text.utils_memp_malloc,"ax",@progbits
	.align	1
	.globl	utils_memp_malloc
	.type	utils_memp_malloc, @function
utils_memp_malloc:
.LFB2:
	.loc 1 64 1 is_stmt 1
	.cfi_startproc
.LVL27:
	.loc 1 65 5
	.loc 1 66 5
	.loc 1 67 5
	.loc 1 64 1 is_stmt 0
	mv	a5,a0
	.loc 1 67 8
	beq	a0,zero,.L16
	.loc 1 70 5 is_stmt 1
	.loc 1 70 13 is_stmt 0
	lw	a4,8(a0)
	.loc 1 70 8
	lw	a3,4(a0)
	.loc 1 68 15
	li	a0,0
.LVL28:
	.loc 1 70 8
	beq	a4,a3,.L14
	.loc 1 73 5 is_stmt 1
	.loc 1 73 10 is_stmt 0
	lw	a0,28(a5)
.LVL29:
	.loc 1 74 5 is_stmt 1
	.loc 1 74 8 is_stmt 0
	beq	a0,zero,.L14
	.loc 1 75 9 is_stmt 1
	.loc 1 75 25 is_stmt 0
	lw	a3,0(a0)
	.loc 1 76 24
	addi	a4,a4,1
	sw	a4,8(a5)
	.loc 1 75 19
	sw	a3,28(a5)
	.loc 1 76 9 is_stmt 1
	.loc 1 77 9
.LVL30:
	.loc 1 78 9
	.loc 1 78 14 is_stmt 0
	li	a5,165
.LVL31:
	sw	a5,0(a0)
	.loc 1 79 9 is_stmt 1
	.loc 1 79 29 is_stmt 0
	addi	a0,a0,4
.LVL32:
	ret
.LVL33:
.L16:
	.loc 1 68 15
	li	a0,0
.LVL34:
.L14:
	.loc 1 83 1
	ret
	.cfi_endproc
.LFE2:
	.size	utils_memp_malloc, .-utils_memp_malloc
	.section	.text.utils_memp_free,"ax",@progbits
	.align	1
	.globl	utils_memp_free
	.type	utils_memp_free, @function
utils_memp_free:
.LFB3:
	.loc 1 86 1 is_stmt 1
	.cfi_startproc
.LVL35:
	.loc 1 87 5
	.loc 1 88 5
	.loc 1 86 1 is_stmt 0
	mv	a5,a0
	.loc 1 88 10
	addi	a3,a1,-4
.LVL36:
	.loc 1 89 5 is_stmt 1
	.loc 1 90 5
	.loc 1 92 5
	.loc 1 92 8 is_stmt 0
	beq	a0,zero,.L23
	.loc 1 95 5 is_stmt 1
	.loc 1 95 8 is_stmt 0
	lw	a4,8(a0)
	.loc 1 93 16
	li	a0,-1
.LVL37:
	.loc 1 95 8
	beq	a4,zero,.L21
	.loc 1 98 5 is_stmt 1
	.loc 1 98 23 is_stmt 0
	lw	a4,20(a5)
	.loc 1 98 8
	bgtu	a4,a3,.L21
	.loc 1 98 9 discriminator 1
	lw	a2,24(a5)
	bltu	a2,a3,.L21
	.loc 1 101 5 is_stmt 1
.LVL38:
	.loc 1 102 5
	.loc 1 102 14 is_stmt 0
	lw	a2,16(a5)
	.loc 1 101 10
	sub	a4,a3,a4
.LVL39:
	.loc 1 102 14
	remu	a4,a4,a2
.LVL40:
	.loc 1 102 8
	bne	a4,zero,.L21
	.loc 1 106 5 is_stmt 1
.LVL41:
	.loc 1 107 5
	.loc 1 107 8 is_stmt 0
	lw	a2,-4(a1)
	li	a4,165
	bne	a2,a4,.L21
	.loc 1 110 5 is_stmt 1
.LVL42:
	.loc 1 111 5
	.loc 1 111 33 is_stmt 0
	lw	a4,28(a5)
	.loc 1 114 12
	li	a0,0
	.loc 1 111 27
	sw	a4,-4(a1)
.LVL43:
	.loc 1 112 5 is_stmt 1
	.loc 1 113 20 is_stmt 0
	lw	a4,8(a5)
	.loc 1 112 15
	sw	a3,28(a5)
	.loc 1 113 5 is_stmt 1
	.loc 1 113 20 is_stmt 0
	addi	a4,a4,-1
	sw	a4,8(a5)
	.loc 1 114 5 is_stmt 1
	.loc 1 114 12 is_stmt 0
	ret
.LVL44:
.L23:
	.loc 1 93 16
	li	a0,-1
.LVL45:
.L21:
	.loc 1 115 1
	ret
	.cfi_endproc
.LFE3:
	.size	utils_memp_free, .-utils_memp_free
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_memp.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x328
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF35
	.byte	0xc
	.4byte	.LASF36
	.4byte	.LASF37
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
	.4byte	0x4d
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x60
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.byte	0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x73
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
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
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0xd1
	.byte	0x16
	.4byte	0x88
	.byte	0x5
	.byte	0x4
	.byte	0x6
	.4byte	.LASF13
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.4byte	0xb8
	.byte	0x7
	.4byte	.LASF15
	.byte	0x4
	.byte	0x6
	.byte	0x1d
	.4byte	0xb8
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x9d
	.byte	0x6
	.4byte	.LASF14
	.byte	0x20
	.byte	0x4
	.byte	0x9
	.byte	0x10
	.4byte	0x134
	.byte	0x7
	.4byte	.LASF16
	.byte	0x4
	.byte	0xa
	.byte	0xe
	.4byte	0x67
	.byte	0
	.byte	0x7
	.4byte	.LASF17
	.byte	0x4
	.byte	0xb
	.byte	0xe
	.4byte	0x67
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
	.byte	0x4
	.byte	0xc
	.byte	0xe
	.4byte	0x67
	.byte	0x8
	.byte	0x7
	.4byte	.LASF19
	.byte	0x4
	.byte	0xd
	.byte	0xd
	.4byte	0x41
	.byte	0xc
	.byte	0x7
	.4byte	.LASF20
	.byte	0x4
	.byte	0xe
	.byte	0xe
	.4byte	0x67
	.byte	0x10
	.byte	0x7
	.4byte	.LASF21
	.byte	0x4
	.byte	0xf
	.byte	0xb
	.4byte	0x9b
	.byte	0x14
	.byte	0x7
	.4byte	.LASF22
	.byte	0x4
	.byte	0x10
	.byte	0xb
	.4byte	0x9b
	.byte	0x18
	.byte	0x9
	.string	"mem"
	.byte	0x4
	.byte	0x11
	.byte	0x1d
	.4byte	0xb8
	.byte	0x1c
	.byte	0
	.byte	0x3
	.4byte	.LASF23
	.byte	0x4
	.byte	0x12
	.byte	0x2
	.4byte	0xbe
	.byte	0xa
	.4byte	.LASF26
	.byte	0x1
	.byte	0x55
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x1ab
	.byte	0xb
	.4byte	.LASF14
	.byte	0x1
	.byte	0x55
	.byte	0x28
	.4byte	0x1ab
	.4byte	.LLST14
	.byte	0xb
	.4byte	.LASF24
	.byte	0x1
	.byte	0x55
	.byte	0x34
	.4byte	0x9b
	.4byte	.LLST15
	.byte	0xc
	.4byte	.LASF13
	.byte	0x1
	.byte	0x57
	.byte	0x1d
	.4byte	0xb8
	.4byte	.LLST16
	.byte	0xd
	.string	"pat"
	.byte	0x1
	.byte	0x59
	.byte	0xf
	.4byte	0x1b1
	.4byte	.LLST17
	.byte	0xc
	.4byte	.LASF25
	.byte	0x1
	.byte	0x5a
	.byte	0x9
	.4byte	0x81
	.4byte	.LLST18
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x134
	.byte	0x8
	.byte	0x4
	.4byte	0x67
	.byte	0xa
	.4byte	.LASF27
	.byte	0x1
	.byte	0x3f
	.byte	0x7
	.4byte	0x9b
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0x202
	.byte	0xb
	.4byte	.LASF14
	.byte	0x1
	.byte	0x3f
	.byte	0x2c
	.4byte	0x1ab
	.4byte	.LLST11
	.byte	0xc
	.4byte	.LASF24
	.byte	0x1
	.byte	0x41
	.byte	0x1d
	.4byte	0xb8
	.4byte	.LLST12
	.byte	0xd
	.string	"pat"
	.byte	0x1
	.byte	0x42
	.byte	0xf
	.4byte	0x1b1
	.4byte	.LLST13
	.byte	0
	.byte	0xa
	.4byte	.LASF28
	.byte	0x1
	.byte	0x35
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.4byte	0x23e
	.byte	0xb
	.4byte	.LASF14
	.byte	0x1
	.byte	0x35
	.byte	0x2a
	.4byte	0x1ab
	.4byte	.LLST10
	.byte	0xe
	.4byte	.LVL24
	.4byte	0x313
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0xa
	.4byte	.LASF29
	.byte	0x1
	.byte	0x9
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.4byte	0x30d
	.byte	0xb
	.4byte	.LASF14
	.byte	0x1
	.byte	0x9
	.byte	0x29
	.4byte	0x30d
	.4byte	.LLST0
	.byte	0xb
	.4byte	.LASF16
	.byte	0x1
	.byte	0x9
	.byte	0x38
	.4byte	0x54
	.4byte	.LLST1
	.byte	0xb
	.4byte	.LASF17
	.byte	0x1
	.byte	0x9
	.byte	0x4c
	.4byte	0x54
	.4byte	.LLST2
	.byte	0xb
	.4byte	.LASF19
	.byte	0x1
	.byte	0x9
	.byte	0x5e
	.4byte	0x41
	.4byte	.LLST3
	.byte	0xc
	.4byte	.LASF30
	.byte	0x1
	.byte	0xb
	.byte	0x18
	.4byte	0x1ab
	.4byte	.LLST4
	.byte	0xc
	.4byte	.LASF24
	.byte	0x1
	.byte	0xc
	.byte	0x1d
	.4byte	0xb8
	.4byte	.LLST5
	.byte	0xc
	.4byte	.LASF31
	.byte	0x1
	.byte	0xd
	.byte	0x1d
	.4byte	0xb8
	.4byte	.LLST6
	.byte	0xc
	.4byte	.LASF32
	.byte	0x1
	.byte	0xe
	.byte	0xc
	.4byte	0x8f
	.4byte	.LLST7
	.byte	0xc
	.4byte	.LASF20
	.byte	0x1
	.byte	0xf
	.byte	0xe
	.4byte	0x54
	.4byte	.LLST8
	.byte	0xd
	.string	"i"
	.byte	0x1
	.byte	0x10
	.byte	0xe
	.4byte	0x54
	.4byte	.LLST9
	.byte	0xe
	.4byte	.LVL6
	.4byte	0x31f
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x8
	.byte	0x79
	.byte	0
	.byte	0x82
	.byte	0
	.byte	0x1e
	.byte	0x78
	.byte	0
	.byte	0x22
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x1ab
	.byte	0x10
	.4byte	.LASF33
	.4byte	.LASF33
	.byte	0x5
	.byte	0x94
	.byte	0x6
	.byte	0x10
	.4byte	.LASF34
	.4byte	.LASF34
	.byte	0x5
	.byte	0x91
	.byte	0x7
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0xb
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
	.byte	0xc
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
	.byte	0xd
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
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST14:
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL37
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL45
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL36
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL41
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x6
	.byte	0x7d
	.byte	0
	.byte	0x7e
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL40
	.4byte	.LVL43
	.2byte	0x7
	.byte	0x7d
	.byte	0
	.byte	0x7f
	.byte	0x14
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL34
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL29
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x3
	.byte	0x7a
	.byte	0x7c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x3
	.byte	0x7a
	.byte	0x7c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL23
	.4byte	.LVL24-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24-1
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL6-1
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL6-1
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL16
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x79
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x11
	.byte	0x79
	.byte	0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x7c
	.byte	0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x1e
	.byte	0x78
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL6-1
	.4byte	.LVL11
	.2byte	0x12
	.byte	0x79
	.byte	0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x1e
	.byte	0x78
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x16
	.byte	0x79
	.byte	0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x1e
	.byte	0x85
	.byte	0x1f
	.byte	0x85
	.byte	0
	.byte	0x1f
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1f
	.byte	0x83
	.byte	0
	.byte	0x85
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x3
	.byte	0x85
	.byte	0
	.byte	0x1f
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x1e
	.byte	0x85
	.byte	0x1f
	.byte	0x85
	.byte	0
	.byte	0x1f
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LFE0
	.2byte	0x12
	.byte	0x79
	.byte	0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x1e
	.byte	0x78
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL3
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x10
	.byte	0x83
	.byte	0
	.byte	0x85
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x3
	.byte	0x85
	.byte	0
	.byte	0x1f
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5e
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF22:
	.string	"last_node"
.LASF17:
	.string	"pool_cap"
.LASF13:
	.string	"utils_memp_node"
.LASF14:
	.string	"pool"
.LASF25:
	.string	"diff"
.LASF1:
	.string	"short int"
.LASF12:
	.string	"size_t"
.LASF16:
	.string	"node_size"
.LASF5:
	.string	"uint8_t"
.LASF20:
	.string	"padded_node_size"
.LASF29:
	.string	"utils_memp_init"
.LASF3:
	.string	"long long int"
.LASF2:
	.string	"long int"
.LASF28:
	.string	"utils_memp_deinit"
.LASF24:
	.string	"node"
.LASF27:
	.string	"utils_memp_malloc"
.LASF4:
	.string	"unsigned char"
.LASF0:
	.string	"signed char"
.LASF10:
	.string	"long long unsigned int"
.LASF8:
	.string	"uint32_t"
.LASF11:
	.string	"unsigned int"
.LASF6:
	.string	"uint16_t"
.LASF7:
	.string	"short unsigned int"
.LASF18:
	.string	"pool_size"
.LASF9:
	.string	"long unsigned int"
.LASF37:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/utils"
.LASF33:
	.string	"vPortFree"
.LASF32:
	.string	"size"
.LASF21:
	.string	"first_node"
.LASF30:
	.string	"npool"
.LASF19:
	.string	"align_req"
.LASF26:
	.string	"utils_memp_free"
.LASF36:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/src/utils_memp.c"
.LASF31:
	.string	"pool_mem"
.LASF23:
	.string	"utils_memp_pool_t"
.LASF34:
	.string	"pvPortMalloc"
.LASF15:
	.string	"next"
.LASF35:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
