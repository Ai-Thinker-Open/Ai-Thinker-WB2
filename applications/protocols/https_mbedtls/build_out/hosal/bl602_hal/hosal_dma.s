	.file	"hosal_dma.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.__dma_irq_process,"ax",@progbits
	.align	1
	.type	__dma_irq_process, @function
__dma_irq_process:
.LFB30:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/hosal_dma.c"
	.loc 1 19 1
	.cfi_startproc
.LVL0:
	.loc 1 20 5
	.loc 1 21 5
	.loc 1 22 5
	.loc 1 23 5
	.loc 1 24 5
	.loc 1 25 5
	.loc 1 19 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s5,20(sp)
	sw	s6,16(sp)
	sw	s8,8(sp)
	sw	s9,4(sp)
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s7,12(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 23, -36
	.loc 1 29 12
	li	a5,1073790976
	lw	s0,4(a5)
	.loc 1 30 16
	lw	s7,12(a5)
	.loc 1 19 1
	mv	s5,a0
.LVL1:
	.loc 1 26 5 is_stmt 1
	.loc 1 27 5
	.loc 1 29 5
	.loc 1 30 5
	.loc 1 32 5
	.loc 1 32 13 is_stmt 0
	li	s1,0
	.loc 1 33 78
	li	s8,1
	.loc 1 39 24
	li	s2,1073790976
	.loc 1 45 39
	lui	s9,%hi(.LANCHOR0)
	.loc 1 45 50
	li	s6,12
.LVL2:
.L2:
	.loc 1 32 18 is_stmt 1 discriminator 1
	.loc 1 32 5 is_stmt 0 discriminator 1
	lw	a5,0(s5)
	bgt	a5,s1,.L8
	.loc 1 68 1
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
.LVL3:
	lw	s1,36(sp)
	.cfi_restore 9
.LVL4:
	lw	s2,32(sp)
	.cfi_restore 18
	lw	s3,28(sp)
	.cfi_restore 19
	lw	s4,24(sp)
	.cfi_restore 20
	lw	s5,20(sp)
	.cfi_restore 21
.LVL5:
	lw	s6,16(sp)
	.cfi_restore 22
	lw	s7,12(sp)
	.cfi_restore 23
.LVL6:
	lw	s8,8(sp)
	.cfi_restore 24
	lw	s9,4(sp)
	.cfi_restore 25
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL7:
.L8:
	.cfi_restore_state
	.loc 1 33 9 is_stmt 1
	.loc 1 33 78 is_stmt 0
	sll	s3,s8,s1
.LVL8:
	.loc 1 34 9 is_stmt 1
	.loc 1 33 73 is_stmt 0
	and	a5,s3,s0
	.loc 1 34 81
	and	s4,s3,s7
	.loc 1 33 17
	andi	a5,a5,255
.LVL9:
	.loc 1 34 21
	andi	s4,s4,255
.LVL10:
	.loc 1 36 9 is_stmt 1
	.loc 1 36 11 is_stmt 0
	bne	a5,zero,.L3
.LVL11:
.L17:
	.loc 1 36 27 discriminator 1
	beq	s4,zero,.L4
.LVL12:
	.loc 1 54 17 is_stmt 1
	.loc 1 54 24 is_stmt 0
	lw	s0,16(s2)
.LVL13:
	.loc 1 55 17 is_stmt 1
	.loc 1 56 17
	.loc 1 57 17
	.loc 1 60 50 is_stmt 0
	mul	a5,s1,s6
	.loc 1 57 24
	or	s0,s3,s0
.LVL14:
	.loc 1 58 17 is_stmt 1
	.loc 1 58 72 is_stmt 0
	sw	s0,16(s2)
	.loc 1 60 17 is_stmt 1
	.loc 1 60 39 is_stmt 0
	lw	a4,%lo(.LANCHOR0)(s9)
	.loc 1 60 50
	lw	a4,4(a4)
	add	a5,a4,a5
	.loc 1 60 21
	lw	a4,4(a5)
.LVL15:
	.loc 1 61 17 is_stmt 1
	.loc 1 62 17
	.loc 1 62 20 is_stmt 0
	bne	a4,zero,.L5
.LVL16:
.L4:
	.loc 1 32 43 is_stmt 1 discriminator 2
	.loc 1 32 45 is_stmt 0 discriminator 2
	addi	s1,s1,1
.LVL17:
	j	.L2
.LVL18:
.L3:
	.loc 1 37 13 is_stmt 1
	.loc 1 39 17
	.loc 1 39 24 is_stmt 0
	lw	s0,8(s2)
.LVL19:
	.loc 1 40 17 is_stmt 1
	.loc 1 41 17
	.loc 1 42 17
	.loc 1 45 50 is_stmt 0
	mul	a5,s1,s6
.LVL20:
	.loc 1 42 24
	or	s0,s3,s0
.LVL21:
	.loc 1 43 17 is_stmt 1
	.loc 1 43 71 is_stmt 0
	sw	s0,8(s2)
	.loc 1 45 17 is_stmt 1
	.loc 1 45 39 is_stmt 0
	lw	a4,%lo(.LANCHOR0)(s9)
	.loc 1 45 50
	lw	a4,4(a4)
	add	a5,a4,a5
	.loc 1 45 21
	lw	a4,4(a5)
.LVL22:
	.loc 1 46 17 is_stmt 1
	.loc 1 47 17
	.loc 1 47 20 is_stmt 0
	beq	a4,zero,.L17
	.loc 1 48 18 is_stmt 1
	lw	a0,8(a5)
	li	a1,0
	jalr	a4
.LVL23:
	.loc 1 52 13
	j	.L17
.LVL24:
.L5:
	.loc 1 63 18
	lw	a0,8(a5)
	li	a1,1
	jalr	a4
.LVL25:
	j	.L4
	.cfi_endproc
.LFE30:
	.size	__dma_irq_process, .-__dma_irq_process
	.section	.rodata.hosal_dma_init.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"hosal_dma.c"
	.align	2
.LC1:
	.string	"\033[31mERROR\033[0m"
	.align	2
.LC2:
	.string	"%s (%d)[%s:%4d] no memory !!!\r\n\r\n"
	.section	.text.hosal_dma_init,"ax",@progbits
	.align	1
	.globl	hosal_dma_init
	.type	hosal_dma_init, @function
hosal_dma_init:
.LFB31:
	.loc 1 76 1
	.cfi_startproc
	.loc 1 77 2
	.loc 1 78 2
	.loc 1 76 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	.cfi_offset 8, -8
	.loc 1 78 6
	lui	s0,%hi(.LANCHOR0)
	.loc 1 78 5
	lw	a5,%lo(.LANCHOR0)(s0)
	.loc 1 76 1
	sw	ra,28(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.loc 1 78 5
	bne	a5,zero,.L19
	.loc 1 82 21
	li	a1,1
	li	a0,12
	addi	s0,s0,%lo(.LANCHOR0)
	.loc 1 82 2 is_stmt 1
	.loc 1 82 21 is_stmt 0
	call	calloc
.LVL26:
	.loc 1 82 19
	sw	a0,0(s0)
	.loc 1 83 5 is_stmt 1
	.loc 1 83 8 is_stmt 0
	bne	a0,zero,.L20
	.loc 1 84 6 is_stmt 1 discriminator 1
	.loc 1 84 44 discriminator 1
	.loc 1 84 49 discriminator 1
	.loc 1 84 71 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 84 52 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	bgtu	a4,a5,.L20
	.loc 1 84 115 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhosal_dma)
	.loc 1 84 94 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhosal_dma)(a4)
	bgtu	a4,a5,.L20
	.loc 1 84 150 is_stmt 1 discriminator 5
	.loc 1 84 232 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL27:
	.loc 1 84 150 discriminator 5
	beq	a0,zero,.L21
	.loc 1 84 261 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL28:
.L29:
	.loc 1 84 292 discriminator 8
	mv	a2,a0
	.loc 1 84 150 discriminator 8
	lui	a3,%hi(.LC0)
	lui	a1,%hi(.LC1)
	lui	a0,%hi(.LC2)
	li	a4,84
	addi	a3,a3,%lo(.LC0)
	addi	a1,a1,%lo(.LC1)
	addi	a0,a0,%lo(.LC2)
	call	bl_printk
