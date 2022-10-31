	.file	"loopset_ir.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text._ir_bloop_evt,"ax",@progbits
	.align	1
	.type	_ir_bloop_evt, @function
_ir_bloop_evt:
.LFB28:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/sys/bloop/loopset/src/loopset_ir.c"
	.loc 1 23 1
	.cfi_startproc
.LVL0:
	.loc 1 24 5
	.loc 1 26 5
	.loc 1 23 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 26 12
	call	bl_receivedata
.LVL1:
	mv	a2,a0
.LVL2:
	.loc 1 27 5 is_stmt 1
	.loc 1 28 9 is_stmt 0
	li	a1,2
	.loc 1 27 8
	beq	a0,zero,.L5
	.loc 1 30 9 is_stmt 1
	li	a1,1
.L5:
	li	a0,6
.LVL3:
	call	aos_post_event
.LVL4:
	.loc 1 32 5
	call	bl_enable_rx_int
.LVL5:
	.loc 1 34 5
	.loc 1 35 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE28:
	.size	_ir_bloop_evt, .-_ir_bloop_evt
	.section	.rodata._ir_bloop_msg.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"loopset_ir.c"
	.align	2
.LC1:
	.string	"DEBUG"
	.align	2
.LC2:
	.string	"%s (%d)[%s:%4d] [IR] [MSG] called with msg info\r\n\r\n"
	.section	.text._ir_bloop_msg,"ax",@progbits
	.align	1
	.type	_ir_bloop_msg, @function
_ir_bloop_msg:
.LFB29:
	.loc 1 38 1 is_stmt 1
	.cfi_startproc
.LVL6:
	.loc 1 39 5
	.loc 1 39 43
	.loc 1 39 48
	.loc 1 39 70 is_stmt 0
	lui	a5,%hi(_fsymc_level_loopset)
	.loc 1 39 51
	lw	a4,%lo(_fsymc_level_loopset)(a5)
	li	a5,1
	bgtu	a4,a5,.L11
	.loc 1 39 116 discriminator 3
	lui	a4,%hi(_fsymf_level_loopsetloopset_ir)
	.loc 1 39 95 discriminator 3
	lw	a4,%lo(_fsymf_level_loopsetloopset_ir)(a4)
	bgtu	a4,a5,.L11
.LVL7:
.LBB4:
.LBB5:
	.loc 1 39 154 is_stmt 1
.LBE5:
.LBE4:
	.loc 1 38 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LBB8:
.LBB6:
	.loc 1 39 239
	call	xPortIsInsideInterrupt
.LVL8:
	.loc 1 39 154
	beq	a0,zero,.L8
	.loc 1 39 268
	call	xTaskGetTickCountFromISR
.LVL9:
.L14:
	.loc 1 39 299
	mv	a2,a0
	.loc 1 39 154
	lui	a3,%hi(.LC0)
	lui	a1,%hi(.LC1)
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	li	a4,39
	addi	a3,a3,%lo(.LC0)
	addi	a1,a1,%lo(.LC1)
	call	bl_printk
.LVL10:
.LBE6:
.LBE8:
	.loc 1 39 352 is_stmt 1
	.loc 1 39 363
	.loc 1 41 5
	.loc 1 42 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL11:
.L8:
	.cfi_restore_state
.LBB9:
.LBB7:
	.loc 1 39 299
	call	xTaskGetTickCount
.LVL12:
	j	.L14
.LVL13:
.L11:
	.cfi_def_cfa_offset 0
	.cfi_restore 1
.LBE7:
.LBE9:
	.loc 1 39 352 is_stmt 1
	.loc 1 39 363
	.loc 1 41 5
	.loc 1 42 1 is_stmt 0
	li	a0,0
.LVL14:
	ret
	.cfi_endproc
.LFE29:
	.size	_ir_bloop_msg, .-_ir_bloop_msg
	.section	.text.loopset_ir_hook_on_looprt,"ax",@progbits
	.align	1
	.globl	loopset_ir_hook_on_looprt
	.type	loopset_ir_hook_on_looprt, @function
loopset_ir_hook_on_looprt:
.LFB30:
	.loc 1 45 1 is_stmt 1
	.cfi_startproc
	.loc 1 46 5
	.loc 1 55 5
	.loc 1 55 12 is_stmt 0
	lui	a0,%hi(.LANCHOR0)
	li	a1,3
	addi	a0,a0,%lo(.LANCHOR0)
	tail	looprt_handler_register
