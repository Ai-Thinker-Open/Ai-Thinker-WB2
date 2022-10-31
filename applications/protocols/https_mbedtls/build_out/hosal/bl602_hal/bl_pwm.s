	.file	"bl_pwm.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.bl_pwm_init.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"bl_pwm.c"
	.align	2
.LC1:
	.string	"\033[31mERROR\033[0m"
	.align	2
.LC2:
	.string	"%s (%d)[%s:%4d] arg error. bl_pwm_init freq = %ld\r\n\r\n"
	.section	.text.bl_pwm_init,"ax",@progbits
	.align	1
	.globl	bl_pwm_init
	.type	bl_pwm_init, @function
bl_pwm_init:
.LFB10:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_pwm.c"
	.loc 1 53 1
	.cfi_startproc
.LVL0:
	.loc 1 54 5
	.loc 1 54 8 is_stmt 0
	li	a5,22
	bgtu	a1,a5,.L6
	.loc 1 53 1
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	.loc 1 59 8
	li	a5,798720
	.loc 1 53 1
	sw	s0,40(sp)
	sw	ra,44(sp)
	sw	s1,36(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.loc 1 59 23
	addi	a4,a2,-2000
	.loc 1 59 8
	addi	a5,a5,-720
	mv	s0,a2
	.loc 1 59 5 is_stmt 1
	.loc 1 59 8 is_stmt 0
	bleu	a4,a5,.L3
	.loc 1 60 9 is_stmt 1 discriminator 1
	.loc 1 60 47 discriminator 1
	.loc 1 60 52 discriminator 1
	.loc 1 60 74 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 60 55 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	.loc 1 55 16 discriminator 1
	li	a0,-1
.LVL1:
	.loc 1 60 55 discriminator 1
	bgtu	a4,a5,.L1
	.loc 1 60 118 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalbl_pwm)
	.loc 1 60 97 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalbl_pwm)(a4)
	bgtu	a4,a5,.L1
	.loc 1 60 150 is_stmt 1 discriminator 5
	.loc 1 60 252 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL2:
	.loc 1 60 150 discriminator 5
	beq	a0,zero,.L4
	.loc 1 60 281 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL3:
.L13:
	.loc 1 60 312 discriminator 8
	mv	a2,a0
	.loc 1 60 150 discriminator 8
	lui	a3,%hi(.LC0)
	lui	a1,%hi(.LC1)
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	mv	a5,s0
	li	a4,60
	addi	a3,a3,%lo(.LC0)
	addi	a1,a1,%lo(.LC1)
	call	bl_printk
.LVL4:
	.loc 1 61 16 discriminator 8
	li	a0,-1
.L1:
	.loc 1 69 1
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
.LVL5:
	lw	s1,36(sp)
	.cfi_restore 9
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL6:
.L4:
	.cfi_restore_state
	.loc 1 60 312 discriminator 8
	call	xTaskGetTickCount
.LVL7:
	j	.L13
.LVL8:
.L3:
.LBB6:
.LBB7:
	.loc 1 19 17
	li	a5,8
	sb	a5,5(sp)
	.loc 1 16 15
	li	a5,257
	mv	s1,a0
.LBE7:
.LBE6:
	.loc 1 65 5 is_stmt 1
.LVL9:
.LBB9:
.LBB8:
	.loc 1 12 2
	.loc 1 14 2
	.loc 1 15 2
	.loc 1 16 2
	.loc 1 17 2
	.loc 1 18 5
	.loc 1 16 15 is_stmt 0
	sh	a5,6(sp)
	.loc 1 21 5
	addi	a0,sp,4
.LVL10:
	.loc 1 14 12
	li	a5,256
	sh	a5,8(sp)
	.loc 1 18 17
	sb	a1,4(sp)
	.loc 1 19 5 is_stmt 1
	.loc 1 21 5
	call	GLB_GPIO_Init
.LVL11:
.LBE8:
.LBE9:
	.loc 1 66 5
.LBB10:
.LBB11:
	.loc 1 26 5
	.loc 1 26 21 is_stmt 0
	li	a1,0
	li	a2,24
	addi	a0,sp,8
	call	memset
.LVL12:
	.loc 1 39 5 is_stmt 1
	.loc 1 43 5
	.loc 1 43 29 is_stmt 0
	li	a4,40001536
	addi	a4,a4,-1536
	divu	a2,a4,s0
	.loc 1 46 5
	mv	a0,s1
	.loc 1 44 15
	sw	s1,4(sp)
	.loc 1 43 19
	sh	a2,22(sp)
	.loc 1 44 5 is_stmt 1
	.loc 1 46 5
	call	PWM_Channel_Disable
.LVL13:
	.loc 1 47 5
	addi	a0,sp,4
	call	PWM_Channel_Init
.LVL14:
	.loc 1 49 5
.LBE11:
.LBE10:
	.loc 1 68 12 is_stmt 0
	li	a0,0
	j	.L1
.LVL15:
.L6:
	.cfi_def_cfa_offset 0
	.cfi_restore 1
	.cfi_restore 8
	.cfi_restore 9
	.loc 1 55 16
	li	a0,-1
