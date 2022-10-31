	.file	"hosal_pwm.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.hosal_pwm_init.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"hosal_pwm.c"
	.align	2
.LC2:
	.string	"\033[31mERROR\033[0m"
	.align	2
.LC3:
	.string	"%s (%d)[%s:%4d] arg error.\r\n\r\n"
	.align	2
.LC4:
	.string	"%s (%d)[%s:%4d] error:pwm pin and port do not correspond!  mapping rules: pwm_ch = pin %% 5\r\n\r\n"
	.section	.text.hosal_pwm_init,"ax",@progbits
	.align	1
	.globl	hosal_pwm_init
	.type	hosal_pwm_init, @function
hosal_pwm_init:
.LFB8:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/hosal_pwm.c"
	.loc 1 21 1
	.cfi_startproc
.LVL0:
	.loc 1 22 5
	.loc 1 23 2
	.loc 1 23 20 is_stmt 0
	lui	a5,%hi(.LC0)
	addi	a5,a5,%lo(.LC0)
	lw	a4,0(a5)
	lhu	a5,4(a5)
	.loc 1 21 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.loc 1 23 20
	sw	a4,8(sp)
	sh	a5,12(sp)
	.loc 1 32 5 is_stmt 1
	.loc 1 32 8 is_stmt 0
	beq	a0,zero,.L2
	.loc 1 32 26 discriminator 1
	lbu	s1,0(a0)
	.loc 1 32 20 discriminator 1
	li	a5,4
	mv	s0,a0
	bleu	s1,a5,.L3
.L2:
	.loc 1 33 9 is_stmt 1 discriminator 1
	.loc 1 33 47 discriminator 1
	.loc 1 33 52 discriminator 1
	.loc 1 33 74 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 33 55 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	.loc 1 34 16 discriminator 1
	li	a0,-1
.LVL1:
	.loc 1 33 55 discriminator 1
	bgtu	a4,a5,.L1
	.loc 1 33 118 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhosal_pwm)
	.loc 1 33 97 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhosal_pwm)(a4)
	bgtu	a4,a5,.L1
	.loc 1 33 153 is_stmt 1 discriminator 5
	.loc 1 33 232 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL2:
	.loc 1 33 153 discriminator 5
	beq	a0,zero,.L5
	.loc 1 33 261 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL3:
.L18:
	.loc 1 33 292 discriminator 8
	mv	a2,a0
	.loc 1 33 153 discriminator 8
	lui	a3,%hi(.LC1)
	lui	a1,%hi(.LC2)
	lui	a0,%hi(.LC3)
	li	a4,33
	addi	a3,a3,%lo(.LC1)
	addi	a1,a1,%lo(.LC2)
	addi	a0,a0,%lo(.LC3)
.L20:
	.loc 1 38 153 discriminator 10
	call	bl_printk
.LVL4:
	.loc 1 39 16 discriminator 10
	li	a0,-1
.L1:
	.loc 1 48 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.L5:
	.cfi_restore_state
	.loc 1 33 292 discriminator 8
	call	xTaskGetTickCount
.LVL5:
	j	.L18
.LVL6:
.L3:
	.loc 1 36 5 is_stmt 1
	.loc 1 36 21 is_stmt 0
	lbu	a3,4(a0)
	.loc 1 36 8
	li	a4,5
	remu	a4,a3,a4
.LVL7:
	.loc 1 37 5 is_stmt 1
	.loc 1 37 8 is_stmt 0
	beq	s1,a4,.L7
	.loc 1 38 9 is_stmt 1 discriminator 1
	.loc 1 38 47 discriminator 1
	.loc 1 38 52 discriminator 1
	.loc 1 38 74 is_stmt 0 discriminator 1
	lui	a4,%hi(_fsymc_level_hosal)
.LVL8:
	.loc 1 38 55 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a4)
	.loc 1 34 16 discriminator 1
	li	a0,-1
	.loc 1 38 55 discriminator 1
	bgtu	a4,a5,.L1
	.loc 1 38 118 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhosal_pwm)
	.loc 1 38 97 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhosal_pwm)(a4)
	bgtu	a4,a5,.L1
	.loc 1 38 153 is_stmt 1 discriminator 5
	.loc 1 38 297 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL9:
	.loc 1 38 153 discriminator 5
	beq	a0,zero,.L8
	.loc 1 38 326 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL10:
.L19:
	.loc 1 38 357 discriminator 8
	mv	a2,a0
	.loc 1 38 153 discriminator 8
	lui	a3,%hi(.LC1)
	lui	a1,%hi(.LC2)
	lui	a0,%hi(.LC4)
	li	a4,38
	addi	a3,a3,%lo(.LC1)
	addi	a1,a1,%lo(.LC2)
	addi	a0,a0,%lo(.LC4)
	j	.L20
.L8:
	.loc 1 38 357 discriminator 8
	call	xTaskGetTickCount
.LVL11:
	j	.L19
.LVL12:
.L7:
	.loc 1 41 5 is_stmt 1
	.loc 1 42 5 is_stmt 0
	addi	a0,sp,8
	.loc 1 41 17
	sb	a3,8(sp)
	.loc 1 42 5 is_stmt 1
	call	GLB_GPIO_Init
.LVL13:
	.loc 1 44 5
	mv	a0,s1
	call	PWM_Channel_Disable
.LVL14:
	.loc 1 45 5
	.loc 1 45 79 is_stmt 0
	lw	a2,8(s0)
	li	a5,100
	.loc 1 45 5
	lw	a1,12(s0)
	.loc 1 45 79
	divu	a2,a2,a5
	.loc 1 45 5
	mv	a0,s1
	andi	a2,a2,0xff
	call	PWM_Smart_Configure
.LVL15:
	.loc 1 47 5 is_stmt 1
	.loc 1 47 12 is_stmt 0
	li	a0,0
	j	.L1
	.cfi_endproc
.LFE8:
	.size	hosal_pwm_init, .-hosal_pwm_init
	.section	.text.hosal_pwm_start,"ax",@progbits
	.align	1
	.globl	hosal_pwm_start
	.type	hosal_pwm_start, @function
hosal_pwm_start:
.LFB9:
	.loc 1 58 1 is_stmt 1
	.cfi_startproc
.LVL16:
	.loc 1 59 5
	.loc 1 61 5
	.loc 1 58 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 61 8
	beq	a0,zero,.L22
	.loc 1 61 26 discriminator 1
	lbu	a0,0(a0)