.LVL15:
	.cfi_endproc
.LFE30:
	.size	loopset_ir_hook_on_looprt, .-loopset_ir_hook_on_looprt
	.section	.text.ir_async_post,"ax",@progbits
	.align	1
	.globl	ir_async_post
	.type	ir_async_post, @function
ir_async_post:
.LFB31:
	.loc 1 59 1 is_stmt 1
	.cfi_startproc
	.loc 1 60 5
	li	a1,1
	li	a0,3
	tail	looprt_evt_notify_async_fromISR
.LVL16:
	.cfi_endproc
.LFE31:
	.size	ir_async_post, .-ir_async_post
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC3:
	.string	"IR Trigger"
	.globl	_fsymf_info_loopsetloopset_ir
	.align	2
.LC4:
	.string	"loopset.loopset_ir"
	.comm	_fsymf_level_loopsetloopset_ir,4,4
	.align	2
.LC5:
	.string	"loopset"
	.weak	_fsymc_level_loopset
	.section	.rodata._ir_bloop_handler_holder.0,"a"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	_ir_bloop_handler_holder.0, @object
	.size	_ir_bloop_handler_holder.0, 12
_ir_bloop_handler_holder.0:
	.word	.LC3
	.word	_ir_bloop_evt
	.word	_ir_bloop_msg
	.section	.sbss._fsymc_level_loopset,"aw",@nobits
	.align	2
	.type	_fsymc_level_loopset, @object
	.size	_fsymc_level_loopset, 4
_fsymc_level_loopset:
	.zero	4
	.section	.srodata.BLOG_HARD_DECLARE_DISABLE,"a"
	.align	2
	.type	BLOG_HARD_DECLARE_DISABLE, @object
	.size	BLOG_HARD_DECLARE_DISABLE, 4
BLOG_HARD_DECLARE_DISABLE:
	.zero	4
	.section	.static_blogcomponent_code.loopset,"a"
	.align	2
	.type	_fsymc_info_loopset, @object
	.size	_fsymc_info_loopset, 8
_fsymc_info_loopset:
	.word	_fsymc_level_loopset
	.word	.LC5
	.section	.static_blogfile_code.loopsetloopset_ir,"a"
	.align	2
	.type	_fsymf_info_loopsetloopset_ir, @object
	.size	_fsymf_info_loopsetloopset_ir, 8
