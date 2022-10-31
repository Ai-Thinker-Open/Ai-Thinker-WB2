	.file	"hosal_timer.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.timer_process,"ax",@progbits
	.align	1
	.type	timer_process, @function
timer_process:
.LFB8:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/hosal_timer.c"
	.loc 1 9 1
	.cfi_startproc
.LVL0:
	.loc 1 10 2
	.loc 1 11 5
	.loc 1 12 2
	.loc 1 14 5
	.loc 1 9 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	sw	s1,4(sp)
	sw	s2,0(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.loc 1 17 12
	lb	a5,0(a0)
	.loc 1 14 12
	lw	s1,12(a0)
.LVL1:
	.loc 1 15 5 is_stmt 1
	.loc 1 15 9 is_stmt 0
	lw	s2,16(a0)
.LVL2:
	.loc 1 17 5 is_stmt 1
	.loc 1 9 1 is_stmt 0
	mv	s0,a0
	.loc 1 17 8
	bne	a5,zero,.L2
	.loc 1 18 9 is_stmt 1
	li	a2,1
	li	a1,3
	li	a0,0
.LVL3:
	call	TIMER_IntMask
.LVL4:
	.loc 1 19 9
	li	a0,0
	li	a1,0
	call	TIMER_ClearIntStatus
.LVL5:
	.loc 1 20 9
	.loc 1 20 12 is_stmt 0
	lbu	a4,8(s0)
	li	a5,2
	.loc 1 21 13
	li	a0,0
	.loc 1 20 12
	beq	a4,a5,.L13
.L4:
	.loc 1 31 5 is_stmt 1
	.loc 1 31 8 is_stmt 0
	beq	s1,zero,.L6
	.loc 1 32 9 is_stmt 1
	mv	a0,s2
	jalr	s1
.LVL6:
.L6:
	.loc 1 35 5
	.loc 1 35 12 is_stmt 0
	lb	a5,0(s0)
	.loc 1 35 8
	bne	a5,zero,.L7
	.loc 1 36 9 is_stmt 1
	li	a2,0
	li	a1,0
	li	a0,0
.L14:
	.loc 1 40 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL7:
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
.LVL8:
	lw	s2,0(sp)
	.cfi_restore 18
.LVL9:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 38 9
	tail	TIMER_IntMask
.LVL10:
.L2:
	.cfi_restore_state
	.loc 1 23 12 is_stmt 1
	.loc 1 23 15 is_stmt 0
	li	a4,1
	bne	a5,a4,.L4
	.loc 1 24 9 is_stmt 1
	li	a2,1
	li	a1,3
	li	a0,1
	call	TIMER_IntMask
.LVL11:
	.loc 1 25 9
	li	a1,0
	li	a0,1
	call	TIMER_ClearIntStatus
.LVL12:
	.loc 1 26 9
	.loc 1 26 12 is_stmt 0
	lbu	a4,8(s0)
	li	a5,2
	bne	a4,a5,.L4
	.loc 1 27 13 is_stmt 1
	li	a0,1
.L13:
	call	TIMER_Disable
.LVL13:
	j	.L4
.L7:
	.loc 1 37 12
	.loc 1 37 15 is_stmt 0
	li	a4,1
	bne	a5,a4,.L1
	.loc 1 38 9 is_stmt 1
	li	a2,0
	li	a1,0
	li	a0,1
	j	.L14
.L1:
	.loc 1 40 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL14:
	lw	s1,4(sp)
	.cfi_restore 9
.LVL15:
	lw	s2,0(sp)
	.cfi_restore 18
.LVL16:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	timer_process, .-timer_process
	.section	.rodata.hosal_timer_init.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"hosal_timer.c"
	.align	2
.LC2:
	.string	"\033[31mERROR\033[0m"
	.align	2
.LC3:
	.string	"%s (%d)[%s:%4d] timer channel %d not exists\r\n\r\n"
	.section	.text.hosal_timer_init,"ax",@progbits
	.align	1
	.globl	hosal_timer_init
	.type	hosal_timer_init, @function
hosal_timer_init:
.LFB9:
	.loc 1 43 1 is_stmt 1
	.cfi_startproc
.LVL17:
	.loc 1 44 2
	.loc 1 43 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	.loc 1 44 17
	lui	a1,%hi(.LANCHOR0)
	.loc 1 43 1
	sw	s0,56(sp)
	.loc 1 44 17
	li	a2,36
	.cfi_offset 8, -8
	.loc 1 43 1
	mv	s0,a0
	.loc 1 44 17
	addi	a1,a1,%lo(.LANCHOR0)
	addi	a0,sp,12
.LVL18:
	.loc 1 43 1
	sw	ra,60(sp)
	.cfi_offset 1, -4
	.loc 1 44 17
	call	memcpy
.LVL19:
	.loc 1 56 5 is_stmt 1
	.loc 1 56 12 is_stmt 0
	lb	a5,0(s0)
	.loc 1 56 8
	bne	a5,zero,.L16
	.loc 1 57 9 is_stmt 1
	.loc 1 57 27 is_stmt 0
	sw	zero,12(sp)
.L17:
	.loc 1 64 2 is_stmt 1
	.loc 1 64 22 is_stmt 0
	lw	a5,4(s0)
	.loc 1 65 5
	lw	a0,12(sp)
	li	a2,1
	li	a1,3
	.loc 1 64 22
	sw	a5,32(sp)
	.loc 1 65 5 is_stmt 1
	call	TIMER_IntMask
.LVL20:
	.loc 1 66 5
	lw	a0,12(sp)
	call	TIMER_Disable
.LVL21:
	.loc 1 67 5
	addi	a0,sp,12
	call	TIMER_Init
.LVL22:
	.loc 1 70 5
	lw	a0,12(sp)
	li	a1,0
	call	TIMER_ClearIntStatus
.LVL23:
	.loc 1 71 5
	lw	a0,12(sp)
	li	a1,1
	call	TIMER_ClearIntStatus
.LVL24:
	.loc 1 72 5
	lw	a0,12(sp)
	li	a1,2
	call	TIMER_ClearIntStatus
.LVL25:
	.loc 1 75 5
	lw	a0,12(sp)
	li	a2,0
	li	a1,0
	call	TIMER_IntMask
.LVL26:
	.loc 1 76 5
	lw	a0,12(sp)
	li	a2,1
	li	a1,1
	call	TIMER_IntMask
.LVL27:
	.loc 1 77 5
	lw	a0,12(sp)
	li	a2,1
	li	a1,2
	call	TIMER_IntMask
.LVL28:
	.loc 1 79 5
	.loc 1 79 8 is_stmt 0
	lb	a5,0(s0)
	lui	a1,%hi(timer_process)
	.loc 1 80 3
	mv	a2,s0
	addi	a1,a1,%lo(timer_process)
	li	a0,52
	.loc 1 79 8
	beq	a5,zero,.L26
	.loc 1 82 3 is_stmt 1
	li	a0,53
.L26:
	call	bl_irq_register_with_ctx
.LVL29:
	.loc 1 85 12 is_stmt 0
	li	a0,0
	j	.L15
.L16:
	.loc 1 58 12 is_stmt 1
	.loc 1 58 15 is_stmt 0
	li	a4,1
	beq	a5,a4,.L17
	.loc 1 61 9 is_stmt 1 discriminator 1
	.loc 1 61 47 discriminator 1
	.loc 1 61 52 discriminator 1
	.loc 1 61 74 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 61 55 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	.loc 1 62 10 discriminator 1
	li	a0,-1
	.loc 1 61 55 discriminator 1
	bgtu	a4,a5,.L15
	.loc 1 61 118 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhosal_timer)
	.loc 1 61 97 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhosal_timer)(a4)
	bgtu	a4,a5,.L15
	.loc 1 61 155 is_stmt 1 discriminator 5
	.loc 1 61 251 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL30:
	.loc 1 61 155 discriminator 5
	beq	a0,zero,.L19
	.loc 1 61 280 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL31:
.L25:
	.loc 1 61 155 discriminator 8
	lb	a5,0(s0)
	.loc 1 61 311 discriminator 8
	mv	a2,a0
	.loc 1 61 155 discriminator 8
	lui	a3,%hi(.LC1)
	lui	a1,%hi(.LC2)
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	li	a4,61
	addi	a3,a3,%lo(.LC1)
	addi	a1,a1,%lo(.LC2)
	call	bl_printk
.LVL32:
	.loc 1 62 10 discriminator 8
	li	a0,-1
.L15:
	.loc 1 86 1
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
.LVL33:
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL34:
.L19:
	.cfi_restore_state
	.loc 1 61 311 discriminator 8
	call	xTaskGetTickCount
.LVL35:
	j	.L25
	.cfi_endproc
.LFE9:
	.size	hosal_timer_init, .-hosal_timer_init
	.section	.text.hosal_timer_start,"ax",@progbits
	.align	1
	.globl	hosal_timer_start
	.type	hosal_timer_start, @function
hosal_timer_start:
.LFB10:
	.loc 1 90 1 is_stmt 1
	.cfi_startproc
.LVL36:
	.loc 1 91 5
	.loc 1 90 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 91 12
	lb	a5,0(a0)
	.loc 1 91 8
	bne	a5,zero,.L28
	.loc 1 92 3 is_stmt 1
	li	a0,52
.LVL37:
	call	bl_irq_enable
.LVL38:
	.loc 1 93 3
	li	a0,0
.L37:
	.loc 1 96 3 is_stmt 0
	call	TIMER_Enable
.LVL39:
	.loc 1 101 12
	li	a0,0
.L27:
	.loc 1 102 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL40:
.L28:
	.cfi_restore_state
	.loc 1 94 12 is_stmt 1
	.loc 1 94 15 is_stmt 0
	li	a4,1
	bne	a5,a4,.L30
	.loc 1 95 3 is_stmt 1
	li	a0,53
.LVL41:
	call	bl_irq_enable
.LVL42:
	.loc 1 96 3
	li	a0,1
	j	.L37
.LVL43:
.L30:
	.loc 1 98 74 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 98 55 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	mv	s0,a0
	.loc 1 98 9 is_stmt 1 discriminator 1
	.loc 1 98 47 discriminator 1
	.loc 1 98 52 discriminator 1
	.loc 1 99 10 is_stmt 0 discriminator 1
	li	a0,-1
.LVL44:
	.loc 1 98 55 discriminator 1
	bgtu	a4,a5,.L27
	.loc 1 98 118 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhosal_timer)
	.loc 1 98 97 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhosal_timer)(a4)
	bgtu	a4,a5,.L27
	.loc 1 98 155 is_stmt 1 discriminator 5
	.loc 1 98 251 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL45:
	.loc 1 98 155 discriminator 5
	beq	a0,zero,.L31
	.loc 1 98 280 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL46:
.L36:
	.loc 1 98 155 discriminator 8
	lb	a5,0(s0)
	.loc 1 98 311 discriminator 8
	mv	a2,a0
	.loc 1 98 155 discriminator 8
	lui	a3,%hi(.LC1)
	lui	a1,%hi(.LC2)
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	li	a4,98
	addi	a3,a3,%lo(.LC1)
	addi	a1,a1,%lo(.LC2)
	call	bl_printk
.LVL47:
	.loc 1 99 10 discriminator 8
	li	a0,-1
	j	.L27
.L31:
	.loc 1 98 311 discriminator 8
	call	xTaskGetTickCount
.LVL48:
	j	.L36
	.cfi_endproc
.LFE10:
	.size	hosal_timer_start, .-hosal_timer_start
	.section	.rodata.hosal_timer_stop.str1.4,"aMS",@progbits,1
	.align	2
.LC4:
	.string	"\033[32mINFO\033[0m"
	.section	.text.hosal_timer_stop,"ax",@progbits
	.align	1
	.globl	hosal_timer_stop
	.type	hosal_timer_stop, @function
hosal_timer_stop:
.LFB11:
	.loc 1 105 1 is_stmt 1
	.cfi_startproc
.LVL49:
	.loc 1 106 5
	.loc 1 105 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 106 12
	lb	a5,0(a0)
	.loc 1 106 8
	bne	a5,zero,.L39
	.loc 1 107 3 is_stmt 1
	li	a0,52
.LVL50:
	call	bl_irq_disable
.LVL51:
	.loc 1 108 3
	li	a0,0
.L46:
	.loc 1 116 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 111 3
	tail	TIMER_Disable
.LVL52:
.L39:
	.cfi_restore_state
	.loc 1 109 12 is_stmt 1
	.loc 1 109 15 is_stmt 0
	li	a4,1
	bne	a5,a4,.L40
	.loc 1 110 3 is_stmt 1
	li	a0,53
.LVL53:
	call	bl_irq_disable
.LVL54:
	.loc 1 111 3
	li	a0,1
	j	.L46
.LVL55:
.L40:
	.loc 1 113 9 discriminator 1
	.loc 1 113 47 discriminator 1
	.loc 1 113 52 discriminator 1
	.loc 1 113 73 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 113 55 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,2
	bgtu	a4,a5,.L38
	.loc 1 113 116 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhosal_timer)
	.loc 1 113 96 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhosal_timer)(a4)
	bgtu	a4,a5,.L38
	mv	s0,a0
	.loc 1 113 153 is_stmt 1 discriminator 5
	.loc 1 113 248 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL56:
	.loc 1 113 153 discriminator 5
	beq	a0,zero,.L42
	.loc 1 113 277 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL57:
.L45:
	.loc 1 113 153 discriminator 8
	lb	a5,0(s0)
	.loc 1 116 1 discriminator 8
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL58:
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 113 308 discriminator 8
	mv	a2,a0
	.loc 1 113 153 discriminator 8
	lui	a3,%hi(.LC1)
	lui	a1,%hi(.LC4)
	lui	a0,%hi(.LC3)
	.loc 1 116 1 discriminator 8
	.loc 1 113 153 discriminator 8
	li	a4,113
	addi	a3,a3,%lo(.LC1)
	addi	a1,a1,%lo(.LC4)
	addi	a0,a0,%lo(.LC3)
	.loc 1 116 1 discriminator 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 113 153 discriminator 8
	tail	bl_printk
.LVL59:
.L42:
	.cfi_restore_state
	.loc 1 113 308 discriminator 8
	call	xTaskGetTickCount
.LVL60:
	j	.L45
.LVL61:
.L38:
	.loc 1 116 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	hosal_timer_stop, .-hosal_timer_stop
	.section	.text.hosal_timer_finalize,"ax",@progbits
	.align	1
	.globl	hosal_timer_finalize
	.type	hosal_timer_finalize, @function
hosal_timer_finalize:
.LFB12:
	.loc 1 119 1 is_stmt 1
	.cfi_startproc
.LVL62:
	.loc 1 120 5
	.loc 1 119 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 120 12
	lb	a5,0(a0)
	.loc 1 120 8
	bne	a5,zero,.L48
	.loc 1 121 3 is_stmt 1
	li	a0,52
.LVL63:
	call	bl_irq_disable
.LVL64:
	.loc 1 122 9
	lui	a1,%hi(timer_process)
	addi	a1,a1,%lo(timer_process)
	li	a0,52
	call	bl_irq_unregister
.LVL65:
	.loc 1 123 9
	li	a0,0
	li	a2,1
	li	a1,3
	call	TIMER_IntMask
.LVL66:
	.loc 1 124 3
	li	a0,0
.L57:
	.loc 1 129 3 is_stmt 0
	call	TIMER_Disable
.LVL67:
	.loc 1 134 12
	li	a0,0
.L47:
	.loc 1 135 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL68:
.L48:
	.cfi_restore_state
	.loc 1 125 12 is_stmt 1
	.loc 1 125 15 is_stmt 0
	li	a4,1
	bne	a5,a4,.L50
	.loc 1 126 3 is_stmt 1
	li	a0,53
.LVL69:
	call	bl_irq_disable
.LVL70:
	.loc 1 127 9
	lui	a1,%hi(timer_process)
	addi	a1,a1,%lo(timer_process)
	li	a0,53
	call	bl_irq_unregister
.LVL71:
	.loc 1 128 9
	li	a0,1
	li	a2,1
	li	a1,3
	call	TIMER_IntMask
.LVL72:
	.loc 1 129 3
	li	a0,1
	j	.L57
.LVL73:
.L50:
	.loc 1 131 74 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 131 55 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	mv	s0,a0
	.loc 1 131 9 is_stmt 1 discriminator 1
	.loc 1 131 47 discriminator 1
	.loc 1 131 52 discriminator 1
	.loc 1 132 10 is_stmt 0 discriminator 1
	li	a0,-1
.LVL74:
	.loc 1 131 55 discriminator 1
	bgtu	a4,a5,.L47
	.loc 1 131 118 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhosal_timer)
	.loc 1 131 97 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhosal_timer)(a4)
	bgtu	a4,a5,.L47
	.loc 1 131 155 is_stmt 1 discriminator 5
	.loc 1 131 251 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL75:
	.loc 1 131 155 discriminator 5
	beq	a0,zero,.L51
	.loc 1 131 280 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL76:
.L56:
	.loc 1 131 155 discriminator 8
	lb	a5,0(s0)
	.loc 1 131 311 discriminator 8
	mv	a2,a0
	.loc 1 131 155 discriminator 8
	lui	a3,%hi(.LC1)
	lui	a1,%hi(.LC2)
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	li	a4,131
	addi	a3,a3,%lo(.LC1)
	addi	a1,a1,%lo(.LC2)
	call	bl_printk
.LVL77:
	.loc 1 132 10 discriminator 8
	li	a0,-1
	j	.L47
.L51:
	.loc 1 131 311 discriminator 8
	call	xTaskGetTickCount
.LVL78:
	j	.L56
	.cfi_endproc
.LFE12:
	.size	hosal_timer_finalize, .-hosal_timer_finalize
	.globl	_fsymf_info_hosalhosal_timer
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC5:
	.string	"hosal.hosal_timer"
	.comm	_fsymf_level_hosalhosal_timer,4,4
	.align	2
.LC6:
	.string	"hosal"
	.weak	_fsymc_level_hosal
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
.LC0:
	.word	1
	.word	3
	.word	1
	.word	0
	.byte	39
	.zero	3
	.word	-1
	.word	-1
	.word	-1
	.word	0
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
	.word	.LC6
	.section	.static_blogfile_code.hosalhosal_timer,"a"
	.align	2
	.type	_fsymf_info_hosalhosal_timer, @object
	.size	_fsymf_info_hosalhosal_timer, 8