.LVL17:
	.loc 1 61 20 discriminator 1
	li	a5,4
	bleu	a0,a5,.L23
.L22:
	.loc 1 62 9 is_stmt 1 discriminator 1
	.loc 1 62 47 discriminator 1
	.loc 1 62 52 discriminator 1
	.loc 1 62 74 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 62 55 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	.loc 1 63 16 discriminator 1
	li	a0,-1
	.loc 1 62 55 discriminator 1
	bgtu	a4,a5,.L21
	.loc 1 62 118 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhosal_pwm)
	.loc 1 62 97 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhosal_pwm)(a4)
	bgtu	a4,a5,.L21
	.loc 1 62 153 is_stmt 1 discriminator 5
	.loc 1 62 232 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL18:
	.loc 1 62 153 discriminator 5
	beq	a0,zero,.L25
	.loc 1 62 261 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL19:
.L33:
	.loc 1 62 292 discriminator 8
	mv	a2,a0
	.loc 1 62 153 discriminator 8
	lui	a3,%hi(.LC1)
	lui	a1,%hi(.LC2)
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	li	a4,62
	addi	a3,a3,%lo(.LC1)
	addi	a1,a1,%lo(.LC2)
	call	bl_printk
.LVL20:
	.loc 1 63 16 discriminator 8
	li	a0,-1
.L21:
	.loc 1 69 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L25:
	.cfi_restore_state
	.loc 1 62 292 discriminator 8
	call	xTaskGetTickCount
.LVL21:
	j	.L33
.L23:
	.loc 1 66 5 is_stmt 1
.LVL22:
	.loc 1 67 5
	call	bl_pwm_start
.LVL23:
	.loc 1 68 5
	.loc 1 68 12 is_stmt 0
	li	a0,0
	j	.L21
	.cfi_endproc
.LFE9:
	.size	hosal_pwm_start, .-hosal_pwm_start
	.section	.text.hosal_pwm_para_chg,"ax",@progbits
	.align	1
	.globl	hosal_pwm_para_chg
	.type	hosal_pwm_para_chg, @function
hosal_pwm_para_chg:
.LFB10:
	.loc 1 79 1 is_stmt 1
	.cfi_startproc
.LVL24:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	lw	a2,4(a1)
.LVL25:
	lw	a1,8(a1)
.LVL26:
	.loc 1 80 5
	.loc 1 82 5
	.loc 1 82 8 is_stmt 0
	beq	a0,zero,.L35
	mv	a5,a0
	.loc 1 82 26 discriminator 1
	lbu	a0,0(a0)
.LVL27:
	.loc 1 82 20 discriminator 1
	li	a4,4
	bleu	a0,a4,.L36
.LVL28:
.L35:
	.loc 1 83 9 is_stmt 1 discriminator 1
	.loc 1 83 47 discriminator 1
	.loc 1 83 52 discriminator 1
	.loc 1 83 74 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 83 55 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	.loc 1 84 16 discriminator 1
	li	a0,-1
	.loc 1 83 55 discriminator 1
	bgtu	a4,a5,.L34
	.loc 1 83 118 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhosal_pwm)
	.loc 1 83 97 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhosal_pwm)(a4)
	bgtu	a4,a5,.L34
	.loc 1 83 153 is_stmt 1 discriminator 5
	.loc 1 83 232 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL29:
	.loc 1 83 153 discriminator 5
	beq	a0,zero,.L38
	.loc 1 83 261 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL30:
.L46:
	.loc 1 83 292 discriminator 8
	mv	a2,a0
	.loc 1 83 153 discriminator 8
	lui	a3,%hi(.LC1)
	lui	a1,%hi(.LC2)
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	li	a4,83
	addi	a3,a3,%lo(.LC1)
	addi	a1,a1,%lo(.LC2)
	call	bl_printk
.LVL31:
	.loc 1 84 16 discriminator 8
	li	a0,-1
.L34:
	.loc 1 93 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L38:
	.cfi_restore_state
	.loc 1 83 292 discriminator 8
	call	xTaskGetTickCount
.LVL32:
	j	.L46
.LVL33:
.L36:
	.loc 1 87 5 is_stmt 1
	.loc 1 88 5
	.loc 1 89 28 is_stmt 0
	sw	a2,8(a5)
	.loc 1 88 22
	sw	a1,12(a5)
	.loc 1 89 5 is_stmt 1
	.loc 1 90 5
	.loc 1 90 65 is_stmt 0
	li	a5,100
.LVL34:
	divu	a2,a2,a5
.LVL35:
	.loc 1 90 5
	andi	a2,a2,0xff
	call	PWM_Smart_Configure
.LVL36:
	.loc 1 92 5 is_stmt 1
	.loc 1 92 12 is_stmt 0
	li	a0,0
	j	.L34
	.cfi_endproc
.LFE10:
	.size	hosal_pwm_para_chg, .-hosal_pwm_para_chg
	.section	.text.hosal_pwm_freq_set,"ax",@progbits
	.align	1
	.globl	hosal_pwm_freq_set
	.type	hosal_pwm_freq_set, @function
hosal_pwm_freq_set:
.LFB11:
	.loc 1 104 1 is_stmt 1
	.cfi_startproc
.LVL37:
	.loc 1 105 5
	.loc 1 104 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 105 8
	beq	a0,zero,.L48
	mv	a5,a0
	.loc 1 105 26 discriminator 1
	lbu	a0,0(a0)
.LVL38:
	.loc 1 105 20 discriminator 1
	li	a4,5
	bleu	a0,a4,.L49
.LVL39:
.L48:
	.loc 1 106 9 is_stmt 1 discriminator 1
	.loc 1 106 47 discriminator 1
	.loc 1 106 52 discriminator 1
	.loc 1 106 74 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 106 55 discriminator 1
	lw	a3,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	.loc 1 107 16 discriminator 1
	li	a4,-1
	.loc 1 106 55 discriminator 1
	bgtu	a3,a5,.L47
	.loc 1 106 118 discriminator 3
	lui	a3,%hi(_fsymf_level_hosalhosal_pwm)
	.loc 1 106 97 discriminator 3
	lw	a3,%lo(_fsymf_level_hosalhosal_pwm)(a3)
	bgtu	a3,a5,.L47
	.loc 1 106 153 is_stmt 1 discriminator 5
	.loc 1 106 232 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL40:
	.loc 1 106 153 discriminator 5
	beq	a0,zero,.L51
	.loc 1 106 261 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL41:
