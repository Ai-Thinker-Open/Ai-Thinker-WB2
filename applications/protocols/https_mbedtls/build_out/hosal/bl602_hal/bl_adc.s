	.file	"bl_adc.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.adc_data_update.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"bl_adc.c"
	.align	2
.LC2:
	.string	"\033[31mERROR\033[0m"
	.align	2
.LC3:
	.string	"%s (%d)[%s:%4d] get ctx error \r\n\r\n"
	.section	.text.adc_data_update,"ax",@progbits
	.align	1
	.type	adc_data_update, @function
adc_data_update:
.LFB37:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_adc.c"
	.loc 1 255 1
	.cfi_startproc
	.loc 1 256 5
	.loc 1 258 5
	.loc 1 255 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 258 14
	li	a0,1
	.loc 1 255 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 258 14
	call	bl_dma_find_ctx_by_channel
.LVL0:
	.loc 1 259 5 is_stmt 1
	.loc 1 259 8 is_stmt 0
	bne	a0,zero,.L2
	.loc 1 260 9 is_stmt 1 discriminator 1
	.loc 1 260 47 discriminator 1
	.loc 1 260 52 discriminator 1
	.loc 1 260 74 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 260 55 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	bgtu	a4,a5,.L1
	.loc 1 260 118 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalbl_adc)
	.loc 1 260 97 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalbl_adc)(a4)
	bgtu	a4,a5,.L1
	.loc 1 260 150 is_stmt 1 discriminator 5
	.loc 1 260 233 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL1:
	.loc 1 260 150 discriminator 5
	beq	a0,zero,.L6
	.loc 1 260 262 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL2:
.L14:
	.loc 1 277 1 discriminator 8
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	.loc 1 260 293 discriminator 8
	mv	a2,a0
	.loc 1 260 150 discriminator 8
	lui	a3,%hi(.LC1)
	lui	a1,%hi(.LC2)
	lui	a0,%hi(.LC3)
	.loc 1 277 1 discriminator 8
	.loc 1 260 150 discriminator 8
	li	a4,260
	addi	a3,a3,%lo(.LC1)
	addi	a1,a1,%lo(.LC2)
	addi	a0,a0,%lo(.LC3)
	.loc 1 277 1 discriminator 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 260 150 discriminator 8
	tail	bl_printk
.LVL3:
.L6:
	.cfi_restore_state
	.loc 1 260 293 discriminator 8
	call	xTaskGetTickCount
.LVL4:
	j	.L14
.LVL5:
.L2:
	.loc 1 264 5 is_stmt 1
	.loc 1 264 8 is_stmt 0
	lw	a4,12(a0)
	.loc 1 265 73
	lw	a5,8(a0)
	.loc 1 264 8
	bne	a4,zero,.L8
	.loc 1 265 9 is_stmt 1
	.loc 1 265 30 is_stmt 0
	lw	a5,4(a5)
	sw	a5,4(a0)
	.loc 1 266 9 is_stmt 1
	.loc 1 266 26 is_stmt 0
	li	a5,1
	sw	a5,12(a0)
.L9:
	.loc 1 272 5 is_stmt 1
	.loc 1 272 15 is_stmt 0
	lw	a5,24(a0)
	.loc 1 272 8
	beq	a5,zero,.L1
	.loc 1 273 9 is_stmt 1
	.loc 1 273 16 is_stmt 0
	lw	a2,20(a0)
	lw	a1,4(a0)
	.loc 1 277 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	.loc 1 273 16
	lw	a0,0(a0)
.LVL6:
	.loc 1 277 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 273 16
	jr	a5
.LVL7:
.L8:
	.cfi_restore_state
	.loc 1 268 9 is_stmt 1
	.loc 1 268 30 is_stmt 0
	lw	a5,20(a5)
	.loc 1 269 26
	sw	zero,12(a0)
	.loc 1 268 30
	sw	a5,4(a0)
	.loc 1 269 9 is_stmt 1
	j	.L9
.L1:
	.loc 1 277 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE37:
	.size	adc_data_update, .-adc_data_update
	.section	.rodata.ADC_Clock_Init.str1.4,"aMS",@progbits,1
	.align	2
.LC4:
	.string	"\033[32mINFO\033[0m"
	.align	2
.LC5:
	.string	"%s (%d)[%s:%4d] GLB_Set_ADC_CLK_Div(%d) == clock 96M/(%d+1)\r\n\r\n"
	.section	.text.ADC_Clock_Init,"ax",@progbits
	.align	1
	.globl	ADC_Clock_Init
	.type	ADC_Clock_Init, @function
ADC_Clock_Init:
.LFB30:
	.loc 1 47 1 is_stmt 1
	.cfi_startproc
.LVL8:
	.loc 1 48 5
	.loc 1 47 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.loc 1 48 5
	mv	a2,a0
	.cfi_offset 8, -8
	.loc 1 47 1
	mv	s0,a0
	.loc 1 48 5
	li	a1,0
	li	a0,1
.LVL9:
	.loc 1 47 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 48 5
	call	GLB_Set_ADC_CLK
.LVL10:
	.loc 1 49 5 is_stmt 1
	.loc 1 49 43
	.loc 1 49 48
	.loc 1 49 69 is_stmt 0
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 49 51
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,2
	bgtu	a4,a5,.L15
	.loc 1 49 112 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalbl_adc)
	.loc 1 49 92 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalbl_adc)(a4)
	bgtu	a4,a5,.L15
.LVL11:
.LBB6:
.LBB7:
	.loc 1 49 144 is_stmt 1
	.loc 1 49 255 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL12:
	.loc 1 49 144
	beq	a0,zero,.L17
	.loc 1 49 284
	call	xTaskGetTickCountFromISR
.LVL13:
.L20:
	.loc 1 49 144
	mv	a6,s0
	mv	a5,s0
.LBE7:
.LBE6:
	.loc 1 50 1
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL14:
	lw	ra,12(sp)
	.cfi_restore 1
.LBB11:
.LBB8:
	.loc 1 49 315
	mv	a2,a0
	.loc 1 49 144
	lui	a3,%hi(.LC1)
	lui	a1,%hi(.LC4)
	lui	a0,%hi(.LC5)
.LBE8:
.LBE11:
	.loc 1 50 1
.LBB12:
.LBB9:
	.loc 1 49 144
	li	a4,49
	addi	a3,a3,%lo(.LC1)
	addi	a1,a1,%lo(.LC4)
	addi	a0,a0,%lo(.LC5)
.LBE9:
.LBE12:
	.loc 1 50 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
.LBB13:
.LBB10:
	.loc 1 49 144
	tail	bl_printk
.LVL15:
.L17:
	.cfi_restore_state
	.loc 1 49 315
	call	xTaskGetTickCount
.LVL16:
	j	.L20
.LVL17:
.L15:
.LBE10:
.LBE13:
	.loc 1 50 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE30:
	.size	ADC_Clock_Init, .-ADC_Clock_Init
	.section	.text.TSEN_Calibration,"ax",@progbits
	.align	1
	.globl	TSEN_Calibration
	.type	TSEN_Calibration, @function
TSEN_Calibration:
.LFB31:
	.loc 1 53 1 is_stmt 1
	.cfi_startproc
	.loc 1 54 5
	.loc 1 53 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 54 5
	call	ADC_SET_TSVBE_LOW
.LVL18:
	.loc 1 55 5 is_stmt 1
	call	ADC_Start
.LVL19:
	.loc 1 56 5
	li	a0,100
	call	BL602_Delay_MS
.LVL20:
	.loc 1 57 5
.L22:
	.loc 1 57 37 discriminator 1
	.loc 1 57 10 discriminator 1
	.loc 1 57 11 is_stmt 0 discriminator 1
	call	ADC_Get_FIFO_Count
.LVL21:
	.loc 1 57 10 discriminator 1
	beq	a0,zero,.L22
	.loc 1 58 5 is_stmt 1
	call	ADC_Read_FIFO
.LVL22:
	.loc 1 60 5
	call	ADC_SET_TSVBE_HIGH
.LVL23:
	.loc 1 61 5
	call	ADC_Start
.LVL24:
	.loc 1 62 5
	li	a0,100
	call	BL602_Delay_MS
.LVL25:
	.loc 1 63 5
.L23:
	.loc 1 63 37 discriminator 1
	.loc 1 63 10 discriminator 1
	.loc 1 63 11 is_stmt 0 discriminator 1
	call	ADC_Get_FIFO_Count
.LVL26:
	.loc 1 63 10 discriminator 1
	beq	a0,zero,.L23
	.loc 1 64 5 is_stmt 1
	call	ADC_Read_FIFO
.LVL27:
	.loc 1 66 5
	.loc 1 67 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 66 5
	tail	ADC_SET_TSVBE_LOW
.LVL28:
	.cfi_endproc
.LFE31:
	.size	TSEN_Calibration, .-TSEN_Calibration
	.section	.text.test_adc_init,"ax",@progbits
	.align	1
	.globl	test_adc_init
	.type	test_adc_init, @function
test_adc_init:
.LFB33:
	.loc 1 124 1 is_stmt 1
	.cfi_startproc
	.loc 1 125 5
	.loc 1 124 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 125 5
	li	a0,2
	.loc 1 124 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 125 5
	call	ADC_Clock_Init
.LVL29:
	.loc 1 127 5 is_stmt 1
	call	ADC_Reset
.LVL30:
	.loc 1 129 5
	call	ADC_Disable
.LVL31:
	.loc 1 130 5
	call	ADC_Enable
.LVL32:
	.loc 1 132 5
	lui	a0,%hi(.LANCHOR0)
	addi	a0,a0,%lo(.LANCHOR0)
	call	ADC_Init
.LVL33:
	.loc 1 133 5
	li	a2,0
	li	a1,23
	li	a0,14
	call	ADC_Channel_Config
.LVL34:
	.loc 1 134 5
	li	a0,0
	call	ADC_Tsen_Init
.LVL35:
	.loc 1 136 5
	lui	a0,%hi(.LANCHOR1)
	addi	a0,a0,%lo(.LANCHOR1)
	call	ADC_FIFO_Cfg
.LVL36:
	.loc 1 137 5
	call	TSEN_Calibration
.LVL37:
	.loc 1 139 5
	.loc 1 140 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE33:
	.size	test_adc_init, .-test_adc_init
	.globl	__extendsfdf2
	.globl	__divdf3
	.globl	__truncdfsf2
	.section	.text.test_adc_get,"ax",@progbits
	.align	1
	.globl	test_adc_get
	.type	test_adc_get, @function
test_adc_get:
.LFB34:
	.loc 1 143 1 is_stmt 1
	.cfi_startproc
