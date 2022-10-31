	.file	"bl_dac_audio.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.__dma_irq_handler,"ax",@progbits
	.align	1
	.type	__dma_irq_handler, @function
__dma_irq_handler:
.LFB34:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_dac_audio.c"
	.loc 1 131 1
	.cfi_startproc
	.loc 1 132 5
	.loc 1 133 5
	.loc 1 135 5
	.loc 1 131 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	.loc 1 135 14
	lui	s0,%hi(.LANCHOR0)
	lw	a5,%lo(.LANCHOR0)(s0)
	.loc 1 131 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 135 8
	beq	a5,zero,.L1
	.loc 1 139 5 is_stmt 1
	.loc 1 139 12 is_stmt 0
	li	a4,1073790976
	lw	a4,4(a4)
.LVL0:
	.loc 1 140 5 is_stmt 1
	.loc 1 140 63 is_stmt 0
	andi	a4,a4,1
.LVL1:
	.loc 1 140 7
	beq	a4,zero,.L4
	.loc 1 142 9 is_stmt 1
.LVL2:
	.loc 1 144 9
	.loc 1 144 29 is_stmt 0
	lw	a6,48(a5)
	.loc 1 144 12
	beq	a6,zero,.L4
	.loc 1 145 17
	lbu	a4,0(a5)
	.loc 1 142 53
	lw	a2,40(a5)
	.loc 1 145 16
	li	a7,1
	.loc 1 145 17
	addi	a4,a4,1
	andi	a4,a4,0xff
	.loc 1 145 16
	sb	a4,0(a5)
	.loc 1 149 23
	lw	a0,52(a5)
	lw	a1,36(a5)
	lw	a3,44(a5)
	addi	s0,s0,%lo(.LANCHOR0)
	.loc 1 142 53
	srli	a2,a2,1
	.loc 1 145 13 is_stmt 1
	.loc 1 145 16 is_stmt 0
	bleu	a4,a7,.L5
	.loc 1 146 17 is_stmt 1
	.loc 1 146 44 is_stmt 0
	sb	zero,0(a5)
	.loc 1 148 13 is_stmt 1
.L6:
	.loc 1 154 17
	.loc 1 154 23 is_stmt 0
	add	a1,a1,a2
	j	.L27
.L5:
	.loc 1 148 13 is_stmt 1
	.loc 1 148 16 is_stmt 0
	beq	a4,zero,.L6
.L27:
	.loc 1 154 23
	jalr	a6
.LVL3:
	.loc 1 159 13 is_stmt 1
	.loc 1 160 33 is_stmt 0
	lw	a5,0(s0)
	.loc 1 159 16
	beq	a0,zero,.L8
	.loc 1 160 17 is_stmt 1
	.loc 1 160 47 is_stmt 0
	li	a4,1
	sw	a4,44(a5)
.LVL4:
.L4:
	.loc 1 166 5 is_stmt 1
.LBB4:
.LBB5:
	.loc 1 102 5
	.loc 1 103 5
	.loc 1 105 5
	.loc 1 107 5
	.loc 1 107 12 is_stmt 0
	li	a5,1073790976
	lw	a4,4(a5)
.LVL5:
	.loc 1 108 5 is_stmt 1
	.loc 1 108 63 is_stmt 0
	andi	a4,a4,1
.LVL6:
	.loc 1 108 7
	beq	a4,zero,.L9
	.loc 1 110 9 is_stmt 1
	.loc 1 110 16 is_stmt 0
	lw	a4,8(a5)
.LVL7:
	.loc 1 111 9 is_stmt 1
	.loc 1 112 9
	.loc 1 113 9
	.loc 1 113 16 is_stmt 0
	ori	a4,a4,1
.LVL8:
	.loc 1 114 9 is_stmt 1
	.loc 1 114 47 is_stmt 0
	sw	a4,8(a5)
.LVL9:
.L9:
	.loc 1 117 5 is_stmt 1
	.loc 1 117 12 is_stmt 0
	li	a5,1073790976
	lw	a4,12(a5)
.LVL10:
	.loc 1 118 5 is_stmt 1
	.loc 1 118 63 is_stmt 0
	andi	a4,a4,1
.LVL11:
	.loc 1 118 7
	beq	a4,zero,.L1
	.loc 1 120 9 is_stmt 1
	.loc 1 120 16 is_stmt 0
	lw	a4,16(a5)
.LVL12:
	.loc 1 121 9 is_stmt 1
	.loc 1 122 9
	.loc 1 123 9
	.loc 1 123 16 is_stmt 0
	ori	a4,a4,1
.LVL13:
	.loc 1 124 9 is_stmt 1
	.loc 1 124 48 is_stmt 0
	sw	a4,16(a5)
.LVL14:
.L1:
.LBE5:
.LBE4:
	.loc 1 167 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL15:
.L8:
	.cfi_restore_state
	.loc 1 162 17 is_stmt 1
	.loc 1 162 47 is_stmt 0
	sw	zero,44(a5)
	j	.L4
	.cfi_endproc
.LFE34:
	.size	__dma_irq_handler, .-__dma_irq_handler
	.section	.text.bl_audio_dac_samplerate_set,"ax",@progbits
	.align	1
	.globl	bl_audio_dac_samplerate_set
	.type	bl_audio_dac_samplerate_set, @function
bl_audio_dac_samplerate_set:
.LFB35:
	.loc 1 170 1 is_stmt 1
	.cfi_startproc
.LVL16:
	.loc 1 171 5
	.loc 1 171 16 is_stmt 0
	lui	a5,%hi(.LANCHOR1+12)
	sw	a1,%lo(.LANCHOR1+12)(a5)
	.loc 1 172 5 is_stmt 1
	.loc 1 173 1 is_stmt 0
	li	a0,0
.LVL17:
	ret
	.cfi_endproc
.LFE35:
	.size	bl_audio_dac_samplerate_set, .-bl_audio_dac_samplerate_set
	.section	.text.bl_audio_dac_tx_ready_config,"ax",@progbits
	.align	1
	.globl	bl_audio_dac_tx_ready_config
	.type	bl_audio_dac_tx_ready_config, @function
bl_audio_dac_tx_ready_config:
.LFB36:
	.loc 1 178 1 is_stmt 1
	.cfi_startproc
.LVL18:
	.loc 1 179 5
	.loc 1 179 8 is_stmt 0
	beq	a0,zero,.L31
	.loc 1 182 5 is_stmt 1
	.loc 1 182 19 is_stmt 0
	sw	a1,48(a0)
	.loc 1 183 5 is_stmt 1
	.loc 1 183 22 is_stmt 0
	sw	a2,52(a0)
	.loc 1 184 5 is_stmt 1
	.loc 1 184 12 is_stmt 0
	li	a0,0
.LVL19:
	ret
.LVL20:
.L31:
	.loc 1 180 16
	li	a0,-1
.LVL21:
	.loc 1 185 1
	ret
	.cfi_endproc
.LFE36:
	.size	bl_audio_dac_tx_ready_config, .-bl_audio_dac_tx_ready_config
	.section	.text.bl_audio_dac_rx_ready_config,"ax",@progbits
	.align	1
	.globl	bl_audio_dac_rx_ready_config
	.type	bl_audio_dac_rx_ready_config, @function
bl_audio_dac_rx_ready_config:
.LFB37:
	.loc 1 190 1 is_stmt 1
	.cfi_startproc
.LVL22:
	.loc 1 191 5
	.loc 1 192 1 is_stmt 0
	li	a0,0
.LVL23:
	ret
	.cfi_endproc
.LFE37:
	.size	bl_audio_dac_rx_ready_config, .-bl_audio_dac_rx_ready_config
	.section	.text.bl_audio_dac_tx_buffer_config,"ax",@progbits
	.align	1
	.globl	bl_audio_dac_tx_buffer_config
	.type	bl_audio_dac_tx_buffer_config, @function
bl_audio_dac_tx_buffer_config:
.LFB38:
	.loc 1 195 1 is_stmt 1
	.cfi_startproc