.L60:
	.loc 1 106 292 discriminator 8
	mv	a2,a0
	.loc 1 106 153 discriminator 8
	lui	a3,%hi(.LC1)
	lui	a1,%hi(.LC2)
	lui	a0,%hi(.LC3)
	li	a4,106
	addi	a3,a3,%lo(.LC1)
	addi	a1,a1,%lo(.LC2)
	addi	a0,a0,%lo(.LC3)
	call	bl_printk
.LVL42:
	.loc 1 107 16 discriminator 8
	li	a4,-1
.L47:
	.loc 1 115 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,a4
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L51:
	.cfi_restore_state
	.loc 1 106 292 discriminator 8
	call	xTaskGetTickCount
.LVL43:
	j	.L60
.LVL44:
.L49:
	.loc 1 109 5 is_stmt 1
	.loc 1 109 8 is_stmt 0
	li	a2,401408
	.loc 1 109 42
	addi	a6,a1,-611
	.loc 1 109 8
	addi	a2,a2,-2019
	.loc 1 107 16
	li	a4,-1
	.loc 1 109 8
	bgtu	a6,a2,.L47
	.loc 1 112 5 is_stmt 1
	.loc 1 113 74 is_stmt 0
	lw	a2,8(a5)
	.loc 1 112 22
	sw	a1,12(a5)
	.loc 1 113 5 is_stmt 1
	.loc 1 113 74 is_stmt 0
	li	a5,100
.LVL45:
	divu	a2,a2,a5
	.loc 1 113 5
	andi	a2,a2,0xff
	call	PWM_Smart_Configure
.LVL46:
	.loc 1 114 5 is_stmt 1
	.loc 1 114 12 is_stmt 0
	li	a4,0
	j	.L47
	.cfi_endproc
.LFE11:
	.size	hosal_pwm_freq_set, .-hosal_pwm_freq_set
	.section	.text.hosal_pwm_freq_get,"ax",@progbits
	.align	1
	.globl	hosal_pwm_freq_get
	.type	hosal_pwm_freq_get, @function
hosal_pwm_freq_get:
.LFB12:
	.loc 1 118 1 is_stmt 1
	.cfi_startproc
.LVL47:
	.loc 1 119 5
	.loc 1 119 8 is_stmt 0
	beq	a0,zero,.L62
	.loc 1 119 20 discriminator 1
	lbu	a4,0(a0)
	li	a5,5
	bgtu	a4,a5,.L62
	.loc 1 119 37 discriminator 2
	bne	a1,zero,.L63
.L62:
	.loc 1 120 9 is_stmt 1 discriminator 1
	.loc 1 120 47 discriminator 1
	.loc 1 120 52 discriminator 1
	.loc 1 120 74 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 120 55 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	.loc 1 121 16 discriminator 1
	li	a0,-1
.LVL48:
	.loc 1 120 55 discriminator 1
	bgtu	a4,a5,.L73
	.loc 1 120 118 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhosal_pwm)
	.loc 1 120 97 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhosal_pwm)(a4)
	bgtu	a4,a5,.L73
	.loc 1 120 153 is_stmt 1 discriminator 5
	.loc 1 118 1 is_stmt 0 discriminator 5
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 120 232 discriminator 5
	call	xPortIsInsideInterrupt
.LVL49:
	.loc 1 120 153 discriminator 5
	beq	a0,zero,.L65
	.loc 1 120 261 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL50:
.L76:
	.loc 1 120 292 discriminator 8
	mv	a2,a0
	.loc 1 120 153 discriminator 8
	lui	a3,%hi(.LC1)
	lui	a1,%hi(.LC2)
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	li	a4,120
	addi	a3,a3,%lo(.LC1)
	addi	a1,a1,%lo(.LC2)
	call	bl_printk
.LVL51:
	.loc 1 125 1 discriminator 8
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	.loc 1 121 16 discriminator 8
	li	a0,-1
	.loc 1 125 1 discriminator 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L65:
	.cfi_restore_state
	.loc 1 120 292 discriminator 8
	call	xTaskGetTickCount
.LVL52:
	j	.L76
.LVL53:
.L63:
	.cfi_def_cfa_offset 0
	.cfi_restore 1
	.loc 1 123 5 is_stmt 1
	.loc 1 123 26 is_stmt 0
	lw	a5,12(a0)
	.loc 1 124 12
	li	a0,0
.LVL54:
	.loc 1 123 13
	sw	a5,0(a1)
	.loc 1 124 5 is_stmt 1
	.loc 1 124 12 is_stmt 0
	ret
.L73:
	.loc 1 125 1
	ret
	.cfi_endproc
.LFE12:
	.size	hosal_pwm_freq_get, .-hosal_pwm_freq_get
	.section	.text.hosal_pwm_duty_set,"ax",@progbits
	.align	1
	.globl	hosal_pwm_duty_set
	.type	hosal_pwm_duty_set, @function
hosal_pwm_duty_set:
.LFB13:
	.loc 1 128 1 is_stmt 1
	.cfi_startproc
.LVL55:
	.loc 1 129 2
	.loc 1 128 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 129 5
	beq	a0,zero,.L78
	mv	a5,a0
	.loc 1 129 23 discriminator 1
	lbu	a0,0(a0)
.LVL56:
	.loc 1 129 17 discriminator 1
	li	a4,4
	bgtu	a0,a4,.L78
	.loc 1 129 35 discriminator 2
	li	a4,8192
	addi	a4,a4,1808
	bleu	a1,a4,.L79
.LVL57:
.L78:
	.loc 1 130 9 is_stmt 1 discriminator 1
	.loc 1 130 47 discriminator 1
	.loc 1 130 52 discriminator 1
	.loc 1 130 74 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 130 55 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	.loc 1 131 16 discriminator 1
	li	a0,-1
	.loc 1 130 55 discriminator 1
	bgtu	a4,a5,.L77
	.loc 1 130 118 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhosal_pwm)
	.loc 1 130 97 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhosal_pwm)(a4)
	bgtu	a4,a5,.L77
	.loc 1 130 153 is_stmt 1 discriminator 5
	.loc 1 130 232 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL58:
	.loc 1 130 153 discriminator 5
	beq	a0,zero,.L81
	.loc 1 130 261 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL59:
.L89:
	.loc 1 130 292 discriminator 8
	mv	a2,a0
	.loc 1 130 153 discriminator 8
	lui	a3,%hi(.LC1)
	lui	a1,%hi(.LC2)
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	li	a4,130
	addi	a3,a3,%lo(.LC1)
	addi	a1,a1,%lo(.LC2)
	call	bl_printk