_fsymf_info_loopsetloopset_ir:
	.word	_fsymf_level_loopsetloopset_ir
	.word	.LC4
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog_type.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_list.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/sys/bloop/bloop/include/bloop.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/sys/bloop/looprt/include/looprt.h"
	.file 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_ir.h"
	.file 10 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/aos/yloop.h"
	.file 11 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 12 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x6fc
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF84
	.byte	0xc
	.4byte	.LASF85
	.4byte	.LASF86
	.4byte	.Ldebug_ranges0+0x20
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
	.byte	0x2
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
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x7a
	.byte	0x5
	.4byte	0x69
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x6
	.byte	0x4
	.byte	0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x46
	.byte	0x25
	.4byte	0x96
	.byte	0x7
	.byte	0x4
	.4byte	0x9c
	.byte	0x8
	.4byte	.LASF87
	.byte	0x7
	.byte	0x4
	.4byte	0xae
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0x5
	.4byte	0xa7
	.byte	0x7
	.byte	0x4
	.4byte	0xa7
	.byte	0x9
	.4byte	.LASF88
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x4
	.byte	0x22
	.byte	0xe
	.4byte	0xf6
	.byte	0xa
	.4byte	.LASF13
	.byte	0
	.byte	0xa
	.4byte	.LASF14
	.byte	0x1
	.byte	0xa
	.4byte	.LASF15
	.byte	0x2
	.byte	0xa
	.4byte	.LASF16
	.byte	0x3
	.byte	0xa
	.4byte	.LASF17
	.byte	0x4
	.byte	0xa
	.4byte	.LASF18
	.byte	0x5
	.byte	0xa
	.4byte	.LASF19
	.byte	0x6
	.byte	0
	.byte	0x4
	.4byte	.LASF20
	.byte	0x4
	.byte	0x2a
	.byte	0x3
	.4byte	0xb9
	.byte	0xb
	.4byte	.LASF29
	.byte	0x8
	.byte	0x4
	.byte	0x2c
	.byte	0x10
	.4byte	0x12a
	.byte	0xc
	.4byte	.LASF21
	.byte	0x4
	.byte	0x2d
	.byte	0x13
	.4byte	0x12a
	.byte	0
	.byte	0xc
	.4byte	.LASF22
	.byte	0x4
	.byte	0x2e
	.byte	0xb
	.4byte	0xb3
	.byte	0x4
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xf6
	.byte	0x4
	.4byte	.LASF23
	.byte	0x4
	.byte	0x2f
	.byte	0x3
	.4byte	0x102
	.byte	0x5
	.4byte	0x130
	.byte	0xd
	.4byte	.LASF24
	.byte	0x5
	.byte	0x38
	.byte	0x1b
	.4byte	0x75
	.byte	0x5
	.byte	0x3
	.4byte	BLOG_HARD_DECLARE_DISABLE
	.byte	0xe
	.4byte	.LASF26
	.byte	0x5
	.byte	0x45
	.byte	0x12
	.4byte	0xf6
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_level_loopset
	.byte	0xd
	.4byte	.LASF25
	.byte	0x5
	.byte	0x46
	.byte	0x1e
	.4byte	0x13c
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_info_loopset
	.byte	0xe
	.4byte	.LASF27
	.byte	0x5
	.byte	0x53
	.byte	0x12
	.4byte	0xf6
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_level_loopsetloopset_ir
	.byte	0xe
	.4byte	.LASF28
	.byte	0x5
	.byte	0x54
	.byte	0x17
	.4byte	0x13c
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_info_loopsetloopset_ir
	.byte	0xb
	.4byte	.LASF30
	.byte	0x4
	.byte	0x6
	.byte	0x11
	.byte	0x8
	.4byte	0x1b6
	.byte	0xc
	.4byte	.LASF31
	.byte	0x6
	.byte	0x13
	.byte	0x1c
	.4byte	0x1b6
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x19b
	.byte	0xb
	.4byte	.LASF32
	.byte	0x8
	.byte	0x6
	.byte	0x16
	.byte	0x8
	.4byte	0x1e4
	.byte	0xc
	.4byte	.LASF33
	.byte	0x6
	.byte	0x19
	.byte	0x1c
	.4byte	0x1b6
	.byte	0
	.byte	0xc
	.4byte	.LASF34
	.byte	0x6
	.byte	0x1b
	.byte	0x1c
	.4byte	0x1b6
	.byte	0x4
	.byte	0
	.byte	0xf
	.4byte	.LASF35
	.byte	0x8
	.byte	0x6
	.2byte	0x103
	.byte	0x10
	.4byte	0x20f
	.byte	0x10
	.4byte	.LASF36
	.byte	0x6
	.2byte	0x104
	.byte	0x1b
	.4byte	0x20f
	.byte	0
	.byte	0x10
	.4byte	.LASF31
	.byte	0x6
	.2byte	0x105
	.byte	0x1b
	.4byte	0x20f
	.byte	0x4
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x1e4
	.byte	0x11
	.4byte	.LASF37
	.byte	0x6
	.2byte	0x106
	.byte	0x3
	.4byte	0x1e4
	.byte	0x12
	.byte	0x4
	.byte	0x7
	.byte	0x11
	.byte	0x9
	.4byte	0x260
	.byte	0xc
	.4byte	.LASF38
	.byte	0x7
	.byte	0x12
	.byte	0x15
	.4byte	0x4f
	.byte	0
	.byte	0xc
	.4byte	.LASF39
	.byte	0x7
	.byte	0x13
	.byte	0x15
	.4byte	0x4f
	.byte	0x1
	.byte	0xc
	.4byte	.LASF40
	.byte	0x7
	.byte	0x14
	.byte	0x15
	.4byte	0x4f
	.byte	0x2
	.byte	0xc
	.4byte	.LASF41
	.byte	0x7
	.byte	0x15
	.byte	0x15
	.4byte	0x4f
	.byte	0x3
	.byte	0
	.byte	0x13
	.byte	0x4
	.byte	0x7
	.byte	0xf
	.byte	0x5
	.4byte	0x282
	.byte	0x14
	.4byte	.LASF42
	.byte	0x7
	.byte	0x10
	.byte	0xf
	.4byte	0x88
	.byte	0x14
	.4byte	.LASF43
	.byte	0x7
	.byte	0x16
	.byte	0xb
	.4byte	0x222
	.byte	0
	.byte	0xb
	.4byte	.LASF44
	.byte	0x18
	.byte	0x7
	.byte	0xd
	.byte	0x8
	.4byte	0x2dc
	.byte	0xc
	.4byte	.LASF45
	.byte	0x7
	.byte	0xe
	.byte	0x1b
	.4byte	0x19b
	.byte	0
	.byte	0x15
	.string	"u"
	.byte	0x7
	.byte	0x17
	.byte	0x7
	.4byte	0x260
	.byte	0x4
	.byte	0xc
	.4byte	.LASF46
	.byte	0x7
	.byte	0x18
	.byte	0xb
	.4byte	0x88
	.byte	0x8
	.byte	0xc
	.4byte	.LASF47
	.byte	0x7
	.byte	0x19
	.byte	0xb
	.4byte	0x88
	.byte	0xc
	.byte	0xc
	.4byte	.LASF48
	.byte	0x7
	.byte	0x1a
	.byte	0x12
	.4byte	0x2c
	.byte	0x10
	.byte	0xc
	.4byte	.LASF49
	.byte	0x7
	.byte	0x1b
	.byte	0x12
	.4byte	0x2c
	.byte	0x14
	.byte	0
	.byte	0xb
	.4byte	.LASF50
	.byte	0x10
	.byte	0x7
	.byte	0x1e
	.byte	0x8
	.4byte	0x31e
	.byte	0xc
	.4byte	.LASF51
	.byte	0x7
	.byte	0x1f
	.byte	0x12
	.4byte	0x2c
	.byte	0
	.byte	0xc
	.4byte	.LASF49
	.byte	0x7
	.byte	0x20
	.byte	0x12
	.4byte	0x2c
	.byte	0x4
	.byte	0xc
	.4byte	.LASF52
	.byte	0x7
	.byte	0x21
	.byte	0x12
	.4byte	0x2c
	.byte	0x8
	.byte	0xc
	.4byte	.LASF53
	.byte	0x7
	.byte	0x22
	.byte	0x12
	.4byte	0x2c
	.byte	0xc
	.byte	0
	.byte	0xb
	.4byte	.LASF54
	.byte	0xc
	.byte	0x7
	.byte	0x25
	.byte	0x8
	.4byte	0x353
	.byte	0xc
	.4byte	.LASF22
	.byte	0x7
	.byte	0x26
	.byte	0x11
	.4byte	0xa1
	.byte	0
	.byte	0x15
	.string	"evt"
	.byte	0x7
	.byte	0x27
	.byte	0xb
	.4byte	0x42b
	.byte	0x4
	.byte	0xc
	.4byte	.LASF55
	.byte	0x7
	.byte	0x28
	.byte	0xb
	.4byte	0x450
	.byte	0x8
	.byte	0
	.byte	0x5
	.4byte	0x31e
	.byte	0x16
	.4byte	0x25
	.4byte	0x376
	.byte	0x17
	.4byte	0x376
	.byte	0x17
	.4byte	0x41f
	.byte	0x17
	.4byte	0x425
	.byte	0x17
	.4byte	0x425
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x37c
	.byte	0x18
	.4byte	.LASF56
	.2byte	0x4a0
	.byte	0x7
	.byte	0x2e
	.byte	0x8
	.4byte	0x41f
	.byte	0xc
	.4byte	.LASF57
	.byte	0x7
	.byte	0x2f
	.byte	0x12
	.4byte	0x8a
	.byte	0
	.byte	0xc
	.4byte	.LASF58
	.byte	0x7
	.byte	0x30
	.byte	0xe
	.4byte	0x69
	.byte	0x4
	.byte	0xc
	.4byte	.LASF59
	.byte	0x7
	.byte	0x31
	.byte	0xe
	.4byte	0x69
	.byte	0x8
	.byte	0xc
	.4byte	.LASF60
	.byte	0x7
	.byte	0x32
	.byte	0xe
	.4byte	0x69
	.byte	0xc
	.byte	0xc
	.4byte	.LASF61
	.byte	0x7
	.byte	0x33
	.byte	0xe
	.4byte	0x456
	.byte	0x10
	.byte	0xc
	.4byte	.LASF62
	.byte	0x7
	.byte	0x34
	.byte	0xe
	.4byte	0x456
	.byte	0x90
	.byte	0x19
	.4byte	.LASF63
	.byte	0x7
	.byte	0x35
	.byte	0x17
	.4byte	0x466
	.2byte	0x110
	.byte	0x19
	.4byte	.LASF64
	.byte	0x7
	.byte	0x36
	.byte	0x27
	.4byte	0x476
	.2byte	0x210
	.byte	0x19
	.4byte	.LASF65
	.byte	0x7
	.byte	0x37
	.byte	0x25
	.4byte	0x486
	.2byte	0x410
	.byte	0x19
	.4byte	.LASF66
	.byte	0x7
	.byte	0x39
	.byte	0x13
	.4byte	0x215
	.2byte	0x490
	.byte	0x19
	.4byte	.LASF67
	.byte	0x7
	.byte	0x3a
	.byte	0x13
	.4byte	0x215
	.2byte	0x498
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x353
	.byte	0x7
	.byte	0x4
	.4byte	0x69
	.byte	0x7
	.byte	0x4
	.4byte	0x358
	.byte	0x16
	.4byte	0x25
	.4byte	0x44a
	.byte	0x17
	.4byte	0x376
	.byte	0x17
	.4byte	0x41f
	.byte	0x17
	.4byte	0x44a
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x282
	.byte	0x7
	.byte	0x4
	.4byte	0x431
	.byte	0x1a
	.4byte	0x69
	.4byte	0x466
	.byte	0x1b
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.byte	0x1a
	.4byte	0x1bc
	.4byte	0x476
	.byte	0x1b
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.byte	0x1a
	.4byte	0x2dc
	.4byte	0x486
	.byte	0x1b
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.byte	0x1a
	.4byte	0x41f
	.4byte	0x496
	.byte	0x1b
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.byte	0xb
	.4byte	.LASF68
	.byte	0xc
	.byte	0x1
	.byte	0x12
	.byte	0x8
	.4byte	0x4b1
	.byte	0xc
	.4byte	.LASF69
	.byte	0x1
	.byte	0x13
	.byte	0x23
	.4byte	0x353
	.byte	0
	.byte	0
	.byte	0x5
	.4byte	0x496
	.byte	0x1c
	.4byte	.LASF89
	.byte	0x1
	.byte	0x3a
	.byte	0x6
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x1
	.byte	0x9c
	.4byte	0x4e1
	.byte	0x1d
	.4byte	.LVL16
	.4byte	0x691
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LASF90
	.byte	0x1
	.byte	0x2c
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x1
	.byte	0x9c
	.4byte	0x526
	.byte	0xd
	.4byte	.LASF70
	.byte	0x1
	.byte	0x2e
	.byte	0x31
	.4byte	0x4b1
	.byte	0x5
	.byte	0x3
	.4byte	_ir_bloop_handler_holder.0
	.byte	0x1d
	.4byte	.LVL15
	.4byte	0x69d
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0x20
	.4byte	.LASF91
	.byte	0x1
	.byte	0x25
	.byte	0xc
	.4byte	0x25
	.byte	0x1
	.4byte	0x55c
	.byte	0x21
	.4byte	.LASF71
	.byte	0x1
	.byte	0x25
	.byte	0x2b
	.4byte	0x376
	.byte	0x21
	.4byte	.LASF69
	.byte	0x1
	.byte	0x25
	.byte	0x50
	.4byte	0x41f
	.byte	0x22
	.string	"msg"
	.byte	0x1
	.byte	0x25
	.byte	0x6a
	.4byte	0x44a
	.byte	0
	.byte	0x23
	.4byte	.LASF92
	.byte	0x1
	.byte	0x16
	.byte	0xc
	.4byte	0x25
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x1
	.byte	0x9c
	.4byte	0x5ec
	.byte	0x24
	.4byte	.LASF71
	.byte	0x1
	.byte	0x16
	.byte	0x2b
	.4byte	0x376
	.4byte	.LLST0
	.byte	0x24
	.4byte	.LASF69
	.byte	0x1
	.byte	0x16
	.byte	0x50
	.4byte	0x41f
	.4byte	.LLST1
	.byte	0x24
	.4byte	.LASF72
	.byte	0x1
	.byte	0x16
	.byte	0x63
	.4byte	0x425
	.4byte	.LLST2
	.byte	0x24
	.4byte	.LASF73
	.byte	0x1
	.byte	0x16
	.byte	0x79
	.4byte	0x425
	.4byte	.LLST3
	.byte	0x25
	.4byte	.LASF74
	.byte	0x1
	.byte	0x18
	.byte	0xe
	.4byte	0x69
	.4byte	.LLST4
	.byte	0x26
	.4byte	.LVL1
	.4byte	0x6a9
	.byte	0x27
	.4byte	.LVL4
	.4byte	0x6b5
	.4byte	0x5e2
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x36
	.byte	0
	.byte	0x26
	.4byte	.LVL5
	.4byte	0x6c1
	.byte	0
	.byte	0x28
	.4byte	0x526
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x1
	.byte	0x9c
	.4byte	0x691
	.byte	0x29
	.4byte	0x537
	.4byte	.LLST5
	.byte	0x29
	.4byte	0x543
	.4byte	.LLST6
	.byte	0x29
	.4byte	0x54f
	.4byte	.LLST7
	.byte	0x2a
	.4byte	0x526
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x25
	.byte	0xc
	.byte	0x29
	.4byte	0x537
	.4byte	.LLST8
	.byte	0x29
	.4byte	0x543
	.4byte	.LLST9
	.byte	0x29
	.4byte	0x54f
	.4byte	.LLST10
	.byte	0x26
	.4byte	.LVL8
	.4byte	0x6cd
	.byte	0x26
	.4byte	.LVL9
	.4byte	0x6d9
	.byte	0x27
	.4byte	.LVL10
	.4byte	0x6e6
	.4byte	0x686
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x1e
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x1e
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x27
	.byte	0
	.byte	0x26
	.4byte	.LVL12
	.4byte	0x6f2
	.byte	0
	.byte	0
	.byte	0x2b
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0x8
	.byte	0xb
	.byte	0x6
	.byte	0x2b
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0x8
	.byte	0xf
	.byte	0x5
	.byte	0x2b
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0x9
	.byte	0x2b
	.byte	0xa
	.byte	0x2b
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0xa
	.byte	0x97
	.byte	0x5
	.byte	0x2b
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0x9
	.byte	0x2d
	.byte	0x6
	.byte	0x2b
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0xb
	.byte	0x98
	.byte	0xc
	.byte	0x2c
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0x3
	.2byte	0x558
	.byte	0xc
	.byte	0x2b
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0xc
	.byte	0x81
	.byte	0x6
	.byte	0x2c
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0x3
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
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
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
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
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
	.byte	0x14
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
	.byte	0x15
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
	.byte	0x16
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0x5
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
	.byte	0x19
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
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x1c
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
	.byte	0x1d
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
	.byte	0x1e
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1f
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
	.byte	0x20
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
	.byte	0x21
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
	.byte	0
	.byte	0
	.byte	0x22
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
	.byte	0x23
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
	.byte	0x24
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
	.byte	0x25
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
	.byte	0x26
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x27
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
	.byte	0x28
	.byte	0x2e
	.byte	0x1
	.byte	0x31
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
	.byte	0x29
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2a
	.byte	0x1d
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x52
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x58
	.byte	0xb
	.byte	0x59
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x2b
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
	.byte	0x2c
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
	.4byte	.LFE28
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
	.4byte	.LFE28
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
	.4byte	.LFE28
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
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL6
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8-1
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL6
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL8-1
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL6
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL8-1
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8-1
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL8-1
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL8-1
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL13
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
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	0
	.4byte	0
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF29:
	.string	"_blog_info"
