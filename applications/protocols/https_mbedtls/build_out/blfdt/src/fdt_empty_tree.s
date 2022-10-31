	.file	"fdt_empty_tree.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.fdt_create_empty_tree.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	""
	.section	.text.fdt_create_empty_tree,"ax",@progbits
	.align	1
	.globl	fdt_create_empty_tree
	.type	fdt_create_empty_tree, @function
fdt_create_empty_tree:
.LFB40:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blfdt/src/fdt_empty_tree.c"
	.loc 1 59 1
	.cfi_startproc
.LVL0:
	.loc 1 60 5
	.loc 1 62 5
	.loc 1 59 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.loc 1 59 1
	mv	s0,a0
	mv	s1,a1
	.loc 1 62 11
	call	fdt_create
.LVL1:
	.loc 1 63 5 is_stmt 1
	.loc 1 63 8 is_stmt 0
	bne	a0,zero,.L1
	.loc 1 66 5 is_stmt 1
	.loc 1 66 11 is_stmt 0
	mv	a0,s0
.LVL2:
	call	fdt_finish_reservemap
.LVL3:
	.loc 1 67 5 is_stmt 1
	.loc 1 67 8 is_stmt 0
	bne	a0,zero,.L1
	.loc 1 70 5 is_stmt 1
	.loc 1 70 11 is_stmt 0
	lui	a1,%hi(.LC0)
	addi	a1,a1,%lo(.LC0)
	mv	a0,s0
.LVL4:
	call	fdt_begin_node
.LVL5:
	.loc 1 71 5 is_stmt 1
	.loc 1 71 8 is_stmt 0
	bne	a0,zero,.L1
	.loc 1 74 5 is_stmt 1
	.loc 1 74 11 is_stmt 0
	mv	a0,s0
.LVL6:
	call	fdt_end_node
.LVL7:
	.loc 1 75 5 is_stmt 1
	.loc 1 75 8 is_stmt 0
	bne	a0,zero,.L1
	.loc 1 78 5 is_stmt 1
	.loc 1 78 11 is_stmt 0
	mv	a0,s0
.LVL8:
	call	fdt_finish
.LVL9:
	.loc 1 79 5 is_stmt 1
	.loc 1 79 8 is_stmt 0
	bne	a0,zero,.L1
	.loc 1 82 5 is_stmt 1
	.loc 1 82 12 is_stmt 0
	mv	a1,s0
	mv	a0,s0
.LVL10:
	.loc 1 83 1
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL11:
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 82 12
	mv	a2,s1
	.loc 1 83 1
	lw	s1,4(sp)
	.cfi_restore 9
.LVL12:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 82 12
	tail	fdt_open_into
.LVL13:
.L1:
	.cfi_restore_state
	.loc 1 83 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL14:
	lw	s1,4(sp)
	.cfi_restore 9
.LVL15:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE40:
	.size	fdt_create_empty_tree, .-fdt_create_empty_tree
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blfdt/inc/libfdt.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x19c
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
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x5
	.4byte	.LASF20
	.byte	0x1
	.byte	0x3a
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x1
	.byte	0x9c
	.4byte	0x151
	.byte	0x6
	.string	"buf"
	.byte	0x1
	.byte	0x3a
	.byte	0x21
	.4byte	0x6b
	.4byte	.LLST0
	.byte	0x7
	.4byte	.LASF10
	.byte	0x1
	.byte	0x3a
	.byte	0x2a
	.4byte	0x25
	.4byte	.LLST1
	.byte	0x8
	.string	"err"
	.byte	0x1
	.byte	0x3c
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST2
	.byte	0x9
	.4byte	.LVL1
	.4byte	0x151
	.4byte	0xd8
	.byte	0xa
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xa
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x9
	.4byte	.LVL3
	.4byte	0x15e
	.4byte	0xec
	.byte	0xa
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x9
	.4byte	.LVL5
	.4byte	0x16b
	.4byte	0x109
	.byte	0xa
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xa
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x9
	.4byte	.LVL7
	.4byte	0x178
	.4byte	0x11d
	.byte	0xa
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x9
	.4byte	.LVL9
	.4byte	0x185
	.4byte	0x131
	.byte	0xa
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0xb
	.4byte	.LVL13
	.4byte	0x192
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
	.byte	0x5a
	.byte	0xa
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	.LASF11
	.4byte	.LASF11
	.byte	0x2
	.2byte	0x553
	.byte	0x5
	.byte	0xc
	.4byte	.LASF12
	.4byte	.LASF12
	.byte	0x2
	.2byte	0x556
	.byte	0x5
	.byte	0xc
	.4byte	.LASF13
	.4byte	.LASF13
	.byte	0x2
	.2byte	0x557
	.byte	0x5
	.byte	0xc
	.4byte	.LASF14
	.4byte	.LASF14
	.byte	0x2
	.2byte	0x57c
	.byte	0x5
	.byte	0xc
	.4byte	.LASF15
	.4byte	.LASF15
	.byte	0x2
	.2byte	0x57d
	.byte	0x5
	.byte	0xc
	.4byte	.LASF16
	.4byte	.LASF16
	.byte	0x2
	.2byte	0x584
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
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
	.byte	0x7
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
	.byte	0x17
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
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
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
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1-1
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL11
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13-1
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL14
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
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL12
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL13-1
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL15
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LFE40
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF4:
	.string	"long long int"
.LASF0:
	.string	"unsigned int"
.LASF5:
	.string	"unsigned char"
.LASF19:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/blfdt"
.LASF11:
	.string	"fdt_create"
.LASF7:
	.string	"long unsigned int"
.LASF8:
	.string	"long long unsigned int"
.LASF13:
	.string	"fdt_begin_node"
.LASF20:
	.string	"fdt_create_empty_tree"
.LASF15:
	.string	"fdt_finish"
.LASF12:
	.string	"fdt_finish_reservemap"
.LASF14:
	.string	"fdt_end_node"
.LASF9:
	.string	"char"
.LASF16:
	.string	"fdt_open_into"
.LASF3:
	.string	"long int"
.LASF6:
	.string	"short unsigned int"
.LASF1:
	.string	"signed char"
.LASF10:
	.string	"bufsize"
.LASF2:
	.string	"short int"
.LASF18:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blfdt/src/fdt_empty_tree.c"
.LASF17:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
