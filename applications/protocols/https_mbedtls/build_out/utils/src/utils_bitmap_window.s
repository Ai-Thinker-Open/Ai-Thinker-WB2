	.file	"utils_bitmap_window.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.utils_bitmap_window_init,"ax",@progbits
	.align	1
	.globl	utils_bitmap_window_init
	.type	utils_bitmap_window_init, @function
utils_bitmap_window_init:
.LFB4:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/src/utils_bitmap_window.c"
	.loc 1 36 1
	.cfi_startproc
.LVL0:
	.loc 1 37 5
	.loc 1 36 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	s2,0(sp)
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	mv	s0,a2
	mv	s2,a1
	.loc 1 37 5
	li	a2,16
.LVL1:
	li	a1,0
.LVL2:
	.loc 1 36 1
	sw	s1,4(sp)
	sw	ra,12(sp)
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.loc 1 36 1
	mv	s1,a0
	.loc 1 39 33
	addi	s0,s0,1
.LVL3:
	.loc 1 37 5
	call	memset
.LVL4:
	.loc 1 38 5 is_stmt 1
	.loc 1 42 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 39 23
	sw	s0,4(s1)
	.loc 1 42 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL5:
	.loc 1 38 14
	sw	s2,0(s1)
	.loc 1 39 5 is_stmt 1
	.loc 1 41 5
	.loc 1 42 1 is_stmt 0
	li	a0,0
	lw	s1,4(sp)
	.cfi_restore 9
.LVL6:
	lw	s2,0(sp)
	.cfi_restore 18
.LVL7:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	utils_bitmap_window_init, .-utils_bitmap_window_init
	.section	.rodata.utils_bitmap_window_bit_set.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"small ssn %d\r\n"
	.align	2
.LC1:
	.string	"Dup bit_pos %d with pos_offset %d\r\n"
	.section	.text.utils_bitmap_window_bit_set,"ax",@progbits
	.align	1
	.globl	utils_bitmap_window_bit_set
	.type	utils_bitmap_window_bit_set, @function
utils_bitmap_window_bit_set:
.LFB5:
	.loc 1 45 1 is_stmt 1
	.cfi_startproc
.LVL8:
	.loc 1 46 5
	.loc 1 47 5
	.loc 1 49 5
	.loc 1 45 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 45 1
	mv	a5,a0
	.loc 1 49 22
	lw	a0,0(a0)
.LVL9:
	.loc 1 51 16
	lw	a3,4(a5)
	.loc 1 45 1
	mv	s0,a1
	.loc 1 49 8
	ble	a0,a1,.L4
	.loc 1 51 9 is_stmt 1
	.loc 1 51 31 is_stmt 0
	sub	a4,a3,a0
	.loc 1 51 42
	add	a4,a4,a1
	.loc 1 51 52
	addi	a4,a4,1
	.loc 1 51 12
	li	a2,64
	bleu	a4,a2,.L4
	.loc 1 52 13 is_stmt 1
	lui	a0,%hi(.LC0)
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL10:
	.loc 1 53 13
	.loc 1 53 20 is_stmt 0
	li	a2,-2147483648
	addi	a2,a2,1
.L3:
	.loc 1 77 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL11:
	mv	a0,a2
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL12:
.L4:
	.cfi_restore_state
	.loc 1 56 5 is_stmt 1
	.loc 1 56 26 is_stmt 0
	add	a2,s0,a3
	.loc 1 56 16
	sub	a2,a2,a0
.LVL13:
	.loc 1 57 5 is_stmt 1
	.loc 1 57 8 is_stmt 0
	blt	a2,a3,.L6
	.loc 1 58 9 is_stmt 1
	.loc 1 58 20 is_stmt 0
	sub	a2,a2,a3
.LVL14:
.L6:
	.loc 1 61 5 is_stmt 1
	.loc 1 61 20 is_stmt 0
	lw	a0,8(a5)
	lw	a1,12(a5)
	.loc 1 61 32
	li	a4,1
	sll	a4,a4,a2
	srai	a7,a4,31
	.loc 1 61 27
	and	a6,a0,a4
	and	t1,a1,a7
	.loc 1 61 8
	or	a6,a6,t1
	beq	a6,zero,.L7
	.loc 1 62 9 is_stmt 1
	lui	a0,%hi(.LC1)
	mv	a1,s0
	addi	a0,a0,%lo(.LC1)
	call	printf
.LVL15:
	.loc 1 63 9
	.loc 1 63 16 is_stmt 0
	neg	a2,s0
	j	.L3
.LVL16:
.L7:
	.loc 1 65 5 is_stmt 1
	.loc 1 65 23 is_stmt 0
	or	a4,a0,a4
	or	a1,a1,a7
	sw	a4,8(a5)
	sw	a1,12(a5)
	.loc 1 67 5 is_stmt 1
