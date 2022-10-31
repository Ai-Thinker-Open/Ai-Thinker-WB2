	.file	"blog_testc.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.blog_testc_init,"ax",@progbits
	.align	1
	.globl	blog_testc_init
	.type	blog_testc_init, @function
blog_testc_init:
.LFB0:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog_testc/blog_testc.c"
	.loc 1 4 1
	.cfi_startproc
	.loc 1 5 5
	.loc 1 4 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 5 5
	call	blog_testc1_init
.LVL0:
	.loc 1 6 5 is_stmt 1
	call	blog_testc2_init
.LVL1:
	.loc 1 7 5
	call	blog_testc3_init
.LVL2:
	.loc 1 8 5
	call	blog_testc4_init
.LVL3:
	.loc 1 10 5
	.loc 1 11 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	blog_testc_init, .-blog_testc_init
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog_testc/blog_testc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x98
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF4
	.byte	0xc
	.4byte	.LASF5
	.4byte	.LASF6
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.4byte	.LASF7
	.byte	0x1
	.byte	0x3
	.byte	0x5
	.4byte	0x64
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.4byte	0x64
	.byte	0x3
	.4byte	.LVL0
	.4byte	0x6b
	.byte	0x3
	.4byte	.LVL1
	.4byte	0x77
	.byte	0x3
	.4byte	.LVL2
	.4byte	0x83
	.byte	0x3
	.4byte	.LVL3
	.4byte	0x8f
	.byte	0
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x5
	.4byte	.LASF0
	.4byte	.LASF0
	.byte	0x2
	.byte	0x6
	.byte	0x5
	.byte	0x5
	.4byte	.LASF1
	.4byte	.LASF1
	.byte	0x2
	.byte	0x7
	.byte	0x5
	.byte	0x5
	.4byte	.LASF2
	.4byte	.LASF2
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.byte	0x5
	.4byte	.LASF3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x9
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
	.byte	0x3
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
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
.LASF6:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/blog_testc"
.LASF2:
	.string	"blog_testc3_init"
.LASF3:
	.string	"blog_testc4_init"
.LASF1:
	.string	"blog_testc2_init"
.LASF0:
	.string	"blog_testc1_init"
.LASF5:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog_testc/blog_testc.c"
.LASF7:
	.string	"blog_testc_init"
.LASF4:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
