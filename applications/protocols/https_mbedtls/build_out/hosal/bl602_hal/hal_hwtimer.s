	.file	"hal_hwtimer.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.hal_hwtimer_init,"ax",@progbits
	.align	1
	.globl	hal_hwtimer_init
	.type	hal_hwtimer_init, @function
hal_hwtimer_init:
.LFB30:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/hal_hwtimer.c"
	.loc 1 211 1
	.cfi_startproc
	.loc 1 212 5
	.loc 1 213 1 is_stmt 0
	li	a0,0
	ret
	.cfi_endproc
.LFE30:
	.size	hal_hwtimer_init, .-hal_hwtimer_init
	.section	.rodata.hal_hwtimer_create.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"hw_timer"
	.section	.text.hal_hwtimer_create,"ax",@progbits
	.align	1
	.globl	hal_hwtimer_create
	.type	hal_hwtimer_create, @function
hal_hwtimer_create:
.LFB31:
	.loc 1 216 1 is_stmt 1
	.cfi_startproc
.LVL0:
	.loc 1 217 5
	.loc 1 219 5
	.loc 1 216 1 is_stmt 0
	mv	a4,a1
	.loc 1 221 64
	li	a1,1000
.LVL1:
	mul	a0,a0,a1
.LVL2:
	.loc 1 216 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 219 14
	addi	a3,sp,12
	li	a2,1
.LVL3:
	.loc 1 216 1
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 219 14
	divu	a1,a0,a1
	lui	a0,%hi(.LC0)
	addi	a0,a0,%lo(.LC0)
	call	xTimerCreate
.LVL4:
	.loc 1 219 12
	sw	a0,12(sp)
	.loc 1 226 5 is_stmt 1
	.loc 1 226 8 is_stmt 0
	beq	a0,zero,.L3
	mv	s0,a0
	.loc 1 227 10 is_stmt 1
	call	xTaskGetTickCount
.LVL5:
	mv	a2,a0
	li	a4,-1
	li	a3,0
	li	a1,1
	mv	a0,s0
	call	xTimerGenericCommand
.LVL6:
.L3:
	.loc 1 229 5
	.loc 1 230 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	a0,12(sp)
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE31:
	.size	hal_hwtimer_create, .-hal_hwtimer_create
	.section	.text.hal_hwtimer_delete,"ax",@progbits
	.align	1
	.globl	hal_hwtimer_delete
	.type	hal_hwtimer_delete, @function
hal_hwtimer_delete:
.LFB32:
	.loc 1 233 1 is_stmt 1
	.cfi_startproc
.LVL7:
	.loc 1 234 5
	.loc 1 233 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 234 33
	li	a4,-1
	li	a3,0
	li	a2,0
	li	a1,5
	.loc 1 233 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 234 33
	call	xTimerGenericCommand
.LVL8:
	.loc 1 238 1
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 234 8
	seqz	a0,a0
	.loc 1 238 1
	neg	a0,a0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE32:
	.size	hal_hwtimer_delete, .-hal_hwtimer_delete
	.section	.text.hal_hwtimer_change_period,"ax",@progbits
	.align	1
	.globl	hal_hwtimer_change_period
	.type	hal_hwtimer_change_period, @function
hal_hwtimer_change_period:
.LFB33:
	.loc 1 241 1 is_stmt 1
	.cfi_startproc
.LVL9:
	.loc 1 242 5
	.loc 1 242 154 is_stmt 0
	li	a2,1000
	mul	a1,a1,a2
.LVL10:
	.loc 1 241 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 242 33
	li	a4,-1
	li	a3,0
	.loc 1 241 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 242 33
	divu	a2,a1,a2
	li	a1,4
	call	xTimerGenericCommand
.LVL11:
	.loc 1 246 1
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 242 8
	seqz	a0,a0
	.loc 1 246 1
	neg	a0,a0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE33:
	.size	hal_hwtimer_change_period, .-hal_hwtimer_change_period
	.globl	_fsymf_info_hosalhal_hwtimer
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"hosal.hal_hwtimer"
	.comm	_fsymf_level_hosalhal_hwtimer,4,4
	.align	2
.LC2:
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
	.word	.LC2
	.section	.static_blogfile_code.hosalhal_hwtimer,"a"
	.align	2
	.type	_fsymf_info_hosalhal_hwtimer, @object
	.size	_fsymf_info_hosalhal_hwtimer, 8
