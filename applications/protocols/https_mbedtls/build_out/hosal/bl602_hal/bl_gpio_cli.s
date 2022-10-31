	.file	"bl_gpio_cli.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.cmd_gpio_get.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"Err"
	.align	2
.LC1:
	.string	"high"
	.align	2
.LC2:
	.string	"low"
	.align	2
.LC3:
	.string	"bl_gpio_cli.c"
	.align	2
.LC4:
	.string	"\033[32mINFO\033[0m"
	.align	2
.LC5:
	.string	"%s (%d)[%s:%4d] Usage: %s 24\r\n  get GPIO24 value\r\n\r\n"
	.align	2
.LC6:
	.string	"Illegal arg\r\n"
	.align	2
.LC7:
	.string	"%s (%d)[%s:%4d] GPIO%d val is %s\r\n\r\n"
	.section	.text.cmd_gpio_get,"ax",@progbits
	.align	1
	.type	cmd_gpio_get, @function
cmd_gpio_get:
.LFB6:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_gpio_cli.c"
	.loc 1 65 1
	.cfi_startproc
.LVL0:
	.loc 1 66 5
	.loc 1 67 5
	.loc 1 69 5
	.loc 1 70 5
	.loc 1 65 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.loc 1 70 8
	li	a5,2
	.loc 1 65 1
	mv	s0,a3
	.loc 1 70 8
	beq	a2,a5,.L2
	.loc 1 71 9 is_stmt 1 discriminator 1
	.loc 1 71 47 discriminator 1
	.loc 1 71 52 discriminator 1
	.loc 1 71 73 is_stmt 0 discriminator 1
	lui	a4,%hi(_fsymc_level_hosal)
	.loc 1 71 55 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a4)
	bgtu	a4,a5,.L1
	.loc 1 71 116 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalbl_gpio_cli)
	.loc 1 71 96 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalbl_gpio_cli)(a4)
	bgtu	a4,a5,.L1
	.loc 1 71 153 is_stmt 1 discriminator 5
	.loc 1 71 255 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL1:
	.loc 1 71 153 discriminator 5
	beq	a0,zero,.L4
	.loc 1 71 284 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL2:
.L14:
	.loc 1 71 153 discriminator 8
	lw	a5,0(s0)
	.loc 1 86 1 discriminator 8
	lw	s0,24(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL3:
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	.loc 1 71 315 discriminator 8
	mv	a2,a0
	.loc 1 71 153 discriminator 8
	lui	a3,%hi(.LC3)
	lui	a1,%hi(.LC4)
	lui	a0,%hi(.LC5)
	.loc 1 86 1 discriminator 8
	.loc 1 71 153 discriminator 8
	li	a4,71
	addi	a3,a3,%lo(.LC3)
	addi	a1,a1,%lo(.LC4)
	addi	a0,a0,%lo(.LC5)
	.loc 1 86 1 discriminator 8
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	.loc 1 71 153 discriminator 8
	tail	bl_printk
.LVL4:
.L4:
	.cfi_restore_state
	.loc 1 71 315 discriminator 8
	call	xTaskGetTickCount
.LVL5:
	j	.L14
.LVL6:
.L2:
	.loc 1 76 13
	lw	a0,4(a3)
.LVL7:
	mv	s1,a2
	.loc 1 76 5 is_stmt 1
	.loc 1 76 13 is_stmt 0
	call	atoi
.LVL8:
	mv	s0,a0
.LVL9:
	.loc 1 77 5 is_stmt 1
	.loc 1 77 8 is_stmt 0
	bge	a0,zero,.L6
	.loc 1 78 9 is_stmt 1
	.loc 1 86 1 is_stmt 0
	lw	s0,24(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL10:
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s1,20(sp)
	.cfi_restore 9
.LVL11:
	lw	s2,16(sp)
	.cfi_restore 18
	.loc 1 78 9
	lui	a0,%hi(.LC6)
.LVL12:
	.loc 1 86 1
	.loc 1 78 9
	addi	a0,a0,%lo(.LC6)
	.loc 1 86 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	.loc 1 78 9
	tail	puts
.LVL13:
.L6:
	.cfi_restore_state
	.loc 1 81 5 is_stmt 1
	.loc 1 81 11 is_stmt 0
	addi	a1,sp,15
	andi	a0,a0,0xff
	call	bl_gpio_input_get
.LVL14:
	.loc 1 82 69
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 82 51
	lw	a5,%lo(_fsymc_level_hosal)(a5)
	.loc 1 81 11
	mv	s2,a0
.LVL15:
	.loc 1 82 5 is_stmt 1
	.loc 1 82 43
	.loc 1 82 48
	.loc 1 82 51 is_stmt 0
	bgtu	a5,s1,.L1
	.loc 1 82 112 discriminator 3
	lui	a5,%hi(_fsymf_level_hosalbl_gpio_cli)
	.loc 1 82 92 discriminator 3
	lw	a5,%lo(_fsymf_level_hosalbl_gpio_cli)(a5)
	bgtu	a5,s1,.L1
	.loc 1 82 149 is_stmt 1 discriminator 5
	.loc 1 82 233 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL16:
	.loc 1 82 149 discriminator 5
	beq	a0,zero,.L7
	.loc 1 82 262 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL17:
.L15:
	.loc 1 82 293 discriminator 8
	mv	a2,a0
	.loc 1 82 149 discriminator 8
	bne	s2,zero,.L11
	.loc 1 82 368 discriminator 11
	lbu	a5,15(sp)
	bne	a5,zero,.L12
	.loc 1 82 368
	lui	a6,%hi(.LC2)
	addi	a6,a6,%lo(.LC2)
.L9:
	.loc 1 82 149 discriminator 18
	lui	a3,%hi(.LC3)
	lui	a1,%hi(.LC4)
	lui	a0,%hi(.LC7)
	mv	a5,s0
	li	a4,82
	addi	a3,a3,%lo(.LC3)
	addi	a1,a1,%lo(.LC4)
	addi	a0,a0,%lo(.LC7)
	call	bl_printk
.LVL18:
	.loc 1 82 397 is_stmt 1 discriminator 18
	.loc 1 85 6 discriminator 18
.L1:
	.loc 1 86 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL19:
.L7:
	.cfi_restore_state
	.loc 1 82 293 discriminator 8
	call	xTaskGetTickCount
.LVL20:
	j	.L15
.L11:
	.loc 1 82 149
	lui	a6,%hi(.LC0)
	addi	a6,a6,%lo(.LC0)
	j	.L9
.L12:
	.loc 1 82 368
	lui	a6,%hi(.LC1)
	addi	a6,a6,%lo(.LC1)
	j	.L9
	.cfi_endproc
.LFE6:
	.size	cmd_gpio_get, .-cmd_gpio_get
	.section	.rodata.cmd_gpio_set.str1.4,"aMS",@progbits,1
	.align	2
.LC8:
	.string	"lo"
	.align	2
.LC9:
	.string	"%s (%d)[%s:%4d] Usage: %s 24 1\r\n  set GPIO24 output to high\r\n\r\n"
	.align	2
.LC10:
	.string	"\033[31mERROR\033[0m"
	.align	2
.LC11:
	.string	"%s (%d)[%s:%4d] Illegal arg\r\n\r\n"
	.align	2
.LC12:
	.string	"%s (%d)[%s:%4d] GPIO%d is set to %s\r\n\r\n"
	.section	.text.cmd_gpio_set,"ax",@progbits
	.align	1
	.type	cmd_gpio_set, @function
cmd_gpio_set:
.LFB5:
	.loc 1 42 1 is_stmt 1
	.cfi_startproc
.LVL21:
	.loc 1 43 5
	.loc 1 45 5
	.loc 1 42 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s1,4(sp)
	sw	s2,0(sp)
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 45 8
	li	a5,3
	.loc 1 42 1
	mv	s1,a3
	lui	s2,%hi(_fsymc_level_hosal)
	.loc 1 45 8
	beq	a2,a5,.L17
	.loc 1 46 9 is_stmt 1 discriminator 1
	.loc 1 46 47 discriminator 1
	.loc 1 46 52 discriminator 1
	.loc 1 46 55 is_stmt 0 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(s2)
	li	a5,2
	bgtu	a4,a5,.L16
	.loc 1 46 116 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalbl_gpio_cli)
	.loc 1 46 96 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalbl_gpio_cli)(a4)
	bgtu	a4,a5,.L16
	.loc 1 46 153 is_stmt 1 discriminator 5
	.loc 1 46 266 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL22:
	.loc 1 46 153 discriminator 5
	beq	a0,zero,.L21
	.loc 1 46 295 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL23:
.L33:
	.loc 1 62 1 discriminator 8
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	.loc 1 46 153 discriminator 8
	lw	a5,0(s1)
	.loc 1 62 1 discriminator 8
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
.LVL24:
	lw	s2,0(sp)
	.cfi_restore 18
	.loc 1 46 326 discriminator 8
	mv	a2,a0
	.loc 1 46 153 discriminator 8
	lui	a3,%hi(.LC3)
	lui	a1,%hi(.LC4)
	lui	a0,%hi(.LC9)
	.loc 1 62 1 discriminator 8
	.loc 1 46 153 discriminator 8
	li	a4,46
	addi	a3,a3,%lo(.LC3)
	addi	a1,a1,%lo(.LC4)
	addi	a0,a0,%lo(.LC9)
	.loc 1 62 1 discriminator 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 46 153 discriminator 8
	tail	bl_printk
.LVL25:
.L21:
	.cfi_restore_state
	.loc 1 46 326 discriminator 8
	call	xTaskGetTickCount
.LVL26:
	j	.L33
.LVL27:
.L17:
	.loc 1 51 5 is_stmt 1
	.loc 1 51 13 is_stmt 0
	lw	a0,4(a3)
.LVL28:
	call	atoi
.LVL29:
	mv	s0,a0
.LVL30:
	.loc 1 52 5 is_stmt 1
	.loc 1 52 11 is_stmt 0
	lw	a0,8(s1)
	call	atoi
.LVL31:
	.loc 1 54 55
	lw	a4,%lo(_fsymc_level_hosal)(s2)
	.loc 1 52 11
	mv	s1,a0
.LVL32:
	.loc 1 53 5 is_stmt 1
	.loc 1 53 8 is_stmt 0
	blt	s0,zero,.L23
	.loc 1 53 19 discriminator 1
	bge	a0,zero,.L24
.L23:
	.loc 1 54 9 is_stmt 1 discriminator 1
	.loc 1 54 47 discriminator 1
	.loc 1 54 52 discriminator 1
	.loc 1 54 55 is_stmt 0 discriminator 1
	li	a5,4
	bgtu	a4,a5,.L16
	.loc 1 54 118 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalbl_gpio_cli)
	.loc 1 54 97 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalbl_gpio_cli)(a4)
	bgtu	a4,a5,.L16
	.loc 1 54 155 is_stmt 1 discriminator 5
	.loc 1 54 235 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL33:
	.loc 1 54 155 discriminator 5
	beq	a0,zero,.L25
	.loc 1 54 264 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL34:
