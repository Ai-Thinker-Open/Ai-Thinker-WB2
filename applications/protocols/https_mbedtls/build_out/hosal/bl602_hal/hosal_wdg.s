	.file	"hosal_wdg.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.hosal_wdg_init.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"hosal_wdg.c"
	.align	2
.LC1:
	.string	"\033[32mINFO\033[0m"
	.align	2
.LC2:
	.string	"%s (%d)[%s:%4d] hosal_wdg_init t_ms = %ld\r\n\r\n"
	.section	.text.hosal_wdg_init,"ax",@progbits
	.align	1
	.globl	hosal_wdg_init
	.type	hosal_wdg_init, @function
hosal_wdg_init:
.LFB4:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/hosal_wdg.c"
	.loc 1 8 1
	.cfi_startproc
.LVL0:
	.loc 1 9 5
	.loc 1 11 5
	.loc 1 11 8 is_stmt 0
	beq	a0,zero,.L6
	.loc 1 16 5 is_stmt 1
	.loc 1 18 69 is_stmt 0
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 18 51
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	.loc 1 8 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 18 51
	li	a5,2
	.loc 1 16 8
	lw	s0,4(a0)
.LVL1:
	.loc 1 18 5 is_stmt 1
	.loc 1 18 43
	.loc 1 18 48
	.loc 1 18 51 is_stmt 0
	bgtu	a4,a5,.L3
	.loc 1 18 112 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhosal_wdg)
	.loc 1 18 92 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhosal_wdg)(a4)
	bgtu	a4,a5,.L3
	.loc 1 18 147 is_stmt 1 discriminator 5
	.loc 1 18 240 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL2:
	.loc 1 18 147 discriminator 5
	beq	a0,zero,.L4
	.loc 1 18 269 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL3:
.L11:
	.loc 1 18 300 discriminator 8
	mv	a2,a0
	.loc 1 18 147 discriminator 8
	lui	a3,%hi(.LC0)
	lui	a1,%hi(.LC1)
	lui	a0,%hi(.LC2)
	mv	a5,s0
	li	a4,18
	addi	a3,a3,%lo(.LC0)
	addi	a1,a1,%lo(.LC1)
	addi	a0,a0,%lo(.LC2)
	call	bl_printk
.LVL4:
.L3:
	.loc 1 18 356 is_stmt 1 discriminator 11
	.loc 1 18 367 discriminator 11
	.loc 1 20 5 discriminator 11
	mv	a0,s0
	call	bl_wdt_init
.LVL5:
	.loc 1 22 5 discriminator 11
	.loc 1 23 1 is_stmt 0 discriminator 11
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL6:
	.loc 1 22 12 discriminator 11
	li	a0,0
	.loc 1 23 1 discriminator 11
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL7:
.L4:
	.cfi_restore_state
	.loc 1 18 300 discriminator 8
	call	xTaskGetTickCount
.LVL8:
	j	.L11
.LVL9:
.L6:
	.cfi_def_cfa_offset 0
	.cfi_restore 1
	.cfi_restore 8
	.loc 1 13 16
	li	a0,-1
.LVL10:
	.loc 1 23 1
	ret
	.cfi_endproc
.LFE4:
	.size	hosal_wdg_init, .-hosal_wdg_init
	.section	.text.hosal_wdg_reload,"ax",@progbits
	.align	1
	.globl	hosal_wdg_reload
	.type	hosal_wdg_reload, @function
hosal_wdg_reload:
.LFB5:
	.loc 1 26 1 is_stmt 1
	.cfi_startproc
.LVL11:
	.loc 1 27 5
	tail	bl_wdt_feed
.LVL12:
	.cfi_endproc
.LFE5:
	.size	hosal_wdg_reload, .-hosal_wdg_reload
	.section	.text.hosal_wdg_finalize,"ax",@progbits
	.align	1
	.globl	hosal_wdg_finalize
	.type	hosal_wdg_finalize, @function
hosal_wdg_finalize:
.LFB6:
	.loc 1 31 1
	.cfi_startproc
.LVL13:
	.loc 1 32 5
	.loc 1 31 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 32 5
	call	bl_wdt_disable
.LVL14:
	.loc 1 34 5 is_stmt 1
	.loc 1 35 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	hosal_wdg_finalize, .-hosal_wdg_finalize
	.globl	_fsymf_info_hosalhosal_wdg
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC3:
	.string	"hosal.hosal_wdg"
	.comm	_fsymf_level_hosalhosal_wdg,4,4
	.align	2