.LASF72:
	.string	"bitmap_evt"
.LASF88:
	.string	"_blog_leve"
.LASF51:
	.string	"time_max"
.LASF64:
	.string	"statistic"
.LASF32:
	.string	"utils_list"
.LASF2:
	.string	"short int"
.LASF28:
	.string	"_fsymf_info_loopsetloopset_ir"
.LASF27:
	.string	"_fsymf_level_loopsetloopset_ir"
.LASF42:
	.string	"container"
.LASF11:
	.string	"TaskHandle_t"
.LASF68:
	.string	"loop_evt_handler_holder"
.LASF44:
	.string	"loop_msg"
.LASF69:
	.string	"handler"
.LASF43:
	.string	"header"
.LASF90:
	.string	"loopset_ir_hook_on_looprt"
.LASF9:
	.string	"long unsigned int"
.LASF89:
	.string	"ir_async_post"
.LASF54:
	.string	"loop_evt_handler"
.LASF57:
	.string	"looper"
.LASF70:
	.string	"_ir_bloop_handler_holder"
.LASF17:
	.string	"BLOG_LEVEL_ERROR"
.LASF80:
	.string	"xPortIsInsideInterrupt"
.LASF22:
	.string	"name"
.LASF40:
	.string	"id_msg"
.LASF50:
	.string	"loop_evt_handler_statistic"