.L34:
	.loc 1 62 1 discriminator 8
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL35:
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
.LVL36:
	lw	s2,0(sp)
	.cfi_restore 18
	.loc 1 54 295 discriminator 8
	mv	a2,a0
	.loc 1 54 155 discriminator 8
	lui	a3,%hi(.LC3)
	lui	a1,%hi(.LC10)
	lui	a0,%hi(.LC11)
	.loc 1 62 1 discriminator 8
	.loc 1 54 155 discriminator 8
	li	a4,54
	addi	a3,a3,%lo(.LC3)
	addi	a1,a1,%lo(.LC10)
	addi	a0,a0,%lo(.LC11)
	.loc 1 62 1 discriminator 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 54 155 discriminator 8
	tail	bl_printk
.LVL37:
.L25:
	.cfi_restore_state
	.loc 1 54 295 discriminator 8
	call	xTaskGetTickCount
.LVL38:
	j	.L34
.L24:
	.loc 1 57 5 is_stmt 1 discriminator 1
	.loc 1 57 43 discriminator 1
	.loc 1 57 48 discriminator 1
	.loc 1 57 51 is_stmt 0 discriminator 1
	li	a5,2
	bgtu	a4,a5,.L27
	.loc 1 57 112 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalbl_gpio_cli)
	.loc 1 57 92 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalbl_gpio_cli)(a4)
	bgtu	a4,a5,.L27
	.loc 1 57 149 is_stmt 1 discriminator 5
	.loc 1 57 236 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL39:
	.loc 1 57 149 discriminator 5
	beq	a0,zero,.L28
	.loc 1 57 265 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL40:
.L35:
	.loc 1 57 296 discriminator 8
	mv	a2,a0
	.loc 1 57 149 discriminator 8
	bne	s1,zero,.L31
	.loc 1 57 149
	lui	a6,%hi(.LC8)
	addi	a6,a6,%lo(.LC8)
.L30:
	.loc 1 57 149 discriminator 14
	lui	a3,%hi(.LC3)
	lui	a1,%hi(.LC4)
	lui	a0,%hi(.LC12)
	mv	a5,s0
	li	a4,57
	addi	a3,a3,%lo(.LC3)
	addi	a1,a1,%lo(.LC4)
	addi	a0,a0,%lo(.LC12)
	call	bl_printk
.LVL41:
.L27:
	.loc 1 57 378 is_stmt 1 discriminator 15
	.loc 1 60 6 discriminator 15
	.loc 1 61 5 discriminator 15
	andi	a0,s0,0xff
	.loc 1 62 1 is_stmt 0 discriminator 15
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL42:
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s2,0(sp)
	.cfi_restore 18
	.loc 1 61 5 discriminator 15
	snez	a1,s1
	.loc 1 62 1 discriminator 15
	lw	s1,4(sp)
	.cfi_restore 9
.LVL43:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 61 5 discriminator 15
	tail	bl_gpio_output_set
.LVL44:
.L28:
	.cfi_restore_state
	.loc 1 57 296 discriminator 8
	call	xTaskGetTickCount
.LVL45:
	j	.L35
.L31:
	.loc 1 57 149
	lui	a6,%hi(.LC1)
	addi	a6,a6,%lo(.LC1)
	j	.L30
.LVL46:
.L16:
	.loc 1 62 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
	lw	s2,0(sp)
	.cfi_restore 18
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	cmd_gpio_set, .-cmd_gpio_set
	.section	.rodata.cmd_gpio_func.str1.4,"aMS",@progbits,1
	.align	2
.LC13:
	.string	"input"
	.align	2
.LC14:
	.string	"output"
	.align	2
.LC15:
	.string	"Active"
	.align	2
.LC16:
	.string	"null"
	.align	2
.LC17:
	.string	"%s (%d)[%s:%4d] Usage: %s 24 1 1 0\r\n  set GPIO24 to input with pullup\r\n\r\n"
	.align	2
.LC18:
	.string	"%s (%d)[%s:%4d] GPIO%d is set %s with %s pullup %s pulldown\r\n\r\n"
	.section	.text.cmd_gpio_func,"ax",@progbits
	.align	1
	.type	cmd_gpio_func, @function
cmd_gpio_func:
.LFB4:
	.loc 1 11 1 is_stmt 1
	.cfi_startproc
.LVL47:
	.loc 1 12 5
	.loc 1 14 5
	.loc 1 11 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s1,36(sp)
	sw	s4,24(sp)
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	.cfi_offset 9, -12
	.cfi_offset 20, -24
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.loc 1 14 8
	li	a5,5
	.loc 1 11 1
	mv	s1,a3
	lui	s4,%hi(_fsymc_level_hosal)
	.loc 1 14 8
	beq	a2,a5,.L37
	.loc 1 15 9 is_stmt 1 discriminator 1
	.loc 1 15 47 discriminator 1
	.loc 1 15 52 discriminator 1
	.loc 1 15 55 is_stmt 0 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(s4)
	li	a5,2
	bgtu	a4,a5,.L36
	.loc 1 15 116 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalbl_gpio_cli)
	.loc 1 15 96 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalbl_gpio_cli)(a4)
	bgtu	a4,a5,.L36
	.loc 1 15 153 is_stmt 1 discriminator 5
	.loc 1 15 276 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL48:
	.loc 1 15 153 discriminator 5
	beq	a0,zero,.L41
	.loc 1 15 305 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL49:
.L58:
	.loc 1 39 1 discriminator 8
	lw	s0,40(sp)
	.cfi_remember_state
	.cfi_restore 8
	.loc 1 15 153 discriminator 8
	lw	a5,0(s1)
	.loc 1 39 1 discriminator 8
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s1,36(sp)
	.cfi_restore 9