.LVL60:
	.loc 1 131 16 discriminator 8
	li	a0,-1
.L77:
	.loc 1 136 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L81:
	.cfi_restore_state
	.loc 1 130 292 discriminator 8
	call	xTaskGetTickCount
.LVL61:
	j	.L89
.LVL62:
.L79:
	.loc 1 133 5 is_stmt 1
	.loc 1 134 86 is_stmt 0
	li	a2,100
	divu	a2,a1,a2
	.loc 1 133 28
	sw	a1,8(a5)
	.loc 1 134 5 is_stmt 1
	lw	a1,12(a5)
.LVL63:
	andi	a2,a2,0xff
	call	PWM_Smart_Configure
.LVL64:
	.loc 1 135 5
	.loc 1 135 12 is_stmt 0
	li	a0,0
	j	.L77
	.cfi_endproc
.LFE13:
	.size	hosal_pwm_duty_set, .-hosal_pwm_duty_set
	.section	.text.hosal_pwm_duty_get,"ax",@progbits
	.align	1
	.globl	hosal_pwm_duty_get
	.type	hosal_pwm_duty_get, @function
hosal_pwm_duty_get:
.LFB14:
	.loc 1 139 1 is_stmt 1
	.cfi_startproc
.LVL65:
	.loc 1 140 2
	.loc 1 140 5 is_stmt 0
	beq	a0,zero,.L91
	.loc 1 140 17 discriminator 1
	lbu	a4,0(a0)
	li	a5,4
	bgtu	a4,a5,.L91
	.loc 1 140 35 discriminator 2
	bne	a1,zero,.L92
.L91:
	.loc 1 141 9 is_stmt 1 discriminator 1
	.loc 1 141 47 discriminator 1
	.loc 1 141 52 discriminator 1
	.loc 1 141 74 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 141 55 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	.loc 1 142 16 discriminator 1
	li	a0,-1
.LVL66:
	.loc 1 141 55 discriminator 1
	bgtu	a4,a5,.L102
	.loc 1 141 118 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhosal_pwm)
	.loc 1 141 97 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhosal_pwm)(a4)
	bgtu	a4,a5,.L102
	.loc 1 141 153 is_stmt 1 discriminator 5
	.loc 1 139 1 is_stmt 0 discriminator 5
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 141 232 discriminator 5
	call	xPortIsInsideInterrupt
.LVL67:
	.loc 1 141 153 discriminator 5
	beq	a0,zero,.L94
	.loc 1 141 261 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL68:
.L105:
	.loc 1 141 292 discriminator 8
	mv	a2,a0
	.loc 1 141 153 discriminator 8
	lui	a3,%hi(.LC1)
	lui	a1,%hi(.LC2)
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	li	a4,141
	addi	a3,a3,%lo(.LC1)
	addi	a1,a1,%lo(.LC2)
	call	bl_printk
.LVL69:
	.loc 1 146 1 discriminator 8
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	.loc 1 142 16 discriminator 8
	li	a0,-1
	.loc 1 146 1 discriminator 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L94:
	.cfi_restore_state
	.loc 1 141 292 discriminator 8
	call	xTaskGetTickCount
.LVL70:
	j	.L105
.LVL71:
.L92:
	.cfi_def_cfa_offset 0
	.cfi_restore 1
	.loc 1 144 5 is_stmt 1
	.loc 1 144 26 is_stmt 0
	lw	a5,8(a0)
	.loc 1 145 12
	li	a0,0
.LVL72:
	.loc 1 144 13
	sw	a5,0(a1)
	.loc 1 145 5 is_stmt 1
	.loc 1 145 12 is_stmt 0
	ret
.L102:
	.loc 1 146 1
	ret
	.cfi_endproc
.LFE14:
	.size	hosal_pwm_duty_get, .-hosal_pwm_duty_get
	.section	.text.hosal_pwm_stop,"ax",@progbits
	.align	1
	.globl	hosal_pwm_stop
	.type	hosal_pwm_stop, @function
hosal_pwm_stop:
.LFB15:
	.loc 1 155 1 is_stmt 1
	.cfi_startproc
.LVL73:
	.loc 1 156 5
	.loc 1 158 5
	.loc 1 155 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 158 8
	beq	a0,zero,.L107
	.loc 1 158 26 discriminator 1
	lbu	a0,0(a0)
.LVL74:
	.loc 1 158 20 discriminator 1
	li	a5,4
	bleu	a0,a5,.L108
.L107:
	.loc 1 159 9 is_stmt 1 discriminator 1
	.loc 1 159 47 discriminator 1
	.loc 1 159 52 discriminator 1
	.loc 1 159 74 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 159 55 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	.loc 1 160 16 discriminator 1
	li	a0,-1
	.loc 1 159 55 discriminator 1
	bgtu	a4,a5,.L106
	.loc 1 159 118 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhosal_pwm)
	.loc 1 159 97 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhosal_pwm)(a4)
	bgtu	a4,a5,.L106
	.loc 1 159 153 is_stmt 1 discriminator 5
	.loc 1 159 232 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL75:
	.loc 1 159 153 discriminator 5
	beq	a0,zero,.L110
	.loc 1 159 261 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL76:
.L118:
	.loc 1 159 292 discriminator 8
	mv	a2,a0
	.loc 1 159 153 discriminator 8
	lui	a3,%hi(.LC1)
	lui	a1,%hi(.LC2)
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	li	a4,159
	addi	a3,a3,%lo(.LC1)
	addi	a1,a1,%lo(.LC2)
	call	bl_printk
.LVL77:
	.loc 1 160 16 discriminator 8
	li	a0,-1
.L106:
	.loc 1 166 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L110:
	.cfi_restore_state
	.loc 1 159 292 discriminator 8
	call	xTaskGetTickCount
.LVL78:
	j	.L118
.L108:
	.loc 1 163 5 is_stmt 1
.LVL79:
	.loc 1 164 5
	call	bl_pwm_stop
.LVL80:
	.loc 1 165 5
	.loc 1 165 12 is_stmt 0
	li	a0,0
	j	.L106
	.cfi_endproc
.LFE15:
	.size	hosal_pwm_stop, .-hosal_pwm_stop
	.section	.text.hosal_pwm_finalize,"ax",@progbits
	.align	1
	.globl	hosal_pwm_finalize
	.type	hosal_pwm_finalize, @function