.LVL29:
.L20:
	.loc 1 84 344 is_stmt 1 discriminator 11
	.loc 1 84 355 discriminator 11
	.loc 1 87 2 discriminator 11
	.loc 1 87 18 is_stmt 0 discriminator 11
	lw	s2,0(s0)
	.loc 1 87 30 discriminator 11
	li	s1,4
	.loc 1 88 32 discriminator 11
	li	a1,1
	.loc 1 87 30 discriminator 11
	sw	s1,0(s2)
	.loc 1 88 2 is_stmt 1 discriminator 11
	.loc 1 88 32 is_stmt 0 discriminator 11
	li	a0,48
	call	calloc
.LVL30:
	.loc 1 89 25 discriminator 11
	lw	a5,0(s0)
	.loc 1 88 30 discriminator 11
	sw	a0,4(s2)
	.loc 1 89 5 is_stmt 1 discriminator 11
	.loc 1 89 8 is_stmt 0 discriminator 11
	lw	a5,4(a5)
	bne	a5,zero,.L23
	.loc 1 90 6 is_stmt 1 discriminator 1
	.loc 1 90 44 discriminator 1
	.loc 1 90 49 discriminator 1
	.loc 1 90 71 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 90 52 discriminator 1
	lw	a5,%lo(_fsymc_level_hosal)(a5)
	bgtu	a5,s1,.L23
	.loc 1 90 115 discriminator 3
	lui	a5,%hi(_fsymf_level_hosalhosal_dma)
	.loc 1 90 94 discriminator 3
	lw	a5,%lo(_fsymf_level_hosalhosal_dma)(a5)
	bgtu	a5,s1,.L23
	.loc 1 90 150 is_stmt 1 discriminator 5
	.loc 1 90 232 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL31:
	.loc 1 90 150 discriminator 5
	beq	a0,zero,.L24
	.loc 1 90 261 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL32:
.L30:
	.loc 1 90 292 discriminator 8
	mv	a2,a0
	.loc 1 90 150 discriminator 8
	lui	a3,%hi(.LC0)
	lui	a1,%hi(.LC1)
	lui	a0,%hi(.LC2)
	li	a4,90
	addi	a3,a3,%lo(.LC0)
	addi	a1,a1,%lo(.LC1)
	addi	a0,a0,%lo(.LC2)
	call	bl_printk
.LVL33:
.L23:
	.loc 1 90 344 is_stmt 1 discriminator 11
	.loc 1 90 355 discriminator 11
	.loc 1 92 5 discriminator 11
	call	DMA_Enable
.LVL34:
	.loc 1 93 5 discriminator 11
	.loc 1 93 12 is_stmt 0 discriminator 11
	li	s1,0
.LVL35:
.L26:
	.loc 1 93 17 is_stmt 1 discriminator 1
	.loc 1 93 37 is_stmt 0 discriminator 1
	lw	a2,0(s0)
	.loc 1 93 5 discriminator 1
	lw	a5,0(a2)
	bgt	a5,s1,.L27
	.loc 1 97 5 is_stmt 1
	lui	a1,%hi(__dma_irq_process)
	li	a0,31
	addi	a1,a1,%lo(__dma_irq_process)
	call	bl_irq_register_with_ctx
.LVL36:
	.loc 1 98 5
	li	a0,31
	call	bl_irq_enable
.LVL37:
	.loc 1 99 2
.L19:
	.loc 1 100 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	li	a0,0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.L21:
	.cfi_restore_state
	.loc 1 84 292 discriminator 8
	call	xTaskGetTickCount
.LVL38:
	j	.L29
.L24:
	.loc 1 90 292 discriminator 8
	call	xTaskGetTickCount
.LVL39:
	j	.L30
.LVL40:
.L27:
	.loc 1 94 6 is_stmt 1 discriminator 3
	andi	a0,s1,0xff
	sw	a0,12(sp)
	call	DMA_Channel_Disable
.LVL41:
	.loc 1 95 6 discriminator 3
	lw	a0,12(sp)
	li	a2,1
	li	a1,2
	call	DMA_IntMask
.LVL42:
	.loc 1 93 50 discriminator 3
	.loc 1 93 51 is_stmt 0 discriminator 3
	addi	s1,s1,1
.LVL43:
	j	.L26
	.cfi_endproc
.LFE31:
	.size	hosal_dma_init, .-hosal_dma_init
	.section	.rodata.hosal_dma_chan_request.str1.4,"aMS",@progbits,1
	.align	2
.LC3:
	.string	"%s (%d)[%s:%4d] please hosal_dma_init !\r\n\r\n"
	.section	.text.hosal_dma_chan_request,"ax",@progbits
	.align	1
	.globl	hosal_dma_chan_request
	.type	hosal_dma_chan_request, @function
hosal_dma_chan_request:
.LFB32:
	.loc 1 108 1 is_stmt 1
	.cfi_startproc
.LVL44:
	.loc 1 109 2
	.loc 1 111 2
	.loc 1 113 2
	.loc 1 113 6 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	lw	a3,%lo(.LANCHOR0)(a5)
	.loc 1 113 5
	beq	a3,zero,.L32
	.loc 1 118 34
	lw	a2,0(a3)
	.loc 1 118 9
	li	a0,0
.LVL45:
	.loc 1 119 35
	li	a1,12
.L33:
.LVL46:
	.loc 1 118 14 is_stmt 1 discriminator 1
	.loc 1 118 2 is_stmt 0 discriminator 1
	bgt	a2,a0,.L38
	.loc 1 115 10
	li	a0,-1
.LVL47:
	ret
.LVL48:
.L32:
	.loc 1 114 3 is_stmt 1 discriminator 1
	.loc 1 114 41 discriminator 1
	.loc 1 114 46 discriminator 1
	.loc 1 114 68 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 114 49 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	.loc 1 115 10 discriminator 1
	li	a0,-1
.LVL49:
	.loc 1 114 49 discriminator 1
	bgtu	a4,a5,.L42
	.loc 1 114 112 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhosal_dma)
	.loc 1 114 91 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhosal_dma)(a4)
	bgtu	a4,a5,.L42
	.loc 1 114 147 is_stmt 1 discriminator 5
	.loc 1 108 1 is_stmt 0 discriminator 5
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 114 239 discriminator 5
	call	xPortIsInsideInterrupt
.LVL50:
	.loc 1 114 147 discriminator 5
	beq	a0,zero,.L35
	.loc 1 114 268 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL51:
.L45:
	.loc 1 114 299 discriminator 8
	mv	a2,a0
	.loc 1 114 147 discriminator 8
	lui	a3,%hi(.LC0)
	lui	a1,%hi(.LC1)
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	li	a4,114
	addi	a3,a3,%lo(.LC0)
	addi	a1,a1,%lo(.LC1)
	call	bl_printk
.LVL52:
	.loc 1 125 1 discriminator 8
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	.loc 1 115 10 discriminator 8
	li	a0,-1
	.loc 1 125 1 discriminator 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L35:
	.cfi_restore_state
	.loc 1 114 299 discriminator 8
	call	xTaskGetTickCount
.LVL53:
	j	.L45
.LVL54:
.L38:
	.cfi_def_cfa_offset 0
	.cfi_restore 1
	.loc 1 119 3 is_stmt 1
	.loc 1 119 35 is_stmt 0
	mul	a5,a0,a1
	lw	a4,4(a3)
	add	a5,a4,a5
	.loc 1 119 6
	lbu	a4,0(a5)
	bne	a4,zero,.L37
	.loc 1 120 4 is_stmt 1
	.loc 1 120 40 is_stmt 0
	li	a4,1
	sb	a4,0(a5)
	.loc 1 121 4 is_stmt 1
	.loc 1 121 11 is_stmt 0
	ret
.L37:
	.loc 1 118 47 is_stmt 1 discriminator 2
	.loc 1 118 48 is_stmt 0 discriminator 2
	addi	a0,a0,1
.LVL55:
	j	.L33
.LVL56:
.L42:
	.loc 1 125 1
	ret
	.cfi_endproc
.LFE32:
	.size	hosal_dma_chan_request, .-hosal_dma_chan_request
	.section	.text.hosal_dma_chan_start,"ax",@progbits
	.align	1
	.globl	hosal_dma_chan_start
	.type	hosal_dma_chan_start, @function
hosal_dma_chan_start:
.LFB34:
	.loc 1 158 1 is_stmt 1
	.cfi_startproc