_fsymf_info_hosalhosal_timer:
	.word	_fsymf_level_hosalhosal_timer
	.word	.LC5
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_timer.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/include/hosal_timer.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog_type.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog.h"
	.file 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_irq.h"
	.file 10 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 11 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 12 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_log.h"
	.file 13 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xad4
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF160
	.byte	0xc
	.4byte	.LASF161
	.4byte	.LASF162
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x7
	.byte	0x4
	.4byte	0x1d2
	.byte	0x3
	.byte	0x41
	.byte	0xe
	.4byte	0x1d2
	.byte	0x3
	.4byte	.LASF0
	.byte	0x3
	.byte	0x3
	.4byte	.LASF1
	.byte	0x7
	.byte	0x3
	.4byte	.LASF2
	.byte	0xb
	.byte	0x3
	.4byte	.LASF3
	.byte	0xc
	.byte	0x3
	.4byte	.LASF4
	.byte	0x10
	.byte	0x3
	.4byte	.LASF5
	.byte	0x11
	.byte	0x3
	.4byte	.LASF6
	.byte	0x12
	.byte	0x3
	.4byte	.LASF7
	.byte	0x13
	.byte	0x3
	.4byte	.LASF8
	.byte	0x14
	.byte	0x3
	.4byte	.LASF9
	.byte	0x15
	.byte	0x3
	.4byte	.LASF10
	.byte	0x16
	.byte	0x3
	.4byte	.LASF11
	.byte	0x17
	.byte	0x3
	.4byte	.LASF12
	.byte	0x18
	.byte	0x3
	.4byte	.LASF13
	.byte	0x19
	.byte	0x3
	.4byte	.LASF14
	.byte	0x1a
	.byte	0x3
	.4byte	.LASF15
	.byte	0x1b
	.byte	0x3
	.4byte	.LASF16
	.byte	0x1c
	.byte	0x3
	.4byte	.LASF17
	.byte	0x1d
	.byte	0x3
	.4byte	.LASF18
	.byte	0x1e
	.byte	0x3
	.4byte	.LASF19
	.byte	0x1f
	.byte	0x3
	.4byte	.LASF20
	.byte	0x20
	.byte	0x3
	.4byte	.LASF21
	.byte	0x21
	.byte	0x3
	.4byte	.LASF22
	.byte	0x22
	.byte	0x3
	.4byte	.LASF23
	.byte	0x23
	.byte	0x3
	.4byte	.LASF24
	.byte	0x24
	.byte	0x3
	.4byte	.LASF25
	.byte	0x25
	.byte	0x3
	.4byte	.LASF26
	.byte	0x26
	.byte	0x3
	.4byte	.LASF27
	.byte	0x27
	.byte	0x3
	.4byte	.LASF28
	.byte	0x28
	.byte	0x3
	.4byte	.LASF29
	.byte	0x29
	.byte	0x3
	.4byte	.LASF30
	.byte	0x2a
	.byte	0x3
	.4byte	.LASF31
	.byte	0x2b
	.byte	0x3
	.4byte	.LASF32
	.byte	0x2c
	.byte	0x3
	.4byte	.LASF33
	.byte	0x2d
	.byte	0x3
	.4byte	.LASF34
	.byte	0x2e
	.byte	0x3
	.4byte	.LASF35
	.byte	0x2f
	.byte	0x3
	.4byte	.LASF36
	.byte	0x30
	.byte	0x3
	.4byte	.LASF37
	.byte	0x31
	.byte	0x3
	.4byte	.LASF38
	.byte	0x32
	.byte	0x3
	.4byte	.LASF39
	.byte	0x33
	.byte	0x3
	.4byte	.LASF40
	.byte	0x34
	.byte	0x3
	.4byte	.LASF41
	.byte	0x35
	.byte	0x3
	.4byte	.LASF42
	.byte	0x36
	.byte	0x3
	.4byte	.LASF43
	.byte	0x37
	.byte	0x3
	.4byte	.LASF44
	.byte	0x38
	.byte	0x3
	.4byte	.LASF45
	.byte	0x39
	.byte	0x3
	.4byte	.LASF46
	.byte	0x3a
	.byte	0x3
	.4byte	.LASF47
	.byte	0x3b
	.byte	0x3
	.4byte	.LASF48
	.byte	0x3c
	.byte	0x3
	.4byte	.LASF49
	.byte	0x3d
	.byte	0x3
	.4byte	.LASF50
	.byte	0x3e
	.byte	0x3
	.4byte	.LASF51
	.byte	0x3f
	.byte	0x3
	.4byte	.LASF52
	.byte	0x40
	.byte	0x3
	.4byte	.LASF53
	.byte	0x41
	.byte	0x3
	.4byte	.LASF54
	.byte	0x42
	.byte	0x3
	.4byte	.LASF55
	.byte	0x43
	.byte	0x3
	.4byte	.LASF56
	.byte	0x44
	.byte	0x3
	.4byte	.LASF57
	.byte	0x45
	.byte	0x3
	.4byte	.LASF58
	.byte	0x46
	.byte	0x3
	.4byte	.LASF59
	.byte	0x47
	.byte	0x3
	.4byte	.LASF60
	.byte	0x48
	.byte	0x3
	.4byte	.LASF61
	.byte	0x49
	.byte	0x3
	.4byte	.LASF62
	.byte	0x4a
	.byte	0x3
	.4byte	.LASF63
	.byte	0x4b
	.byte	0x3
	.4byte	.LASF64
	.byte	0x4c
	.byte	0x3
	.4byte	.LASF65
	.byte	0x4d
	.byte	0x3
	.4byte	.LASF66
	.byte	0x4e
	.byte	0x3
	.4byte	.LASF67
	.byte	0x4f
	.byte	0x3
	.4byte	.LASF68
	.byte	0x50
	.byte	0
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF69
	.byte	0x5
	.4byte	.LASF74
	.byte	0x2
	.byte	0x22
	.byte	0x15
	.4byte	0x1e5
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF70
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF71
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF72
	.byte	0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF73
	.byte	0x5
	.4byte	.LASF75
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x20d
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF76
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF77
	.byte	0x5
	.4byte	.LASF78
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x22c
	.byte	0x6
	.4byte	0x21b
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF79
	.byte	0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF80
	.byte	0x7
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x8
	.byte	0x4
	.byte	0x9
	.byte	0x4
	.4byte	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF81
	.byte	0x2
	.byte	0x7
	.byte	0x4
	.4byte	0x1d2
	.byte	0x4
	.byte	0x33
	.byte	0x1
	.4byte	0x26b
	.byte	0x3
	.4byte	.LASF82
	.byte	0
	.byte	0x3
	.4byte	.LASF83
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x7
	.byte	0x4
	.4byte	0x1d2
	.byte	0x5
	.byte	0x39
	.byte	0xe
	.4byte	0x28c
	.byte	0x3
	.4byte	.LASF84
	.byte	0
	.byte	0x3
	.4byte	.LASF85
	.byte	0x1
	.byte	0x3
	.4byte	.LASF86
	.byte	0x2
	.byte	0
	.byte	0x5
	.4byte	.LASF87
	.byte	0x5
	.byte	0x3d
	.byte	0x2
	.4byte	0x26b
	.byte	0x2
	.byte	0x7
	.byte	0x4
	.4byte	0x1d2
	.byte	0x5
	.byte	0x42
	.byte	0xe
	.4byte	0x2bf
	.byte	0x3
	.4byte	.LASF88
	.byte	0
	.byte	0x3
	.4byte	.LASF89
	.byte	0x1
	.byte	0x3
	.4byte	.LASF90
	.byte	0x2
	.byte	0x3
	.4byte	.LASF91
	.byte	0x3
	.byte	0
	.byte	0x5
	.4byte	.LASF92
	.byte	0x5
	.byte	0x47
	.byte	0x2
	.4byte	0x298
	.byte	0x2
	.byte	0x7
	.byte	0x4
	.4byte	0x1d2
	.byte	0x5
	.byte	0x4c
	.byte	0xe
	.4byte	0x2ec
	.byte	0x3
	.4byte	.LASF93
	.byte	0
	.byte	0x3
	.4byte	.LASF94
	.byte	0x1
	.byte	0x3
	.4byte	.LASF95
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x7
	.byte	0x4
	.4byte	0x1d2
	.byte	0x5
	.byte	0x55
	.byte	0xe
	.4byte	0x313
	.byte	0x3
	.4byte	.LASF96
	.byte	0
	.byte	0x3
	.4byte	.LASF97
	.byte	0x1
	.byte	0x3
	.4byte	.LASF98
	.byte	0x2
	.byte	0x3
	.4byte	.LASF99
	.byte	0x3
	.byte	0
	.byte	0x5
	.4byte	.LASF100
	.byte	0x5
	.byte	0x5a
	.byte	0x2
	.4byte	0x2ec
	.byte	0x2
	.byte	0x7
	.byte	0x4
	.4byte	0x1d2
	.byte	0x5
	.byte	0x5f
	.byte	0xe
	.4byte	0x33a
	.byte	0x3
	.4byte	.LASF101
	.byte	0
	.byte	0x3
	.4byte	.LASF102
	.byte	0x1
	.byte	0
	.byte	0x5
	.4byte	.LASF103
	.byte	0x5
	.byte	0x62
	.byte	0x2
	.4byte	0x31f
	.byte	0x2
	.byte	0x7
	.byte	0x4
	.4byte	0x1d2
	.byte	0x5
	.byte	0x67
	.byte	0xe
	.4byte	0x36d
	.byte	0x3
	.4byte	.LASF104
	.byte	0
	.byte	0x3
	.4byte	.LASF105
	.byte	0x1
	.byte	0x3
	.4byte	.LASF106
	.byte	0x2
	.byte	0x3
	.4byte	.LASF107
	.byte	0x3
	.byte	0
	.byte	0xa
	.byte	0x24
	.byte	0x5
	.byte	0x79
	.byte	0x9
	.4byte	0x3ec
	.byte	0xb
	.4byte	.LASF108
	.byte	0x5
	.byte	0x7a
	.byte	0x15
	.4byte	0x28c
	.byte	0
	.byte	0xb
	.4byte	.LASF109
	.byte	0x5
	.byte	0x7b
	.byte	0x17
	.4byte	0x2bf
	.byte	0x4
	.byte	0xb
	.4byte	.LASF110
	.byte	0x5
	.byte	0x7c
	.byte	0x1d
	.4byte	0x313
	.byte	0x8
	.byte	0xb
	.4byte	.LASF111
	.byte	0x5
	.byte	0x7d
	.byte	0x1a
	.4byte	0x33a
	.byte	0xc
	.byte	0xb
	.4byte	.LASF112
	.byte	0x5
	.byte	0x7e
	.byte	0xd
	.4byte	0x201
	.byte	0x10
	.byte	0xb
	.4byte	.LASF113
	.byte	0x5
	.byte	0x7f
	.byte	0xe
	.4byte	0x21b
	.byte	0x14
	.byte	0xb
	.4byte	.LASF114
	.byte	0x5
	.byte	0x80
	.byte	0xe
	.4byte	0x21b
	.byte	0x18
	.byte	0xb
	.4byte	.LASF115
	.byte	0x5
	.byte	0x81
	.byte	0xe
	.4byte	0x21b
	.byte	0x1c
	.byte	0xb
	.4byte	.LASF116
	.byte	0x5
	.byte	0x82
	.byte	0xe
	.4byte	0x21b
	.byte	0x20
	.byte	0
	.byte	0x5
	.4byte	.LASF117
	.byte	0x5
	.byte	0x83
	.byte	0x2
	.4byte	0x36d
	.byte	0x5
	.4byte	.LASF118
	.byte	0x6
	.byte	0x13
	.byte	0x10
	.4byte	0x404
	.byte	0x9
	.byte	0x4
	.4byte	0x40a
	.byte	0xc
	.4byte	0x415
	.byte	0xd
	.4byte	0x241
	.byte	0
	.byte	0xa
	.byte	0x10
	.byte	0x6
	.byte	0x18
	.byte	0x9
	.4byte	0x452
	.byte	0xb
	.4byte	.LASF119
	.byte	0x6
	.byte	0x19
	.byte	0xe
	.4byte	0x21b
	.byte	0
	.byte	0xb
	.4byte	.LASF120
	.byte	0x6
	.byte	0x1a
	.byte	0xd
	.4byte	0x201
	.byte	0x4
	.byte	0xe
	.string	"cb"
	.byte	0x6
	.byte	0x1b
	.byte	0x16
	.4byte	0x3f8
	.byte	0x8
	.byte	0xe
	.string	"arg"
	.byte	0x6
	.byte	0x1c
	.byte	0xb
	.4byte	0x241
	.byte	0xc
	.byte	0
	.byte	0x5
	.4byte	.LASF121
	.byte	0x6
	.byte	0x1d
	.byte	0x3
	.4byte	0x415
	.byte	0xa
	.byte	0x18
	.byte	0x6
	.byte	0x22
	.byte	0x9
	.4byte	0x48f
	.byte	0xb
	.4byte	.LASF122
	.byte	0x6
	.byte	0x23
	.byte	0xc
	.4byte	0x1d9
	.byte	0
	.byte	0xb
	.4byte	.LASF123
	.byte	0x6
	.byte	0x24
	.byte	0x1a
	.4byte	0x452
	.byte	0x4
	.byte	0xb
	.4byte	.LASF124
	.byte	0x6
	.byte	0x25
	.byte	0xb
	.4byte	0x241
	.byte	0x14
	.byte	0
	.byte	0x5
	.4byte	.LASF125
	.byte	0x6
	.byte	0x26
	.byte	0x3
	.4byte	0x45e
	.byte	0xf
	.4byte	.LASF163
	.byte	0x7
	.byte	0x4
	.4byte	0x1d2
	.byte	0x7
	.byte	0x22
	.byte	0xe
	.4byte	0x4d8
	.byte	0x3
	.4byte	.LASF126
	.byte	0
	.byte	0x3
	.4byte	.LASF127
	.byte	0x1
	.byte	0x3
	.4byte	.LASF128
	.byte	0x2
	.byte	0x3
	.4byte	.LASF129
	.byte	0x3
	.byte	0x3
	.4byte	.LASF130
	.byte	0x4
	.byte	0x3
	.4byte	.LASF131
	.byte	0x5
	.byte	0x3
	.4byte	.LASF132
	.byte	0x6
	.byte	0
	.byte	0x5
	.4byte	.LASF133
	.byte	0x7
	.byte	0x2a
	.byte	0x3
	.4byte	0x49b
	.byte	0x10
	.4byte	.LASF164
	.byte	0x8
	.byte	0x7
	.byte	0x2c
	.byte	0x10
	.4byte	0x50c
	.byte	0xb
	.4byte	.LASF134
	.byte	0x7
	.byte	0x2d
	.byte	0x13
	.4byte	0x50c
	.byte	0
	.byte	0xb
	.4byte	.LASF135
	.byte	0x7
	.byte	0x2e
	.byte	0xb
	.4byte	0x243
	.byte	0x4
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0x4d8
	.byte	0x5
	.4byte	.LASF136
	.byte	0x7
	.byte	0x2f
	.byte	0x3
	.4byte	0x4e4
	.byte	0x6
	.4byte	0x512
	.byte	0x11
	.4byte	.LASF137
	.byte	0x8
	.byte	0x38
	.byte	0x1b
	.4byte	0x227
	.byte	0x5
	.byte	0x3
	.4byte	BLOG_HARD_DECLARE_DISABLE
	.byte	0x12
	.4byte	.LASF139
	.byte	0x8
	.byte	0x45
	.byte	0x12
	.4byte	0x4d8
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_level_hosal
	.byte	0x11
	.4byte	.LASF138
	.byte	0x8
	.byte	0x46
	.byte	0x1e
	.4byte	0x51e
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_info_hosal
	.byte	0x12
	.4byte	.LASF140
	.byte	0x8
	.byte	0x53
	.byte	0x12
	.4byte	0x4d8
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_level_hosalhosal_timer
	.byte	0x12
	.4byte	.LASF141
	.byte	0x8
	.byte	0x54
	.byte	0x17
	.4byte	0x51e
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_info_hosalhosal_timer
	.byte	0x13
	.4byte	.LASF142
	.byte	0x1
	.byte	0x76
	.byte	0x5
	.4byte	0x23a
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x697
	.byte	0x14
	.string	"tim"
	.byte	0x1
	.byte	0x76
	.byte	0x2d
	.4byte	0x697
	.4byte	.LLST7
	.byte	0x15
	.4byte	.LVL64
	.4byte	0xa2e
	.4byte	0x5bb
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x34
	.byte	0
	.byte	0x15
	.4byte	.LVL65
	.4byte	0xa3a
	.4byte	0x5d8
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x34
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	timer_process
	.byte	0
	.byte	0x15
	.4byte	.LVL66
	.4byte	0xa46
	.4byte	0x5f5
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x17
	.4byte	.LVL67
	.4byte	0xa52
	.byte	0x15
	.4byte	.LVL70
	.4byte	0xa2e
	.4byte	0x612
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x35
	.byte	0
	.byte	0x15
	.4byte	.LVL71
	.4byte	0xa3a
	.4byte	0x62f
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x35
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	timer_process
	.byte	0
	.byte	0x15
	.4byte	.LVL72
	.4byte	0xa46
	.4byte	0x64c
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x17
	.4byte	.LVL75
	.4byte	0xa5e
	.byte	0x17
	.4byte	.LVL76
	.4byte	0xa6a
	.byte	0x15
	.4byte	.LVL77
	.4byte	0xa77
	.4byte	0x68d
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x83
	.byte	0
	.byte	0x17
	.4byte	.LVL78
	.4byte	0xa83
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0x48f
	.byte	0x18
	.4byte	.LASF165
	.byte	0x1
	.byte	0x68
	.byte	0x6
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x73f
	.byte	0x14
	.string	"tim"
	.byte	0x1
	.byte	0x68
	.byte	0x2a
	.4byte	0x697
	.4byte	.LLST6
	.byte	0x15
	.4byte	.LVL51
	.4byte	0xa2e
	.4byte	0x6d7
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x34
	.byte	0
	.byte	0x19
	.4byte	.LVL52
	.4byte	0xa52
	.byte	0x15
	.4byte	.LVL54
	.4byte	0xa2e
	.4byte	0x6f4
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x35
	.byte	0
	.byte	0x17
	.4byte	.LVL56
	.4byte	0xa5e
	.byte	0x17
	.4byte	.LVL57
	.4byte	0xa6a
	.byte	0x1a
	.4byte	.LVL59
	.4byte	0xa77
	.4byte	0x735
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x71
	.byte	0
	.byte	0x17
	.4byte	.LVL60
	.4byte	0xa83
	.byte	0
	.byte	0x13
	.4byte	.LASF143
	.byte	0x1
	.byte	0x59
	.byte	0x5
	.4byte	0x23a
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x7e5
	.byte	0x14
	.string	"tim"
	.byte	0x1
	.byte	0x59
	.byte	0x2a
	.4byte	0x697
	.4byte	.LLST5
	.byte	0x15
	.4byte	.LVL38
	.4byte	0xa90
	.4byte	0x77d
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x34
	.byte	0
	.byte	0x17
	.4byte	.LVL39
	.4byte	0xa9c
	.byte	0x15
	.4byte	.LVL42
	.4byte	0xa90
	.4byte	0x79a
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x35
	.byte	0
	.byte	0x17
	.4byte	.LVL45
	.4byte	0xa5e
	.byte	0x17
	.4byte	.LVL46
	.4byte	0xa6a
	.byte	0x15
	.4byte	.LVL47
	.4byte	0xa77
	.4byte	0x7db
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x62
	.byte	0
	.byte	0x17
	.4byte	.LVL48
	.4byte	0xa83
	.byte	0
	.byte	0x13
	.4byte	.LASF144
	.byte	0x1
	.byte	0x2a
	.byte	0x5
	.4byte	0x23a
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x94b
	.byte	0x14
	.string	"tim"
	.byte	0x1
	.byte	0x2a
	.byte	0x29
	.4byte	0x697
	.4byte	.LLST4
	.byte	0x11
	.4byte	.LASF145
	.byte	0x1
	.byte	0x2c
	.byte	0x11
	.4byte	0x3ec
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x15
	.4byte	.LVL19
	.4byte	0xaa8
	.4byte	0x841
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x24
	.byte	0
	.byte	0x15
	.4byte	.LVL20
	.4byte	0xa46
	.4byte	0x859
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x17
	.4byte	.LVL21
	.4byte	0xa52
	.byte	0x15
	.4byte	.LVL22
	.4byte	0xab3
	.4byte	0x876
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0
	.byte	0x15
	.4byte	.LVL23
	.4byte	0xabf
	.4byte	0x889
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x15
	.4byte	.LVL24
	.4byte	0xabf
	.4byte	0x89c
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x15
	.4byte	.LVL25
	.4byte	0xabf
	.4byte	0x8af
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x15
	.4byte	.LVL26
	.4byte	0xa46
	.4byte	0x8c7
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x15
	.4byte	.LVL27
	.4byte	0xa46
	.4byte	0x8df
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x15
	.4byte	.LVL28
	.4byte	0xa46
	.4byte	0x8f7
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x17
	.4byte	.LVL29
	.4byte	0xacb
	.byte	0x17
	.4byte	.LVL30
	.4byte	0xa5e
	.byte	0x17
	.4byte	.LVL31
	.4byte	0xa6a
	.byte	0x15
	.4byte	.LVL32
	.4byte	0xa77
	.4byte	0x941
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x3d
	.byte	0
	.byte	0x17
	.4byte	.LVL35
	.4byte	0xa83
	.byte	0
	.byte	0x1b
	.4byte	.LASF166
	.byte	0x1
	.byte	0x8
	.byte	0xd
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0xa2e
	.byte	0x14
	.string	"ctx"
	.byte	0x1
	.byte	0x8
	.byte	0x21
	.4byte	0x241
	.4byte	.LLST0
	.byte	0x1c
	.string	"tim"
	.byte	0x1
	.byte	0xa
	.byte	0x15
	.4byte	0x697
	.4byte	.LLST1
	.byte	0x1c
	.string	"arg"
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.4byte	0x241
	.4byte	.LLST2
	.byte	0x1d
	.4byte	.LASF146
	.byte	0x1
	.byte	0xc
	.byte	0x13
	.4byte	0x3f8
	.4byte	.LLST3
	.byte	0x15
	.4byte	.LVL4
	.4byte	0xa46
	.4byte	0x9be
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x15
	.4byte	.LVL5
	.4byte	0xabf
	.4byte	0x9d6
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1e
	.4byte	.LVL6
	.4byte	0x9e6
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LVL10
	.4byte	0xa46
	.byte	0x15
	.4byte	.LVL11
	.4byte	0xa46
	.4byte	0xa0c
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x15
	.4byte	.LVL12
	.4byte	0xabf
	.4byte	0xa24
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x17
	.4byte	.LVL13
	.4byte	0xa52
	.byte	0
	.byte	0x1f
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0x9
	.byte	0x4
	.byte	0x6
	.byte	0x1f
	.4byte	.LASF148
	.4byte	.LASF148
	.byte	0x9
	.byte	0x17
	.byte	0x6
	.byte	0x1f
	.4byte	.LASF149
	.4byte	.LASF149
	.byte	0x5
	.byte	0xdf
	.byte	0x6
	.byte	0x1f
	.4byte	.LASF150
	.4byte	.LASF150
	.byte	0x5
	.byte	0xde
	.byte	0x6
	.byte	0x1f
	.4byte	.LASF151
	.4byte	.LASF151
	.byte	0xa
	.byte	0x98
	.byte	0xc
	.byte	0x20
	.4byte	.LASF152
	.4byte	.LASF152
	.byte	0xb
	.2byte	0x558
	.byte	0xc
	.byte	0x1f
	.4byte	.LASF153
	.4byte	.LASF153
	.byte	0xc
	.byte	0x81
	.byte	0x6
	.byte	0x20
	.4byte	.LASF154
	.4byte	.LASF154
	.byte	0xb
	.2byte	0x547
	.byte	0xc
	.byte	0x1f
	.4byte	.LASF155
	.4byte	.LASF155
	.byte	0x9
	.byte	0x3
	.byte	0x6
	.byte	0x1f
	.4byte	.LASF156
	.4byte	.LASF156
	.byte	0x5
	.byte	0xdd
	.byte	0x6
	.byte	0x21
	.4byte	.LASF167
	.4byte	.LASF168
	.byte	0xd
	.byte	0
	.byte	0x1f
	.4byte	.LASF157
	.4byte	.LASF157
	.byte	0x5
	.byte	0xd3
	.byte	0xd
	.byte	0x1f
	.4byte	.LASF158
	.4byte	.LASF158
	.byte	0x5
	.byte	0xdc
	.byte	0x6
	.byte	0x1f
	.4byte	.LASF159
	.4byte	.LASF159
	.byte	0x9
	.byte	0x15
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
	.byte	0x3
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
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
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x5
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
	.byte	0x6
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
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
	.byte	0x8
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
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
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
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
	.byte	0x19
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
	.byte	0x1a
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
	.byte	0x1b
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
	.byte	0x1c
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
	.byte	0x1d
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
	.byte	0x1e
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1f
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
	.byte	0x20
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
	.byte	0x21
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
.LLST7:
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL63
	.4byte	.LVL68
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL69
	.4byte	.LVL73
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL74
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL56-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL56-1
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL61
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL37
	.4byte	.LVL40
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL44
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL14
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL14
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL10
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL10
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF96:
	.string	"TIMER_PRELOAD_TRIG_NONE"