_fsymf_info_hosalhal_hwtimer:
	.word	_fsymf_level_hosalhal_hwtimer
	.word	.LC1
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog_type.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/hal_hwtimer.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x3bd
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF46
	.byte	0xc
	.4byte	.LASF47
	.4byte	.LASF48
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x28
	.byte	0x12
	.4byte	0x46
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF3
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x73
	.byte	0x4
	.4byte	0x62
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x6
	.byte	0x4
	.byte	0x7
	.byte	0x4
	.4byte	0x90
	.byte	0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x97
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x3f
	.byte	0x11
	.4byte	0x3a
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x41
	.byte	0x12
	.4byte	0x62
	.byte	0x9
	.4byte	.LASF49
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x4
	.byte	0x22
	.byte	0xe
	.4byte	0xf3
	.byte	0xa
	.4byte	.LASF14
	.byte	0
	.byte	0xa
	.4byte	.LASF15
	.byte	0x1
	.byte	0xa
	.4byte	.LASF16
	.byte	0x2
	.byte	0xa
	.4byte	.LASF17
	.byte	0x3
	.byte	0xa
	.4byte	.LASF18
	.byte	0x4
	.byte	0xa
	.4byte	.LASF19
	.byte	0x5
	.byte	0xa
	.4byte	.LASF20
	.byte	0x6
	.byte	0
	.byte	0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0x2a
	.byte	0x3
	.4byte	0xb6
	.byte	0xb
	.4byte	.LASF50
	.byte	0x8
	.byte	0x4
	.byte	0x2c
	.byte	0x10
	.4byte	0x127
	.byte	0xc
	.4byte	.LASF22
	.byte	0x4
	.byte	0x2d
	.byte	0x13
	.4byte	0x127
	.byte	0
	.byte	0xc
	.4byte	.LASF23
	.byte	0x4
	.byte	0x2e
	.byte	0xb
	.4byte	0x91
	.byte	0x4
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xf3
	.byte	0x3
	.4byte	.LASF24
	.byte	0x4
	.byte	0x2f
	.byte	0x3
	.4byte	0xff
	.byte	0x4
	.4byte	0x12d
	.byte	0xd
	.4byte	.LASF25
	.byte	0x5
	.byte	0x38
	.byte	0x1b
	.4byte	0x6e
	.byte	0x5
	.byte	0x3
	.4byte	BLOG_HARD_DECLARE_DISABLE
	.byte	0xe
	.4byte	.LASF27
	.byte	0x5
	.byte	0x45
	.byte	0x12
	.4byte	0xf3
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_level_hosal
	.byte	0xd
	.4byte	.LASF26
	.byte	0x5
	.byte	0x46
	.byte	0x1e
	.4byte	0x139
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_info_hosal
	.byte	0xe
	.4byte	.LASF28
	.byte	0x5
	.byte	0x53
	.byte	0x12
	.4byte	0xf3
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_level_hosalhal_hwtimer
	.byte	0xe
	.4byte	.LASF29
	.byte	0x5
	.byte	0x54
	.byte	0x17
	.4byte	0x139
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_info_hosalhal_hwtimer
	.byte	0x3
	.4byte	.LASF30
	.byte	0x6
	.byte	0x4d
	.byte	0x22
	.4byte	0x1a4
	.byte	0x7
	.byte	0x4
	.4byte	0x1aa
	.byte	0xf
	.4byte	.LASF51
	.byte	0x3
	.4byte	.LASF31
	.byte	0x6
	.byte	0x52
	.byte	0x10
	.4byte	0x1bb
	.byte	0x7
	.byte	0x4
	.4byte	0x1c1
	.byte	0x10
	.4byte	0x1cc
	.byte	0x11
	.4byte	0x198
	.byte	0
	.byte	0x3
	.4byte	.LASF32
	.byte	0x7
	.byte	0x9
	.byte	0x10
	.4byte	0x8a
	.byte	0x12
	.byte	0x4
	.byte	0x7
	.byte	0x1c
	.byte	0x9
	.4byte	0x1ef
	.byte	0xc
	.4byte	.LASF33
	.byte	0x7
	.byte	0x1d
	.byte	0xb
	.4byte	0x88
	.byte	0
	.byte	0
	.byte	0x3
	.4byte	.LASF34
	.byte	0x7
	.byte	0x1e
	.byte	0x3
	.4byte	0x1d8
	.byte	0x13
	.4byte	.LASF37
	.byte	0x1
	.byte	0xf0
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x1
	.byte	0x9c
	.4byte	0x26c
	.byte	0x14
	.4byte	.LASF35
	.byte	0x1
	.byte	0xf0
	.byte	0x2b
	.4byte	0x26c
	.4byte	.LLST4
	.byte	0x14
	.4byte	.LASF36
	.byte	0x1
	.byte	0xf0
	.byte	0x3d
	.4byte	0x62
	.4byte	.LLST5
	.byte	0x15
	.4byte	.LVL11
	.4byte	0x39a
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x34
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x11
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0xa
	.2byte	0x3e8
	.byte	0x1e
	.byte	0xf7
	.byte	0x25
	.byte	0xa
	.2byte	0x3e8
	.byte	0xf7
	.byte	0x25
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x1ef
	.byte	0x13
	.4byte	.LASF38
	.byte	0x1
	.byte	0xe8
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x1
	.byte	0x9c
	.4byte	0x2c3
	.byte	0x14
	.4byte	.LASF35
	.byte	0x1
	.byte	0xe8
	.byte	0x24
	.4byte	0x26c
	.4byte	.LLST3
	.byte	0x15
	.4byte	.LVL8
	.4byte	0x39a
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x35
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LASF39
	.byte	0x1
	.byte	0xd7
	.byte	0xd
	.4byte	0x26c
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x1
	.byte	0x9c
	.4byte	0x384
	.byte	0x14
	.4byte	.LASF36
	.byte	0x1
	.byte	0xd7
	.byte	0x29
	.4byte	0x62
	.4byte	.LLST0
	.byte	0x14
	.4byte	.LASF40
	.byte	0x1
	.byte	0xd7
	.byte	0x36
	.4byte	0x1cc
	.4byte	.LLST1
	.byte	0x14
	.4byte	.LASF41
	.byte	0x1
	.byte	0xd7
	.byte	0x43
	.4byte	0x81
	.4byte	.LLST2
	.byte	0xd
	.4byte	.LASF42
	.byte	0x1
	.byte	0xd9
	.byte	0x13
	.4byte	0x198
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x17
	.4byte	.LVL4
	.4byte	0x3a7
	.4byte	0x35a
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x11
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xa
	.2byte	0x3e8
	.byte	0x1e
	.byte	0xf7
	.byte	0x25
	.byte	0xa
	.2byte	0x3e8
	.byte	0xf7
	.byte	0x25
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0x18
	.4byte	.LVL5
	.4byte	0x3b3
	.byte	0x15
	.4byte	.LVL6
	.4byte	0x39a
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LASF52
	.byte	0x1
	.byte	0xd2
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x1
	.byte	0x9c
	.byte	0x1a
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x6
	.2byte	0x502
	.byte	0xc
	.byte	0x1b
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x6
	.byte	0xe4
	.byte	0x10
	.byte	0x1a
	.4byte	.LASF45
	.4byte	.LASF45
	.byte	0x8
	.2byte	0x547
	.byte	0xc
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
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0xa
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xb
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
	.byte	0xc
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
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0xf
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x13
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
	.byte	0x14
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
	.byte	0x15
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x17
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
	.byte	0x18
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x1a
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
	.byte	0x1b
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
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11-1
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL10
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8-1
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL4-1
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL3
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
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
.LASF4:
	.string	"long long int"