.LVL57:
	.loc 1 159 2
	.loc 1 159 5 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	lw	a5,%lo(.LANCHOR0)(a5)
	.loc 1 158 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 159 5
	bne	a5,zero,.L47
	.loc 1 160 3 is_stmt 1 discriminator 1
	.loc 1 160 41 discriminator 1
	.loc 1 160 46 discriminator 1
	.loc 1 160 68 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 160 49 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	.loc 1 161 10 discriminator 1
	li	a0,-1
.LVL58:
	.loc 1 160 49 discriminator 1
	bgtu	a4,a5,.L46
	.loc 1 160 112 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhosal_dma)
	.loc 1 160 91 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhosal_dma)(a4)
	bgtu	a4,a5,.L46
	.loc 1 160 147 is_stmt 1 discriminator 5
	.loc 1 160 239 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL59:
	.loc 1 160 147 discriminator 5
	beq	a0,zero,.L49
	.loc 1 160 268 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL60:
.L54:
	.loc 1 160 299 discriminator 8
	mv	a2,a0
	.loc 1 160 147 discriminator 8
	lui	a3,%hi(.LC0)
	lui	a1,%hi(.LC1)
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	li	a4,160
	addi	a3,a3,%lo(.LC0)
	addi	a1,a1,%lo(.LC1)
	call	bl_printk
.LVL61:
	.loc 1 161 10 discriminator 8
	li	a0,-1
.L46:
	.loc 1 168 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.L49:
	.cfi_restore_state
	.loc 1 160 299 discriminator 8
	call	xTaskGetTickCount
.LVL62:
	j	.L54
.LVL63:
.L47:
	.loc 1 164 5 is_stmt 1
	andi	a0,a0,0xff
.LVL64:
	li	a2,0
	li	a1,0
	sw	a0,12(sp)
	call	DMA_IntMask
.LVL65:
	.loc 1 165 5
	lw	a0,12(sp)
	li	a2,0
	li	a1,1
	call	DMA_IntMask
.LVL66:
	.loc 1 166 5
	lw	a0,12(sp)
	call	DMA_Channel_Enable
.LVL67:
	.loc 1 167 2
	.loc 1 167 9 is_stmt 0
	li	a0,0
	j	.L46
	.cfi_endproc
.LFE34:
	.size	hosal_dma_chan_start, .-hosal_dma_chan_start
	.section	.text.hosal_dma_chan_stop,"ax",@progbits
	.align	1
	.globl	hosal_dma_chan_stop
	.type	hosal_dma_chan_stop, @function
hosal_dma_chan_stop:
.LFB35:
	.loc 1 178 1 is_stmt 1
	.cfi_startproc
.LVL68:
	.loc 1 179 2
	.loc 1 179 5 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	lw	a5,%lo(.LANCHOR0)(a5)
	.loc 1 178 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 179 5
	bne	a5,zero,.L56
.LVL69:
.LBB4:
.LBB5:
	.loc 1 180 3 is_stmt 1
	.loc 1 180 41
	.loc 1 180 46
	.loc 1 180 68 is_stmt 0
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 180 49
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	li	a0,-1
.LVL70:
	bgtu	a4,a5,.L55
	.loc 1 180 112
	lui	a4,%hi(_fsymf_level_hosalhosal_dma)
	.loc 1 180 91
	lw	a4,%lo(_fsymf_level_hosalhosal_dma)(a4)
	bgtu	a4,a5,.L55
	.loc 1 180 147 is_stmt 1
	.loc 1 180 239 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL71:
	.loc 1 180 147
	beq	a0,zero,.L58
	.loc 1 180 268
	call	xTaskGetTickCountFromISR
.LVL72:
.L63:
	.loc 1 180 299
	mv	a2,a0
	.loc 1 180 147
	lui	a3,%hi(.LC0)
	lui	a1,%hi(.LC1)
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	li	a4,180
	addi	a3,a3,%lo(.LC0)
	addi	a1,a1,%lo(.LC1)
	call	bl_printk
.LVL73:
	li	a0,-1
.LVL74:
.L55:
.LBE5:
.LBE4:
	.loc 1 189 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL75:
.L58:
	.cfi_restore_state
.LBB7:
.LBB6:
	.loc 1 180 299
	call	xTaskGetTickCount
.LVL76:
	j	.L63
.LVL77:
.L56:
	mv	s0,a0
.LBE6:
.LBE7:
	.loc 1 184 2 is_stmt 1
	.loc 1 185 2 is_stmt 0
	andi	s0,s0,0xff
	.loc 1 184 2
	call	bl_dma_int_clear
.LVL78:
	.loc 1 185 2 is_stmt 1
	mv	a0,s0
	call	DMA_Channel_Disable
.LVL79:
	.loc 1 186 5
	li	a2,1
	li	a1,0
	mv	a0,s0
	call	DMA_IntMask
.LVL80:
	.loc 1 187 5
	mv	a0,s0
	li	a2,1
	li	a1,1
	call	DMA_IntMask
.LVL81:
	.loc 1 188 2
	.loc 1 188 9 is_stmt 0
	li	a0,0
	j	.L55
	.cfi_endproc
.LFE35:
	.size	hosal_dma_chan_stop, .-hosal_dma_chan_stop
	.section	.text.hosal_dma_chan_release,"ax",@progbits
	.align	1
	.globl	hosal_dma_chan_release
	.type	hosal_dma_chan_release, @function
hosal_dma_chan_release:
.LFB33:
	.loc 1 135 1 is_stmt 1
	.cfi_startproc
.LVL82:
	.loc 1 136 2
	.loc 1 135 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s1,4(sp)
	.cfi_offset 9, -12
	.loc 1 136 6
	lui	s1,%hi(.LANCHOR0)
	addi	s1,s1,%lo(.LANCHOR0)
	lw	a5,0(s1)
	.loc 1 135 1
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 136 5
	bne	a5,zero,.L65
	.loc 1 137 3 is_stmt 1 discriminator 1
	.loc 1 137 41 discriminator 1
	.loc 1 137 46 discriminator 1
	.loc 1 137 68 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 137 49 discriminator 1
	lw	a3,%lo(_fsymc_level_hosal)(a5)
	li	a4,4
	.loc 1 138 10 discriminator 1
	li	a5,-1
	.loc 1 137 49 discriminator 1
	bgtu	a3,a4,.L64
	.loc 1 137 112 discriminator 3
	lui	a3,%hi(_fsymf_level_hosalhosal_dma)
	.loc 1 137 91 discriminator 3
	lw	a3,%lo(_fsymf_level_hosalhosal_dma)(a3)
	bgtu	a3,a4,.L64
	.loc 1 137 147 is_stmt 1 discriminator 5
	.loc 1 137 239 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL83:
	.loc 1 137 147 discriminator 5
	beq	a0,zero,.L67
	.loc 1 137 268 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL84:
.L73:
	.loc 1 137 299 discriminator 8
	mv	a2,a0
	.loc 1 137 147 discriminator 8
	lui	a3,%hi(.LC0)
	lui	a1,%hi(.LC1)
	lui	a0,%hi(.LC3)
	li	a4,137
	addi	a3,a3,%lo(.LC0)
	addi	a1,a1,%lo(.LC1)
	addi	a0,a0,%lo(.LC3)
	call	bl_printk
.LVL85:
	.loc 1 138 10 discriminator 8
	li	a5,-1
.L64:
	.loc 1 148 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L67:
	.cfi_restore_state
	.loc 1 137 299 discriminator 8
	call	xTaskGetTickCount
.LVL86:
	j	.L73
.LVL87:
.L65:
	.loc 1 141 5
	lw	a4,0(a5)
	mv	s0,a0
	.loc 1 141 2 is_stmt 1
	.loc 1 138 10 is_stmt 0
	li	a5,-1
	.loc 1 141 5
	blt	a4,a0,.L64
.LVL88:
	.loc 1 144 2 is_stmt 1
	call	hosal_dma_chan_stop
.LVL89:
	.loc 1 145 2
	.loc 1 145 29 is_stmt 0
	li	a0,12
	mul	s0,s0,a0
.LVL90:
	.loc 1 145 18
	lw	a4,0(s1)
	.loc 1 145 41
	lw	a5,4(a4)
	add	a5,a5,s0
	sb	zero,0(a5)
	.loc 1 146 2 is_stmt 1
	.loc 1 146 45 is_stmt 0
	lw	a0,4(a4)
	.loc 1 147 9
	li	a5,0
	.loc 1 146 45
	add	s0,a0,s0
	sw	zero,4(s0)
	.loc 1 147 2 is_stmt 1
	.loc 1 147 9 is_stmt 0
	j	.L64
	.cfi_endproc