hosal_pwm_finalize:
.LFB16:
	.loc 1 176 1 is_stmt 1
	.cfi_startproc
.LVL81:
	.loc 1 177 5
	.loc 1 179 5
	.loc 1 176 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 179 8
	beq	a0,zero,.L120
	.loc 1 179 26 discriminator 1
	lbu	a0,0(a0)
.LVL82:
	.loc 1 179 20 discriminator 1
	li	a5,4
	bleu	a0,a5,.L121
.L120:
	.loc 1 180 9 is_stmt 1 discriminator 1
	.loc 1 180 47 discriminator 1
	.loc 1 180 52 discriminator 1
	.loc 1 180 74 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 180 55 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	.loc 1 181 16 discriminator 1
	li	a0,-1
	.loc 1 180 55 discriminator 1
	bgtu	a4,a5,.L119
	.loc 1 180 118 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhosal_pwm)
	.loc 1 180 97 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhosal_pwm)(a4)
	bgtu	a4,a5,.L119
	.loc 1 180 153 is_stmt 1 discriminator 5
	.loc 1 180 232 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL83:
	.loc 1 180 153 discriminator 5
	beq	a0,zero,.L123
	.loc 1 180 261 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL84:
.L131:
	.loc 1 180 292 discriminator 8
	mv	a2,a0
	.loc 1 180 153 discriminator 8
	lui	a3,%hi(.LC1)
	lui	a1,%hi(.LC2)
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	li	a4,180
	addi	a3,a3,%lo(.LC1)
	addi	a1,a1,%lo(.LC2)
	call	bl_printk
.LVL85:
	.loc 1 181 16 discriminator 8
	li	a0,-1
.L119:
	.loc 1 187 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L123:
	.cfi_restore_state
	.loc 1 180 292 discriminator 8
	call	xTaskGetTickCount
.LVL86:
	j	.L131
.L121:
	.loc 1 184 5 is_stmt 1
.LVL87:
	.loc 1 185 5
	call	bl_pwm_stop
.LVL88:
	.loc 1 186 5
	.loc 1 186 12 is_stmt 0
	li	a0,0
	j	.L119
	.cfi_endproc
.LFE16:
	.size	hosal_pwm_finalize, .-hosal_pwm_finalize
	.globl	_fsymf_info_hosalhosal_pwm
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC5:
	.string	"hosal.hosal_pwm"
	.comm	_fsymf_level_hosalhosal_pwm,4,4
	.align	2
.LC6:
	.string	"hosal"
	.weak	_fsymc_level_hosal
	.section	.sbss._fsymc_level_hosal,"aw",@nobits
	.align	2
	.type	_fsymc_level_hosal, @object
	.size	_fsymc_level_hosal, 4
_fsymc_level_hosal:
	.zero	4
	.section	.srodata,"a"
	.align	2
.LC0:
	.byte	0
	.byte	8
	.byte	1
	.byte	1
	.byte	0
	.byte	1
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
	.word	.LC6
	.section	.static_blogfile_code.hosalhosal_pwm,"a"
	.align	2
	.type	_fsymf_info_hosalhosal_pwm, @object
	.size	_fsymf_info_hosalhosal_pwm, 8