.LVL17:
	.loc 1 67 17
	.loc 1 65 23 is_stmt 0
	li	a0,64
.LVL18:
.L13:
	.loc 1 68 9 is_stmt 1
	.loc 1 68 24 is_stmt 0
	lw	a4,8(a5)
	lw	a1,12(a5)
	.loc 1 68 31
	andi	a6,a4,1
	.loc 1 68 12
	beq	a6,zero,.L10
	.loc 1 69 13 is_stmt 1
	.loc 1 69 31 is_stmt 0
	slli	a6,a1,31
	srli	a4,a4,1
	or	a4,a4,a6
	sw	a4,8(a5)
	.loc 1 70 22
	lw	a4,0(a5)
	.loc 1 69 31
	srli	a1,a1,1
	sw	a1,12(a5)
	.loc 1 70 13 is_stmt 1
	.loc 1 70 22 is_stmt 0
	addi	a4,a4,1
	.loc 1 71 13 is_stmt 1
	.loc 1 71 16 is_stmt 0
	beq	a4,a3,.L11
	.loc 1 70 22
	sw	a4,0(a5)
.L10:
	.loc 1 67 52 is_stmt 1 discriminator 2
.LVL19:
	.loc 1 67 17 discriminator 2
	.loc 1 67 5 is_stmt 0 discriminator 2
	addi	a0,a0,-1
.LVL20:
	bne	a0,zero,.L13
	j	.L3
.L11:
	.loc 1 72 17 is_stmt 1
	.loc 1 72 26 is_stmt 0
	sw	zero,0(a5)
	j	.L10
	.cfi_endproc
.LFE5:
	.size	utils_bitmap_window_bit_set, .-utils_bitmap_window_bit_set
	.section	.text.utils_bitmap_window_map_get,"ax",@progbits
	.align	1
	.globl	utils_bitmap_window_map_get
	.type	utils_bitmap_window_map_get, @function
utils_bitmap_window_map_get:
.LFB6:
	.loc 1 80 1 is_stmt 1
	.cfi_startproc
.LVL21:
	.loc 1 81 5
	.loc 1 82 1 is_stmt 0
	lw	a1,12(a0)
	lw	a0,8(a0)
.LVL22:
	ret
	.cfi_endproc
.LFE6:
	.size	utils_bitmap_window_map_get, .-utils_bitmap_window_map_get
	.section	.text.utils_bitmap_window_ssn_get,"ax",@progbits
	.align	1
	.globl	utils_bitmap_window_ssn_get
	.type	utils_bitmap_window_ssn_get, @function
utils_bitmap_window_ssn_get:
.LFB7:
	.loc 1 85 1 is_stmt 1
	.cfi_startproc
.LVL23:
	.loc 1 86 5
	.loc 1 87 1 is_stmt 0
	lw	a0,0(a0)
.LVL24:
	ret
	.cfi_endproc