.LFE33:
	.size	hosal_dma_chan_release, .-hosal_dma_chan_release
	.section	.text.hosal_dma_irq_callback_set,"ax",@progbits
	.align	1
	.globl	hosal_dma_irq_callback_set
	.type	hosal_dma_irq_callback_set, @function
hosal_dma_irq_callback_set:
.LFB36:
	.loc 1 201 1 is_stmt 1
	.cfi_startproc
.LVL91:
	.loc 1 202 2
	.loc 1 202 6 is_stmt 0
	lui	a4,%hi(.LANCHOR0)
	lw	a4,%lo(.LANCHOR0)(a4)
	.loc 1 202 5
	bne	a4,zero,.L75
	.loc 1 203 3 is_stmt 1 discriminator 1
	.loc 1 203 41 discriminator 1
	.loc 1 203 46 discriminator 1
	.loc 1 203 68 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 203 49 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	.loc 1 204 10 discriminator 1
	li	a0,-1
.LVL92:
	.loc 1 203 49 discriminator 1
	bgtu	a4,a5,.L83
	.loc 1 203 112 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhosal_dma)
	.loc 1 203 91 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhosal_dma)(a4)
	bgtu	a4,a5,.L83
	.loc 1 203 147 is_stmt 1 discriminator 5
	.loc 1 201 1 is_stmt 0 discriminator 5
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 203 239 discriminator 5
	call	xPortIsInsideInterrupt
.LVL93:
	.loc 1 203 147 discriminator 5
	beq	a0,zero,.L77
	.loc 1 203 268 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL94:
.L86:
	.loc 1 203 299 discriminator 8
	mv	a2,a0
	.loc 1 203 147 discriminator 8
	lui	a3,%hi(.LC0)
	lui	a1,%hi(.LC1)
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	li	a4,203
	addi	a3,a3,%lo(.LC0)
	addi	a1,a1,%lo(.LC1)
	call	bl_printk
.LVL95:
	.loc 1 214 1 discriminator 8
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	.loc 1 204 10 discriminator 8
	li	a0,-1
	.loc 1 214 1 discriminator 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L77:
	.cfi_restore_state
	.loc 1 203 299 discriminator 8
	call	xTaskGetTickCount
.LVL96:
	j	.L86
.LVL97:
.L75:
	.cfi_def_cfa_offset 0
	.cfi_restore 1
	.loc 1 206 5
	lw	a3,0(a4)
	mv	a5,a0
	.loc 1 206 2 is_stmt 1
	.loc 1 204 10 is_stmt 0
	li	a0,-1
.LVL98:
	.loc 1 206 5
	blt	a3,a5,.L83
	.loc 1 210 2 is_stmt 1
	.loc 1 210 29 is_stmt 0
	li	a0,12
	mul	a5,a5,a0
.LVL99:
	.loc 1 210 45
	lw	a3,4(a4)
	add	a3,a3,a5
	sw	a1,4(a3)
	.loc 1 211 2 is_stmt 1
	.loc 1 211 42 is_stmt 0
	lw	a0,4(a4)
	add	a5,a0,a5
	sw	a2,8(a5)
	.loc 1 213 2 is_stmt 1
	.loc 1 213 9 is_stmt 0
	li	a0,0
	ret
.L83:
	.loc 1 214 1
	ret
	.cfi_endproc
.LFE36:
	.size	hosal_dma_irq_callback_set, .-hosal_dma_irq_callback_set
	.section	.text.hosal_dma_finalize,"ax",@progbits
	.align	1
	.globl	hosal_dma_finalize
	.type	hosal_dma_finalize, @function
hosal_dma_finalize:
.LFB37:
	.loc 1 224 1 is_stmt 1
	.cfi_startproc
	.loc 1 225 2
	.loc 1 224 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	.loc 1 225 6
	lui	s0,%hi(.LANCHOR0)
	addi	s0,s0,%lo(.LANCHOR0)
	.loc 1 225 5
	lw	a5,0(s0)
	.loc 1 224 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 225 5
	bne	a5,zero,.L88
	.loc 1 226 3 is_stmt 1 discriminator 1
	.loc 1 226 41 discriminator 1
	.loc 1 226 46 discriminator 1
	.loc 1 226 68 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 226 49 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	.loc 1 227 10 discriminator 1
	li	a0,-1
	.loc 1 226 49 discriminator 1
	bgtu	a4,a5,.L87
	.loc 1 226 112 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhosal_dma)
	.loc 1 226 91 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhosal_dma)(a4)
	bgtu	a4,a5,.L87
	.loc 1 226 147 is_stmt 1 discriminator 5
	.loc 1 226 239 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL100:
	.loc 1 226 147 discriminator 5
	beq	a0,zero,.L90
	.loc 1 226 268 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL101:
.L95:
	.loc 1 226 299 discriminator 8
	mv	a2,a0
	.loc 1 226 147 discriminator 8
	lui	a3,%hi(.LC0)
	lui	a1,%hi(.LC1)
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	li	a4,226
	addi	a3,a3,%lo(.LC0)
	addi	a1,a1,%lo(.LC1)
	call	bl_printk
.LVL102:
	.loc 1 227 10 discriminator 8
	li	a0,-1
.L87:
	.loc 1 234 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L90:
	.cfi_restore_state
	.loc 1 226 299 discriminator 8
	call	xTaskGetTickCount
.LVL103:
	j	.L95
.L88:
	.loc 1 230 2 is_stmt 1
	call	DMA_Disable
.LVL104:
	.loc 1 231 2
	li	a0,31
	call	bl_irq_disable
.LVL105:
	.loc 1 232 2
	lw	a0,0(s0)
	call	free
.LVL106:
	.loc 1 233 2
	.loc 1 233 9 is_stmt 0
	li	a0,0
	j	.L87
	.cfi_endproc
.LFE37:
	.size	hosal_dma_finalize, .-hosal_dma_finalize
	.globl	_fsymf_info_hosalhosal_dma
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC4:
	.string	"hosal.hosal_dma"
	.comm	_fsymf_level_hosalhosal_dma,4,4
	.align	2
.LC5:
	.string	"hosal"
	.weak	_fsymc_level_hosal
	.section	.sbss._fsymc_level_hosal,"aw",@nobits
	.align	2
	.type	_fsymc_level_hosal, @object
	.size	_fsymc_level_hosal, 4
_fsymc_level_hosal:
	.zero	4
	.section	.sbss.gp_hosal_dma_dev,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	gp_hosal_dma_dev, @object
	.size	gp_hosal_dma_dev, 4
gp_hosal_dma_dev:
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
	.section	.static_blogfile_code.hosalhosal_dma,"a"
	.align	2
	.type	_fsymf_info_hosalhosal_dma, @object
	.size	_fsymf_info_hosalhosal_dma, 8