.LVL16:
	.loc 1 69 1
	ret
	.cfi_endproc
.LFE10:
	.size	bl_pwm_init, .-bl_pwm_init
	.section	.text.bl_pwm_start,"ax",@progbits
	.align	1
	.globl	bl_pwm_start
	.type	bl_pwm_start, @function
bl_pwm_start:
.LFB11:
	.loc 1 72 1 is_stmt 1
	.cfi_startproc
.LVL17:
	.loc 1 73 5
	.loc 1 72 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 73 5
	call	PWM_Channel_Enable
.LVL18:
	.loc 1 74 5 is_stmt 1
	.loc 1 75 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	bl_pwm_start, .-bl_pwm_start
	.section	.text.bl_pwm_stop,"ax",@progbits
	.align	1
	.globl	bl_pwm_stop
	.type	bl_pwm_stop, @function
bl_pwm_stop:
.LFB12:
	.loc 1 78 1 is_stmt 1
	.cfi_startproc
.LVL19:
	.loc 1 79 5
	.loc 1 78 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 79 5
	call	PWM_Channel_Disable
.LVL20:
	.loc 1 80 5 is_stmt 1
	.loc 1 81 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE12:
	.size	bl_pwm_stop, .-bl_pwm_stop
	.section	.text.bl_pwm_set_freq,"ax",@progbits
	.align	1
	.globl	bl_pwm_set_freq
	.type	bl_pwm_set_freq, @function
bl_pwm_set_freq:
.LFB13:
	.loc 1 84 1 is_stmt 1
	.cfi_startproc
.LVL21:
	.loc 1 85 5
	.loc 1 84 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.loc 1 84 1
	mv	s0,a0
	mv	s1,a1
	.loc 1 85 5
	call	PWM_Channel_Disable
.LVL22:
	.loc 1 87 5 is_stmt 1
	.loc 1 88 5
	.loc 1 89 5
	.loc 1 91 5
	.loc 1 87 31 is_stmt 0
	li	a5,40001536
	addi	a5,a5,-1536
	divu	a1,a5,s1
	.loc 1 91 5
	mv	a0,s0
	li	a3,0
	li	a2,0
	slli	a1,a1,16
	srli	a1,a1,16
	call	PWM_Channel_Update
.LVL23:
	.loc 1 92 5 is_stmt 1
	mv	a0,s0
	call	PWM_Channel_Enable
.LVL24:
	.loc 1 94 5
	.loc 1 95 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
.LVL25:
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE13:
	.size	bl_pwm_set_freq, .-bl_pwm_set_freq
	.section	.text.bl_pwm_set_duty,"ax",@progbits
	.align	1
	.globl	bl_pwm_set_duty
	.type	bl_pwm_set_duty, @function
bl_pwm_set_duty:
.LFB14:
	.loc 1 98 1 is_stmt 1
	.cfi_startproc