.LASF135:
	.string	"name"
.LASF86:
	.string	"TIMER_CH_MAX"
.LASF6:
	.string	"L1C_BMX_ERR_IRQn"
.LASF2:
	.string	"MEXT_IRQn"
.LASF129:
	.string	"BLOG_LEVEL_WARN"
.LASF11:
	.string	"SDIO_IRQn"
.LASF54:
	.string	"PDS_WAKEUP_IRQn"
.LASF130:
	.string	"BLOG_LEVEL_ERROR"
.LASF59:
	.string	"BZ_PHY_IRQn"
.LASF69:
	.string	"unsigned int"
.LASF149:
	.string	"TIMER_IntMask"
.LASF78:
	.string	"uint32_t"
.LASF66:
	.string	"MAC_PORT_TRG_IRQn"
.LASF57:
	.string	"BOR_IRQn"
.LASF5:
	.string	"BMX_TO_IRQn"
.LASF134:
	.string	"level"
.LASF71:
	.string	"short int"
.LASF18:
	.string	"SEC_SHA_IRQn"
.LASF42:
	.string	"TIMER_WDT_IRQn"
.LASF27:
	.string	"SF_CTRL_IRQn"
.LASF168:
	.string	"__builtin_memcpy"
.LASF160:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF113:
	.string	"matchVal0"