_fsymf_info_hosalhosal_dma:
	.word	_fsymf_level_hosalhosal_dma
	.word	.LC4
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/include/hosal_dma.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_dma.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog_type.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog.h"
	.file 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 10 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 11 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_log.h"
	.file 12 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_irq.h"
	.file 13 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h"
	.file 14 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_dma.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xb22
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF150
	.byte	0xc
	.4byte	.LASF151
	.4byte	.LASF152
	.4byte	.Ldebug_ranges0+0x18
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
	.byte	0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x4d
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.byte	0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x6c
	.byte	0x4
	.4byte	0x5b
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x6
	.byte	0x4
	.byte	0x7
	.byte	0x4
	.4byte	0x90
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x21
	.byte	0x10
	.4byte	0xa3
	.byte	0x7
	.byte	0x4
	.4byte	0xa9
	.byte	0x8
	.4byte	0xb9
	.byte	0x9
	.4byte	0x88
	.byte	0x9
	.4byte	0x5b
	.byte	0
	.byte	0xa
	.4byte	.LASF16
	.byte	0xc
	.byte	0x3
	.byte	0x26
	.byte	0x8
	.4byte	0xee
	.byte	0xb
	.4byte	.LASF13
	.byte	0x3
	.byte	0x27
	.byte	0xd
	.4byte	0x41
	.byte	0
	.byte	0xb
	.4byte	.LASF14
	.byte	0x3
	.byte	0x28
	.byte	0x15
	.4byte	0x97
	.byte	0x4
	.byte	0xb
	.4byte	.LASF15
	.byte	0x3
	.byte	0x29
	.byte	0xb
	.4byte	0x88
	.byte	0x8
	.byte	0
	.byte	0xa
	.4byte	.LASF17
	.byte	0xc
	.byte	0x3
	.byte	0x2f
	.byte	0x10
	.4byte	0x123
	.byte	0xb
	.4byte	.LASF18
	.byte	0x3
	.byte	0x30
	.byte	0x9
	.4byte	0x7a
	.byte	0
	.byte	0xb
	.4byte	.LASF19
	.byte	0x3
	.byte	0x31
	.byte	0x1c
	.4byte	0x123
	.byte	0x4
	.byte	0xb
	.4byte	.LASF20
	.byte	0x3
	.byte	0x32
	.byte	0xb
	.4byte	0x88
	.byte	0x8
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xb9
	.byte	0x3
	.4byte	.LASF21
	.byte	0x3
	.byte	0x33
	.byte	0x3
	.4byte	0xee
	.byte	0x3
	.4byte	.LASF22
	.byte	0x3
	.byte	0x38
	.byte	0xd
	.4byte	0x7a
	.byte	0xc
	.byte	0x7
	.byte	0x4
	.4byte	0x81
	.byte	0x4
	.byte	0x41
	.byte	0xe
	.4byte	0x2ee
	.byte	0xd
	.4byte	.LASF23
	.byte	0x3
	.byte	0xd
	.4byte	.LASF24
	.byte	0x7
	.byte	0xd
	.4byte	.LASF25
	.byte	0xb
	.byte	0xd
	.4byte	.LASF26
	.byte	0xc
	.byte	0xd
	.4byte	.LASF27
	.byte	0x10
	.byte	0xd
	.4byte	.LASF28
	.byte	0x11
	.byte	0xd
	.4byte	.LASF29
	.byte	0x12
	.byte	0xd
	.4byte	.LASF30
	.byte	0x13
	.byte	0xd
	.4byte	.LASF31
	.byte	0x14
	.byte	0xd
	.4byte	.LASF32
	.byte	0x15
	.byte	0xd
	.4byte	.LASF33
	.byte	0x16
	.byte	0xd
	.4byte	.LASF34
	.byte	0x17
	.byte	0xd
	.4byte	.LASF35
	.byte	0x18
	.byte	0xd
	.4byte	.LASF36
	.byte	0x19
	.byte	0xd
	.4byte	.LASF37
	.byte	0x1a
	.byte	0xd
	.4byte	.LASF38
	.byte	0x1b
	.byte	0xd
	.4byte	.LASF39
	.byte	0x1c
	.byte	0xd
	.4byte	.LASF40
	.byte	0x1d
	.byte	0xd
	.4byte	.LASF41
	.byte	0x1e
	.byte	0xd
	.4byte	.LASF42
	.byte	0x1f
	.byte	0xd
	.4byte	.LASF43
	.byte	0x20
	.byte	0xd
	.4byte	.LASF44
	.byte	0x21
	.byte	0xd
	.4byte	.LASF45
	.byte	0x22
	.byte	0xd
	.4byte	.LASF46
	.byte	0x23
	.byte	0xd
	.4byte	.LASF47
	.byte	0x24
	.byte	0xd
	.4byte	.LASF48
	.byte	0x25
	.byte	0xd
	.4byte	.LASF49
	.byte	0x26
	.byte	0xd
	.4byte	.LASF50
	.byte	0x27
	.byte	0xd
	.4byte	.LASF51
	.byte	0x28
	.byte	0xd
	.4byte	.LASF52
	.byte	0x29
	.byte	0xd
	.4byte	.LASF53
	.byte	0x2a
	.byte	0xd
	.4byte	.LASF54
	.byte	0x2b
	.byte	0xd
	.4byte	.LASF55
	.byte	0x2c
	.byte	0xd
	.4byte	.LASF56
	.byte	0x2d
	.byte	0xd
	.4byte	.LASF57
	.byte	0x2e
	.byte	0xd
	.4byte	.LASF58
	.byte	0x2f
	.byte	0xd
	.4byte	.LASF59
	.byte	0x30
	.byte	0xd
	.4byte	.LASF60
	.byte	0x31
	.byte	0xd
	.4byte	.LASF61
	.byte	0x32
	.byte	0xd
	.4byte	.LASF62
	.byte	0x33
	.byte	0xd
	.4byte	.LASF63
	.byte	0x34
	.byte	0xd
	.4byte	.LASF64
	.byte	0x35
	.byte	0xd
	.4byte	.LASF65
	.byte	0x36
	.byte	0xd
	.4byte	.LASF66
	.byte	0x37
	.byte	0xd
	.4byte	.LASF67
	.byte	0x38
	.byte	0xd
	.4byte	.LASF68
	.byte	0x39
	.byte	0xd
	.4byte	.LASF69
	.byte	0x3a
	.byte	0xd
	.4byte	.LASF70
	.byte	0x3b
	.byte	0xd
	.4byte	.LASF71
	.byte	0x3c
	.byte	0xd
	.4byte	.LASF72
	.byte	0x3d
	.byte	0xd
	.4byte	.LASF73
	.byte	0x3e
	.byte	0xd
	.4byte	.LASF74
	.byte	0x3f
	.byte	0xd
	.4byte	.LASF75
	.byte	0x40
	.byte	0xd
	.4byte	.LASF76
	.byte	0x41
	.byte	0xd
	.4byte	.LASF77
	.byte	0x42
	.byte	0xd
	.4byte	.LASF78
	.byte	0x43
	.byte	0xd
	.4byte	.LASF79
	.byte	0x44
	.byte	0xd
	.4byte	.LASF80
	.byte	0x45
	.byte	0xd
	.4byte	.LASF81
	.byte	0x46
	.byte	0xd
	.4byte	.LASF82
	.byte	0x47
	.byte	0xd
	.4byte	.LASF83
	.byte	0x48
	.byte	0xd
	.4byte	.LASF84
	.byte	0x49
	.byte	0xd
	.4byte	.LASF85
	.byte	0x4a
	.byte	0xd
	.4byte	.LASF86
	.byte	0x4b
	.byte	0xd
	.4byte	.LASF87
	.byte	0x4c
	.byte	0xd
	.4byte	.LASF88
	.byte	0x4d
	.byte	0xd
	.4byte	.LASF89
	.byte	0x4e
	.byte	0xd
	.4byte	.LASF90
	.byte	0x4f
	.byte	0xd
	.4byte	.LASF91
	.byte	0x50
	.byte	0
	.byte	0xc
	.byte	0x7
	.byte	0x4
	.4byte	0x81
	.byte	0x5
	.byte	0x33
	.byte	0x1
	.4byte	0x309
	.byte	0xd
	.4byte	.LASF92
	.byte	0
	.byte	0xd
	.4byte	.LASF93
	.byte	0x1
	.byte	0
	.byte	0xc
	.byte	0x7
	.byte	0x4
	.4byte	0x81
	.byte	0x6
	.byte	0x77
	.byte	0xe
	.4byte	0x336
	.byte	0xd
	.4byte	.LASF94
	.byte	0
	.byte	0xd
	.4byte	.LASF95
	.byte	0x1
	.byte	0xd
	.4byte	.LASF96
	.byte	0x2
	.byte	0xd
	.4byte	.LASF97
	.byte	0x3
	.byte	0xd
	.4byte	.LASF98
	.byte	0x4
	.byte	0
	.byte	0xc
	.byte	0x7
	.byte	0x4
	.4byte	0x81
	.byte	0x6
	.byte	0x82
	.byte	0xe
	.4byte	0x357
	.byte	0xd
	.4byte	.LASF99
	.byte	0
	.byte	0xd
	.4byte	.LASF100
	.byte	0x1
	.byte	0xd
	.4byte	.LASF101
	.byte	0x2
	.byte	0
	.byte	0xe
	.4byte	.LASF153
	.byte	0x7
	.byte	0x4
	.4byte	0x81
	.byte	0x7
	.byte	0x22
	.byte	0xe
	.4byte	0x394
	.byte	0xd
	.4byte	.LASF102
	.byte	0
	.byte	0xd
	.4byte	.LASF103
	.byte	0x1
	.byte	0xd
	.4byte	.LASF104
	.byte	0x2
	.byte	0xd
	.4byte	.LASF105
	.byte	0x3
	.byte	0xd
	.4byte	.LASF106
	.byte	0x4
	.byte	0xd
	.4byte	.LASF107
	.byte	0x5
	.byte	0xd
	.4byte	.LASF108
	.byte	0x6
	.byte	0
	.byte	0x3
	.4byte	.LASF109
	.byte	0x7
	.byte	0x2a
	.byte	0x3
	.4byte	0x357
	.byte	0xa
	.4byte	.LASF110
	.byte	0x8
	.byte	0x7
	.byte	0x2c
	.byte	0x10
	.4byte	0x3c8
	.byte	0xb
	.4byte	.LASF111
	.byte	0x7
	.byte	0x2d
	.byte	0x13
	.4byte	0x3c8
	.byte	0
	.byte	0xb
	.4byte	.LASF112
	.byte	0x7
	.byte	0x2e
	.byte	0xb
	.4byte	0x8a
	.byte	0x4
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x394
	.byte	0x3
	.4byte	.LASF113
	.byte	0x7
	.byte	0x2f
	.byte	0x3
	.4byte	0x3a0
	.byte	0x4
	.4byte	0x3ce
	.byte	0xf
	.4byte	.LASF114
	.byte	0x8
	.byte	0x38
	.byte	0x1b
	.4byte	0x67
	.byte	0x5
	.byte	0x3
	.4byte	BLOG_HARD_DECLARE_DISABLE
	.byte	0x10
	.4byte	.LASF116
	.byte	0x8
	.byte	0x45
	.byte	0x12
	.4byte	0x394
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_level_hosal
	.byte	0xf
	.4byte	.LASF115
	.byte	0x8
	.byte	0x46
	.byte	0x1e
	.4byte	0x3da
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_info_hosal
	.byte	0x10
	.4byte	.LASF117
	.byte	0x8
	.byte	0x53
	.byte	0x12
	.4byte	0x394
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_level_hosalhosal_dma
	.byte	0x10
	.4byte	.LASF118
	.byte	0x8
	.byte	0x54
	.byte	0x17
	.4byte	0x3da
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_info_hosalhosal_dma
	.byte	0xf
	.4byte	.LASF119
	.byte	0x1
	.byte	0x10
	.byte	0x19
	.4byte	0x44b
	.byte	0x5
	.byte	0x3
	.4byte	gp_hosal_dma_dev
	.byte	0x7
	.byte	0x4
	.4byte	0x129
	.byte	0x11
	.4byte	.LASF120
	.byte	0x1
	.byte	0xdf
	.byte	0x5
	.4byte	0x7a
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x1
	.byte	0x9c
	.4byte	0x4db
	.byte	0x12
	.4byte	.LVL100
	.4byte	0xa6a
	.byte	0x12
	.4byte	.LVL101
	.4byte	0xa76
	.byte	0x13
	.4byte	.LVL102
	.4byte	0xa83
	.4byte	0x4ac
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
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
	.byte	0xe2
	.byte	0
	.byte	0x12
	.4byte	.LVL103
	.4byte	0xa8f
	.byte	0x12
	.4byte	.LVL104
	.4byte	0xa9c
	.byte	0x13
	.4byte	.LVL105
	.4byte	0xaa9
	.4byte	0x4d1
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x4f
	.byte	0
	.byte	0x12
	.4byte	.LVL106
	.4byte	0xab5
	.byte	0
	.byte	0x11
	.4byte	.LASF121
	.byte	0x1
	.byte	0xc8
	.byte	0x5
	.4byte	0x7a
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x1
	.byte	0x9c
	.4byte	0x570
	.byte	0x15
	.4byte	.LASF122
	.byte	0x1
	.byte	0xc8
	.byte	0x31
	.4byte	0x135
	.4byte	.LLST16
	.byte	0x16
	.string	"pfn"
	.byte	0x1
	.byte	0xc8
	.byte	0x47
	.4byte	0x97
	.4byte	.LLST17
	.byte	0x15
	.4byte	.LASF15
	.byte	0x1
	.byte	0xc8
	.byte	0x52
	.4byte	0x88
	.4byte	.LLST18
	.byte	0x12
	.4byte	.LVL93
	.4byte	0xa6a
	.byte	0x12
	.4byte	.LVL94
	.4byte	0xa76
	.byte	0x13
	.4byte	.LVL95
	.4byte	0xa83
	.4byte	0x566
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
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
	.byte	0xcb
	.byte	0
	.byte	0x12
	.4byte	.LVL96
	.4byte	0xa8f
	.byte	0
	.byte	0x17
	.4byte	.LASF154
	.byte	0x1
	.byte	0xb1
	.byte	0x5
	.4byte	0x7a
	.byte	0x1
	.4byte	0x58e
	.byte	0x18
	.4byte	.LASF122
	.byte	0x1
	.byte	0xb1
	.byte	0x2a
	.4byte	0x135
	.byte	0
	.byte	0x11
	.4byte	.LASF123
	.byte	0x1
	.byte	0x9d
	.byte	0x5
	.4byte	0x7a
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x1
	.byte	0x9c
	.4byte	0x655
	.byte	0x15
	.4byte	.LASF122
	.byte	0x1
	.byte	0x9d
	.byte	0x2b
	.4byte	0x135
	.4byte	.LLST12
	.byte	0x12
	.4byte	.LVL59
	.4byte	0xa6a
	.byte	0x12
	.4byte	.LVL60
	.4byte	0xa76
	.byte	0x13
	.4byte	.LVL61
	.4byte	0xa83
	.4byte	0x5f9
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
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
	.byte	0xa0
	.byte	0
	.byte	0x12
	.4byte	.LVL62
	.4byte	0xa8f
	.byte	0x13
	.4byte	.LVL65
	.4byte	0xac1
	.4byte	0x622
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x4
	.byte	0x91
	.byte	0x6c
	.byte	0x94
	.byte	0x1
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x13
	.4byte	.LVL66
	.4byte	0xac1
	.4byte	0x642
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x4
	.byte	0x91
	.byte	0x6c
	.byte	0x94
	.byte	0x1
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x19
	.4byte	.LVL67
	.4byte	0xace
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x4
	.byte	0x91
	.byte	0x6c
	.byte	0x94
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LASF124
	.byte	0x1
	.byte	0x86
	.byte	0x5
	.4byte	0x7a
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x1
	.byte	0x9c
	.4byte	0x6da
	.byte	0x15
	.4byte	.LASF122
	.byte	0x1
	.byte	0x86
	.byte	0x2d
	.4byte	0x135
	.4byte	.LLST15
	.byte	0x12
	.4byte	.LVL83
	.4byte	0xa6a
	.byte	0x12
	.4byte	.LVL84
	.4byte	0xa76
	.byte	0x13
	.4byte	.LVL85
	.4byte	0xa83
	.4byte	0x6c0
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
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
	.byte	0x89
	.byte	0
	.byte	0x12
	.4byte	.LVL86
	.4byte	0xa8f
	.byte	0x19
	.4byte	.LVL89
	.4byte	0x570
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LASF125
	.byte	0x1
	.byte	0x6b
	.byte	0x12
	.4byte	0x135
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x1
	.byte	0x9c
	.4byte	0x75d
	.byte	0x15
	.4byte	.LASF126
	.byte	0x1
	.byte	0x6b
	.byte	0x2d
	.4byte	0x7a
	.4byte	.LLST10
	.byte	0x1a
	.string	"i"
	.byte	0x1
	.byte	0x6d
	.byte	0x6
	.4byte	0x7a
	.4byte	.LLST11
	.byte	0x12
	.4byte	.LVL50
	.4byte	0xa6a
	.byte	0x12
	.4byte	.LVL51
	.4byte	0xa76
	.byte	0x13
	.4byte	.LVL52
	.4byte	0xa83
	.4byte	0x753
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
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
	.byte	0x72
	.byte	0
	.byte	0x12
	.4byte	.LVL53
	.4byte	0xa8f
	.byte	0
	.byte	0x11
	.4byte	.LASF127
	.byte	0x1
	.byte	0x4b
	.byte	0x5
	.4byte	0x7a
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x1
	.byte	0x9c
	.4byte	0x8b5
	.byte	0x1a
	.string	"i"
	.byte	0x1
	.byte	0x4d
	.byte	0x6
	.4byte	0x7a
	.4byte	.LLST9
	.byte	0x13
	.4byte	.LVL26
	.4byte	0xadb
	.4byte	0x79d
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3c
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x12
	.4byte	.LVL27
	.4byte	0xa6a
	.byte	0x12
	.4byte	.LVL28
	.4byte	0xa76
	.byte	0x13
	.4byte	.LVL29
	.4byte	0xa83
	.4byte	0x7de
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
	.byte	0x54
	.byte	0
	.byte	0x13
	.4byte	.LVL30
	.4byte	0xadb
	.4byte	0x7f7
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x12
	.4byte	.LVL31
	.4byte	0xa6a
	.byte	0x12
	.4byte	.LVL32
	.4byte	0xa76
	.byte	0x13
	.4byte	.LVL33
	.4byte	0xa83
	.4byte	0x838
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
	.byte	0x5a
	.byte	0
	.byte	0x12
	.4byte	.LVL34
	.4byte	0xae7
	.byte	0x13
	.4byte	.LVL36
	.4byte	0xaf4
	.4byte	0x85d
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x4f
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	__dma_irq_process
	.byte	0
	.byte	0x13
	.4byte	.LVL37
	.4byte	0xb00
	.4byte	0x870
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x4f
	.byte	0
	.byte	0x12
	.4byte	.LVL38
	.4byte	0xa8f
	.byte	0x12
	.4byte	.LVL39
	.4byte	0xa8f
	.byte	0x13
	.4byte	.LVL41
	.4byte	0xb0c
	.4byte	0x898
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x4
	.byte	0x91
	.byte	0x6c
	.byte	0x94
	.byte	0x1
	.byte	0
	.byte	0x19
	.4byte	.LVL42
	.4byte	0xac1
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x4
	.byte	0x91
	.byte	0x6c
	.byte	0x94
	.byte	0x1
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LASF155
	.byte	0x1
	.byte	0x12
	.byte	0xd
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x1
	.byte	0x9c
	.4byte	0x984
	.byte	0x15
	.4byte	.LASF15
	.byte	0x1
	.byte	0x12
	.byte	0x25
	.4byte	0x88
	.4byte	.LLST0
	.byte	0x1a
	.string	"ch"
	.byte	0x1
	.byte	0x14
	.byte	0x9
	.4byte	0x7a
	.4byte	.LLST1
	.byte	0x1c
	.4byte	.LASF128
	.byte	0x1
	.byte	0x15
	.byte	0xe
	.4byte	0x5b
	.4byte	.LLST2
	.byte	0x1c
	.4byte	.LASF129
	.byte	0x1
	.byte	0x16
	.byte	0xe
	.4byte	0x5b
	.4byte	.LLST3
	.byte	0x1c
	.4byte	.LASF130
	.byte	0x1
	.byte	0x17
	.byte	0xe
	.4byte	0x5b
	.4byte	.LLST4
	.byte	0x1c
	.4byte	.LASF131
	.byte	0x1
	.byte	0x18
	.byte	0x9
	.4byte	0x7a
	.4byte	.LLST5
	.byte	0xf
	.4byte	.LASF132
	.byte	0x1
	.byte	0x18
	.byte	0x12
	.4byte	0x7a
	.byte	0x1
	.byte	0x64
	.byte	0x1c
	.4byte	.LASF133
	.byte	0x1
	.byte	0x19
	.byte	0x16
	.4byte	0x44b
	.4byte	.LLST6
	.byte	0x1a
	.string	"pfn"
	.byte	0x1
	.byte	0x1a
	.byte	0x15
	.4byte	0x97
	.4byte	.LLST7
	.byte	0x1c
	.4byte	.LASF134
	.byte	0x1
	.byte	0x1b
	.byte	0xb
	.4byte	0x88
	.4byte	.LLST8
	.byte	0x1d
	.4byte	.LVL23
	.4byte	0x977
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1e
	.4byte	.LVL25
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x88
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	0x570
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x1
	.byte	0x9c
	.4byte	0xa6a
	.byte	0x20
	.4byte	0x581
	.4byte	.LLST13
	.byte	0x21
	.4byte	0x570
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xb1
	.byte	0x5
	.4byte	0xa08
	.byte	0x20
	.4byte	0x581
	.4byte	.LLST14
	.byte	0x12
	.4byte	.LVL71
	.4byte	0xa6a
	.byte	0x12
	.4byte	.LVL72
	.4byte	0xa76
	.byte	0x13
	.4byte	.LVL73
	.4byte	0xa83
	.4byte	0x9fe
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
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
	.byte	0xb4
	.byte	0
	.byte	0x12
	.4byte	.LVL76
	.4byte	0xa8f
	.byte	0
	.byte	0x13
	.4byte	.LVL78
	.4byte	0xb19
	.4byte	0xa1d
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x13
	.4byte	.LVL79
	.4byte	0xb0c
	.4byte	0xa31
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LVL80
	.4byte	0xac1
	.4byte	0xa4f
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
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x19
	.4byte	.LVL81
	.4byte	0xac1
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
	.byte	0x31
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0x9
	.byte	0x98
	.byte	0xc
	.byte	0x23
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0xa
	.2byte	0x558
	.byte	0xc
	.byte	0x22
	.4byte	.LASF137
	.4byte	.LASF137
	.byte	0xb
	.byte	0x81
	.byte	0x6
	.byte	0x23
	.4byte	.LASF138
	.4byte	.LASF138
	.byte	0xa
	.2byte	0x547
	.byte	0xc
	.byte	0x23
	.4byte	.LASF139
	.4byte	.LASF139
	.byte	0x6
	.2byte	0x13a
	.byte	0x6
	.byte	0x22
	.4byte	.LASF140
	.4byte	.LASF140
	.byte	0xc
	.byte	0x4
	.byte	0x6
	.byte	0x22
	.4byte	.LASF141
	.4byte	.LASF141
	.byte	0xd
	.byte	0x5e
	.byte	0x6
	.byte	0x23
	.4byte	.LASF142
	.4byte	.LASF142
	.byte	0x6
	.2byte	0x144
	.byte	0x6
	.byte	0x23
	.4byte	.LASF143
	.4byte	.LASF143
	.byte	0x6
	.2byte	0x140
	.byte	0x6
	.byte	0x22
	.4byte	.LASF144
	.4byte	.LASF144
	.byte	0xd
	.byte	0x5a
	.byte	0x7
	.byte	0x23
	.4byte	.LASF145
	.4byte	.LASF145
	.byte	0x6
	.2byte	0x139
	.byte	0x6
	.byte	0x22
	.4byte	.LASF146
	.4byte	.LASF146
	.byte	0xc
	.byte	0x15
	.byte	0x6
	.byte	0x22
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0xc
	.byte	0x3
	.byte	0x6
	.byte	0x23
	.4byte	.LASF148
	.4byte	.LASF148
	.byte	0x6
	.2byte	0x141
	.byte	0x6
	.byte	0x22
	.4byte	.LASF149
	.4byte	.LASF149
	.byte	0xe
	.byte	0x2b
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
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0xd
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x12
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x16
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
	.byte	0x17
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
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
	.byte	0x19
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
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
	.byte	0x1d
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1e
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x1f
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
	.byte	0x20
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x21
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
	.byte	0x22
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
	.byte	0x23
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
.LLST16:
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL92
	.4byte	.LVL97
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL99
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL91
	.4byte	.LVL93-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL93-1
	.4byte	.LVL97
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LFE36
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL91
	.4byte	.LVL93-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL93-1
	.4byte	.LVL97
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LFE36
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL58
	.4byte	.LVL63
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL64
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL82
	.4byte	.LVL83-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL83-1
	.4byte	.LVL87
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL88
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL90
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL45
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL49
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL40
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL7
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x9
	.byte	0x78
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x83
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x9
	.byte	0x78
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x83
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL7
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL13
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL1
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL7
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x9
	.byte	0x83
	.byte	0
	.byte	0x78
	.byte	0
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL22
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL24
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x7f
	.byte	0x8
	.4byte	.LVL22
	.4byte	.LVL23-1
	.2byte	0x2
	.byte	0x7f
	.byte	0x8
	.4byte	.LVL24
	.4byte	.LVL25-1
	.2byte	0x2
	.byte	0x7f
	.byte	0x8
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL68
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL70
	.4byte	.LVL77
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL78-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL78-1
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL70
	.4byte	.LVL74
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x54
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
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0
	.4byte	0
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF98:
	.string	"DMA_CH_MAX"
