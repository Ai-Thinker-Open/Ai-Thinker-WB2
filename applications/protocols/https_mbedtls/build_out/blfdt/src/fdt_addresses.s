	.file	"fdt_addresses.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.fdt_cells,"ax",@progbits
	.align	1
	.type	fdt_cells, @function
fdt_cells:
.LFB40:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blfdt/src/fdt_addresses.c"
	.loc 1 60 1
	.cfi_startproc
.LVL0:
	.loc 1 61 5
	.loc 1 62 5
	.loc 1 63 5
	.loc 1 65 5
	.loc 1 60 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 65 9
	addi	a3,sp,12
	.loc 1 60 1
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 65 9
	call	fdt_getprop
.LVL1:
	.loc 1 66 5 is_stmt 1
	lw	a4,12(sp)
	.loc 1 66 8 is_stmt 0
	bne	a0,zero,.L2
	.loc 1 67 9 is_stmt 1
	.loc 1 67 16 is_stmt 0
	mv	a0,a4
.LVL2:
.L1:
	.loc 1 77 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL3:
.L2:
	.cfi_restore_state
	.loc 1 69 8
	li	a3,4
	mv	a5,a0
	.loc 1 69 5 is_stmt 1
	.loc 1 74 16 is_stmt 0
	li	a0,-14
.LVL4:
	.loc 1 69 8
	bne	a4,a3,.L1
	.loc 1 72 5 is_stmt 1
	.loc 1 72 11 is_stmt 0
	lw	a5,0(a5)
.LVL5:
.LBB4:
.LBB5:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blfdt/inc/libfdt_env.h"
	.loc 2 93 5 is_stmt 1
	.loc 2 93 212 is_stmt 0
	srli	a4,a5,24
	.loc 2 93 12
	slli	a0,a5,24
	or	a0,a0,a4
	.loc 2 93 112
	srli	a4,a5,8
	andi	a4,a4,0xff
	.loc 2 93 163
	srli	a5,a5,16
.LVL6:
	.loc 2 93 117
	slli	a4,a4,16
	.loc 2 93 163
	andi	a5,a5,0xff
	.loc 2 93 12
	or	a0,a0,a4
	.loc 2 93 168
	slli	a5,a5,8
	.loc 2 93 12
	or	a0,a0,a5
.LVL7:
.LBE5:
.LBE4:
	.loc 1 73 5 is_stmt 1
	.loc 1 73 20 is_stmt 0
	addi	a4,a0,-1
	.loc 1 73 8
	li	a5,3
	bleu	a4,a5,.L1
	.loc 1 74 16
	li	a0,-14
.LVL8:
	j	.L1
	.cfi_endproc
.LFE40:
	.size	fdt_cells, .-fdt_cells
	.section	.rodata.fdt_address_cells.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"#address-cells"
	.section	.text.fdt_address_cells,"ax",@progbits
	.align	1
	.globl	fdt_address_cells
	.type	fdt_address_cells, @function
fdt_address_cells:
.LFB41:
	.loc 1 80 1 is_stmt 1
	.cfi_startproc
.LVL9:
	.loc 1 81 5
	.loc 1 83 5
	.loc 1 83 11 is_stmt 0
	lui	a2,%hi(.LC0)
	.loc 1 80 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 83 11
	addi	a2,a2,%lo(.LC0)
	.loc 1 80 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 83 11
	call	fdt_cells
.LVL10:
	.loc 1 84 5 is_stmt 1
	.loc 1 84 8 is_stmt 0
	li	a5,-1
	bne	a0,a5,.L7
	.loc 1 85 16
	li	a0,2
.LVL11:
.L7:
	.loc 1 87 1
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE41:
	.size	fdt_address_cells, .-fdt_address_cells
	.section	.rodata.fdt_size_cells.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"#size-cells"
	.section	.text.fdt_size_cells,"ax",@progbits
	.align	1
	.globl	fdt_size_cells
	.type	fdt_size_cells, @function
fdt_size_cells:
.LFB42:
	.loc 1 90 1 is_stmt 1
	.cfi_startproc
.LVL12:
	.loc 1 91 5
	.loc 1 93 5
	.loc 1 93 11 is_stmt 0
	lui	a2,%hi(.LC1)
	.loc 1 90 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 93 11
	addi	a2,a2,%lo(.LC1)
	.loc 1 90 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 93 11
	call	fdt_cells
.LVL13:
	.loc 1 94 5 is_stmt 1
	.loc 1 94 8 is_stmt 0
	li	a5,-1
	bne	a0,a5,.L10
	.loc 1 95 16
	li	a0,1
.LVL14:
.L10:
	.loc 1 97 1
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE42:
	.size	fdt_size_cells, .-fdt_size_cells
	.text