.LC4:
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
	.word	.LC4
	.section	.static_blogfile_code.hosalhosal_wdg,"a"
	.align	2
	.type	_fsymf_info_hosalhosal_wdg, @object
	.size	_fsymf_info_hosalhosal_wdg, 8
_fsymf_info_hosalhosal_wdg:
	.word	_fsymf_level_hosalhosal_wdg
	.word	.LC3
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/include/hosal_wdg.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog_type.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_wdt.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 10 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x34b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF45
	.byte	0xc
	.4byte	.LASF46
	.4byte	.LASF47
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x38
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
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x60
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x5
	.byte	0x4
	.byte	0x6
	.byte	0x4
	.4byte	0x8b
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x54
	.byte	0x7
	.4byte	0x9e
	.byte	0x8
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x9
	.4byte	0xc6
	.byte	0x9
	.4byte	.LASF15
	.byte	0x4
	.byte	0x15
	.byte	0xe
	.4byte	0x9e
	.byte	0
	.byte	0
	.byte	0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x16
	.byte	0x3
	.4byte	0xaf
	.byte	0x8
	.byte	0xc
	.byte	0x4
	.byte	0x1c
	.byte	0x9
	.4byte	0x103
	.byte	0x9
	.4byte	.LASF16
	.byte	0x4
	.byte	0x1d
	.byte	0xd
	.4byte	0x92
	.byte	0
	.byte	0x9
	.4byte	.LASF17
	.byte	0x4
	.byte	0x1e
	.byte	0x18
	.4byte	0xc6
	.byte	0x4
	.byte	0x9
	.4byte	.LASF18
	.byte	0x4
	.byte	0x1f
	.byte	0xb
	.4byte	0x83
	.byte	0x8
	.byte	0
	.byte	0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x20
	.byte	0x3
	.4byte	0xd2
	.byte	0xa
	.4byte	.LASF48
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x5
	.byte	0x22
	.byte	0xe
	.4byte	0x14c
	.byte	0xb
	.4byte	.LASF20
	.byte	0
	.byte	0xb
	.4byte	.LASF21
	.byte	0x1
	.byte	0xb
	.4byte	.LASF22
	.byte	0x2
	.byte	0xb
	.4byte	.LASF23
	.byte	0x3
	.byte	0xb
	.4byte	.LASF24
	.byte	0x4
	.byte	0xb
	.4byte	.LASF25
	.byte	0x5
	.byte	0xb
	.4byte	.LASF26
	.byte	0x6
	.byte	0
	.byte	0x3
	.4byte	.LASF27
	.byte	0x5
	.byte	0x2a
	.byte	0x3
	.4byte	0x10f
	.byte	0xc
	.4byte	.LASF49
	.byte	0x8
	.byte	0x5
	.byte	0x2c
	.byte	0x10
	.4byte	0x180
	.byte	0x9
	.4byte	.LASF28
	.byte	0x5
	.byte	0x2d
	.byte	0x13
	.4byte	0x180
	.byte	0
	.byte	0x9
	.4byte	.LASF29
	.byte	0x5
	.byte	0x2e
	.byte	0xb
	.4byte	0x85
	.byte	0x4
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x14c
	.byte	0x3
	.4byte	.LASF30
	.byte	0x5
	.byte	0x2f
	.byte	0x3
	.4byte	0x158
	.byte	0x7
	.4byte	0x186
	.byte	0xd
	.4byte	.LASF31
	.byte	0x6
	.byte	0x38
	.byte	0x1b
	.4byte	0xaa
	.byte	0x5
	.byte	0x3
	.4byte	BLOG_HARD_DECLARE_DISABLE
	.byte	0xe
	.4byte	.LASF33
	.byte	0x6
	.byte	0x45
	.byte	0x12
	.4byte	0x14c
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_level_hosal
	.byte	0xd
	.4byte	.LASF32
	.byte	0x6
	.byte	0x46
	.byte	0x1e
	.4byte	0x192
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_info_hosal
	.byte	0xe
	.4byte	.LASF34
	.byte	0x6
	.byte	0x53
	.byte	0x12
	.4byte	0x14c
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_level_hosalhosal_wdg
	.byte	0xe
	.4byte	.LASF35
	.byte	0x6
	.byte	0x54
	.byte	0x17
	.4byte	0x192
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_info_hosalhosal_wdg
	.byte	0xf
	.4byte	.LASF36
	.byte	0x1
	.byte	0x1e
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x225
	.byte	0x10
	.string	"wdg"
	.byte	0x1
	.byte	0x1e
	.byte	0x29
	.4byte	0x225
	.4byte	.LLST3
	.byte	0x11
	.4byte	.LVL14
	.4byte	0x2f8
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x103
	.byte	0x12
	.4byte	.LASF50
	.byte	0x1
	.byte	0x19
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x25b
	.byte	0x10
	.string	"wdg"
	.byte	0x1
	.byte	0x19
	.byte	0x28
	.4byte	0x225
	.4byte	.LLST2
	.byte	0x13
	.4byte	.LVL12
	.4byte	0x304
	.byte	0
	.byte	0xf
	.4byte	.LASF37
	.byte	0x1
	.byte	0x7
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x2f8
	.byte	0x10
	.string	"wdg"
	.byte	0x1
	.byte	0x7
	.byte	0x25
	.4byte	0x225
	.4byte	.LLST0
	.byte	0x14
	.string	"ms"
	.byte	0x1
	.byte	0x9
	.byte	0xe
	.4byte	0x9e
	.4byte	.LLST1
	.byte	0x11
	.4byte	.LVL2
	.4byte	0x310
	.byte	0x11
	.4byte	.LVL3
	.4byte	0x31c
	.byte	0x15
	.4byte	.LVL4
	.4byte	0x329
	.4byte	0x2da
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x42
	.byte	0x16
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL5
	.4byte	0x335
	.4byte	0x2ee
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LVL8
	.4byte	0x341
	.byte	0
	.byte	0x17
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x7
	.byte	0x5
	.byte	0x6
	.byte	0x17
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x7
	.byte	0x4
	.byte	0x6
	.byte	0x17
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x8
	.byte	0x98
	.byte	0xc
	.byte	0x18
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x9
	.2byte	0x558
	.byte	0xc
	.byte	0x17
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0xa
	.byte	0x81
	.byte	0x6
	.byte	0x17
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x7
	.byte	0x3
	.byte	0x5
	.byte	0x18
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x9
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
	.byte	0x9
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
	.byte	0xa
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
	.byte	0xb
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xc
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
	.byte	0x10
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
	.byte	0x11
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0x15
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
	.byte	0x18
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
.LLST3:
	.4byte	.LVL13
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL11
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12-1
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2-1
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x58
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF8:
	.string	"long long int"