_fsymf_info_hosalhosal_pwm:
	.word	_fsymf_level_hosalhosal_pwm
	.word	.LC5
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_gpio.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/include/hosal_pwm.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog_type.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 10 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_log.h"
	.file 11 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_pwm.h"
	.file 12 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_pwm.h"
	.file 13 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_glb.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x82a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF66
	.byte	0xc
	.4byte	.LASF67
	.4byte	.LASF68
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
	.byte	0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x3f
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.byte	0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x67
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
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
	.4byte	0x33
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x5b
	.byte	0x7
	.4byte	0x9e
	.byte	0x8
	.byte	0x6
	.byte	0x4
	.byte	0x7e
	.byte	0x9
	.4byte	0x107
	.byte	0x9
	.4byte	.LASF14
	.byte	0x4
	.byte	0x80
	.byte	0xd
	.4byte	0x92
	.byte	0
	.byte	0x9
	.4byte	.LASF15
	.byte	0x4
	.byte	0x81
	.byte	0xd
	.4byte	0x92
	.byte	0x1
	.byte	0x9
	.4byte	.LASF16
	.byte	0x4
	.byte	0x82
	.byte	0xd
	.4byte	0x92
	.byte	0x2
	.byte	0x9
	.4byte	.LASF17
	.byte	0x4
	.byte	0x83
	.byte	0xd
	.4byte	0x92
	.byte	0x3
	.byte	0x9
	.4byte	.LASF18
	.byte	0x4
	.byte	0x84
	.byte	0xd
	.4byte	0x92
	.byte	0x4
	.byte	0x9
	.4byte	.LASF19
	.byte	0x4
	.byte	0x85
	.byte	0xd
	.4byte	0x92
	.byte	0x5
	.byte	0
	.byte	0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x86
	.byte	0x2
	.4byte	0xaf
	.byte	0x8
	.byte	0xc
	.byte	0x5
	.byte	0x13
	.byte	0x9
	.4byte	0x144
	.byte	0xa
	.string	"pin"
	.byte	0x5
	.byte	0x14
	.byte	0xd
	.4byte	0x92
	.byte	0
	.byte	0x9
	.4byte	.LASF21
	.byte	0x5
	.byte	0x15
	.byte	0xe
	.4byte	0x9e
	.byte	0x4
	.byte	0x9
	.4byte	.LASF22
	.byte	0x5
	.byte	0x16
	.byte	0xe
	.4byte	0x9e
	.byte	0x8
	.byte	0
	.byte	0x3
	.4byte	.LASF23
	.byte	0x5
	.byte	0x17
	.byte	0x3
	.4byte	0x113
	.byte	0x8
	.byte	0x14
	.byte	0x5
	.byte	0x1d
	.byte	0x9
	.4byte	0x181
	.byte	0x9
	.4byte	.LASF24
	.byte	0x5
	.byte	0x1e
	.byte	0xd
	.4byte	0x92
	.byte	0
	.byte	0x9
	.4byte	.LASF25
	.byte	0x5
	.byte	0x1f
	.byte	0x18
	.4byte	0x144
	.byte	0x4
	.byte	0x9
	.4byte	.LASF26
	.byte	0x5
	.byte	0x20
	.byte	0xb
	.4byte	0x83
	.byte	0x10
	.byte	0
	.byte	0x3
	.4byte	.LASF27
	.byte	0x5
	.byte	0x21
	.byte	0x3
	.4byte	0x150
	.byte	0xb
	.4byte	.LASF69
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x6
	.byte	0x22
	.byte	0xe
	.4byte	0x1ca
	.byte	0xc
	.4byte	.LASF28
	.byte	0
	.byte	0xc
	.4byte	.LASF29
	.byte	0x1
	.byte	0xc
	.4byte	.LASF30
	.byte	0x2
	.byte	0xc
	.4byte	.LASF31
	.byte	0x3
	.byte	0xc
	.4byte	.LASF32
	.byte	0x4
	.byte	0xc
	.4byte	.LASF33
	.byte	0x5
	.byte	0xc
	.4byte	.LASF34
	.byte	0x6
	.byte	0
	.byte	0x3
	.4byte	.LASF35
	.byte	0x6
	.byte	0x2a
	.byte	0x3
	.4byte	0x18d
	.byte	0xd
	.4byte	.LASF70
	.byte	0x8
	.byte	0x6
	.byte	0x2c
	.byte	0x10
	.4byte	0x1fe
	.byte	0x9
	.4byte	.LASF36
	.byte	0x6
	.byte	0x2d
	.byte	0x13
	.4byte	0x1fe
	.byte	0
	.byte	0x9
	.4byte	.LASF37
	.byte	0x6
	.byte	0x2e
	.byte	0xb
	.4byte	0x85
	.byte	0x4
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x1ca
	.byte	0x3
	.4byte	.LASF38
	.byte	0x6
	.byte	0x2f
	.byte	0x3
	.4byte	0x1d6
	.byte	0x7
	.4byte	0x204
	.byte	0xe
	.4byte	.LASF39
	.byte	0x7
	.byte	0x38
	.byte	0x1b
	.4byte	0xaa
	.byte	0x5
	.byte	0x3
	.4byte	BLOG_HARD_DECLARE_DISABLE
	.byte	0xf
	.4byte	.LASF41
	.byte	0x7
	.byte	0x45
	.byte	0x12
	.4byte	0x1ca
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_level_hosal
	.byte	0xe
	.4byte	.LASF40
	.byte	0x7
	.byte	0x46
	.byte	0x1e
	.4byte	0x210
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_info_hosal
	.byte	0xf
	.4byte	.LASF42
	.byte	0x7
	.byte	0x53
	.byte	0x12
	.4byte	0x1ca
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_level_hosalhosal_pwm
	.byte	0xf
	.4byte	.LASF43
	.byte	0x7
	.byte	0x54
	.byte	0x17
	.4byte	0x210
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_info_hosalhosal_pwm
	.byte	0x10
	.4byte	.LASF44
	.byte	0x1
	.byte	0xaf
	.byte	0x5
	.4byte	0x7c
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0x2fc
	.byte	0x11
	.string	"pwm"
	.byte	0x1
	.byte	0xaf
	.byte	0x29
	.4byte	0x2fc
	.4byte	.LLST17
	.byte	0x12
	.string	"ch"
	.byte	0x1
	.byte	0xb1
	.byte	0xd
	.4byte	0x92
	.4byte	.LLST18
	.byte	0x13
	.4byte	.LVL83
	.4byte	0x7be
	.byte	0x13
	.4byte	.LVL84
	.4byte	0x7ca
	.byte	0x14
	.4byte	.LVL85
	.4byte	0x7d7
	.4byte	0x2e9
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x15
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x15
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0xb4
	.byte	0
	.byte	0x13
	.4byte	.LVL86
	.4byte	0x7e3
	.byte	0x13
	.4byte	.LVL88
	.4byte	0x7f0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x181
	.byte	0x10
	.4byte	.LASF45
	.byte	0x1
	.byte	0x9a
	.byte	0x5
	.4byte	0x7c
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x38f
	.byte	0x11
	.string	"pwm"
	.byte	0x1
	.byte	0x9a
	.byte	0x25
	.4byte	0x2fc
	.4byte	.LLST15
	.byte	0x12
	.string	"ch"
	.byte	0x1
	.byte	0x9c
	.byte	0xd
	.4byte	0x92
	.4byte	.LLST16
	.byte	0x13
	.4byte	.LVL75
	.4byte	0x7be
	.byte	0x13
	.4byte	.LVL76
	.4byte	0x7ca
	.byte	0x14
	.4byte	.LVL77
	.4byte	0x7d7
	.4byte	0x37c
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x15
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x15
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x9f
	.byte	0
	.byte	0x13
	.4byte	.LVL78
	.4byte	0x7e3
	.byte	0x13
	.4byte	.LVL80
	.4byte	0x7f0
	.byte	0
	.byte	0x10
	.4byte	.LASF46
	.byte	0x1
	.byte	0x8a
	.byte	0x5
	.4byte	0x7c
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x414
	.byte	0x11
	.string	"pwm"
	.byte	0x1
	.byte	0x8a
	.byte	0x29
	.4byte	0x2fc
	.4byte	.LLST13
	.byte	0x16
	.4byte	.LASF47
	.byte	0x1
	.byte	0x8a
	.byte	0x38
	.4byte	0x414
	.4byte	.LLST14
	.byte	0x13
	.4byte	.LVL67
	.4byte	0x7be
	.byte	0x13
	.4byte	.LVL68
	.4byte	0x7ca
	.byte	0x14
	.4byte	.LVL69
	.4byte	0x7d7
	.4byte	0x40a
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x15
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x15
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x8d
	.byte	0
	.byte	0x13
	.4byte	.LVL70
	.4byte	0x7e3
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x9e
	.byte	0x10
	.4byte	.LASF48
	.byte	0x1
	.byte	0x7f
	.byte	0x5
	.4byte	0x7c
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x4b9
	.byte	0x11
	.string	"pwm"
	.byte	0x1
	.byte	0x7f
	.byte	0x29
	.4byte	0x2fc
	.4byte	.LLST11
	.byte	0x16
	.4byte	.LASF49
	.byte	0x1
	.byte	0x7f
	.byte	0x37
	.4byte	0x9e
	.4byte	.LLST12
	.byte	0x13
	.4byte	.LVL58
	.4byte	0x7be
	.byte	0x13
	.4byte	.LVL59
	.4byte	0x7ca
	.byte	0x14
	.4byte	.LVL60
	.4byte	0x7d7
	.4byte	0x495
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x15
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x15
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x82
	.byte	0
	.byte	0x13
	.4byte	.LVL61
	.4byte	0x7e3
	.byte	0x17
	.4byte	.LVL64
	.4byte	0x7fc
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0xc
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0xf7
	.byte	0x25
	.byte	0x8
	.byte	0x64
	.byte	0xf7
	.byte	0x25
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LASF50
	.byte	0x1
	.byte	0x75
	.byte	0x5
	.4byte	0x7c
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x53e
	.byte	0x11
	.string	"pwm"
	.byte	0x1
	.byte	0x75
	.byte	0x29
	.4byte	0x2fc
	.4byte	.LLST9
	.byte	0x16
	.4byte	.LASF51
	.byte	0x1
	.byte	0x75
	.byte	0x38
	.4byte	0x414
	.4byte	.LLST10
	.byte	0x13
	.4byte	.LVL49
	.4byte	0x7be
	.byte	0x13
	.4byte	.LVL50
	.4byte	0x7ca
	.byte	0x14
	.4byte	.LVL51
	.4byte	0x7d7
	.4byte	0x534
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x15
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x15
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x78
	.byte	0
	.byte	0x13
	.4byte	.LVL52
	.4byte	0x7e3
	.byte	0
	.byte	0x10
	.4byte	.LASF52
	.byte	0x1
	.byte	0x67
	.byte	0x5
	.4byte	0x7c
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x5d4
	.byte	0x11
	.string	"pwm"
	.byte	0x1
	.byte	0x67
	.byte	0x29
	.4byte	0x2fc
	.4byte	.LLST7
	.byte	0x16
	.4byte	.LASF22
	.byte	0x1
	.byte	0x67
	.byte	0x37
	.4byte	0x9e
	.4byte	.LLST8
	.byte	0x13
	.4byte	.LVL40
	.4byte	0x7be
	.byte	0x13
	.4byte	.LVL41
	.4byte	0x7ca
	.byte	0x14
	.4byte	.LVL42
	.4byte	0x7d7
	.4byte	0x5b9
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x15
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x15
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x6a
	.byte	0
	.byte	0x13
	.4byte	.LVL43
	.4byte	0x7e3
	.byte	0x17
	.4byte	.LVL46
	.4byte	0x7fc
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LASF53
	.byte	0x1
	.byte	0x4e
	.byte	0x5
	.4byte	0x7c
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x671
	.byte	0x11
	.string	"pwm"
	.byte	0x1
	.byte	0x4e
	.byte	0x29
	.4byte	0x2fc
	.4byte	.LLST4
	.byte	0x16
	.4byte	.LASF54
	.byte	0x1
	.byte	0x4e
	.byte	0x41
	.4byte	0x144
	.4byte	.LLST5
	.byte	0x12
	.string	"ch"
	.byte	0x1
	.byte	0x50
	.byte	0xd
	.4byte	0x92
	.4byte	.LLST6
	.byte	0x13
	.4byte	.LVL29
	.4byte	0x7be
	.byte	0x13
	.4byte	.LVL30
	.4byte	0x7ca
	.byte	0x14
	.4byte	.LVL31
	.4byte	0x7d7
	.4byte	0x65e
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x15
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x15
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x53
	.byte	0
	.byte	0x13
	.4byte	.LVL32
	.4byte	0x7e3
	.byte	0x13
	.4byte	.LVL36
	.4byte	0x7fc
	.byte	0
	.byte	0x10
	.4byte	.LASF55
	.byte	0x1
	.byte	0x39
	.byte	0x5
	.4byte	0x7c
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x6fe
	.byte	0x11
	.string	"pwm"
	.byte	0x1
	.byte	0x39
	.byte	0x26
	.4byte	0x2fc
	.4byte	.LLST2
	.byte	0x12
	.string	"ch"
	.byte	0x1
	.byte	0x3b
	.byte	0xd
	.4byte	0x92
	.4byte	.LLST3
	.byte	0x13
	.4byte	.LVL18
	.4byte	0x7be
	.byte	0x13
	.4byte	.LVL19
	.4byte	0x7ca
	.byte	0x14
	.4byte	.LVL20
	.4byte	0x7d7
	.4byte	0x6eb
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x15
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x15
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x3e
	.byte	0
	.byte	0x13
	.4byte	.LVL21
	.4byte	0x7e3
	.byte	0x13
	.4byte	.LVL23
	.4byte	0x808
	.byte	0
	.byte	0x10
	.4byte	.LASF56
	.byte	0x1
	.byte	0x14
	.byte	0x5
	.4byte	0x7c
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x7be
	.byte	0x11
	.string	"pwm"
	.byte	0x1
	.byte	0x14
	.byte	0x25
	.4byte	0x2fc
	.4byte	.LLST0
	.byte	0x12
	.string	"ch"
	.byte	0x1
	.byte	0x16
	.byte	0xd
	.4byte	0x92
	.4byte	.LLST1
	.byte	0x18
	.string	"cfg"
	.byte	0x1
	.byte	0x17
	.byte	0x14
	.4byte	0x107
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x13
	.4byte	.LVL2
	.4byte	0x7be
	.byte	0x13
	.4byte	.LVL3
	.4byte	0x7ca
	.byte	0x13
	.4byte	.LVL4
	.4byte	0x7d7
	.byte	0x13
	.4byte	.LVL5
	.4byte	0x7e3
	.byte	0x13
	.4byte	.LVL9
	.4byte	0x7be
	.byte	0x13
	.4byte	.LVL10
	.4byte	0x7ca
	.byte	0x13
	.4byte	.LVL11
	.4byte	0x7e3
	.byte	0x14
	.4byte	.LVL13
	.4byte	0x814
	.4byte	0x799
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x14
	.4byte	.LVL14
	.4byte	0x821
	.4byte	0x7ad
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	.LVL15
	.4byte	0x7fc
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0x8
	.byte	0x98
	.byte	0xc
	.byte	0x1a
	.4byte	.LASF58
	.4byte	.LASF58
	.byte	0x9
	.2byte	0x558
	.byte	0xc
	.byte	0x19
	.4byte	.LASF59
	.4byte	.LASF59
	.byte	0xa
	.byte	0x81
	.byte	0x6
	.byte	0x1a
	.4byte	.LASF60
	.4byte	.LASF60
	.byte	0x9
	.2byte	0x547
	.byte	0xc
	.byte	0x19
	.4byte	.LASF61
	.4byte	.LASF61
	.byte	0xb
	.byte	0xc
	.byte	0x9
	.byte	0x19
	.4byte	.LASF62
	.4byte	.LASF62
	.byte	0xc
	.byte	0xbb
	.byte	0xd
	.byte	0x19
	.4byte	.LASF63
	.4byte	.LASF63
	.byte	0xb
	.byte	0xb
	.byte	0x9
	.byte	0x1a
	.4byte	.LASF64
	.4byte	.LASF64
	.byte	0xd
	.2byte	0x276
	.byte	0xd
	.byte	0x19
	.4byte	.LASF65
	.4byte	.LASF65
	.byte	0xc
	.byte	0xb7
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
	.byte	0xc
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
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
	.byte	0x13
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
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
	.byte	0x15
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x16
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
	.byte	0x17
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST17:
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL82
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL87
	.4byte	.LVL88-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL74
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL79
	.4byte	.LVL80-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL66
	.4byte	.LVL71
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL72
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL65
	.4byte	.LVL67-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL67-1
	.4byte	.LVL71
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL57
	.4byte	.LVL62
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL64-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL64-1
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL55
	.4byte	.LVL58-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL58-1
	.4byte	.LVL62
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL63
	.4byte	.LVL64-1
	.2byte	0x2
	.byte	0x7f
	.byte	0x8
	.4byte	.LVL64-1
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL48
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL54
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL47
	.4byte	.LVL49-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL49-1
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL39
	.4byte	.LVL44
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL45
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL37
	.4byte	.LVL40-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL40-1
	.4byte	.LVL44
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL46-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL46-1
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL24
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL28
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL34
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x7
	.byte	0x93
	.byte	0x4
	.byte	0x5c
	.byte	0x93
	.byte	0x4
	.byte	0x93
	.byte	0x4
	.4byte	.LVL26
	.4byte	.LVL29-1
	.2byte	0x8
	.byte	0x93
	.byte	0x4
	.byte	0x5c
	.byte	0x93
	.byte	0x4
	.byte	0x5b
	.byte	0x93
	.byte	0x4
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x8
	.byte	0x93
	.byte	0x4
	.byte	0x5c
	.byte	0x93
	.byte	0x4
	.byte	0x5b
	.byte	0x93
	.byte	0x4
	.4byte	.LVL35
	.4byte	.LVL36-1
	.2byte	0xc
	.byte	0x93
	.byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x8
	.byte	0x93
	.byte	0x4
	.byte	0x5b
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL33
	.4byte	.LVL36-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL22
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL8
	.4byte	.LVL9-1
	.2byte	0x5
	.byte	0x7d
	.byte	0
	.byte	0x35
	.byte	0x1d
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x5c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
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
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
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
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF26:
	.string	"priv"
