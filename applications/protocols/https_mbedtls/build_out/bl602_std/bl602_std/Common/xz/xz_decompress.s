	.file	"xz_decompress.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.xz_uncompress_init,"ax",@progbits
	.align	1
	.globl	xz_uncompress_init
	.type	xz_uncompress_init, @function
xz_uncompress_init:
.LFB1:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Common/xz/xz_decompress.c"
	.loc 1 9 1
	.cfi_startproc
.LVL0:
	.loc 1 10 5
	.loc 1 9 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	s2,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.loc 1 9 1
	mv	s0,a0
	mv	s2,a1
	mv	s1,a2
	.loc 1 10 5
	call	xz_crc32_init
.LVL1:
	.loc 1 16 5 is_stmt 1
	.loc 1 16 9 is_stmt 0
	li	a1,32768
	li	a0,2
	call	xz_dec_init
.LVL2:
	.loc 1 16 7
	lui	a5,%hi(.LANCHOR0)
	sw	a0,%lo(.LANCHOR0)(a5)
	.loc 1 17 5 is_stmt 1
	.loc 1 17 8 is_stmt 0
	beq	a0,zero,.L3
	.loc 1 21 5 is_stmt 1
	.loc 1 21 16 is_stmt 0
	sw	s2,0(s0)
	.loc 1 22 5 is_stmt 1
	.loc 1 22 20 is_stmt 0
	sw	zero,4(s0)
	.loc 1 23 5 is_stmt 1
	.loc 1 23 21 is_stmt 0
	sw	zero,8(s0)
	.loc 1 24 5 is_stmt 1
	.loc 1 24 17 is_stmt 0
	sw	s1,12(s0)
	.loc 1 25 5 is_stmt 1
	.loc 1 25 21 is_stmt 0
	sw	zero,16(s0)
	.loc 1 26 5 is_stmt 1
	.loc 1 26 22 is_stmt 0
	sw	zero,20(s0)
	.loc 1 28 2 is_stmt 1
	.loc 1 28 9 is_stmt 0
	li	a0,0
.L1:
	.loc 1 29 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL3:
	lw	s1,4(sp)
	.cfi_restore 9
.LVL4:
	lw	s2,0(sp)
	.cfi_restore 18
.LVL5:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL6:
.L3:
	.cfi_restore_state
	.loc 1 18 20
	li	a0,1
	j	.L1
	.cfi_endproc
.LFE1:
	.size	xz_uncompress_init, .-xz_uncompress_init
	.section	.text.xz_uncompress_stream,"ax",@progbits
	.align	1
	.globl	xz_uncompress_stream
	.type	xz_uncompress_stream, @function
xz_uncompress_stream:
.LFB2:
	.loc 1 33 1 is_stmt 1
	.cfi_startproc
.LVL7:
	.loc 1 34 2
	.loc 1 35 2
	.loc 1 33 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.loc 1 35 14
	sw	zero,0(a5)
	.loc 1 37 2 is_stmt 1
	.loc 1 33 1 is_stmt 0
	mv	s1,a5
	.loc 1 37 5
	lw	a3,4(a0)
.LVL8:
	lw	a5,8(a0)
.LVL9:
	.loc 1 33 1
	mv	s0,a0
	.loc 1 37 5
	bne	a3,a5,.L6
	.loc 1 38 3 is_stmt 1
	.loc 1 38 19 is_stmt 0
	sw	a2,8(a0)
	.loc 1 39 10 is_stmt 1
	.loc 1 39 25 is_stmt 0
	sw	zero,4(a0)
.L6:
	.loc 1 42 2 is_stmt 1
	.loc 1 42 5 is_stmt 0
	lw	a3,16(s0)
	lw	a5,20(s0)
	bne	a3,a5,.L7
	.loc 1 43 10 is_stmt 1
	.loc 1 43 27 is_stmt 0
	sw	a4,20(s0)
	.loc 1 44 3 is_stmt 1
	.loc 1 44 19 is_stmt 0
	sw	zero,16(s0)
.L7:
	.loc 1 47 2 is_stmt 1
	.loc 1 47 11 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	lw	a0,%lo(.LANCHOR0)(a5)
.LVL10:
	mv	a1,s0
.LVL11:
	call	xz_dec_run
.LVL12:
	.loc 1 49 2 is_stmt 1
	.loc 1 49 5 is_stmt 0
	li	a4,1
	lw	a5,16(s0)
	beq	a0,a4,.L8
	.loc 1 49 32 discriminator 1
	lw	a4,20(s0)
	bne	a5,a4,.L5
.L8:
	.loc 1 50 3 is_stmt 1
	.loc 1 50 15 is_stmt 0
	sw	a5,0(s1)
	.loc 1 52 2 is_stmt 1
.L5:
	.loc 1 53 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL13:
	lw	s1,4(sp)
	.cfi_restore 9
