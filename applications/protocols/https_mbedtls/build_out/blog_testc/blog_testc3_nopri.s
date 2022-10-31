	.file	"blog_testc3_nopri.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.blog_testc3_entry.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"blog_testc3_nopri.c"
	.align	2
.LC1:
	.string	"DEBUG"
	.align	2
.LC2:
	.string	"%s (%d)[%s:%4d] blog_testc3 debug\r\n\r\n"
	.align	2
.LC3:
	.string	"\033[32mINFO\033[0m"
	.align	2
.LC4:
	.string	"%s (%d)[%s:%4d] blog_testc3 info\r\n\r\n"
	.align	2
.LC5:
	.string	"\033[33mWARN\033[0m"
	.align	2
.LC6:
	.string	"%s (%d)[%s:%4d] blog_testc3 warn\r\n\r\n"
	.align	2
.LC7:
	.string	"\033[31mERROR\033[0m"
	.align	2
.LC8:
	.string	"%s (%d)[%s:%4d] blog_testc3 error\r\n\r\n"
	.section	.text.blog_testc3_entry,"ax",@progbits
	.align	1
	.globl	blog_testc3_entry
	.type	blog_testc3_entry, @function
blog_testc3_entry:
.LFB4:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog_testc/blog_testc3_nopri.c"
	.loc 1 8 1
	.cfi_startproc
.LVL0:
	.loc 1 9 5
	li	a0,4096