.LVL26:
	.loc 1 99 5
	.loc 1 100 5
	.loc 1 101 5
	.loc 1 103 5
	.loc 1 98 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	.loc 1 103 5
	addi	a3,sp,14
	addi	a2,sp,12
	addi	a1,sp,10
	.loc 1 98 1
	sw	ra,44(sp)
	sw	s0,40(sp)
	fsw	fs0,28(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 40, -20
	.loc 1 98 1
	mv	s0,a0
	fmv.s	fs0,fa0
	.loc 1 103 5
	call	PWM_Channel_Get
.LVL27:
	.loc 1 105 5 is_stmt 1
	.loc 1 106 35 is_stmt 0
	lhu	a5,10(sp)
	li	a4,100
	.loc 1 108 5
	mv	a0,s0
	.loc 1 106 35
	divu	a5,a5,a4
	.loc 1 108 5
	li	a1,0
	.loc 1 105 16
	sh	zero,12(sp)
	.loc 1 106 5 is_stmt 1
	.loc 1 106 40 is_stmt 0
	fcvt.s.w	fa0,a5
	fmul.s	fa0,fa0,fs0
	.loc 1 106 18
	fcvt.wu.s a5,fa0,rtz
	sh	a5,14(sp)
	.loc 1 108 5 is_stmt 1
	call	PWM_Channel_Set_Threshold1
.LVL28:
	.loc 1 109 5
	lhu	a1,14(sp)
	mv	a0,s0
	call	PWM_Channel_Set_Threshold2
.LVL29:
	.loc 1 110 5
	.loc 1 111 1 is_stmt 0
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	flw	fs0,28(sp)
	.cfi_restore 40
.LVL30:
	li	a0,0
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE14:
	.size	bl_pwm_set_duty, .-bl_pwm_set_duty
	.section	.text.bl_pwm_get_duty,"ax",@progbits
	.align	1
	.globl	bl_pwm_get_duty
	.type	bl_pwm_get_duty, @function
bl_pwm_get_duty:
.LFB15:
	.loc 1 114 1 is_stmt 1
	.cfi_startproc
.LVL31:
	.loc 1 115 5
	.loc 1 116 5
	.loc 1 117 5
	.loc 1 119 5
	.loc 1 119 8 is_stmt 0
	beq	a1,zero,.L24
	.loc 1 114 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	.loc 1 122 5
	addi	a3,sp,14
	.cfi_offset 8, -8
	mv	s0,a1
	.loc 1 122 5 is_stmt 1
	addi	a2,sp,12
	addi	a1,sp,10
.LVL32:
	.loc 1 114 1 is_stmt 0
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 122 5
	call	PWM_Channel_Get
.LVL33:
	.loc 1 124 5 is_stmt 1
	.loc 1 124 15 is_stmt 0
	lhu	a5,14(sp)
	.loc 1 126 12
	li	a0,0
	.loc 1 124 15
	fcvt.s.wu	fa5,a5
	.loc 1 124 33
	lui	a5,%hi(.LC3)
	flw	fa4,%lo(.LC3)(a5)
	.loc 1 124 39
	lhu	a5,10(sp)
	.loc 1 124 33
	fmul.s	fa5,fa5,fa4
	.loc 1 124 39
	fcvt.s.w	fa4,a5
	fdiv.s	fa5,fa5,fa4
	.loc 1 124 13
	fsw	fa5,0(s0)
	.loc 1 126 5 is_stmt 1
	.loc 1 127 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL34:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL35:
.L24:
	.loc 1 120 16
	li	a0,-1
.LVL36:
	.loc 1 127 1
	ret
	.cfi_endproc
.LFE15:
	.size	bl_pwm_get_duty, .-bl_pwm_get_duty
	.globl	_fsymf_info_hosalbl_pwm
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC4:
	.string	"hosal.bl_pwm"
	.comm	_fsymf_level_hosalbl_pwm,4,4
	.align	2
.LC5:
	.string	"hosal"
	.weak	_fsymc_level_hosal
	.section	.srodata.cst4,"aM",@progbits,4
	.align	2
.LC3:
	.word	1120403456
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
	.word	.LC5
	.section	.static_blogfile_code.hosalbl_pwm,"a"
	.align	2
	.type	_fsymf_info_hosalbl_pwm, @object
	.size	_fsymf_info_hosalbl_pwm, 8
_fsymf_info_hosalbl_pwm:
	.word	_fsymf_level_hosalbl_pwm
	.word	.LC4
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_pwm.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_gpio.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog_type.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_glb.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 10 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_log.h"
	.file 11 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x87b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF108
	.byte	0xc
	.4byte	.LASF109
	.4byte	.LASF110
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF1
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x28
	.byte	0x12
	.4byte	0x4d
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.byte	0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x67
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.byte	0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x7a
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF10
	.byte	0x3
	.4byte	.LASF11
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x92
	.byte	0x4
	.4byte	0x81
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF13
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x6
	.byte	0x4
	.4byte	0xad
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0x7
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x3
	.byte	0x39
	.byte	0xe
	.4byte	0xe7
	.byte	0x8
	.4byte	.LASF15
	.byte	0
	.byte	0x8
	.4byte	.LASF16
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.byte	0x2
	.byte	0x8
	.4byte	.LASF18
	.byte	0x3
	.byte	0x8
	.4byte	.LASF19
	.byte	0x4
	.byte	0x8
	.4byte	.LASF20
	.byte	0x5
	.byte	0
	.byte	0x3
	.4byte	.LASF21
	.byte	0x3
	.byte	0x40
	.byte	0x2
	.4byte	0xb4
	.byte	0x7
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x3
	.byte	0x45
	.byte	0xe
	.4byte	0x114
	.byte	0x8
	.4byte	.LASF22
	.byte	0
	.byte	0x8
	.4byte	.LASF23
	.byte	0x1
	.byte	0x8
	.4byte	.LASF24
	.byte	0x2
	.byte	0
	.byte	0x3
	.4byte	.LASF25
	.byte	0x3
	.byte	0x49
	.byte	0x2
	.4byte	0xf3
	.byte	0x7
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x3
	.byte	0x4e
	.byte	0xe
	.4byte	0x13b
	.byte	0x8
	.4byte	.LASF26
	.byte	0
	.byte	0x8
	.4byte	.LASF27
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF28
	.byte	0x3
	.byte	0x51
	.byte	0x2
	.4byte	0x120
	.byte	0x7
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x3
	.byte	0x56
	.byte	0xe
	.4byte	0x162
	.byte	0x8
	.4byte	.LASF29
	.byte	0
	.byte	0x8
	.4byte	.LASF30
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF31
	.byte	0x3
	.byte	0x59
	.byte	0x2
	.4byte	0x147
	.byte	0x9
	.byte	0x1c
	.byte	0x3
	.byte	0x66
	.byte	0x9
	.4byte	0x1ec
	.byte	0xa
	.string	"ch"
	.byte	0x3
	.byte	0x67
	.byte	0x14
	.4byte	0xe7
	.byte	0
	.byte	0xa
	.string	"clk"
	.byte	0x3
	.byte	0x68
	.byte	0x12
	.4byte	0x114
	.byte	0x4
	.byte	0xb
	.4byte	.LASF32
	.byte	0x3
	.byte	0x69
	.byte	0x18
	.4byte	0x13b
	.byte	0x8
	.byte	0xa
	.string	"pol"
	.byte	0x3
	.byte	0x6a
	.byte	0x17
	.4byte	0x162
	.byte	0xc
	.byte	0xb
	.4byte	.LASF33
	.byte	0x3
	.byte	0x6b
	.byte	0xe
	.4byte	0x6e
	.byte	0x10
	.byte	0xb
	.4byte	.LASF34
	.byte	0x3
	.byte	0x6c
	.byte	0xe
	.4byte	0x6e
	.byte	0x12
	.byte	0xb
	.4byte	.LASF35
	.byte	0x3
	.byte	0x6d
	.byte	0xe
	.4byte	0x6e
	.byte	0x14
	.byte	0xb
	.4byte	.LASF36
	.byte	0x3
	.byte	0x6e
	.byte	0xe
	.4byte	0x6e
	.byte	0x16
	.byte	0xb
	.4byte	.LASF37
	.byte	0x3
	.byte	0x6f
	.byte	0xe
	.4byte	0x6e
	.byte	0x18
	.byte	0
	.byte	0x3
	.4byte	.LASF38
	.byte	0x3
	.byte	0x70
	.byte	0x2
	.4byte	0x16e
	.byte	0x7
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x4
	.byte	0x4c
	.byte	0x1
	.4byte	0x297
	.byte	0x8
	.4byte	.LASF39
	.byte	0
	.byte	0x8
	.4byte	.LASF40
	.byte	0x1
	.byte	0x8
	.4byte	.LASF41
	.byte	0x2
	.byte	0x8
	.4byte	.LASF42
	.byte	0x3
	.byte	0x8
	.4byte	.LASF43
	.byte	0x4
	.byte	0x8
	.4byte	.LASF44
	.byte	0x5
	.byte	0x8
	.4byte	.LASF45
	.byte	0x6
	.byte	0x8
	.4byte	.LASF46
	.byte	0x7
	.byte	0x8
	.4byte	.LASF47
	.byte	0x8
	.byte	0x8
	.4byte	.LASF48
	.byte	0x9
	.byte	0x8
	.4byte	.LASF49
	.byte	0xa
	.byte	0x8
	.4byte	.LASF50
	.byte	0xb
	.byte	0x8
	.4byte	.LASF51
	.byte	0xc
	.byte	0x8
	.4byte	.LASF52
	.byte	0xd
	.byte	0x8
	.4byte	.LASF53
	.byte	0xe
	.byte	0x8
	.4byte	.LASF54
	.byte	0xf
	.byte	0x8
	.4byte	.LASF55
	.byte	0x10
	.byte	0x8
	.4byte	.LASF56
	.byte	0x11
	.byte	0x8
	.4byte	.LASF57
	.byte	0x12
	.byte	0x8
	.4byte	.LASF58
	.byte	0x13
	.byte	0x8
	.4byte	.LASF59
	.byte	0x14
	.byte	0x8
	.4byte	.LASF60
	.byte	0x15
	.byte	0x8
	.4byte	.LASF61
	.byte	0x16
	.byte	0x8
	.4byte	.LASF62
	.byte	0x17
	.byte	0
	.byte	0x9
	.byte	0x6
	.byte	0x4
	.byte	0x7e
	.byte	0x9
	.4byte	0x2ef
	.byte	0xb
	.4byte	.LASF63
	.byte	0x4
	.byte	0x80
	.byte	0xd
	.4byte	0x5b
	.byte	0
	.byte	0xb
	.4byte	.LASF64
	.byte	0x4
	.byte	0x81
	.byte	0xd
	.4byte	0x5b
	.byte	0x1
	.byte	0xb
	.4byte	.LASF65
	.byte	0x4
	.byte	0x82
	.byte	0xd
	.4byte	0x5b
	.byte	0x2
	.byte	0xb
	.4byte	.LASF66
	.byte	0x4
	.byte	0x83
	.byte	0xd
	.4byte	0x5b
	.byte	0x3
	.byte	0xb
	.4byte	.LASF67
	.byte	0x4
	.byte	0x84
	.byte	0xd
	.4byte	0x5b
	.byte	0x4
	.byte	0xb
	.4byte	.LASF68
	.byte	0x4
	.byte	0x85
	.byte	0xd
	.4byte	0x5b
	.byte	0x5
	.byte	0
	.byte	0x3
	.4byte	.LASF69
	.byte	0x4
	.byte	0x86
	.byte	0x2
	.4byte	0x297
	.byte	0xc
	.4byte	.LASF111
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x5
	.byte	0x22
	.byte	0xe
	.4byte	0x338
	.byte	0x8
	.4byte	.LASF70
	.byte	0
	.byte	0x8
	.4byte	.LASF71
	.byte	0x1
	.byte	0x8
	.4byte	.LASF72
	.byte	0x2
	.byte	0x8
	.4byte	.LASF73
	.byte	0x3
	.byte	0x8
	.4byte	.LASF74
	.byte	0x4
	.byte	0x8
	.4byte	.LASF75
	.byte	0x5
	.byte	0x8
	.4byte	.LASF76
	.byte	0x6
	.byte	0
	.byte	0x3
	.4byte	.LASF77
	.byte	0x5
	.byte	0x2a
	.byte	0x3
	.4byte	0x2fb
	.byte	0xd
	.4byte	.LASF112
	.byte	0x8
	.byte	0x5
	.byte	0x2c
	.byte	0x10
	.4byte	0x36c
	.byte	0xb
	.4byte	.LASF78
	.byte	0x5
	.byte	0x2d
	.byte	0x13
	.4byte	0x36c
	.byte	0
	.byte	0xb
	.4byte	.LASF79
	.byte	0x5
	.byte	0x2e
	.byte	0xb
	.4byte	0xa7
	.byte	0x4
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x338
	.byte	0x3
	.4byte	.LASF80
	.byte	0x5
	.byte	0x2f
	.byte	0x3
	.4byte	0x344
	.byte	0x4
	.4byte	0x372
	.byte	0xe
	.4byte	.LASF81
	.byte	0x6
	.byte	0x38
	.byte	0x1b
	.4byte	0x8d
	.byte	0x5
	.byte	0x3
	.4byte	BLOG_HARD_DECLARE_DISABLE
	.byte	0xf
	.4byte	.LASF83
	.byte	0x6
	.byte	0x45
	.byte	0x12
	.4byte	0x338
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_level_hosal
	.byte	0xe
	.4byte	.LASF82
	.byte	0x6
	.byte	0x46
	.byte	0x1e
	.4byte	0x37e
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_info_hosal
	.byte	0xf
	.4byte	.LASF84
	.byte	0x6
	.byte	0x53
	.byte	0x12
	.4byte	0x338
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_level_hosalbl_pwm
	.byte	0xf
	.4byte	.LASF85
	.byte	0x6
	.byte	0x54
	.byte	0x17
	.4byte	0x37e
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_info_hosalbl_pwm
	.byte	0x10
	.4byte	.LASF87
	.byte	0x1
	.byte	0x71
	.byte	0x9
	.4byte	0x41
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x460
	.byte	0x11
	.string	"id"
	.byte	0x1
	.byte	0x71
	.byte	0x21
	.4byte	0x5b
	.4byte	.LLST13
	.byte	0x12
	.4byte	.LASF86
	.byte	0x1
	.byte	0x71
	.byte	0x2c
	.4byte	0x460
	.4byte	.LLST14
	.byte	0xe
	.4byte	.LASF34
	.byte	0x1
	.byte	0x73
	.byte	0xe
	.4byte	0x6e
	.byte	0x2
	.byte	0x91
	.byte	0x6a
	.byte	0xe
	.4byte	.LASF35
	.byte	0x1
	.byte	0x74
	.byte	0xe
	.4byte	0x6e
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0xe
	.4byte	.LASF36
	.byte	0x1
	.byte	0x75
	.byte	0xe
	.4byte	0x6e
	.byte	0x2
	.byte	0x91
	.byte	0x6e
	.byte	0x13
	.4byte	.LVL33
	.4byte	0x7e0
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x6a
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x14
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x91
	.byte	0x6e
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x2c
	.byte	0x10
	.4byte	.LASF88
	.byte	0x1
	.byte	0x61
	.byte	0x9
	.4byte	0x41
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x51c
	.byte	0x11
	.string	"id"
	.byte	0x1
	.byte	0x61
	.byte	0x21
	.4byte	0x5b
	.4byte	.LLST11
	.byte	0x12
	.4byte	.LASF89
	.byte	0x1
	.byte	0x61
	.byte	0x2b
	.4byte	0x2c
	.4byte	.LLST12
	.byte	0xe
	.4byte	.LASF34
	.byte	0x1
	.byte	0x63
	.byte	0xe
	.4byte	0x6e
	.byte	0x2
	.byte	0x91
	.byte	0x5a
	.byte	0xe
	.4byte	.LASF35
	.byte	0x1
	.byte	0x64
	.byte	0xe
	.4byte	0x6e
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0xe
	.4byte	.LASF36
	.byte	0x1
	.byte	0x65
	.byte	0xe
	.4byte	0x6e
	.byte	0x2
	.byte	0x91
	.byte	0x5e
	.byte	0x15
	.4byte	.LVL27
	.4byte	0x7e0
	.4byte	0x4f2
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x5a
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x14
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x91
	.byte	0x5e
	.byte	0
	.byte	0x15
	.4byte	.LVL28
	.4byte	0x7ec
	.4byte	0x50b
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x13
	.4byte	.LVL29
	.4byte	0x7f8
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LASF90
	.byte	0x1
	.byte	0x53
	.byte	0x9
	.4byte	0x41
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x5d8
	.byte	0x11
	.string	"id"
	.byte	0x1
	.byte	0x53
	.byte	0x21
	.4byte	0x5b
	.4byte	.LLST8
	.byte	0x12
	.4byte	.LASF91
	.byte	0x1
	.byte	0x53
	.byte	0x2e
	.4byte	0x81
	.4byte	.LLST9
	.byte	0x16
	.4byte	.LASF34
	.byte	0x1
	.byte	0x57
	.byte	0xe
	.4byte	0x6e
	.4byte	.LLST10
	.byte	0x17
	.4byte	.LASF35
	.byte	0x1
	.byte	0x58
	.byte	0xe
	.4byte	0x6e
	.byte	0
	.byte	0x17
	.4byte	.LASF36
	.byte	0x1
	.byte	0x59
	.byte	0xe
	.4byte	0x6e
	.byte	0
	.byte	0x15
	.4byte	.LVL22
	.4byte	0x804
	.4byte	0x593
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL23
	.4byte	0x810
	.4byte	0x5c7
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x12
	.byte	0xc
	.4byte	0x2625a00
	.byte	0xf7
	.byte	0x25
	.byte	0x79
	.byte	0
	.byte	0xf7
	.byte	0x25
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0x14
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x13
	.4byte	.LVL24
	.4byte	0x81c
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LASF92
	.byte	0x1
	.byte	0x4d
	.byte	0x9
	.4byte	0x41
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x60b
	.byte	0x11
	.string	"id"
	.byte	0x1
	.byte	0x4d
	.byte	0x1d
	.4byte	0x5b
	.4byte	.LLST7
	.byte	0x18
	.4byte	.LVL20
	.4byte	0x804
	.byte	0
	.byte	0x10
	.4byte	.LASF93
	.byte	0x1
	.byte	0x47
	.byte	0x9
	.4byte	0x41
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x63e
	.byte	0x11
	.string	"id"
	.byte	0x1
	.byte	0x47
	.byte	0x1e
	.4byte	0x5b
	.4byte	.LLST6
	.byte	0x18
	.4byte	.LVL18
	.4byte	0x81c
	.byte	0
	.byte	0x10
	.4byte	.LASF94
	.byte	0x1
	.byte	0x34
	.byte	0x9
	.4byte	0x41
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x785
	.byte	0x11
	.string	"id"
	.byte	0x1
	.byte	0x34
	.byte	0x1d
	.4byte	0x5b
	.4byte	.LLST0
	.byte	0x11
	.string	"pin"
	.byte	0x1
	.byte	0x34
	.byte	0x29
	.4byte	0x5b
	.4byte	.LLST1
	.byte	0x12
	.4byte	.LASF91
	.byte	0x1
	.byte	0x34
	.byte	0x37
	.4byte	0x81
	.4byte	.LLST2
	.byte	0x19
	.4byte	0x7ba
	.4byte	.LBB6
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x41
	.byte	0x5
	.4byte	0x6c3
	.byte	0x1a
	.4byte	0x7c7
	.4byte	.LLST3
	.byte	0x1b
	.4byte	.Ldebug_ranges0+0
	.byte	0x1c
	.4byte	0x7d3
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x13
	.4byte	.LVL11
	.4byte	0x828
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	0x785
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.byte	0x1
	.byte	0x42
	.byte	0x5
	.4byte	0x734
	.byte	0x1a
	.4byte	0x7a1
	.4byte	.LLST4
	.byte	0x1a
	.4byte	0x796
	.4byte	.LLST5
	.byte	0x1c
	.4byte	0x7ad
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x15
	.4byte	.LVL12
	.4byte	0x835
	.4byte	0x70f
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x48
	.byte	0
	.byte	0x15
	.4byte	.LVL13
	.4byte	0x804
	.4byte	0x723
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LVL14
	.4byte	0x840
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL2
	.4byte	0x84c
	.byte	0x18
	.4byte	.LVL3
	.4byte	0x858
	.byte	0x15
	.4byte	.LVL4
	.4byte	0x865
	.4byte	0x77b
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x14
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x14
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.byte	0x14
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL7
	.4byte	0x871
	.byte	0
	.byte	0x1e
	.4byte	.LASF113
	.byte	0x1
	.byte	0x18
	.byte	0x10
	.4byte	0x41
	.byte	0x1
	.4byte	0x7ba
	.byte	0x1f
	.string	"id"
	.byte	0x1
	.byte	0x18
	.byte	0x21
	.4byte	0x5b
	.byte	0x20
	.4byte	.LASF91
	.byte	0x1
	.byte	0x18
	.byte	0x2e
	.4byte	0x81
	.byte	0x21
	.4byte	.LASF95
	.byte	0x1
	.byte	0x1a
	.byte	0x15
	.4byte	0x1ec
	.byte	0
	.byte	0x22
	.4byte	.LASF114
	.byte	0x1
	.byte	0xa
	.byte	0xd
	.byte	0x1
	.4byte	0x7e0
	.byte	0x1f
	.string	"pin"
	.byte	0x1
	.byte	0xa
	.byte	0x1f
	.4byte	0x5b
	.byte	0x23
	.string	"cfg"
	.byte	0x1
	.byte	0xc
	.byte	0x14
	.4byte	0x2ef
	.byte	0
	.byte	0x24
	.4byte	.LASF96
	.4byte	.LASF96
	.byte	0x3
	.byte	0xb4
	.byte	0x6
	.byte	0x24
	.4byte	.LASF97
	.4byte	.LASF97
	.byte	0x3
	.byte	0xb1
	.byte	0x6
	.byte	0x24
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0x3
	.byte	0xb2
	.byte	0x6
	.byte	0x24
	.4byte	.LASF99
	.4byte	.LASF99
	.byte	0x3
	.byte	0xb7
	.byte	0x6
	.byte	0x24
	.4byte	.LASF100
	.4byte	.LASF100
	.byte	0x3
	.byte	0xaf
	.byte	0x6
	.byte	0x24
	.4byte	.LASF101
	.4byte	.LASF101
	.byte	0x3
	.byte	0xb6
	.byte	0x6
	.byte	0x25
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0x7
	.2byte	0x276
	.byte	0xd
	.byte	0x26
	.4byte	.LASF115
	.4byte	.LASF116
	.byte	0xb
	.byte	0
	.byte	0x24
	.4byte	.LASF103
	.4byte	.LASF103
	.byte	0x3
	.byte	0xae
	.byte	0xd
	.byte	0x24
	.4byte	.LASF104
	.4byte	.LASF104
	.byte	0x8
	.byte	0x98
	.byte	0xc
	.byte	0x25
	.4byte	.LASF105
	.4byte	.LASF105
	.byte	0x9
	.2byte	0x558
	.byte	0xc
	.byte	0x24
	.4byte	.LASF106
	.4byte	.LASF106
	.byte	0xa
	.byte	0x81
	.byte	0x6
	.byte	0x25
	.4byte	.LASF107
	.4byte	.LASF107
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
	.byte	0xd
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
	.byte	0x2
	.byte	0x18
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
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
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
	.byte	0x17
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
	.byte	0x1c
	.byte	0xb
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1d
	.byte	0x1d
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x58
	.byte	0xb
	.byte	0x59
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1e
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
	.byte	0x1f
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
	.byte	0x20
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
	.byte	0x21
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
	.byte	0
	.byte	0
	.byte	0x22
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x23
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
	.byte	0
	.byte	0
	.byte	0x24
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
	.byte	0x25
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
	.byte	0x26
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST13:
	.4byte	.LVL31
	.4byte	.LVL33-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL33-1
	.4byte	.LVL35
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL36
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL26
	.4byte	.LVL27-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL27-1
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL26
	.4byte	.LVL27-1
	.2byte	0x2
	.byte	0x90
	.byte	0x2a
	.4byte	.LVL27-1
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x90
	.byte	0x28
	.4byte	.LVL30
	.4byte	.LFE14
	.2byte	0x6
	.byte	0xf3
	.byte	0x3
	.byte	0xf5
	.byte	0x2a
	.byte	0x2c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL21
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL22-1
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL21
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL22-1
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL25
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0xf
	.byte	0xc
	.4byte	0x2625a00
	.byte	0xf7
	.byte	0x25
	.byte	0x79
	.byte	0
	.byte	0xf7
	.byte	0x25
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LFE13
	.2byte	0x10
	.byte	0xc
	.4byte	0x2625a00
	.byte	0xf7
	.byte	0x25
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0xf7
	.byte	0x25
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL19
	.4byte	.LVL20-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20-1
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL17
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18-1
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2-1
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL11-1
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL2-1
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL15
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL9
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL11-1
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL11
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL11
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x44
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	0
	.4byte	0
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF112:
	.string	"_blog_info"
.LASF92:
	.string	"bl_pwm_stop"
.LASF50:
	.string	"GLB_GPIO_PIN_11"
.LASF101:
	.string	"PWM_Channel_Enable"
.LASF96:
	.string	"PWM_Channel_Get"
.LASF88:
	.string	"bl_pwm_set_duty"
.LASF102:
	.string	"GLB_GPIO_Init"
.LASF46:
	.string	"GLB_GPIO_PIN_7"
.LASF31:
	.string	"PWM_Polarity_Type"
.LASF68:
	.string	"smtCtrl"
.LASF37:
	.string	"intPulseCnt"
.LASF5:
	.string	"long long int"
.LASF100:
	.string	"PWM_Channel_Update"
.LASF20:
	.string	"PWM_CH_MAX"
.LASF3:
	.string	"short int"
.LASF116:
	.string	"__builtin_memset"
.LASF55:
	.string	"GLB_GPIO_PIN_16"
.LASF7:
	.string	"uint8_t"
.LASF97:
	.string	"PWM_Channel_Set_Threshold1"
.LASF98:
	.string	"PWM_Channel_Set_Threshold2"
.LASF58:
	.string	"GLB_GPIO_PIN_19"
.LASF104:
	.string	"xPortIsInsideInterrupt"
.LASF80:
	.string	"blog_info_t"
.LASF64:
	.string	"gpioFun"
.LASF62:
	.string	"GLB_GPIO_PIN_MAX"
.LASF111:
	.string	"_blog_leve"
.LASF99:
	.string	"PWM_Channel_Disable"
.LASF1:
	.string	"float"
.LASF85:
	.string	"_fsymf_info_hosalbl_pwm"
.LASF49:
	.string	"GLB_GPIO_PIN_10"
.LASF91:
	.string	"freq"
.LASF51:
	.string	"GLB_GPIO_PIN_12"
.LASF52:
	.string	"GLB_GPIO_PIN_13"
.LASF53:
	.string	"GLB_GPIO_PIN_14"
.LASF54:
	.string	"GLB_GPIO_PIN_15"
.LASF81:
	.string	"BLOG_HARD_DECLARE_DISABLE"
.LASF56:
	.string	"GLB_GPIO_PIN_17"
.LASF57:
	.string	"GLB_GPIO_PIN_18"
.LASF115:
	.string	"memset"
.LASF48:
	.string	"GLB_GPIO_PIN_9"
.LASF33:
	.string	"clkDiv"
.LASF82:
	.string	"_fsymc_info_hosal"
.LASF35:
	.string	"threshold1"
.LASF36:
	.string	"threshold2"
.LASF34:
	.string	"period"
.LASF67:
	.string	"drive"
.LASF95:
	.string	"pwmCfg"
.LASF107:
	.string	"xTaskGetTickCount"
.LASF69:
	.string	"GLB_GPIO_Cfg_Type"
.LASF24:
	.string	"PWM_CLK_32K"
.LASF79:
	.string	"name"
.LASF8:
	.string	"unsigned char"
.LASF89:
	.string	"duty"
.LASF25:
	.string	"PWM_Clk_Type"
.LASF74:
	.string	"BLOG_LEVEL_ERROR"
.LASF2:
	.string	"signed char"
.LASF13:
	.string	"long long unsigned int"
.LASF22:
	.string	"PWM_CLK_XCLK"
.LASF11:
	.string	"uint32_t"
.LASF75:
	.string	"BLOG_LEVEL_ASSERT"
.LASF9:
	.string	"uint16_t"
.LASF94:
	.string	"bl_pwm_init"
.LASF72:
	.string	"BLOG_LEVEL_INFO"
.LASF38:
	.string	"PWM_CH_CFG_Type"
.LASF43:
	.string	"GLB_GPIO_PIN_4"
.LASF59:
	.string	"GLB_GPIO_PIN_20"
.LASF60:
	.string	"GLB_GPIO_PIN_21"
.LASF61:
	.string	"GLB_GPIO_PIN_22"
.LASF15:
	.string	"PWM_CH0"
.LASF16:
	.string	"PWM_CH1"
.LASF17:
	.string	"PWM_CH2"
.LASF18:
	.string	"PWM_CH3"
.LASF19:
	.string	"PWM_CH4"
.LASF109:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_pwm.c"
.LASF30:
	.string	"PWM_POL_INVERT"
.LASF28:
	.string	"PWM_Stop_Mode_Type"
.LASF14:
	.string	"char"
.LASF4:
	.string	"long int"
.LASF103:
	.string	"PWM_Channel_Init"
.LASF6:
	.string	"int32_t"
.LASF10:
	.string	"short unsigned int"
.LASF86:
	.string	"p_duty"
.LASF26:
	.string	"PWM_STOP_ABRUPT"
.LASF70:
	.string	"BLOG_LEVEL_ALL"
.LASF12:
	.string	"long unsigned int"
.LASF65:
	.string	"gpioMode"
.LASF113:
	.string	"pwm_init"
.LASF21:
	.string	"PWM_CH_ID_Type"
.LASF39:
	.string	"GLB_GPIO_PIN_0"
.LASF27:
	.string	"PWM_STOP_GRACEFUL"
.LASF40:
	.string	"GLB_GPIO_PIN_1"
.LASF110:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/hosal"
.LASF41:
	.string	"GLB_GPIO_PIN_2"
.LASF114:
	.string	"gpio_init"
.LASF42:
	.string	"GLB_GPIO_PIN_3"
.LASF83:
	.string	"_fsymc_level_hosal"
.LASF105:
	.string	"xTaskGetTickCountFromISR"
.LASF93:
	.string	"bl_pwm_start"
.LASF78:
	.string	"level"
.LASF44:
	.string	"GLB_GPIO_PIN_5"
.LASF45:
	.string	"GLB_GPIO_PIN_6"
.LASF66:
	.string	"pullType"
.LASF32:
	.string	"stopMode"
.LASF84:
	.string	"_fsymf_level_hosalbl_pwm"
.LASF47:
	.string	"GLB_GPIO_PIN_8"
.LASF106:
	.string	"bl_printk"
.LASF73:
	.string	"BLOG_LEVEL_WARN"
.LASF76:
	.string	"BLOG_LEVEL_NEVER"
.LASF77:
	.string	"blog_level_t"
.LASF90:
	.string	"bl_pwm_set_freq"
.LASF29:
	.string	"PWM_POL_NORMAL"
.LASF63:
	.string	"gpioPin"
.LASF71:
	.string	"BLOG_LEVEL_DEBUG"
.LASF0:
	.string	"unsigned int"
.LASF87:
	.string	"bl_pwm_get_duty"
.LASF23:
	.string	"PWM_CLK_BCLK"
.LASF108:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