.LASF31:
	.string	"SEC_BMX_ERR_IRQn"
.LASF143:
	.string	"DMA_Channel_Enable"
.LASF65:
	.string	"TIMER_WDT_IRQn"
.LASF120:
	.string	"hosal_dma_finalize"
.LASF113:
	.string	"blog_info_t"
.LASF29:
	.string	"L1C_BMX_ERR_IRQn"
.LASF2:
	.string	"long int"
.LASF16:
	.string	"hosal_dma_chan"
.LASF153:
	.string	"_blog_leve"
.LASF9:
	.string	"long long unsigned int"
.LASF145:
	.string	"DMA_Enable"
.LASF125:
	.string	"hosal_dma_chan_request"
.LASF151:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/hosal_dma.c"
.LASF141:
	.string	"free"
.LASF34:
	.string	"SDIO_IRQn"
.LASF139:
	.string	"DMA_Disable"
.LASF3:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF130:
	.string	"interr_val"
.LASF147:
	.string	"bl_irq_enable"
.LASF109:
	.string	"blog_level_t"
.LASF25:
	.string	"MEXT_IRQn"
.LASF15:
	.string	"p_arg"
.LASF67:
	.string	"RESERVED11"
.LASF68:
	.string	"RESERVED12"
.LASF69:
	.string	"RESERVED13"