.LASF114:
	.string	"matchVal1"
.LASF115:
	.string	"matchVal2"
.LASF136:
	.string	"blog_info_t"
.LASF90:
	.string	"TIMER_CLKSRC_1K"
.LASF92:
	.string	"TIMER_ClkSrc_Type"
.LASF56:
	.string	"HBN_OUT1_IRQn"
.LASF74:
	.string	"int8_t"
.LASF111:
	.string	"countMode"
.LASF142:
	.string	"hosal_timer_finalize"
.LASF133:
	.string	"blog_level_t"
.LASF48:
	.string	"GPIO_INT0_IRQn"
.LASF80:
	.string	"long long unsigned int"
.LASF152:
	.string	"xTaskGetTickCountFromISR"
.LASF7:
	.string	"L1C_BMX_TO_IRQn"
.LASF144:
	.string	"hosal_timer_init"
.LASF116:
	.string	"preLoadVal"
.LASF104:
	.string	"TIMER_INT_COMP_0"
.LASF105:
	.string	"TIMER_INT_COMP_1"
.LASF106:
	.string	"TIMER_INT_COMP_2"
.LASF10:
	.string	"RF_TOP_INT1_IRQn"
.LASF45:
	.string	"RESERVED12"
.LASF49:
	.string	"RESERVED16"
