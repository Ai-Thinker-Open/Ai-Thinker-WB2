	.file	"fdt_strerror.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.fdt_strerror.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"<unknown error>"
	.align	2
.LC1:
	.string	"<no error>"
	.align	2
.LC2:
	.string	"<valid offset/length>"
	.section	.text.fdt_strerror,"ax",@progbits
	.align	1
	.globl	fdt_strerror
	.type	fdt_strerror, @function
fdt_strerror:
.LFB40:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blfdt/src/fdt_strerror.c"
	.loc 1 89 1
	.cfi_startproc
.LVL0:
	.loc 1 90 5
	.loc 1 90 8 is_stmt 0
	bgt	a0,zero,.L3
	.loc 1 92 10 is_stmt 1
	.loc 1 92 13 is_stmt 0
	beq	a0,zero,.L4
	.loc 1 94 10 is_stmt 1
	.loc 1 94 13 is_stmt 0
	li	a5,-18
	bleu	a0,a5,.L5
.LBB2:
	.loc 1 95 9 is_stmt 1
	.loc 1 95 21 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	slli	a0,a0,2
.LVL1:
	addi	a5,a5,%lo(.LANCHOR0)
	sub	a0,a5,a0
	lw	a0,0(a0)
.LVL2:
	.loc 1 97 9 is_stmt 1
	.loc 1 97 12 is_stmt 0
	bne	a0,zero,.L1
.LVL3:
.L5:
.LBE2:
	.loc 1 101 12
	lui	a0,%hi(.LC0)
	addi	a0,a0,%lo(.LC0)
.L1:
	.loc 1 102 1
	ret
.LVL4:
.L3:
	.loc 1 91 16
	lui	a0,%hi(.LC2)
.LVL5:
	addi	a0,a0,%lo(.LC2)
	ret
.LVL6:
.L4:
	.loc 1 93 16
	lui	a0,%hi(.LC1)
.LVL7:
	addi	a0,a0,%lo(.LC1)
	ret
	.cfi_endproc
.LFE40:
	.size	fdt_strerror, .-fdt_strerror
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC3:
	.string	"FDT_ERR_NOTFOUND"
	.align	2
.LC4:
	.string	"FDT_ERR_EXISTS"
	.align	2
.LC5:
	.string	"FDT_ERR_NOSPACE"
	.align	2
.LC6:
	.string	"FDT_ERR_BADOFFSET"
	.align	2
.LC7:
	.string	"FDT_ERR_BADPATH"
	.align	2
.LC8:
	.string	"FDT_ERR_BADPHANDLE"
	.align	2
.LC9:
	.string	"FDT_ERR_BADSTATE"
	.align	2
.LC10:
	.string	"FDT_ERR_TRUNCATED"
	.align	2
.LC11:
	.string	"FDT_ERR_BADMAGIC"
	.align	2
.LC12:
	.string	"FDT_ERR_BADVERSION"
	.align	2
.LC13:
	.string	"FDT_ERR_BADSTRUCTURE"
	.align	2
.LC14:
	.string	"FDT_ERR_BADLAYOUT"
	.align	2
.LC15:
	.string	"FDT_ERR_INTERNAL"
	.align	2
.LC16:
	.string	"FDT_ERR_BADNCELLS"
	.align	2
.LC17:
	.string	"FDT_ERR_BADVALUE"
	.align	2
.LC18:
	.string	"FDT_ERR_BADOVERLAY"
	.align	2
.LC19:
	.string	"FDT_ERR_NOPHANDLES"
	.section	.rodata.fdt_errtable,"a"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	fdt_errtable, @object
	.size	fdt_errtable, 72
fdt_errtable:
	.zero	4
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.word	.LC12
	.word	.LC13
	.word	.LC14
	.word	.LC15
	.word	.LC16
	.word	.LC17
	.word	.LC18
	.word	.LC19
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xf6
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF11
	.byte	0xc
	.4byte	.LASF12
	.4byte	.LASF13
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
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x4
	.4byte	0x6b
	.byte	0x5
	.byte	0x4
	.4byte	0x72
	.byte	0x6
	.4byte	.LASF14
	.byte	0x4
	.byte	0x1
	.byte	0x3a
	.byte	0x8
	.4byte	0x98
	.byte	0x7
	.string	"str"
	.byte	0x1
	.byte	0x3b
	.byte	0x11
	.4byte	0x77
	.byte	0
	.byte	0
	.byte	0x8
	.4byte	0x7d
	.4byte	0xa8
	.byte	0x9
	.4byte	0x2c
	.byte	0x11
	.byte	0
	.byte	0xa
	.4byte	.LASF10
	.byte	0x1
	.byte	0x41
	.byte	0x1d
	.4byte	0x98
	.byte	0x5
	.byte	0x3
	.4byte	fdt_errtable
	.byte	0xb
	.4byte	.LASF15
	.byte	0x1
	.byte	0x58
	.byte	0xd
	.4byte	0x77
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x1
	.byte	0x9c
	.byte	0xc
	.4byte	.LASF16
	.byte	0x1
	.byte	0x58
	.byte	0x1e
	.4byte	0x25
	.4byte	.LLST0
	.byte	0xd
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.byte	0xe
	.string	"s"
	.byte	0x1
	.byte	0x5f
	.byte	0x15
	.4byte	0x77
	.4byte	.LLST1
	.byte	0
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0xb
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
	.byte	0
	.byte	0
	.byte	0xc
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
	.byte	0xd
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3
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
.LASF14:
	.string	"fdt_errtabent"
.LASF16:
	.string	"errval"
.LASF7:
	.string	"long unsigned int"
.LASF8:
	.string	"long long unsigned int"
.LASF10:
	.string	"fdt_errtable"
.LASF13:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/blfdt"
.LASF15:
	.string	"fdt_strerror"
.LASF5:
	.string	"unsigned char"
.LASF3:
	.string	"long int"
.LASF12:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blfdt/src/fdt_strerror.c"
.LASF6:
	.string	"short unsigned int"
.LASF1:
	.string	"signed char"
.LASF2:
	.string	"short int"
.LASF11:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF9:
	.string	"char"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