.LASF70:
	.string	"_blog_info"
.LASF61:
	.string	"bl_pwm_stop"
.LASF69:
	.string	"_blog_leve"
.LASF64:
	.string	"GLB_GPIO_Init"
.LASF62:
	.string	"PWM_Smart_Configure"
.LASF19:
	.string	"smtCtrl"
.LASF7:
	.string	"__uint32_t"
.LASF40:
	.string	"_fsymc_info_hosal"
.LASF3:
	.string	"short int"
.LASF25:
	.string	"config"
.LASF12:
	.string	"uint8_t"
.LASF32:
	.string	"BLOG_LEVEL_ERROR"
.LASF57:
	.string	"xPortIsInsideInterrupt"
.LASF13:
	.string	"uint32_t"
.LASF54:
	.string	"para"
.LASF52:
	.string	"hosal_pwm_freq_set"
.LASF1:
	.string	"signed char"
.LASF44:
	.string	"hosal_pwm_finalize"
.LASF65:
	.string	"PWM_Channel_Disable"
.LASF46:
	.string	"hosal_pwm_duty_get"
.LASF22:
	.string	"freq"
.LASF9:
	.string	"long long int"
.LASF39:
	.string	"BLOG_HARD_DECLARE_DISABLE"
.LASF5:
	.string	"long int"