.LASF70:
	.string	"RESERVED14"
.LASF38:
	.string	"SEC_PKA_IRQn"
.LASF73:
	.string	"RESERVED17"
.LASF74:
	.string	"RESERVED18"
.LASF75:
	.string	"RESERVED19"
.LASF117:
	.string	"_fsymf_level_hosalhosal_dma"
.LASF103:
	.string	"BLOG_LEVEL_DEBUG"
.LASF89:
	.string	"MAC_PORT_TRG_IRQn"
.LASF124:
	.string	"hosal_dma_chan_release"
.LASF71:
	.string	"GPIO_INT0_IRQn"
.LASF136:
	.string	"xTaskGetTickCountFromISR"
.LASF52:
	.string	"GPADC_DMA_IRQn"
.LASF99:
	.string	"DMA_INT_TCOMPLETED"
.LASF59:
	.string	"I2C_IRQn"
.LASF17:
	.string	"hosal_dma_dev"
.LASF32:
	.string	"RF_TOP_INT0_IRQn"
.LASF76:
	.string	"RESERVED20"
.LASF93:
	.string	"MASK"
.LASF10:
	.string	"unsigned int"
.LASF81:
	.string	"WIFI_IRQn"
.LASF116:
	.string	"_fsymc_level_hosal"
.LASF77:
	.string	"PDS_WAKEUP_IRQn"
