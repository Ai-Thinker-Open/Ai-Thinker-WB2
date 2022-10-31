	.file	"hal_pds.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.hal_pds_init,"ax",@progbits
	.align	1
	.globl	hal_pds_init
	.type	hal_pds_init, @function
hal_pds_init:
.LFB30:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/hal_pds.c"
	.loc 1 10 1
	.cfi_startproc
	.loc 1 11 5
	tail	bl_pds_init
.LVL0:
	.cfi_endproc
.LFE30:
	.size	hal_pds_init, .-hal_pds_init
	.section	.text.hal_pds_fastboot_cfg,"ax",@progbits
	.align	1
	.globl	hal_pds_fastboot_cfg
	.type	hal_pds_fastboot_cfg, @function
hal_pds_fastboot_cfg:
.LFB31:
	.loc 1 20 1
	.cfi_startproc
.LVL1:
	.loc 1 21 5
	tail	bl_pds_fastboot_cfg
.LVL2:
	.cfi_endproc
.LFE31:
	.size	hal_pds_fastboot_cfg, .-hal_pds_fastboot_cfg
	.section	.text.hal_pds_enter_without_time_compensation,"ax",@progbits
	.align	1
	.globl	hal_pds_enter_without_time_compensation
	.type	hal_pds_enter_without_time_compensation, @function
hal_pds_enter_without_time_compensation:
.LFB32:
	.loc 1 25 1
	.cfi_startproc
.LVL3:
	.loc 1 26 5
	tail	bl_pds_enter
.LVL4:
	.cfi_endproc
.LFE32:
	.size	hal_pds_enter_without_time_compensation, .-hal_pds_enter_without_time_compensation
	.section	.text.hal_pds_enter_with_time_compensation,"ax",@progbits
	.align	1
	.globl	hal_pds_enter_with_time_compensation
	.type	hal_pds_enter_with_time_compensation, @function
hal_pds_enter_with_time_compensation:
.LFB33:
	.loc 1 30 1
	.cfi_startproc
