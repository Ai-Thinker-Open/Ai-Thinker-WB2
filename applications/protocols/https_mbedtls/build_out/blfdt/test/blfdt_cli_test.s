	.file	"blfdt_cli_test.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.blfdt,"ax",@progbits
	.align	1
	.globl	blfdt
	.type	blfdt, @function
blfdt:
.LFB4:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blfdt/test/blfdt_cli_test.c"
	.loc 1 16 1
	.cfi_startproc
.LVL0:
	.loc 1 17 5
	.loc 1 18 5
	.loc 1 20 5
	.loc 1 16 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 20 5
	call	tc_fdt_wifi
.LVL1:
	.loc 1 21 5 is_stmt 1
	.loc 1 22 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 21 5
	tail	tc_blfdtdump
.LVL2:
	.cfi_endproc
.LFE4:
	.size	blfdt, .-blfdt
	.section	.text.blfdt_cli_init,"ax",@progbits
	.align	1
	.globl	blfdt_cli_init
	.type	blfdt_cli_init, @function
blfdt_cli_init:
.LFB5:
	.loc 1 30 1 is_stmt 1
	.cfi_startproc
	.loc 1 35 5
	.loc 1 36 1 is_stmt 0
	li	a0,0
	ret
	.cfi_endproc
.LFE5:
	.size	blfdt_cli_init, .-blfdt_cli_init
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"blfdt"
	.section	.static_cli_cmds,"a"
	.align	2
	.type	cmds_user, @object
	.size	cmds_user, 12
cmds_user:
	.word	.LC0
	.word	.LC0
	.word	blfdt
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/cli/cli/include/cli.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1b6
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
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.byte	0x2
	.byte	0x8
	.byte	0x5
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
	.4byte	0x71
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x5
	.4byte	0x71
	.byte	0x4
	.byte	0x4
	.4byte	0x78
	.byte	0x6
	.4byte	.LASF20
	.byte	0xc
	.byte	0x2
	.byte	0x32
	.byte	0x8
	.4byte	0xb8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x2
	.byte	0x33
	.byte	0x11
	.4byte	0x7d
	.byte	0
	.byte	0x7
	.4byte	.LASF11
	.byte	0x2
	.byte	0x34
	.byte	0x11
	.4byte	0x7d
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.byte	0x2
	.byte	0x36
	.byte	0xc
	.4byte	0xdd
	.byte	0x8
	.byte	0
	.byte	0x5
	.4byte	0x83
	.byte	0x8
	.4byte	0xd7
	.byte	0x9
	.4byte	0x6b
	.byte	0x9
	.4byte	0x5d
	.byte	0x9
	.4byte	0x5d
	.byte	0x9
	.4byte	0xd7
	.byte	0
	.byte	0x4
	.byte	0x4
	.4byte	0x6b
	.byte	0x4
	.byte	0x4
	.4byte	0xbd
	.byte	0xa
	.4byte	0xb8
	.4byte	0xf3
	.byte	0xb
	.4byte	0x64
	.byte	0
	.byte	0
	.byte	0x5
	.4byte	0xe3
	.byte	0xc
	.4byte	.LASF21
	.byte	0x1
	.byte	0x19
	.byte	0x21
	.4byte	0xf3
	.byte	0x5
	.byte	0x3
	.4byte	cmds_user
	.byte	0xd
	.4byte	.LASF22
	.byte	0x1
	.byte	0x1d
	.byte	0x5
	.4byte	0x5d
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.byte	0xe
	.4byte	.LASF23
	.byte	0x1
	.byte	0xf
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x1a1
	.byte	0xf
	.string	"buf"
	.byte	0x1
	.byte	0xf
	.byte	0x12
	.4byte	0x6b
	.4byte	.LLST0
	.byte	0xf
	.string	"len"
	.byte	0x1
	.byte	0xf
	.byte	0x1b
	.4byte	0x5d
	.4byte	.LLST1
	.byte	0x10
	.4byte	.LASF13
	.byte	0x1
	.byte	0xf
	.byte	0x24
	.4byte	0x5d
	.4byte	.LLST2
	.byte	0x10
	.4byte	.LASF14
	.byte	0x1
	.byte	0xf
	.byte	0x31
	.4byte	0xd7
	.4byte	.LLST3
	.byte	0x11
	.4byte	.LASF15
	.byte	0x1
	.byte	0x11
	.byte	0x9
	.4byte	0x5d
	.byte	0x11
	.4byte	.LASF16
	.byte	0x1
	.byte	0x12
	.byte	0x9
	.4byte	0x5d
	.byte	0x12
	.4byte	.LVL1
	.4byte	0x1a1
	.byte	0x13
	.4byte	.LVL2
	.4byte	0x1ad
	.byte	0
	.byte	0x14
	.4byte	.LASF15
	.4byte	.LASF15
	.byte	0x1
	.byte	0x11
	.byte	0x9
	.byte	0x14
	.4byte	.LASF16
	.4byte	.LASF16
	.byte	0x1
	.byte	0x12
	.byte	0x9
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
	.byte	0x26
	.byte	0
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
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x2e
	.byte	0
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
	.byte	0x10
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
	.byte	0x11
	.byte	0x2e
	.byte	0
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
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
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
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1-1
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
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1-1
	.4byte	.LFE4
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
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL1-1
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF22:
	.string	"blfdt_cli_init"
.LASF3:
	.string	"short unsigned int"
.LASF8:
	.string	"unsigned int"
.LASF18:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blfdt/test/blfdt_cli_test.c"
.LASF21:
	.string	"cmds_user"
.LASF5:
	.string	"long unsigned int"
.LASF15:
	.string	"tc_fdt_wifi"
.LASF7:
	.string	"long long unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF11:
	.string	"help"
.LASF9:
	.string	"char"
.LASF4:
	.string	"long int"
.LASF16:
	.string	"tc_blfdtdump"
.LASF6:
	.string	"long long int"
.LASF13:
	.string	"argc"
.LASF19:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/blfdt"
.LASF10:
	.string	"name"
.LASF20:
	.string	"cli_command"
.LASF23:
	.string	"blfdt"
.LASF2:
	.string	"short int"
.LASF12:
	.string	"function"
.LASF17:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF0:
	.string	"signed char"
.LASF14:
	.string	"argv"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