.LVL14:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2:
	.size	xz_uncompress_stream, .-xz_uncompress_stream
	.section	.text.xz_uncompress_end,"ax",@progbits
	.align	1
	.globl	xz_uncompress_end
	.type	xz_uncompress_end, @function
xz_uncompress_end:
.LFB3:
	.loc 1 56 1 is_stmt 1
	.cfi_startproc
	.loc 1 57 2
	lui	a5,%hi(.LANCHOR0)
	lw	a0,%lo(.LANCHOR0)(a5)
	tail	xz_dec_end
.LVL15:
	.cfi_endproc
.LFE3:
	.size	xz_uncompress_end, .-xz_uncompress_end
	.section	.sbss.s,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	s, @object
	.size	s, 4
s:
	.zero	4
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Common/xz/xz.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2e8
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF44
	.byte	0xc
	.4byte	.LASF45
	.4byte	.LASF46
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0xd1
	.byte	0x16
	.4byte	0x38
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF3
	.byte	0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF4
	.byte	0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x6c
	.byte	0x5
	.4byte	0x5b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF7
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.byte	0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x86
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.byte	0x6
	.4byte	.LASF15
	.byte	0x7
	.byte	0x4
	.4byte	0x38
	.byte	0x4
	.byte	0x38
	.byte	0x6
	.4byte	0xb9
	.byte	0x7
	.4byte	.LASF12
	.byte	0
	.byte	0x7
	.4byte	.LASF13
	.byte	0x1
	.byte	0x7
	.4byte	.LASF14
	.byte	0x2
	.byte	0
	.byte	0x6
	.4byte	.LASF16
	.byte	0x7
	.byte	0x4
	.4byte	0x38
	.byte	0x4
	.byte	0x70
	.byte	0x6
	.4byte	0x102
	.byte	0x7
	.4byte	.LASF17
	.byte	0
	.byte	0x7
	.4byte	.LASF18
	.byte	0x1
	.byte	0x7
	.4byte	.LASF19
	.byte	0x2
	.byte	0x7
	.4byte	.LASF20
	.byte	0x3
	.byte	0x7
	.4byte	.LASF21
	.byte	0x4
	.byte	0x7
	.4byte	.LASF22
	.byte	0x5
	.byte	0x7
	.4byte	.LASF23
	.byte	0x6
	.byte	0x7
	.4byte	.LASF24
	.byte	0x7
	.byte	0x7
	.4byte	.LASF25
	.byte	0x8
	.byte	0
	.byte	0x8
	.4byte	.LASF47
	.byte	0x18
	.byte	0x4
	.byte	0x8c
	.byte	0x8
	.4byte	0x15d
	.byte	0x9
	.string	"in"
	.byte	0x4
	.byte	0x8d
	.byte	0x11
	.4byte	0x15d
	.byte	0
	.byte	0xa
	.4byte	.LASF26
	.byte	0x4
	.byte	0x8e
	.byte	0x9
	.4byte	0x2c
	.byte	0x4
	.byte	0xa
	.4byte	.LASF27
	.byte	0x4
	.byte	0x8f
	.byte	0x9
	.4byte	0x2c
	.byte	0x8
	.byte	0x9
	.string	"out"
	.byte	0x4
	.byte	0x91
	.byte	0xb
	.4byte	0x163
	.byte	0xc
	.byte	0xa
	.4byte	.LASF28
	.byte	0x4
	.byte	0x92
	.byte	0x9
	.4byte	0x2c
	.byte	0x10
	.byte	0xa
	.4byte	.LASF29
	.byte	0x4
	.byte	0x93
	.byte	0x9
	.4byte	0x2c
	.byte	0x14
	.byte	0
	.byte	0xb
	.byte	0x4
	.4byte	0x67
	.byte	0xb
	.byte	0x4
	.4byte	0x5b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF30
	.byte	0xc
	.4byte	.LASF48
	.byte	0xd
	.string	"s"
	.byte	0x1
	.byte	0x6
	.byte	0x17
	.4byte	0x185
	.byte	0x5
	.byte	0x3
	.4byte	s
	.byte	0xb
	.byte	0x4
	.4byte	0x170
	.byte	0xe
	.4byte	.LASF49
	.byte	0x1
	.byte	0x37
	.byte	0x6
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x1ab
	.byte	0xf
	.4byte	.LVL15
	.4byte	0x2ba
	.byte	0
	.byte	0x10
	.4byte	.LASF38
	.byte	0x1
	.byte	0x1f
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0x244
	.byte	0x11
	.4byte	.LASF31
	.byte	0x1
	.byte	0x1f
	.byte	0x29
	.4byte	0x244
	.4byte	.LLST3
	.byte	0x11
	.4byte	.LASF32
	.byte	0x1
	.byte	0x1f
	.byte	0x3a
	.4byte	0x163
	.4byte	.LLST4
	.byte	0x11
	.4byte	.LASF33
	.byte	0x1
	.byte	0x1f
	.byte	0x49
	.4byte	0x7a
	.4byte	.LLST5
	.byte	0x11
	.4byte	.LASF34
	.byte	0x1
	.byte	0x20
	.byte	0xc
	.4byte	0x163
	.4byte	.LLST6
	.byte	0x11
	.4byte	.LASF35
	.byte	0x1
	.byte	0x20
	.byte	0x1b
	.4byte	0x7a
	.4byte	.LLST7
	.byte	0x11
	.4byte	.LASF36
	.byte	0x1
	.byte	0x20
	.byte	0x2b
	.4byte	0x24a
	.4byte	.LLST8
	.byte	0x12
	.4byte	.LASF37
	.byte	0x1
	.byte	0x22
	.byte	0x6
	.4byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x13
	.4byte	.LVL12
	.4byte	0x2c6
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x4
	.4byte	0x102
	.byte	0xb
	.byte	0x4
	.4byte	0x7a
	.byte	0x10
	.4byte	.LASF39
	.byte	0x1
	.byte	0x8
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.4byte	0x2ba
	.byte	0x11
	.4byte	.LASF31
	.byte	0x1
	.byte	0x8
	.byte	0x27
	.4byte	0x244
	.4byte	.LLST0
	.byte	0x11
	.4byte	.LASF32
	.byte	0x1
	.byte	0x8
	.byte	0x38
	.4byte	0x163
	.4byte	.LLST1
	.byte	0x11
	.4byte	.LASF34
	.byte	0x1
	.byte	0x8
	.byte	0x47
	.4byte	0x163
	.4byte	.LLST2
	.byte	0x15
	.4byte	.LVL1
	.4byte	0x2d2
	.byte	0x13
	.4byte	.LVL2
	.4byte	0x2df
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xa
	.2byte	0x8000
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x4
	.byte	0xee
	.byte	0xd
	.byte	0x16
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x4
	.byte	0xda
	.byte	0x14
	.byte	0x17
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x4
	.2byte	0x113
	.byte	0xd
	.byte	0x16
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x4
	.byte	0xc6
	.byte	0x17
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0xb
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
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
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x2
	.byte	0x17
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL13
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL7
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL11
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL7
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL12-1
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL8
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL7
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL12-1
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL9
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL14
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1-1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1-1
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL1-1
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x59
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
.LASF31:
	.string	"stream"