.LASF6:
	.string	"__uint8_t"
.LASF60:
	.string	"xTaskGetTickCount"
.LASF20:
	.string	"GLB_GPIO_Cfg_Type"
.LASF15:
	.string	"gpioFun"
.LASF55:
	.string	"hosal_pwm_start"
.LASF18:
	.string	"drive"
.LASF2:
	.string	"unsigned char"
.LASF49:
	.string	"duty"
.LASF51:
	.string	"p_freq"
.LASF56:
	.string	"hosal_pwm_init"
.LASF10:
	.string	"long long unsigned int"
.LASF67:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/hosal_pwm.c"
.LASF33:
	.string	"BLOG_LEVEL_ASSERT"
.LASF30:
	.string	"BLOG_LEVEL_INFO"
.LASF23:
	.string	"hosal_pwm_config_t"
.LASF4:
	.string	"short unsigned int"
.LASF45:
	.string	"hosal_pwm_stop"
.LASF11:
	.string	"char"
.LASF50:
	.string	"hosal_pwm_freq_get"
.LASF27:
	.string	"hosal_pwm_dev_t"
.LASF47:
	.string	"p_duty"
.LASF43:
	.string	"_fsymf_info_hosalhosal_pwm"
.LASF28:
	.string	"BLOG_LEVEL_ALL"
.LASF24:
	.string	"port"
.LASF38:
	.string	"blog_info_t"
.LASF8:
	.string	"long unsigned int"
.LASF16:
	.string	"gpioMode"
.LASF68:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/hosal"
.LASF21:
	.string	"duty_cycle"
.LASF41:
	.string	"_fsymc_level_hosal"
.LASF58:
	.string	"xTaskGetTickCountFromISR"
.LASF63:
	.string	"bl_pwm_start"
.LASF36:
	.string	"level"
.LASF17:
	.string	"pullType"
.LASF42:
	.string	"_fsymf_level_hosalhosal_pwm"
.LASF37:
	.string	"name"
.LASF34:
	.string	"BLOG_LEVEL_NEVER"
.LASF59:
	.string	"bl_printk"
.LASF31:
	.string	"BLOG_LEVEL_WARN"
.LASF53:
	.string	"hosal_pwm_para_chg"
.LASF35:
	.string	"blog_level_t"
.LASF14:
	.string	"gpioPin"
.LASF29:
	.string	"BLOG_LEVEL_DEBUG"
.LASF0:
	.string	"unsigned int"
.LASF48:
	.string	"hosal_pwm_duty_set"
.LASF66:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