.LVL38:
	.loc 1 144 5
	.loc 1 145 5
	.loc 1 143 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	.loc 1 172 21
	lui	a5,%hi(.LC6)
	.loc 1 143 1
	fsw	fs0,28(sp)
	.cfi_offset 40, -36
	.loc 1 172 21
	flw	fs0,%lo(.LC6)(a5)
	.loc 1 173 31
	lui	a5,%hi(.LC7)
	.loc 1 143 1
	sw	s4,40(sp)
	sw	s5,36(sp)
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.loc 1 173 31
	lw	s4,%lo(.LC7)(a5)
	lw	s5,%lo(.LC7+4)(a5)
	.loc 1 143 1
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	sw	s3,44(sp)
	sw	ra,60(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.loc 1 143 1
	mv	s1,a0
	.loc 1 145 14
	sw	zero,4(sp)
	.loc 1 146 5 is_stmt 1
.LVL39:
	.loc 1 147 5
	.loc 1 148 5
	.loc 1 150 5
	.loc 1 150 17
	.loc 1 147 19 is_stmt 0
	li	s3,0
	.loc 1 147 14
	li	s2,0
	.loc 1 150 12
	li	s0,0
.LVL40:
.L38:
	.loc 1 151 9 is_stmt 1
	call	ADC_Start
.LVL41:
	.loc 1 153 9
.L32:
	.loc 1 153 14
	.loc 1 153 15 is_stmt 0
	call	ADC_Get_FIFO_Count
.LVL42:
	.loc 1 153 14
	beq	a0,zero,.L33
.L36:
	.loc 1 158 9 is_stmt 1
	.loc 1 159 13
	.loc 1 159 22 is_stmt 0
	call	ADC_Read_FIFO
.LVL43:
	.loc 1 159 20
	sw	a0,4(sp)
	.loc 1 160 13 is_stmt 1
	addi	a2,sp,8
	li	a1,1
	addi	a0,sp,4
	call	ADC_Parse_Result
.LVL44:
	.loc 1 162 13
	lhu	a5,10(sp)
	.loc 1 162 15 is_stmt 0
	bne	s0,zero,.L34
	.loc 1 163 17 is_stmt 1
	.loc 1 163 20 is_stmt 0
	mv	s2,a5
.LVL45:
.L35:
	.loc 1 167 16 is_stmt 1
	.loc 1 167 17 is_stmt 0
	call	ADC_Get_FIFO_Count
.LVL46:
	.loc 1 167 9
	bne	a0,zero,.L36
	.loc 1 169 9 is_stmt 1
	.loc 1 169 12 is_stmt 0
	beq	s0,zero,.L37
	.loc 1 170 13 is_stmt 1
	.loc 1 170 35 is_stmt 0
	fcvt.s.wu	fa5,s3
	.loc 1 170 23
	fcvt.s.w	fa0,s2
	.loc 1 170 21
	fsub.s	fa0,fa0,fa5
.LVL47:
	.loc 1 172 13 is_stmt 1
	.loc 1 173 13
	.loc 1 173 31 is_stmt 0
	fsub.s	fa0,fa0,fs0
.LVL48:
	call	__extendsfdf2
.LVL49:
	mv	a2,s4
	mv	a3,s5
	call	__divdf3
.LVL50:
	.loc 1 176 13 is_stmt 1
	.loc 1 173 21 is_stmt 0
	call	__truncdfsf2
.LVL51:
	.loc 1 176 20
	fcvt.w.s a5,fa0,rtz
	sh	a5,0(s1)
	.loc 1 178 9 is_stmt 1
	.loc 1 181 13
	call	ADC_SET_TSVBE_LOW
.LVL52:
.L39:
	.loc 1 150 24 discriminator 2
	.loc 1 150 17 discriminator 2
	.loc 1 150 5 is_stmt 0 discriminator 2
	beq	s0,zero,.L40
	.loc 1 185 1
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
.LVL53:
	lw	s1,52(sp)
	.cfi_restore 9
.LVL54:
	lw	s2,48(sp)
	.cfi_restore 18
.LVL55:
	lw	s3,44(sp)
	.cfi_restore 19
.LVL56:
	lw	s4,40(sp)
	.cfi_restore 20
	lw	s5,36(sp)
	.cfi_restore 21
	flw	fs0,28(sp)
	.cfi_restore 40
	li	a0,0
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL57:
.L40:
	.cfi_restore_state
	li	s0,1
.LVL58:
	j	.L38
.LVL59:
.L33:
.LBB14:
	.loc 1 154 13 is_stmt 1
	.loc 1 155 13
	li	a0,1
	call	aos_msleep
.LVL60:
	j	.L32
.L34:
.LBE14:
	.loc 1 165 17
	.loc 1 165 20 is_stmt 0
	mv	s3,a5
.LVL61:
	j	.L35
.L37:
	.loc 1 178 9 is_stmt 1
	.loc 1 179 13
	call	ADC_SET_TSVBE_HIGH
.LVL62:
	j	.L39
	.cfi_endproc
.LFE34:
	.size	test_adc_get, .-test_adc_get
	.section	.rodata.test_adc_test.str1.4,"aMS",@progbits,1
	.align	2
.LC8:
	.string	"%s (%d)[%s:%4d]  v0=%ld  v1 = %ld \n\r\n"
	.align	2
.LC9:
	.string	"%s (%d)[%s:%4d]  chip Tempture = %ld degree centigrade\n\r\n"
	.section	.text.test_adc_test,"ax",@progbits
	.align	1
	.globl	test_adc_test
	.type	test_adc_test, @function
test_adc_test:
.LFB35:
	.loc 1 188 1
	.cfi_startproc
	.loc 1 189 5
.LBB17:
.LBB18:
	.loc 1 71 2
	.loc 1 72 2
.LBE18:
.LBE17:
	.loc 1 188 1 is_stmt 0
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s2,64(sp)
	sw	s3,60(sp)
	sw	s4,56(sp)
	sw	s5,52(sp)
	sw	s6,48(sp)
	sw	s7,44(sp)
	fsw	fs0,28(sp)
	sw	s1,68(sp)
	sw	s8,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 40, -52
	.cfi_offset 9, -12
	.cfi_offset 24, -40
.LBB20:
.LBB19:
	.loc 1 72 11
	sw	zero,4(sp)
	.loc 1 73 5 is_stmt 1
.LVL63:
	.loc 1 74 5
	.loc 1 75 5
	.loc 1 77 5
	call	ADC_Reset
.LVL64:
	.loc 1 79 5
	call	ADC_Disable
.LVL65:
	.loc 1 80 5
	call	ADC_Enable
.LVL66:
	.loc 1 82 5
	lui	a0,%hi(.LANCHOR0)
	addi	a0,a0,%lo(.LANCHOR0)
	call	ADC_Init
.LVL67:
	.loc 1 83 5
	li	a2,0
	li	a1,23
	li	a0,14
	call	ADC_Channel_Config
.LVL68:
	.loc 1 84 5
	li	a0,0
	call	ADC_Tsen_Init
.LVL69:
	.loc 1 86 5
	lui	a0,%hi(.LANCHOR1)
	addi	a0,a0,%lo(.LANCHOR1)
	call	ADC_FIFO_Cfg
.LVL70:
	.loc 1 87 5
	call	TSEN_Calibration
.LVL71:
	.loc 1 89 2
	.loc 1 89 10
	.loc 1 107 23 is_stmt 0
	lui	a5,%hi(.LC6)
	flw	fs0,%lo(.LC6)(a5)
	.loc 1 108 33
	lui	a5,%hi(.LC7)
	lw	s2,%lo(.LC7)(a5)
	lw	s3,%lo(.LC7+4)(a5)
	.loc 1 74 19
	li	s5,0
	.loc 1 74 14
	li	s4,0
	.loc 1 89 7
	li	s0,0
	.loc 1 109 152
	lui	s6,%hi(.LC1)
	lui	s7,%hi(.LC4)
.LVL72:
.L59:
	.loc 1 90 3 is_stmt 1
	call	ADC_Start
.LVL73:
	.loc 1 92 3
.L45:
	.loc 1 92 35
	.loc 1 92 8
	.loc 1 92 9 is_stmt 0
	call	ADC_Get_FIFO_Count
.LVL74:
	.loc 1 92 8
	beq	a0,zero,.L45
	.loc 1 98 20
	andi	s1,s0,1
.L48:
	.loc 1 94 3 is_stmt 1
	.loc 1 95 4
	.loc 1 95 13 is_stmt 0
	call	ADC_Read_FIFO
.LVL75:
	.loc 1 95 11
	sw	a0,4(sp)
	.loc 1 96 4 is_stmt 1
	addi	a2,sp,8
	li	a1,1
	addi	a0,sp,4
	call	ADC_Parse_Result
.LVL76:
	.loc 1 98 13
	lhu	a5,10(sp)
	.loc 1 98 15 is_stmt 0
	bne	s1,zero,.L46
	.loc 1 99 17 is_stmt 1
	.loc 1 99 20 is_stmt 0
	mv	s4,a5
.LVL77:
.L47:
	.loc 1 103 9 is_stmt 1
	.loc 1 103 10 is_stmt 0
	call	ADC_Get_FIFO_Count
.LVL78:
	.loc 1 103 3
	bne	a0,zero,.L48
	.loc 1 105 9 is_stmt 1
	.loc 1 105 11 is_stmt 0
	beq	s1,zero,.L49
	.loc 1 106 15 is_stmt 1
.LVL79:
	.loc 1 107 15
	.loc 1 108 15
	.loc 1 109 13
	.loc 1 109 51
	.loc 1 109 56
	.loc 1 109 77 is_stmt 0
	lui	s1,%hi(_fsymc_level_hosal)
	.loc 1 109 59
	lw	a4,%lo(_fsymc_level_hosal)(s1)
	li	a5,2
	bgtu	a4,a5,.L58
	.loc 1 109 120
	lui	s8,%hi(_fsymf_level_hosalbl_adc)
	.loc 1 109 100
	lw	a4,%lo(_fsymf_level_hosalbl_adc)(s8)
	bgtu	a4,a5,.L58
	.loc 1 109 152 is_stmt 1
	.loc 1 109 236 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL80:
	.loc 1 109 152
	beq	a0,zero,.L53
	.loc 1 109 265
	call	xTaskGetTickCountFromISR
.LVL81:
.L67:
	.loc 1 109 296
	mv	a2,a0
	.loc 1 109 152
	lui	a0,%hi(.LC8)
	mv	a5,s4
	li	a4,109
	mv	a6,s5
	addi	a3,s6,%lo(.LC1)
	addi	a1,s7,%lo(.LC4)
	addi	a0,a0,%lo(.LC8)
	call	bl_printk
.LVL82:
	.loc 1 109 352 is_stmt 1
	.loc 1 109 363
	.loc 1 111 13
	.loc 1 111 51
	.loc 1 111 56
	.loc 1 111 59 is_stmt 0
	lw	a4,%lo(_fsymc_level_hosal)(s1)
	li	a5,2
	bgtu	a4,a5,.L58
	.loc 1 111 100
	lw	a4,%lo(_fsymf_level_hosalbl_adc)(s8)
	bleu	a4,a5,.L52
.L58:
	.loc 1 111 386 is_stmt 1
	.loc 1 111 397
	.loc 1 113 9
	.loc 1 116 13
	call	ADC_SET_TSVBE_LOW
.LVL83:
	j	.L60
.LVL84:
.L46:
	.loc 1 101 17
	.loc 1 101 20 is_stmt 0
	mv	s5,a5
.LVL85:
	j	.L47
.LVL86:
.L53:
	.loc 1 109 296
	call	xTaskGetTickCount
.LVL87:
	j	.L67
.L52:
	.loc 1 111 152 is_stmt 1
	.loc 1 111 256 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL88:
	.loc 1 111 152
	beq	a0,zero,.L56
	.loc 1 111 285
	call	xTaskGetTickCountFromISR
.LVL89:
.L68:
	.loc 1 106 37
	fcvt.s.wu	fa5,s5
	.loc 1 106 25
	fcvt.s.w	fa0,s4
	.loc 1 111 316
	mv	s1,a0
	.loc 1 106 23
	fsub.s	fa0,fa0,fa5
	.loc 1 108 33
	fsub.s	fa0,fa0,fs0
	call	__extendsfdf2
.LVL90:
	mv	a2,s2
	mv	a3,s3
	call	__divdf3
.LVL91:
	.loc 1 108 23
	call	__truncdfsf2
.LVL92:
	.loc 1 111 152
	fcvt.wu.s a5,fa0,rtz
	lui	a0,%hi(.LC9)
	li	a4,111
	addi	a3,s6,%lo(.LC1)
	mv	a2,s1
	addi	a1,s7,%lo(.LC4)
	addi	a0,a0,%lo(.LC9)
	call	bl_printk
.LVL93:
	j	.L58
.L56:
	.loc 1 111 316
	call	xTaskGetTickCount
.LVL94:
	j	.L68
.LVL95:
.L49:
	.loc 1 111 386 is_stmt 1
	.loc 1 111 397
	.loc 1 113 9
	.loc 1 114 13
	call	ADC_SET_TSVBE_HIGH
.LVL96:
.L60:
	.loc 1 118 3
	li	a0,500
	call	BL602_Delay_MS
.LVL97:
	.loc 1 89 15
	.loc 1 89 16 is_stmt 0
	addi	s0,s0,1
.LVL98:
	andi	s0,s0,0xff
.LVL99:
	.loc 1 89 10 is_stmt 1
	.loc 1 89 2 is_stmt 0
	li	a5,40
	bne	s0,a5,.L59
.LBE19:
.LBE20:
	.loc 1 191 1
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
.LVL100:
	lw	s1,68(sp)
	.cfi_restore 9
	lw	s2,64(sp)
	.cfi_restore 18
	lw	s3,60(sp)
	.cfi_restore 19
	lw	s4,56(sp)
	.cfi_restore 20
.LVL101:
	lw	s5,52(sp)
	.cfi_restore 21
.LVL102:
	lw	s6,48(sp)
	.cfi_restore 22
	lw	s7,44(sp)
	.cfi_restore 23
	lw	s8,40(sp)
	.cfi_restore 24
	flw	fs0,28(sp)
	.cfi_restore 40
	li	a0,0
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE35:
	.size	test_adc_test, .-test_adc_test
	.section	.rodata.bl_tsen_adc_get.str1.4,"aMS",@progbits,1
	.align	2
.LC10:
	.string	"%s (%d)[%s:%4d] read efuse data failed\r\n\r\n"
	.align	2
.LC11:
	.string	"%s (%d)[%s:%4d] offset = %d\r\n\r\n"
	.align	2
.LC12:
	.string	"%s (%d)[%s:%4d] temperature = %f Celsius\r\n\r\n"
	.section	.text.bl_tsen_adc_get,"ax",@progbits
	.align	1
	.globl	bl_tsen_adc_get
	.type	bl_tsen_adc_get, @function
bl_tsen_adc_get:
.LFB36:
	.loc 1 194 1 is_stmt 1
	.cfi_startproc
.LVL103:
	.loc 1 195 5
	.loc 1 196 5
	.loc 1 198 5
	.loc 1 194 1 is_stmt 0
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sw	s3,108(sp)
	.cfi_offset 19, -20
	.loc 1 198 16
	lui	s3,%hi(.LANCHOR2)
	.loc 1 198 8
	lhu	a4,%lo(.LANCHOR2)(s3)
	li	a5,65536
	.loc 1 194 1
	sw	s0,120(sp)
	sw	s1,116(sp)
	sw	s2,112(sp)
	sw	ra,124(sp)
	fsw	fs0,92(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.cfi_offset 40, -36
	.loc 1 198 8
	addi	a5,a5,-1
	.loc 1 194 1
	mv	s0,a0
	mv	s1,a1
	addi	s2,s3,%lo(.LANCHOR2)
	.loc 1 198 8
	bne	a4,a5,.L70
.LBB21:
	.loc 1 199 9 is_stmt 1
	.loc 1 200 22 is_stmt 0
	lui	a1,%hi(.LANCHOR3)
.LVL104:
	li	a2,52
	addi	a1,a1,%lo(.LANCHOR3)
	addi	a0,sp,28
.LVL105:
	.loc 1 199 21
	sh	zero,0(s2)
	.loc 1 200 9 is_stmt 1
	.loc 1 200 22 is_stmt 0
	call	memcpy
.LVL106:
	.loc 1 217 9 is_stmt 1
	.loc 1 222 9 is_stmt 0
	li	a2,7
	li	a1,0
	li	a0,1
	.loc 1 217 27
	sw	zero,20(sp)
	sw	zero,24(sp)
	.loc 1 222 9 is_stmt 1
	call	GLB_Set_ADC_CLK
.LVL107:
	.loc 1 224 9
	call	ADC_Disable
.LVL108:
	.loc 1 225 9
	call	ADC_Enable
.LVL109:
	.loc 1 227 9
	call	ADC_Reset
.LVL110:
	.loc 1 229 9
	addi	a0,sp,28
	call	ADC_Init
.LVL111:
	.loc 1 230 9
	li	a2,0
	li	a1,23
	li	a0,14
	call	ADC_Channel_Config
.LVL112:
	.loc 1 231 9
	li	a0,0
	call	ADC_Tsen_Init
.LVL113:
	.loc 1 233 9
	addi	a0,sp,20
	call	ADC_FIFO_Cfg
.LVL114:
	.loc 1 235 9
	.loc 1 235 13 is_stmt 0
	addi	a0,s3,%lo(.LANCHOR2)
	call	ADC_Trim_TSEN
.LVL115:
	.loc 1 235 12
	li	a4,1
	lui	a5,%hi(_fsymc_level_hosal)
	bne	a0,a4,.L71
	.loc 1 236 13 is_stmt 1 discriminator 1
	.loc 1 236 51 discriminator 1
	.loc 1 236 56 discriminator 1
	.loc 1 236 59 is_stmt 0 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	bgtu	a4,a5,.L70
	.loc 1 236 122 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalbl_adc)
	.loc 1 236 101 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalbl_adc)(a4)
	bgtu	a4,a5,.L70
	.loc 1 236 154 is_stmt 1 discriminator 5
	.loc 1 236 245 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL116:
	.loc 1 236 154 discriminator 5
	beq	a0,zero,.L73
	.loc 1 236 274 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL117:
.L88:
	.loc 1 236 305 discriminator 8
	mv	a2,a0
	.loc 1 236 154 discriminator 8
	lui	a3,%hi(.LC1)
	lui	a1,%hi(.LC2)
	lui	a0,%hi(.LC10)
	li	a4,236
	addi	a3,a3,%lo(.LC1)
	addi	a1,a1,%lo(.LC2)
	addi	a0,a0,%lo(.LC10)
	call	bl_printk
.LVL118:
.L70:
.LBE21:
	.loc 1 241 5 is_stmt 1
	.loc 1 241 11 is_stmt 0
	lhu	a0,0(s2)
	call	TSEN_Get_Temp
.LVL119:
	fmv.s	fs0,fa0
.LVL120:
	.loc 1 242 5 is_stmt 1
	.loc 1 242 8 is_stmt 0
	beq	s1,zero,.L77
	.loc 1 243 9 is_stmt 1 discriminator 1
	.loc 1 243 47 discriminator 1
	.loc 1 243 52 discriminator 1
	.loc 1 243 73 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 243 55 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,2
	bgtu	a4,a5,.L77
	.loc 1 243 116 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalbl_adc)
	.loc 1 243 96 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalbl_adc)(a4)
	bgtu	a4,a5,.L77
	.loc 1 243 148 is_stmt 1 discriminator 5
	.loc 1 243 240 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL121:
	.loc 1 243 148 discriminator 5
	beq	a0,zero,.L78
	.loc 1 243 269 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL122:
.L90:
	.loc 1 243 148 discriminator 8
	fmv.s	fa0,fs0
	sw	a0,12(sp)
	call	__extendsfdf2
.LVL123:
	lw	a2,12(sp)
	mv	a6,a0
	mv	a7,a1
	lui	a3,%hi(.LC1)
	lui	a1,%hi(.LC4)
	lui	a0,%hi(.LC12)
	li	a4,243
	addi	a3,a3,%lo(.LC1)
	addi	a1,a1,%lo(.LC4)
	addi	a0,a0,%lo(.LC12)
	call	bl_printk
.LVL124:
.L77:
	.loc 1 243 355 is_stmt 1 discriminator 11
	.loc 1 243 366 discriminator 11
	.loc 1 246 5 discriminator 11
	.loc 1 246 8 is_stmt 0 discriminator 11
	beq	s0,zero,.L80
	.loc 1 247 9 is_stmt 1
	.loc 1 247 17 is_stmt 0
	fcvt.w.s a5,fs0,rtz
	sh	a5,0(s0)
.L80:
	.loc 1 250 5 is_stmt 1
	.loc 1 251 1 is_stmt 0
	lw	ra,124(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,120(sp)
	.cfi_restore 8
.LVL125:
	lw	s1,116(sp)
	.cfi_restore 9
	lw	s2,112(sp)
	.cfi_restore 18
	lw	s3,108(sp)
	.cfi_restore 19
	flw	fs0,92(sp)
	.cfi_restore 40
.LVL126:
	li	a0,0
	addi	sp,sp,128
	.cfi_def_cfa_offset 0
	jr	ra
.LVL127:
.L73:
	.cfi_restore_state
.LBB22:
	.loc 1 236 305 discriminator 8
	call	xTaskGetTickCount
.LVL128:
	j	.L88
.L71:
	.loc 1 238 13 is_stmt 1 discriminator 1
	.loc 1 238 51 discriminator 1
	.loc 1 238 56 discriminator 1
	.loc 1 238 59 is_stmt 0 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,2
	bgtu	a4,a5,.L70
	.loc 1 238 120 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalbl_adc)
	.loc 1 238 100 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalbl_adc)(a4)
	bgtu	a4,a5,.L70
	.loc 1 238 152 is_stmt 1 discriminator 5
	.loc 1 238 231 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL129:
	.loc 1 238 152 discriminator 5
	beq	a0,zero,.L75
	.loc 1 238 260 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL130:
.L89:
	.loc 1 238 152 discriminator 8
	lhu	a5,0(s2)
	.loc 1 238 291 discriminator 8
	mv	a2,a0
	.loc 1 238 152 discriminator 8
	lui	a3,%hi(.LC1)
	lui	a1,%hi(.LC4)
	lui	a0,%hi(.LC11)
	li	a4,238
	addi	a3,a3,%lo(.LC1)
	addi	a1,a1,%lo(.LC4)
	addi	a0,a0,%lo(.LC11)
	call	bl_printk
.LVL131:
	.loc 1 238 354 is_stmt 1 discriminator 8
	.loc 1 238 365 discriminator 8
	j	.L70
.L75:
	.loc 1 238 291 is_stmt 0 discriminator 8
	call	xTaskGetTickCount
.LVL132:
	j	.L89
.LVL133:
.L78:
.LBE22:
	.loc 1 243 300 discriminator 8
	call	xTaskGetTickCount
.LVL134:
	j	.L90
	.cfi_endproc
.LFE36:
	.size	bl_tsen_adc_get, .-bl_tsen_adc_get
	.section	.rodata.bl_adc_freq_init.str1.4,"aMS",@progbits,1
	.align	2
.LC13:
	.string	"%s (%d)[%s:%4d] ADC freq: %ldHz. \r\n\r\n"
	.section	.text.bl_adc_freq_init,"ax",@progbits
	.align	1
	.globl	bl_adc_freq_init
	.type	bl_adc_freq_init, @function
bl_adc_freq_init:
.LFB38:
	.loc 1 282 1 is_stmt 1
	.cfi_startproc
.LVL135:
	.loc 1 283 5
	.loc 1 284 5
	.loc 1 285 5
	.loc 1 287 5
	.loc 1 282 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s1,4(sp)
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 290 19
	li	s1,1
	.loc 1 287 8
	bne	a0,zero,.L92
	li	s1,12
.L92:
.LVL136:
	.loc 1 293 5 is_stmt 1
	.loc 1 293 39 is_stmt 0
	li	a5,1280
	mul	s1,s1,a5
.LVL137:
	.loc 1 293 17
	li	a5,96002048
	addi	a5,a5,-2048
	divu	s1,a5,s1
.LVL138:
	.loc 1 294 5 is_stmt 1
	.loc 1 294 9 is_stmt 0
	divu	s0,s1,a1
.LVL139:
	.loc 1 295 5 is_stmt 1
	.loc 1 295 15 is_stmt 0
	addi	a4,s0,1
	.loc 1 295 20
	mul	a5,a4,a1
	.loc 1 295 8
	remu	a1,s1,a1
.LVL140:
	.loc 1 295 27
	sub	a5,a5,s1
	.loc 1 295 8
	bgeu	a5,a1,.L93
	.loc 1 296 13
	mv	s0,a4
.LVL141:
.L93:
	.loc 1 299 5 is_stmt 1
	li	a5,64
	bleu	s0,a5,.L94
	li	s0,64
.LVL142:
.L94:
	li	a5,3
	bgeu	s0,a5,.L95
	li	s0,3
.L95:
.LVL143:
	.loc 1 307 5
	.loc 1 307 43
	.loc 1 307 48
	.loc 1 307 69 is_stmt 0
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 307 51
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,2
	bgtu	a4,a5,.L96
	.loc 1 307 112 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalbl_adc)
	.loc 1 307 92 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalbl_adc)(a4)
	bgtu	a4,a5,.L96
	.loc 1 307 144 is_stmt 1 discriminator 5
	.loc 1 307 229 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL144:
	.loc 1 307 144 discriminator 5
	beq	a0,zero,.L97
	.loc 1 307 258 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL145:
.L103:
	.loc 1 307 144 discriminator 8
	divu	a5,s1,s0
	.loc 1 307 289 discriminator 8
	mv	a2,a0
	.loc 1 307 144 discriminator 8
	lui	a3,%hi(.LC1)
	lui	a1,%hi(.LC4)
	lui	a0,%hi(.LC13)
	li	a4,307
	addi	a3,a3,%lo(.LC1)
	addi	a1,a1,%lo(.LC4)
	addi	a0,a0,%lo(.LC13)
	call	bl_printk
.LVL146:
.L96:
	.loc 1 307 365 is_stmt 1 discriminator 11
	.loc 1 307 376 discriminator 11
	.loc 1 309 5 discriminator 11
	addi	a2,s0,-1
	andi	a2,a2,0xff
	li	a1,0
	li	a0,1
	call	GLB_Set_ADC_CLK
.LVL147:
	.loc 1 311 5 discriminator 11
	.loc 1 312 1 is_stmt 0 discriminator 11
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL148:
	lw	s1,4(sp)
	.cfi_restore 9
.LVL149:
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL150:
.L97:
	.cfi_restore_state
	.loc 1 307 289 discriminator 8
	call	xTaskGetTickCount
.LVL151:
	j	.L103
	.cfi_endproc
.LFE38:
	.size	bl_adc_freq_init, .-bl_adc_freq_init
	.section	.rodata.bl_adc_dma_init.str1.4,"aMS",@progbits,1
	.align	2
.LC14:
	.string	"%s (%d)[%s:%4d] illegal para. \r\n\r\n"
	.align	2
.LC15:
	.string	"%s (%d)[%s:%4d] malloc adc_ctx failed \r\n\r\n"
	.align	2
.LC16:
	.string	"%s (%d)[%s:%4d] malloc lli failed. \r\n\r\n"
	.align	2
.LC17:
	.string	"%s (%d)[%s:%4d] malloc lli buf failed. \r\n\r\n"
	.section	.text.bl_adc_dma_init,"ax",@progbits
	.align	1
	.globl	bl_adc_dma_init
	.type	bl_adc_dma_init, @function
bl_adc_dma_init:
.LFB41:
	.loc 1 395 1 is_stmt 1
	.cfi_startproc
.LVL152:
	.loc 1 396 5
	.loc 1 397 5
	.loc 1 398 5
	.loc 1 399 5
	.loc 1 401 5
	.loc 1 395 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.loc 1 401 8
	bne	a1,zero,.L105
	.loc 1 402 9 is_stmt 1 discriminator 1
	.loc 1 402 47 discriminator 1
	.loc 1 402 52 discriminator 1
	.loc 1 402 74 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 402 55 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	bleu	a4,a5,.L106
.LVL153:
.L126:
	.loc 1 425 16 discriminator 10
	li	a0,-1