.LVL1:
	.loc 1 8 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	.loc 1 9 5
	addi	a0,a0,904
	.loc 1 8 1
	sw	s0,40(sp)
	sw	ra,44(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	sw	s6,16(sp)
	sw	s7,12(sp)
	sw	s8,8(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.loc 1 11 70
	lui	s0,%hi(_fsymc_level_blog_testc)
	.loc 1 9 5
	call	aos_msleep
.LVL2:
	.loc 1 11 5 is_stmt 1
	.loc 1 11 43
	.loc 1 11 48
	.loc 1 11 51 is_stmt 0
	lw	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,1
	bgtu	a4,a5,.L2
	.loc 1 11 119 discriminator 3
	lui	a4,%hi(_fsymf_level_blog_testcblog_testc3_nopri)
	.loc 1 11 98 discriminator 3
	lw	a4,%lo(_fsymf_level_blog_testcblog_testc3_nopri)(a4)
	bleu	a4,a5,.L3
.L8:
	.loc 1 12 117
	lui	a5,%hi(_fsymf_level_blog_testcblog_testc3_nopri)
	.loc 1 12 97
	lw	a4,%lo(_fsymf_level_blog_testcblog_testc3_nopri)(a5)
	li	a5,2
	bgtu	a4,a5,.L5
	.loc 1 12 165 is_stmt 1 discriminator 5
	.loc 1 12 249 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL3:
	.loc 1 12 165 discriminator 5
	beq	a0,zero,.L12
	.loc 1 12 278 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL4:
.L45:
	.loc 1 12 309 discriminator 8
	mv	a2,a0
	.loc 1 12 165 discriminator 8
	lui	a3,%hi(.LC0)
	lui	a1,%hi(.LC3)
	lui	a0,%hi(.LC4)
	li	a4,12
	addi	a3,a3,%lo(.LC0)
	addi	a1,a1,%lo(.LC3)
	addi	a0,a0,%lo(.LC4)
	call	bl_printk
.LVL5:
	j	.L9
.L3:
	.loc 1 11 167 is_stmt 1 discriminator 5
	.loc 1 11 238 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL6:
	.loc 1 11 167 discriminator 5
	beq	a0,zero,.L6
	.loc 1 11 267 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL7:
.L44:
	.loc 1 11 298 discriminator 8
	mv	a2,a0
	.loc 1 11 167 discriminator 8
	lui	a3,%hi(.LC0)
	lui	a1,%hi(.LC1)
	lui	a0,%hi(.LC2)
	li	a4,11
	addi	a3,a3,%lo(.LC0)
	addi	a1,a1,%lo(.LC1)
	addi	a0,a0,%lo(.LC2)
	call	bl_printk
.LVL8:
.L2:
	.loc 1 11 358 is_stmt 1 discriminator 1
	.loc 1 11 369 discriminator 1
	.loc 1 12 5 discriminator 1
	.loc 1 12 43 discriminator 1
	.loc 1 12 48 discriminator 1
	.loc 1 12 51 is_stmt 0 discriminator 1
	lw	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,2
	bleu	a4,a5,.L8
.L9:
	.loc 1 12 369 is_stmt 1 discriminator 1
	.loc 1 12 380 discriminator 1
	.loc 1 13 5 discriminator 1
	.loc 1 13 43 discriminator 1
	.loc 1 13 48 discriminator 1
	.loc 1 13 51 is_stmt 0 discriminator 1
	lw	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,3
	bgtu	a4,a5,.L14
.L5:
	.loc 1 13 117
	lui	a5,%hi(_fsymf_level_blog_testcblog_testc3_nopri)
	.loc 1 13 97
	lw	a4,%lo(_fsymf_level_blog_testcblog_testc3_nopri)(a5)
	li	a5,3
	bgtu	a4,a5,.L11
	.loc 1 13 165 is_stmt 1 discriminator 5
	.loc 1 13 249 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL9:
	.loc 1 13 165 discriminator 5
	beq	a0,zero,.L17
	.loc 1 13 278 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL10:
.L46:
	.loc 1 13 309 discriminator 8
	mv	a2,a0
	.loc 1 13 165 discriminator 8
	lui	a3,%hi(.LC0)
	lui	a1,%hi(.LC5)
	lui	a0,%hi(.LC6)
	li	a4,13
	addi	a3,a3,%lo(.LC0)
	addi	a1,a1,%lo(.LC5)
	addi	a0,a0,%lo(.LC6)
	call	bl_printk
.LVL11:
.L14:
	.loc 1 13 369 is_stmt 1 discriminator 1
	.loc 1 13 380 discriminator 1
	.loc 1 14 5 discriminator 1
	.loc 1 14 43 discriminator 1
	.loc 1 14 48 discriminator 1
	.loc 1 14 51 is_stmt 0 discriminator 1
	lw	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,4
	bgtu	a4,a5,.L19
.L11:
	.loc 1 14 119
	lui	a5,%hi(_fsymf_level_blog_testcblog_testc3_nopri)
	.loc 1 14 98
	lw	a4,%lo(_fsymf_level_blog_testcblog_testc3_nopri)(a5)
	li	a5,4
	bgtu	a4,a5,.L19
	.loc 1 14 167 is_stmt 1 discriminator 5
	.loc 1 14 253 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL12:
	.loc 1 14 167 discriminator 5
	beq	a0,zero,.L20
	.loc 1 14 282 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL13:
.L47:
	.loc 1 14 313 discriminator 8
	mv	a2,a0
	.loc 1 14 167 discriminator 8
	lui	a3,%hi(.LC0)
	lui	a1,%hi(.LC7)
	lui	a0,%hi(.LC8)
	li	a4,14
	addi	a3,a3,%lo(.LC0)
	addi	a1,a1,%lo(.LC7)
	addi	a0,a0,%lo(.LC8)
	call	bl_printk
.LVL14:
.L19:
	.loc 1 21 123 discriminator 11
	lui	s2,%hi(_fsymf_level_blog_testcblog_testc3_nopri)
	.loc 1 21 171 discriminator 11
	lui	s1,%hi(.LC0)
	lui	s4,%hi(.LC7)
	lui	s3,%hi(.LC8)
	.loc 1 20 169 discriminator 11
	lui	s5,%hi(.LC5)
	lui	s6,%hi(.LC6)
	.loc 1 19 169 discriminator 11
	lui	s7,%hi(.LC3)
	lui	s8,%hi(.LC4)
.L22:
	.loc 1 14 373 is_stmt 1 discriminator 11
	.loc 1 14 384 discriminator 11
	.loc 1 16 5 discriminator 11
	.loc 1 17 9 discriminator 11
	li	a0,4096
	addi	a0,a0,904
	call	aos_msleep
.LVL15:
	.loc 1 18 9 discriminator 11
	.loc 1 18 47 discriminator 11
	.loc 1 18 52 discriminator 11
	.loc 1 18 55 is_stmt 0 discriminator 11
	lw	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,1
	bgtu	a4,a5,.L23
	.loc 1 18 102 discriminator 3
	lw	a4,%lo(_fsymf_level_blog_testcblog_testc3_nopri)(s2)
	bleu	a4,a5,.L24
.L29:
	.loc 1 19 101
	lw	a4,%lo(_fsymf_level_blog_testcblog_testc3_nopri)(s2)
	li	a5,2
	bgtu	a4,a5,.L26
	.loc 1 19 169 is_stmt 1 discriminator 5
	.loc 1 19 253 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL16:
	.loc 1 19 169 discriminator 5
	beq	a0,zero,.L33
	.loc 1 19 282 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL17:
.L49:
	.loc 1 19 313 discriminator 8
	mv	a2,a0
	.loc 1 19 169 discriminator 8
	li	a4,19
	addi	a3,s1,%lo(.LC0)
	addi	a1,s7,%lo(.LC3)
	addi	a0,s8,%lo(.LC4)
	call	bl_printk
.LVL18:
	j	.L30
.L6:
	.loc 1 11 298 discriminator 8
	call	xTaskGetTickCount
.LVL19:
	j	.L44
.L12:
	.loc 1 12 309 discriminator 8
	call	xTaskGetTickCount
.LVL20:
	j	.L45
.L17:
	.loc 1 13 309 discriminator 8
	call	xTaskGetTickCount
.LVL21:
	j	.L46
.L20:
	.loc 1 14 313 discriminator 8
	call	xTaskGetTickCount
.LVL22:
	j	.L47
.L24:
	.loc 1 18 171 is_stmt 1 discriminator 5
	.loc 1 18 242 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL23:
	.loc 1 18 171 discriminator 5
	beq	a0,zero,.L27
	.loc 1 18 271 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL24:
.L48:
	.loc 1 18 302 discriminator 8
	mv	a2,a0
	.loc 1 18 171 discriminator 8
	lui	a1,%hi(.LC1)
	lui	a0,%hi(.LC2)
	li	a4,18
	addi	a3,s1,%lo(.LC0)
	addi	a1,a1,%lo(.LC1)
	addi	a0,a0,%lo(.LC2)
	call	bl_printk
.LVL25:
.L23:
	.loc 1 18 362 is_stmt 1 discriminator 1
	.loc 1 18 373 discriminator 1
	.loc 1 19 9 discriminator 1
	.loc 1 19 47 discriminator 1
	.loc 1 19 52 discriminator 1
	.loc 1 19 55 is_stmt 0 discriminator 1
	lw	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,2
	bleu	a4,a5,.L29
.L30:
	.loc 1 19 373 is_stmt 1 discriminator 1
	.loc 1 19 384 discriminator 1
	.loc 1 20 9 discriminator 1
	.loc 1 20 47 discriminator 1
	.loc 1 20 52 discriminator 1
	.loc 1 20 55 is_stmt 0 discriminator 1
	lw	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,3
	bgtu	a4,a5,.L35
.L26:
	.loc 1 20 101
	lw	a4,%lo(_fsymf_level_blog_testcblog_testc3_nopri)(s2)
	li	a5,3
	bgtu	a4,a5,.L32
	.loc 1 20 169 is_stmt 1 discriminator 5
	.loc 1 20 253 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL26:
	.loc 1 20 169 discriminator 5
	beq	a0,zero,.L38
	.loc 1 20 282 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL27:
.L50:
	.loc 1 20 313 discriminator 8
	mv	a2,a0
	.loc 1 20 169 discriminator 8
	li	a4,20
	addi	a3,s1,%lo(.LC0)
	addi	a1,s5,%lo(.LC5)
	addi	a0,s6,%lo(.LC6)
	call	bl_printk
.LVL28:
.L35:
	.loc 1 20 373 is_stmt 1 discriminator 1
	.loc 1 20 384 discriminator 1
	.loc 1 21 9 discriminator 1
	.loc 1 21 47 discriminator 1
	.loc 1 21 52 discriminator 1
	.loc 1 21 55 is_stmt 0 discriminator 1
	lw	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,4
	bgtu	a4,a5,.L22
.L32:
	.loc 1 21 102
	lw	a4,%lo(_fsymf_level_blog_testcblog_testc3_nopri)(s2)
	li	a5,4
	bgtu	a4,a5,.L22
	.loc 1 21 171 is_stmt 1 discriminator 5
	.loc 1 21 257 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL29:
	.loc 1 21 171 discriminator 5
	beq	a0,zero,.L40
	.loc 1 21 286 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL30:
.L51:
	.loc 1 21 317 discriminator 8
	mv	a2,a0
	.loc 1 21 171 discriminator 8
	li	a4,21
	addi	a3,s1,%lo(.LC0)
	addi	a1,s4,%lo(.LC7)
	addi	a0,s3,%lo(.LC8)
	call	bl_printk
.LVL31:
	j	.L22
.L27:
	.loc 1 18 302 discriminator 8
	call	xTaskGetTickCount
.LVL32:
	j	.L48
.L33:
	.loc 1 19 313 discriminator 8
	call	xTaskGetTickCount
.LVL33:
	j	.L49
.L38:
	.loc 1 20 313 discriminator 8
	call	xTaskGetTickCount
.LVL34:
	j	.L50
.L40:
	.loc 1 21 317 discriminator 8
	call	xTaskGetTickCount
.LVL35:
	j	.L51
	.cfi_endproc
.LFE4:
	.size	blog_testc3_entry, .-blog_testc3_entry
	.section	.rodata.blog_testc3_init.str1.4,"aMS",@progbits,1
	.align	2
.LC9:
	.string	"blog_testc3"
	.section	.text.blog_testc3_init,"ax",@progbits
	.align	1
	.globl	blog_testc3_init
	.type	blog_testc3_init, @function
blog_testc3_init:
.LFB5:
	.loc 1 26 1 is_stmt 1
	.cfi_startproc
	.loc 1 27 5
	li	a3,4096
	lui	a1,%hi(blog_testc3_entry)
	lui	a0,%hi(.LC9)
	.loc 1 26 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 27 5
	addi	a3,a3,-2048
	li	a2,0
	addi	a1,a1,%lo(blog_testc3_entry)
	addi	a0,a0,%lo(.LC9)
	.loc 1 26 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 27 5
	call	aos_task_new
.LVL36:
	.loc 1 29 5 is_stmt 1
	.loc 1 30 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	blog_testc3_init, .-blog_testc3_init
	.globl	_fsymf_info_blog_testcblog_testc3_nopri
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC10:
	.string	"blog_testc.blog_testc3_nopri"
	.comm	_fsymf_level_blog_testcblog_testc3_nopri,4,4
	.align	2
.LC11:
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
	.word	.LC11
	.section	.static_blogfile_code.blog_testcblog_testc3_nopri,"a"
	.align	2
	.type	_fsymf_info_blog_testcblog_testc3_nopri, @object
	.size	_fsymf_info_blog_testcblog_testc3_nopri, 8
_fsymf_info_blog_testcblog_testc3_nopri:
	.word	_fsymf_level_blog_testcblog_testc3_nopri
	.word	.LC10
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog_type.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/aos/kernel.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x49d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF34
	.byte	0xc
	.4byte	.LASF35
	.4byte	.LASF36
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
	.4byte	.LASF37
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
	.4byte	.LASF38
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
	.4byte	_fsymf_level_blog_testcblog_testc3_nopri
	.byte	0xd
	.4byte	.LASF27
	.byte	0x5
	.byte	0x54
	.byte	0x17
	.4byte	0x11a
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_info_blog_testcblog_testc3_nopri
	.byte	0xe
	.4byte	.LASF39
	.byte	0x1
	.byte	0x19
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x1bc
	.byte	0xf
	.4byte	.LVL36
	.4byte	0x455
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	blog_testc3_entry
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
	.4byte	.LASF40
	.byte	0x1
	.byte	0x7
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x455
	.byte	0x12
	.string	"arg"
	.byte	0x1
	.byte	0x7
	.byte	0x1e
	.4byte	0x77
	.4byte	.LLST0
	.byte	0x13
	.4byte	.LVL2
	.4byte	0x461
	.4byte	0x1f7
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x1388
	.byte	0
	.byte	0x14
	.4byte	.LVL3
	.4byte	0x46e
	.byte	0x14
	.4byte	.LVL4
	.4byte	0x47a
	.byte	0x13
	.4byte	.LVL5
	.4byte	0x487
	.4byte	0x237
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x10
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x14
	.4byte	.LVL6
	.4byte	0x46e
	.byte	0x14
	.4byte	.LVL7
	.4byte	0x47a
	.byte	0x13
	.4byte	.LVL8
	.4byte	0x487
	.4byte	0x277
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x10
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x3b
	.byte	0
	.byte	0x14
	.4byte	.LVL9
	.4byte	0x46e
	.byte	0x14
	.4byte	.LVL10
	.4byte	0x47a
	.byte	0x13
	.4byte	.LVL11
	.4byte	0x487
	.4byte	0x2b7
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x10
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x3d
	.byte	0
	.byte	0x14
	.4byte	.LVL12
	.4byte	0x46e
	.byte	0x14
	.4byte	.LVL13
	.4byte	0x47a
	.byte	0x13
	.4byte	.LVL14
	.4byte	0x487
	.4byte	0x2f7
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x10
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x3e
	.byte	0
	.byte	0x13
	.4byte	.LVL15
	.4byte	0x461
	.4byte	0x30c
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x1388
	.byte	0
	.byte	0x14
	.4byte	.LVL16
	.4byte	0x46e
	.byte	0x14
	.4byte	.LVL17
	.4byte	0x47a
	.byte	0x13
	.4byte	.LVL18
	.4byte	0x487
	.4byte	0x34c
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x10
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x43
	.byte	0
	.byte	0x14
	.4byte	.LVL19
	.4byte	0x493
	.byte	0x14
	.4byte	.LVL20
	.4byte	0x493
	.byte	0x14
	.4byte	.LVL21
	.4byte	0x493
	.byte	0x14
	.4byte	.LVL22
	.4byte	0x493
	.byte	0x14
	.4byte	.LVL23
	.4byte	0x46e
	.byte	0x14
	.4byte	.LVL24
	.4byte	0x47a
	.byte	0x13
	.4byte	.LVL25
	.4byte	0x487
	.4byte	0x3b0
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x10
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x42
	.byte	0
	.byte	0x14
	.4byte	.LVL26
	.4byte	0x46e
	.byte	0x14
	.4byte	.LVL27
	.4byte	0x47a
	.byte	0x13
	.4byte	.LVL28
	.4byte	0x487
	.4byte	0x3f0
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x10
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x44
	.byte	0
	.byte	0x14
	.4byte	.LVL29
	.4byte	0x46e
	.byte	0x14
	.4byte	.LVL30
	.4byte	0x47a
	.byte	0x13
	.4byte	.LVL31
	.4byte	0x487
	.4byte	0x430
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x10
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x45
	.byte	0
	.byte	0x14
	.4byte	.LVL32
	.4byte	0x493
	.byte	0x14
	.4byte	.LVL33
	.4byte	0x493
	.byte	0x14
	.4byte	.LVL34
	.4byte	0x493
	.byte	0x14
	.4byte	.LVL35
	.4byte	0x493
	.byte	0
	.byte	0x15
	.4byte	.LASF28
	.4byte	.LASF28
	.byte	0x6
	.byte	0x47
	.byte	0x9
	.byte	0x16
	.4byte	.LASF29
	.4byte	.LASF29
	.byte	0x6
	.2byte	0x207
	.byte	0xa
	.byte	0x15
	.4byte	.LASF30
	.4byte	.LASF30
	.byte	0x7
	.byte	0x98
	.byte	0xc
	.byte	0x16
	.4byte	.LASF31
	.4byte	.LASF31
	.byte	0x8
	.2byte	0x558
	.byte	0xc
	.byte	0x15
	.4byte	.LASF32
	.4byte	.LASF32
	.byte	0x9
	.byte	0x81
	.byte	0x6
	.byte	0x16
	.4byte	.LASF33
	.4byte	.LASF33
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
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
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
.LASF39:
	.string	"blog_testc3_init"
.LASF17:
	.string	"BLOG_LEVEL_ASSERT"
.LASF22:
	.string	"blog_info_t"
.LASF36:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/blog_testc"
.LASF25:
	.string	"_fsymc_level_blog_testc"
.LASF1:
	.string	"unsigned char"
.LASF32:
	.string	"bl_printk"
.LASF37:
	.string	"_blog_leve"
.LASF5:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF28:
	.string	"aos_task_new"
.LASF16:
	.string	"BLOG_LEVEL_ERROR"
.LASF15:
	.string	"BLOG_LEVEL_WARN"
.LASF38:
	.string	"_blog_info"
.LASF10:
	.string	"__uint32_t"
.LASF27:
	.string	"_fsymf_info_blog_testcblog_testc3_nopri"
.LASF8:
	.string	"unsigned int"
.LASF12:
	.string	"BLOG_LEVEL_ALL"
.LASF7:
	.string	"long long unsigned int"
.LASF24:
	.string	"_fsymc_info_blog_testc"
.LASF30:
	.string	"xPortIsInsideInterrupt"
.LASF23:
	.string	"BLOG_HARD_DECLARE_DISABLE"
.LASF14:
	.string	"BLOG_LEVEL_INFO"
.LASF20:
	.string	"level"
.LASF34:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF9:
	.string	"char"
.LASF31:
	.string	"xTaskGetTickCountFromISR"
.LASF2:
	.string	"short int"
.LASF35:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog_testc/blog_testc3_nopri.c"
.LASF11:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF40:
	.string	"blog_testc3_entry"
.LASF0:
	.string	"signed char"
.LASF26:
	.string	"_fsymf_level_blog_testcblog_testc3_nopri"
.LASF33:
	.string	"xTaskGetTickCount"
.LASF13:
	.string	"BLOG_LEVEL_DEBUG"
.LASF21:
	.string	"name"
.LASF18:
	.string	"BLOG_LEVEL_NEVER"
.LASF29:
	.string	"aos_msleep"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