.Letext0:
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blfdt/inc/libfdt.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x26c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF17
	.byte	0xc
	.4byte	.LASF18
	.4byte	.LASF19
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
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF3
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF4
	.byte	0x4
	.4byte	.LASF7
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x5b
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0x4
	.4byte	.LASF8
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x75
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x5
	.4byte	0x83
	.byte	0x6
	.byte	0x4
	.4byte	0x8a
	.byte	0x6
	.byte	0x4
	.4byte	0x9b
	.byte	0x7
	.byte	0x4
	.4byte	.LASF12
	.byte	0x2
	.byte	0x46
	.byte	0x12
	.4byte	0x69
	.byte	0x5
	.4byte	0x9c
	.byte	0x8
	.4byte	.LASF14
	.byte	0x1
	.byte	0x59
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x1
	.byte	0x9c
	.4byte	0x119
	.byte	0x9
	.string	"fdt"
	.byte	0x1
	.byte	0x59
	.byte	0x20
	.4byte	0x95
	.4byte	.LLST9
	.byte	0xa
	.4byte	.LASF13
	.byte	0x1
	.byte	0x59
	.byte	0x29
	.4byte	0x25
	.4byte	.LLST10
	.byte	0xb
	.string	"val"
	.byte	0x1
	.byte	0x5b
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST11
	.byte	0xc
	.4byte	.LVL13
	.4byte	0x185
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xd
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0xd
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.byte	0x8
	.4byte	.LASF15
	.byte	0x1
	.byte	0x4f
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x1
	.byte	0x9c
	.4byte	0x185
	.byte	0x9
	.string	"fdt"
	.byte	0x1
	.byte	0x4f
	.byte	0x23
	.4byte	0x95
	.4byte	.LLST6
	.byte	0xa
	.4byte	.LASF13
	.byte	0x1
	.byte	0x4f
	.byte	0x2c
	.4byte	0x25
	.4byte	.LLST7
	.byte	0xb
	.string	"val"
	.byte	0x1
	.byte	0x51
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST8
	.byte	0xc
	.4byte	.LVL10
	.4byte	0x185
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xd
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0xd
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LASF20
	.byte	0x1
	.byte	0x3b
	.byte	0xc
	.4byte	0x25
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x1
	.byte	0x9c
	.4byte	0x240
	.byte	0x9
	.string	"fdt"
	.byte	0x1
	.byte	0x3b
	.byte	0x22
	.4byte	0x95
	.4byte	.LLST0
	.byte	0xa
	.4byte	.LASF13
	.byte	0x1
	.byte	0x3b
	.byte	0x2b
	.4byte	0x25
	.4byte	.LLST1
	.byte	0xa
	.4byte	.LASF16
	.byte	0x1
	.byte	0x3b
	.byte	0x43
	.4byte	0x8f
	.4byte	.LLST2
	.byte	0xb
	.string	"c"
	.byte	0x1
	.byte	0x3d
	.byte	0x14
	.4byte	0x240
	.4byte	.LLST3
	.byte	0xb
	.string	"val"
	.byte	0x1
	.byte	0x3e
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST4
	.byte	0xf
	.string	"len"
	.byte	0x1
	.byte	0x3f
	.byte	0x9
	.4byte	0x25
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x10
	.4byte	0x246
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0x48
	.byte	0xb
	.4byte	0x21a
	.byte	0x11
	.4byte	0x257
	.4byte	.LLST5
	.byte	0
	.byte	0xc
	.4byte	.LVL1
	.4byte	0x262
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xd
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0xd
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0xd
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xa8
	.byte	0x12
	.4byte	.LASF21
	.byte	0x2
	.byte	0x5b
	.byte	0x18
	.4byte	0x69
	.byte	0x3
	.4byte	0x262
	.byte	0x13
	.string	"x"
	.byte	0x2
	.byte	0x5b
	.byte	0x2d
	.4byte	0x9c
	.byte	0
	.byte	0x14
	.4byte	.LASF22
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x2f4
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0x26
	.byte	0
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
	.byte	0xb
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
	.byte	0xc
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
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
	.byte	0x10
	.byte	0x1d
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x58
	.byte	0xb
	.byte	0x59
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0x49
	.byte	0x13
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
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
	.byte	0
	.byte	0
	.byte	0x14
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
.LLST9:
	.4byte	.LVL12
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13-1
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL12
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL13-1
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10-1
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL10-1
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1-1
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1-1
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL1-1
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LFE40
	.2byte	0x3
	.byte	0x7e
	.byte	0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5f
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
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF4:
	.string	"long long int"
.LASF0:
	.string	"unsigned int"
.LASF8:
	.string	"uint32_t"
.LASF21:
	.string	"fdt32_to_cpu"
.LASF9:
	.string	"long unsigned int"
.LASF16:
	.string	"name"
.LASF10:
	.string	"long long unsigned int"
.LASF12:
	.string	"fdt32_t"
.LASF19:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/blfdt"
.LASF7:
	.string	"uint8_t"
.LASF5:
	.string	"unsigned char"
.LASF11:
	.string	"char"
.LASF17:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF3:
	.string	"long int"
.LASF18:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blfdt/src/fdt_addresses.c"
.LASF6:
	.string	"short unsigned int"
.LASF1:
	.string	"signed char"
.LASF15:
	.string	"fdt_address_cells"
.LASF14:
	.string	"fdt_size_cells"
.LASF2:
	.string	"short int"
.LASF22:
	.string	"fdt_getprop"
.LASF13:
	.string	"nodeoffset"
.LASF20:
	.string	"fdt_cells"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