.LASF46:
	.string	"arg1"
.LASF41:
	.string	"id_src"
.LASF77:
	.string	"bl_receivedata"
.LASF4:
	.string	"long long int"
.LASF25:
	.string	"_fsymc_info_loopset"
.LASF56:
	.string	"loop_ctx"
.LASF3:
	.string	"long int"
.LASF39:
	.string	"id_dst"
.LASF62:
	.string	"evt_type_map_sync"
.LASF87:
	.string	"tskTaskControlBlock"
.LASF83:
	.string	"xTaskGetTickCount"
.LASF48:
	.string	"time_added"
.LASF76:
	.string	"looprt_handler_register"
.LASF5:
	.string	"unsigned char"
.LASF47:
	.string	"arg2"
.LASF92:
	.string	"_ir_bloop_evt"
.LASF66:
	.string	"timer_dlist"
.LASF67:
	.string	"timer_dued"
.LASF71:
	.string	"loop"
.LASF18:
	.string	"BLOG_LEVEL_ASSERT"
.LASF1:
	.string	"signed char"
.LASF10:
	.string	"long long unsigned int"
.LASF8:
	.string	"uint32_t"
.LASF65:
	.string	"handlers"
.LASF0:
	.string	"unsigned int"
.LASF79:
	.string	"bl_enable_rx_int"