.L104:
	.loc 1 447 1
	lw	ra,44(sp)
	.cfi_remember_state
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
.LVL154:
.L106:
	.cfi_restore_state
	.loc 1 402 118 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalbl_adc)
	.loc 1 402 97 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalbl_adc)(a4)
	bgtu	a4,a5,.L126
	.loc 1 402 150 is_stmt 1 discriminator 5
	.loc 1 402 233 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL155:
	.loc 1 402 150 discriminator 5
	beq	a0,zero,.L109
	.loc 1 402 262 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL156:
.L121:
	.loc 1 402 293 discriminator 8
	mv	a2,a0
	.loc 1 402 150 discriminator 8
	lui	a3,%hi(.LC1)
	lui	a1,%hi(.LC2)
	lui	a0,%hi(.LC14)
	li	a4,402
	addi	a3,a3,%lo(.LC1)
	addi	a1,a1,%lo(.LC2)
	addi	a0,a0,%lo(.LC14)
.L125:
	.loc 1 423 150 discriminator 10
	call	bl_printk
.LVL157:
	j	.L126
.L109:
	.loc 1 402 293 discriminator 8
	call	xTaskGetTickCount
.LVL158:
	j	.L121
.LVL159:
.L105:
	mv	s4,a0
	.loc 1 407 14
	li	a0,28
.LVL160:
	mv	s3,a1
	.loc 1 407 5 is_stmt 1
	.loc 1 407 14 is_stmt 0
	call	pvPortMalloc
.LVL161:
	mv	s1,a0
.LVL162:
	.loc 1 408 5 is_stmt 1
	.loc 1 408 8 is_stmt 0
	bne	a0,zero,.L111
	.loc 1 409 9 is_stmt 1 discriminator 1
	.loc 1 409 47 discriminator 1
	.loc 1 409 52 discriminator 1
	.loc 1 409 74 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 409 55 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	bgtu	a4,a5,.L126
	.loc 1 409 118 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalbl_adc)
	.loc 1 409 97 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalbl_adc)(a4)
	bgtu	a4,a5,.L126
	.loc 1 409 150 is_stmt 1 discriminator 5
	.loc 1 409 241 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL163:
	.loc 1 409 150 discriminator 5
	beq	a0,zero,.L112
	.loc 1 409 270 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL164:
.L122:
	.loc 1 409 301 discriminator 8
	mv	a2,a0
	.loc 1 409 150 discriminator 8
	lui	a3,%hi(.LC1)
	lui	a1,%hi(.LC2)
	lui	a0,%hi(.LC15)
	li	a4,409
	addi	a3,a3,%lo(.LC1)
	addi	a1,a1,%lo(.LC2)
	addi	a0,a0,%lo(.LC15)
	j	.L125
.L112:
	.loc 1 409 301 discriminator 8
	call	xTaskGetTickCount
.LVL165:
	j	.L122
.L111:
	.loc 1 414 5 is_stmt 1
	.loc 1 414 14 is_stmt 0
	li	a0,32
	call	pvPortMalloc
.LVL166:
	mv	s0,a0
.LVL167:
	.loc 1 415 5 is_stmt 1
	.loc 1 415 8 is_stmt 0
	bne	a0,zero,.L114
	.loc 1 416 9 is_stmt 1 discriminator 1
	.loc 1 416 47 discriminator 1
	.loc 1 416 52 discriminator 1
	.loc 1 416 74 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 416 55 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	bgtu	a4,a5,.L126
	.loc 1 416 118 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalbl_adc)
	.loc 1 416 97 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalbl_adc)(a4)
	bgtu	a4,a5,.L126
	.loc 1 416 150 is_stmt 1 discriminator 5
	.loc 1 416 238 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL168:
	.loc 1 416 150 discriminator 5
	beq	a0,zero,.L115
	.loc 1 416 267 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL169:
.L123:
	.loc 1 416 298 discriminator 8
	mv	a2,a0
	.loc 1 416 150 discriminator 8
	lui	a3,%hi(.LC1)
	lui	a1,%hi(.LC2)
	lui	a0,%hi(.LC16)
	li	a4,416
	addi	a3,a3,%lo(.LC1)
	addi	a1,a1,%lo(.LC2)
	addi	a0,a0,%lo(.LC16)
	j	.L125
.L115:
	.loc 1 416 298 discriminator 8
	call	xTaskGetTickCount
.LVL170:
	j	.L123
.L114:
	.loc 1 421 5 is_stmt 1
	.loc 1 421 14 is_stmt 0
	slli	a0,s3,3
	call	pvPortMalloc
.LVL171:
	mv	s2,a0
.LVL172:
	.loc 1 422 5 is_stmt 1
	.loc 1 422 8 is_stmt 0
	bne	a0,zero,.L117
	.loc 1 423 9 is_stmt 1 discriminator 1
	.loc 1 423 47 discriminator 1
	.loc 1 423 52 discriminator 1
	.loc 1 423 74 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 423 55 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	bgtu	a4,a5,.L126
	.loc 1 423 118 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalbl_adc)
	.loc 1 423 97 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalbl_adc)(a4)
	bgtu	a4,a5,.L126
	.loc 1 423 150 is_stmt 1 discriminator 5
	.loc 1 423 242 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL173:
	.loc 1 423 150 discriminator 5
	beq	a0,zero,.L118
	.loc 1 423 271 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL174:
.L124:
	.loc 1 423 302 discriminator 8
	mv	a2,a0
	.loc 1 423 150 discriminator 8
	lui	a3,%hi(.LC1)
	lui	a1,%hi(.LC2)
	lui	a0,%hi(.LC17)
	li	a4,423
	addi	a3,a3,%lo(.LC1)
	addi	a1,a1,%lo(.LC2)
	addi	a0,a0,%lo(.LC17)
	j	.L125
.L118:
	.loc 1 423 302 discriminator 8
	call	xTaskGetTickCount
.LVL175:
	j	.L124
.LVL176:
.L117:
	.loc 1 428 5 is_stmt 1
	.loc 1 428 16 is_stmt 0
	li	a5,2
	sw	a5,4(sp)
	.loc 1 429 5 is_stmt 1
	.loc 1 431 5 is_stmt 0
	li	a0,1
.LVL177:
	.loc 1 429 22
	li	a5,22
	sw	a5,8(sp)
	.loc 1 430 5 is_stmt 1
	.loc 1 430 22 is_stmt 0
	sw	zero,12(sp)
	.loc 1 431 5 is_stmt 1
	call	DMA_Channel_Disable
.LVL178:
	.loc 1 433 5
.LBB25:
.LBB26:
	.loc 1 368 5
	.loc 1 370 5
	.loc 1 371 5
	.loc 1 372 5
	.loc 1 373 5
	.loc 1 374 5
	.loc 1 375 5
	.loc 1 376 5
	.loc 1 377 5
	.loc 1 378 5
	.loc 1 379 5
	.loc 1 381 5
	.loc 1 383 35 is_stmt 0
	addi	a5,s0,16
	.loc 1 383 23
	sw	a5,8(s0)
	.loc 1 384 22
	slli	a5,s3,20
	li	a4,-2008547328
	srli	a5,a5,20
	or	a5,a5,a4
	lw	a4,12(s0)
	li	a3,33554432
	.loc 1 381 26
	li	a2,1073750016
	.loc 1 384 22
	and	a4,a3,a4
	or	a4,a5,a4
	sw	a4,12(s0)
	.loc 1 389 22
	lw	a4,28(s0)
	.loc 1 381 26
	addi	a2,a2,4
	.loc 1 382 27
	sw	s2,4(s0)
	.loc 1 389 22
	and	a3,a3,a4
	or	a5,a5,a3
	.loc 1 387 39
	addi	s2,s2,48
.LVL179:
	.loc 1 381 26
	sw	a2,0(s0)
	.loc 1 382 5 is_stmt 1
	.loc 1 383 5
	.loc 1 384 5
	.loc 1 386 5
	.loc 1 386 26 is_stmt 0
	sw	a2,16(s0)
	.loc 1 387 5 is_stmt 1
	.loc 1 389 22 is_stmt 0
	sw	a5,28(s0)
.LBE26:
.LBE25:
	.loc 1 434 5
	addi	a1,sp,4
	li	a0,1
.LBB28:
.LBB27:
	.loc 1 387 27
	sw	s2,20(s0)
	.loc 1 388 5 is_stmt 1
	.loc 1 388 23 is_stmt 0
	sw	s0,24(s0)
	.loc 1 389 5 is_stmt 1
	.loc 1 391 5
.LVL180:
.LBE27:
.LBE28:
	.loc 1 434 5
	call	DMA_LLI_Init
.LVL181:
	.loc 1 435 5
	mv	a1,s0
	li	a0,1
	call	DMA_LLI_Update
.LVL182:
	.loc 1 437 5
	.loc 1 444 5 is_stmt 0
	lui	a1,%hi(adc_data_update)
	.loc 1 437 18
	sw	s4,0(s1)
	.loc 1 438 5 is_stmt 1
	.loc 1 438 21 is_stmt 0
	sw	s0,8(s1)
	.loc 1 439 5 is_stmt 1
	.loc 1 439 22 is_stmt 0
	sw	zero,12(s1)
	.loc 1 440 5 is_stmt 1
	.loc 1 440 29 is_stmt 0
	sw	zero,16(s1)
	.loc 1 441 5 is_stmt 1
	.loc 1 441 26 is_stmt 0
	sw	zero,4(s1)
	.loc 1 442 5 is_stmt 1
	.loc 1 442 23 is_stmt 0
	sw	s3,20(s1)
	.loc 1 443 5 is_stmt 1
	.loc 1 443 16 is_stmt 0
	sw	zero,24(s1)
	.loc 1 444 5 is_stmt 1
	mv	a3,s1
	li	a2,0
	addi	a1,a1,%lo(adc_data_update)
	li	a0,1
	call	bl_dma_irq_register
.LVL183:
	.loc 1 446 5
	.loc 1 446 12 is_stmt 0
	li	a0,0
	j	.L104
	.cfi_endproc
.LFE41:
	.size	bl_adc_dma_init, .-bl_adc_dma_init
	.section	.text.bl_adc_start,"ax",@progbits
	.align	1
	.globl	bl_adc_start
	.type	bl_adc_start, @function
bl_adc_start:
.LFB42:
	.loc 1 450 1 is_stmt 1
	.cfi_startproc
	.loc 1 451 5
	.loc 1 450 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 451 5
	li	a2,1
	li	a1,2
	li	a0,1
	.loc 1 450 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 451 5
	call	DMA_IntMask
.LVL184:
	.loc 1 452 5 is_stmt 1
	li	a2,0
	li	a1,0
	li	a0,1
	call	DMA_IntMask
.LVL185:
	.loc 1 453 5
	li	a2,0
	li	a1,1
	li	a0,1
	call	DMA_IntMask
.LVL186:
	.loc 1 455 5
	call	ADC_Start
.LVL187:
	.loc 1 456 5
	call	DMA_Enable
.LVL188:
	.loc 1 457 5
	li	a0,1
	call	DMA_Channel_Enable
.LVL189:
	.loc 1 459 5
	.loc 1 460 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE42:
	.size	bl_adc_start, .-bl_adc_start
	.section	.text.bl_adc_gpio_init,"ax",@progbits
	.align	1
	.globl	bl_adc_gpio_init
	.type	bl_adc_gpio_init, @function
bl_adc_gpio_init:
.LFB43:
	.loc 1 463 1 is_stmt 1
	.cfi_startproc
.LVL190:
	.loc 1 464 5
	.loc 1 463 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 464 19
	sw	a0,12(sp)
	.loc 1 466 5 is_stmt 1
	addi	a1,sp,12
	li	a2,1
	li	a0,10
.LVL191:
	.loc 1 463 1 is_stmt 0
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 466 5
	call	GLB_GPIO_Func_Init
.LVL192:
	.loc 1 468 5 is_stmt 1
	.loc 1 469 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE43:
	.size	bl_adc_gpio_init, .-bl_adc_gpio_init
	.section	.text.bl_adc_parse_data,"ax",@progbits
	.align	1
	.globl	bl_adc_parse_data
	.type	bl_adc_parse_data, @function
bl_adc_parse_data:
.LFB45:
	.loc 1 482 1 is_stmt 1
	.cfi_startproc
.LVL193:
	.loc 1 483 5
	.loc 1 484 5
	.loc 1 486 5
	.loc 1 486 12 is_stmt 0
	li	a4,0
.LVL194:
.L132:
	.loc 1 486 17 is_stmt 1 discriminator 1
	.loc 1 486 5 is_stmt 0 discriminator 1
	blt	a4,a1,.L136
	.loc 1 499 12
	li	a0,-1
.LVL195:
	.loc 1 500 1
	ret
.LVL196:
.L136:
	.loc 1 487 9 is_stmt 1
	.loc 1 487 17 is_stmt 0
	slli	a5,a4,2
	add	a5,a0,a5
	lw	a5,0(a5)
	.loc 1 487 21
	srli	a6,a5,21
	.loc 1 487 12
	bne	a6,a2,.L133
	.loc 1 488 13 is_stmt 1
	li	a0,65536
.LVL197:
	addi	a0,a0,-1
	.loc 1 489 22 is_stmt 0
	and	a0,a5,a0
	.loc 1 488 16
	bne	a3,zero,.L134
	.loc 1 489 17 is_stmt 1
.LVL198:
	.loc 1 490 17
	.loc 1 490 24 is_stmt 0
	ret
.LVL199:
.L134:
	.loc 1 492 17 is_stmt 1
.LBB29:
.LBB30:
	.loc 1 473 5
	.loc 1 475 5
	.loc 1 476 5
	.loc 1 476 16 is_stmt 0
	li	a5,4096
	addi	a5,a5,-896
	mul	a0,a0,a5
.LVL200:
	.loc 1 478 5 is_stmt 1
	.loc 1 476 9 is_stmt 0
	srli	a0,a0,16
.LVL201:
.LBE30:
.LBE29:
	.loc 1 494 17 is_stmt 1
	.loc 1 494 24 is_stmt 0
	ret
.LVL202:
.L133:
	.loc 1 486 32 is_stmt 1 discriminator 2
	.loc 1 486 33 is_stmt 0 discriminator 2
	addi	a4,a4,1
.LVL203:
	j	.L132
	.cfi_endproc
.LFE45:
	.size	bl_adc_parse_data, .-bl_adc_parse_data
	.section	.text.bl_adc_get_channel_by_gpio,"ax",@progbits
	.align	1
	.globl	bl_adc_get_channel_by_gpio
	.type	bl_adc_get_channel_by_gpio, @function
bl_adc_get_channel_by_gpio:
.LFB46:
	.loc 1 503 1 is_stmt 1
	.cfi_startproc
.LVL204:
	.loc 1 504 5
	.loc 1 506 5
	.loc 1 506 8 is_stmt 0
	li	a4,4
	.loc 1 503 1
	mv	a5,a0
	.loc 1 506 8
	beq	a0,a4,.L139
	.loc 1 508 12 is_stmt 1
	.loc 1 508 15 is_stmt 0
	li	a4,5
	.loc 1 509 17
	li	a0,4
.LVL205:
	.loc 1 508 15
	beq	a5,a4,.L137
	.loc 1 510 12 is_stmt 1
	.loc 1 510 15 is_stmt 0
	li	a4,6
	.loc 1 511 17
	li	a0,5
	.loc 1 510 15
	beq	a5,a4,.L137
	.loc 1 512 12 is_stmt 1
	.loc 1 512 15 is_stmt 0
	li	a4,9
	.loc 1 513 17
	li	a0,7
	.loc 1 512 15
	beq	a5,a4,.L137
	.loc 1 514 12 is_stmt 1
	.loc 1 514 15 is_stmt 0
	li	a4,10
	.loc 1 515 17
	li	a0,9
	.loc 1 514 15
	beq	a5,a4,.L137
	.loc 1 516 12 is_stmt 1
	.loc 1 516 15 is_stmt 0
	li	a4,11
	.loc 1 517 17
	li	a0,10
	.loc 1 516 15
	beq	a5,a4,.L137
	.loc 1 518 12 is_stmt 1
	.loc 1 518 15 is_stmt 0
	li	a4,12
	.loc 1 519 17
	li	a0,0
	.loc 1 518 15
	beq	a5,a4,.L137
	.loc 1 520 12 is_stmt 1
	.loc 1 520 15 is_stmt 0
	li	a4,13
	.loc 1 521 17
	li	a0,3
	.loc 1 520 15
	beq	a5,a4,.L137
.LVL206:
.LBB33:
.LBB34:
	.loc 1 522 12 is_stmt 1
	.loc 1 522 15 is_stmt 0
	li	a4,14
	.loc 1 523 17
	li	a0,2
	.loc 1 522 15
	beq	a5,a4,.L137
	.loc 1 524 12 is_stmt 1
	.loc 1 524 15 is_stmt 0
	li	a4,15
	.loc 1 525 17
	li	a0,11
	.loc 1 524 15
	beq	a5,a4,.L137
	.loc 1 527 16
	li	a0,-1
	ret
.LVL207:
.L139:
.LBE34:
.LBE33:
	.loc 1 507 17
	li	a0,1
.LVL208:
.L137:
	.loc 1 531 1
	ret
	.cfi_endproc
.LFE46:
	.size	bl_adc_get_channel_by_gpio, .-bl_adc_get_channel_by_gpio
	.section	.text.bl_adc_init,"ax",@progbits
	.align	1
	.globl	bl_adc_init
	.type	bl_adc_init, @function
bl_adc_init:
.LFB39:
	.loc 1 315 1 is_stmt 1
	.cfi_startproc