.LASF153:
	.string	"bl_printk"
.LASF40:
	.string	"TIMER_CH0_IRQn"
.LASF164:
	.string	"_blog_info"
.LASF158:
	.string	"TIMER_ClearIntStatus"
.LASF83:
	.string	"MASK"
.LASF88:
	.string	"TIMER_CLKSRC_FCLK"
.LASF128:
	.string	"BLOG_LEVEL_INFO"
.LASF132:
	.string	"BLOG_LEVEL_NEVER"
.LASF34:
	.string	"UART1_IRQn"
.LASF121:
	.string	"hosal_timer_config_t"
.LASF147:
	.string	"bl_irq_disable"
.LASF156:
	.string	"TIMER_Enable"
.LASF167:
	.string	"memcpy"
.LASF118:
	.string	"hosal_timer_cb_t"
.LASF67:
	.string	"WIFI_IPC_PUBLIC_IRQn"
.LASF19:
	.string	"DMA_ALL_IRQn"
.LASF31:
	.string	"SPI_IRQn"
.LASF166:
	.string	"timer_process"
.LASF124:
	.string	"priv"
.LASF81:
	.string	"char"
.LASF36:
	.string	"I2C_IRQn"
.LASF94:
	.string	"TIMER_COMP_ID_1"
.LASF145:
	.string	"timer_cfg"