.LASF27:
	.string	"blog_level_t"
.LASF5:
	.string	"__uint8_t"
.LASF50:
	.string	"hosal_wdg_reload"
.LASF18:
	.string	"priv"
.LASF15:
	.string	"timeout"
.LASF47:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/hosal"
.LASF30:
	.string	"blog_info_t"
.LASF32:
	.string	"_fsymc_info_hosal"
.LASF33:
	.string	"_fsymc_level_hosal"
.LASF19:
	.string	"hosal_wdg_dev_t"
.LASF1:
	.string	"unsigned char"
.LASF42:
	.string	"bl_printk"
.LASF35:
	.string	"_fsymf_info_hosalhosal_wdg"
.LASF14:
	.string	"hosal_wdg_config_t"
.LASF34:
	.string	"_fsymf_level_hosalhosal_wdg"
.LASF48:
	.string	"_blog_leve"
.LASF7:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF24:
	.string	"BLOG_LEVEL_ERROR"
.LASF23:
	.string	"BLOG_LEVEL_WARN"
.LASF49:
	.string	"_blog_info"
.LASF36:
	.string	"hosal_wdg_finalize"
.LASF6:
	.string	"__uint32_t"
.LASF25:
	.string	"BLOG_LEVEL_ASSERT"
.LASF10:
	.string	"unsigned int"
.LASF20:
	.string	"BLOG_LEVEL_ALL"
.LASF9:
	.string	"long long unsigned int"
.LASF12:
	.string	"uint8_t"
.LASF40:
	.string	"xPortIsInsideInterrupt"
.LASF38:
	.string	"bl_wdt_disable"
.LASF31:
	.string	"BLOG_HARD_DECLARE_DISABLE"
.LASF22:
	.string	"BLOG_LEVEL_INFO"
.LASF28:
	.string	"level"
.LASF45:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF11:
	.string	"char"
.LASF41:
	.string	"xTaskGetTickCountFromISR"
.LASF16:
	.string	"port"
.LASF43:
	.string	"bl_wdt_init"
.LASF39:
	.string	"bl_wdt_feed"
.LASF2:
	.string	"short int"
.LASF17:
	.string	"config"
.LASF13:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF37:
	.string	"hosal_wdg_init"
.LASF0:
	.string	"signed char"
.LASF46:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/hosal_wdg.c"
.LASF44:
	.string	"xTaskGetTickCount"
.LASF21:
	.string	"BLOG_LEVEL_DEBUG"
.LASF29:
	.string	"name"
.LASF26:
	.string	"BLOG_LEVEL_NEVER"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