.LASF15:
	.string	"BLOG_LEVEL_INFO"
.LASF26:
	.string	"_fsymc_level_loopset"
.LASF34:
	.string	"last"
.LASF58:
	.string	"bitmap_evt_async"
.LASF60:
	.string	"bitmap_msg"
.LASF52:
	.string	"time_accumulated"
.LASF6:
	.string	"short unsigned int"
.LASF12:
	.string	"char"
.LASF14:
	.string	"BLOG_LEVEL_DEBUG"
.LASF61:
	.string	"evt_type_map_async"
.LASF63:
	.string	"list"
.LASF85:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/sys/bloop/loopset/src/loopset_ir.c"
.LASF74:
	.string	"data"
.LASF91:
	.string	"_ir_bloop_msg"
.LASF13:
	.string	"BLOG_LEVEL_ALL"
.LASF35:
	.string	"utils_dlist_s"
.LASF78:
	.string	"aos_post_event"
.LASF23:
	.string	"blog_info_t"
.LASF24:
	.string	"BLOG_HARD_DECLARE_DISABLE"
.LASF55:
	.string	"handle"
.LASF81:
	.string	"xTaskGetTickCountFromISR"
.LASF21:
	.string	"level"
.LASF49:
	.string	"time_consumed"
.LASF7:
	.string	"uint8_t"
.LASF45:
	.string	"item"
.LASF53:
	.string	"count_triggered"
.LASF73:
	.string	"evt_type_map"
.LASF37:
	.string	"utils_dlist_t"
.LASF38:
	.string	"priority"
.LASF82:
	.string	"bl_printk"
.LASF16:
	.string	"BLOG_LEVEL_WARN"
.LASF19:
	.string	"BLOG_LEVEL_NEVER"
.LASF20:
	.string	"blog_level_t"
.LASF36:
	.string	"prev"
.LASF75:
	.string	"looprt_evt_notify_async_fromISR"
.LASF30:
	.string	"utils_list_hdr"
.LASF86:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/loopset"
.LASF31:
	.string	"next"
.LASF59:
	.string	"bitmap_evt_sync"
.LASF33:
	.string	"first"
.LASF84:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