.LASF21:
	.string	"blog_level_t"
.LASF27:
	.string	"_fsymc_level_hosal"
.LASF35:
	.string	"pstnode"
.LASF13:
	.string	"TickType_t"
.LASF29:
	.string	"_fsymf_info_hosalhal_hwtimer"
.LASF34:
	.string	"hw_timer_t"
.LASF44:
	.string	"xTimerCreate"
.LASF0:
	.string	"unsigned int"
.LASF36:
	.string	"period"
.LASF33:
	.string	"null"
.LASF24:
	.string	"blog_info_t"
.LASF47:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/hal_hwtimer.c"
.LASF26:
	.string	"_fsymc_info_hosal"
.LASF37:
	.string	"hal_hwtimer_change_period"
.LASF5:
	.string	"unsigned char"
.LASF10:
	.string	"long long unsigned int"
.LASF52:
	.string	"hal_hwtimer_init"
.LASF9:
	.string	"long unsigned int"
.LASF6:
	.string	"short unsigned int"
.LASF42:
	.string	"handle"
.LASF18:
	.string	"BLOG_LEVEL_ERROR"
.LASF39:
	.string	"hal_hwtimer_create"
.LASF43:
	.string	"xTimerGenericCommand"
.LASF17:
	.string	"BLOG_LEVEL_WARN"
.LASF50:
	.string	"_blog_info"
.LASF38:
	.string	"hal_hwtimer_delete"
.LASF51:
	.string	"tmrTimerControl"
.LASF31:
	.string	"TimerCallbackFunction_t"
.LASF48:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/hosal"
.LASF30:
	.string	"TimerHandle_t"
.LASF14:
	.string	"BLOG_LEVEL_ALL"
.LASF11:
	.string	"char"
.LASF41:
	.string	"repeat"
.LASF25:
	.string	"BLOG_HARD_DECLARE_DISABLE"
.LASF16:
	.string	"BLOG_LEVEL_INFO"
.LASF7:
	.string	"int32_t"
.LASF22:
	.string	"level"
.LASF46:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF23:
	.string	"name"
.LASF15:
	.string	"BLOG_LEVEL_DEBUG"
.LASF19:
	.string	"BLOG_LEVEL_ASSERT"
.LASF2:
	.string	"short int"
.LASF32:
	.string	"hw_t"
.LASF8:
	.string	"uint32_t"
.LASF3:
	.string	"long int"
.LASF49:
	.string	"_blog_leve"
.LASF1:
	.string	"signed char"
.LASF45:
	.string	"xTaskGetTickCount"
.LASF28:
	.string	"_fsymf_level_hosalhal_hwtimer"
.LASF12:
	.string	"BaseType_t"
.LASF20:
	.string	"BLOG_LEVEL_NEVER"
.LASF40:
	.string	"handler"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