.LASF5:
	.string	"size_t"
.LASF25:
	.string	"XZ_BUF_ERROR"
.LASF26:
	.string	"in_pos"
.LASF12:
	.string	"XZ_SINGLE"
.LASF36:
	.string	"decomp_len"
.LASF34:
	.string	"dbuf"
.LASF37:
	.string	"status"
.LASF23:
	.string	"XZ_OPTIONS_ERROR"
.LASF14:
	.string	"XZ_DYNALLOC"
.LASF41:
	.string	"xz_dec_run"
.LASF35:
	.string	"dlen"
.LASF7:
	.string	"unsigned char"
.LASF33:
	.string	"slen"
.LASF27:
	.string	"in_size"
.LASF10:
	.string	"long unsigned int"
.LASF8:
	.string	"short unsigned int"
.LASF43:
	.string	"xz_dec_init"
.LASF47:
	.string	"xz_buf"
.LASF38:
	.string	"xz_uncompress_stream"
.LASF0:
	.string	"unsigned int"
.LASF24:
	.string	"XZ_DATA_ERROR"
.LASF15:
	.string	"xz_mode"
.LASF18:
	.string	"XZ_STREAM_END"
.LASF11:
	.string	"long long unsigned int"
.LASF6:
	.string	"uint8_t"
.LASF28:
	.string	"out_pos"
.LASF16:
	.string	"xz_ret"
.LASF48:
	.string	"xz_dec"
.LASF17:
	.string	"XZ_OK"
.LASF19:
	.string	"XZ_UNSUPPORTED_CHECK"
.LASF49:
	.string	"xz_uncompress_end"
.LASF29:
	.string	"out_size"
.LASF4:
	.string	"long long int"
.LASF44:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF30:
	.string	"char"
.LASF45:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Common/xz/xz_decompress.c"
.LASF46:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/bl602_std"
.LASF2:
	.string	"short int"
.LASF22:
	.string	"XZ_FORMAT_ERROR"
.LASF42:
	.string	"xz_crc32_init"
.LASF32:
	.string	"sbuf"
.LASF39:
	.string	"xz_uncompress_init"
.LASF9:
	.string	"uint32_t"
.LASF3:
	.string	"long int"
.LASF20:
	.string	"XZ_MEM_ERROR"
.LASF1:
	.string	"signed char"
.LASF13:
	.string	"XZ_PREALLOC"
.LASF21:
	.string	"XZ_MEMLIMIT_ERROR"
.LASF40:
	.string	"xz_dec_end"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