.LVL50:
	lw	s2,32(sp)
	.cfi_restore 18
	lw	s3,28(sp)
	.cfi_restore 19
	lw	s4,24(sp)
	.cfi_restore 20
	.loc 1 15 336 discriminator 8
	mv	a2,a0
	.loc 1 15 153 discriminator 8
	lui	a3,%hi(.LC3)
	lui	a1,%hi(.LC4)
	lui	a0,%hi(.LC17)
	.loc 1 39 1 discriminator 8
	.loc 1 15 153 discriminator 8
	li	a4,15
	addi	a3,a3,%lo(.LC3)
	addi	a1,a1,%lo(.LC4)
	addi	a0,a0,%lo(.LC17)
	.loc 1 39 1 discriminator 8
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	.loc 1 15 153 discriminator 8
	tail	bl_printk
.LVL51:
.L41:
	.cfi_restore_state
	.loc 1 15 336 discriminator 8
	call	xTaskGetTickCount
.LVL52:
	j	.L58
.LVL53:
.L37:
	.loc 1 20 5 is_stmt 1
	.loc 1 20 13 is_stmt 0
	lw	a0,4(a3)
.LVL54:
	call	atoi
.LVL55:
	mv	s0,a0
.LVL56:
	.loc 1 21 5 is_stmt 1
	.loc 1 21 17 is_stmt 0
	lw	a0,8(s1)
	call	atoi
.LVL57:
	mv	s3,a0
.LVL58:
	.loc 1 22 5 is_stmt 1
	.loc 1 22 14 is_stmt 0
	lw	a0,12(s1)
.LVL59:
	call	atoi
.LVL60:
	mv	s2,a0
.LVL61:
	.loc 1 23 5 is_stmt 1
	.loc 1 23 16 is_stmt 0
	lw	a0,16(s1)
.LVL62:
	call	atoi
.LVL63:
	mv	s1,a0
.LVL64:
	.loc 1 24 5 is_stmt 1
	.loc 1 24 8 is_stmt 0
	blt	s0,zero,.L43
	.loc 1 24 19 discriminator 1
	blt	s3,zero,.L43
	.loc 1 24 36 discriminator 2
	blt	s2,zero,.L43
	.loc 1 24 50 discriminator 3
	bge	a0,zero,.L44
.L43:
	.loc 1 25 9 is_stmt 1 discriminator 1
	.loc 1 25 47 discriminator 1
	.loc 1 25 52 discriminator 1
	.loc 1 25 55 is_stmt 0 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(s4)
	li	a5,4
	bgtu	a4,a5,.L36
	.loc 1 25 118 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalbl_gpio_cli)
	.loc 1 25 97 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalbl_gpio_cli)(a4)
	bgtu	a4,a5,.L36
	.loc 1 25 155 is_stmt 1 discriminator 5
	.loc 1 25 235 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL65:
	.loc 1 25 155 discriminator 5
	beq	a0,zero,.L45
	.loc 1 25 264 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL66:
.L59:
	.loc 1 39 1 discriminator 8
	lw	s0,40(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL67:
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s1,36(sp)
	.cfi_restore 9
.LVL68:
	lw	s2,32(sp)
	.cfi_restore 18
.LVL69:
	lw	s3,28(sp)
	.cfi_restore 19
.LVL70:
	lw	s4,24(sp)
	.cfi_restore 20
	.loc 1 25 295 discriminator 8
	mv	a2,a0
	.loc 1 25 155 discriminator 8
	lui	a3,%hi(.LC3)
	lui	a1,%hi(.LC10)
	lui	a0,%hi(.LC11)
	.loc 1 39 1 discriminator 8
	.loc 1 25 155 discriminator 8
	li	a4,25
	addi	a3,a3,%lo(.LC3)
	addi	a1,a1,%lo(.LC10)
	addi	a0,a0,%lo(.LC11)
	.loc 1 39 1 discriminator 8
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	.loc 1 25 155 discriminator 8
	tail	bl_printk
.LVL71:
.L45:
	.cfi_restore_state
	.loc 1 25 295 discriminator 8
	call	xTaskGetTickCount
.LVL72:
	j	.L59
.L44:
	.loc 1 28 5 is_stmt 1 discriminator 1
	.loc 1 28 43 discriminator 1
	.loc 1 28 48 discriminator 1
	.loc 1 28 51 is_stmt 0 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(s4)
	li	a5,2
	bgtu	a4,a5,.L47
	.loc 1 28 112 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalbl_gpio_cli)
	.loc 1 28 92 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalbl_gpio_cli)(a4)
	bgtu	a4,a5,.L47
	.loc 1 28 149 is_stmt 1 discriminator 5
	.loc 1 28 260 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL73:
	.loc 1 28 149 discriminator 5
	beq	a0,zero,.L48
	.loc 1 28 289 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL74:
.L60:
	.loc 1 28 320 discriminator 8
	mv	a2,a0
	.loc 1 28 149 discriminator 8
	bne	s3,zero,.L54
	.loc 1 28 149
	lui	a6,%hi(.LC14)
	addi	a6,a6,%lo(.LC14)
.L50:
	.loc 1 28 149 discriminator 14
	bne	s2,zero,.L55
	.loc 1 28 149
	lui	a7,%hi(.LC16)
	addi	a7,a7,%lo(.LC16)
.L51:
	.loc 1 28 149 discriminator 18
	bne	s1,zero,.L56
	.loc 1 28 149
	lui	a5,%hi(.LC16)
	addi	a5,a5,%lo(.LC16)
.L52:
	.loc 1 28 149 discriminator 22
	lui	a3,%hi(.LC3)
	lui	a1,%hi(.LC4)
	lui	a0,%hi(.LC18)
	sw	a5,0(sp)
	li	a4,28
	mv	a5,s0
	addi	a3,a3,%lo(.LC3)
	addi	a1,a1,%lo(.LC4)
	addi	a0,a0,%lo(.LC18)
	call	bl_printk