.LVL209:
	.loc 1 316 5
	.loc 1 317 5
	.loc 1 318 5
	.loc 1 319 5
	.loc 1 320 5
	.loc 1 321 5
	.loc 1 322 5
	.loc 1 324 5
	.loc 1 315 1 is_stmt 0
	addi	sp,sp,-176
	.cfi_def_cfa_offset 176
	.loc 1 325 18
	li	a4,1
	.loc 1 324 18
	li	a5,2
	.loc 1 325 18
	sw	a4,112(sp)
	.loc 1 326 18
	li	a4,5
	.loc 1 315 1
	sw	ra,172(sp)
	sw	s0,168(sp)
	sw	s1,164(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.loc 1 315 1
	mv	s0,a0
	mv	s1,a1
	.loc 1 324 18
	sw	a5,108(sp)
	.loc 1 325 5 is_stmt 1
	.loc 1 326 5
	.loc 1 326 18 is_stmt 0
	sw	a4,116(sp)
	.loc 1 327 5 is_stmt 1
	.loc 1 334 20 is_stmt 0
	sw	a5,148(sp)
	.loc 1 327 17
	sw	zero,120(sp)
	.loc 1 328 5 is_stmt 1
	.loc 1 328 17 is_stmt 0
	sw	zero,124(sp)
	.loc 1 329 5 is_stmt 1
	.loc 1 329 20 is_stmt 0
	sw	zero,128(sp)
	.loc 1 330 5 is_stmt 1
	.loc 1 330 19 is_stmt 0
	sw	zero,132(sp)
	.loc 1 331 5 is_stmt 1
	.loc 1 331 15 is_stmt 0
	sw	zero,136(sp)
	.loc 1 332 5 is_stmt 1
	.loc 1 332 16 is_stmt 0
	sw	zero,140(sp)
	.loc 1 333 5 is_stmt 1
	.loc 1 333 21 is_stmt 0
	sw	zero,144(sp)
	.loc 1 334 5 is_stmt 1
	.loc 1 335 5
	.loc 1 335 25 is_stmt 0
	sw	zero,152(sp)
	.loc 1 336 5 is_stmt 1
	.loc 1 336 26 is_stmt 0
	sh	zero,156(sp)
	.loc 1 338 5 is_stmt 1
	call	ADC_Disable
.LVL210:
	.loc 1 339 5
	call	ADC_Enable
.LVL211:
	.loc 1 340 5
	call	ADC_Reset
.LVL212:
	.loc 1 342 5
	addi	a0,sp,108
	call	ADC_Init
.LVL213:
	.loc 1 344 5
	.loc 1 344 8 is_stmt 0
	bne	s0,zero,.L150
	addi	a4,sp,12
	addi	a5,sp,60
	.loc 1 347 34
	li	a2,23
	.loc 1 345 9
	li	a3,12
.LVL214:
.L151:
	.loc 1 346 13 is_stmt 1 discriminator 3
	.loc 1 346 34 is_stmt 0 discriminator 3
	sw	s0,0(a4)
	.loc 1 347 13 is_stmt 1 discriminator 3
	.loc 1 347 34 is_stmt 0 discriminator 3
	sw	a2,0(a5)
	.loc 1 345 29 is_stmt 1 discriminator 3
	.loc 1 345 30 is_stmt 0 discriminator 3
	addi	s0,s0,1
.LVL215:
	.loc 1 345 21 is_stmt 1 discriminator 3
	.loc 1 345 9 is_stmt 0 discriminator 3
	addi	a4,a4,4
	addi	a5,a5,4
	bne	s0,a3,.L151
.LVL216:
.L152:
	.loc 1 357 5 is_stmt 1
	andi	a2,s0,0xff
	addi	a1,sp,60
	addi	a0,sp,12
	li	a3,1
	call	ADC_Scan_Channel_Config
.LVL217:
	.loc 1 359 5
	.loc 1 361 5 is_stmt 0
	addi	a0,sp,4
	.loc 1 360 24
	li	a5,1
	.loc 1 359 32
	sw	zero,4(sp)
	.loc 1 360 5 is_stmt 1
	.loc 1 360 24 is_stmt 0
	sw	a5,8(sp)
	.loc 1 361 5 is_stmt 1
	call	ADC_FIFO_Cfg
.LVL218:
	.loc 1 363 5
	.loc 1 364 1 is_stmt 0
	lw	ra,172(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,168(sp)
	.cfi_restore 8
.LVL219:
	lw	s1,164(sp)
	.cfi_restore 9
.LVL220:
	li	a0,0
	addi	sp,sp,176
	.cfi_def_cfa_offset 0
	jr	ra
.LVL221:
.L150:
	.cfi_restore_state
	.loc 1 352 9 is_stmt 1
	.loc 1 352 16 is_stmt 0
	mv	a0,s1
	call	bl_adc_get_channel_by_gpio
.LVL222:
	.loc 1 353 9 is_stmt 1
	.loc 1 354 30 is_stmt 0
	li	a5,23
	.loc 1 353 30
	sw	a0,12(sp)
	.loc 1 354 9 is_stmt 1
	.loc 1 354 30 is_stmt 0
	sw	a5,60(sp)
	.loc 1 355 9 is_stmt 1
.LVL223:
	.loc 1 355 21 is_stmt 0
	li	s0,1
.LVL224:
	j	.L152
	.cfi_endproc
.LFE39:
	.size	bl_adc_init, .-bl_adc_init
	.globl	adcFifoCfg
	.globl	adcCfg
	.globl	_fsymf_info_hosalbl_adc
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC18:
	.string	"hosal.bl_adc"
	.comm	_fsymf_level_hosalbl_adc,4,4
	.align	2
.LC19:
	.string	"hosal"
	.weak	_fsymc_level_hosal
	.section	.srodata.cst4,"aM",@progbits,4
	.align	2
.LC6:
	.word	1158733824
	.section	.srodata.cst8,"aM",@progbits,8
	.align	3
.LC7:
	.word	1855425872
	.word	1075774226
	.section	.rodata
	.align	2
	.set	.LANCHOR3,. + 0
.LC0:
	.word	2
	.word	1
	.word	7
	.word	1
	.word	1
	.word	2
	.word	0
	.word	0
	.word	1
	.word	0
	.word	4
	.word	0
	.half	0
	.zero	2
	.section	.data.adcCfg,"aw"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	adcCfg, @object
	.size	adcCfg, 52
adcCfg:
	.word	2
	.word	1
	.word	4
	.word	0
	.word	0
	.word	2
	.word	0
	.word	0
	.word	1
	.word	0
	.word	4
	.word	0
	.half	0
	.zero	2
	.section	.sbss._fsymc_level_hosal,"aw",@nobits
	.align	2
	.type	_fsymc_level_hosal, @object
	.size	_fsymc_level_hosal, 4
_fsymc_level_hosal:
	.zero	4
	.section	.sbss.adcFifoCfg,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	adcFifoCfg, @object
	.size	adcFifoCfg, 8
adcFifoCfg:
	.zero	8
	.section	.sdata.tsen_offset.0,"aw"
	.align	1
	.set	.LANCHOR2,. + 0
	.type	tsen_offset.0, @object
	.size	tsen_offset.0, 2
tsen_offset.0:
	.half	-1
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
	.word	.LC19
	.section	.static_blogfile_code.hosalbl_adc,"a"
	.align	2
	.type	_fsymf_info_hosalbl_adc, @object
	.size	_fsymf_info_hosalbl_adc, 8
_fsymf_info_hosalbl_adc:
	.word	_fsymf_level_hosalbl_adc
	.word	.LC18
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_gpio.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_glb.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/dma_reg.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_dma.h"
	.file 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_adc.h"
	.file 10 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog_type.h"
	.file 11 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog.h"
	.file 12 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_adc.h"
	.file 13 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 14 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 15 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_log.h"
	.file 16 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h"
	.file 17 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_dma.h"
	.file 18 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1b56
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF322
	.byte	0xc
	.4byte	.LASF323
	.4byte	.LASF324
	.4byte	.Ldebug_ranges0+0x70
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF0
	.byte	0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF1
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x4
	.4byte	.LASF4
	.byte	0x2
	.byte	0x29
	.byte	0x15
	.4byte	0x4d
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.byte	0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x60
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.byte	0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x37
	.byte	0x13
	.4byte	0x73
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF8
	.byte	0x4
	.4byte	.LASF9
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x86
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF10
	.byte	0x4
	.4byte	.LASF11
	.byte	0x2
	.byte	0x4d
	.byte	0x12
	.4byte	0x99
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.byte	0x4
	.4byte	.LASF13
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0xac
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF15
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF16
	.byte	0x5
	.byte	0x4
	.byte	0x6
	.byte	0x4
	.4byte	0xc9
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.byte	0x4
	.4byte	.LASF18
	.byte	0x3
	.byte	0x14
	.byte	0x12
	.4byte	0x41
	.byte	0x4
	.4byte	.LASF19
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x54
	.byte	0x4
	.4byte	.LASF20
	.byte	0x3
	.byte	0x20
	.byte	0x13
	.4byte	0x67
	.byte	0x4
	.4byte	.LASF21
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x7a
	.byte	0x4
	.4byte	.LASF22
	.byte	0x3
	.byte	0x2c
	.byte	0x13
	.4byte	0x8d
	.byte	0x4
	.4byte	.LASF23
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0xa0
	.byte	0x7
	.4byte	0x10c
	.byte	0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x33
	.byte	0x4
	.byte	0x17
	.byte	0x1
	.4byte	0x13e
	.byte	0x9
	.4byte	.LASF24
	.byte	0
	.byte	0x9
	.4byte	.LASF25
	.byte	0x1
	.byte	0x9
	.4byte	.LASF26
	.byte	0x2
	.byte	0
	.byte	0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x33
	.byte	0x4
	.byte	0x21
	.byte	0x1
	.4byte	0x159
	.byte	0x9
	.4byte	.LASF27
	.byte	0
	.byte	0x9
	.4byte	.LASF28
	.byte	0x1
	.byte	0
	.byte	0x4
	.4byte	.LASF29
	.byte	0x4
	.byte	0x24
	.byte	0x2
	.4byte	0x13e
	.byte	0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x33
	.byte	0x4
	.byte	0x33
	.byte	0x1
	.4byte	0x180
	.byte	0x9
	.4byte	.LASF30
	.byte	0
	.byte	0x9
	.4byte	.LASF31
	.byte	0x1
	.byte	0
	.byte	0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x33
	.byte	0x5
	.byte	0x4c
	.byte	0x1
	.4byte	0x21f
	.byte	0x9
	.4byte	.LASF32
	.byte	0
	.byte	0x9
	.4byte	.LASF33
	.byte	0x1
	.byte	0x9
	.4byte	.LASF34
	.byte	0x2
	.byte	0x9
	.4byte	.LASF35
	.byte	0x3
	.byte	0x9
	.4byte	.LASF36
	.byte	0x4
	.byte	0x9
	.4byte	.LASF37
	.byte	0x5
	.byte	0x9
	.4byte	.LASF38
	.byte	0x6
	.byte	0x9
	.4byte	.LASF39
	.byte	0x7
	.byte	0x9
	.4byte	.LASF40
	.byte	0x8
	.byte	0x9
	.4byte	.LASF41
	.byte	0x9
	.byte	0x9
	.4byte	.LASF42
	.byte	0xa
	.byte	0x9
	.4byte	.LASF43
	.byte	0xb
	.byte	0x9
	.4byte	.LASF44
	.byte	0xc
	.byte	0x9
	.4byte	.LASF45
	.byte	0xd
	.byte	0x9
	.4byte	.LASF46
	.byte	0xe
	.byte	0x9
	.4byte	.LASF47
	.byte	0xf
	.byte	0x9
	.4byte	.LASF48
	.byte	0x10
	.byte	0x9
	.4byte	.LASF49
	.byte	0x11
	.byte	0x9
	.4byte	.LASF50
	.byte	0x12
	.byte	0x9
	.4byte	.LASF51
	.byte	0x13
	.byte	0x9
	.4byte	.LASF52
	.byte	0x14
	.byte	0x9
	.4byte	.LASF53
	.byte	0x15
	.byte	0x9
	.4byte	.LASF54
	.byte	0x16
	.byte	0x9
	.4byte	.LASF55
	.byte	0x17
	.byte	0
	.byte	0x4
	.4byte	.LASF56
	.byte	0x5
	.byte	0x65
	.byte	0x2
	.4byte	0x180
	.byte	0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x33
	.byte	0x5
	.byte	0x71
	.byte	0x1
	.4byte	0x276
	.byte	0x9
	.4byte	.LASF57
	.byte	0x1
	.byte	0x9
	.4byte	.LASF58
	.byte	0x2
	.byte	0x9
	.4byte	.LASF59
	.byte	0x4
	.byte	0x9
	.4byte	.LASF60
	.byte	0x6
	.byte	0x9
	.4byte	.LASF61
	.byte	0x7
	.byte	0x9
	.4byte	.LASF62
	.byte	0x8
	.byte	0x9
	.4byte	.LASF63
	.byte	0x9
	.byte	0x9
	.4byte	.LASF64
	.byte	0xa
	.byte	0x9
	.4byte	.LASF65
	.byte	0xb
	.byte	0x9
	.4byte	.LASF66
	.byte	0xe
	.byte	0
	.byte	0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x33
	.byte	0x6
	.byte	0xbf
	.byte	0xe
	.4byte	0x291
	.byte	0x9
	.4byte	.LASF67
	.byte	0
	.byte	0x9
	.4byte	.LASF68
	.byte	0x1
	.byte	0
	.byte	0xa
	.4byte	.LASF225
	.byte	0x4
	.byte	0x7
	.2byte	0x4c1
	.byte	0x10
	.4byte	0x357
	.byte	0xb
	.4byte	.LASF69
	.byte	0x7
	.2byte	0x4c2
	.byte	0x16
	.4byte	0x10c
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.byte	0xb
	.4byte	.LASF70
	.byte	0x7
	.2byte	0x4c3
	.byte	0x16
	.4byte	0x10c
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.byte	0xb
	.4byte	.LASF71
	.byte	0x7
	.2byte	0x4c4
	.byte	0x16
	.4byte	0x10c
	.byte	0x4
	.byte	0x3
	.byte	0xe
	.byte	0
	.byte	0xb
	.4byte	.LASF72
	.byte	0x7
	.2byte	0x4c5
	.byte	0x16
	.4byte	0x10c
	.byte	0x4
	.byte	0x3
	.byte	0xb
	.byte	0
	.byte	0xb
	.4byte	.LASF73
	.byte	0x7
	.2byte	0x4c6
	.byte	0x16
	.4byte	0x10c
	.byte	0x4
	.byte	0x3
	.byte	0x8
	.byte	0
	.byte	0xb
	.4byte	.LASF74
	.byte	0x7
	.2byte	0x4c7
	.byte	0x16
	.4byte	0x10c
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.byte	0xb
	.4byte	.LASF75
	.byte	0x7
	.2byte	0x4c8
	.byte	0x16
	.4byte	0x10c
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.byte	0xc
	.string	"SI"
	.byte	0x7
	.2byte	0x4c9
	.byte	0x16
	.4byte	0x10c
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.byte	0xc
	.string	"DI"
	.byte	0x7
	.2byte	0x4ca
	.byte	0x16
	.4byte	0x10c
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.byte	0xb
	.4byte	.LASF76
	.byte	0x7
	.2byte	0x4cb
	.byte	0x16
	.4byte	0x10c
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.byte	0xc
	.string	"I"
	.byte	0x7
	.2byte	0x4cc
	.byte	0x16
	.4byte	0x10c
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x33
	.byte	0x8
	.byte	0x49
	.byte	0xe
	.4byte	0x378
	.byte	0x9
	.4byte	.LASF77
	.byte	0
	.byte	0x9
	.4byte	.LASF78
	.byte	0x1
	.byte	0x9
	.4byte	.LASF79
	.byte	0x2
	.byte	0
	.byte	0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x33
	.byte	0x8
	.byte	0x52
	.byte	0xe
	.4byte	0x39f
	.byte	0x9
	.4byte	.LASF80
	.byte	0
	.byte	0x9
	.4byte	.LASF81
	.byte	0x1
	.byte	0x9
	.4byte	.LASF82
	.byte	0x2
	.byte	0x9
	.4byte	.LASF83
	.byte	0x3
	.byte	0
	.byte	0x4
	.4byte	.LASF84
	.byte	0x8
	.byte	0x57
	.byte	0x2
	.4byte	0x378
	.byte	0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x33
	.byte	0x8
	.byte	0x5c
	.byte	0xe
	.4byte	0x3d2
	.byte	0x9
	.4byte	.LASF85
	.byte	0
	.byte	0x9
	.4byte	.LASF86
	.byte	0x1
	.byte	0x9
	.4byte	.LASF87
	.byte	0x2
	.byte	0x9
	.4byte	.LASF88
	.byte	0x3
	.byte	0
	.byte	0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x33
	.byte	0x8
	.byte	0x66
	.byte	0xe
	.4byte	0x423
	.byte	0x9
	.4byte	.LASF89
	.byte	0
	.byte	0x9
	.4byte	.LASF90
	.byte	0x1
	.byte	0x9
	.4byte	.LASF91
	.byte	0x2
	.byte	0x9
	.4byte	.LASF92
	.byte	0x3
	.byte	0x9
	.4byte	.LASF93
	.byte	0x6
	.byte	0x9
	.4byte	.LASF94
	.byte	0x7
	.byte	0x9
	.4byte	.LASF95
	.byte	0xa
	.byte	0x9
	.4byte	.LASF96
	.byte	0xb
	.byte	0x9
	.4byte	.LASF97
	.byte	0x16
	.byte	0x9
	.4byte	.LASF98
	.byte	0x17
	.byte	0x9
	.4byte	.LASF99
	.byte	0
	.byte	0
	.byte	0x4
	.4byte	.LASF100
	.byte	0x8
	.byte	0x72
	.byte	0x2
	.4byte	0x3d2
	.byte	0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x33
	.byte	0x8
	.byte	0x82
	.byte	0xe
	.4byte	0x450
	.byte	0x9
	.4byte	.LASF101
	.byte	0
	.byte	0x9
	.4byte	.LASF102
	.byte	0x1
	.byte	0x9
	.4byte	.LASF103
	.byte	0x2
	.byte	0
	.byte	0xd
	.byte	0x10
	.byte	0x8
	.byte	0xb0
	.byte	0x9
	.4byte	0x48e
	.byte	0xe
	.4byte	.LASF104
	.byte	0x8
	.byte	0xb1
	.byte	0xe
	.4byte	0x10c
	.byte	0
	.byte	0xe
	.4byte	.LASF105
	.byte	0x8
	.byte	0xb2
	.byte	0xe
	.4byte	0x10c
	.byte	0x4
	.byte	0xe
	.4byte	.LASF106
	.byte	0x8
	.byte	0xb3
	.byte	0xe
	.4byte	0x10c
	.byte	0x8
	.byte	0xe
	.4byte	.LASF107
	.byte	0x8
	.byte	0xb4
	.byte	0x1c
	.4byte	0x291
	.byte	0xc
	.byte	0
	.byte	0x4
	.4byte	.LASF108
	.byte	0x8
	.byte	0xb5
	.byte	0x2
	.4byte	0x450
	.byte	0xd
	.byte	0xc
	.byte	0x8
	.byte	0xba
	.byte	0x9
	.4byte	0x4cb
	.byte	0xf
	.string	"dir"
	.byte	0x8
	.byte	0xbb
	.byte	0x18
	.4byte	0x39f
	.byte	0
	.byte	0xe
	.4byte	.LASF109
	.byte	0x8
	.byte	0xbc
	.byte	0x19
	.4byte	0x423
	.byte	0x4
	.byte	0xe
	.4byte	.LASF110
	.byte	0x8
	.byte	0xbd
	.byte	0x19
	.4byte	0x423
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LASF111
	.byte	0x8
	.byte	0xbe
	.byte	0x2
	.4byte	0x49a
	.byte	0x6
	.byte	0x4
	.4byte	0x48e
	.byte	0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x33
	.byte	0x9
	.byte	0x3a
	.byte	0xe
	.4byte	0x57c
	.byte	0x9
	.4byte	.LASF112
	.byte	0
	.byte	0x9
	.4byte	.LASF113
	.byte	0x1
	.byte	0x9
	.4byte	.LASF114
	.byte	0x2
	.byte	0x9
	.4byte	.LASF115
	.byte	0x3
	.byte	0x9
	.4byte	.LASF116
	.byte	0x4
	.byte	0x9
	.4byte	.LASF117
	.byte	0x5
	.byte	0x9
	.4byte	.LASF118
	.byte	0x6
	.byte	0x9
	.4byte	.LASF119
	.byte	0x7
	.byte	0x9
	.4byte	.LASF120
	.byte	0x8
	.byte	0x9
	.4byte	.LASF121
	.byte	0x9
	.byte	0x9
	.4byte	.LASF122
	.byte	0xa
	.byte	0x9
	.4byte	.LASF123
	.byte	0xb
	.byte	0x9
	.4byte	.LASF124
	.byte	0xc
	.byte	0x9
	.4byte	.LASF125
	.byte	0xd
	.byte	0x9
	.4byte	.LASF126
	.byte	0xe
	.byte	0x9
	.4byte	.LASF127
	.byte	0xf
	.byte	0x9
	.4byte	.LASF128
	.byte	0x10
	.byte	0x9
	.4byte	.LASF129
	.byte	0x11
	.byte	0x9
	.4byte	.LASF130
	.byte	0x12
	.byte	0x9
	.4byte	.LASF131
	.byte	0x13
	.byte	0x9
	.4byte	.LASF132
	.byte	0x14
	.byte	0x9
	.4byte	.LASF133
	.byte	0x15
	.byte	0x9
	.4byte	.LASF134
	.byte	0x16
	.byte	0x9
	.4byte	.LASF135
	.byte	0x17
	.byte	0
	.byte	0x4
	.4byte	.LASF136
	.byte	0x9
	.byte	0x53
	.byte	0x2
	.4byte	0x4dd
	.byte	0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x33
	.byte	0x9
	.byte	0x58
	.byte	0xe
	.4byte	0x5af
	.byte	0x9
	.4byte	.LASF137
	.byte	0
	.byte	0x9
	.4byte	.LASF138
	.byte	0x1
	.byte	0x9
	.4byte	.LASF139
	.byte	0x2
	.byte	0x9
	.4byte	.LASF140
	.byte	0x3
	.byte	0
	.byte	0x4
	.4byte	.LASF141
	.byte	0x9
	.byte	0x5d
	.byte	0x2
	.4byte	0x588
	.byte	0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x33
	.byte	0x9
	.byte	0x62
	.byte	0xe
	.4byte	0x5e2
	.byte	0x9
	.4byte	.LASF142
	.byte	0
	.byte	0x9
	.4byte	.LASF143
	.byte	0x1
	.byte	0x9
	.4byte	.LASF144
	.byte	0x2
	.byte	0x9
	.4byte	.LASF145
	.byte	0x3
	.byte	0
	.byte	0x4
	.4byte	.LASF146
	.byte	0x9
	.byte	0x67
	.byte	0x2
	.4byte	0x5bb
	.byte	0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x33
	.byte	0x9
	.byte	0x6c
	.byte	0xe
	.4byte	0x62d
	.byte	0x9
	.4byte	.LASF147
	.byte	0
	.byte	0x9
	.4byte	.LASF148
	.byte	0x1
	.byte	0x9
	.4byte	.LASF149
	.byte	0x2
	.byte	0x9
	.4byte	.LASF150
	.byte	0x3
	.byte	0x9
	.4byte	.LASF151
	.byte	0x4
	.byte	0x9
	.4byte	.LASF152
	.byte	0x5
	.byte	0x9
	.4byte	.LASF153
	.byte	0x6
	.byte	0x9
	.4byte	.LASF154
	.byte	0x7
	.byte	0
	.byte	0x4
	.4byte	.LASF155
	.byte	0x9
	.byte	0x75
	.byte	0x2
	.4byte	0x5ee
	.byte	0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x33
	.byte	0x9
	.byte	0x88
	.byte	0xe
	.4byte	0x672
	.byte	0x9
	.4byte	.LASF156
	.byte	0
	.byte	0x9
	.4byte	.LASF157
	.byte	0x1
	.byte	0x9
	.4byte	.LASF158
	.byte	0x2
	.byte	0x9
	.4byte	.LASF159
	.byte	0x3
	.byte	0x9
	.4byte	.LASF160
	.byte	0x4
	.byte	0x9
	.4byte	.LASF161
	.byte	0x5
	.byte	0x9
	.4byte	.LASF162
	.byte	0x6
	.byte	0
	.byte	0x4
	.4byte	.LASF163
	.byte	0x9
	.byte	0x90
	.byte	0x2
	.4byte	0x639
	.byte	0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x33
	.byte	0x9
	.byte	0x95
	.byte	0xe
	.4byte	0x699
	.byte	0x9
	.4byte	.LASF164
	.byte	0
	.byte	0x9
	.4byte	.LASF165
	.byte	0x1
	.byte	0
	.byte	0x4
	.4byte	.LASF166
	.byte	0x9
	.byte	0x98
	.byte	0x2
	.4byte	0x67e
	.byte	0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x33
	.byte	0x9
	.byte	0x9d
	.byte	0xe
	.4byte	0x6cc
	.byte	0x9
	.4byte	.LASF167
	.byte	0
	.byte	0x9
	.4byte	.LASF168
	.byte	0x1
	.byte	0x9
	.4byte	.LASF169
	.byte	0x2
	.byte	0x9
	.4byte	.LASF170
	.byte	0x3
	.byte	0
	.byte	0x4
	.4byte	.LASF171
	.byte	0x9
	.byte	0xa2
	.byte	0x2
	.4byte	0x6a5
	.byte	0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x33
	.byte	0x9
	.byte	0xa7
	.byte	0xe
	.4byte	0x6ff
	.byte	0x9
	.4byte	.LASF172
	.byte	0
	.byte	0x9
	.4byte	.LASF173
	.byte	0x1
	.byte	0x9
	.4byte	.LASF174
	.byte	0x2
	.byte	0x9
	.4byte	.LASF175
	.byte	0x3
	.byte	0
	.byte	0x4
	.4byte	.LASF176
	.byte	0x9
	.byte	0xac
	.byte	0x2
	.4byte	0x6d8
	.byte	0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x33
	.byte	0x9
	.byte	0xb1
	.byte	0xe
	.4byte	0x726
	.byte	0x9
	.4byte	.LASF177
	.byte	0
	.byte	0x9
	.4byte	.LASF178
	.byte	0x1
	.byte	0
	.byte	0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x33
	.byte	0x9
	.byte	0xb9
	.byte	0xe
	.4byte	0x741
	.byte	0x9
	.4byte	.LASF179
	.byte	0
	.byte	0x9
	.4byte	.LASF180
	.byte	0x1
	.byte	0
	.byte	0x4
	.4byte	.LASF181
	.byte	0x9
	.byte	0xbc
	.byte	0x2
	.4byte	0x726
	.byte	0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x33
	.byte	0x9
	.byte	0xc1
	.byte	0xe
	.4byte	0x768
	.byte	0x9
	.4byte	.LASF182
	.byte	0
	.byte	0x9
	.4byte	.LASF183
	.byte	0x1
	.byte	0
	.byte	0x4
	.4byte	.LASF184
	.byte	0x9
	.byte	0xc4
	.byte	0x2
	.4byte	0x74d
	.byte	0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x33
	.byte	0x9
	.byte	0xc9
	.byte	0xe
	.4byte	0x7a1
	.byte	0x9
	.4byte	.LASF185
	.byte	0
	.byte	0x9
	.4byte	.LASF186
	.byte	0x1
	.byte	0x9
	.4byte	.LASF187
	.byte	0x2
	.byte	0x9
	.4byte	.LASF188
	.byte	0x3
	.byte	0x9
	.4byte	.LASF189
	.byte	0x4
	.byte	0
	.byte	0x4
	.4byte	.LASF190
	.byte	0x9
	.byte	0xcf
	.byte	0x2
	.4byte	0x774
	.byte	0xd
	.byte	0x34
	.byte	0x9
	.byte	0xfc
	.byte	0x9
	.4byte	0x86a
	.byte	0xe
	.4byte	.LASF191
	.byte	0x9
	.byte	0xfd
	.byte	0x16
	.4byte	0x5af
	.byte	0
	.byte	0xe
	.4byte	.LASF192
	.byte	0x9
	.byte	0xfe
	.byte	0x16
	.4byte	0x5e2
	.byte	0x4
	.byte	0xe
	.4byte	.LASF193
	.byte	0x9
	.byte	0xff
	.byte	0x12
	.4byte	0x62d
	.byte	0x8
	.byte	0x10
	.4byte	.LASF194
	.byte	0x9
	.2byte	0x100
	.byte	0x17
	.4byte	0x672
	.byte	0xc
	.byte	0x10
	.4byte	.LASF195
	.byte	0x9
	.2byte	0x101
	.byte	0x17
	.4byte	0x672
	.byte	0x10
	.byte	0x10
	.4byte	.LASF196
	.byte	0x9
	.2byte	0x102
	.byte	0x17
	.4byte	0x6cc
	.byte	0x14
	.byte	0x10
	.4byte	.LASF197
	.byte	0x9
	.2byte	0x103
	.byte	0x17
	.4byte	0x699
	.byte	0x18
	.byte	0x11
	.string	"vcm"
	.byte	0x9
	.2byte	0x104
	.byte	0x16
	.4byte	0x6ff
	.byte	0x1c
	.byte	0x10
	.4byte	.LASF198
	.byte	0x9
	.2byte	0x105
	.byte	0x13
	.4byte	0x741
	.byte	0x20
	.byte	0x10
	.4byte	.LASF199
	.byte	0x9
	.2byte	0x106
	.byte	0x18
	.4byte	0x768
	.byte	0x24
	.byte	0x10
	.4byte	.LASF200
	.byte	0x9
	.2byte	0x107
	.byte	0x19
	.4byte	0x7a1
	.byte	0x28
	.byte	0x10
	.4byte	.LASF201
	.byte	0x9
	.2byte	0x108
	.byte	0x11
	.4byte	0x159
	.byte	0x2c
	.byte	0x10
	.4byte	.LASF202
	.byte	0x9
	.2byte	0x109
	.byte	0xd
	.4byte	0xe8
	.byte	0x30
	.byte	0
	.byte	0x12
	.4byte	.LASF203
	.byte	0x9
	.2byte	0x10a
	.byte	0x2
	.4byte	0x7ad
	.byte	0x13
	.byte	0x8
	.byte	0x9
	.2byte	0x10f
	.byte	0x9
	.4byte	0x8ba
	.byte	0x10
	.4byte	.LASF204
	.byte	0x9
	.2byte	0x110
	.byte	0xc
	.4byte	0xd0
	.byte	0
	.byte	0x10
	.4byte	.LASF205
	.byte	0x9
	.2byte	0x111
	.byte	0xc
	.4byte	0xd0
	.byte	0x1
	.byte	0x10
	.4byte	.LASF206
	.byte	0x9
	.2byte	0x112
	.byte	0xe
	.4byte	0xf4
	.byte	0x2
	.byte	0x10
	.4byte	.LASF207
	.byte	0x9
	.2byte	0x113
	.byte	0xb
	.4byte	0x25
	.byte	0x4
	.byte	0
	.byte	0x12
	.4byte	.LASF208
	.byte	0x9
	.2byte	0x114
	.byte	0x2
	.4byte	0x877
	.byte	0x14
	.byte	0x7
	.byte	0x4
	.4byte	0x33
	.byte	0x9
	.2byte	0x119
	.byte	0xe
	.4byte	0x8ef
	.byte	0x9
	.4byte	.LASF209
	.byte	0
	.byte	0x9
	.4byte	.LASF210
	.byte	0x1
	.byte	0x9
	.4byte	.LASF211
	.byte	0x2
	.byte	0x9
	.4byte	.LASF212
	.byte	0x3
	.byte	0
	.byte	0x12
	.4byte	.LASF213
	.byte	0x9
	.2byte	0x11e
	.byte	0x2
	.4byte	0x8c7
	.byte	0x13
	.byte	0x8
	.byte	0x9
	.2byte	0x12f
	.byte	0x9
	.4byte	0x923
	.byte	0x10
	.4byte	.LASF214
	.byte	0x9
	.2byte	0x130
	.byte	0x1d
	.4byte	0x8ef
	.byte	0
	.byte	0x10
	.4byte	.LASF215
	.byte	0x9
	.2byte	0x131
	.byte	0x11
	.4byte	0x159
	.byte	0x4
	.byte	0
	.byte	0x12
	.4byte	.LASF216
	.byte	0x9
	.2byte	0x132
	.byte	0x2
	.4byte	0x8fc
	.byte	0x15
	.4byte	.LASF325
	.byte	0x7
	.byte	0x4
	.4byte	0x33
	.byte	0xa
	.byte	0x22
	.byte	0xe
	.4byte	0x96d
	.byte	0x9
	.4byte	.LASF217
	.byte	0
	.byte	0x9
	.4byte	.LASF218
	.byte	0x1
	.byte	0x9
	.4byte	.LASF219
	.byte	0x2
	.byte	0x9
	.4byte	.LASF220
	.byte	0x3
	.byte	0x9
	.4byte	.LASF221
	.byte	0x4
	.byte	0x9
	.4byte	.LASF222
	.byte	0x5
	.byte	0x9
	.4byte	.LASF223
	.byte	0x6
	.byte	0
	.byte	0x4
	.4byte	.LASF224
	.byte	0xa
	.byte	0x2a
	.byte	0x3
	.4byte	0x930
	.byte	0x16
	.4byte	.LASF226
	.byte	0x8
	.byte	0xa
	.byte	0x2c
	.byte	0x10
	.4byte	0x9a1
	.byte	0xe
	.4byte	.LASF227
	.byte	0xa
	.byte	0x2d
	.byte	0x13
	.4byte	0x9a1
	.byte	0
	.byte	0xe
	.4byte	.LASF228
	.byte	0xa
	.byte	0x2e
	.byte	0xb
	.4byte	0xc3
	.byte	0x4
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x96d
	.byte	0x4
	.4byte	.LASF229
	.byte	0xa
	.byte	0x2f
	.byte	0x3
	.4byte	0x979
	.byte	0x7
	.4byte	0x9a7
	.byte	0x17
	.4byte	.LASF230
	.byte	0xb
	.byte	0x38
	.byte	0x1b
	.4byte	0x118
	.byte	0x5
	.byte	0x3
	.4byte	BLOG_HARD_DECLARE_DISABLE
	.byte	0x18
	.4byte	.LASF232
	.byte	0xb
	.byte	0x45
	.byte	0x12
	.4byte	0x96d
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_level_hosal
	.byte	0x17
	.4byte	.LASF231
	.byte	0xb
	.byte	0x46
	.byte	0x1e
	.4byte	0x9b3
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_info_hosal
	.byte	0x18
	.4byte	.LASF233
	.byte	0xb
	.byte	0x53
	.byte	0x12
	.4byte	0x96d
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_level_hosalbl_adc
	.byte	0x18
	.4byte	.LASF234
	.byte	0xb
	.byte	0x54
	.byte	0x17
	.4byte	0x9b3
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_info_hosalbl_adc
	.byte	0x4
	.4byte	.LASF235
	.byte	0xc
	.byte	0x7
	.byte	0x10
	.4byte	0xa1e
	.byte	0x6
	.byte	0x4
	.4byte	0xa24
	.byte	0x19
	.4byte	0xa39
	.byte	0x1a
	.4byte	0x3a
	.byte	0x1a
	.4byte	0xa39
	.byte	0x1a
	.4byte	0x10c
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x10c
	.byte	0x16
	.4byte	.LASF236
	.byte	0x1c
	.byte	0xc
	.byte	0x8
	.byte	0x10
	.4byte	0xaa7
	.byte	0xe
	.4byte	.LASF237
	.byte	0xc
	.byte	0x9
	.byte	0x9
	.4byte	0x3a
	.byte	0
	.byte	0xe
	.4byte	.LASF238
	.byte	0xc
	.byte	0xa
	.byte	0xf
	.4byte	0xa39
	.byte	0x4
	.byte	0xe
	.4byte	.LASF239
	.byte	0xc
	.byte	0xb
	.byte	0xb
	.4byte	0xc1
	.byte	0x8
	.byte	0xe
	.4byte	.LASF240
	.byte	0xc
	.byte	0xc
	.byte	0x9
	.4byte	0x3a
	.byte	0xc
	.byte	0xe
	.4byte	.LASF241
	.byte	0xc
	.byte	0xd
	.byte	0xe
	.4byte	0x10c
	.byte	0x10
	.byte	0xe
	.4byte	.LASF242
	.byte	0xc
	.byte	0xe
	.byte	0xe
	.4byte	0x10c
	.byte	0x14
	.byte	0xf
	.string	"cb"
	.byte	0xc
	.byte	0xf
	.byte	0x11
	.4byte	0xa12
	.byte	0x18
	.byte	0
	.byte	0x4
	.4byte	.LASF243
	.byte	0xc
	.byte	0x10
	.byte	0x2
	.4byte	0xa3f
	.byte	0x18
	.4byte	.LASF244
	.byte	0x1
	.byte	0x18
	.byte	0xe
	.4byte	0x86a
	.byte	0x5
	.byte	0x3
	.4byte	adcCfg
	.byte	0x18
	.4byte	.LASF245
	.byte	0x1
	.byte	0x29
	.byte	0x13
	.4byte	0x923
	.byte	0x5
	.byte	0x3
	.4byte	adcFifoCfg
	.byte	0x1b
	.4byte	.LASF326
	.byte	0x1
	.2byte	0x1f6
	.byte	0x5
	.4byte	0x3a
	.byte	0x1
	.4byte	0xb04
	.byte	0x1c
	.4byte	.LASF250
	.byte	0x1
	.2byte	0x1f6
	.byte	0x24
	.4byte	0x3a
	.byte	0x1d
	.4byte	.LASF247
	.byte	0x1
	.2byte	0x1f8
	.byte	0x9
	.4byte	0x3a
	.byte	0
	.byte	0x1e
	.4byte	.LASF251
	.byte	0x1
	.2byte	0x1e1
	.byte	0x9
	.4byte	0x100
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x1
	.byte	0x9c
	.4byte	0xb9a
	.byte	0x1f
	.4byte	.LASF246
	.byte	0x1
	.2byte	0x1e1
	.byte	0x25
	.4byte	0xa39
	.4byte	.LLST27
	.byte	0x20
	.4byte	.LASF242
	.byte	0x1
	.2byte	0x1e1
	.byte	0x2f
	.4byte	0x3a
	.byte	0x1
	.byte	0x5b
	.byte	0x20
	.4byte	.LASF247
	.byte	0x1
	.2byte	0x1e1
	.byte	0x3e
	.4byte	0x3a
	.byte	0x1
	.byte	0x5c
	.byte	0x20
	.4byte	.LASF248
	.byte	0x1
	.2byte	0x1e1
	.byte	0x4b
	.4byte	0x3a
	.byte	0x1
	.byte	0x5d
	.byte	0x21
	.string	"i"
	.byte	0x1
	.2byte	0x1e3
	.byte	0x9
	.4byte	0x3a
	.4byte	.LLST28
	.byte	0x22
	.4byte	.LASF249
	.byte	0x1
	.2byte	0x1e4
	.byte	0xd
	.4byte	0x100
	.4byte	.LLST29
	.byte	0x23
	.4byte	0xb9a
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.byte	0x1
	.2byte	0x1ec
	.byte	0x18
	.byte	0x24
	.4byte	0xbac
	.byte	0x25
	.4byte	0xbb9
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	.LASF327
	.byte	0x1
	.2byte	0x1d7
	.byte	0x11
	.4byte	0x10c
	.byte	0x1
	.4byte	0xbc7
	.byte	0x1c
	.4byte	.LASF249
	.byte	0x1
	.2byte	0x1d7
	.byte	0x28
	.4byte	0x10c
	.byte	0x27
	.string	"val"
	.byte	0x1
	.2byte	0x1d9
	.byte	0xe
	.4byte	0x10c
	.byte	0
	.byte	0x1e
	.4byte	.LASF252
	.byte	0x1
	.2byte	0x1ce
	.byte	0x5
	.4byte	0x3a
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x1
	.byte	0x9c
	.4byte	0xc1e
	.byte	0x1f
	.4byte	.LASF250
	.byte	0x1
	.2byte	0x1ce
	.byte	0x1a
	.4byte	0x3a
	.4byte	.LLST26
	.byte	0x28
	.4byte	.LASF253
	.byte	0x1
	.2byte	0x1d0
	.byte	0x13
	.4byte	0x21f
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x29
	.4byte	.LVL192
	.4byte	0x198d
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3a
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LASF254
	.byte	0x1
	.2byte	0x1c1
	.byte	0x5
	.4byte	0x3a
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x1
	.byte	0x9c
	.4byte	0xcb2
	.byte	0x2b
	.4byte	.LVL184
	.4byte	0x199a
	.4byte	0xc56
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x2b
	.4byte	.LVL185
	.4byte	0x199a
	.4byte	0xc73
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x2b
	.4byte	.LVL186
	.4byte	0x199a
	.4byte	0xc90
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x2c
	.4byte	.LVL187
	.4byte	0x19a7
	.byte	0x2c
	.4byte	.LVL188
	.4byte	0x19b4
	.byte	0x29
	.4byte	.LVL189
	.4byte	0x19c1
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LASF255
	.byte	0x1
	.2byte	0x18a
	.byte	0x5
	.4byte	0x3a
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x1
	.byte	0x9c
	.4byte	0xe85
	.byte	0x1f
	.4byte	.LASF237
	.byte	0x1
	.2byte	0x18a
	.byte	0x19
	.4byte	0x3a
	.4byte	.LLST20
	.byte	0x1f
	.4byte	.LASF256
	.byte	0x1
	.2byte	0x18a
	.byte	0x28
	.4byte	0x10c
	.4byte	.LLST21
	.byte	0x28
	.4byte	.LASF257
	.byte	0x1
	.2byte	0x18c
	.byte	0x18
	.4byte	0x4d7
	.byte	0x1
	.byte	0x58
	.byte	0x22
	.4byte	.LASF258
	.byte	0x1
	.2byte	0x18d
	.byte	0xf
	.4byte	0xa39
	.4byte	.LLST22
	.byte	0x28
	.4byte	.LASF259
	.byte	0x1
	.2byte	0x18e
	.byte	0x16
	.4byte	0x4cb
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x28
	.4byte	.LASF260
	.byte	0x1
	.2byte	0x18f
	.byte	0x10
	.4byte	0xe85
	.byte	0x1
	.byte	0x59
	.byte	0x2d
	.4byte	0xe8b
	.4byte	.LBB25
	.4byte	.Ldebug_ranges0+0x58
	.byte	0x1
	.2byte	0x1b1
	.byte	0x5
	.4byte	0xd6a
	.byte	0x2e
	.4byte	0xeb3
	.4byte	.LLST23
	.byte	0x2e
	.4byte	0xea6
	.4byte	.LLST24
	.byte	0x2e
	.4byte	0xe99
	.4byte	.LLST25
	.byte	0x2f
	.4byte	.Ldebug_ranges0+0x58
	.byte	0x25
	.4byte	0xec0
	.byte	0
	.byte	0
	.byte	0x2c
	.4byte	.LVL155
	.4byte	0x19ce
	.byte	0x2c
	.4byte	.LVL156
	.4byte	0x19da
	.byte	0x2c
	.4byte	.LVL157
	.4byte	0x19e7
	.byte	0x2c
	.4byte	.LVL158
	.4byte	0x19f3
	.byte	0x2b
	.4byte	.LVL161
	.4byte	0x1a00
	.4byte	0xda1
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x4c
	.byte	0
	.byte	0x2c
	.4byte	.LVL163
	.4byte	0x19ce
	.byte	0x2c
	.4byte	.LVL164
	.4byte	0x19da
	.byte	0x2c
	.4byte	.LVL165
	.4byte	0x19f3
	.byte	0x2b
	.4byte	.LVL166
	.4byte	0x1a00
	.4byte	0xdd0
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x2c
	.4byte	.LVL168
	.4byte	0x19ce
	.byte	0x2c
	.4byte	.LVL169
	.4byte	0x19da
	.byte	0x2c
	.4byte	.LVL170
	.4byte	0x19f3
	.byte	0x2b
	.4byte	.LVL171
	.4byte	0x1a00
	.4byte	0xe01
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x4
	.byte	0x83
	.byte	0
	.byte	0x33
	.byte	0x24
	.byte	0
	.byte	0x2c
	.4byte	.LVL173
	.4byte	0x19ce
	.byte	0x2c
	.4byte	.LVL174
	.4byte	0x19da
	.byte	0x2c
	.4byte	.LVL175
	.4byte	0x19f3
	.byte	0x2b
	.4byte	.LVL178
	.4byte	0x1a0c
	.4byte	0xe2f
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x2b
	.4byte	.LVL181
	.4byte	0x1a19
	.4byte	0xe48
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0
	.byte	0x2b
	.4byte	.LVL182
	.4byte	0x1a26
	.4byte	0xe61
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	.LVL183
	.4byte	0x1a33
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	adc_data_update
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0x2a
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xaa7
	.byte	0x30
	.4byte	.LASF283
	.byte	0x1
	.2byte	0x16e
	.byte	0xd
	.byte	0x1
	.4byte	0xece
	.byte	0x1c
	.4byte	.LASF257
	.byte	0x1
	.2byte	0x16e
	.byte	0x31
	.4byte	0x4d7
	.byte	0x31
	.string	"buf"
	.byte	0x1
	.2byte	0x16e
	.byte	0x43
	.4byte	0xa39
	.byte	0x1c
	.4byte	.LASF256
	.byte	0x1
	.2byte	0x16e
	.byte	0x51
	.4byte	0x10c
	.byte	0x1d
	.4byte	.LASF261
	.byte	0x1
	.2byte	0x170
	.byte	0x1c
	.4byte	0x291
	.byte	0
	.byte	0x1e
	.4byte	.LASF262
	.byte	0x1
	.2byte	0x13a
	.byte	0x5
	.4byte	0x3a
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x1
	.byte	0x9c
	.4byte	0xffb
	.byte	0x1f
	.4byte	.LASF237
	.byte	0x1
	.2byte	0x13a
	.byte	0x15
	.4byte	0x3a
	.4byte	.LLST32
	.byte	0x1f
	.4byte	.LASF250
	.byte	0x1
	.2byte	0x13a
	.byte	0x1f
	.4byte	0x3a
	.4byte	.LLST33
	.byte	0x21
	.string	"i"
	.byte	0x1
	.2byte	0x13c
	.byte	0x9
	.4byte	0x3a
	.4byte	.LLST34
	.byte	0x28
	.4byte	.LASF263
	.byte	0x1
	.2byte	0x13d
	.byte	0x9
	.4byte	0x3a
	.byte	0x1
	.byte	0x5a
	.byte	0x22
	.4byte	.LASF264
	.byte	0x1
	.2byte	0x13e
	.byte	0x9
	.4byte	0x3a
	.4byte	.LLST35
	.byte	0x28
	.4byte	.LASF265
	.byte	0x1
	.2byte	0x13f
	.byte	0x12
	.4byte	0x86a
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0x28
	.4byte	.LASF266
	.byte	0x1
	.2byte	0x140
	.byte	0x13
	.4byte	0xffb
	.byte	0x3
	.byte	0x91
	.byte	0xdc,0x7e
	.byte	0x28
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x141
	.byte	0x13
	.4byte	0xffb
	.byte	0x3
	.byte	0x91
	.byte	0x8c,0x7f
	.byte	0x28
	.4byte	.LASF268
	.byte	0x1
	.2byte	0x142
	.byte	0x17
	.4byte	0x923
	.byte	0x3
	.byte	0x91
	.byte	0xd4,0x7e
	.byte	0x2c
	.4byte	.LVL210
	.4byte	0x1a3f
	.byte	0x2c
	.4byte	.LVL211
	.4byte	0x1a4c
	.byte	0x2c
	.4byte	.LVL212
	.4byte	0x1a59
	.byte	0x2b
	.4byte	.LVL213
	.4byte	0x1a66
	.4byte	0xfae
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0
	.byte	0x2b
	.4byte	.LVL217
	.4byte	0x1a73
	.4byte	0xfd5
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xdc,0x7e
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x8c,0x7f
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x2b
	.4byte	.LVL218
	.4byte	0x1a80
	.4byte	0xfea
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xd4,0x7e
	.byte	0
	.byte	0x29
	.4byte	.LVL222
	.4byte	0xad7
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x32
	.4byte	0x57c
	.4byte	0x100b
	.byte	0x33
	.4byte	0x33
	.byte	0xb
	.byte	0
	.byte	0x1e
	.4byte	.LASF269
	.byte	0x1
	.2byte	0x119
	.byte	0x5
	.4byte	0x3a
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x1
	.byte	0x9c
	.4byte	0x10f4
	.byte	0x1f
	.4byte	.LASF237
	.byte	0x1
	.2byte	0x119
	.byte	0x1a
	.4byte	0x3a
	.4byte	.LLST15
	.byte	0x1f
	.4byte	.LASF270
	.byte	0x1
	.2byte	0x119
	.byte	0x29
	.4byte	0x10c
	.4byte	.LLST16
	.byte	0x21
	.string	"div"
	.byte	0x1
	.2byte	0x11b
	.byte	0xe
	.4byte	0x10c
	.4byte	.LLST17
	.byte	0x22
	.4byte	.LASF271
	.byte	0x1
	.2byte	0x11c
	.byte	0xe
	.4byte	0x10c
	.4byte	.LLST18
	.byte	0x22
	.4byte	.LASF272
	.byte	0x1
	.2byte	0x11d
	.byte	0xe
	.4byte	0x10c
	.4byte	.LLST19
	.byte	0x2c
	.4byte	.LVL144
	.4byte	0x19ce
	.byte	0x2c
	.4byte	.LVL145
	.4byte	0x19da
	.byte	0x2b
	.4byte	.LVL146
	.4byte	0x19e7
	.4byte	0x10cc
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x2a
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x2a
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x133
	.byte	0x2a
	.byte	0x1
	.byte	0x5f
	.byte	0xb
	.byte	0x79
	.byte	0
	.byte	0xf7
	.byte	0x33
	.byte	0x78
	.byte	0
	.byte	0xf7
	.byte	0x33
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0
	.byte	0x2b
	.4byte	.LVL147
	.4byte	0x1a8d
	.4byte	0x10ea
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0x7f
	.byte	0
	.byte	0x2c
	.4byte	.LVL151
	.4byte	0x19f3
	.byte	0
	.byte	0x34
	.4byte	.LASF328
	.byte	0x1
	.byte	0xfe
	.byte	0xd
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x1
	.byte	0x9c
	.4byte	0x117a
	.byte	0x22
	.4byte	.LASF260
	.byte	0x1
	.2byte	0x100
	.byte	0x10
	.4byte	0xe85
	.4byte	.LLST0
	.byte	0x2b
	.4byte	.LVL0
	.4byte	0x1a9a
	.4byte	0x112e
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x2c
	.4byte	.LVL1
	.4byte	0x19ce
	.byte	0x2c
	.4byte	.LVL2
	.4byte	0x19da
	.byte	0x35
	.4byte	.LVL3
	.4byte	0x19e7
	.4byte	0x1170
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x2a
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x2a
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x104
	.byte	0
	.byte	0x2c
	.4byte	.LVL4
	.4byte	0x19f3
	.byte	0
	.byte	0x36
	.4byte	.LASF273
	.byte	0x1
	.byte	0xc1
	.byte	0x5
	.4byte	0x3a
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x1
	.byte	0x9c
	.4byte	0x13c3
	.byte	0x37
	.4byte	.LASF274
	.byte	0x1
	.byte	0xc1
	.byte	0x1e
	.4byte	0x13c3
	.4byte	.LLST12
	.byte	0x37
	.4byte	.LASF275
	.byte	0x1
	.byte	0xc1
	.byte	0x2c
	.4byte	0xdc
	.4byte	.LLST13
	.byte	0x17
	.4byte	.LASF276
	.byte	0x1
	.byte	0xc3
	.byte	0x15
	.4byte	0xf4
	.byte	0x5
	.byte	0x3
	.4byte	tsen_offset.0
	.byte	0x38
	.string	"val"
	.byte	0x1
	.byte	0xc4
	.byte	0xb
	.4byte	0x25
	.4byte	.LLST14
	.byte	0x39
	.4byte	.Ldebug_ranges0+0x40
	.4byte	0x135e
	.byte	0x17
	.4byte	.LASF244
	.byte	0x1
	.byte	0xc8
	.byte	0x16
	.4byte	0x86a
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0x17
	.4byte	.LASF245
	.byte	0x1
	.byte	0xd9
	.byte	0x1b
	.4byte	0x923
	.byte	0x3
	.byte	0x91
	.byte	0x94,0x7f
	.byte	0x2b
	.4byte	.LVL106
	.4byte	0x1aa6
	.4byte	0x1223
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR3
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x34
	.byte	0
	.byte	0x2b
	.4byte	.LVL107
	.4byte	0x1a8d
	.4byte	0x1240
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x37
	.byte	0
	.byte	0x2c
	.4byte	.LVL108
	.4byte	0x1a3f
	.byte	0x2c
	.4byte	.LVL109
	.4byte	0x1a4c
	.byte	0x2c
	.4byte	.LVL110
	.4byte	0x1a59
	.byte	0x2b
	.4byte	.LVL111
	.4byte	0x1a66
	.4byte	0x1270
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0
	.byte	0x2b
	.4byte	.LVL112
	.4byte	0x1ab1
	.4byte	0x128d
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3e
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x47
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x2b
	.4byte	.LVL113
	.4byte	0x1abe
	.4byte	0x12a0
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x2b
	.4byte	.LVL114
	.4byte	0x1a80
	.4byte	0x12b5
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x94,0x7f
	.byte	0
	.byte	0x2b
	.4byte	.LVL115
	.4byte	0x1acb
	.4byte	0x12c9
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x2c
	.4byte	.LVL116
	.4byte	0x19ce
	.byte	0x2c
	.4byte	.LVL117
	.4byte	0x19da
	.byte	0x2b
	.4byte	.LVL118
	.4byte	0x19e7
	.4byte	0x130a
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x2a
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x2a
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0xec
	.byte	0
	.byte	0x2c
	.4byte	.LVL128
	.4byte	0x19f3
	.byte	0x2c
	.4byte	.LVL129
	.4byte	0x19ce
	.byte	0x2c
	.4byte	.LVL130
	.4byte	0x19da
	.byte	0x2b
	.4byte	.LVL131
	.4byte	0x19e7
	.4byte	0x1354
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x2a
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x2a
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0xee
	.byte	0
	.byte	0x2c
	.4byte	.LVL132
	.4byte	0x19f3
	.byte	0
	.byte	0x2c
	.4byte	.LVL119
	.4byte	0x1ad8
	.byte	0x2c
	.4byte	.LVL121
	.4byte	0x19ce
	.byte	0x2c
	.4byte	.LVL122
	.4byte	0x19da
	.byte	0x2c
	.4byte	.LVL123
	.4byte	0x1ae5
	.byte	0x2b
	.4byte	.LVL124
	.4byte	0x19e7
	.4byte	0x13b9
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x4
	.byte	0x91
	.byte	0x8c,0x7f
	.byte	0x6
	.byte	0x2a
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x2a
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0xf3
	.byte	0
	.byte	0x2c
	.4byte	.LVL134
	.4byte	0x19f3
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xe8
	.byte	0x36
	.4byte	.LASF277
	.byte	0x1
	.byte	0xbb
	.byte	0x5
	.4byte	0x3a
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x1
	.byte	0x9c
	.4byte	0x15dc
	.byte	0x3a
	.4byte	0x17b0
	.4byte	.LBB17
	.4byte	.Ldebug_ranges0+0x28
	.byte	0x1
	.byte	0xbd
	.byte	0x5
	.byte	0x2f
	.4byte	.Ldebug_ranges0+0x28
	.byte	0x3b
	.4byte	0x17bd
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0x3b
	.4byte	0x17c9
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x3c
	.4byte	0x17d5
	.4byte	.LLST8
	.byte	0x3c
	.4byte	0x17df
	.4byte	.LLST9
	.byte	0x3c
	.4byte	0x17ea
	.4byte	.LLST10
	.byte	0x3c
	.4byte	0x17f5
	.4byte	.LLST11
	.byte	0x2c
	.4byte	.LVL64
	.4byte	0x1a59
	.byte	0x2c
	.4byte	.LVL65
	.4byte	0x1a3f
	.byte	0x2c
	.4byte	.LVL66
	.4byte	0x1a4c
	.byte	0x2b
	.4byte	.LVL67
	.4byte	0x1a66
	.4byte	0x1460
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0x2b
	.4byte	.LVL68
	.4byte	0x1ab1
	.4byte	0x147d
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3e
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x47
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x2b
	.4byte	.LVL69
	.4byte	0x1abe
	.4byte	0x1490
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x2b
	.4byte	.LVL70
	.4byte	0x1a80
	.4byte	0x14a7
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0
	.byte	0x2c
	.4byte	.LVL71
	.4byte	0x1802
	.byte	0x2c
	.4byte	.LVL73
	.4byte	0x19a7
	.byte	0x2c
	.4byte	.LVL74
	.4byte	0x1aee
	.byte	0x2c
	.4byte	.LVL75
	.4byte	0x1afb
	.byte	0x2b
	.4byte	.LVL76
	.4byte	0x1b08
	.4byte	0x14ec
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0
	.byte	0x2c
	.4byte	.LVL78
	.4byte	0x1aee
	.byte	0x2c
	.4byte	.LVL80
	.4byte	0x19ce
	.byte	0x2c
	.4byte	.LVL81
	.4byte	0x19da
	.byte	0x2b
	.4byte	.LVL82
	.4byte	0x19e7
	.4byte	0x1542
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x2a
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x2a
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x6d
	.byte	0x2a
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x60
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0x2c
	.4byte	.LVL83
	.4byte	0x1b15
	.byte	0x2c
	.4byte	.LVL87
	.4byte	0x19f3
	.byte	0x2c
	.4byte	.LVL88
	.4byte	0x19ce
	.byte	0x2c
	.4byte	.LVL89
	.4byte	0x19da
	.byte	0x2c
	.4byte	.LVL90
	.4byte	0x1ae5
	.byte	0x2c
	.4byte	.LVL91
	.4byte	0x1b22
	.byte	0x2c
	.4byte	.LVL92
	.4byte	0x1b2b
	.byte	0x2b
	.4byte	.LVL93
	.4byte	0x19e7
	.4byte	0x15b6
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x2a
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x6f
	.byte	0
	.byte	0x2c
	.4byte	.LVL94
	.4byte	0x19f3
	.byte	0x2c
	.4byte	.LVL96
	.4byte	0x1b34
	.byte	0x29
	.4byte	.LVL97
	.4byte	0x1b41
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x1f4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x36
	.4byte	.LASF278
	.byte	0x1
	.byte	0x8e
	.byte	0x5
	.4byte	0x3a
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x1
	.byte	0x9c
	.4byte	0x1700
	.byte	0x3d
	.string	"tmp"
	.byte	0x1
	.byte	0x8e
	.byte	0x1b
	.4byte	0x13c3
	.4byte	.LLST3
	.byte	0x17
	.4byte	.LASF279
	.byte	0x1
	.byte	0x90
	.byte	0x15
	.4byte	0x8ba
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x17
	.4byte	.LASF280
	.byte	0x1
	.byte	0x91
	.byte	0xe
	.4byte	0x10c
	.byte	0x2
	.byte	0x91
	.byte	0x44
	.byte	0x38
	.string	"i"
	.byte	0x1
	.byte	0x92
	.byte	0xd
	.4byte	0xdc
	.4byte	.LLST4
	.byte	0x38
	.string	"v0"
	.byte	0x1
	.byte	0x93
	.byte	0xe
	.4byte	0x10c
	.4byte	.LLST5
	.byte	0x38
	.string	"v1"
	.byte	0x1
	.byte	0x93
	.byte	0x13
	.4byte	0x10c
	.4byte	.LLST6
	.byte	0x3e
	.4byte	.LASF281
	.byte	0x1
	.byte	0x94
	.byte	0xb
	.4byte	0x25
	.4byte	.LLST7
	.byte	0x3f
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.4byte	0x168f
	.byte	0x40
	.4byte	.LASF285
	.byte	0x1
	.byte	0x9a
	.byte	0x19
	.4byte	0x167f
	.byte	0x1a
	.4byte	0x3a
	.byte	0
	.byte	0x29
	.4byte	.LVL60
	.4byte	0x1b4d
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x2c
	.4byte	.LVL41
	.4byte	0x19a7
	.byte	0x2c
	.4byte	.LVL42
	.4byte	0x1aee
	.byte	0x2c
	.4byte	.LVL43
	.4byte	0x1afb
	.byte	0x2b
	.4byte	.LVL44
	.4byte	0x1b08
	.4byte	0x16c9
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x44
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0
	.byte	0x2c
	.4byte	.LVL46
	.4byte	0x1aee
	.byte	0x2c
	.4byte	.LVL49
	.4byte	0x1ae5
	.byte	0x2c
	.4byte	.LVL50
	.4byte	0x1b22
	.byte	0x2c
	.4byte	.LVL51
	.4byte	0x1b2b
	.byte	0x2c
	.4byte	.LVL52
	.4byte	0x1b15
	.byte	0x2c
	.4byte	.LVL62
	.4byte	0x1b34
	.byte	0
	.byte	0x36
	.4byte	.LASF282
	.byte	0x1
	.byte	0x7b
	.byte	0x5
	.4byte	0x3a
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x1
	.byte	0x9c
	.4byte	0x17b0
	.byte	0x2b
	.4byte	.LVL29
	.4byte	0x1892
	.4byte	0x172d
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x2c
	.4byte	.LVL30
	.4byte	0x1a59
	.byte	0x2c
	.4byte	.LVL31
	.4byte	0x1a3f
	.byte	0x2c
	.4byte	.LVL32
	.4byte	0x1a4c
	.byte	0x2b
	.4byte	.LVL33
	.4byte	0x1a66
	.4byte	0x175f
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0x2b
	.4byte	.LVL34
	.4byte	0x1ab1
	.4byte	0x177c
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3e
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x47
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x2b
	.4byte	.LVL35
	.4byte	0x1abe
	.4byte	0x178f
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x2b
	.4byte	.LVL36
	.4byte	0x1a80
	.4byte	0x17a6
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0
	.byte	0x2c
	.4byte	.LVL37
	.4byte	0x1802
	.byte	0
	.byte	0x41
	.4byte	.LASF284
	.byte	0x1
	.byte	0x45
	.byte	0xd
	.byte	0x1
	.4byte	0x1802
	.byte	0x42
	.4byte	.LASF279
	.byte	0x1
	.byte	0x47
	.byte	0x12
	.4byte	0x8ba
	.byte	0x42
	.4byte	.LASF280
	.byte	0x1
	.byte	0x48
	.byte	0xb
	.4byte	0x10c
	.byte	0x43
	.string	"i"
	.byte	0x1
	.byte	0x49
	.byte	0xd
	.4byte	0xdc
	.byte	0x43
	.string	"v0"
	.byte	0x1
	.byte	0x4a
	.byte	0xe
	.4byte	0x10c
	.byte	0x43
	.string	"v1"
	.byte	0x1
	.byte	0x4a
	.byte	0x13
	.4byte	0x10c
	.byte	0x42
	.4byte	.LASF281
	.byte	0x1
	.byte	0x4b
	.byte	0xb
	.4byte	0x25
	.byte	0
	.byte	0x44
	.4byte	.LASF329
	.byte	0x1
	.byte	0x34
	.byte	0x6
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x1
	.byte	0x9c
	.4byte	0x1892
	.byte	0x2c
	.4byte	.LVL18
	.4byte	0x1b15
	.byte	0x2c
	.4byte	.LVL19
	.4byte	0x19a7
	.byte	0x2b
	.4byte	.LVL20
	.4byte	0x1b41
	.4byte	0x183e
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0x2c
	.4byte	.LVL21
	.4byte	0x1aee
	.byte	0x2c
	.4byte	.LVL22
	.4byte	0x1afb
	.byte	0x2c
	.4byte	.LVL23
	.4byte	0x1b34
	.byte	0x2c
	.4byte	.LVL24
	.4byte	0x19a7
	.byte	0x2b
	.4byte	.LVL25
	.4byte	0x1b41
	.4byte	0x1876
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0x2c
	.4byte	.LVL26
	.4byte	0x1aee
	.byte	0x2c
	.4byte	.LVL27
	.4byte	0x1afb
	.byte	0x45
	.4byte	.LVL28
	.4byte	0x1b15
	.byte	0
	.byte	0x46
	.4byte	.LASF286
	.byte	0x1
	.byte	0x2e
	.byte	0x6
	.byte	0x1
	.4byte	0x18ac
	.byte	0x47
	.string	"div"
	.byte	0x1
	.byte	0x2e
	.byte	0x1d
	.4byte	0xdc
	.byte	0
	.byte	0x48
	.4byte	0x1892
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x1
	.byte	0x9c
	.4byte	0x194b
	.byte	0x2e
	.4byte	0x189f
	.4byte	.LLST1
	.byte	0x49
	.4byte	0x1892
	.4byte	.LBB6
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x2e
	.byte	0x6
	.4byte	0x1930
	.byte	0x2e
	.4byte	0x189f
	.4byte	.LLST2
	.byte	0x2c
	.4byte	.LVL12
	.4byte	0x19ce
	.byte	0x2c
	.4byte	.LVL13
	.4byte	0x19da
	.byte	0x35
	.4byte	.LVL15
	.4byte	0x19e7
	.4byte	0x1926
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x2a
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x2a
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x31
	.byte	0
	.byte	0x2c
	.4byte	.LVL16
	.4byte	0x19f3
	.byte	0
	.byte	0x29
	.4byte	.LVL10
	.4byte	0x1a8d
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x48
	.4byte	0xad7
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x1
	.byte	0x9c
	.4byte	0x198d
	.byte	0x2e
	.4byte	0xae9
	.4byte	.LLST30
	.byte	0x25
	.4byte	0xaf6
	.byte	0x23
	.4byte	0xad7
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.byte	0x1
	.2byte	0x1f6
	.byte	0x5
	.byte	0x2e
	.4byte	0xae9
	.4byte	.LLST31
	.byte	0x25
	.4byte	0xaf6
	.byte	0
	.byte	0
	.byte	0x4a
	.4byte	.LASF287
	.4byte	.LASF287
	.byte	0x6
	.2byte	0x277
	.byte	0xd
	.byte	0x4a
	.4byte	.LASF288
	.4byte	.LASF288
	.byte	0x8
	.2byte	0x144
	.byte	0x6
	.byte	0x4a
	.4byte	.LASF289
	.4byte	.LASF289
	.byte	0x9
	.2byte	0x1fc
	.byte	0x6
	.byte	0x4a
	.4byte	.LASF290
	.4byte	.LASF290
	.byte	0x8
	.2byte	0x139
	.byte	0x6
	.byte	0x4a
	.4byte	.LASF291
	.4byte	.LASF291
	.byte	0x8
	.2byte	0x140
	.byte	0x6
	.byte	0x4b
	.4byte	.LASF292
	.4byte	.LASF292
	.byte	0xd
	.byte	0x98
	.byte	0xc
	.byte	0x4a
	.4byte	.LASF293
	.4byte	.LASF293
	.byte	0xe
	.2byte	0x558
	.byte	0xc
	.byte	0x4b
	.4byte	.LASF294
	.4byte	.LASF294
	.byte	0xf
	.byte	0x81
	.byte	0x6
	.byte	0x4a
	.4byte	.LASF295
	.4byte	.LASF295
	.byte	0xe
	.2byte	0x547
	.byte	0xc
	.byte	0x4b
	.4byte	.LASF296
	.4byte	.LASF296
	.byte	0x10
	.byte	0x91
	.byte	0x7
	.byte	0x4a
	.4byte	.LASF297
	.4byte	.LASF297
	.byte	0x8
	.2byte	0x141
	.byte	0x6
	.byte	0x4a
	.4byte	.LASF298
	.4byte	.LASF298
	.byte	0x8
	.2byte	0x142
	.byte	0x6
	.byte	0x4a
	.4byte	.LASF299
	.4byte	.LASF299
	.byte	0x8
	.2byte	0x143
	.byte	0x6
	.byte	0x4b
	.4byte	.LASF300
	.4byte	.LASF300
	.byte	0x11
	.byte	0x2e
	.byte	0x5
	.byte	0x4a
	.4byte	.LASF301
	.4byte	.LASF301
	.byte	0x9
	.2byte	0x1f8
	.byte	0x6
	.byte	0x4a
	.4byte	.LASF302
	.4byte	.LASF302
	.byte	0x9
	.2byte	0x1f7
	.byte	0x6
	.byte	0x4a
	.4byte	.LASF303
	.4byte	.LASF303
	.byte	0x9
	.2byte	0x1f6
	.byte	0x6
	.byte	0x4a
	.4byte	.LASF304
	.4byte	.LASF304
	.byte	0x9
	.2byte	0x1f9
	.byte	0x6
	.byte	0x4a
	.4byte	.LASF305
	.4byte	.LASF305
	.byte	0x9
	.2byte	0x1fb
	.byte	0x6
	.byte	0x4a
	.4byte	.LASF306
	.4byte	.LASF306
	.byte	0x9
	.2byte	0x1fe
	.byte	0x6
	.byte	0x4a
	.4byte	.LASF307
	.4byte	.LASF307
	.byte	0x6
	.2byte	0x262
	.byte	0xd
	.byte	0x4b
	.4byte	.LASF308
	.4byte	.LASF308
	.byte	0x11
	.byte	0x31
	.byte	0x7
	.byte	0x4c
	.4byte	.LASF330
	.4byte	.LASF331
	.byte	0x12
	.byte	0
	.byte	0x4a
	.4byte	.LASF309
	.4byte	.LASF309
	.byte	0x9
	.2byte	0x1fa
	.byte	0x6
	.byte	0x4a
	.4byte	.LASF310
	.4byte	.LASF310
	.byte	0x9
	.2byte	0x20b
	.byte	0x6
	.byte	0x4a
	.4byte	.LASF311
	.4byte	.LASF311
	.byte	0x9
	.2byte	0x20f
	.byte	0xd
	.byte	0x4a
	.4byte	.LASF312
	.4byte	.LASF312
	.byte	0x9
	.2byte	0x212
	.byte	0x7
	.byte	0x4d
	.4byte	.LASF317
	.4byte	.LASF317
	.byte	0x4a
	.4byte	.LASF313
	.4byte	.LASF313
	.byte	0x9
	.2byte	0x1ff
	.byte	0x9
	.byte	0x4a
	.4byte	.LASF314
	.4byte	.LASF314
	.byte	0x9
	.2byte	0x202
	.byte	0xa
	.byte	0x4a
	.4byte	.LASF315
	.4byte	.LASF315
	.byte	0x9
	.2byte	0x203
	.byte	0x6
	.byte	0x4a
	.4byte	.LASF316
	.4byte	.LASF316
	.byte	0x9
	.2byte	0x209
	.byte	0x6
	.byte	0x4d
	.4byte	.LASF318
	.4byte	.LASF318
	.byte	0x4d
	.4byte	.LASF319
	.4byte	.LASF319
	.byte	0x4a
	.4byte	.LASF320
	.4byte	.LASF320
	.byte	0x9
	.2byte	0x20a
	.byte	0x6
	.byte	0x4b
	.4byte	.LASF321
	.4byte	.LASF321
	.byte	0x4
	.byte	0x88
	.byte	0x6
	.byte	0x4b
	.4byte	.LASF285
	.4byte	.LASF285
	.byte	0x1
	.byte	0x9a
	.byte	0x19
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
	.byte	0x5
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
	.byte	0xc
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
	.byte	0xd
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
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0x13
	.byte	0x13
	.byte	0x1
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
	.byte	0x14
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x16
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
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x18
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
	.byte	0x19
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1b
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1c
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1e
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
	.byte	0x1f
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
	.byte	0x20
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
	.byte	0x5
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x23
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
	.byte	0
	.byte	0
	.byte	0x24
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x25
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x26
	.byte	0x2e
	.byte	0x1
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x27
	.byte	0x34
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
	.byte	0
	.byte	0
	.byte	0x28
	.byte	0x34
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x29
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2a
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x2b
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
	.byte	0x2c
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2d
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
	.byte	0x2e
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2f
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x30
	.byte	0x2e
	.byte	0x1
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x31
	.byte	0x5
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
	.byte	0
	.byte	0
	.byte	0x32
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x33
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x34
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x35
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
	.byte	0x36
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
	.byte	0x37
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
	.byte	0x38
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
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x3a
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
	.byte	0x3b
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x3c
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x3d
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
	.byte	0x3e
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
	.byte	0x3f
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x40
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
	.byte	0x3c
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x41
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
	.byte	0x42
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
	.byte	0x43
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
	.byte	0x44
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
	.byte	0x45
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
	.byte	0x46
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x47
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
	.byte	0x48
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
	.byte	0x49
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
	.byte	0x4a
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
	.byte	0x4b
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
	.byte	0x4c
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
	.byte	0x4d
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST27:
	.4byte	.LVL193
	.4byte	.LVL195
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL195
	.4byte	.LVL196
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL196
	.4byte	.LVL197
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL197
	.4byte	.LVL202
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL202
	.4byte	.LFE45
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL193
	.4byte	.LVL194
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL194
	.4byte	.LFE45
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL198
	.4byte	.LVL199
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL201
	.4byte	.LVL202
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL190
	.4byte	.LVL191
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL191
	.4byte	.LVL192-1
	.2byte	0x2
	.byte	0x7b
	.byte	0
	.4byte	.LVL192-1
	.4byte	.LFE43
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL152
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL153
	.4byte	.LVL154
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL154
	.4byte	.LVL155-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL155-1
	.4byte	.LVL159
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL159
	.4byte	.LVL160
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL160
	.4byte	.LFE41
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL152
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL153
	.4byte	.LVL154
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL154
	.4byte	.LVL155-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL155-1
	.4byte	.LVL159
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL159
	.4byte	.LVL161-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL161-1
	.4byte	.LFE41
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL172
	.4byte	.LVL173-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL173-1
	.4byte	.LVL176
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL176
	.4byte	.LVL177
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL177
	.4byte	.LVL179
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL179
	.4byte	.LVL181-1
	.2byte	0x2
	.byte	0x78
	.byte	0x4
	.4byte	.LVL181-1
	.4byte	.LFE41
	.2byte	0x3
	.byte	0x82
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL178
	.4byte	.LVL180
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL178
	.4byte	.LVL179
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL179
	.4byte	.LVL180
	.2byte	0x2
	.byte	0x78
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL178
	.4byte	.LVL180
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL209
	.4byte	.LVL210-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL210-1
	.4byte	.LVL214
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL214
	.4byte	.LVL221
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL221
	.4byte	.LVL224
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL224
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL209
	.4byte	.LVL210-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL210-1
	.4byte	.LVL220
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL220
	.4byte	.LVL221
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL221
	.4byte	.LFE39
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL214
	.4byte	.LVL216
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL216
	.4byte	.LVL219
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL223
	.4byte	.LFE39
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL135
	.4byte	.LVL144-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL144-1
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL135
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL140
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL139
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL143
	.4byte	.LVL148
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL150
	.4byte	.LFE38
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL138
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL150
	.4byte	.LFE38
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL136
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LFE37
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL103
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL105
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL125
	.4byte	.LVL127
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL127
	.4byte	.LFE36
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL104
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL103
	.4byte	.LVL120
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0
	.4byte	.LVL120
	.4byte	.LVL126
	.2byte	0x2
	.byte	0x90
	.byte	0x28
	.4byte	.LVL127
	.4byte	.LVL133
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0
	.4byte	.LVL133
	.4byte	.LFE36
	.2byte	0x2
	.byte	0x90
	.byte	0x28
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL63
	.4byte	.LVL72
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL63
	.4byte	.LVL72
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL63
	.4byte	.LVL72
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL86
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL63
	.4byte	.LVL72
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0
	.4byte	.LVL79
	.4byte	.LVL84
	.2byte	0x26
	.byte	0x84
	.byte	0
	.byte	0xf7
	.byte	0x3a
	.byte	0xf7
	.byte	0x25
	.byte	0x85
	.byte	0
	.byte	0xf7
	.byte	0x33
	.byte	0xf7
	.byte	0x25
	.byte	0x1c
	.byte	0xf4
	.byte	0x25
	.byte	0x4
	.4byte	0x4510e000
	.byte	0x1c
	.byte	0xf7
	.byte	0x2c
	.byte	0xf4
	.byte	0x2c
	.byte	0x8
	.4byte	0x6e978d50
	.4byte	0x401f0312
	.byte	0x1b
	.byte	0xf7
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL95
	.2byte	0x26
	.byte	0x84
	.byte	0
	.byte	0xf7
	.byte	0x3a
	.byte	0xf7
	.byte	0x25
	.byte	0x85
	.byte	0
	.byte	0xf7
	.byte	0x33
	.byte	0xf7
	.byte	0x25
	.byte	0x1c
	.byte	0xf4
	.byte	0x25
	.byte	0x4
	.4byte	0x4510e000
	.byte	0x1c
	.byte	0xf7
	.byte	0x2c
	.byte	0xf4
	.byte	0x2c
	.byte	0x8
	.4byte	0x6e978d50
	.4byte	0x401f0312
	.byte	0x1b
	.byte	0xf7
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL40
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL54
	.4byte	.LVL57
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x3
	.byte	0x78
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x3
	.byte	0x78
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL57
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL57
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0xc
	.byte	0xf5
	.byte	0x2a
	.byte	0x25
	.byte	0xf4
	.byte	0x25
	.byte	0x4
	.4byte	0x4510e000
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL49-1
	.2byte	0x13
	.byte	0x82
	.byte	0
	.byte	0xf7
	.byte	0x3a
	.byte	0xf7
	.byte	0x25
	.byte	0xf5
	.byte	0x2f
	.byte	0x25
	.byte	0x1c
	.byte	0xf4
	.byte	0x25
	.byte	0x4
	.4byte	0x4510e000
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL49-1
	.4byte	.LVL50
	.2byte	0x16
	.byte	0x82
	.byte	0
	.byte	0xf7
	.byte	0x3a
	.byte	0xf7
	.byte	0x25
	.byte	0x83
	.byte	0
	.byte	0xf7
	.byte	0x33
	.byte	0xf7
	.byte	0x25
	.byte	0x1c
	.byte	0xf4
	.byte	0x25
	.byte	0x4
	.4byte	0x4510e000
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL51-1
	.2byte	0x6
	.byte	0xf5
	.byte	0xa
	.byte	0x2c
	.byte	0xf7
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL204
	.4byte	.LVL205
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL205
	.4byte	.LVL207
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL207
	.4byte	.LVL208
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL208
	.4byte	.LFE46
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL206
	.4byte	.LVL207
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x84
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	0
	.4byte	0
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	.LBB20
	.4byte	.LBE20
	.4byte	0
	.4byte	0
	.4byte	.LBB21
	.4byte	.LBE21
	.4byte	.LBB22
	.4byte	.LBE22
	.4byte	0
	.4byte	0
	.4byte	.LBB25
	.4byte	.LBE25
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	0
	.4byte	0
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF162:
	.string	"ADC_PGA_GAIN_32"
.LASF25:
	.string	"ERROR"
.LASF67:
	.string	"GLB_ADC_CLK_96M"
.LASF212:
	.string	"ADC_FIFO_THRESHOLD_16"
.LASF263:
	.string	"chan"
.LASF17:
	.string	"char"
.LASF266:
	.string	"pos_chlist_single"
.LASF220:
	.string	"BLOG_LEVEL_WARN"
.LASF176:
	.string	"ADC_PGA_VCM_Type"
.LASF221:
	.string	"BLOG_LEVEL_ERROR"
.LASF56:
	.string	"GLB_GPIO_Type"
.LASF104:
	.string	"srcDmaAddr"
.LASF248:
	.string	"raw_flag"
.LASF298:
	.string	"DMA_LLI_Init"
.LASF64:
	.string	"GPIO_FUN_ANALOG"
.LASF174:
	.string	"ADC_PGA_VCM_1P4V"
.LASF287:
	.string	"GLB_GPIO_Func_Init"
.LASF179:
	.string	"ADC_VREF_3P2V"
.LASF215:
	.string	"dmaEn"
.LASF11:
	.string	"__int32_t"
.LASF199:
	.string	"inputMode"
.LASF60:
	.string	"GPIO_FUN_I2C"
.LASF150:
	.string	"ADC_CLK_DIV_12"
.LASF151:
	.string	"ADC_CLK_DIV_16"
.LASF268:
	.string	"adc_fifo_cfg"
.LASF227:
	.string	"level"
.LASF299:
	.string	"DMA_LLI_Update"
.LASF264:
	.string	"channel_num"
.LASF144:
	.string	"ADC_V11_SEL_1P18V"
.LASF314:
	.string	"ADC_Read_FIFO"
.LASF237:
	.string	"mode"
.LASF331:
	.string	"__builtin_memcpy"
.LASF260:
	.string	"pstctx"
.LASF99:
	.string	"DMA_REQ_NONE"
.LASF251:
	.string	"bl_adc_parse_data"
.LASF132:
	.string	"ADC_CHAN_SENP2"
.LASF20:
	.string	"int16_t"
.LASF269:
	.string	"bl_adc_freq_init"
.LASF272:
	.string	"mode_freq"
.LASF152:
	.string	"ADC_CLK_DIV_20"
.LASF313:
	.string	"ADC_Get_FIFO_Count"
.LASF153:
	.string	"ADC_CLK_DIV_24"
.LASF182:
	.string	"ADC_INPUT_SINGLE_END"
.LASF183:
	.string	"ADC_INPUT_DIFF"
.LASF229:
	.string	"blog_info_t"
.LASF257:
	.string	"pstlli"
.LASF69:
	.string	"TransferSize"
.LASF115:
	.string	"ADC_CHAN3"
.LASF59:
	.string	"GPIO_FUN_SPI"
.LASF61:
	.string	"GPIO_FUN_UART"
.LASF271:
	.string	"source_freq"
.LASF175:
	.string	"ADC_PGA_VCM_1P6V"
.LASF23:
	.string	"uint32_t"
.LASF18:
	.string	"int8_t"
.LASF184:
	.string	"ADC_SIG_INPUT_Type"
.LASF122:
	.string	"ADC_CHAN10"
.LASF254:
	.string	"bl_adc_start"
.LASF110:
	.string	"dstPeriph"
.LASF106:
	.string	"nextLLI"
.LASF0:
	.string	"float"
.LASF282:
	.string	"test_adc_init"
.LASF134:
	.string	"ADC_CHAN_SENP0"
.LASF133:
	.string	"ADC_CHAN_SENP1"
.LASF202:
	.string	"offsetCalibVal"
.LASF131:
	.string	"ADC_CHAN_SENP3"
.LASF294:
	.string	"bl_printk"
.LASF288:
	.string	"DMA_IntMask"
.LASF154:
	.string	"ADC_CLK_DIV_32"
.LASF279:
	.string	"result"
.LASF16:
	.string	"long long unsigned int"
.LASF293:
	.string	"xTaskGetTickCountFromISR"
.LASF246:
	.string	"parr"
.LASF66:
	.string	"GPIO_FUN_JTAG"
.LASF135:
	.string	"ADC_CHAN_GND"
.LASF171:
	.string	"ADC_CHOP_MOD_Type"
.LASF234:
	.string	"_fsymf_info_hosalbl_adc"
.LASF304:
	.string	"ADC_Init"
.LASF101:
	.string	"DMA_INT_TCOMPLETED"
.LASF105:
	.string	"destDmaAddr"
.LASF97:
	.string	"DMA_REQ_GPADC0"
.LASF98:
	.string	"DMA_REQ_GPADC1"
.LASF78:
	.string	"DMA_TRNS_WIDTH_16BITS"
.LASF322:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF303:
	.string	"ADC_Reset"
.LASF296:
	.string	"pvPortMalloc"
.LASF226:
	.string	"_blog_info"
.LASF280:
	.string	"regVal"
.LASF75:
	.string	"reserved_25"
.LASF289:
	.string	"ADC_Start"
.LASF206:
	.string	"value"
.LASF86:
	.string	"DMA_BURST_SIZE_4"
.LASF243:
	.string	"adc_ctx_t"
.LASF315:
	.string	"ADC_Parse_Result"
.LASF139:
	.string	"ADC_V18_SEL_1P82V"
.LASF242:
	.string	"data_size"
.LASF158:
	.string	"ADC_PGA_GAIN_2"
.LASF73:
	.string	"DWidth"
.LASF327:
	.string	"adc_calc_data"
.LASF76:
	.string	"Prot"
.LASF223:
	.string	"BLOG_LEVEL_NEVER"
.LASF47:
	.string	"GLB_GPIO_PIN_15"
.LASF146:
	.string	"ADC_V11_SEL_Type"
.LASF51:
	.string	"GLB_GPIO_PIN_19"
.LASF233:
	.string	"_fsymf_level_hosalbl_adc"
.LASF142:
	.string	"ADC_V11_SEL_1P0V"
.LASF270:
	.string	"freq"
.LASF318:
	.string	"__divdf3"
.LASF250:
	.string	"gpio_num"
.LASF72:
	.string	"SWidth"
.LASF70:
	.string	"SBSize"
.LASF9:
	.string	"__uint16_t"
.LASF319:
	.string	"__truncdfsf2"
.LASF145:
	.string	"ADC_V11_SEL_1P26V"
.LASF147:
	.string	"ADC_CLK_DIV_1"
.LASF155:
	.string	"ADC_CLK_Type"
.LASF277:
	.string	"test_adc_test"
.LASF91:
	.string	"DMA_REQ_UART1_RX"
.LASF149:
	.string	"ADC_CLK_DIV_8"
.LASF204:
	.string	"posChan"
.LASF24:
	.string	"SUCCESS"
.LASF295:
	.string	"xTaskGetTickCount"
.LASF219:
	.string	"BLOG_LEVEL_INFO"
.LASF27:
	.string	"DISABLE"
.LASF190:
	.string	"ADC_Data_Width_Type"
.LASF156:
	.string	"ADC_PGA_GAIN_NONE"
.LASF261:
	.string	"dma_ctrl_reg"
.LASF143:
	.string	"ADC_V11_SEL_1P1V"
.LASF309:
	.string	"ADC_Channel_Config"
.LASF71:
	.string	"DBSize"
.LASF180:
	.string	"ADC_VREF_2V"
.LASF278:
	.string	"test_adc_get"
.LASF2:
	.string	"unsigned int"
.LASF58:
	.string	"GPIO_FUN_FLASH"
.LASF258:
	.string	"llibuf"
.LASF19:
	.string	"uint8_t"
.LASF236:
	.string	"adc_ctx"
.LASF62:
	.string	"GPIO_FUN_PWM"
.LASF157:
	.string	"ADC_PGA_GAIN_1"
.LASF65:
	.string	"GPIO_FUN_SWGPIO"
.LASF30:
	.string	"UNMASK"
.LASF159:
	.string	"ADC_PGA_GAIN_4"
.LASF203:
	.string	"ADC_CFG_Type"
.LASF160:
	.string	"ADC_PGA_GAIN_8"
.LASF325:
	.string	"_blog_leve"
.LASF200:
	.string	"resWidth"
.LASF112:
	.string	"ADC_CHAN0"
.LASF113:
	.string	"ADC_CHAN1"
.LASF114:
	.string	"ADC_CHAN2"
.LASF181:
	.string	"ADC_VREF_Type"
.LASF116:
	.string	"ADC_CHAN4"
.LASF117:
	.string	"ADC_CHAN5"
.LASF118:
	.string	"ADC_CHAN6"
.LASF119:
	.string	"ADC_CHAN7"
.LASF120:
	.string	"ADC_CHAN8"
.LASF121:
	.string	"ADC_CHAN9"
.LASF198:
	.string	"vref"
.LASF239:
	.string	"adc_lli"
.LASF284:
	.string	"ADC_tsen_case"
.LASF256:
	.string	"data_num"
.LASF63:
	.string	"GPIO_FUN_EXT_PA"
.LASF15:
	.string	"long long int"
.LASF189:
	.string	"ADC_DATA_WIDTH_16_WITH_256_AVERAGE"
.LASF26:
	.string	"TIMEOUT"
.LASF193:
	.string	"clkDiv"
.LASF186:
	.string	"ADC_DATA_WIDTH_14_WITH_16_AVERAGE"
.LASF240:
	.string	"lli_flag"
.LASF291:
	.string	"DMA_Channel_Enable"
.LASF290:
	.string	"DMA_Enable"
.LASF100:
	.string	"DMA_Periph_Req_Type"
.LASF230:
	.string	"BLOG_HARD_DECLARE_DISABLE"
.LASF311:
	.string	"ADC_Trim_TSEN"
.LASF297:
	.string	"DMA_Channel_Disable"
.LASF217:
	.string	"BLOG_LEVEL_ALL"
.LASF137:
	.string	"ADC_V18_SEL_1P62V"
.LASF273:
	.string	"bl_tsen_adc_get"
.LASF7:
	.string	"__int16_t"
.LASF225:
	.string	"DMA_Control_Reg"
.LASF188:
	.string	"ADC_DATA_WIDTH_16_WITH_128_AVERAGE"
.LASF92:
	.string	"DMA_REQ_UART1_TX"
.LASF328:
	.string	"adc_data_update"
.LASF124:
	.string	"ADC_CHAN_DAC_OUTA"
.LASF125:
	.string	"ADC_CHAN_DAC_OUTB"
.LASF126:
	.string	"ADC_CHAN_TSEN_P"
.LASF109:
	.string	"srcPeriph"
.LASF165:
	.string	"ADC_BIAS_SEL_AON_BANDGAP"
.LASF317:
	.string	"__extendsfdf2"
.LASF292:
	.string	"xPortIsInsideInterrupt"
.LASF42:
	.string	"GLB_GPIO_PIN_10"
.LASF43:
	.string	"GLB_GPIO_PIN_11"
.LASF44:
	.string	"GLB_GPIO_PIN_12"
.LASF45:
	.string	"GLB_GPIO_PIN_13"
.LASF46:
	.string	"GLB_GPIO_PIN_14"
.LASF265:
	.string	"adccfg"
.LASF48:
	.string	"GLB_GPIO_PIN_16"
.LASF49:
	.string	"GLB_GPIO_PIN_17"
.LASF50:
	.string	"GLB_GPIO_PIN_18"
.LASF187:
	.string	"ADC_DATA_WIDTH_16_WITH_64_AVERAGE"
.LASF306:
	.string	"ADC_FIFO_Cfg"
.LASF169:
	.string	"ADC_CHOP_MOD_AZ_PGA_ON"
.LASF4:
	.string	"__int8_t"
.LASF170:
	.string	"ADC_CHOP_MOD_AZ_PGA_RPC_ON"
.LASF249:
	.string	"data"
.LASF185:
	.string	"ADC_DATA_WIDTH_12"
.LASF141:
	.string	"ADC_V18_SEL_Type"
.LASF57:
	.string	"GPIO_FUN_SDIO"
.LASF21:
	.string	"uint16_t"
.LASF196:
	.string	"chopMode"
.LASF108:
	.string	"DMA_LLI_Ctrl_Type"
.LASF111:
	.string	"DMA_LLI_Cfg_Type"
.LASF247:
	.string	"channel"
.LASF68:
	.string	"GLB_ADC_CLK_XCLK"
.LASF323:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_adc.c"
.LASF52:
	.string	"GLB_GPIO_PIN_20"
.LASF53:
	.string	"GLB_GPIO_PIN_21"
.LASF54:
	.string	"GLB_GPIO_PIN_22"
.LASF148:
	.string	"ADC_CLK_DIV_4"
.LASF201:
	.string	"offsetCalibEn"
.LASF77:
	.string	"DMA_TRNS_WIDTH_8BITS"
.LASF255:
	.string	"bl_adc_dma_init"
.LASF8:
	.string	"short int"
.LASF286:
	.string	"ADC_Clock_Init"
.LASF12:
	.string	"long int"
.LASF80:
	.string	"DMA_TRNS_M2M"
.LASF81:
	.string	"DMA_TRNS_M2P"
.LASF32:
	.string	"GLB_GPIO_PIN_0"
.LASF33:
	.string	"GLB_GPIO_PIN_1"
.LASF34:
	.string	"GLB_GPIO_PIN_2"
.LASF35:
	.string	"GLB_GPIO_PIN_3"
.LASF36:
	.string	"GLB_GPIO_PIN_4"
.LASF37:
	.string	"GLB_GPIO_PIN_5"
.LASF38:
	.string	"GLB_GPIO_PIN_6"
.LASF39:
	.string	"GLB_GPIO_PIN_7"
.LASF40:
	.string	"GLB_GPIO_PIN_8"
.LASF41:
	.string	"GLB_GPIO_PIN_9"
.LASF274:
	.string	"temp"
.LASF267:
	.string	"neg_chlist_single"
.LASF140:
	.string	"ADC_V18_SEL_1P92V"
.LASF177:
	.string	"ADC_TSEN_MOD_INTERNAL_DIODE"
.LASF107:
	.string	"dmaCtrl"
.LASF208:
	.string	"ADC_Result_Type"
.LASF320:
	.string	"ADC_SET_TSVBE_HIGH"
.LASF138:
	.string	"ADC_V18_SEL_1P72V"
.LASF3:
	.string	"signed char"
.LASF31:
	.string	"MASK"
.LASF276:
	.string	"tsen_offset"
.LASF127:
	.string	"ADC_CHAN_TSEN_N"
.LASF178:
	.string	"ADC_TSEN_MOD_EXTERNAL_DIODE"
.LASF166:
	.string	"ADC_BIAS_SEL_Type"
.LASF5:
	.string	"__uint8_t"
.LASF164:
	.string	"ADC_BIAS_SEL_MAIN_BANDGAP"
.LASF228:
	.string	"name"
.LASF262:
	.string	"bl_adc_init"
.LASF123:
	.string	"ADC_CHAN11"
.LASF241:
	.string	"chan_init_table"
.LASF207:
	.string	"volt"
.LASF213:
	.string	"ADC_FIFO_Threshold_Type"
.LASF130:
	.string	"ADC_CHAN_VABT_HALF"
.LASF168:
	.string	"ADC_CHOP_MOD_AZ_ON"
.LASF28:
	.string	"ENABLE"
.LASF85:
	.string	"DMA_BURST_SIZE_1"
.LASF93:
	.string	"DMA_REQ_I2C_RX"
.LASF14:
	.string	"long unsigned int"
.LASF102:
	.string	"DMA_INT_ERR"
.LASF192:
	.string	"v11Sel"
.LASF307:
	.string	"GLB_Set_ADC_CLK"
.LASF87:
	.string	"DMA_BURST_SIZE_8"
.LASF22:
	.string	"int32_t"
.LASF103:
	.string	"DMA_INT_ALL"
.LASF285:
	.string	"aos_msleep"
.LASF163:
	.string	"ADC_PGA_GAIN_Type"
.LASF29:
	.string	"BL_Fun_Type"
.LASF136:
	.string	"ADC_Chan_Type"
.LASF324:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/hosal"
.LASF310:
	.string	"ADC_Tsen_Init"
.LASF321:
	.string	"BL602_Delay_MS"
.LASF222:
	.string	"BLOG_LEVEL_ASSERT"
.LASF89:
	.string	"DMA_REQ_UART0_RX"
.LASF191:
	.string	"v18Sel"
.LASF6:
	.string	"unsigned char"
.LASF13:
	.string	"__uint32_t"
.LASF216:
	.string	"ADC_FIFO_Cfg_Type"
.LASF128:
	.string	"ADC_CHAN_VREF"
.LASF231:
	.string	"_fsymc_info_hosal"
.LASF316:
	.string	"ADC_SET_TSVBE_LOW"
.LASF88:
	.string	"DMA_BURST_SIZE_16"
.LASF259:
	.string	"llicfg"
.LASF161:
	.string	"ADC_PGA_GAIN_16"
.LASF55:
	.string	"GLB_GPIO_PIN_MAX"
.LASF312:
	.string	"TSEN_Get_Temp"
.LASF235:
	.string	"bl_adc_cb_t"
.LASF253:
	.string	"adc_pin"
.LASF82:
	.string	"DMA_TRNS_P2M"
.LASF83:
	.string	"DMA_TRNS_P2P"
.LASF232:
	.string	"_fsymc_level_hosal"
.LASF301:
	.string	"ADC_Disable"
.LASF84:
	.string	"DMA_Trans_Dir_Type"
.LASF245:
	.string	"adcFifoCfg"
.LASF197:
	.string	"biasSel"
.LASF244:
	.string	"adcCfg"
.LASF238:
	.string	"channel_data"
.LASF252:
	.string	"bl_adc_gpio_init"
.LASF205:
	.string	"negChan"
.LASF305:
	.string	"ADC_Scan_Channel_Config"
.LASF224:
	.string	"blog_level_t"
.LASF10:
	.string	"short unsigned int"
.LASF94:
	.string	"DMA_REQ_I2C_TX"
.LASF275:
	.string	"log_flag"
.LASF283:
	.string	"adc_dma_lli_init"
.LASF330:
	.string	"memcpy"
.LASF326:
	.string	"bl_adc_get_channel_by_gpio"
.LASF194:
	.string	"gain1"
.LASF195:
	.string	"gain2"
.LASF218:
	.string	"BLOG_LEVEL_DEBUG"
.LASF129:
	.string	"ADC_CHAN_DCTEST"
.LASF329:
	.string	"TSEN_Calibration"
.LASF1:
	.string	"double"
.LASF79:
	.string	"DMA_TRNS_WIDTH_32BITS"
.LASF173:
	.string	"ADC_PGA_VCM_1P2V"
.LASF90:
	.string	"DMA_REQ_UART0_TX"
.LASF74:
	.string	"SLargerD"
.LASF209:
	.string	"ADC_FIFO_THRESHOLD_1"
.LASF210:
	.string	"ADC_FIFO_THRESHOLD_4"
.LASF211:
	.string	"ADC_FIFO_THRESHOLD_8"
.LASF167:
	.string	"ADC_CHOP_MOD_ALL_OFF"
.LASF95:
	.string	"DMA_REQ_SPI_RX"
.LASF308:
	.string	"bl_dma_find_ctx_by_channel"
.LASF214:
	.string	"fifoThreshold"
.LASF172:
	.string	"ADC_PGA_VCM_1V"
.LASF96:
	.string	"DMA_REQ_SPI_TX"
.LASF281:
	.string	"v_error"
.LASF300:
	.string	"bl_dma_irq_register"
.LASF302:
	.string	"ADC_Enable"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