.LFE7:
	.size	utils_bitmap_window_ssn_get, .-utils_bitmap_window_ssn_get
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_bitmap_window.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x26e
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
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x46
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.byte	0x4
	.4byte	.LASF9
	.byte	0x2
	.byte	0x69
	.byte	0x20
	.4byte	0x7c
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x3a
	.byte	0x4
	.4byte	.LASF13
	.byte	0x3
	.byte	0x3c
	.byte	0x14
	.4byte	0x70
	.byte	0x5
	.byte	0x8
	.byte	0x4
	.byte	0x23
	.byte	0x5
	.4byte	0xc4
	.byte	0x6
	.4byte	.LASF14
	.byte	0x4
	.byte	0x24
	.byte	0x11
	.4byte	0xc4
	.byte	0x6
	.4byte	.LASF15
	.byte	0x4
	.byte	0x25
	.byte	0x12
	.4byte	0x96
	.byte	0
	.byte	0x7
	.4byte	0x8a
	.4byte	0xd4
	.byte	0x8
	.4byte	0x2c
	.byte	0x7
	.byte	0
	.byte	0x9
	.4byte	.LASF30
	.byte	0x10
	.byte	0x4
	.byte	0x20
	.byte	0x8
	.4byte	0x109
	.byte	0xa
	.string	"ssn"
	.byte	0x4
	.byte	0x21
	.byte	0x9
	.4byte	0x25
	.byte	0
	.byte	0xb
	.4byte	.LASF16
	.byte	0x4
	.byte	0x22
	.byte	0x9
	.4byte	0x25
	.byte	0x4
	.byte	0xb
	.4byte	.LASF17
	.byte	0x4
	.byte	0x26
	.byte	0x7
	.4byte	0xa2
	.byte	0x8
	.byte	0
	.byte	0xc
	.4byte	.LASF18
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x134
	.byte	0xd
	.string	"ctx"
	.byte	0x1
	.byte	0x54
	.byte	0x3a
	.4byte	0x134
	.4byte	.LLST8
	.byte	0
	.byte	0xe
	.byte	0x4
	.4byte	0xd4
	.byte	0xc
	.4byte	.LASF19
	.byte	0x1
	.byte	0x4f
	.byte	0xa
	.4byte	0x96
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x165
	.byte	0xd
	.string	"ctx"
	.byte	0x1
	.byte	0x4f
	.byte	0x3f
	.4byte	0x134
	.4byte	.LLST7
	.byte	0
	.byte	0xc
	.4byte	.LASF20
	.byte	0x1
	.byte	0x2c
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x1f4
	.byte	0xd
	.string	"ctx"
	.byte	0x1
	.byte	0x2c
	.byte	0x3a
	.4byte	0x134
	.4byte	.LLST3
	.byte	0xf
	.4byte	.LASF21
	.byte	0x1
	.byte	0x2c
	.byte	0x43
	.4byte	0x25
	.4byte	.LLST4
	.byte	0x10
	.string	"i"
	.byte	0x1
	.byte	0x2e
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST5
	.byte	0x11
	.4byte	.LASF22
	.byte	0x1
	.byte	0x2f
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST6
	.byte	0x12
	.4byte	.LVL10
	.4byte	0x259
	.4byte	0x1da
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LVL15
	.4byte	0x259
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	.LASF23
	.byte	0x1
	.byte	0x23
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x259
	.byte	0xd
	.string	"ctx"
	.byte	0x1
	.byte	0x23
	.byte	0x37
	.4byte	0x134
	.4byte	.LLST0
	.byte	0xd
	.string	"ssn"
	.byte	0x1
	.byte	0x23
	.byte	0x40
	.4byte	0x25
	.4byte	.LLST1
	.byte	0xf
	.4byte	.LASF24
	.byte	0x1
	.byte	0x23
	.byte	0x49
	.4byte	0x25
	.4byte	.LLST2
	.byte	0x14
	.4byte	.LVL4
	.4byte	0x265
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LASF25
	.4byte	.LASF25
	.byte	0x5
	.byte	0xc8
	.byte	0x5
	.byte	0x15
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x6
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
	.byte	0x8
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
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x4
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
	.byte	0x5
	.byte	0x17
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
	.byte	0x6
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
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0xa
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
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xc
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
	.byte	0xd
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
	.byte	0xe
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0x13
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
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
.LLST8:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL22
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL10-1
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL15-1
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL10-1
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x6
	.byte	0x8
	.byte	0x40
	.byte	0x7a
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x6
	.byte	0x8
	.byte	0x41
	.byte	0x7a
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LFE5
	.2byte	0x6
	.byte	0x8
	.byte	0x40
	.byte	0x7a
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL13
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL16
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4-1
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL6
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL7
	.4byte	.LFE4
	.2byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x3
	.byte	0x78
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x6
	.byte	0x79
	.byte	0x4
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LFE4
	.2byte	0x9
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x4
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF8:
	.string	"__uint8_t"
.LASF21:
	.string	"bit_pos"
.LASF17:
	.string	"bitmap"
.LASF13:
	.string	"uint64_t"
.LASF29:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/utils"
.LASF22:
	.string	"pos_offset"
.LASF20:
	.string	"utils_bitmap_window_bit_set"
.LASF18:
	.string	"utils_bitmap_window_ssn_get"
.LASF16:
	.string	"ssn_duration"
.LASF2:
	.string	"unsigned char"
.LASF6:
	.string	"long unsigned int"
.LASF4:
	.string	"short unsigned int"
.LASF26:
	.string	"memset"
.LASF30:
	.string	"utils_bitmap_ctx"
.LASF0:
	.string	"unsigned int"
.LASF24:
	.string	"ssn_max"
.LASF10:
	.string	"long long unsigned int"
.LASF12:
	.string	"uint8_t"
.LASF28:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/src/utils_bitmap_window.c"
.LASF7:
	.string	"long long int"
.LASF27:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF11:
	.string	"char"
.LASF25:
	.string	"printf"
.LASF15:
	.string	"map64"
.LASF3:
	.string	"short int"
.LASF9:
	.string	"__uint64_t"
.LASF23:
	.string	"utils_bitmap_window_init"
.LASF5:
	.string	"long int"
.LASF14:
	.string	"bytes"
.LASF1:
	.string	"signed char"
.LASF19:
	.string	"utils_bitmap_window_map_get"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
