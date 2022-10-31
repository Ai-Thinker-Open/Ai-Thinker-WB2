	.file	"blog_testc1_diable.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.blog_testc1_entry,"ax",@progbits
	.align	1
	.globl	blog_testc1_entry
	.type	blog_testc1_entry, @function
blog_testc1_entry:
.LFB4:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog_testc/blog_testc1_diable.c"
	.loc 1 11 1
	.cfi_startproc
.LVL0:
	.loc 1 12 5
	.loc 1 11 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	.loc 1 12 5
	li	s0,4096
	addi	a0,s0,904
.LVL1:
	.loc 1 11 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 26 9
	addi	s0,s0,904
	.loc 1 12 5
	call	aos_msleep
.LVL2:
	.loc 1 14 5 is_stmt 1
	.loc 1 14 336
	.loc 1 14 347
	.loc 1 15 5
.L2:
	.loc 1 23 412 discriminator 13
	.loc 1 23 423 discriminator 13
	.loc 1 25 5 discriminator 13
	.loc 1 26 9 discriminator 13
	mv	a0,s0
	call	aos_msleep
.LVL3:
	.loc 1 27 9 discriminator 13
	.loc 1 27 340 discriminator 13
	.loc 1 27 351 discriminator 13
	.loc 1 28 9 discriminator 13
	j	.L2
	.cfi_endproc
.LFE4:
	.size	blog_testc1_entry, .-blog_testc1_entry
	.section	.rodata.blog_testc1_init.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"blog_testc1"
	.section	.text.blog_testc1_init,"ax",@progbits
	.align	1
	.globl	blog_testc1_init
	.type	blog_testc1_init, @function
blog_testc1_init:
.LFB5:
	.loc 1 41 1
	.cfi_startproc
	.loc 1 42 5
	li	a3,4096
	lui	a1,%hi(blog_testc1_entry)
	lui	a0,%hi(.LC0)
	.loc 1 41 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 42 5
	addi	a3,a3,-2048
	li	a2,0
	addi	a1,a1,%lo(blog_testc1_entry)
	addi	a0,a0,%lo(.LC0)
	.loc 1 41 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 42 5
	call	aos_task_new
.LVL4:
	.loc 1 44 5 is_stmt 1
	.loc 1 45 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	blog_testc1_init, .-blog_testc1_init
	.globl	_fsymp_info_blog_testc1
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"blog_testc.blog_testc1_diable.blog_testc1"
	.comm	_fsymp_level_blog_testc1,4,4
	.globl	_fsymf_info_blog_testcblog_testc1_diable
	.align	2
.LC2:
	.string	"blog_testc.blog_testc1_diable"
	.comm	_fsymf_level_blog_testcblog_testc1_diable,4,4
	.align	2
.LC3:
	.string	"blog_testc"
	.weak	_fsymc_level_blog_testc
	.section	.sbss._fsymc_level_blog_testc,"aw",@nobits
	.align	2
	.type	_fsymc_level_blog_testc, @object
	.size	_fsymc_level_blog_testc, 4
_fsymc_level_blog_testc:
	.zero	4
	.section	.srodata.BLOG_HARD_DECLARE_DISABLE,"a"
	.align	2
	.type	BLOG_HARD_DECLARE_DISABLE, @object
	.size	BLOG_HARD_DECLARE_DISABLE, 4
BLOG_HARD_DECLARE_DISABLE:
	.zero	4
	.section	.static_blogcomponent_code.blog_testc,"a"
	.align	2
	.type	_fsymc_info_blog_testc, @object
	.size	_fsymc_info_blog_testc, 8
_fsymc_info_blog_testc:
	.word	_fsymc_level_blog_testc
	.word	.LC3
	.section	.static_blogfile_code.blog_testcblog_testc1_diable,"a"
	.align	2
	.type	_fsymf_info_blog_testcblog_testc1_diable, @object
	.size	_fsymf_info_blog_testcblog_testc1_diable, 8
_fsymf_info_blog_testcblog_testc1_diable:
	.word	_fsymf_level_blog_testcblog_testc1_diable
	.word	.LC2
	.section	.static_blogpri_code.blog_testc1,"a"
	.align	2
	.type	_fsymp_info_blog_testc1, @object
	.size	_fsymp_info_blog_testc1, 8