.LVL5:
	.loc 1 31 5
	.loc 1 32 5
	.loc 1 33 5
	.loc 1 34 5
	.loc 1 36 5
	.loc 1 30 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	sw	s1,36(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a0
	mv	s1,a1
	.loc 1 36 5
	addi	a0,sp,16
.LVL6:
	addi	a1,sp,20
.LVL7:
	.loc 1 30 1
	sw	ra,44(sp)
	.cfi_offset 1, -4
	.loc 1 36 5
	call	HBN_Get_RTC_Timer_Val
.LVL8:
	.loc 1 38 5 is_stmt 1
	mv	a1,s1
	mv	a0,s0
	call	bl_pds_enter
.LVL9:
	.loc 1 40 5
	addi	a1,sp,28
	addi	a0,sp,24
	call	HBN_Get_RTC_Timer_Val
.LVL10:
	.loc 1 42 5
	.loc 1 44 5
	.loc 1 44 37 is_stmt 0
	lw	a0,16(sp)
	lw	a5,24(sp)
	sub	a5,a5,a0
.LVL11:
	.loc 1 46 5 is_stmt 1
	.loc 1 46 99 is_stmt 0
	srli	a4,a5,11
	.loc 1 46 62
	srli	a0,a5,5
	.loc 1 46 137
	srli	a5,a5,12
.LVL12:
	.loc 1 46 28
	add	a5,a4,a5
	sub	a0,a0,a5
.LVL13:
	.loc 1 48 5 is_stmt 1
	sw	a0,12(sp)
	call	vTaskStepTick
.LVL14:
	.loc 1 50 5
	.loc 1 51 1 is_stmt 0
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
.LVL15:
	lw	a0,12(sp)
	lw	s1,36(sp)
	.cfi_restore 9
.LVL16:
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
.LVL17:
	jr	ra
	.cfi_endproc
.LFE33:
	.size	hal_pds_enter_with_time_compensation, .-hal_pds_enter_with_time_compensation
	.globl	_fsymf_info_hosalhal_pds
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"hosal.hal_pds"
	.comm	_fsymf_level_hosalhal_pds,4,4
	.align	2
.LC1:
	.string	"hosal"
	.weak	_fsymc_level_hosal
	.section	.sbss._fsymc_level_hosal,"aw",@nobits
	.align	2
	.type	_fsymc_level_hosal, @object
	.size	_fsymc_level_hosal, 4
_fsymc_level_hosal:
	.zero	4
	.section	.srodata.BLOG_HARD_DECLARE_DISABLE,"a"
	.align	2
	.type	BLOG_HARD_DECLARE_DISABLE, @object
	.size	BLOG_HARD_DECLARE_DISABLE, 4
BLOG_HARD_DECLARE_DISABLE:
	.zero	4
	.section	.static_blogcomponent_code.hosal,"a"
	.align	2
	.type	_fsymc_info_hosal, @object
	.size	_fsymc_info_hosal, 8
_fsymc_info_hosal:
	.word	_fsymc_level_hosal
	.word	.LC1
	.section	.static_blogfile_code.hosalhal_pds,"a"
	.align	2
	.type	_fsymf_info_hosalhal_pds, @object
	.size	_fsymf_info_hosalhal_pds, 8
_fsymf_info_hosalhal_pds:
	.word	_fsymf_level_hosalhal_pds
	.word	.LC0
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog_type.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_hbn.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_pds.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x343
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
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.byte	0x3
	.4byte	.LASF17
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x60
	.byte	0x4
	.4byte	0x4f
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x6
	.byte	0x4
	.4byte	0x82
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x7
	.4byte	.LASF47
	.byte	0x7
	.byte	0x4
	.4byte	0x75
	.byte	0x3
	.byte	0x22
	.byte	0xe
	.4byte	0xc6
	.byte	0x8
	.4byte	.LASF10
	.byte	0
	.byte	0x8
	.4byte	.LASF11
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0x2
	.byte	0x8
	.4byte	.LASF13
	.byte	0x3
	.byte	0x8
	.4byte	.LASF14
	.byte	0x4
	.byte	0x8
	.4byte	.LASF15
	.byte	0x5
	.byte	0x8
	.4byte	.LASF16
	.byte	0x6
	.byte	0
	.byte	0x3
	.4byte	.LASF18
	.byte	0x3
	.byte	0x2a
	.byte	0x3
	.4byte	0x89
	.byte	0x9
	.4byte	.LASF48
	.byte	0x8
	.byte	0x3
	.byte	0x2c
	.byte	0x10
	.4byte	0xfa
	.byte	0xa
	.4byte	.LASF19
	.byte	0x3
	.byte	0x2d
	.byte	0x13
	.4byte	0xfa
	.byte	0
	.byte	0xa
	.4byte	.LASF20
	.byte	0x3
	.byte	0x2e
	.byte	0xb
	.4byte	0x7c
	.byte	0x4
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xc6
	.byte	0x3
	.4byte	.LASF21
	.byte	0x3
	.byte	0x2f
	.byte	0x3
	.4byte	0xd2
	.byte	0x4
	.4byte	0x100
	.byte	0xb
	.4byte	.LASF22
	.byte	0x4
	.byte	0x38
	.byte	0x1b
	.4byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	BLOG_HARD_DECLARE_DISABLE
	.byte	0xc
	.4byte	.LASF24
	.byte	0x4
	.byte	0x45
	.byte	0x12
	.4byte	0xc6
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_level_hosal
	.byte	0xb
	.4byte	.LASF23
	.byte	0x4
	.byte	0x46
	.byte	0x1e
	.4byte	0x10c
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_info_hosal
	.byte	0xc
	.4byte	.LASF25
	.byte	0x4
	.byte	0x53
	.byte	0x12
	.4byte	0xc6
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_level_hosalhal_pds
	.byte	0xc
	.4byte	.LASF26
	.byte	0x4
	.byte	0x54
	.byte	0x17
	.4byte	0x10c
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_info_hosalhal_pds
	.byte	0xd
	.4byte	.LASF49
	.byte	0x1
	.byte	0x1d
	.byte	0xa
	.4byte	0x4f
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x1
	.byte	0x9c
	.4byte	0x261
	.byte	0xe
	.4byte	.LASF27
	.byte	0x1
	.byte	0x1d
	.byte	0x38
	.4byte	0x4f
	.4byte	.LLST3
	.byte	0xe
	.4byte	.LASF28
	.byte	0x1
	.byte	0x1d
	.byte	0x4b
	.4byte	0x4f
	.4byte	.LLST4
	.byte	0xb
	.4byte	.LASF29
	.byte	0x1
	.byte	0x1f
	.byte	0xe
	.4byte	0x4f
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0xb
	.4byte	.LASF30
	.byte	0x1
	.byte	0x1f
	.byte	0x21
	.4byte	0x4f
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0xb
	.4byte	.LASF31
	.byte	0x1
	.byte	0x20
	.byte	0xe
	.4byte	0x4f
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0xb
	.4byte	.LASF32
	.byte	0x1
	.byte	0x20
	.byte	0x20
	.4byte	0x4f
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0xf
	.4byte	.LASF33
	.byte	0x1
	.byte	0x21
	.byte	0xe
	.4byte	0x4f
	.4byte	.LLST5
	.byte	0xf
	.4byte	.LASF34
	.byte	0x1
	.byte	0x22
	.byte	0xe
	.4byte	0x4f
	.4byte	.LLST6
	.byte	0x10
	.4byte	.LVL8
	.4byte	0x308
	.4byte	0x21b
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0
	.byte	0x10
	.4byte	.LVL9
	.4byte	0x315
	.4byte	0x235
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LVL10
	.4byte	0x308
	.4byte	0x24f
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x12
	.4byte	.LVL14
	.4byte	0x321
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x5c
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LASF35
	.byte	0x1
	.byte	0x18
	.byte	0x6
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x1
	.byte	0x9c
	.4byte	0x2b0
	.byte	0xe
	.4byte	.LASF27
	.byte	0x1
	.byte	0x18
	.byte	0x37
	.4byte	0x4f
	.4byte	.LLST1
	.byte	0xe
	.4byte	.LASF28
	.byte	0x1
	.byte	0x18
	.byte	0x4a
	.4byte	0x4f
	.4byte	.LLST2
	.byte	0x14
	.4byte	.LVL4
	.4byte	0x315
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LASF36
	.byte	0x1
	.byte	0x13
	.byte	0x6
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x1
	.byte	0x9c
	.4byte	0x2e8
	.byte	0xe
	.4byte	.LASF37
	.byte	0x1
	.byte	0x13
	.byte	0x24
	.4byte	0x4f
	.4byte	.LLST0
	.byte	0x14
	.4byte	.LVL2
	.4byte	0x32e
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LASF38
	.byte	0x1
	.byte	0x9
	.byte	0x6
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x1
	.byte	0x9c
	.4byte	0x308
	.byte	0x15
	.4byte	.LVL0
	.4byte	0x33a
	.byte	0
	.byte	0x16
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x5
	.2byte	0x1c6
	.byte	0xd
	.byte	0x17
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x6
	.byte	0x8
	.byte	0x6
	.byte	0x16
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x7
	.2byte	0x953
	.byte	0x6
	.byte	0x17
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x6
	.byte	0x7
	.byte	0x6
	.byte	0x17
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x6
	.byte	0x6
	.byte	0x6
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x5
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
	.byte	0x8
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
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
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xd
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
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x11
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
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
	.byte	0x14
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
	.byte	0x15
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
	.byte	0x5
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL15
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL7
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL16
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL12
	.4byte	.LVL14-1
	.2byte	0x8
	.byte	0x91
	.byte	0x68
	.byte	0x6
	.byte	0x91
	.byte	0x60
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL13
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14-1
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x91
	.byte	0x5c
	.4byte	.LVL17
	.4byte	.LFE33
	.2byte	0x2
	.byte	0x72
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4-1
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL4-1
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL1
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2-1
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
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
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF3:
	.string	"long long int"
.LASF18:
	.string	"blog_level_t"
.LASF24:
	.string	"_fsymc_level_hosal"
.LASF5:
	.string	"short unsigned int"
.LASF38:
	.string	"hal_pds_init"
.LASF35:
	.string	"hal_pds_enter_without_time_compensation"
.LASF8:
	.string	"unsigned int"
.LASF31:
	.string	"rtcLowAfterSleep"
.LASF21:
	.string	"blog_info_t"
.LASF45:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/hal_pds.c"
.LASF40:
	.string	"bl_pds_enter"
.LASF23:
	.string	"_fsymc_info_hosal"
.LASF4:
	.string	"unsigned char"
.LASF47:
	.string	"_blog_leve"
.LASF6:
	.string	"long unsigned int"
.LASF37:
	.string	"addr"
.LASF17:
	.string	"uint32_t"
.LASF29:
	.string	"rtcLowBeforeSleep"
.LASF41:
	.string	"vTaskStepTick"
.LASF44:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF36:
	.string	"hal_pds_fastboot_cfg"
.LASF13:
	.string	"BLOG_LEVEL_WARN"
.LASF48:
	.string	"_blog_info"
.LASF32:
	.string	"rtcHighAfterSleep"
.LASF27:
	.string	"pdsLevel"
.LASF30:
	.string	"rtcHighBeforeSleep"
.LASF46:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/hosal"
.LASF10:
	.string	"BLOG_LEVEL_ALL"
.LASF9:
	.string	"char"
.LASF14:
	.string	"BLOG_LEVEL_ERROR"
.LASF22:
	.string	"BLOG_HARD_DECLARE_DISABLE"
.LASF12:
	.string	"BLOG_LEVEL_INFO"
.LASF42:
	.string	"bl_pds_fastboot_cfg"
.LASF49:
	.string	"hal_pds_enter_with_time_compensation"
.LASF25:
	.string	"_fsymf_level_hosalhal_pds"
.LASF19:
	.string	"level"
.LASF39:
	.string	"HBN_Get_RTC_Timer_Val"
.LASF20:
	.string	"name"
.LASF43:
	.string	"bl_pds_init"
.LASF28:
	.string	"pdsSleepCycles"
.LASF15:
	.string	"BLOG_LEVEL_ASSERT"
.LASF1:
	.string	"short int"
.LASF26:
	.string	"_fsymf_info_hosalhal_pds"
.LASF34:
	.string	"actualSleepDuration_ms"
.LASF2:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF33:
	.string	"actualSleepDuration_32768cycles"
.LASF11:
	.string	"BLOG_LEVEL_DEBUG"
.LASF7:
	.string	"long long unsigned int"
.LASF16:
	.string	"BLOG_LEVEL_NEVER"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