.LASF8:
	.string	"long unsigned int"
.LASF112:
	.string	"name"
.LASF111:
	.string	"level"
.LASF123:
	.string	"hosal_dma_chan_start"
.LASF5:
	.string	"short unsigned int"
.LASF12:
	.string	"hosal_dma_irq_t"
.LASF80:
	.string	"BOR_IRQn"
.LASF121:
	.string	"hosal_dma_irq_callback_set"
.LASF127:
	.string	"hosal_dma_init"
.LASF36:
	.string	"SEC_GMAC_IRQn"
.LASF133:
	.string	"dma_dev"
.LASF149:
	.string	"bl_dma_int_clear"
.LASF14:
	.string	"callback"
.LASF82:
	.string	"BZ_PHY_IRQn"
.LASF150:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF101:
	.string	"DMA_INT_ALL"
.LASF138:
	.string	"xTaskGetTickCount"
.LASF22:
	.string	"hosal_dma_chan_t"
.LASF19:
	.string	"used_chan"
.LASF56:
	.string	"UART0_IRQn"
.LASF92:
	.string	"UNMASK"
.LASF152:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/hosal"
.LASF41:
	.string	"SEC_SHA_IRQn"
.LASF40:
	.string	"SEC_AES_IRQn"
.LASF94:
	.string	"DMA_CH0"
.LASF95:
	.string	"DMA_CH1"
.LASF96:
	.string	"DMA_CH2"
.LASF97:
	.string	"DMA_CH3"
.LASF100:
	.string	"DMA_INT_ERR"
.LASF140:
	.string	"bl_irq_disable"
.LASF119:
	.string	"gp_hosal_dma_dev"
.LASF23:
	.string	"MSOFT_IRQn"
.LASF61:
	.string	"PWM_IRQn"
.LASF42:
	.string	"DMA_ALL_IRQn"
.LASF107:
	.string	"BLOG_LEVEL_ASSERT"
.LASF72:
	.string	"RESERVED16"
.LASF104:
	.string	"BLOG_LEVEL_INFO"
.LASF87:
	.string	"MAC_TX_TRG_IRQn"
.LASF132:
	.string	"interr_flag"
.LASF20:
	.string	"priv"
.LASF57:
	.string	"UART1_IRQn"
.LASF13:
	.string	"used"
.LASF43:
	.string	"RESERVED0"
.LASF44:
	.string	"RESERVED1"
.LASF45:
	.string	"RESERVED2"
.LASF48:
	.string	"RESERVED3"
.LASF49:
	.string	"RESERVED4"
.LASF51:
	.string	"RESERVED5"
.LASF55:
	.string	"RESERVED6"
.LASF58:
	.string	"RESERVED7"
.LASF60:
	.string	"RESERVED8"
.LASF62:
	.string	"RESERVED9"
.LASF115:
	.string	"_fsymc_info_hosal"
.LASF47:
	.string	"IRRX_IRQn"
.LASF102:
	.string	"BLOG_LEVEL_ALL"
.LASF4:
	.string	"unsigned char"
.LASF146:
	.string	"bl_irq_register_with_ctx"
.LASF84:
	.string	"MAC_TXRX_TIMER_IRQn"
.LASF50:
	.string	"SF_CTRL_IRQn"
.LASF30:
	.string	"L1C_BMX_TO_IRQn"
.LASF1:
	.string	"short int"
.LASF46:
	.string	"IRTX_IRQn"
.LASF135:
	.string	"xPortIsInsideInterrupt"
.LASF86:
	.string	"MAC_RX_TRG_IRQn"
.LASF126:
	.string	"flag"
.LASF114:
	.string	"BLOG_HARD_DECLARE_DISABLE"
.LASF110:
	.string	"_blog_info"
.LASF53:
	.string	"EFUSE_IRQn"
.LASF137:
	.string	"bl_printk"
.LASF106:
	.string	"BLOG_LEVEL_ERROR"
.LASF28:
	.string	"BMX_TO_IRQn"
.LASF122:
	.string	"chan"
.LASF11:
	.string	"char"
.LASF24:
	.string	"MTIME_IRQn"
.LASF21:
	.string	"hosal_dma_dev_t"
.LASF128:
	.string	"intclr"
.LASF88:
	.string	"MAC_GEN_IRQn"
.LASF108:
	.string	"BLOG_LEVEL_NEVER"
.LASF134:
	.string	"parg"
.LASF27:
	.string	"BMX_ERR_IRQn"
.LASF85:
	.string	"MAC_TXRX_MISC_IRQn"
.LASF63:
	.string	"TIMER_CH0_IRQn"
.LASF37:
	.string	"SEC_CDET_IRQn"
.LASF118:
	.string	"_fsymf_info_hosalhosal_dma"
.LASF33:
	.string	"RF_TOP_INT1_IRQn"
.LASF78:
	.string	"HBN_OUT0_IRQn"
.LASF66:
	.string	"RESERVED10"
.LASF90:
	.string	"WIFI_IPC_PUBLIC_IRQn"
.LASF7:
	.string	"uint32_t"
.LASF142:
	.string	"DMA_IntMask"
.LASF91:
	.string	"IRQn_LAST"
.LASF144:
	.string	"calloc"
.LASF6:
	.string	"uint8_t"
.LASF26:
	.string	"CLIC_SOFT_PEND_IRQn"
.LASF155:
	.string	"__dma_irq_process"
.LASF39:
	.string	"SEC_TRNG_IRQn"
.LASF18:
	.string	"max_chans"
.LASF35:
	.string	"DMA_BMX_ERR_IRQn"
.LASF54:
	.string	"SPI_IRQn"
.LASF129:
	.string	"tmpval"
.LASF83:
	.string	"BLE_IRQn"
.LASF64:
	.string	"TIMER_CH1_IRQn"
.LASF105:
	.string	"BLOG_LEVEL_WARN"
.LASF154:
	.string	"hosal_dma_chan_stop"
.LASF79:
	.string	"HBN_OUT1_IRQn"
.LASF148:
	.string	"DMA_Channel_Disable"
.LASF131:
	.string	"tc_flag"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