_fsymp_info_blog_testc1:
	.word	_fsymp_level_blog_testc1
	.word	.LC1
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog_type.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/aos/kernel.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x241
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF32
	.byte	0xc
	.4byte	.LASF33
	.4byte	.LASF34
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
	.byte	0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x54
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
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x5
	.byte	0x4
	.byte	0x6
	.byte	0x4
	.4byte	0x7f
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x48
	.byte	0x7
	.4byte	0x86
	.byte	0x8
	.4byte	.LASF35
	.byte	0x7
	.byte	0x4
	.4byte	0x70
	.byte	0x4
	.byte	0x22
	.byte	0xe
	.4byte	0xd4
	.byte	0x9
	.4byte	.LASF12
	.byte	0
	.byte	0x9
	.4byte	.LASF13
	.byte	0x1
	.byte	0x9
	.4byte	.LASF14
	.byte	0x2
	.byte	0x9
	.4byte	.LASF15
	.byte	0x3
	.byte	0x9
	.4byte	.LASF16
	.byte	0x4
	.byte	0x9
	.4byte	.LASF17
	.byte	0x5
	.byte	0x9
	.4byte	.LASF18
	.byte	0x6
	.byte	0
	.byte	0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x2a
	.byte	0x3
	.4byte	0x97
	.byte	0xa
	.4byte	.LASF36
	.byte	0x8
	.byte	0x4
	.byte	0x2c
	.byte	0x10
	.4byte	0x108
	.byte	0xb
	.4byte	.LASF20
	.byte	0x4
	.byte	0x2d
	.byte	0x13
	.4byte	0x108
	.byte	0
	.byte	0xb
	.4byte	.LASF21
	.byte	0x4
	.byte	0x2e
	.byte	0xb
	.4byte	0x79
	.byte	0x4
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xd4
	.byte	0x3
	.4byte	.LASF22
	.byte	0x4
	.byte	0x2f
	.byte	0x3
	.4byte	0xe0
	.byte	0x7
	.4byte	0x10e
	.byte	0xc
	.4byte	.LASF23
	.byte	0x5
	.byte	0x38
	.byte	0x1b
	.4byte	0x92
	.byte	0x5
	.byte	0x3
	.4byte	BLOG_HARD_DECLARE_DISABLE
	.byte	0xd
	.4byte	.LASF25
	.byte	0x5
	.byte	0x45
	.byte	0x12
	.4byte	0xd4
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_level_blog_testc
	.byte	0xc
	.4byte	.LASF24
	.byte	0x5
	.byte	0x46
	.byte	0x1e
	.4byte	0x11a
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_info_blog_testc
	.byte	0xd
	.4byte	.LASF26
	.byte	0x5
	.byte	0x53
	.byte	0x12
	.4byte	0xd4
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_level_blog_testcblog_testc1_diable
	.byte	0xd
	.4byte	.LASF27
	.byte	0x5
	.byte	0x54
	.byte	0x17
	.4byte	0x11a
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_info_blog_testcblog_testc1_diable
	.byte	0xd
	.4byte	.LASF28
	.byte	0x1
	.byte	0x8
	.byte	0xe
	.4byte	0xd4
	.byte	0x5
	.byte	0x3
	.4byte	_fsymp_level_blog_testc1
	.byte	0xd
	.4byte	.LASF29
	.byte	0x1
	.byte	0x8
	.byte	0x3a
	.4byte	0x11a
	.byte	0x5
	.byte	0x3
	.4byte	_fsymp_info_blog_testc1
	.byte	0xe
	.4byte	.LASF37
	.byte	0x1
	.byte	0x28
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x1e0
	.byte	0xf
	.4byte	.LVL4
	.4byte	0x22b
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	blog_testc1_entry
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xa
	.2byte	0x800
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LASF38
	.byte	0x1
	.byte	0xa
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x22b
	.byte	0x12
	.string	"arg"
	.byte	0x1
	.byte	0xa
	.byte	0x1e
	.4byte	0x77
	.4byte	.LLST0
	.byte	0x13
	.4byte	.LVL2
	.4byte	0x237
	.4byte	0x21a
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LVL3
	.4byte	0x237
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LASF30
	.4byte	.LASF30
	.byte	0x6
	.byte	0x47
	.byte	0x9
	.byte	0x15
	.4byte	.LASF31
	.4byte	.LASF31
	.byte	0x6
	.2byte	0x207
	.byte	0xa
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
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
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
	.byte	0x9
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xa
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
	.byte	0x3f
	.byte	0x19
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
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
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
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
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
.LASF6:
	.string	"long long int"
.LASF19:
	.string	"blog_level_t"
.LASF37:
	.string	"blog_testc1_init"
.LASF24:
	.string	"_fsymc_info_blog_testc"
.LASF17:
	.string	"BLOG_LEVEL_ASSERT"
.LASF20:
	.string	"level"
.LASF22:
	.string	"blog_info_t"
.LASF34:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/blog_testc"
.LASF29:
	.string	"_fsymp_info_blog_testc1"
.LASF25:
	.string	"_fsymc_level_blog_testc"
.LASF27:
	.string	"_fsymf_info_blog_testcblog_testc1_diable"
.LASF1:
	.string	"unsigned char"
.LASF35:
	.string	"_blog_leve"
.LASF5:
	.string	"long unsigned int"
.LASF33:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog_testc/blog_testc1_diable.c"
.LASF3:
	.string	"short unsigned int"
.LASF30:
	.string	"aos_task_new"
.LASF16:
	.string	"BLOG_LEVEL_ERROR"
.LASF15:
	.string	"BLOG_LEVEL_WARN"
.LASF36:
	.string	"_blog_info"
.LASF10:
	.string	"__uint32_t"
.LASF28:
	.string	"_fsymp_level_blog_testc1"
.LASF8:
	.string	"unsigned int"
.LASF12:
	.string	"BLOG_LEVEL_ALL"
.LASF7:
	.string	"long long unsigned int"
.LASF23:
	.string	"BLOG_HARD_DECLARE_DISABLE"
.LASF14:
	.string	"BLOG_LEVEL_INFO"
.LASF26:
	.string	"_fsymf_level_blog_testcblog_testc1_diable"
.LASF38:
	.string	"blog_testc1_entry"
.LASF32:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF9:
	.string	"char"
.LASF2:
	.string	"short int"
.LASF11:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF13:
	.string	"BLOG_LEVEL_DEBUG"
.LASF21:
	.string	"name"
.LASF18:
	.string	"BLOG_LEVEL_NEVER"
.LASF31:
	.string	"aos_msleep"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