.LVL75:
.L47:
	.loc 1 28 471 is_stmt 1 discriminator 23
	.loc 1 33 6 discriminator 23
	.loc 1 34 5 discriminator 23
	.loc 1 35 9 is_stmt 0 discriminator 23
	andi	a0,s0,0xff
	snez	a1,s2
	snez	a2,s1
	.loc 1 34 8 discriminator 23
	beq	s3,zero,.L53
	.loc 1 35 9 is_stmt 1
	.loc 1 39 1 is_stmt 0
	lw	s0,40(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL76:
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s1,36(sp)
	.cfi_restore 9
.LVL77:
	lw	s2,32(sp)
	.cfi_restore 18
.LVL78:
	lw	s3,28(sp)
	.cfi_restore 19
.LVL79:
	lw	s4,24(sp)
	.cfi_restore 20
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	.loc 1 35 9
	tail	bl_gpio_enable_input
.LVL80:
.L48:
	.cfi_restore_state
	.loc 1 28 320 discriminator 8
	call	xTaskGetTickCount
.LVL81:
	j	.L60
.L54:
	.loc 1 28 149
	lui	a6,%hi(.LC13)
	addi	a6,a6,%lo(.LC13)
	j	.L50
.L55:
	lui	a7,%hi(.LC15)
	addi	a7,a7,%lo(.LC15)
	j	.L51
.L56:
	lui	a5,%hi(.LC15)
	addi	a5,a5,%lo(.LC15)
	j	.L52
.L53:
	.loc 1 37 9 is_stmt 1
	.loc 1 39 1 is_stmt 0
	lw	s0,40(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL82:
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s1,36(sp)
	.cfi_restore 9
.LVL83:
	lw	s2,32(sp)
	.cfi_restore 18
.LVL84:
	lw	s3,28(sp)
	.cfi_restore 19
.LVL85:
	lw	s4,24(sp)
	.cfi_restore 20
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	.loc 1 37 9
	tail	bl_gpio_enable_output
.LVL86:
.L36:
	.cfi_restore_state
	.loc 1 39 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
	lw	s3,28(sp)
	.cfi_restore 19
	lw	s4,24(sp)
	.cfi_restore 20
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	cmd_gpio_func, .-cmd_gpio_func
	.section	.text.bl_gpio_cli_init,"ax",@progbits
	.align	1
	.globl	bl_gpio_cli_init
	.type	bl_gpio_cli_init, @function
bl_gpio_cli_init:
.LFB7:
	.loc 1 96 1 is_stmt 1
	.cfi_startproc
	.loc 1 101 5
	.loc 1 102 1 is_stmt 0
	li	a0,0
	ret
	.cfi_endproc
.LFE7:
	.size	bl_gpio_cli_init, .-bl_gpio_cli_init
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC19:
	.string	"gpio-func"
	.align	2
.LC20:
	.string	"gpio-func pinnum 0/1[0:output, 1:input] 0/1[pullup] 0/1[pulldown]"
	.align	2
.LC21:
	.string	"gpio-set"
	.align	2
.LC22:
	.string	"gpio-set pinnum 0/1"
	.align	2
.LC23:
	.string	"gpio-get"
	.align	2
.LC24:
	.string	"gpio-get pinnum"
	.globl	_fsymf_info_hosalbl_gpio_cli
	.align	2
.LC25:
	.string	"hosal.bl_gpio_cli"
	.comm	_fsymf_level_hosalbl_gpio_cli,4,4
	.align	2
.LC26:
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
	.word	.LC26
	.section	.static_blogfile_code.hosalbl_gpio_cli,"a"
	.align	2
	.type	_fsymf_info_hosalbl_gpio_cli, @object
	.size	_fsymf_info_hosalbl_gpio_cli, 8
_fsymf_info_hosalbl_gpio_cli:
	.word	_fsymf_level_hosalbl_gpio_cli
	.word	.LC25
	.section	.static_cli_cmds,"a"
	.align	2
	.type	cmds_user, @object
	.size	cmds_user, 36
cmds_user:
	.word	.LC19
	.word	.LC20
	.word	cmd_gpio_func
	.word	.LC21
	.word	.LC22
	.word	cmd_gpio_set
	.word	.LC23
	.word	.LC24
	.word	cmd_gpio_get
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/cli/cli/include/cli.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog_type.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_log.h"
	.file 10 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h"
	.file 11 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 12 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_gpio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x726
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF54
	.byte	0xc
	.4byte	.LASF55
	.4byte	.LASF56
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x46
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
	.byte	0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x6e
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
	.byte	0x5
	.byte	0x4
	.4byte	0x89
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x6
	.4byte	0x89
	.byte	0x5
	.byte	0x4
	.4byte	0x90
	.byte	0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x3a
	.byte	0x4
	.4byte	.LASF13
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x62
	.byte	0x6
	.4byte	0xa7
	.byte	0x7
	.4byte	.LASF25
	.byte	0xc
	.byte	0x4
	.byte	0x32
	.byte	0x8
	.4byte	0xed
	.byte	0x8
	.4byte	.LASF14
	.byte	0x4
	.byte	0x33
	.byte	0x11
	.4byte	0x95
	.byte	0
	.byte	0x8
	.4byte	.LASF15
	.byte	0x4
	.byte	0x34
	.byte	0x11
	.4byte	0x95
	.byte	0x4
	.byte	0x8
	.4byte	.LASF16
	.byte	0x4
	.byte	0x36
	.byte	0xc
	.4byte	0x112
	.byte	0x8
	.byte	0
	.byte	0x6
	.4byte	0xb8
	.byte	0x9
	.4byte	0x10c
	.byte	0xa
	.4byte	0x83
	.byte	0xa
	.4byte	0x2c
	.byte	0xa
	.4byte	0x2c
	.byte	0xa
	.4byte	0x10c
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x83
	.byte	0x5
	.byte	0x4
	.4byte	0xf2
	.byte	0xb
	.4byte	.LASF57
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x5
	.byte	0x22
	.byte	0xe
	.4byte	0x155
	.byte	0xc
	.4byte	.LASF17
	.byte	0
	.byte	0xc
	.4byte	.LASF18
	.byte	0x1
	.byte	0xc
	.4byte	.LASF19
	.byte	0x2
	.byte	0xc
	.4byte	.LASF20
	.byte	0x3
	.byte	0xc
	.4byte	.LASF21
	.byte	0x4
	.byte	0xc
	.4byte	.LASF22
	.byte	0x5
	.byte	0xc
	.4byte	.LASF23
	.byte	0x6
	.byte	0
	.byte	0x4
	.4byte	.LASF24
	.byte	0x5
	.byte	0x2a
	.byte	0x3
	.4byte	0x118
	.byte	0x7
	.4byte	.LASF26
	.byte	0x8
	.byte	0x5
	.byte	0x2c
	.byte	0x10
	.4byte	0x189
	.byte	0x8
	.4byte	.LASF27
	.byte	0x5
	.byte	0x2d
	.byte	0x13
	.4byte	0x189
	.byte	0
	.byte	0x8
	.4byte	.LASF14
	.byte	0x5
	.byte	0x2e
	.byte	0xb
	.4byte	0x83
	.byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x155
	.byte	0x4
	.4byte	.LASF28
	.byte	0x5
	.byte	0x2f
	.byte	0x3
	.4byte	0x161
	.byte	0x6
	.4byte	0x18f
	.byte	0xd
	.4byte	.LASF29
	.byte	0x6
	.byte	0x38
	.byte	0x1b
	.4byte	0xb3
	.byte	0x5
	.byte	0x3
	.4byte	BLOG_HARD_DECLARE_DISABLE
	.byte	0xe
	.4byte	.LASF31
	.byte	0x6
	.byte	0x45
	.byte	0x12
	.4byte	0x155
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_level_hosal
	.byte	0xd
	.4byte	.LASF30
	.byte	0x6
	.byte	0x46
	.byte	0x1e
	.4byte	0x19b
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_info_hosal
	.byte	0xe
	.4byte	.LASF32
	.byte	0x6
	.byte	0x53
	.byte	0x12
	.4byte	0x155
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_level_hosalbl_gpio_cli
	.byte	0xe
	.4byte	.LASF33
	.byte	0x6
	.byte	0x54
	.byte	0x17
	.4byte	0x19b
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_info_hosalbl_gpio_cli
	.byte	0xf
	.4byte	0xed
	.4byte	0x20a
	.byte	0x10
	.4byte	0x25
	.byte	0x2
	.byte	0
	.byte	0x6
	.4byte	0x1fa
	.byte	0xd
	.4byte	.LASF34
	.byte	0x1
	.byte	0x59
	.byte	0x21
	.4byte	0x20a
	.byte	0x5
	.byte	0x3
	.4byte	cmds_user
	.byte	0x11
	.4byte	.LASF58
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.4byte	0x2c
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.byte	0x12
	.4byte	.LASF38
	.byte	0x1
	.byte	0x40
	.byte	0xd
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x38b
	.byte	0x13
	.string	"buf"
	.byte	0x1
	.byte	0x40
	.byte	0x20
	.4byte	0x83
	.4byte	.LLST0
	.byte	0x13
	.string	"len"
	.byte	0x1
	.byte	0x40
	.byte	0x29
	.4byte	0x2c
	.4byte	.LLST1
	.byte	0x14
	.4byte	.LASF35
	.byte	0x1
	.byte	0x40
	.byte	0x32
	.4byte	0x2c
	.4byte	.LLST2
	.byte	0x14
	.4byte	.LASF36
	.byte	0x1
	.byte	0x40
	.byte	0x3f
	.4byte	0x10c
	.4byte	.LLST3
	.byte	0x15
	.4byte	.LASF37
	.byte	0x1
	.byte	0x42
	.byte	0x9
	.4byte	0x2c
	.4byte	.LLST4
	.byte	0x16
	.string	"ret"
	.byte	0x1
	.byte	0x42
	.byte	0x15
	.4byte	0x2c
	.4byte	.LLST5
	.byte	0x17
	.string	"val"
	.byte	0x1
	.byte	0x43
	.byte	0xd
	.4byte	0x9b
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0x18
	.4byte	.LVL1
	.4byte	0x6af
	.byte	0x18
	.4byte	.LVL2
	.4byte	0x6bb
	.byte	0x19
	.4byte	.LVL4
	.4byte	0x6c8
	.4byte	0x2fd
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x1a
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x1a
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x47
	.byte	0
	.byte	0x18
	.4byte	.LVL5
	.4byte	0x6d4
	.byte	0x18
	.4byte	.LVL8
	.4byte	0x6e1
	.byte	0x19
	.4byte	.LVL13
	.4byte	0x6ed
	.4byte	0x326
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0x1b
	.4byte	.LVL14
	.4byte	0x6f9
	.4byte	0x33a
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0
	.byte	0x18
	.4byte	.LVL16
	.4byte	0x6af
	.byte	0x18
	.4byte	.LVL17
	.4byte	0x6bb
	.byte	0x1b
	.4byte	.LVL18
	.4byte	0x6c8
	.4byte	0x381
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x1a
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x1a
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x52
	.byte	0x1a
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL20
	.4byte	0x6d4
	.byte	0
	.byte	0x12
	.4byte	.LASF39
	.byte	0x1
	.byte	0x29
	.byte	0xd
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x501
	.byte	0x13
	.string	"buf"
	.byte	0x1
	.byte	0x29
	.byte	0x20
	.4byte	0x83
	.4byte	.LLST6
	.byte	0x13
	.string	"len"
	.byte	0x1
	.byte	0x29
	.byte	0x29
	.4byte	0x2c
	.4byte	.LLST7
	.byte	0x14
	.4byte	.LASF35
	.byte	0x1
	.byte	0x29
	.byte	0x32
	.4byte	0x2c
	.4byte	.LLST8
	.byte	0x14
	.4byte	.LASF36
	.byte	0x1
	.byte	0x29
	.byte	0x3f
	.4byte	0x10c
	.4byte	.LLST9
	.byte	0x15
	.4byte	.LASF37
	.byte	0x1
	.byte	0x2b
	.byte	0x9
	.4byte	0x2c
	.4byte	.LLST10
	.byte	0x16
	.string	"val"
	.byte	0x1
	.byte	0x2b
	.byte	0x15
	.4byte	0x2c
	.4byte	.LLST11
	.byte	0x18
	.4byte	.LVL22
	.4byte	0x6af
	.byte	0x18
	.4byte	.LVL23
	.4byte	0x6bb
	.byte	0x19
	.4byte	.LVL25
	.4byte	0x6c8
	.4byte	0x442
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x1a
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x1a
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x2e
	.byte	0
	.byte	0x18
	.4byte	.LVL26
	.4byte	0x6d4
	.byte	0x18
	.4byte	.LVL29
	.4byte	0x6e1
	.byte	0x18
	.4byte	.LVL31
	.4byte	0x6e1
	.byte	0x18
	.4byte	.LVL33
	.4byte	0x6af
	.byte	0x18
	.4byte	.LVL34
	.4byte	0x6bb
	.byte	0x19
	.4byte	.LVL37
	.4byte	0x6c8
	.4byte	0x49e
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0x1a
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x1a
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x36
	.byte	0
	.byte	0x18
	.4byte	.LVL38
	.4byte	0x6d4
	.byte	0x18
	.4byte	.LVL39
	.4byte	0x6af
	.byte	0x18
	.4byte	.LVL40
	.4byte	0x6bb
	.byte	0x1b
	.4byte	.LVL41
	.4byte	0x6c8
	.4byte	0x4ee
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x1a
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x1a
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x39
	.byte	0x1a
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LVL44
	.4byte	0x705
	.byte	0x18
	.4byte	.LVL45
	.4byte	0x6d4
	.byte	0
	.byte	0x12
	.4byte	.LASF40
	.byte	0x1
	.byte	0xa
	.byte	0xd
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x6af
	.byte	0x13
	.string	"buf"
	.byte	0x1
	.byte	0xa
	.byte	0x21
	.4byte	0x83
	.4byte	.LLST12
	.byte	0x13
	.string	"len"
	.byte	0x1
	.byte	0xa
	.byte	0x2a
	.4byte	0x2c
	.4byte	.LLST13
	.byte	0x14
	.4byte	.LASF35
	.byte	0x1
	.byte	0xa
	.byte	0x33
	.4byte	0x2c
	.4byte	.LLST14
	.byte	0x14
	.4byte	.LASF36
	.byte	0x1
	.byte	0xa
	.byte	0x40
	.4byte	0x10c
	.4byte	.LLST15
	.byte	0x15
	.4byte	.LASF37
	.byte	0x1
	.byte	0xc
	.byte	0x9
	.4byte	0x2c
	.4byte	.LLST16
	.byte	0x15
	.4byte	.LASF41
	.byte	0x1
	.byte	0xc
	.byte	0x15
	.4byte	0x2c
	.4byte	.LLST17
	.byte	0x15
	.4byte	.LASF42
	.byte	0x1
	.byte	0xc
	.byte	0x25
	.4byte	0x2c
	.4byte	.LLST18
	.byte	0x15
	.4byte	.LASF43
	.byte	0x1
	.byte	0xc
	.byte	0x32
	.4byte	0x2c
	.4byte	.LLST19
	.byte	0x18
	.4byte	.LVL48
	.4byte	0x6af
	.byte	0x18
	.4byte	.LVL49
	.4byte	0x6bb
	.byte	0x19
	.4byte	.LVL51
	.4byte	0x6c8
	.4byte	0x5d7
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x1a
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x1a
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x3f
	.byte	0
	.byte	0x18
	.4byte	.LVL52
	.4byte	0x6d4
	.byte	0x18
	.4byte	.LVL55
	.4byte	0x6e1
	.byte	0x18
	.4byte	.LVL57
	.4byte	0x6e1
	.byte	0x18
	.4byte	.LVL60
	.4byte	0x6e1
	.byte	0x18
	.4byte	.LVL63
	.4byte	0x6e1
	.byte	0x18
	.4byte	.LVL65
	.4byte	0x6af
	.byte	0x18
	.4byte	.LVL66
	.4byte	0x6bb
	.byte	0x19
	.4byte	.LVL71
	.4byte	0x6c8
	.4byte	0x644
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0x1a
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x1a
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x49
	.byte	0
	.byte	0x18
	.4byte	.LVL72
	.4byte	0x6d4
	.byte	0x18
	.4byte	.LVL73
	.4byte	0x6af
	.byte	0x18
	.4byte	.LVL74
	.4byte	0x6bb
	.byte	0x1b
	.4byte	.LVL75
	.4byte	0x6c8
	.4byte	0x693
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC18
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x1a
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x1a
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x4c
	.byte	0x1a
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LVL80
	.4byte	0x711
	.byte	0x18
	.4byte	.LVL81
	.4byte	0x6d4
	.byte	0x1c
	.4byte	.LVL86
	.4byte	0x71d
	.byte	0
	.byte	0x1d
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x7
	.byte	0x98
	.byte	0xc
	.byte	0x1e
	.4byte	.LASF45
	.4byte	.LASF45
	.byte	0x8
	.2byte	0x558
	.byte	0xc
	.byte	0x1d
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0x9
	.byte	0x81
	.byte	0x6
	.byte	0x1e
	.4byte	.LASF47
	.4byte	.LASF47
	.byte	0x8
	.2byte	0x547
	.byte	0xc
	.byte	0x1d
	.4byte	.LASF48
	.4byte	.LASF48
	.byte	0xa
	.byte	0x51
	.byte	0x5
	.byte	0x1d
	.4byte	.LASF49
	.4byte	.LASF49
	.byte	0xb
	.byte	0xdd
	.byte	0x5
	.byte	0x1d
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0xc
	.byte	0x12
	.byte	0x5
	.byte	0x1d
	.4byte	.LASF51
	.4byte	.LASF51
	.byte	0xc
	.byte	0x11
	.byte	0x5
	.byte	0x1d
	.4byte	.LASF52
	.4byte	.LASF52
	.byte	0xc
	.byte	0x10
	.byte	0x5
	.byte	0x1d
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0xc
	.byte	0xf
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
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
	.byte	0x8
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
	.byte	0x9
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
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
	.byte	0x12
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
	.byte	0x16
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
	.byte	0x17
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
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1b
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
	.byte	0x1c
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
	.byte	0x1d
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
	.byte	0x1e
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
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LFE6
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
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL8-1
	.4byte	.LFE6
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
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL8-1
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL1-1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL9
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL9
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL19
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL15
	.4byte	.LVL16-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16-1
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL19
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL21
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL22-1
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL21
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL22-1
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL29-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL29-1
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL21
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL22-1
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL29-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL29-1
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL21
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL22-1
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL32
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL21
	.4byte	.LVL30
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL37
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL21
	.4byte	.LVL32
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL37
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL47
	.4byte	.LVL48-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL48-1
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
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL47
	.4byte	.LVL48-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL48-1
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL55-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL55-1
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL47
	.4byte	.LVL48-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL48-1
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL55-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL55-1
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL47
	.4byte	.LVL48-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL48-1
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL64
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL47
	.4byte	.LVL56
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL71
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL47
	.4byte	.LVL58
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL59
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL71
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL80
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL47
	.4byte	.LVL61
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL62
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL71
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL80
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL47
	.4byte	.LVL64
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL71
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL80
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x59
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF26:
	.string	"_blog_info"
.LASF43:
	.string	"pulldown"
.LASF57:
	.string	"_blog_leve"
.LASF3:
	.string	"short int"
.LASF7:
	.string	"__uint32_t"
.LASF55:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_gpio_cli.c"
.LASF30:
	.string	"_fsymc_info_hosal"
.LASF15:
	.string	"help"
.LASF12:
	.string	"uint8_t"
.LASF21:
	.string	"BLOG_LEVEL_ERROR"
.LASF44:
	.string	"xPortIsInsideInterrupt"
.LASF35:
	.string	"argc"
.LASF51:
	.string	"bl_gpio_output_set"
.LASF39:
	.string	"cmd_gpio_set"
.LASF9:
	.string	"long long int"
.LASF52:
	.string	"bl_gpio_enable_input"
.LASF29:
	.string	"BLOG_HARD_DECLARE_DISABLE"
.LASF5:
	.string	"long int"
.LASF6:
	.string	"__uint8_t"
.LASF33:
	.string	"_fsymf_info_hosalbl_gpio_cli"
.LASF47:
	.string	"xTaskGetTickCount"
.LASF53:
	.string	"bl_gpio_enable_output"
.LASF48:
	.string	"atoi"
.LASF14:
	.string	"name"
.LASF58:
	.string	"bl_gpio_cli_init"
.LASF2:
	.string	"unsigned char"
.LASF42:
	.string	"pullup"
.LASF22:
	.string	"BLOG_LEVEL_ASSERT"
.LASF1:
	.string	"signed char"
.LASF10:
	.string	"long long unsigned int"
.LASF13:
	.string	"uint32_t"
.LASF0:
	.string	"unsigned int"
.LASF37:
	.string	"ionum"
.LASF19:
	.string	"BLOG_LEVEL_INFO"
.LASF49:
	.string	"puts"
.LASF36:
	.string	"argv"
.LASF4:
	.string	"short unsigned int"
.LASF11:
	.string	"char"
.LASF50:
	.string	"bl_gpio_input_get"
.LASF40:
	.string	"cmd_gpio_func"
.LASF38:
	.string	"cmd_gpio_get"
.LASF17:
	.string	"BLOG_LEVEL_ALL"
.LASF28:
	.string	"blog_info_t"
.LASF8:
	.string	"long unsigned int"
.LASF16:
	.string	"function"
.LASF56:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/hosal"
.LASF31:
	.string	"_fsymc_level_hosal"
.LASF45:
	.string	"xTaskGetTickCountFromISR"
.LASF27:
	.string	"level"
.LASF41:
	.string	"inputmode"
.LASF25:
	.string	"cli_command"
.LASF34:
	.string	"cmds_user"
.LASF46:
	.string	"bl_printk"
.LASF20:
	.string	"BLOG_LEVEL_WARN"
.LASF23:
	.string	"BLOG_LEVEL_NEVER"
.LASF24:
	.string	"blog_level_t"
.LASF18:
	.string	"BLOG_LEVEL_DEBUG"
.LASF32:
	.string	"_fsymf_level_hosalbl_gpio_cli"
.LASF54:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