.LVL24:
	.loc 1 196 5
	.loc 1 197 5
	.loc 1 199 5
	.loc 1 195 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	s2,0(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.loc 1 199 8
	lw	a5,36(a0)
	.loc 1 195 1
	mv	s0,a0
	mv	s2,a1
	mv	s1,a2
	.loc 1 199 8
	bne	a5,zero,.L34
	.loc 1 200 9 is_stmt 1
	.loc 1 200 32 is_stmt 0
	mv	a0,a2
.LVL25:
	call	pvPortMalloc
.LVL26:
	.loc 1 200 30
	sw	a0,36(s0)
.L34:
	.loc 1 203 5 is_stmt 1
	.loc 1 203 21 is_stmt 0
	lw	a3,36(s0)
	.loc 1 204 16
	li	a0,-1
	.loc 1 203 8
	beq	a3,zero,.L33
	.loc 1 206 5 is_stmt 1
	.loc 1 206 14 is_stmt 0
	sw	a3,0(s2)
	.loc 1 207 5 is_stmt 1
	.loc 1 207 31 is_stmt 0
	sw	s1,40(s0)
	.loc 1 209 5 is_stmt 1
.LVL27:
	.loc 1 210 5
	.loc 1 210 12 is_stmt 0
	li	a5,0
	.loc 1 211 17
	li	a2,512
.LVL28:
.L36:
	.loc 1 210 17 is_stmt 1 discriminator 1
	.loc 1 210 48 is_stmt 0 discriminator 1
	lw	a4,40(s0)
	srli	a4,a4,1
	.loc 1 210 5 discriminator 1
	bgtu	a4,a5,.L37
	.loc 1 214 12
	li	a0,0
.LVL29:
.L33:
	.loc 1 215 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL30:
	lw	s1,4(sp)
	.cfi_restore 9
.LVL31:
	lw	s2,0(sp)
	.cfi_restore 18
.LVL32:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL33:
.L37:
	.cfi_restore_state
	.loc 1 211 9 is_stmt 1 discriminator 3
	.loc 1 211 17 is_stmt 0 discriminator 3
	slli	a4,a5,1
	add	a4,a3,a4
	sh	a2,0(a4)
	.loc 1 210 55 is_stmt 1 discriminator 3
	.loc 1 210 56 is_stmt 0 discriminator 3
	addi	a5,a5,1
.LVL34:
	j	.L36
	.cfi_endproc
.LFE38:
	.size	bl_audio_dac_tx_buffer_config, .-bl_audio_dac_tx_buffer_config
	.section	.text.bl_audio_dac_rx_buffer_config,"ax",@progbits
	.align	1
	.globl	bl_audio_dac_rx_buffer_config
	.type	bl_audio_dac_rx_buffer_config, @function
bl_audio_dac_rx_buffer_config:
.LFB39:
	.loc 1 220 1 is_stmt 1
	.cfi_startproc
.LVL35:
	.loc 1 221 5
	.loc 1 222 1 is_stmt 0
	li	a0,0
.LVL36:
	ret
	.cfi_endproc
.LFE39:
	.size	bl_audio_dac_rx_buffer_config, .-bl_audio_dac_rx_buffer_config
	.section	.text.bl_audio_dac_start,"ax",@progbits
	.align	1
	.globl	bl_audio_dac_start
	.type	bl_audio_dac_start, @function
bl_audio_dac_start:
.LFB40:
	.loc 1 225 1 is_stmt 1
	.cfi_startproc
.LVL37:
	.loc 1 226 5
	.loc 1 226 8 is_stmt 0
	beq	a0,zero,.L43
	.loc 1 225 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	mv	s0,a0
	.loc 1 230 5 is_stmt 1
	call	DMA_Enable
.LVL38:
	.loc 1 231 5
	li	a0,0
	call	DMA_Channel_Disable
.LVL39:
	.loc 1 233 5
	li	a2,1
	li	a1,2
	li	a0,0
	call	DMA_IntMask
.LVL40:
	.loc 1 234 5
	li	a2,0
	li	a1,0
	li	a0,0
	call	DMA_IntMask
.LVL41:
	.loc 1 235 5
	lui	a1,%hi(__dma_irq_handler)
	addi	a1,a1,%lo(__dma_irq_handler)
	li	a0,31
	call	bl_irq_register
.LVL42:
	.loc 1 236 5
	li	a0,31
	call	bl_irq_enable
.LVL43:
	.loc 1 238 5
	lui	a0,%hi(.LANCHOR1)
	addi	a0,a0,%lo(.LANCHOR1)
	call	GLB_GPIP_DAC_Init
.LVL44:
	.loc 1 239 5
	li	a0,1
	call	GPIP_Set_DAC_DMA_TX_FORMAT_SEL
.LVL45:
	.loc 1 240 5
	call	GPIP_Set_DAC_DMA_TX_Enable
.LVL46:
	.loc 1 241 5
	call	GPIP_DAC_ChanA_Enable
.LVL47:
	.loc 1 242 5
	call	GPIP_DAC_ChanB_Enable
.LVL48:
	.loc 1 244 5
.LBB8:
.LBB9:
	.loc 1 84 5
	.loc 1 86 44 is_stmt 0
	addi	a5,s0,20
	.loc 1 84 37
	lw	a0,36(s0)
	.loc 1 86 32
	sw	a5,12(s0)
	.loc 1 87 40
	lw	a5,40(s0)
	.loc 1 85 36
	li	a2,1073750016
	addi	a2,a2,72
	.loc 1 87 32
	lui	a3,%hi(.LANCHOR2)
	.loc 1 85 36
	sw	a2,8(s0)
	.loc 1 87 32
	addi	a3,a3,%lo(.LANCHOR2)
	.loc 1 84 35
	sw	a0,4(s0)
	.loc 1 85 5 is_stmt 1
	.loc 1 86 5
	.loc 1 87 5
	.loc 1 87 32 is_stmt 0
	slli	a4,a5,17
	srli	a1,a4,20
	lw	a4,0(a3)
	li	a6,-4096
	.loc 1 90 99
	srli	a5,a5,1
	.loc 1 87 32
	and	a4,a4,a6
	or	a4,a4,a1
	sw	a4,0(a3)
	.loc 1 88 5 is_stmt 1
	.loc 1 90 70 is_stmt 0
	add	a5,a5,a0
	.loc 1 90 35
	sw	a5,20(s0)
	.loc 1 92 42
	addi	a5,s0,4
	.loc 1 92 31
	sw	a5,28(s0)
	.loc 1 94 31
	lw	a5,0(a3)
	.loc 1 96 5
	lui	a1,%hi(.LANCHOR3)
	.loc 1 88 31
	sw	a4,16(s0)
	.loc 1 90 5 is_stmt 1
	.loc 1 91 5
	.loc 1 91 36 is_stmt 0
	sw	a2,24(s0)
	.loc 1 92 5 is_stmt 1
	.loc 1 93 5
	.loc 1 94 5
	.loc 1 94 31 is_stmt 0
	sw	a5,32(s0)
	.loc 1 96 5 is_stmt 1
	addi	a1,a1,%lo(.LANCHOR3)
	li	a0,0
	call	DMA_LLI_Init
.LVL49:
	.loc 1 97 5
	.loc 1 97 39 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	lw	a1,%lo(.LANCHOR0)(a5)
	.loc 1 97 5
	li	a0,0
	addi	a1,a1,4
	call	DMA_LLI_Update
.LVL50:
.LBE9:
.LBE8:
	.loc 1 246 5 is_stmt 1
	li	a0,0
	call	DMA_Channel_Enable
.LVL51:
	.loc 1 248 5
	.loc 1 249 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL52:
	.loc 1 248 12
	li	a0,0
	.loc 1 249 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL53:
.L43:
	.loc 1 227 16
	li	a0,-1
.LVL54:
	.loc 1 249 1
	ret
	.cfi_endproc
.LFE40:
	.size	bl_audio_dac_start, .-bl_audio_dac_start
	.section	.text.bl_audio_dac_stop,"ax",@progbits
	.align	1
	.globl	bl_audio_dac_stop
	.type	bl_audio_dac_stop, @function
bl_audio_dac_stop:
.LFB41:
	.loc 1 252 1 is_stmt 1
	.cfi_startproc
.LVL55:
	.loc 1 253 5
	.loc 1 253 32 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	lw	a5,%lo(.LANCHOR0)(a5)
	.loc 1 252 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 253 32
	sb	zero,0(a5)
	.loc 1 255 5 is_stmt 1
	call	DMA_Disable
.LVL56:
	.loc 1 256 5
	li	a0,0
	call	DMA_Channel_Disable
.LVL57:
	.loc 1 257 5
	li	a0,31
	call	bl_irq_disable
.LVL58:
	.loc 1 259 5
	.loc 1 260 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE41:
	.size	bl_audio_dac_stop, .-bl_audio_dac_stop
	.section	.text.bl_audio_dac_init,"ax",@progbits
	.align	1
	.globl	bl_audio_dac_init
	.type	bl_audio_dac_init, @function
bl_audio_dac_init:
.LFB42:
	.loc 1 263 1 is_stmt 1
	.cfi_startproc
.LVL59:
	.loc 1 264 5
	.loc 1 264 8 is_stmt 0
	beq	a0,zero,.L52
	.loc 1 263 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 267 5
	li	a2,56
	li	a1,0
	.loc 1 263 1
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	mv	s0,a0
	.loc 1 267 5 is_stmt 1
	call	memset
.LVL60:
	.loc 1 268 5
.LBB14:
.LBB15:
	.loc 1 79 5 is_stmt 0
	lui	a0,%hi(.LANCHOR4)
.LBE15:
.LBE14:
	.loc 1 268 22
	lui	a5,%hi(.LANCHOR0)
.LBB18:
.LBB16:
	.loc 1 79 5
	addi	a0,a0,%lo(.LANCHOR4)
.LBE16:
.LBE18:
	.loc 1 268 22
	sw	s0,%lo(.LANCHOR0)(a5)
	.loc 1 270 5 is_stmt 1
.LBB19:
.LBB17:
	.loc 1 79 5
	call	GLB_GPIO_Init
.LVL61:
.LBE17:
.LBE19:
	.loc 1 271 5
.LBB20:
.LBB21:
	.loc 1 74 5
	li	a2,64
	li	a1,0
	li	a0,1
	call	GLB_Set_DAC_CLK
.LVL62:
.LBE21:
.LBE20:
	.loc 1 273 5
	lui	a0,%hi(.LANCHOR5)
	addi	a0,a0,%lo(.LANCHOR5)
	call	GLB_GPIP_DAC_Set_ChanA_Config
.LVL63:
	.loc 1 274 5
	lui	a0,%hi(.LANCHOR6)
	addi	a0,a0,%lo(.LANCHOR6)
	call	GLB_GPIP_DAC_Set_ChanB_Config
.LVL64:
	.loc 1 276 5
	.loc 1 277 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL65:
	.loc 1 276 12
	li	a0,0
	.loc 1 277 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL66:
.L52:
	.loc 1 265 16
	li	a0,-1
.LVL67:
	.loc 1 277 1
	ret
	.cfi_endproc
.LFE42:
	.size	bl_audio_dac_init, .-bl_audio_dac_init
	.section	.text.bl_audio_dac_deinit,"ax",@progbits
	.align	1
	.globl	bl_audio_dac_deinit
	.type	bl_audio_dac_deinit, @function
bl_audio_dac_deinit:
.LFB43:
	.loc 1 280 1 is_stmt 1
	.cfi_startproc
.LVL68:
	.loc 1 281 5
	.loc 1 280 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 280 1
	mv	s0,a0
	.loc 1 281 5
	lw	a0,36(a0)
.LVL69:
	call	vPortFree
.LVL70:
	.loc 1 282 5 is_stmt 1
	.loc 1 285 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 282 26
	sw	zero,36(s0)
	.loc 1 284 5 is_stmt 1
	.loc 1 285 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
.LVL71:
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE43:
	.size	bl_audio_dac_deinit, .-bl_audio_dac_deinit
	.section	.data.chACfg,"aw"
	.align	2
	.set	.LANCHOR5,. + 0
	.type	chACfg, @object
	.size	chACfg, 16
chACfg:
	.word	1
	.word	1
	.word	1
	.word	1
	.section	.data.chBCfg,"aw"
	.align	2
	.set	.LANCHOR6,. + 0
	.type	chBCfg, @object
	.size	chBCfg, 16
chBCfg:
	.word	1
	.word	1
	.word	1
	.word	4
	.section	.data.dacCfg,"aw"
	.align	2
	.set	.LANCHOR1,. + 0
	.type	dacCfg, @object
	.size	dacCfg, 24
dacCfg:
	.word	0
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.section	.data.gpioCfg,"aw"
	.align	2
	.set	.LANCHOR4,. + 0
	.type	gpioCfg, @object
	.size	gpioCfg, 12
gpioCfg:
	.byte	13
	.byte	10
	.byte	2
	.byte	2
	.byte	1
	.byte	1
	.byte	14
	.byte	10
	.byte	2
	.byte	2
	.byte	1
	.byte	1
	.section	.data.lliCfg,"aw"
	.align	2
	.set	.LANCHOR3,. + 0
	.type	lliCfg, @object
	.size	lliCfg, 12
lliCfg:
	.word	1
	.word	0
	.word	23
	.section	.sbss.gp_audio_dac_dev,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	gp_audio_dac_dev, @object
	.size	gp_audio_dac_dev, 4
gp_audio_dac_dev:
	.zero	4
	.section	.sdata.dmaCtrlRegVal,"aw"
	.align	2
	.set	.LANCHOR2,. + 0
	.type	dmaCtrlRegVal, @object
	.size	dmaCtrlRegVal, 4
dmaCtrlRegVal:
	.byte	232
	.byte	3
	.byte	72
	.byte	132
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/dma_reg.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_dma.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_dac.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_dac_audio.h"
	.file 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_gpio.h"
	.file 10 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_glb.h"
	.file 11 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Common/platform_print/bflb_platform.h"
	.file 12 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 13 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_irq.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xf9d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF264
	.byte	0xc
	.4byte	.LASF265
	.4byte	.LASF266
	.4byte	.Ldebug_ranges0+0x20
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
	.4byte	.LASF5
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x4d
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x60
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.byte	0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x73
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x88
	.byte	0x4
	.byte	0x41
	.byte	0xe
	.4byte	0x23c
	.byte	0x6
	.4byte	.LASF12
	.byte	0x3
	.byte	0x6
	.4byte	.LASF13
	.byte	0x7
	.byte	0x6
	.4byte	.LASF14
	.byte	0xb
	.byte	0x6
	.4byte	.LASF15
	.byte	0xc
	.byte	0x6
	.4byte	.LASF16
	.byte	0x10
	.byte	0x6
	.4byte	.LASF17
	.byte	0x11
	.byte	0x6
	.4byte	.LASF18
	.byte	0x12
	.byte	0x6
	.4byte	.LASF19
	.byte	0x13
	.byte	0x6
	.4byte	.LASF20
	.byte	0x14
	.byte	0x6
	.4byte	.LASF21
	.byte	0x15
	.byte	0x6
	.4byte	.LASF22
	.byte	0x16
	.byte	0x6
	.4byte	.LASF23
	.byte	0x17
	.byte	0x6
	.4byte	.LASF24
	.byte	0x18
	.byte	0x6
	.4byte	.LASF25
	.byte	0x19
	.byte	0x6
	.4byte	.LASF26
	.byte	0x1a
	.byte	0x6
	.4byte	.LASF27
	.byte	0x1b
	.byte	0x6
	.4byte	.LASF28
	.byte	0x1c
	.byte	0x6
	.4byte	.LASF29
	.byte	0x1d
	.byte	0x6
	.4byte	.LASF30
	.byte	0x1e
	.byte	0x6
	.4byte	.LASF31
	.byte	0x1f
	.byte	0x6
	.4byte	.LASF32
	.byte	0x20
	.byte	0x6
	.4byte	.LASF33
	.byte	0x21
	.byte	0x6
	.4byte	.LASF34
	.byte	0x22
	.byte	0x6
	.4byte	.LASF35
	.byte	0x23
	.byte	0x6
	.4byte	.LASF36
	.byte	0x24
	.byte	0x6
	.4byte	.LASF37
	.byte	0x25
	.byte	0x6
	.4byte	.LASF38
	.byte	0x26
	.byte	0x6
	.4byte	.LASF39
	.byte	0x27
	.byte	0x6
	.4byte	.LASF40
	.byte	0x28
	.byte	0x6
	.4byte	.LASF41
	.byte	0x29
	.byte	0x6
	.4byte	.LASF42
	.byte	0x2a
	.byte	0x6
	.4byte	.LASF43
	.byte	0x2b
	.byte	0x6
	.4byte	.LASF44
	.byte	0x2c
	.byte	0x6
	.4byte	.LASF45
	.byte	0x2d
	.byte	0x6
	.4byte	.LASF46
	.byte	0x2e
	.byte	0x6
	.4byte	.LASF47
	.byte	0x2f
	.byte	0x6
	.4byte	.LASF48
	.byte	0x30
	.byte	0x6
	.4byte	.LASF49
	.byte	0x31
	.byte	0x6
	.4byte	.LASF50
	.byte	0x32
	.byte	0x6
	.4byte	.LASF51
	.byte	0x33
	.byte	0x6
	.4byte	.LASF52
	.byte	0x34
	.byte	0x6
	.4byte	.LASF53
	.byte	0x35
	.byte	0x6
	.4byte	.LASF54
	.byte	0x36
	.byte	0x6
	.4byte	.LASF55
	.byte	0x37
	.byte	0x6
	.4byte	.LASF56
	.byte	0x38
	.byte	0x6
	.4byte	.LASF57
	.byte	0x39
	.byte	0x6
	.4byte	.LASF58
	.byte	0x3a
	.byte	0x6
	.4byte	.LASF59
	.byte	0x3b
	.byte	0x6
	.4byte	.LASF60
	.byte	0x3c
	.byte	0x6
	.4byte	.LASF61
	.byte	0x3d
	.byte	0x6
	.4byte	.LASF62
	.byte	0x3e
	.byte	0x6
	.4byte	.LASF63
	.byte	0x3f
	.byte	0x6
	.4byte	.LASF64
	.byte	0x40
	.byte	0x6
	.4byte	.LASF65
	.byte	0x41
	.byte	0x6
	.4byte	.LASF66
	.byte	0x42
	.byte	0x6
	.4byte	.LASF67
	.byte	0x43
	.byte	0x6
	.4byte	.LASF68
	.byte	0x44
	.byte	0x6
	.4byte	.LASF69
	.byte	0x45
	.byte	0x6
	.4byte	.LASF70
	.byte	0x46
	.byte	0x6
	.4byte	.LASF71
	.byte	0x47
	.byte	0x6
	.4byte	.LASF72
	.byte	0x48
	.byte	0x6
	.4byte	.LASF73
	.byte	0x49
	.byte	0x6
	.4byte	.LASF74
	.byte	0x4a
	.byte	0x6
	.4byte	.LASF75
	.byte	0x4b
	.byte	0x6
	.4byte	.LASF76
	.byte	0x4c
	.byte	0x6
	.4byte	.LASF77
	.byte	0x4d
	.byte	0x6
	.4byte	.LASF78
	.byte	0x4e
	.byte	0x6
	.4byte	.LASF79
	.byte	0x4f
	.byte	0x6
	.4byte	.LASF80
	.byte	0x50
	.byte	0
	.byte	0x7
	.4byte	.LASF267
	.byte	0x4
	.byte	0x3
	.2byte	0x4c1
	.byte	0x10
	.4byte	0x302
	.byte	0x8
	.4byte	.LASF81
	.byte	0x3
	.2byte	0x4c2
	.byte	0x16
	.4byte	0x67
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.byte	0x8
	.4byte	.LASF82
	.byte	0x3
	.2byte	0x4c3
	.byte	0x16
	.4byte	0x67
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.byte	0x8
	.4byte	.LASF83
	.byte	0x3
	.2byte	0x4c4
	.byte	0x16
	.4byte	0x67
	.byte	0x4
	.byte	0x3
	.byte	0xe
	.byte	0
	.byte	0x8
	.4byte	.LASF84
	.byte	0x3
	.2byte	0x4c5
	.byte	0x16
	.4byte	0x67
	.byte	0x4
	.byte	0x3
	.byte	0xb
	.byte	0
	.byte	0x8
	.4byte	.LASF85
	.byte	0x3
	.2byte	0x4c6
	.byte	0x16
	.4byte	0x67
	.byte	0x4
	.byte	0x3
	.byte	0x8
	.byte	0
	.byte	0x8
	.4byte	.LASF86
	.byte	0x3
	.2byte	0x4c7
	.byte	0x16
	.4byte	0x67
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.byte	0x8
	.4byte	.LASF87
	.byte	0x3
	.2byte	0x4c8
	.byte	0x16
	.4byte	0x67
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.byte	0x9
	.string	"SI"
	.byte	0x3
	.2byte	0x4c9
	.byte	0x16
	.4byte	0x67
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.byte	0x9
	.string	"DI"
	.byte	0x3
	.2byte	0x4ca
	.byte	0x16
	.4byte	0x67
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.byte	0x8
	.4byte	.LASF88
	.byte	0x3
	.2byte	0x4cb
	.byte	0x16
	.4byte	0x67
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.byte	0x9
	.string	"I"
	.byte	0x3
	.2byte	0x4cc
	.byte	0x16
	.4byte	0x67
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF89
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x88
	.byte	0x5
	.byte	0x21
	.byte	0x1
	.4byte	0x326
	.byte	0x6
	.4byte	.LASF90
	.byte	0
	.byte	0x6
	.4byte	.LASF91
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF92
	.byte	0x5
	.byte	0x24
	.byte	0x2
	.4byte	0x30b
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x88
	.byte	0x5
	.byte	0x33
	.byte	0x1
	.4byte	0x34d
	.byte	0x6
	.4byte	.LASF93
	.byte	0
	.byte	0x6
	.4byte	.LASF94
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x88
	.byte	0x6
	.byte	0x49
	.byte	0xe
	.4byte	0x36e
	.byte	0x6
	.4byte	.LASF95
	.byte	0
	.byte	0x6
	.4byte	.LASF96
	.byte	0x1
	.byte	0x6
	.4byte	.LASF97
	.byte	0x2
	.byte	0
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x88
	.byte	0x6
	.byte	0x52
	.byte	0xe
	.4byte	0x395
	.byte	0x6
	.4byte	.LASF98
	.byte	0
	.byte	0x6
	.4byte	.LASF99
	.byte	0x1
	.byte	0x6
	.4byte	.LASF100
	.byte	0x2
	.byte	0x6
	.4byte	.LASF101
	.byte	0x3
	.byte	0
	.byte	0x3
	.4byte	.LASF102
	.byte	0x6
	.byte	0x57
	.byte	0x2
	.4byte	0x36e
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x88
	.byte	0x6
	.byte	0x5c
	.byte	0xe
	.4byte	0x3c8
	.byte	0x6
	.4byte	.LASF103
	.byte	0
	.byte	0x6
	.4byte	.LASF104
	.byte	0x1
	.byte	0x6
	.4byte	.LASF105
	.byte	0x2
	.byte	0x6
	.4byte	.LASF106
	.byte	0x3
	.byte	0
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x88
	.byte	0x6
	.byte	0x66
	.byte	0xe
	.4byte	0x419
	.byte	0x6
	.4byte	.LASF107
	.byte	0
	.byte	0x6
	.4byte	.LASF108
	.byte	0x1
	.byte	0x6
	.4byte	.LASF109
	.byte	0x2
	.byte	0x6
	.4byte	.LASF110
	.byte	0x3
	.byte	0x6
	.4byte	.LASF111
	.byte	0x6
	.byte	0x6
	.4byte	.LASF112
	.byte	0x7
	.byte	0x6
	.4byte	.LASF113
	.byte	0xa
	.byte	0x6
	.4byte	.LASF114
	.byte	0xb
	.byte	0x6
	.4byte	.LASF115
	.byte	0x16
	.byte	0x6
	.4byte	.LASF116
	.byte	0x17
	.byte	0x6
	.4byte	.LASF117
	.byte	0
	.byte	0
	.byte	0x3
	.4byte	.LASF118
	.byte	0x6
	.byte	0x72
	.byte	0x2
	.4byte	0x3c8
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x88
	.byte	0x6
	.byte	0x77
	.byte	0xe
	.4byte	0x452
	.byte	0x6
	.4byte	.LASF119
	.byte	0
	.byte	0x6
	.4byte	.LASF120
	.byte	0x1
	.byte	0x6
	.4byte	.LASF121
	.byte	0x2
	.byte	0x6
	.4byte	.LASF122
	.byte	0x3
	.byte	0x6
	.4byte	.LASF123
	.byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x88
	.byte	0x6
	.byte	0x82
	.byte	0xe
	.4byte	0x473
	.byte	0x6
	.4byte	.LASF124
	.byte	0
	.byte	0x6
	.4byte	.LASF125
	.byte	0x1
	.byte	0x6
	.4byte	.LASF126
	.byte	0x2
	.byte	0
	.byte	0xb
	.byte	0x10
	.byte	0x6
	.byte	0xb0
	.byte	0x9
	.4byte	0x4b1
	.byte	0xc
	.4byte	.LASF127
	.byte	0x6
	.byte	0xb1
	.byte	0xe
	.4byte	0x67
	.byte	0
	.byte	0xc
	.4byte	.LASF128
	.byte	0x6
	.byte	0xb2
	.byte	0xe
	.4byte	0x67
	.byte	0x4
	.byte	0xc
	.4byte	.LASF129
	.byte	0x6
	.byte	0xb3
	.byte	0xe
	.4byte	0x67
	.byte	0x8
	.byte	0xc
	.4byte	.LASF130
	.byte	0x6
	.byte	0xb4
	.byte	0x1c
	.4byte	0x23c
	.byte	0xc
	.byte	0
	.byte	0x3
	.4byte	.LASF131
	.byte	0x6
	.byte	0xb5
	.byte	0x2
	.4byte	0x473
	.byte	0xb
	.byte	0xc
	.byte	0x6
	.byte	0xba
	.byte	0x9
	.4byte	0x4ee
	.byte	0xd
	.string	"dir"
	.byte	0x6
	.byte	0xbb
	.byte	0x18
	.4byte	0x395
	.byte	0
	.byte	0xc
	.4byte	.LASF132
	.byte	0x6
	.byte	0xbc
	.byte	0x19
	.4byte	0x419
	.byte	0x4
	.byte	0xc
	.4byte	.LASF133
	.byte	0x6
	.byte	0xbd
	.byte	0x19
	.4byte	0x419
	.byte	0x8
	.byte	0
	.byte	0x3
	.4byte	.LASF134
	.byte	0x6
	.byte	0xbe
	.byte	0x2
	.4byte	0x4bd
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x88
	.byte	0x7
	.byte	0x3b
	.byte	0xe
	.4byte	0x515
	.byte	0x6
	.4byte	.LASF135
	.byte	0
	.byte	0x6
	.4byte	.LASF136
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF137
	.byte	0x7
	.byte	0x3e
	.byte	0x2
	.4byte	0x4fa
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x88
	.byte	0x7
	.byte	0x6f
	.byte	0xe
	.4byte	0x554
	.byte	0x6
	.4byte	.LASF138
	.byte	0
	.byte	0x6
	.4byte	.LASF139
	.byte	0x1
	.byte	0x6
	.4byte	.LASF140
	.byte	0x2
	.byte	0x6
	.4byte	.LASF141
	.byte	0x3
	.byte	0x6
	.4byte	.LASF142
	.byte	0x4
	.byte	0x6
	.4byte	.LASF143
	.byte	0x5
	.byte	0
	.byte	0x3
	.4byte	.LASF144
	.byte	0x7
	.byte	0x76
	.byte	0x2
	.4byte	0x521
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x88
	.byte	0x7
	.byte	0x7b
	.byte	0xe
	.4byte	0x587
	.byte	0x6
	.4byte	.LASF145
	.byte	0
	.byte	0x6
	.4byte	.LASF146
	.byte	0x1
	.byte	0x6
	.4byte	.LASF147
	.byte	0x2
	.byte	0x6
	.4byte	.LASF148
	.byte	0x3
	.byte	0
	.byte	0x3
	.4byte	.LASF149
	.byte	0x7
	.byte	0x80
	.byte	0x2
	.4byte	0x560
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x88
	.byte	0x7
	.byte	0x85
	.byte	0xe
	.4byte	0x5c0
	.byte	0x6
	.4byte	.LASF150
	.byte	0
	.byte	0x6
	.4byte	.LASF151
	.byte	0x1
	.byte	0x6
	.4byte	.LASF152
	.byte	0x2
	.byte	0x6
	.4byte	.LASF153
	.byte	0x3
	.byte	0x6
	.4byte	.LASF154
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF155
	.byte	0x7
	.byte	0x8b
	.byte	0x2
	.4byte	0x593
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x88
	.byte	0x7
	.byte	0x90
	.byte	0xe
	.4byte	0x5ed
	.byte	0x6
	.4byte	.LASF156
	.byte	0
	.byte	0x6
	.4byte	.LASF157
	.byte	0x1
	.byte	0x6
	.4byte	.LASF158
	.byte	0x2
	.byte	0
	.byte	0x3
	.4byte	.LASF159
	.byte	0x7
	.byte	0x94
	.byte	0x2
	.4byte	0x5cc
	.byte	0xb
	.byte	0x18
	.byte	0x7
	.byte	0x99
	.byte	0x9
	.4byte	0x651
	.byte	0xc
	.4byte	.LASF160
	.byte	0x7
	.byte	0x9a
	.byte	0x1a
	.4byte	0x515
	.byte	0
	.byte	0xc
	.4byte	.LASF161
	.byte	0x7
	.byte	0x9b
	.byte	0x11
	.4byte	0x326
	.byte	0x4
	.byte	0xc
	.4byte	.LASF162
	.byte	0x7
	.byte	0x9c
	.byte	0x11
	.4byte	0x326
	.byte	0x8
	.byte	0xd
	.string	"mod"
	.byte	0x7
	.byte	0x9d
	.byte	0x17
	.4byte	0x5c0
	.byte	0xc
	.byte	0xc
	.4byte	.LASF163
	.byte	0x7
	.byte	0x9e
	.byte	0x11
	.4byte	0x326
	.byte	0x10
	.byte	0xc
	.4byte	.LASF164
	.byte	0x7
	.byte	0x9f
	.byte	0x21
	.4byte	0x5ed
	.byte	0x14
	.byte	0
	.byte	0x3
	.4byte	.LASF165
	.byte	0x7
	.byte	0xa0
	.byte	0x2
	.4byte	0x5f9
	.byte	0xb
	.byte	0x10
	.byte	0x7
	.byte	0xa5
	.byte	0x9
	.4byte	0x69b
	.byte	0xc
	.4byte	.LASF166
	.byte	0x7
	.byte	0xa6
	.byte	0x11
	.4byte	0x326
	.byte	0
	.byte	0xc
	.4byte	.LASF167
	.byte	0x7
	.byte	0xa7
	.byte	0x11
	.4byte	0x326
	.byte	0x4
	.byte	0xc
	.4byte	.LASF168
	.byte	0x7
	.byte	0xa8
	.byte	0x11
	.4byte	0x326
	.byte	0x8
	.byte	0xd
	.string	"src"
	.byte	0x7
	.byte	0xa9
	.byte	0x1d
	.4byte	0x587
	.byte	0xc
	.byte	0
	.byte	0x3
	.4byte	.LASF169
	.byte	0x7
	.byte	0xaa
	.byte	0x2
	.4byte	0x65d
	.byte	0xb
	.byte	0x10
	.byte	0x7
	.byte	0xaf
	.byte	0x9
	.4byte	0x6e5
	.byte	0xc
	.4byte	.LASF166
	.byte	0x7
	.byte	0xb0
	.byte	0x11
	.4byte	0x326
	.byte	0
	.byte	0xc
	.4byte	.LASF167
	.byte	0x7
	.byte	0xb1
	.byte	0x11
	.4byte	0x326
	.byte	0x4
	.byte	0xc
	.4byte	.LASF168
	.byte	0x7
	.byte	0xb2
	.byte	0x11
	.4byte	0x326
	.byte	0x8
	.byte	0xd
	.string	"src"
	.byte	0x7
	.byte	0xb3
	.byte	0x1d
	.4byte	0x554
	.byte	0xc
	.byte	0
	.byte	0x3
	.4byte	.LASF170
	.byte	0x7
	.byte	0xb4
	.byte	0x2
	.4byte	0x6a7
	.byte	0x3
	.4byte	.LASF171
	.byte	0x8
	.byte	0x9
	.byte	0xf
	.4byte	0x6fd
	.byte	0xe
	.byte	0x4
	.4byte	0x703
	.byte	0xf
	.4byte	0x81
	.4byte	0x721
	.byte	0x10
	.4byte	0x302
	.byte	0x10
	.4byte	0x721
	.byte	0x10
	.4byte	0x81
	.byte	0x10
	.4byte	0x81
	.byte	0
	.byte	0xe
	.byte	0x4
	.4byte	0x41
	.byte	0x3
	.4byte	.LASF172
	.byte	0x8
	.byte	0xa
	.byte	0xf
	.4byte	0x6fd
	.byte	0xb
	.byte	0x38
	.byte	0x8
	.byte	0xc
	.byte	0x9
	.4byte	0x798
	.byte	0xc
	.4byte	.LASF173
	.byte	0x8
	.byte	0xd
	.byte	0xd
	.4byte	0x41
	.byte	0
	.byte	0xc
	.4byte	.LASF174
	.byte	0x8
	.byte	0xe
	.byte	0x17
	.4byte	0x798
	.byte	0x4
	.byte	0xc
	.4byte	.LASF175
	.byte	0x8
	.byte	0xf
	.byte	0xe
	.4byte	0x721
	.byte	0x24
	.byte	0xc
	.4byte	.LASF176
	.byte	0x8
	.byte	0x10
	.byte	0xe
	.4byte	0x67
	.byte	0x28
	.byte	0xc
	.4byte	.LASF177
	.byte	0x8
	.byte	0x12
	.byte	0x9
	.4byte	0x81
	.byte	0x2c
	.byte	0xc
	.4byte	.LASF178
	.byte	0x8
	.byte	0x13
	.byte	0x1f
	.4byte	0x727
	.byte	0x30
	.byte	0xc
	.4byte	.LASF179
	.byte	0x8
	.byte	0x14
	.byte	0xb
	.4byte	0x302
	.byte	0x34
	.byte	0
	.byte	0x11
	.4byte	0x4b1
	.4byte	0x7a8
	.byte	0x12
	.4byte	0x88
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF180
	.byte	0x8
	.byte	0x16
	.byte	0x3
	.4byte	0x733
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x88
	.byte	0x9
	.byte	0x4c
	.byte	0x1
	.4byte	0x853
	.byte	0x6
	.4byte	.LASF181
	.byte	0
	.byte	0x6
	.4byte	.LASF182
	.byte	0x1
	.byte	0x6
	.4byte	.LASF183
	.byte	0x2
	.byte	0x6
	.4byte	.LASF184
	.byte	0x3
	.byte	0x6
	.4byte	.LASF185
	.byte	0x4
	.byte	0x6
	.4byte	.LASF186
	.byte	0x5
	.byte	0x6
	.4byte	.LASF187
	.byte	0x6
	.byte	0x6
	.4byte	.LASF188
	.byte	0x7
	.byte	0x6
	.4byte	.LASF189
	.byte	0x8
	.byte	0x6
	.4byte	.LASF190
	.byte	0x9
	.byte	0x6
	.4byte	.LASF191
	.byte	0xa
	.byte	0x6
	.4byte	.LASF192
	.byte	0xb
	.byte	0x6
	.4byte	.LASF193
	.byte	0xc
	.byte	0x6
	.4byte	.LASF194
	.byte	0xd
	.byte	0x6
	.4byte	.LASF195
	.byte	0xe
	.byte	0x6
	.4byte	.LASF196
	.byte	0xf
	.byte	0x6
	.4byte	.LASF197
	.byte	0x10
	.byte	0x6
	.4byte	.LASF198
	.byte	0x11
	.byte	0x6
	.4byte	.LASF199
	.byte	0x12
	.byte	0x6
	.4byte	.LASF200
	.byte	0x13
	.byte	0x6
	.4byte	.LASF201
	.byte	0x14
	.byte	0x6
	.4byte	.LASF202
	.byte	0x15
	.byte	0x6
	.4byte	.LASF203
	.byte	0x16
	.byte	0x6
	.4byte	.LASF204
	.byte	0x17
	.byte	0
	.byte	0xb
	.byte	0x6
	.byte	0x9
	.byte	0x7e
	.byte	0x9
	.4byte	0x8ab
	.byte	0xc
	.4byte	.LASF205
	.byte	0x9
	.byte	0x80
	.byte	0xd
	.4byte	0x41
	.byte	0
	.byte	0xc
	.4byte	.LASF206
	.byte	0x9
	.byte	0x81
	.byte	0xd
	.4byte	0x41
	.byte	0x1
	.byte	0xc
	.4byte	.LASF207
	.byte	0x9
	.byte	0x82
	.byte	0xd
	.4byte	0x41
	.byte	0x2
	.byte	0xc
	.4byte	.LASF208
	.byte	0x9
	.byte	0x83
	.byte	0xd
	.4byte	0x41
	.byte	0x3
	.byte	0xc
	.4byte	.LASF209
	.byte	0x9
	.byte	0x84
	.byte	0xd
	.4byte	0x41
	.byte	0x4
	.byte	0xc
	.4byte	.LASF210
	.byte	0x9
	.byte	0x85
	.byte	0xd
	.4byte	0x41
	.byte	0x5
	.byte	0
	.byte	0x3
	.4byte	.LASF211
	.byte	0x9
	.byte	0x86
	.byte	0x2
	.4byte	0x853
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x88
	.byte	0xa
	.byte	0xc7
	.byte	0xe
	.4byte	0x8d2
	.byte	0x6
	.4byte	.LASF212
	.byte	0
	.byte	0x6
	.4byte	.LASF213
	.byte	0x1
	.byte	0
	.byte	0x13
	.4byte	.LASF214
	.byte	0x1
	.byte	0xa
	.byte	0x1c
	.4byte	0x8e4
	.byte	0x5
	.byte	0x3
	.4byte	gp_audio_dac_dev
	.byte	0xe
	.byte	0x4
	.4byte	0x7a8
	.byte	0x13
	.4byte	.LASF215
	.byte	0x1
	.byte	0x10
	.byte	0x1f
	.4byte	0x23c
	.byte	0x5
	.byte	0x3
	.4byte	dmaCtrlRegVal
	.byte	0x13
	.4byte	.LASF216
	.byte	0x1
	.byte	0x1b
	.byte	0x19
	.4byte	0x4ee
	.byte	0x5
	.byte	0x3
	.4byte	lliCfg
	.byte	0x11
	.4byte	0x8ab
	.4byte	0x91e
	.byte	0x12
	.4byte	0x88
	.byte	0x1
	.byte	0
	.byte	0x13
	.4byte	.LASF217
	.byte	0x1
	.byte	0x21
	.byte	0x1a
	.4byte	0x90e
	.byte	0x5
	.byte	0x3
	.4byte	gpioCfg
	.byte	0x13
	.4byte	.LASF218
	.byte	0x1
	.byte	0x33
	.byte	0x1e
	.4byte	0x651
	.byte	0x5
	.byte	0x3
	.4byte	dacCfg
	.byte	0x13
	.4byte	.LASF219
	.byte	0x1
	.byte	0x3b
	.byte	0x24
	.4byte	0x69b
	.byte	0x5
	.byte	0x3
	.4byte	chACfg
	.byte	0x13
	.4byte	.LASF220
	.byte	0x1
	.byte	0x41
	.byte	0x24
	.4byte	0x6e5
	.byte	0x5
	.byte	0x3
	.4byte	chBCfg
	.byte	0x14
	.4byte	.LASF221
	.byte	0x1
	.2byte	0x117
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x1
	.byte	0x9c
	.4byte	0x99c
	.byte	0x15
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x117
	.byte	0x2e
	.4byte	0x8e4
	.4byte	.LLST20
	.byte	0x16
	.4byte	.LVL70
	.4byte	0xe88
	.byte	0
	.byte	0x14
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x106
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x1
	.byte	0x9c
	.4byte	0xa6b
	.byte	0x15
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x106
	.byte	0x2c
	.4byte	0x8e4
	.4byte	.LLST19
	.byte	0x17
	.4byte	0xe76
	.4byte	.LBB14
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x10e
	.byte	0x5
	.4byte	0x9f1
	.byte	0x18
	.4byte	.LVL61
	.4byte	0xe94
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR4
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	0xe7f
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.byte	0x1
	.2byte	0x10f
	.byte	0x5
	.4byte	0xa21
	.byte	0x18
	.4byte	.LVL62
	.4byte	0xea1
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LVL60
	.4byte	0xeae
	.4byte	0xa40
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x38
	.byte	0
	.byte	0x1b
	.4byte	.LVL63
	.4byte	0xeba
	.4byte	0xa57
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR5
	.byte	0
	.byte	0x18
	.4byte	.LVL64
	.4byte	0xec7
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR6
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LASF224
	.byte	0x1
	.byte	0xfb
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x1
	.byte	0x9c
	.4byte	0xac1
	.byte	0x1d
	.4byte	.LASF223
	.byte	0x1
	.byte	0xfb
	.byte	0x2c
	.4byte	0x8e4
	.4byte	.LLST18
	.byte	0x16
	.4byte	.LVL56
	.4byte	0xed4
	.byte	0x1b
	.4byte	.LVL57
	.4byte	0xee1
	.4byte	0xab1
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x18
	.4byte	.LVL58
	.4byte	0xeee
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x4f
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LASF225
	.byte	0x1
	.byte	0xe0
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x1
	.byte	0x9c
	.4byte	0xc0e
	.byte	0x1d
	.4byte	.LASF223
	.byte	0x1
	.byte	0xe0
	.byte	0x2d
	.4byte	0x8e4
	.4byte	.LLST16
	.byte	0x1e
	.4byte	0xe5c
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.byte	0xf4
	.byte	0x5
	.4byte	0xb34
	.byte	0x1f
	.4byte	0xe69
	.4byte	.LLST17
	.byte	0x1b
	.4byte	.LVL49
	.4byte	0xefa
	.4byte	0xb24
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR3
	.byte	0
	.byte	0x18
	.4byte	.LVL50
	.4byte	0xf07
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LVL38
	.4byte	0xf14
	.byte	0x1b
	.4byte	.LVL39
	.4byte	0xee1
	.4byte	0xb50
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1b
	.4byte	.LVL40
	.4byte	0xf21
	.4byte	0xb6d
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x1b
	.4byte	.LVL41
	.4byte	0xf21
	.4byte	0xb8a
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1b
	.4byte	.LVL42
	.4byte	0xf2e
	.4byte	0xba6
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x4f
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	__dma_irq_handler
	.byte	0
	.byte	0x1b
	.4byte	.LVL43
	.4byte	0xf3a
	.4byte	0xbb9
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x4f
	.byte	0
	.byte	0x1b
	.4byte	.LVL44
	.4byte	0xf46
	.4byte	0xbd0
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0
	.byte	0x1b
	.4byte	.LVL45
	.4byte	0xf53
	.4byte	0xbe3
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x16
	.4byte	.LVL46
	.4byte	0xf60
	.byte	0x16
	.4byte	.LVL47
	.4byte	0xf6d
	.byte	0x16
	.4byte	.LVL48
	.4byte	0xf7a
	.byte	0x18
	.4byte	.LVL51
	.4byte	0xf87
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LASF226
	.byte	0x1
	.byte	0xd9
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x1
	.byte	0x9c
	.4byte	0xc55
	.byte	0x1d
	.4byte	.LASF223
	.byte	0x1
	.byte	0xd9
	.byte	0x38
	.4byte	0x8e4
	.4byte	.LLST15
	.byte	0x20
	.4byte	.LASF227
	.byte	0x1
	.byte	0xda
	.byte	0x2a
	.4byte	0xc55
	.byte	0x1
	.byte	0x5b
	.byte	0x20
	.4byte	.LASF228
	.byte	0x1
	.byte	0xdb
	.byte	0x2c
	.4byte	0x67
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0xe
	.byte	0x4
	.4byte	0x302
	.byte	0x1c
	.4byte	.LASF229
	.byte	0x1
	.byte	0xc2
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x1
	.byte	0x9c
	.4byte	0xcd4
	.byte	0x1d
	.4byte	.LASF223
	.byte	0x1
	.byte	0xc2
	.byte	0x38
	.4byte	0x8e4
	.4byte	.LLST10
	.byte	0x1d
	.4byte	.LASF227
	.byte	0x1
	.byte	0xc2
	.byte	0x46
	.4byte	0xc55
	.4byte	.LLST11
	.byte	0x1d
	.4byte	.LASF228
	.byte	0x1
	.byte	0xc2
	.byte	0x58
	.4byte	0x67
	.4byte	.LLST12
	.byte	0x21
	.string	"i"
	.byte	0x1
	.byte	0xc4
	.byte	0x9
	.4byte	0x81
	.4byte	.LLST13
	.byte	0x22
	.4byte	.LASF230
	.byte	0x1
	.byte	0xc5
	.byte	0xf
	.4byte	0xcd4
	.4byte	.LLST14
	.byte	0x18
	.4byte	.LVL26
	.4byte	0xf94
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x4
	.4byte	0x54
	.byte	0x1c
	.4byte	.LASF231
	.byte	0x1
	.byte	0xbb
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x1
	.byte	0x9c
	.4byte	0xd20
	.byte	0x1d
	.4byte	.LASF223
	.byte	0x1
	.byte	0xbb
	.byte	0x36
	.4byte	0x8e4
	.4byte	.LLST9
	.byte	0x23
	.string	"cb"
	.byte	0x1
	.byte	0xbc
	.byte	0x39
	.4byte	0x6f1
	.byte	0x1
	.byte	0x5b
	.byte	0x20
	.4byte	.LASF232
	.byte	0x1
	.byte	0xbd
	.byte	0x25
	.4byte	0x302
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0x1c
	.4byte	.LASF233
	.byte	0x1
	.byte	0xaf
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x1
	.byte	0x9c
	.4byte	0xd66
	.byte	0x1d
	.4byte	.LASF223
	.byte	0x1
	.byte	0xaf
	.byte	0x36
	.4byte	0x8e4
	.4byte	.LLST8
	.byte	0x23
	.string	"cb"
	.byte	0x1
	.byte	0xb0
	.byte	0x39
	.4byte	0x727
	.byte	0x1
	.byte	0x5b
	.byte	0x20
	.4byte	.LASF232
	.byte	0x1
	.byte	0xb1
	.byte	0x25
	.4byte	0x302
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0x1c
	.4byte	.LASF234
	.byte	0x1
	.byte	0xa9
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x1
	.byte	0x9c
	.4byte	0xd9f
	.byte	0x1d
	.4byte	.LASF223
	.byte	0x1
	.byte	0xa9
	.byte	0x36
	.4byte	0x8e4
	.4byte	.LLST7
	.byte	0x20
	.4byte	.LASF235
	.byte	0x1
	.byte	0xa9
	.byte	0x4f
	.4byte	0x5c0
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0x24
	.4byte	.LASF268
	.byte	0x1
	.byte	0x82
	.byte	0xd
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x1
	.byte	0x9c
	.4byte	0xe1b
	.byte	0x22
	.4byte	.LASF236
	.byte	0x1
	.byte	0x84
	.byte	0xe
	.4byte	0x67
	.4byte	.LLST0
	.byte	0x21
	.string	"ret"
	.byte	0x1
	.byte	0x85
	.byte	0x9
	.4byte	0x81
	.4byte	.LLST1
	.byte	0x22
	.4byte	.LASF237
	.byte	0x1
	.byte	0x85
	.byte	0xe
	.4byte	0x81
	.4byte	.LLST2
	.byte	0x25
	.4byte	0xe1b
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0xa6
	.byte	0x5
	.byte	0x1f
	.4byte	0xe2c
	.4byte	.LLST3
	.byte	0x26
	.4byte	0xe37
	.4byte	.LLST4
	.byte	0x26
	.4byte	0xe43
	.4byte	.LLST5
	.byte	0x26
	.4byte	0xe4f
	.4byte	.LLST6
	.byte	0
	.byte	0
	.byte	0x27
	.4byte	.LASF269
	.byte	0x1
	.byte	0x64
	.byte	0xc
	.4byte	0x81
	.byte	0x1
	.4byte	0xe5c
	.byte	0x28
	.string	"ch"
	.byte	0x1
	.byte	0x64
	.byte	0x20
	.4byte	0x81
	.byte	0x29
	.4byte	.LASF236
	.byte	0x1
	.byte	0x66
	.byte	0xe
	.4byte	0x67
	.byte	0x29
	.4byte	.LASF238
	.byte	0x1
	.byte	0x67
	.byte	0xe
	.4byte	0x67
	.byte	0x29
	.4byte	.LASF239
	.byte	0x1
	.byte	0x69
	.byte	0xe
	.4byte	0x67
	.byte	0
	.byte	0x2a
	.4byte	.LASF270
	.byte	0x1
	.byte	0x52
	.byte	0xd
	.byte	0x1
	.4byte	0xe76
	.byte	0x2b
	.4byte	.LASF223
	.byte	0x1
	.byte	0x52
	.byte	0x30
	.4byte	0x8e4
	.byte	0
	.byte	0x2c
	.4byte	.LASF240
	.byte	0x1
	.byte	0x4d
	.byte	0xd
	.byte	0x1
	.byte	0x2c
	.4byte	.LASF241
	.byte	0x1
	.byte	0x48
	.byte	0xd
	.byte	0x1
	.byte	0x2d
	.4byte	.LASF242
	.4byte	.LASF242
	.byte	0xb
	.byte	0xf
	.byte	0x6
	.byte	0x2e
	.4byte	.LASF243
	.4byte	.LASF243
	.byte	0xa
	.2byte	0x276
	.byte	0xd
	.byte	0x2e
	.4byte	.LASF244
	.4byte	.LASF244
	.byte	0xa
	.2byte	0x263
	.byte	0xd
	.byte	0x2d
	.4byte	.LASF245
	.4byte	.LASF245
	.byte	0xc
	.byte	0x21
	.byte	0x8
	.byte	0x2e
	.4byte	.LASF246
	.4byte	.LASF246
	.byte	0x7
	.2byte	0x113
	.byte	0x6
	.byte	0x2e
	.4byte	.LASF247
	.4byte	.LASF247
	.byte	0x7
	.2byte	0x114
	.byte	0x6
	.byte	0x2e
	.4byte	.LASF248
	.4byte	.LASF248
	.byte	0x6
	.2byte	0x13a
	.byte	0x6
	.byte	0x2e
	.4byte	.LASF249
	.4byte	.LASF249
	.byte	0x6
	.2byte	0x141
	.byte	0x6
	.byte	0x2d
	.4byte	.LASF250
	.4byte	.LASF250
	.byte	0xd
	.byte	0x4
	.byte	0x6
	.byte	0x2e
	.4byte	.LASF251
	.4byte	.LASF251
	.byte	0x6
	.2byte	0x142
	.byte	0x6
	.byte	0x2e
	.4byte	.LASF252
	.4byte	.LASF252
	.byte	0x6
	.2byte	0x143
	.byte	0x6
	.byte	0x2e
	.4byte	.LASF253
	.4byte	.LASF253
	.byte	0x6
	.2byte	0x139
	.byte	0x6
	.byte	0x2e
	.4byte	.LASF254
	.4byte	.LASF254
	.byte	0x6
	.2byte	0x144
	.byte	0x6
	.byte	0x2d
	.4byte	.LASF255
	.4byte	.LASF255
	.byte	0xd
	.byte	0x16
	.byte	0x6
	.byte	0x2d
	.4byte	.LASF256
	.4byte	.LASF256
	.byte	0xd
	.byte	0x3
	.byte	0x6
	.byte	0x2e
	.4byte	.LASF257
	.4byte	.LASF257
	.byte	0x7
	.2byte	0x112
	.byte	0xd
	.byte	0x2e
	.4byte	.LASF258
	.4byte	.LASF258
	.byte	0x7
	.2byte	0x10e
	.byte	0x6
	.byte	0x2e
	.4byte	.LASF259
	.4byte	.LASF259
	.byte	0x7
	.2byte	0x10f
	.byte	0x6
	.byte	0x2e
	.4byte	.LASF260
	.4byte	.LASF260
	.byte	0x7
	.2byte	0x10c
	.byte	0x6
	.byte	0x2e
	.4byte	.LASF261
	.4byte	.LASF261
	.byte	0x7
	.2byte	0x10a
	.byte	0x6
	.byte	0x2e
	.4byte	.LASF262
	.4byte	.LASF262
	.byte	0x6
	.2byte	0x140
	.byte	0x6
	.byte	0x2d
	.4byte	.LASF263
	.4byte	.LASF263
	.byte	0xb
	.byte	0xc
	.byte	0x8
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
	.byte	0x6
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
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
	.byte	0x5
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0xb
	.byte	0xb
	.byte	0xd
	.byte	0xb
	.byte	0xc
	.byte	0xb
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0xb
	.byte	0xb
	.byte	0xd
	.byte	0xb
	.byte	0xc
	.byte	0xb
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xb
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
	.byte	0xe
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0x10
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x13
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
	.byte	0x14
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
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
	.byte	0x15
	.byte	0x5
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
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
	.byte	0x5
	.byte	0x57
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1a
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
	.byte	0x5
	.byte	0x57
	.byte	0xb
	.byte	0x1
	.byte	0x13
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
	.byte	0x1d
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
	.byte	0x1e
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
	.byte	0x1f
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
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
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x21
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
	.byte	0x22
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
	.byte	0x23
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x24
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
	.byte	0x96,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x25
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
	.byte	0
	.byte	0
	.byte	0x26
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x27
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
	.byte	0x28
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
	.byte	0x29
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
	.byte	0x2a
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
	.byte	0x2b
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
	.byte	0x2c
	.byte	0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0x2d
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
	.byte	0x2e
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
.LLST20:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL71
	.4byte	.LFE43
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL59
	.4byte	.LVL60-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL60-1
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL67
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL55
	.4byte	.LVL56-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL56-1
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL37
	.4byte	.LVL38-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL38-1
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL52
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
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL36
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LFE38
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL24
	.4byte	.LVL26-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL26-1
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LFE38
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL24
	.4byte	.LVL26-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL26-1
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LFE38
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL33
	.4byte	.LFE38
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL33
	.4byte	.LFE38
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LFE35
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
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x6
	.byte	0x7f
	.byte	0x28
	.byte	0x6
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x8
	.byte	0x7e
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x31
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x8
	.byte	0x7e
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x31
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL4
	.4byte	.LVL14
	.2byte	0x6
	.byte	0xc
	.4byte	0x4000c000
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x64
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	.LBB19
	.4byte	.LBE19
	.4byte	0
	.4byte	0
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF208:
	.string	"pullType"
.LASF153:
	.string	"GPIP_DAC_MOD_8K"
.LASF15:
	.string	"CLIC_SOFT_PEND_IRQn"
.LASF18:
	.string	"L1C_BMX_ERR_IRQn"
.LASF14:
	.string	"MEXT_IRQn"
.LASF23:
	.string	"SDIO_IRQn"
.LASF66:
	.string	"PDS_WAKEUP_IRQn"
.LASF176:
	.string	"lli_tx_buffer_size"
.LASF219:
	.string	"chACfg"
.LASF71:
	.string	"BZ_PHY_IRQn"
.LASF261:
	.string	"GPIP_DAC_ChanB_Enable"
.LASF127:
	.string	"srcDmaAddr"
.LASF251:
	.string	"DMA_LLI_Init"
.LASF177:
	.string	"is_underrun"
.LASF78:
	.string	"MAC_PORT_TRG_IRQn"
.LASF163:
	.string	"dmaEn"
.LASF69:
	.string	"BOR_IRQn"
.LASF244:
	.string	"GLB_Set_DAC_CLK"
.LASF17:
	.string	"BMX_TO_IRQn"
.LASF259:
	.string	"GPIP_Set_DAC_DMA_TX_Enable"
.LASF116:
	.string	"DMA_REQ_GPADC1"
.LASF1:
	.string	"short int"
.LASF30:
	.string	"SEC_SHA_IRQn"
.LASF265:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_dac_audio.c"
.LASF252:
	.string	"DMA_LLI_Update"
.LASF117:
	.string	"DMA_REQ_NONE"
.LASF223:
	.string	"p_dev"
.LASF81:
	.string	"TransferSize"
.LASF54:
	.string	"TIMER_WDT_IRQn"
.LASF39:
	.string	"SF_CTRL_IRQn"
.LASF214:
	.string	"gp_audio_dac_dev"
.LASF143:
	.string	"GPIP_DAC_ChanB_SRC_INVERSE_A"
.LASF264:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF213:
	.string	"GLB_DAC_CLK_XCLK"
.LASF216:
	.string	"lliCfg"
.LASF8:
	.string	"uint32_t"
.LASF87:
	.string	"reserved_25"
.LASF133:
	.string	"dstPeriph"
.LASF129:
	.string	"nextLLI"
.LASF60:
	.string	"GPIO_INT0_IRQn"
.LASF139:
	.string	"GPIP_DAC_ChanB_SRC_DMA"
.LASF227:
	.string	"ptr_mem"
.LASF10:
	.string	"long long unsigned int"
.LASF19:
	.string	"L1C_BMX_TO_IRQn"
.LASF233:
	.string	"bl_audio_dac_tx_ready_config"
.LASF22:
	.string	"RF_TOP_INT1_IRQn"
.LASF56:
	.string	"RESERVED11"
.LASF124:
	.string	"DMA_INT_TCOMPLETED"
.LASF141:
	.string	"GPIP_DAC_ChanB_SRC_SIN_GEN"
.LASF229:
	.string	"bl_audio_dac_tx_buffer_config"
.LASF95:
	.string	"DMA_TRNS_WIDTH_8BITS"
.LASF123:
	.string	"DMA_CH_MAX"
.LASF207:
	.string	"gpioMode"
.LASF96:
	.string	"DMA_TRNS_WIDTH_16BITS"
.LASF138:
	.string	"GPIP_DAC_ChanB_SRC_REG"
.LASF52:
	.string	"TIMER_CH0_IRQn"
.LASF263:
	.string	"pvPortMalloc"
.LASF88:
	.string	"Prot"
.LASF94:
	.string	"MASK"
.LASF171:
	.string	"audio_callback_rx_ready_t"
.LASF222:
	.string	"bl_audio_dac_init"
.LASF156:
	.string	"GPIP_DAC_DMA_FORMAT_0"
.LASF157:
	.string	"GPIP_DAC_DMA_FORMAT_1"
.LASF158:
	.string	"GPIP_DAC_DMA_FORMAT_2"
.LASF247:
	.string	"GLB_GPIP_DAC_Set_ChanB_Config"
.LASF164:
	.string	"dmaFmt"
.LASF241:
	.string	"__dac_clock_init"
.LASF85:
	.string	"DWidth"
.LASF180:
	.string	"bl_audio_dac_dev_t"
.LASF234:
	.string	"bl_audio_dac_samplerate_set"
.LASF83:
	.string	"DBSize"
.LASF155:
	.string	"GPIP_DAC_MOD_Type"
.LASF46:
	.string	"UART1_IRQn"
.LASF175:
	.string	"lli_tx_buffer"
.LASF152:
	.string	"GPIP_DAC_MOD_RESERVE"
.LASF250:
	.string	"bl_irq_disable"
.LASF209:
	.string	"drive"
.LASF137:
	.string	"GLB_DAC_Ref_Sel_Type"
.LASF167:
	.string	"outputEn"
.LASF84:
	.string	"SWidth"
.LASF212:
	.string	"GLB_DAC_CLK_32M"
.LASF231:
	.string	"bl_audio_dac_rx_ready_config"
.LASF82:
	.string	"SBSize"
.LASF79:
	.string	"WIFI_IPC_PUBLIC_IRQn"
.LASF65:
	.string	"RESERVED20"
.LASF31:
	.string	"DMA_ALL_IRQn"
.LASF43:
	.string	"SPI_IRQn"
.LASF109:
	.string	"DMA_REQ_UART1_RX"
.LASF89:
	.string	"char"
.LASF238:
	.string	"intClr"
.LASF168:
	.string	"chanEn"
.LASF90:
	.string	"DISABLE"
.LASF48:
	.string	"I2C_IRQn"
.LASF150:
	.string	"GPIP_DAC_MOD_32K"
.LASF140:
	.string	"GPIP_DAC_ChanB_SRC_DMA_WITH_FILTER"
.LASF169:
	.string	"GLB_GPIP_DAC_ChanA_Cfg_Type"
.LASF11:
	.string	"unsigned int"
.LASF5:
	.string	"uint8_t"
.LASF215:
	.string	"dmaCtrlRegVal"
.LASF76:
	.string	"MAC_TX_TRG_IRQn"
.LASF93:
	.string	"UNMASK"
.LASF217:
	.string	"gpioCfg"
.LASF128:
	.string	"destDmaAddr"
.LASF228:
	.string	"bufsize"
.LASF3:
	.string	"long long int"
.LASF160:
	.string	"refSel"
.LASF262:
	.string	"DMA_Channel_Enable"
.LASF253:
	.string	"DMA_Enable"
.LASF118:
	.string	"DMA_Periph_Req_Type"
.LASF249:
	.string	"DMA_Channel_Disable"
.LASF235:
	.string	"samplerate"
.LASF72:
	.string	"BLE_IRQn"
.LASF106:
	.string	"DMA_BURST_SIZE_16"
.LASF267:
	.string	"DMA_Control_Reg"
.LASF110:
	.string	"DMA_REQ_UART1_TX"
.LASF149:
	.string	"GPIP_DAC_ChanA_SRC_Type"
.LASF245:
	.string	"memset"
.LASF67:
	.string	"HBN_OUT0_IRQn"
.LASF80:
	.string	"IRQn_LAST"
.LASF237:
	.string	"size"
.LASF119:
	.string	"DMA_CH0"
.LASF50:
	.string	"PWM_IRQn"
.LASF121:
	.string	"DMA_CH2"
.LASF122:
	.string	"DMA_CH3"
.LASF225:
	.string	"bl_audio_dac_start"
.LASF16:
	.string	"BMX_ERR_IRQn"
.LASF24:
	.string	"DMA_BMX_ERR_IRQn"
.LASF9:
	.string	"long unsigned int"
.LASF191:
	.string	"GLB_GPIO_PIN_10"
.LASF192:
	.string	"GLB_GPIO_PIN_11"
.LASF193:
	.string	"GLB_GPIO_PIN_12"
.LASF194:
	.string	"GLB_GPIO_PIN_13"
.LASF195:
	.string	"GLB_GPIO_PIN_14"
.LASF196:
	.string	"GLB_GPIO_PIN_15"
.LASF197:
	.string	"GLB_GPIO_PIN_16"
.LASF198:
	.string	"GLB_GPIO_PIN_17"
.LASF199:
	.string	"GLB_GPIO_PIN_18"
.LASF200:
	.string	"GLB_GPIO_PIN_19"
.LASF240:
	.string	"__dac_gpio_init"
.LASF77:
	.string	"MAC_GEN_IRQn"
.LASF178:
	.string	"usr_cb"
.LASF92:
	.string	"BL_Fun_Type"
.LASF21:
	.string	"RF_TOP_INT0_IRQn"
.LASF269:
	.string	"__dma_int_clear"
.LASF125:
	.string	"DMA_INT_ERR"
.LASF6:
	.string	"uint16_t"
.LASF42:
	.string	"EFUSE_IRQn"
.LASF220:
	.string	"chBCfg"
.LASF131:
	.string	"DMA_LLI_Ctrl_Type"
.LASF134:
	.string	"DMA_LLI_Cfg_Type"
.LASF20:
	.string	"SEC_BMX_ERR_IRQn"
.LASF201:
	.string	"GLB_GPIO_PIN_20"
.LASF202:
	.string	"GLB_GPIO_PIN_21"
.LASF203:
	.string	"GLB_GPIO_PIN_22"
.LASF74:
	.string	"MAC_TXRX_MISC_IRQn"
.LASF170:
	.string	"GLB_GPIP_DAC_ChanB_Cfg_Type"
.LASF206:
	.string	"gpioFun"
.LASF32:
	.string	"RESERVED0"
.LASF33:
	.string	"RESERVED1"
.LASF34:
	.string	"RESERVED2"
.LASF37:
	.string	"RESERVED3"
.LASF38:
	.string	"RESERVED4"
.LASF40:
	.string	"RESERVED5"
.LASF44:
	.string	"RESERVED6"
.LASF47:
	.string	"RESERVED7"
.LASF49:
	.string	"RESERVED8"
.LASF51:
	.string	"RESERVED9"
.LASF142:
	.string	"GPIP_DAC_ChanB_SRC_A"
.LASF179:
	.string	"p_usr_arg"
.LASF2:
	.string	"long int"
.LASF98:
	.string	"DMA_TRNS_M2M"
.LASF115:
	.string	"DMA_REQ_GPADC0"
.LASF99:
	.string	"DMA_TRNS_M2P"
.LASF181:
	.string	"GLB_GPIO_PIN_0"
.LASF182:
	.string	"GLB_GPIO_PIN_1"
.LASF183:
	.string	"GLB_GPIO_PIN_2"
.LASF184:
	.string	"GLB_GPIO_PIN_3"
.LASF185:
	.string	"GLB_GPIO_PIN_4"
.LASF186:
	.string	"GLB_GPIO_PIN_5"
.LASF187:
	.string	"GLB_GPIO_PIN_6"
.LASF188:
	.string	"GLB_GPIO_PIN_7"
.LASF189:
	.string	"GLB_GPIO_PIN_8"
.LASF190:
	.string	"GLB_GPIO_PIN_9"
.LASF45:
	.string	"UART0_IRQn"
.LASF256:
	.string	"bl_irq_enable"
.LASF242:
	.string	"vPortFree"
.LASF12:
	.string	"MSOFT_IRQn"
.LASF36:
	.string	"IRRX_IRQn"
.LASF130:
	.string	"dmaCtrl"
.LASF248:
	.string	"DMA_Disable"
.LASF25:
	.string	"SEC_GMAC_IRQn"
.LASF258:
	.string	"GPIP_Set_DAC_DMA_TX_FORMAT_SEL"
.LASF26:
	.string	"SEC_CDET_IRQn"
.LASF166:
	.string	"chanCovtEn"
.LASF211:
	.string	"GLB_GPIO_Cfg_Type"
.LASF218:
	.string	"dacCfg"
.LASF165:
	.string	"GLB_GPIP_DAC_Cfg_Type"
.LASF70:
	.string	"WIFI_IRQn"
.LASF172:
	.string	"audio_callback_tx_ready_t"
.LASF132:
	.string	"srcPeriph"
.LASF173:
	.string	"pingpang"
.LASF144:
	.string	"GPIP_DAC_ChanB_SRC_Type"
.LASF232:
	.string	"p_arg"
.LASF91:
	.string	"ENABLE"
.LASF103:
	.string	"DMA_BURST_SIZE_1"
.LASF111:
	.string	"DMA_REQ_I2C_RX"
.LASF104:
	.string	"DMA_BURST_SIZE_4"
.LASF68:
	.string	"HBN_OUT1_IRQn"
.LASF13:
	.string	"MTIME_IRQn"
.LASF105:
	.string	"DMA_BURST_SIZE_8"
.LASF260:
	.string	"GPIP_DAC_ChanA_Enable"
.LASF148:
	.string	"GPIP_DAC_ChanA_SRC_SIN_GEN"
.LASF27:
	.string	"SEC_PKA_IRQn"
.LASF147:
	.string	"GPIP_DAC_ChanA_SRC_DMA_WITH_FILTER"
.LASF154:
	.string	"GPIP_DAC_MOD_512K"
.LASF126:
	.string	"DMA_INT_ALL"
.LASF135:
	.string	"GLB_DAC_REF_SEL_INTERNAL"
.LASF257:
	.string	"GLB_GPIP_DAC_Init"
.LASF266:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/hosal"
.LASF41:
	.string	"GPADC_DMA_IRQn"
.LASF107:
	.string	"DMA_REQ_UART0_RX"
.LASF4:
	.string	"unsigned char"
.LASF75:
	.string	"MAC_RX_TRG_IRQn"
.LASF29:
	.string	"SEC_AES_IRQn"
.LASF226:
	.string	"bl_audio_dac_rx_buffer_config"
.LASF224:
	.string	"bl_audio_dac_stop"
.LASF205:
	.string	"gpioPin"
.LASF270:
	.string	"__dac_lli_init"
.LASF35:
	.string	"IRTX_IRQn"
.LASF55:
	.string	"RESERVED10"
.LASF113:
	.string	"DMA_REQ_SPI_RX"
.LASF57:
	.string	"RESERVED12"
.LASF58:
	.string	"RESERVED13"
.LASF59:
	.string	"RESERVED14"
.LASF61:
	.string	"RESERVED16"
.LASF62:
	.string	"RESERVED17"
.LASF63:
	.string	"RESERVED18"
.LASF64:
	.string	"RESERVED19"
.LASF204:
	.string	"GLB_GPIO_PIN_MAX"
.LASF239:
	.string	"DMAChs"
.LASF100:
	.string	"DMA_TRNS_P2M"
.LASF101:
	.string	"DMA_TRNS_P2P"
.LASF102:
	.string	"DMA_Trans_Dir_Type"
.LASF151:
	.string	"GPIP_DAC_MOD_16K"
.LASF221:
	.string	"bl_audio_dac_deinit"
.LASF28:
	.string	"SEC_TRNG_IRQn"
.LASF230:
	.string	"p_16"
.LASF243:
	.string	"GLB_GPIO_Init"
.LASF0:
	.string	"signed char"
.LASF53:
	.string	"TIMER_CH1_IRQn"
.LASF7:
	.string	"short unsigned int"
.LASF112:
	.string	"DMA_REQ_I2C_TX"
.LASF254:
	.string	"DMA_IntMask"
.LASF159:
	.string	"GPIP_DAC_DMA_TX_FORMAT_Type"
.LASF161:
	.string	"resetChanA"
.LASF162:
	.string	"resetChanB"
.LASF246:
	.string	"GLB_GPIP_DAC_Set_ChanA_Config"
.LASF97:
	.string	"DMA_TRNS_WIDTH_32BITS"
.LASF136:
	.string	"GLB_DAC_REF_SEL_EXTERNAL"
.LASF255:
	.string	"bl_irq_register"
.LASF146:
	.string	"GPIP_DAC_ChanA_SRC_DMA"
.LASF108:
	.string	"DMA_REQ_UART0_TX"
.LASF86:
	.string	"SLargerD"
.LASF236:
	.string	"tmpVal"
.LASF174:
	.string	"lli_list"
.LASF73:
	.string	"MAC_TXRX_TIMER_IRQn"
.LASF268:
	.string	"__dma_irq_handler"
.LASF210:
	.string	"smtCtrl"
.LASF145:
	.string	"GPIP_DAC_ChanA_SRC_REG"
.LASF114:
	.string	"DMA_REQ_SPI_TX"
.LASF120:
	.string	"DMA_CH1"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