.LASF161:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/hosal_timer.c"
.LASF75:
	.string	"uint8_t"
.LASF64:
	.string	"MAC_TX_TRG_IRQn"
.LASF82:
	.string	"UNMASK"
.LASF119:
	.string	"period"
.LASF163:
	.string	"_blog_leve"
.LASF154:
	.string	"xTaskGetTickCount"
.LASF73:
	.string	"long long int"
.LASF137:
	.string	"BLOG_HARD_DECLARE_DISABLE"
.LASF126:
	.string	"BLOG_LEVEL_ALL"
.LASF60:
	.string	"BLE_IRQn"
.LASF143:
	.string	"hosal_timer_start"
.LASF131:
	.string	"BLOG_LEVEL_ASSERT"
.LASF97:
	.string	"TIMER_PRELOAD_TRIG_COMP0"
.LASF98:
	.string	"TIMER_PRELOAD_TRIG_COMP1"
.LASF99:
	.string	"TIMER_PRELOAD_TRIG_COMP2"
.LASF55:
	.string	"HBN_OUT0_IRQn"
.LASF68:
	.string	"IRQn_LAST"
.LASF38:
	.string	"PWM_IRQn"
.LASF89:
	.string	"TIMER_CLKSRC_32K"
.LASF4:
	.string	"BMX_ERR_IRQn"
.LASF12:
	.string	"DMA_BMX_ERR_IRQn"
.LASF151:
	.string	"xPortIsInsideInterrupt"
.LASF103:
	.string	"TIMER_CountMode_Type"
.LASF112:
	.string	"clockDivision"
.LASF110:
	.string	"plTrigSrc"
.LASF65:
	.string	"MAC_GEN_IRQn"
.LASF9:
	.string	"RF_TOP_INT0_IRQn"
.LASF100:
	.string	"TIMER_PreLoad_Trig_Type"
.LASF30:
	.string	"EFUSE_IRQn"
.LASF8:
	.string	"SEC_BMX_ERR_IRQn"
.LASF62:
	.string	"MAC_TXRX_MISC_IRQn"
.LASF123:
	.string	"config"
.LASF43:
	.string	"RESERVED10"
.LASF20:
	.string	"RESERVED0"
.LASF21:
	.string	"RESERVED1"
.LASF22:
	.string	"RESERVED2"
.LASF25:
	.string	"RESERVED3"
.LASF26:
	.string	"RESERVED4"
.LASF28:
	.string	"RESERVED5"
.LASF32:
	.string	"RESERVED6"
.LASF35:
	.string	"RESERVED7"
.LASF37:
	.string	"RESERVED8"
.LASF39:
	.string	"RESERVED9"
.LASF72:
	.string	"long int"
.LASF102:
	.string	"TIMER_COUNT_FREERUN"
.LASF33:
	.string	"UART0_IRQn"
.LASF155:
	.string	"bl_irq_enable"
.LASF87:
	.string	"TIMER_Chan_Type"
.LASF24:
	.string	"IRRX_IRQn"
.LASF13:
	.string	"SEC_GMAC_IRQn"
.LASF91:
	.string	"TIMER_CLKSRC_XTAL"
.LASF141:
	.string	"_fsymf_info_hosalhosal_timer"
.LASF63:
	.string	"MAC_RX_TRG_IRQn"
.LASF108:
	.string	"timerCh"
.LASF58:
	.string	"WIFI_IRQn"
.LASF101:
	.string	"TIMER_COUNT_PRELOAD"
.LASF146:
	.string	"handle"
.LASF14:
	.string	"SEC_CDET_IRQn"
.LASF79:
	.string	"long unsigned int"
.LASF165:
	.string	"hosal_timer_stop"
.LASF1:
	.string	"MTIME_IRQn"
.LASF15:
	.string	"SEC_PKA_IRQn"
.LASF122:
	.string	"port"
.LASF29:
	.string	"GPADC_DMA_IRQn"
.LASF76:
	.string	"unsigned char"
.LASF159:
	.string	"bl_irq_register_with_ctx"
.LASF93:
	.string	"TIMER_COMP_ID_0"
.LASF3:
	.string	"CLIC_SOFT_PEND_IRQn"
.LASF95:
	.string	"TIMER_COMP_ID_2"
.LASF23:
	.string	"IRTX_IRQn"
.LASF138:
	.string	"_fsymc_info_hosal"
.LASF0:
	.string	"MSOFT_IRQn"
.LASF44:
	.string	"RESERVED11"
.LASF17:
	.string	"SEC_AES_IRQn"
.LASF46:
	.string	"RESERVED13"
.LASF47:
	.string	"RESERVED14"
.LASF162:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/hosal"
.LASF50:
	.string	"RESERVED17"
.LASF51:
	.string	"RESERVED18"
.LASF52:
	.string	"RESERVED19"
.LASF148:
	.string	"bl_irq_unregister"
.LASF157:
	.string	"TIMER_Init"
.LASF139:
	.string	"_fsymc_level_hosal"
.LASF16:
	.string	"SEC_TRNG_IRQn"
.LASF125:
	.string	"hosal_timer_dev_t"
.LASF70:
	.string	"signed char"
.LASF84:
	.string	"TIMER_CH0"
.LASF85:
	.string	"TIMER_CH1"
.LASF41:
	.string	"TIMER_CH1_IRQn"
.LASF77:
	.string	"short unsigned int"
.LASF53:
	.string	"RESERVED20"
.LASF140:
	.string	"_fsymf_level_hosalhosal_timer"
.LASF109:
	.string	"clkSrc"
.LASF127:
	.string	"BLOG_LEVEL_DEBUG"
.LASF120:
	.string	"reload_mode"
.LASF117:
	.string	"TIMER_CFG_Type"
.LASF107:
	.string	"TIMER_INT_ALL"
.LASF61:
	.string	"MAC_TXRX_TIMER_IRQn"
.LASF150:
	.string	"TIMER_Disable"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
