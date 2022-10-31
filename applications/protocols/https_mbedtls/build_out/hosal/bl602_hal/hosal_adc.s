	.file	"hosal_adc.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.adc_data_update,"ax",@progbits
	.align	1
	.globl	adc_data_update
	.type	adc_data_update, @function
adc_data_update:
.LFB8:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/hosal_adc.c"
	.loc 1 80 1
	.cfi_startproc
.LVL0:
	.loc 1 81 5
	.loc 1 82 5
	.loc 1 82 22 is_stmt 0
	lw	a5,32(a0)
.LVL1:
	.loc 1 84 5 is_stmt 1
	.loc 1 84 8 is_stmt 0
	lw	a3,12(a5)
	.loc 1 85 73
	lw	a4,4(a5)
	.loc 1 84 8
	bne	a3,zero,.L2
	.loc 1 85 9 is_stmt 1
	.loc 1 85 30 is_stmt 0
	lw	a4,4(a4)
	sw	a4,0(a5)
	.loc 1 86 9 is_stmt 1
	.loc 1 86 26 is_stmt 0
	li	a4,1
	sw	a4,12(a5)
	ret
.L2:
	.loc 1 103 9 is_stmt 1
	.loc 1 103 30 is_stmt 0
	lw	a4,20(a4)
	.loc 1 104 26
	sw	zero,12(a5)
	.loc 1 103 30
	sw	a4,0(a5)
	.loc 1 104 9 is_stmt 1
	.loc 1 106 1 is_stmt 0
	ret
	.cfi_endproc
.LFE8:
	.size	adc_data_update, .-adc_data_update
	.section	.rodata.hosal_adc_init.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"hosal_adc.c"
	.align	2
.LC2:
	.string	"\033[31mERROR\033[0m"
	.align	2
.LC3:
	.string	"%s (%d)[%s:%4d] parameter is error!\r\n\r\n"
	.align	2
.LC4:
	.string	"ERROR "
	.align	2
.LC5:
	.string	"[%10u][%s: %s:%4d] gpio %d can not used as adc\r\n"
	.align	2
.LC6:
	.string	"%s (%d)[%s:%4d] pin is error!\r\n\r\n"
	.align	2
.LC7:
	.string	"%s (%d)[%s:%4d] not have enough memory!\r\n\r\n"
	.align	2
.LC8:
	.string	"%s (%d)[%s:%4d] illegal freq. for mode0, freq 27HZ ~ 340HZ \r\n\r\n"
	.align	2
.LC9:
	.string	"INFO  "
	.align	2
.LC10:
	.string	"[%10u][%s: %s:%4d] ADC freq: %ldHz. div:%lu\r\n"
	.align	2
.LC12:
	.string	"%s (%d)[%s:%4d] malloc lli failed. \r\n\r\n"
	.align	2
.LC13:
	.string	"%s (%d)[%s:%4d] malloc lli buf failed. \r\n\r\n"
	.align	2
.LC14:
	.string	"[%10u][%s: %s:%4d] not support continue mode!\r\n"
	.section	.text.hosal_adc_init,"ax",@progbits
	.align	1
	.globl	hosal_adc_init
	.type	hosal_adc_init, @function
hosal_adc_init:
.LFB17:
	.loc 1 466 1 is_stmt 1
	.cfi_startproc
.LVL2:
	.loc 1 467 5
	.loc 1 468 5
	.loc 1 469 5
	.loc 1 470 5
	.loc 1 472 5
	.loc 1 466 1 is_stmt 0
	addi	sp,sp,-192
	.cfi_def_cfa_offset 192
	sw	ra,188(sp)
	sw	s0,184(sp)
	sw	s1,180(sp)
	sw	s2,176(sp)
	sw	s3,172(sp)
	sw	s4,168(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.loc 1 472 8
	bne	a0,zero,.L5
	.loc 1 473 9 is_stmt 1 discriminator 1
	.loc 1 473 47 discriminator 1
	.loc 1 473 52 discriminator 1
	.loc 1 473 74 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 473 55 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	bleu	a4,a5,.L6
.LVL3:
.L63:
	.loc 1 513 192 is_stmt 1 discriminator 4
	.loc 1 513 201 discriminator 4
	.loc 1 514 9 discriminator 4
	.loc 1 514 16 is_stmt 0 discriminator 4
	li	a0,-1
	j	.L4
.LVL4:
.L6:
	.loc 1 473 118 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhosal_adc)
	.loc 1 473 97 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhosal_adc)(a4)
	bgtu	a4,a5,.L63
	.loc 1 473 153 is_stmt 1 discriminator 5
	.loc 1 473 241 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL5:
	.loc 1 473 153 discriminator 5
	beq	a0,zero,.L9
	.loc 1 473 270 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL6:
.L52:
	.loc 1 473 301 discriminator 8
	mv	a2,a0
	.loc 1 473 153 discriminator 8
	lui	a3,%hi(.LC1)
	lui	a1,%hi(.LC2)
	lui	a0,%hi(.LC3)
	li	a4,473
	addi	a3,a3,%lo(.LC1)
	addi	a1,a1,%lo(.LC2)
	addi	a0,a0,%lo(.LC3)
.LVL7:
.L62:
	.loc 1 513 16 discriminator 4
	call	bl_printk
.LVL8:
	j	.L63
.LVL9:
.L9:
	.loc 1 473 301 discriminator 8
	call	xTaskGetTickCount
.LVL10:
	j	.L52
.LVL11:
.L5:
.LBB16:
.LBB17:
	.loc 1 112 19
	lui	s2,%hi(.LANCHOR0)
.LBE17:
.LBE16:
	.loc 1 477 23
	lw	s3,4(a0)
	.loc 1 478 9
	lw	s1,8(a0)
	mv	s0,a0
	.loc 1 477 5 is_stmt 1
.LVL12:
	.loc 1 478 5
	.loc 1 481 5
.LBB20:
.LBB18:
	.loc 1 110 5
	.loc 1 112 5
	.loc 1 112 19 is_stmt 0
	li	a2,40
	addi	a1,s2,%lo(.LANCHOR0)
	addi	a0,sp,108
.LVL13:
	call	memcpy
.LVL14:
	.loc 1 120 5 is_stmt 1
	.loc 1 120 17
	addi	a5,sp,108
	addi	a4,sp,148
.LVL15:
.L12:
	.loc 1 121 9
	.loc 1 121 12 is_stmt 0
	lw	a3,0(a5)
	beq	s1,a3,.L11
	.loc 1 120 25 is_stmt 1
	.loc 1 120 17
	.loc 1 120 5 is_stmt 0
	addi	a5,a5,4
	bne	a4,a5,.L12
	.loc 1 126 5 is_stmt 1
	.loc 1 126 10
	.loc 1 126 12
	.loc 1 126 80 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL16:
	.loc 1 126 12
	beq	a0,zero,.L13
	.loc 1 126 107
	call	xTaskGetTickCountFromISR
.LVL17:
.L53:
	.loc 1 126 136
	mv	a1,a0
	.loc 1 126 12
	lui	s0,%hi(.LC1)
.LVL18:
	lui	a2,%hi(.LC4)
	lui	a0,%hi(.LC5)
	mv	a5,s1
	li	a4,126
	addi	a3,s0,%lo(.LC1)
	addi	a2,a2,%lo(.LC4)
	addi	a0,a0,%lo(.LC5)
	call	bl_printk
.LVL19:
	.loc 1 126 194 is_stmt 1
	.loc 1 126 203
	.loc 1 128 5
.LBE18:
.LBE20:
	.loc 1 482 5
	.loc 1 483 9
	.loc 1 483 47
	.loc 1 483 52
	.loc 1 483 74 is_stmt 0
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 483 55
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	bgtu	a4,a5,.L63
	.loc 1 483 118 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhosal_adc)
	.loc 1 483 97 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhosal_adc)(a4)
	bgtu	a4,a5,.L63
	.loc 1 483 153 is_stmt 1 discriminator 5
	.loc 1 483 235 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL20:
	.loc 1 483 153 discriminator 5
	beq	a0,zero,.L18
	.loc 1 483 264 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL21:
.L54:
	.loc 1 483 295 discriminator 8
	mv	a2,a0
	.loc 1 483 153 discriminator 8
	lui	a1,%hi(.LC2)
	lui	a0,%hi(.LC6)
	li	a4,483
	addi	a3,s0,%lo(.LC1)
	addi	a1,a1,%lo(.LC2)
	addi	a0,a0,%lo(.LC6)
	j	.L62
.LVL22:
.L13:
.LBB21:
.LBB19:
	.loc 1 126 136
	call	xTaskGetTickCount
.LVL23:
	j	.L53
.L11:
.LVL24:
.LBE19:
.LBE21:
	.loc 1 482 5 is_stmt 1
	.loc 1 487 5
	.loc 1 487 33 is_stmt 0
	li	a0,24
	call	pvPortMalloc
.LVL25:
	mv	s1,a0
.LVL26:
	.loc 1 488 5 is_stmt 1
	.loc 1 488 8 is_stmt 0
	bne	a0,zero,.L50
	.loc 1 489 9 is_stmt 1 discriminator 1
	.loc 1 489 47 discriminator 1
	.loc 1 489 52 discriminator 1
	.loc 1 489 74 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 489 55 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	bgtu	a4,a5,.L63
	.loc 1 489 118 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhosal_adc)
	.loc 1 489 97 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhosal_adc)(a4)
	bgtu	a4,a5,.L63
	.loc 1 489 153 is_stmt 1 discriminator 5
	.loc 1 489 245 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL27:
	.loc 1 489 153 discriminator 5
	beq	a0,zero,.L20
	.loc 1 489 274 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL28:
.L55:
	.loc 1 489 305 discriminator 8
	mv	a2,a0
	.loc 1 489 153 discriminator 8
	lui	a3,%hi(.LC1)
	lui	a1,%hi(.LC2)
	lui	a0,%hi(.LC7)
	li	a4,489
	addi	a3,a3,%lo(.LC1)
	addi	a1,a1,%lo(.LC2)
	addi	a0,a0,%lo(.LC7)
	j	.L62
.LVL29:
.L18:
	.loc 1 483 295 discriminator 8
	call	xTaskGetTickCount
.LVL30:
	j	.L54
.LVL31:
.L20:
	.loc 1 489 305 discriminator 8
	call	xTaskGetTickCount
.LVL32:
	j	.L55
.L50:
	.loc 1 493 5 is_stmt 1
	li	a2,24
	li	a1,0
	call	memset
.LVL33:
	.loc 1 494 5
	.loc 1 496 8 is_stmt 0
	lw	a5,12(s0)
	.loc 1 494 15
	sw	s1,32(s0)
	.loc 1 496 5 is_stmt 1
	.loc 1 496 8 is_stmt 0
	bne	a5,zero,.L22
	.loc 1 497 9 is_stmt 1
	.loc 1 497 23 is_stmt 0
	addi	a5,s3,-27
	.loc 1 497 12
	li	a4,313
	bleu	a5,a4,.L23
	.loc 1 498 13 is_stmt 1 discriminator 1
	.loc 1 498 51 discriminator 1
	.loc 1 498 56 discriminator 1
	.loc 1 498 78 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 498 59 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	bgtu	a4,a5,.L63
	.loc 1 498 122 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhosal_adc)
	.loc 1 498 101 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhosal_adc)(a4)
	bgtu	a4,a5,.L63
	.loc 1 498 157 is_stmt 1 discriminator 5
	.loc 1 498 269 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL34:
	.loc 1 498 157 discriminator 5
	beq	a0,zero,.L24
	.loc 1 498 298 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL35:
.L56:
	.loc 1 498 329 discriminator 8
	mv	a2,a0
	.loc 1 498 157 discriminator 8
	lui	a3,%hi(.LC1)
	lui	a1,%hi(.LC2)
	lui	a0,%hi(.LC8)
	li	a4,498
	addi	a3,a3,%lo(.LC1)
	addi	a1,a1,%lo(.LC2)
	addi	a0,a0,%lo(.LC8)
	j	.L62
.L24:
	.loc 1 498 329 discriminator 8
	call	xTaskGetTickCount
.LVL36:
	j	.L56
.L23:
	.loc 1 508 9 is_stmt 1
.LVL37:
.LBB22:
.LBB23:
	.loc 1 177 5
	.loc 1 178 5
	.loc 1 179 5
	.loc 1 181 5
	.loc 1 187 5
	.loc 1 189 5
	.loc 1 189 9 is_stmt 0
	li	a5,1875
	divu	s1,a5,s3
.LVL38:
	.loc 1 190 5 is_stmt 1
	.loc 1 190 8 is_stmt 0
	remu	a5,a5,s3
	.loc 1 190 15
	addi	a3,s1,1
	.loc 1 190 20
	mul	a4,s3,a3
	.loc 1 190 27
	addi	a4,a4,-1875
	.loc 1 190 8
	bgeu	a4,a5,.L26
	.loc 1 191 13
	mv	s1,a3
.LVL39:
.L26:
	.loc 1 194 5 is_stmt 1
	li	a5,64
	bleu	s1,a5,.L27
	li	s1,64
.LVL40:
.L27:
	.loc 1 200 5
	.loc 1 201 9
	.loc 1 210 5
	.loc 1 210 10
	.loc 1 210 12
	.loc 1 210 77 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL41:
	.loc 1 210 12
	beq	a0,zero,.L28
	.loc 1 210 104
	call	xTaskGetTickCountFromISR
.LVL42:
.L57:
	.loc 1 210 12
	li	a5,1875
	divu	a5,a5,s1
	.loc 1 210 133
	mv	a1,a0
	.loc 1 210 12
	lui	s4,%hi(.LC1)
	lui	a2,%hi(.LC9)
	lui	a0,%hi(.LC10)
	mv	a6,s1
	li	a4,210
	addi	a3,s4,%lo(.LC1)
	addi	a2,a2,%lo(.LC9)
	addi	a0,a0,%lo(.LC10)
	call	bl_printk
.LVL43:
	.loc 1 210 217 is_stmt 1
	.loc 1 210 226
	.loc 1 212 5
	addi	a2,s1,-1
	andi	a2,a2,0xff
	li	a1,0
	li	a0,1
	call	GLB_Set_ADC_CLK
.LVL44:
.LBE23:
.LBE22:
	.loc 1 509 9
.LBB25:
.LBB26:
	.loc 1 301 5
	.loc 1 305 5
	.loc 1 305 13 is_stmt 0
	addi	a1,s2,%lo(.LANCHOR0)
	li	a2,10
	addi	a1,a1,40
	addi	a0,sp,16
	call	memcpy
.LVL45:
	.loc 1 307 5 is_stmt 1
	.loc 1 317 18 is_stmt 0
	li	a3,5
	.loc 1 307 29
	lw	s2,12(s0)
.LVL46:
	.loc 1 308 5 is_stmt 1
	.loc 1 315 18 is_stmt 0
	li	a4,2
	.loc 1 316 18
	li	a5,1
	.loc 1 317 18
	sw	a3,116(sp)
	.loc 1 318 20
	li	a3,4
	.loc 1 315 18
	sw	a4,108(sp)
	.loc 1 316 18
	sw	a5,112(sp)
	.loc 1 318 20
	sw	a3,148(sp)
	.loc 1 308 19
	lw	s1,8(s0)
.LVL47:
	.loc 1 310 5 is_stmt 1
	.loc 1 311 5
	.loc 1 312 5
	.loc 1 313 5
	.loc 1 315 5
	.loc 1 316 5
	.loc 1 317 5
	.loc 1 318 5
	.loc 1 321 5
	.loc 1 321 8 is_stmt 0
	bne	s2,zero,.L30
	.loc 1 328 9 is_stmt 1
	.loc 1 328 21 is_stmt 0
	sw	zero,120(sp)
	.loc 1 329 9 is_stmt 1
	.loc 1 329 21 is_stmt 0
	sw	zero,124(sp)
	.loc 1 330 9 is_stmt 1
	.loc 1 330 24 is_stmt 0
	sw	a5,128(sp)
.L31:
	.loc 1 339 5 is_stmt 1
	.loc 1 339 19 is_stmt 0
	sw	zero,132(sp)
	.loc 1 340 5 is_stmt 1
	.loc 1 340 15 is_stmt 0
	sw	zero,136(sp)
	.loc 1 345 5 is_stmt 1
	.loc 1 345 16 is_stmt 0
	sw	zero,140(sp)
	.loc 1 348 5 is_stmt 1
	.loc 1 348 21 is_stmt 0
	sw	zero,144(sp)
	.loc 1 349 5 is_stmt 1
	.loc 1 349 25 is_stmt 0
	sw	zero,152(sp)
	.loc 1 350 5 is_stmt 1
	.loc 1 350 26 is_stmt 0
	sh	zero,156(sp)
	.loc 1 352 5 is_stmt 1
	call	ADC_Disable
.LVL48:
	.loc 1 353 5
	call	ADC_Enable
.LVL49:
	.loc 1 354 5
	call	ADC_Reset
.LVL50:
	.loc 1 356 5
	addi	a0,sp,108
	call	ADC_Init
.LVL51:
	.loc 1 358 5
	.loc 1 358 8 is_stmt 0
	bne	s2,zero,.L32
	addi	a3,sp,28
	addi	a4,sp,68
	.loc 1 359 16
	li	a5,0
	mv	a0,a3
	mv	a1,a4
	.loc 1 361 34
	li	a6,23
	.loc 1 359 9
	li	a2,10
.LVL52:
.L33:
	.loc 1 360 13 is_stmt 1
	.loc 1 360 49 is_stmt 0
	addi	s1,sp,16
	add	a7,s1,a5
	lbu	a7,0(a7)
	.loc 1 361 34
	sw	a6,0(a4)
	.loc 1 359 30
	addi	a5,a5,1
.LVL53:
	.loc 1 360 49
	sw	a7,0(a3)
	.loc 1 360 53 is_stmt 1
	.loc 1 361 13
	.loc 1 359 29
.LVL54:
	.loc 1 359 21
	.loc 1 359 9 is_stmt 0
	addi	a4,a4,4
	addi	a3,a3,4
	bne	a5,a2,.L33
	.loc 1 364 9 is_stmt 1
	li	a3,1
	li	a2,10
	call	ADC_Scan_Channel_Config
.LVL55:
.L34:
	.loc 1 372 5
	.loc 1 373 24 is_stmt 0
	li	a5,1
	.loc 1 374 5
	addi	a0,sp,8
	.loc 1 373 24
	sw	a5,12(sp)
	.loc 1 372 32
	sw	zero,8(sp)
	.loc 1 373 5 is_stmt 1
	.loc 1 374 5
	call	ADC_FIFO_Cfg
.LVL56:
	.loc 1 376 5
	call	ADC_SET_TSVBE_LOW
.LVL57:
.LBE26:
.LBE25:
	.loc 1 510 9
.LBB32:
.LBB33:
	.loc 1 243 5
	.loc 1 244 5
	.loc 1 245 5
	.loc 1 246 5
	.loc 1 254 21 is_stmt 0
	li	a0,0
	.loc 1 246 22
	lw	s2,32(s0)
.LVL58:
	.loc 1 248 5 is_stmt 1
	.loc 1 254 5
	.loc 1 254 21 is_stmt 0
	call	hosal_dma_chan_request
.LVL59:
	.loc 1 254 19
	sw	a0,20(s0)
	.loc 1 256 5 is_stmt 1
	.loc 1 256 14 is_stmt 0
	li	a0,32
	call	pvPortMalloc
.LVL60:
	mv	s1,a0
.LVL61:
	.loc 1 257 5 is_stmt 1
	.loc 1 257 8 is_stmt 0
	bne	a0,zero,.L36
	.loc 1 258 9 is_stmt 1
	.loc 1 258 47
	.loc 1 258 52
	.loc 1 258 74 is_stmt 0
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 258 55
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	bgtu	a4,a5,.L38
	.loc 1 258 118
	lui	a4,%hi(_fsymf_level_hosalhosal_adc)
	.loc 1 258 97
	lw	a4,%lo(_fsymf_level_hosalhosal_adc)(a4)
	bgtu	a4,a5,.L38
	.loc 1 258 153 is_stmt 1
	.loc 1 258 241 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL62:
	.loc 1 258 153
	beq	a0,zero,.L40
	.loc 1 258 270
	call	xTaskGetTickCountFromISR
.LVL63:
.L58:
	.loc 1 258 301
	mv	a2,a0
	.loc 1 258 153
	lui	a1,%hi(.LC2)
	lui	a0,%hi(.LC12)
	li	a4,258
	addi	a3,s4,%lo(.LC1)
	addi	a1,a1,%lo(.LC2)
	addi	a0,a0,%lo(.LC12)
.LVL64:
.L60:
	.loc 1 265 153
	call	bl_printk
.LVL65:
.L38:
.LBE33:
.LBE32:
	.loc 1 511 9 is_stmt 1
.LBB37:
.LBB38:
	.loc 1 381 5
	lbu	s1,20(s0)
	li	a2,1
	li	a1,2
	mv	a0,s1
	call	DMA_IntMask
.LVL66:
	.loc 1 382 5
	li	a2,0
	li	a1,0
	mv	a0,s1
	call	DMA_IntMask
.LVL67:
	.loc 1 383 5
	li	a2,0
	li	a1,1
	mv	a0,s1
	call	DMA_IntMask
.LVL68:
	.loc 1 385 5
	call	ADC_Start
.LVL69:
	.loc 1 386 5
	call	DMA_Enable
.LVL70:
	.loc 1 387 5
	mv	a0,s1
	call	DMA_Channel_Enable
.LVL71:
.LBE38:
.LBE37:
	.loc 1 517 5
	.loc 1 517 14 is_stmt 0
	lui	a5,%hi(.LANCHOR2)
	sw	s0,%lo(.LANCHOR2)(a5)
	.loc 1 519 5 is_stmt 1
	.loc 1 519 12 is_stmt 0
	li	a0,0
.LVL72:
.L4:
	.loc 1 520 1
	lw	ra,188(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,184(sp)
	.cfi_restore 8
	lw	s1,180(sp)
	.cfi_restore 9
	lw	s2,176(sp)
	.cfi_restore 18
	lw	s3,172(sp)
	.cfi_restore 19
	lw	s4,168(sp)
	.cfi_restore 20
	addi	sp,sp,192
	.cfi_def_cfa_offset 0
	jr	ra
.LVL73:
.L28:
	.cfi_restore_state
.LBB39:
.LBB24:
	.loc 1 210 133
	call	xTaskGetTickCount
.LVL74:
	j	.L57
.LVL75:
.L30:
.LBE24:
.LBE39:
.LBB40:
.LBB31:
	.loc 1 334 9 is_stmt 1
	.loc 1 334 21 is_stmt 0
	sw	a5,120(sp)
	.loc 1 335 9 is_stmt 1
	.loc 1 335 21 is_stmt 0
	sw	a5,124(sp)
	.loc 1 336 9 is_stmt 1
	.loc 1 336 24 is_stmt 0
	sw	a4,128(sp)
	j	.L31
.L32:
	.loc 1 367 9 is_stmt 1
.LVL76:
.LBB27:
.LBB28:
	.loc 1 133 5
	.loc 1 135 5
	addi	a4,s1,-4
	li	a5,11
.LBE28:
.LBE27:
	.loc 1 358 8 is_stmt 0
	li	a0,-1
	bgtu	a4,a5,.L35
	lui	a5,%hi(.LANCHOR1)
	addi	a5,a5,%lo(.LANCHOR1)
	add	a5,a5,a4
	lb	a0,0(a5)
.L35:
.LVL77:
.LBB30:
.LBB29:
	.loc 1 172 5 is_stmt 1
.LBE29:
.LBE30:
	.loc 1 368 9
	li	a2,1
	li	a1,23
	call	ADC_Channel_Config
.LVL78:
	.loc 1 369 9
	li	a0,0
	call	ADC_Mic_Init
.LVL79:
	j	.L34
.LVL80:
.L40:
.LBE31:
.LBE40:
.LBB41:
.LBB36:
	.loc 1 258 301 is_stmt 0
	call	xTaskGetTickCount
.LVL81:
	j	.L58
.L36:
	.loc 1 263 5 is_stmt 1
	.loc 1 263 14 is_stmt 0
	li	a0,80
	call	pvPortMalloc
.LVL82:
	mv	s3,a0
.LVL83:
	.loc 1 264 5 is_stmt 1
	.loc 1 264 8 is_stmt 0
	bne	a0,zero,.L42
	.loc 1 265 9 is_stmt 1
	.loc 1 265 47
	.loc 1 265 52
	.loc 1 265 74 is_stmt 0
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 265 55
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	bgtu	a4,a5,.L38
	.loc 1 265 118
	lui	a4,%hi(_fsymf_level_hosalhosal_adc)
	.loc 1 265 97
	lw	a4,%lo(_fsymf_level_hosalhosal_adc)(a4)
	bgtu	a4,a5,.L38
	.loc 1 265 153 is_stmt 1
	.loc 1 265 245 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL84:
	.loc 1 265 153
	beq	a0,zero,.L43
	.loc 1 265 274
	call	xTaskGetTickCountFromISR
.LVL85:
.L59:
	.loc 1 265 305
	mv	a2,a0
	.loc 1 265 153
	lui	a1,%hi(.LC2)
	lui	a0,%hi(.LC13)
	li	a4,265
	addi	a3,s4,%lo(.LC1)
	addi	a1,a1,%lo(.LC2)
	addi	a0,a0,%lo(.LC13)
	j	.L60
.L43:
	.loc 1 265 305
	call	xTaskGetTickCount
.LVL86:
	j	.L59
.LVL87:
.L42:
	.loc 1 270 5 is_stmt 1
	.loc 1 273 5 is_stmt 0
	lbu	a0,20(s0)
.LVL88:
	.loc 1 270 16
	li	a5,2
	sw	a5,108(sp)
	.loc 1 271 5 is_stmt 1
	.loc 1 271 22 is_stmt 0
	li	a5,22
	sw	a5,112(sp)
	.loc 1 272 5 is_stmt 1
	.loc 1 272 22 is_stmt 0
	sw	zero,116(sp)
	.loc 1 273 5 is_stmt 1
	call	DMA_Channel_Disable
.LVL89:
	.loc 1 275 5
.LBB34:
.LBB35:
	.loc 1 217 5
	.loc 1 219 5
	.loc 1 220 5
	.loc 1 221 5
	.loc 1 222 5
	.loc 1 223 5
	.loc 1 224 5
	.loc 1 225 5
	.loc 1 226 5
	.loc 1 227 5
	.loc 1 228 5
	.loc 1 230 5
	.loc 1 233 22 is_stmt 0
	lw	a4,12(s1)
	.loc 1 232 35
	addi	a5,s1,16
	.loc 1 232 23
	sw	a5,8(s1)
	.loc 1 233 22
	li	a3,-2008547328
	li	a5,33554432
	addi	a3,a3,10
	and	a4,a5,a4
	or	a4,a4,a3
	sw	a4,12(s1)
	.loc 1 236 39
	addi	a4,s3,40
	.loc 1 236 27
	sw	a4,20(s1)
	.loc 1 238 22
	lw	a4,28(s1)
	.loc 1 230 26
	li	a2,1073750016
	addi	a2,a2,4
	.loc 1 238 22
	and	a5,a5,a4
	or	a5,a5,a3
	.loc 1 230 26
	sw	a2,0(s1)
	.loc 1 231 5 is_stmt 1
	.loc 1 235 26 is_stmt 0
	sw	a2,16(s1)
	.loc 1 238 22
	sw	a5,28(s1)
	.loc 1 231 27
	sw	s3,4(s1)
	.loc 1 232 5 is_stmt 1
	.loc 1 233 5
	.loc 1 235 5
	.loc 1 236 5
	.loc 1 237 5
	.loc 1 237 23 is_stmt 0
	sw	s1,24(s1)
	.loc 1 238 5 is_stmt 1
.LVL90:
.LBE35:
.LBE34:
	.loc 1 276 5
	lbu	a0,20(s0)
	addi	a1,sp,108
	call	DMA_LLI_Init
.LVL91:
	.loc 1 277 5
	lbu	a0,20(s0)
	mv	a1,s1
	call	DMA_LLI_Update
.LVL92:
	.loc 1 279 5
	.loc 1 284 23 is_stmt 0
	li	a5,10
	.loc 1 279 20
	sw	s3,8(s2)
	.loc 1 280 5 is_stmt 1
	.loc 1 280 21 is_stmt 0
	sw	s1,4(s2)
	.loc 1 281 5 is_stmt 1
	.loc 1 281 22 is_stmt 0
	sw	zero,12(s2)
	.loc 1 282 5 is_stmt 1
	.loc 1 282 29 is_stmt 0
	sw	zero,16(s2)
	.loc 1 283 5 is_stmt 1
	.loc 1 283 26 is_stmt 0
	sw	zero,0(s2)
	.loc 1 284 5 is_stmt 1
	.loc 1 284 23 is_stmt 0
	sw	a5,20(s2)
	.loc 1 293 5 is_stmt 1
	lw	a0,20(s0)
	lui	a1,%hi(adc_data_update)
	mv	a2,s0
	addi	a1,a1,%lo(adc_data_update)
	call	hosal_dma_irq_callback_set
.LVL93:
	.loc 1 295 5
	.loc 1 295 12 is_stmt 0
	j	.L38
.LVL94:
.L22:
.LBE36:
.LBE41:
	.loc 1 513 9 is_stmt 1
	.loc 1 513 14
	.loc 1 513 16
	.loc 1 513 83 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL95:
	.loc 1 513 16
	beq	a0,zero,.L45
	.loc 1 513 110 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL96:
.L61:
	.loc 1 513 139 discriminator 2
	mv	a1,a0
	.loc 1 513 16 discriminator 2
	lui	a3,%hi(.LC1)
	lui	a2,%hi(.LC4)
	lui	a0,%hi(.LC14)
	li	a4,513
	addi	a3,a3,%lo(.LC1)
	addi	a2,a2,%lo(.LC4)
	addi	a0,a0,%lo(.LC14)
	j	.L62
.L45:
	.loc 1 513 139 discriminator 2
	call	xTaskGetTickCount
.LVL97:
	j	.L61
	.cfi_endproc
.LFE17:
	.size	hosal_adc_init, .-hosal_adc_init
	.section	.rodata.hosal_adc_add_channel.str1.4,"aMS",@progbits,1
	.align	2
.LC15:
	.string	"%s (%d)[%s:%4d] channel is error!\r\n"
	.section	.text.hosal_adc_add_channel,"ax",@progbits
	.align	1
	.globl	hosal_adc_add_channel
	.type	hosal_adc_add_channel, @function
hosal_adc_add_channel:
.LFB18:
	.loc 1 523 1 is_stmt 1
	.cfi_startproc
.LVL98:
	.loc 1 524 5
	.loc 1 531 8 is_stmt 0
	li	a5,11
	.loc 1 524 22
	lw	a4,32(a0)
.LVL99:
	.loc 1 526 5 is_stmt 1
	.loc 1 531 5
	.loc 1 531 8 is_stmt 0
	bleu	a1,a5,.L65
	.loc 1 532 9 is_stmt 1 discriminator 1
	.loc 1 532 47 discriminator 1
	.loc 1 532 52 discriminator 1
	.loc 1 532 74 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 532 55 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a5)
.LVL100:
	li	a5,4
	.loc 1 533 16 discriminator 1
	li	a0,-1
.LVL101:
	.loc 1 532 55 discriminator 1
	bgtu	a4,a5,.L72
	.loc 1 532 118 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhosal_adc)
	.loc 1 532 97 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhosal_adc)(a4)
	bgtu	a4,a5,.L72
	.loc 1 532 153 is_stmt 1 discriminator 5
	.loc 1 523 1 is_stmt 0 discriminator 5
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
.LVL102:
	.cfi_offset 1, -4
	.loc 1 532 235 discriminator 5
	call	xPortIsInsideInterrupt
.LVL103:
	.loc 1 532 153 discriminator 5
	beq	a0,zero,.L67
	.loc 1 532 264 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL104:
.L75:
	.loc 1 532 295 discriminator 8
	mv	a2,a0
	.loc 1 532 153 discriminator 8
	lui	a3,%hi(.LC1)
	lui	a1,%hi(.LC2)
	lui	a0,%hi(.LC15)
	addi	a0,a0,%lo(.LC15)
	li	a4,532
	addi	a3,a3,%lo(.LC1)
	addi	a1,a1,%lo(.LC2)
	call	bl_printk
.LVL105:
	.loc 1 538 1 discriminator 8
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	.loc 1 533 16 discriminator 8
	li	a0,-1
	.loc 1 538 1 discriminator 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L67:
	.cfi_restore_state
	.loc 1 532 295 discriminator 8
	call	xTaskGetTickCount
.LVL106:
	j	.L75
.LVL107:
.L65:
	.cfi_def_cfa_offset 0
	.cfi_restore 1
	.loc 1 535 5 is_stmt 1
	.loc 1 535 34 is_stmt 0
	li	a5,1
	sll	a5,a5,a1
	.loc 1 535 29
	lw	a1,16(a4)
.LVL108:
	.loc 1 537 12
	li	a0,0
.LVL109:
	.loc 1 535 29
	or	a1,a1,a5
	sw	a1,16(a4)
	.loc 1 537 5 is_stmt 1
	.loc 1 537 12 is_stmt 0
	ret
.LVL110:
.L72:
	.loc 1 538 1
	ret
	.cfi_endproc
.LFE18:
	.size	hosal_adc_add_channel, .-hosal_adc_add_channel
	.section	.rodata.hosal_adc_remove_channel.str1.4,"aMS",@progbits,1
	.align	2
.LC16:
	.string	"%s (%d)[%s:%4d] channel is error!\r\n\r\n"
	.section	.text.hosal_adc_remove_channel,"ax",@progbits
	.align	1
	.globl	hosal_adc_remove_channel
	.type	hosal_adc_remove_channel, @function
hosal_adc_remove_channel:
.LFB19:
	.loc 1 541 1 is_stmt 1
	.cfi_startproc
.LVL111:
	.loc 1 542 5
	.loc 1 549 8 is_stmt 0
	li	a5,11
	.loc 1 542 22
	lw	a4,32(a0)
.LVL112:
	.loc 1 544 5 is_stmt 1
	.loc 1 549 5
	.loc 1 549 8 is_stmt 0
	bleu	a1,a5,.L77
	.loc 1 550 9 is_stmt 1 discriminator 1
	.loc 1 550 47 discriminator 1
	.loc 1 550 52 discriminator 1
	.loc 1 550 74 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 550 55 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a5)
.LVL113:
	li	a5,4
	.loc 1 551 16 discriminator 1
	li	a0,-1
.LVL114:
	.loc 1 550 55 discriminator 1
	bgtu	a4,a5,.L84
	.loc 1 550 118 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhosal_adc)
	.loc 1 550 97 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhosal_adc)(a4)
	bgtu	a4,a5,.L84
	.loc 1 550 153 is_stmt 1 discriminator 5
	.loc 1 541 1 is_stmt 0 discriminator 5
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
.LVL115:
	.cfi_offset 1, -4
	.loc 1 550 239 discriminator 5
	call	xPortIsInsideInterrupt
.LVL116:
	.loc 1 550 153 discriminator 5
	beq	a0,zero,.L79
	.loc 1 550 268 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL117:
.L87:
	.loc 1 550 299 discriminator 8
	mv	a2,a0
	.loc 1 550 153 discriminator 8
	lui	a3,%hi(.LC1)
	lui	a1,%hi(.LC2)
	lui	a0,%hi(.LC16)
	addi	a0,a0,%lo(.LC16)
	li	a4,550
	addi	a3,a3,%lo(.LC1)
	addi	a1,a1,%lo(.LC2)
	call	bl_printk
.LVL118:
	.loc 1 557 1 discriminator 8
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	.loc 1 551 16 discriminator 8
	li	a0,-1
	.loc 1 557 1 discriminator 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L79:
	.cfi_restore_state
	.loc 1 550 299 discriminator 8
	call	xTaskGetTickCount
.LVL119:
	j	.L87
.LVL120:
.L77:
	.cfi_def_cfa_offset 0
	.cfi_restore 1
	.loc 1 554 5 is_stmt 1
	.loc 1 554 36 is_stmt 0
	li	a5,1
	sll	a1,a5,a1
.LVL121:
	.loc 1 554 29
	lw	a5,16(a4)
	.loc 1 554 32
	not	a1,a1
	.loc 1 556 12
	li	a0,0
.LVL122:
	.loc 1 554 29
	and	a1,a5,a1
	sw	a1,16(a4)
	.loc 1 556 5 is_stmt 1
	.loc 1 556 12 is_stmt 0
	ret
.LVL123:
.L84:
	.loc 1 557 1
	ret
	.cfi_endproc
.LFE19:
	.size	hosal_adc_remove_channel, .-hosal_adc_remove_channel
	.section	.rodata.hosal_adc_device_get.str1.4,"aMS",@progbits,1
	.align	2
.LC17:
	.string	"%s (%d)[%s:%4d] please init adc first!\r\n\r\n"
	.section	.text.hosal_adc_device_get,"ax",@progbits
	.align	1
	.globl	hosal_adc_device_get
	.type	hosal_adc_device_get, @function
hosal_adc_device_get:
.LFB20:
	.loc 1 560 1 is_stmt 1
	.cfi_startproc
	.loc 1 561 5
	.loc 1 560 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 561 13
	lui	a5,%hi(.LANCHOR2)
	.loc 1 560 1
	sw	s0,8(sp)
	.cfi_offset 8, -8
	.loc 1 561 13
	lw	s0,%lo(.LANCHOR2)(a5)
	.loc 1 560 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 561 8
	bne	s0,zero,.L88
	.loc 1 562 9 is_stmt 1 discriminator 1
	.loc 1 562 47 discriminator 1
	.loc 1 562 52 discriminator 1
	.loc 1 562 74 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 562 55 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	bgtu	a4,a5,.L88
	.loc 1 562 118 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhosal_adc)
	.loc 1 562 97 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhosal_adc)(a4)
	bgtu	a4,a5,.L88
	.loc 1 562 153 is_stmt 1 discriminator 5
	.loc 1 562 244 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL124:
	.loc 1 562 153 discriminator 5
	beq	a0,zero,.L90
	.loc 1 562 273 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL125:
.L93:
	.loc 1 562 304 discriminator 8
	mv	a2,a0
	.loc 1 562 153 discriminator 8
	lui	a3,%hi(.LC1)
	lui	a1,%hi(.LC2)
	lui	a0,%hi(.LC17)
	li	a4,562
	addi	a3,a3,%lo(.LC1)
	addi	a1,a1,%lo(.LC2)
	addi	a0,a0,%lo(.LC17)
	call	bl_printk
.LVL126:
.L88:
	.loc 1 567 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,s0
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L90:
	.cfi_restore_state
	.loc 1 562 304 discriminator 8
	call	xTaskGetTickCount
.LVL127:
	j	.L93
	.cfi_endproc
.LFE20:
	.size	hosal_adc_device_get, .-hosal_adc_device_get
	.section	.rodata.hosal_adc_value_get.str1.4,"aMS",@progbits,1
	.align	2
.LC18:
	.string	"%s (%d)[%s:%4d] channel = %d  not init as adc \r\n\r\n"
	.align	2
.LC19:
	.string	"%s (%d)[%s:%4d] adc sampling not finish. \r\n\r\n"
	.align	2
.LC20:
	.string	"[%10u][%s: %s:%4d] error!\r\n"
	.section	.text.hosal_adc_value_get,"ax",@progbits
	.align	1
	.globl	hosal_adc_value_get
	.type	hosal_adc_value_get, @function
hosal_adc_value_get:
.LFB21:
	.loc 1 570 1 is_stmt 1
	.cfi_startproc
.LVL128:
	.loc 1 571 5
	.loc 1 572 5
	.loc 1 570 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	sw	s5,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.loc 1 579 8
	li	a5,11
	.loc 1 572 22
	lw	s2,32(a0)
.LVL129:
	.loc 1 574 5 is_stmt 1
	.loc 1 579 5
	.loc 1 579 8 is_stmt 0
	bleu	a1,a5,.L95
	.loc 1 580 9 is_stmt 1 discriminator 1
	.loc 1 580 47 discriminator 1
	.loc 1 580 52 discriminator 1
	.loc 1 580 74 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 580 55 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	bleu	a4,a5,.L96
.LVL130:
.L124:
	.loc 1 591 16 discriminator 10
	li	a0,-1
.LVL131:
.L94:
	.loc 1 602 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
.LVL132:
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
	lw	s5,4(sp)
	.cfi_restore 21
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL133:
.L96:
	.cfi_restore_state
	.loc 1 580 118 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhosal_adc)
	.loc 1 580 97 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhosal_adc)(a4)
	bgtu	a4,a5,.L124
	.loc 1 580 153 is_stmt 1 discriminator 5
	.loc 1 580 239 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL134:
	.loc 1 580 153 discriminator 5
	beq	a0,zero,.L99
	.loc 1 580 268 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL135:
.L120:
	.loc 1 580 299 discriminator 8
	mv	a2,a0
	.loc 1 580 153 discriminator 8
	lui	a3,%hi(.LC1)
	lui	a1,%hi(.LC2)
	lui	a0,%hi(.LC16)
	li	a4,580
	addi	a3,a3,%lo(.LC1)
	addi	a1,a1,%lo(.LC2)
	addi	a0,a0,%lo(.LC16)
.L125:
	.loc 1 590 153 discriminator 10
	call	bl_printk
.LVL136:
	j	.L124
.L99:
	.loc 1 580 299 discriminator 8
	call	xTaskGetTickCount
.LVL137:
	j	.L120
.LVL138:
.L95:
	.loc 1 584 25
	lw	a4,16(s2)
	.loc 1 584 13
	li	a5,1
	sll	a5,a5,a1
	.loc 1 584 25
	and	a5,a5,a4
	mv	s0,a1
	.loc 1 584 5 is_stmt 1
	.loc 1 584 8 is_stmt 0
	bne	a5,zero,.L101
.LVL139:
	.loc 1 585 9 is_stmt 1 discriminator 1
	.loc 1 585 47 discriminator 1
	.loc 1 585 52 discriminator 1
	.loc 1 585 74 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 585 55 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	bgtu	a4,a5,.L124
	.loc 1 585 118 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhosal_adc)
	.loc 1 585 97 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhosal_adc)(a4)
	bgtu	a4,a5,.L124
	.loc 1 585 153 is_stmt 1 discriminator 5
	.loc 1 585 252 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL140:
	.loc 1 585 153 discriminator 5
	beq	a0,zero,.L102
	.loc 1 585 281 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL141:
.L121:
	.loc 1 585 312 discriminator 8
	mv	a2,a0
	.loc 1 585 153 discriminator 8
	lui	a3,%hi(.LC1)
	lui	a1,%hi(.LC2)
	lui	a0,%hi(.LC18)
	mv	a5,s0
	li	a4,585
	addi	a3,a3,%lo(.LC1)
	addi	a1,a1,%lo(.LC2)
	addi	a0,a0,%lo(.LC18)
	call	bl_printk
.LVL142:
	j	.L124
.L102:
	.loc 1 585 312 discriminator 8
	call	xTaskGetTickCount
.LVL143:
	j	.L121
.LVL144:
.L101:
	.loc 1 589 5 is_stmt 1
	.loc 1 589 8 is_stmt 0
	lw	a5,0(s2)
	beq	a5,zero,.L117
	mv	s1,a2
.LBB44:
.LBB45:
	.loc 1 461 12
	lui	s5,%hi(.LC1)
	lui	s4,%hi(.LC4)
	lui	s3,%hi(.LC20)
.LVL145:
.L104:
.LBE45:
.LBE44:
	.loc 1 594 11 is_stmt 1
.LBB49:
.LBB46:
	.loc 1 448 17
	lw	a5,0(s2)
	addi	a4,a5,40
.LVL146:
.L108:
	.loc 1 449 9
	.loc 1 449 17 is_stmt 0
	lw	a0,0(a5)
	.loc 1 449 21
	srli	a3,a0,21
	.loc 1 449 12
	bne	s0,a3,.L107
	.loc 1 450 13 is_stmt 1
.LVL147:
	.loc 1 455 13
	.loc 1 450 18 is_stmt 0
	slli	a0,a0,16
.LVL148:
	.loc 1 455 26
	li	a5,4096
.LVL149:
	.loc 1 450 18
	srli	a0,a0,16
	.loc 1 455 26
	addi	a5,a5,-896
	mul	a0,a0,a5
	.loc 1 455 18
	srai	a0,a0,16
.LVL150:
	.loc 1 458 13 is_stmt 1
.LBE46:
.LBE49:
	j	.L94
.LVL151:
.L117:
	.loc 1 590 9 discriminator 1
	.loc 1 590 47 discriminator 1
	.loc 1 590 52 discriminator 1
	.loc 1 590 74 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 590 55 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	bgtu	a4,a5,.L124
	.loc 1 590 118 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhosal_adc)
	.loc 1 590 97 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhosal_adc)(a4)
	bgtu	a4,a5,.L124
	.loc 1 590 153 is_stmt 1 discriminator 5
	.loc 1 590 247 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL152:
	.loc 1 590 153 discriminator 5
	beq	a0,zero,.L105
	.loc 1 590 276 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL153:
.L122:
	.loc 1 590 307 discriminator 8
	mv	a2,a0
	.loc 1 590 153 discriminator 8
	lui	a3,%hi(.LC1)
	lui	a1,%hi(.LC2)
	lui	a0,%hi(.LC19)
	li	a4,590
	addi	a3,a3,%lo(.LC1)
	addi	a1,a1,%lo(.LC2)
	addi	a0,a0,%lo(.LC19)
	j	.L125
.L105:
	.loc 1 590 307 discriminator 8
	call	xTaskGetTickCount
.LVL154:
	j	.L122
.LVL155:
.L107:
.LBB50:
.LBB47:
	.loc 1 448 32 is_stmt 1
	.loc 1 448 17
	.loc 1 448 5 is_stmt 0
	addi	a5,a5,4
	bne	a4,a5,.L108
	.loc 1 461 5 is_stmt 1
	.loc 1 461 10
	.loc 1 461 12
	.loc 1 461 59 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL156:
	.loc 1 461 12
	beq	a0,zero,.L109
	.loc 1 461 86
	call	xTaskGetTickCountFromISR
.LVL157:
.L123:
	.loc 1 461 115
	mv	a1,a0
	.loc 1 461 12
	li	a4,461
	addi	a3,s5,%lo(.LC1)
	addi	a2,s4,%lo(.LC4)
	addi	a0,s3,%lo(.LC20)
	call	bl_printk
.LVL158:
	.loc 1 461 168 is_stmt 1
	.loc 1 461 177
	.loc 1 462 5
.LBE47:
.LBE50:
	.loc 1 595 9
	.loc 1 595 12 is_stmt 0
	beq	s1,zero,.L124
	.loc 1 598 9 is_stmt 1
	li	a0,1
	call	vTaskDelay
.LVL159:
	addi	s1,s1,-1
.LVL160:
	j	.L104
.LVL161:
.L109:
.LBB51:
.LBB48:
	.loc 1 461 115 is_stmt 0
	call	xTaskGetTickCount
.LVL162:
	j	.L123
.LBE48:
.LBE51:
	.cfi_endproc
.LFE21:
	.size	hosal_adc_value_get, .-hosal_adc_value_get
	.section	.rodata.hosal_adc_sample_cb_reg.str1.4,"aMS",@progbits,1
	.align	2
.LC21:
	.string	"[%10u][%s: %s:%4d] not support now!\r\n"
	.section	.text.hosal_adc_sample_cb_reg,"ax",@progbits
	.align	1
	.globl	hosal_adc_sample_cb_reg
	.type	hosal_adc_sample_cb_reg, @function
hosal_adc_sample_cb_reg:
.LFB22:
	.loc 1 614 1 is_stmt 1
	.cfi_startproc
.LVL163:
	.loc 1 615 5
	.loc 1 615 10
	.loc 1 615 12
	.loc 1 614 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 615 69
	call	xPortIsInsideInterrupt
.LVL164:
	.loc 1 615 12
	beq	a0,zero,.L127
	.loc 1 615 96 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL165:
.L130:
	.loc 1 615 125 discriminator 2
	mv	a1,a0
	.loc 1 615 12 discriminator 2
	lui	a3,%hi(.LC1)
	lui	a2,%hi(.LC4)
	lui	a0,%hi(.LC21)
	addi	a0,a0,%lo(.LC21)
	li	a4,615
	addi	a3,a3,%lo(.LC1)
	addi	a2,a2,%lo(.LC4)
	call	bl_printk
.LVL166:
	.loc 1 615 178 is_stmt 1 discriminator 2
	.loc 1 615 187 discriminator 2
	.loc 1 616 5 discriminator 2
	.loc 1 617 1 is_stmt 0 discriminator 2
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	li	a0,-1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L127:
	.cfi_restore_state
	.loc 1 615 125 discriminator 2
	call	xTaskGetTickCount
.LVL167:
	j	.L130
	.cfi_endproc
.LFE22:
	.size	hosal_adc_sample_cb_reg, .-hosal_adc_sample_cb_reg
	.section	.text.hosal_adc_start,"ax",@progbits
	.align	1
	.globl	hosal_adc_start
	.type	hosal_adc_start, @function
hosal_adc_start:
.LFB23:
	.loc 1 620 1 is_stmt 1
	.cfi_startproc
.LVL168:
	.loc 1 621 5
	.loc 1 621 10
	.loc 1 621 12
	.loc 1 620 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 621 69
	call	xPortIsInsideInterrupt
.LVL169:
	.loc 1 621 12
	beq	a0,zero,.L132
	.loc 1 621 96 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL170:
.L135:
	.loc 1 621 125 discriminator 2
	mv	a1,a0
	.loc 1 621 12 discriminator 2
	lui	a3,%hi(.LC1)
	lui	a2,%hi(.LC4)
	lui	a0,%hi(.LC21)
	addi	a0,a0,%lo(.LC21)
	li	a4,621
	addi	a3,a3,%lo(.LC1)
	addi	a2,a2,%lo(.LC4)
	call	bl_printk
.LVL171:
	.loc 1 621 178 is_stmt 1 discriminator 2
	.loc 1 621 187 discriminator 2
	.loc 1 622 5 discriminator 2
	.loc 1 623 1 is_stmt 0 discriminator 2
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	li	a0,-1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L132:
	.cfi_restore_state
	.loc 1 621 125 discriminator 2
	call	xTaskGetTickCount
.LVL172:
	j	.L135
	.cfi_endproc
.LFE23:
	.size	hosal_adc_start, .-hosal_adc_start
	.section	.text.hosal_adc_stop,"ax",@progbits
	.align	1
	.globl	hosal_adc_stop
	.type	hosal_adc_stop, @function
hosal_adc_stop:
.LFB24:
	.loc 1 626 1 is_stmt 1
	.cfi_startproc
.LVL173:
	.loc 1 627 4
	.loc 1 628 1 is_stmt 0
	li	a0,0
.LVL174:
	ret
	.cfi_endproc
.LFE24:
	.size	hosal_adc_stop, .-hosal_adc_stop
	.section	.text.hosal_adc_finalize,"ax",@progbits
	.align	1
	.globl	hosal_adc_finalize
	.type	hosal_adc_finalize, @function
hosal_adc_finalize:
.LFB25:
	.loc 1 631 1 is_stmt 1
	.cfi_startproc
.LVL175:
	.loc 1 632 5
	.loc 1 631 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.loc 1 632 22
	lw	s1,32(a0)
.LVL176:
	.loc 1 634 5 is_stmt 1
	.loc 1 639 5
	.loc 1 631 1 is_stmt 0
	mv	s0,a0
	.loc 1 639 5
	lw	a0,8(s1)
.LVL177:
	call	vPortFree
.LVL178:
	.loc 1 640 5 is_stmt 1
	lw	a0,4(s1)
	call	vPortFree
.LVL179:
	.loc 1 641 5
	mv	a0,s1
	call	vPortFree
.LVL180:
	.loc 1 642 5
	call	ADC_Stop
.LVL181:
	.loc 1 643 5
	lw	a0,20(s0)
	call	hosal_dma_chan_stop
.LVL182:
	.loc 1 644 5
	lw	a0,20(s0)
	call	hosal_dma_chan_release
.LVL183:
	.loc 1 646 5
	.loc 1 647 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL184:
	lw	s1,4(sp)
	.cfi_restore 9
.LVL185:
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE25:
	.size	hosal_adc_finalize, .-hosal_adc_finalize
	.globl	_fsymf_info_hosalhosal_adc
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC22:
	.string	"hosal.hosal_adc"
	.comm	_fsymf_level_hosalhosal_adc,4,4
	.align	2
.LC23:
	.string	"hosal"
	.weak	_fsymc_level_hosal
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
.LC0:
	.word	4
	.word	5
	.word	6
	.word	9
	.word	10
	.word	11
	.word	12
	.word	13
	.word	14
	.word	15
.LC11:
	.string	""
	.ascii	"\001\002\003\004\005\007\t\n\013"
	.section	.rodata.CSWTCH.69,"a"
	.align	2
	.set	.LANCHOR1,. + 0
	.type	CSWTCH.69, @object
	.size	CSWTCH.69, 12
CSWTCH.69:
	.byte	1
	.byte	4
	.byte	5
	.byte	-1
	.byte	-1
	.byte	7
	.byte	9
	.byte	10
	.byte	0
	.byte	3
	.byte	2
	.byte	11
	.section	.sbss._fsymc_level_hosal,"aw",@nobits
	.align	2
	.type	_fsymc_level_hosal, @object
	.size	_fsymc_level_hosal, 4
_fsymc_level_hosal:
	.zero	4
	.section	.sbss.pgdevice,"aw",@nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	pgdevice, @object
	.size	pgdevice, 4
pgdevice:
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
	.word	.LC23
	.section	.static_blogfile_code.hosalhosal_adc,"a"
	.align	2
	.type	_fsymf_info_hosalhosal_adc, @object
	.size	_fsymf_info_hosalhosal_adc, 8
_fsymf_info_hosalhosal_adc:
	.word	_fsymf_level_hosalhosal_adc
	.word	.LC22
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog_type.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_gpio.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_adc.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/dma_reg.h"
	.file 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_dma.h"
	.file 10 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_glb.h"
	.file 11 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/include/hosal_dma.h"
	.file 12 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/include/hosal_adc.h"
	.file 13 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/Common/platform_print/bflb_platform.h"
	.file 14 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 15 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 16 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_log.h"
	.file 17 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 18 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x19eb
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF307
	.byte	0xc
	.4byte	.LASF308
	.4byte	.LASF309
	.4byte	.Ldebug_ranges0+0xa8
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
	.4byte	.LASF3
	.byte	0x2
	.byte	0x25
	.byte	0x13
	.4byte	0x3f
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x28
	.byte	0x12
	.4byte	0x52
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.byte	0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x6c
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.byte	0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x8b
	.byte	0x4
	.4byte	0x7a
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x6
	.byte	0x4
	.byte	0x7
	.byte	0x4
	.4byte	0xa8
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.byte	0x7
	.byte	0x4
	.4byte	0xb5
	.byte	0x8
	.4byte	0xc0
	.byte	0x9
	.4byte	0xa0
	.byte	0
	.byte	0xa
	.4byte	.LASF207
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x3
	.byte	0x22
	.byte	0xe
	.4byte	0xfd
	.byte	0xb
	.4byte	.LASF14
	.byte	0
	.byte	0xb
	.4byte	.LASF15
	.byte	0x1
	.byte	0xb
	.4byte	.LASF16
	.byte	0x2
	.byte	0xb
	.4byte	.LASF17
	.byte	0x3
	.byte	0xb
	.4byte	.LASF18
	.byte	0x4
	.byte	0xb
	.4byte	.LASF19
	.byte	0x5
	.byte	0xb
	.4byte	.LASF20
	.byte	0x6
	.byte	0
	.byte	0x3
	.4byte	.LASF21
	.byte	0x3
	.byte	0x2a
	.byte	0x3
	.4byte	0xc0
	.byte	0xc
	.4byte	.LASF159
	.byte	0x8
	.byte	0x3
	.byte	0x2c
	.byte	0x10
	.4byte	0x131
	.byte	0xd
	.4byte	.LASF22
	.byte	0x3
	.byte	0x2d
	.byte	0x13
	.4byte	0x131
	.byte	0
	.byte	0xd
	.4byte	.LASF23
	.byte	0x3
	.byte	0x2e
	.byte	0xb
	.4byte	0xa2
	.byte	0x4
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xfd
	.byte	0x3
	.4byte	.LASF24
	.byte	0x3
	.byte	0x2f
	.byte	0x3
	.4byte	0x109
	.byte	0x4
	.4byte	0x137
	.byte	0xe
	.4byte	.LASF25
	.byte	0x4
	.byte	0x38
	.byte	0x1b
	.4byte	0x86
	.byte	0x5
	.byte	0x3
	.4byte	BLOG_HARD_DECLARE_DISABLE
	.byte	0xf
	.4byte	.LASF27
	.byte	0x4
	.byte	0x45
	.byte	0x12
	.4byte	0xfd
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_level_hosal
	.byte	0xe
	.4byte	.LASF26
	.byte	0x4
	.byte	0x46
	.byte	0x1e
	.4byte	0x143
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_info_hosal
	.byte	0xf
	.4byte	.LASF28
	.byte	0x4
	.byte	0x53
	.byte	0x12
	.4byte	0xfd
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_level_hosalhosal_adc
	.byte	0xf
	.4byte	.LASF29
	.byte	0x4
	.byte	0x54
	.byte	0x17
	.4byte	0x143
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_info_hosalhosal_adc
	.byte	0x10
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x5
	.byte	0x4c
	.byte	0x1
	.4byte	0x241
	.byte	0xb
	.4byte	.LASF30
	.byte	0
	.byte	0xb
	.4byte	.LASF31
	.byte	0x1
	.byte	0xb
	.4byte	.LASF32
	.byte	0x2
	.byte	0xb
	.4byte	.LASF33
	.byte	0x3
	.byte	0xb
	.4byte	.LASF34
	.byte	0x4
	.byte	0xb
	.4byte	.LASF35
	.byte	0x5
	.byte	0xb
	.4byte	.LASF36
	.byte	0x6
	.byte	0xb
	.4byte	.LASF37
	.byte	0x7
	.byte	0xb
	.4byte	.LASF38
	.byte	0x8
	.byte	0xb
	.4byte	.LASF39
	.byte	0x9
	.byte	0xb
	.4byte	.LASF40
	.byte	0xa
	.byte	0xb
	.4byte	.LASF41
	.byte	0xb
	.byte	0xb
	.4byte	.LASF42
	.byte	0xc
	.byte	0xb
	.4byte	.LASF43
	.byte	0xd
	.byte	0xb
	.4byte	.LASF44
	.byte	0xe
	.byte	0xb
	.4byte	.LASF45
	.byte	0xf
	.byte	0xb
	.4byte	.LASF46
	.byte	0x10
	.byte	0xb
	.4byte	.LASF47
	.byte	0x11
	.byte	0xb
	.4byte	.LASF48
	.byte	0x12
	.byte	0xb
	.4byte	.LASF49
	.byte	0x13
	.byte	0xb
	.4byte	.LASF50
	.byte	0x14
	.byte	0xb
	.4byte	.LASF51
	.byte	0x15
	.byte	0xb
	.4byte	.LASF52
	.byte	0x16
	.byte	0xb
	.4byte	.LASF53
	.byte	0x17
	.byte	0
	.byte	0x3
	.4byte	.LASF54
	.byte	0x5
	.byte	0x65
	.byte	0x2
	.4byte	0x1a2
	.byte	0x10
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x6
	.byte	0x21
	.byte	0x1
	.4byte	0x268
	.byte	0xb
	.4byte	.LASF55
	.byte	0
	.byte	0xb
	.4byte	.LASF56
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF57
	.byte	0x6
	.byte	0x24
	.byte	0x2
	.4byte	0x24d
	.byte	0x10
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x6
	.byte	0x33
	.byte	0x1
	.4byte	0x28f
	.byte	0xb
	.4byte	.LASF58
	.byte	0
	.byte	0xb
	.4byte	.LASF59
	.byte	0x1
	.byte	0
	.byte	0x10
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x7
	.byte	0x3a
	.byte	0xe
	.4byte	0x32e
	.byte	0xb
	.4byte	.LASF60
	.byte	0
	.byte	0xb
	.4byte	.LASF61
	.byte	0x1
	.byte	0xb
	.4byte	.LASF62
	.byte	0x2
	.byte	0xb
	.4byte	.LASF63
	.byte	0x3
	.byte	0xb
	.4byte	.LASF64
	.byte	0x4
	.byte	0xb
	.4byte	.LASF65
	.byte	0x5
	.byte	0xb
	.4byte	.LASF66
	.byte	0x6
	.byte	0xb
	.4byte	.LASF67
	.byte	0x7
	.byte	0xb
	.4byte	.LASF68
	.byte	0x8
	.byte	0xb
	.4byte	.LASF69
	.byte	0x9
	.byte	0xb
	.4byte	.LASF70
	.byte	0xa
	.byte	0xb
	.4byte	.LASF71
	.byte	0xb
	.byte	0xb
	.4byte	.LASF72
	.byte	0xc
	.byte	0xb
	.4byte	.LASF73
	.byte	0xd
	.byte	0xb
	.4byte	.LASF74
	.byte	0xe
	.byte	0xb
	.4byte	.LASF75
	.byte	0xf
	.byte	0xb
	.4byte	.LASF76
	.byte	0x10
	.byte	0xb
	.4byte	.LASF77
	.byte	0x11
	.byte	0xb
	.4byte	.LASF78
	.byte	0x12
	.byte	0xb
	.4byte	.LASF79
	.byte	0x13
	.byte	0xb
	.4byte	.LASF80
	.byte	0x14
	.byte	0xb
	.4byte	.LASF81
	.byte	0x15
	.byte	0xb
	.4byte	.LASF82
	.byte	0x16
	.byte	0xb
	.4byte	.LASF83
	.byte	0x17
	.byte	0
	.byte	0x3
	.4byte	.LASF84
	.byte	0x7
	.byte	0x53
	.byte	0x2
	.4byte	0x28f
	.byte	0x10
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x7
	.byte	0x58
	.byte	0xe
	.4byte	0x361
	.byte	0xb
	.4byte	.LASF85
	.byte	0
	.byte	0xb
	.4byte	.LASF86
	.byte	0x1
	.byte	0xb
	.4byte	.LASF87
	.byte	0x2
	.byte	0xb
	.4byte	.LASF88
	.byte	0x3
	.byte	0
	.byte	0x3
	.4byte	.LASF89
	.byte	0x7
	.byte	0x5d
	.byte	0x2
	.4byte	0x33a
	.byte	0x10
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x7
	.byte	0x62
	.byte	0xe
	.4byte	0x394
	.byte	0xb
	.4byte	.LASF90
	.byte	0
	.byte	0xb
	.4byte	.LASF91
	.byte	0x1
	.byte	0xb
	.4byte	.LASF92
	.byte	0x2
	.byte	0xb
	.4byte	.LASF93
	.byte	0x3
	.byte	0
	.byte	0x3
	.4byte	.LASF94
	.byte	0x7
	.byte	0x67
	.byte	0x2
	.4byte	0x36d
	.byte	0x10
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x7
	.byte	0x6c
	.byte	0xe
	.4byte	0x3df
	.byte	0xb
	.4byte	.LASF95
	.byte	0
	.byte	0xb
	.4byte	.LASF96
	.byte	0x1
	.byte	0xb
	.4byte	.LASF97
	.byte	0x2
	.byte	0xb
	.4byte	.LASF98
	.byte	0x3
	.byte	0xb
	.4byte	.LASF99
	.byte	0x4
	.byte	0xb
	.4byte	.LASF100
	.byte	0x5
	.byte	0xb
	.4byte	.LASF101
	.byte	0x6
	.byte	0xb
	.4byte	.LASF102
	.byte	0x7
	.byte	0
	.byte	0x3
	.4byte	.LASF103
	.byte	0x7
	.byte	0x75
	.byte	0x2
	.4byte	0x3a0
	.byte	0x10
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x7
	.byte	0x88
	.byte	0xe
	.4byte	0x424
	.byte	0xb
	.4byte	.LASF104
	.byte	0
	.byte	0xb
	.4byte	.LASF105
	.byte	0x1
	.byte	0xb
	.4byte	.LASF106
	.byte	0x2
	.byte	0xb
	.4byte	.LASF107
	.byte	0x3
	.byte	0xb
	.4byte	.LASF108
	.byte	0x4
	.byte	0xb
	.4byte	.LASF109
	.byte	0x5
	.byte	0xb
	.4byte	.LASF110
	.byte	0x6
	.byte	0
	.byte	0x3
	.4byte	.LASF111
	.byte	0x7
	.byte	0x90
	.byte	0x2
	.4byte	0x3eb
	.byte	0x10
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x7
	.byte	0x95
	.byte	0xe
	.4byte	0x44b
	.byte	0xb
	.4byte	.LASF112
	.byte	0
	.byte	0xb
	.4byte	.LASF113
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF114
	.byte	0x7
	.byte	0x98
	.byte	0x2
	.4byte	0x430
	.byte	0x10
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x7
	.byte	0x9d
	.byte	0xe
	.4byte	0x47e
	.byte	0xb
	.4byte	.LASF115
	.byte	0
	.byte	0xb
	.4byte	.LASF116
	.byte	0x1
	.byte	0xb
	.4byte	.LASF117
	.byte	0x2
	.byte	0xb
	.4byte	.LASF118
	.byte	0x3
	.byte	0
	.byte	0x3
	.4byte	.LASF119
	.byte	0x7
	.byte	0xa2
	.byte	0x2
	.4byte	0x457
	.byte	0x10
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x7
	.byte	0xa7
	.byte	0xe
	.4byte	0x4b1
	.byte	0xb
	.4byte	.LASF120
	.byte	0
	.byte	0xb
	.4byte	.LASF121
	.byte	0x1
	.byte	0xb
	.4byte	.LASF122
	.byte	0x2
	.byte	0xb
	.4byte	.LASF123
	.byte	0x3
	.byte	0
	.byte	0x3
	.4byte	.LASF124
	.byte	0x7
	.byte	0xac
	.byte	0x2
	.4byte	0x48a
	.byte	0x10
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x7
	.byte	0xb9
	.byte	0xe
	.4byte	0x4d8
	.byte	0xb
	.4byte	.LASF125
	.byte	0
	.byte	0xb
	.4byte	.LASF126
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF127
	.byte	0x7
	.byte	0xbc
	.byte	0x2
	.4byte	0x4bd
	.byte	0x10
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x7
	.byte	0xc1
	.byte	0xe
	.4byte	0x4ff
	.byte	0xb
	.4byte	.LASF128
	.byte	0
	.byte	0xb
	.4byte	.LASF129
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF130
	.byte	0x7
	.byte	0xc4
	.byte	0x2
	.4byte	0x4e4
	.byte	0x10
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x7
	.byte	0xc9
	.byte	0xe
	.4byte	0x538
	.byte	0xb
	.4byte	.LASF131
	.byte	0
	.byte	0xb
	.4byte	.LASF132
	.byte	0x1
	.byte	0xb
	.4byte	.LASF133
	.byte	0x2
	.byte	0xb
	.4byte	.LASF134
	.byte	0x3
	.byte	0xb
	.4byte	.LASF135
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF136
	.byte	0x7
	.byte	0xcf
	.byte	0x2
	.4byte	0x50b
	.byte	0x11
	.byte	0x34
	.byte	0x7
	.byte	0xfc
	.byte	0x9
	.4byte	0x601
	.byte	0xd
	.4byte	.LASF137
	.byte	0x7
	.byte	0xfd
	.byte	0x16
	.4byte	0x361
	.byte	0
	.byte	0xd
	.4byte	.LASF138
	.byte	0x7
	.byte	0xfe
	.byte	0x16
	.4byte	0x394
	.byte	0x4
	.byte	0xd
	.4byte	.LASF139
	.byte	0x7
	.byte	0xff
	.byte	0x12
	.4byte	0x3df
	.byte	0x8
	.byte	0x12
	.4byte	.LASF140
	.byte	0x7
	.2byte	0x100
	.byte	0x17
	.4byte	0x424
	.byte	0xc
	.byte	0x12
	.4byte	.LASF141
	.byte	0x7
	.2byte	0x101
	.byte	0x17
	.4byte	0x424
	.byte	0x10
	.byte	0x12
	.4byte	.LASF142
	.byte	0x7
	.2byte	0x102
	.byte	0x17
	.4byte	0x47e
	.byte	0x14
	.byte	0x12
	.4byte	.LASF143
	.byte	0x7
	.2byte	0x103
	.byte	0x17
	.4byte	0x44b
	.byte	0x18
	.byte	0x13
	.string	"vcm"
	.byte	0x7
	.2byte	0x104
	.byte	0x16
	.4byte	0x4b1
	.byte	0x1c
	.byte	0x12
	.4byte	.LASF144
	.byte	0x7
	.2byte	0x105
	.byte	0x13
	.4byte	0x4d8
	.byte	0x20
	.byte	0x12
	.4byte	.LASF145
	.byte	0x7
	.2byte	0x106
	.byte	0x18
	.4byte	0x4ff
	.byte	0x24
	.byte	0x12
	.4byte	.LASF146
	.byte	0x7
	.2byte	0x107
	.byte	0x19
	.4byte	0x538
	.byte	0x28
	.byte	0x12
	.4byte	.LASF147
	.byte	0x7
	.2byte	0x108
	.byte	0x11
	.4byte	0x268
	.byte	0x2c
	.byte	0x12
	.4byte	.LASF148
	.byte	0x7
	.2byte	0x109
	.byte	0xd
	.4byte	0x33
	.byte	0x30
	.byte	0
	.byte	0x14
	.4byte	.LASF149
	.byte	0x7
	.2byte	0x10a
	.byte	0x2
	.4byte	0x544
	.byte	0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF150
	.byte	0x15
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x7
	.2byte	0x119
	.byte	0xe
	.4byte	0x63d
	.byte	0xb
	.4byte	.LASF151
	.byte	0
	.byte	0xb
	.4byte	.LASF152
	.byte	0x1
	.byte	0xb
	.4byte	.LASF153
	.byte	0x2
	.byte	0xb
	.4byte	.LASF154
	.byte	0x3
	.byte	0
	.byte	0x14
	.4byte	.LASF155
	.byte	0x7
	.2byte	0x11e
	.byte	0x2
	.4byte	0x615
	.byte	0x16
	.byte	0x8
	.byte	0x7
	.2byte	0x12f
	.byte	0x9
	.4byte	0x671
	.byte	0x12
	.4byte	.LASF156
	.byte	0x7
	.2byte	0x130
	.byte	0x1d
	.4byte	0x63d
	.byte	0
	.byte	0x12
	.4byte	.LASF157
	.byte	0x7
	.2byte	0x131
	.byte	0x11
	.4byte	0x268
	.byte	0x4
	.byte	0
	.byte	0x14
	.4byte	.LASF158
	.byte	0x7
	.2byte	0x132
	.byte	0x2
	.4byte	0x64a
	.byte	0x17
	.4byte	.LASF160
	.byte	0x4
	.byte	0x8
	.2byte	0x4c1
	.byte	0x10
	.4byte	0x744
	.byte	0x18
	.4byte	.LASF161
	.byte	0x8
	.2byte	0x4c2
	.byte	0x16
	.4byte	0x7a
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.byte	0x18
	.4byte	.LASF162
	.byte	0x8
	.2byte	0x4c3
	.byte	0x16
	.4byte	0x7a
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.byte	0x18
	.4byte	.LASF163
	.byte	0x8
	.2byte	0x4c4
	.byte	0x16
	.4byte	0x7a
	.byte	0x4
	.byte	0x3
	.byte	0xe
	.byte	0
	.byte	0x18
	.4byte	.LASF164
	.byte	0x8
	.2byte	0x4c5
	.byte	0x16
	.4byte	0x7a
	.byte	0x4
	.byte	0x3
	.byte	0xb
	.byte	0
	.byte	0x18
	.4byte	.LASF165
	.byte	0x8
	.2byte	0x4c6
	.byte	0x16
	.4byte	0x7a
	.byte	0x4
	.byte	0x3
	.byte	0x8
	.byte	0
	.byte	0x18
	.4byte	.LASF166
	.byte	0x8
	.2byte	0x4c7
	.byte	0x16
	.4byte	0x7a
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.byte	0x18
	.4byte	.LASF167
	.byte	0x8
	.2byte	0x4c8
	.byte	0x16
	.4byte	0x7a
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.byte	0x19
	.string	"SI"
	.byte	0x8
	.2byte	0x4c9
	.byte	0x16
	.4byte	0x7a
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.byte	0x19
	.string	"DI"
	.byte	0x8
	.2byte	0x4ca
	.byte	0x16
	.4byte	0x7a
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.byte	0x18
	.4byte	.LASF168
	.byte	0x8
	.2byte	0x4cb
	.byte	0x16
	.4byte	0x7a
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.byte	0x19
	.string	"I"
	.byte	0x8
	.2byte	0x4cc
	.byte	0x16
	.4byte	0x7a
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x9
	.byte	0x49
	.byte	0xe
	.4byte	0x765
	.byte	0xb
	.4byte	.LASF169
	.byte	0
	.byte	0xb
	.4byte	.LASF170
	.byte	0x1
	.byte	0xb
	.4byte	.LASF171
	.byte	0x2
	.byte	0
	.byte	0x10
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x9
	.byte	0x52
	.byte	0xe
	.4byte	0x78c
	.byte	0xb
	.4byte	.LASF172
	.byte	0
	.byte	0xb
	.4byte	.LASF173
	.byte	0x1
	.byte	0xb
	.4byte	.LASF174
	.byte	0x2
	.byte	0xb
	.4byte	.LASF175
	.byte	0x3
	.byte	0
	.byte	0x3
	.4byte	.LASF176
	.byte	0x9
	.byte	0x57
	.byte	0x2
	.4byte	0x765
	.byte	0x10
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x9
	.byte	0x5c
	.byte	0xe
	.4byte	0x7bf
	.byte	0xb
	.4byte	.LASF177
	.byte	0
	.byte	0xb
	.4byte	.LASF178
	.byte	0x1
	.byte	0xb
	.4byte	.LASF179
	.byte	0x2
	.byte	0xb
	.4byte	.LASF180
	.byte	0x3
	.byte	0
	.byte	0x10
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x9
	.byte	0x66
	.byte	0xe
	.4byte	0x810
	.byte	0xb
	.4byte	.LASF181
	.byte	0
	.byte	0xb
	.4byte	.LASF182
	.byte	0x1
	.byte	0xb
	.4byte	.LASF183
	.byte	0x2
	.byte	0xb
	.4byte	.LASF184
	.byte	0x3
	.byte	0xb
	.4byte	.LASF185
	.byte	0x6
	.byte	0xb
	.4byte	.LASF186
	.byte	0x7
	.byte	0xb
	.4byte	.LASF187
	.byte	0xa
	.byte	0xb
	.4byte	.LASF188
	.byte	0xb
	.byte	0xb
	.4byte	.LASF189
	.byte	0x16
	.byte	0xb
	.4byte	.LASF190
	.byte	0x17
	.byte	0xb
	.4byte	.LASF191
	.byte	0
	.byte	0
	.byte	0x3
	.4byte	.LASF192
	.byte	0x9
	.byte	0x72
	.byte	0x2
	.4byte	0x7bf
	.byte	0x10
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x9
	.byte	0x82
	.byte	0xe
	.4byte	0x83d
	.byte	0xb
	.4byte	.LASF193
	.byte	0
	.byte	0xb
	.4byte	.LASF194
	.byte	0x1
	.byte	0xb
	.4byte	.LASF195
	.byte	0x2
	.byte	0
	.byte	0x11
	.byte	0x10
	.byte	0x9
	.byte	0xb0
	.byte	0x9
	.4byte	0x87b
	.byte	0xd
	.4byte	.LASF196
	.byte	0x9
	.byte	0xb1
	.byte	0xe
	.4byte	0x7a
	.byte	0
	.byte	0xd
	.4byte	.LASF197
	.byte	0x9
	.byte	0xb2
	.byte	0xe
	.4byte	0x7a
	.byte	0x4
	.byte	0xd
	.4byte	.LASF198
	.byte	0x9
	.byte	0xb3
	.byte	0xe
	.4byte	0x7a
	.byte	0x8
	.byte	0xd
	.4byte	.LASF199
	.byte	0x9
	.byte	0xb4
	.byte	0x1c
	.4byte	0x67e
	.byte	0xc
	.byte	0
	.byte	0x3
	.4byte	.LASF200
	.byte	0x9
	.byte	0xb5
	.byte	0x2
	.4byte	0x83d
	.byte	0x11
	.byte	0xc
	.byte	0x9
	.byte	0xba
	.byte	0x9
	.4byte	0x8b8
	.byte	0x1a
	.string	"dir"
	.byte	0x9
	.byte	0xbb
	.byte	0x18
	.4byte	0x78c
	.byte	0
	.byte	0xd
	.4byte	.LASF201
	.byte	0x9
	.byte	0xbc
	.byte	0x19
	.4byte	0x810
	.byte	0x4
	.byte	0xd
	.4byte	.LASF202
	.byte	0x9
	.byte	0xbd
	.byte	0x19
	.4byte	0x810
	.byte	0x8
	.byte	0
	.byte	0x3
	.4byte	.LASF203
	.byte	0x9
	.byte	0xbe
	.byte	0x2
	.4byte	0x887
	.byte	0x7
	.byte	0x4
	.4byte	0x87b
	.byte	0x10
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0xa
	.byte	0xbf
	.byte	0xe
	.4byte	0x8e5
	.byte	0xb
	.4byte	.LASF204
	.byte	0
	.byte	0xb
	.4byte	.LASF205
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF206
	.byte	0xb
	.byte	0x38
	.byte	0xd
	.4byte	0x99
	.byte	0xa
	.4byte	.LASF208
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0xc
	.byte	0x1d
	.byte	0xe
	.4byte	0x922
	.byte	0xb
	.4byte	.LASF209
	.byte	0
	.byte	0xb
	.4byte	.LASF210
	.byte	0x1
	.byte	0xb
	.4byte	.LASF211
	.byte	0x2
	.byte	0xb
	.4byte	.LASF212
	.byte	0x3
	.byte	0xb
	.4byte	.LASF213
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF214
	.byte	0xc
	.byte	0x23
	.byte	0x3
	.4byte	0x8f1
	.byte	0x10
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0xc
	.byte	0x30
	.byte	0xe
	.4byte	0x949
	.byte	0xb
	.4byte	.LASF215
	.byte	0
	.byte	0xb
	.4byte	.LASF216
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF217
	.byte	0xc
	.byte	0x33
	.byte	0x3
	.4byte	0x92e
	.byte	0x11
	.byte	0x10
	.byte	0xc
	.byte	0x38
	.byte	0x9
	.4byte	0x993
	.byte	0xd
	.4byte	.LASF218
	.byte	0xc
	.byte	0x39
	.byte	0xe
	.4byte	0x7a
	.byte	0
	.byte	0x1a
	.string	"pin"
	.byte	0xc
	.byte	0x3a
	.byte	0xe
	.4byte	0x7a
	.byte	0x4
	.byte	0xd
	.4byte	.LASF219
	.byte	0xc
	.byte	0x3b
	.byte	0x1d
	.4byte	0x949
	.byte	0x8
	.byte	0xd
	.4byte	.LASF220
	.byte	0xc
	.byte	0x3c
	.byte	0xd
	.4byte	0x60
	.byte	0xc
	.byte	0
	.byte	0x3
	.4byte	.LASF221
	.byte	0xc
	.byte	0x3d
	.byte	0x3
	.4byte	0x955
	.byte	0x3
	.4byte	.LASF222
	.byte	0xc
	.byte	0x45
	.byte	0x10
	.4byte	0xaf
	.byte	0x11
	.byte	0x24
	.byte	0xc
	.byte	0x4a
	.byte	0x9
	.4byte	0xa02
	.byte	0xd
	.4byte	.LASF223
	.byte	0xc
	.byte	0x4b
	.byte	0xd
	.4byte	0x60
	.byte	0
	.byte	0xd
	.4byte	.LASF224
	.byte	0xc
	.byte	0x4c
	.byte	0x18
	.4byte	0x993
	.byte	0x4
	.byte	0xd
	.4byte	.LASF225
	.byte	0xc
	.byte	0x4d
	.byte	0x16
	.4byte	0x8e5
	.byte	0x14
	.byte	0x1a
	.string	"cb"
	.byte	0xc
	.byte	0x4e
	.byte	0x15
	.4byte	0x99f
	.byte	0x18
	.byte	0xd
	.4byte	.LASF226
	.byte	0xc
	.byte	0x4f
	.byte	0xb
	.4byte	0xa0
	.byte	0x1c
	.byte	0xd
	.4byte	.LASF227
	.byte	0xc
	.byte	0x50
	.byte	0xb
	.4byte	0xa0
	.byte	0x20
	.byte	0
	.byte	0x3
	.4byte	.LASF228
	.byte	0xc
	.byte	0x51
	.byte	0x3
	.4byte	0x9ab
	.byte	0x3
	.4byte	.LASF229
	.byte	0xc
	.byte	0x59
	.byte	0x10
	.4byte	0xa1a
	.byte	0x7
	.byte	0x4
	.4byte	0xa20
	.byte	0x8
	.4byte	0xa35
	.byte	0x9
	.4byte	0x922
	.byte	0x9
	.4byte	0xa0
	.byte	0x9
	.4byte	0x7a
	.byte	0
	.byte	0xc
	.4byte	.LASF230
	.byte	0x18
	.byte	0x1
	.byte	0x1b
	.byte	0x10
	.4byte	0xa91
	.byte	0xd
	.4byte	.LASF231
	.byte	0x1
	.byte	0x1c
	.byte	0xf
	.4byte	0xa91
	.byte	0
	.byte	0xd
	.4byte	.LASF232
	.byte	0x1
	.byte	0x1d
	.byte	0xb
	.4byte	0xa0
	.byte	0x4
	.byte	0xd
	.4byte	.LASF233
	.byte	0x1
	.byte	0x1e
	.byte	0xb
	.4byte	0xa0
	.byte	0x8
	.byte	0xd
	.4byte	.LASF234
	.byte	0x1
	.byte	0x1f
	.byte	0x9
	.4byte	0x99
	.byte	0xc
	.byte	0xd
	.4byte	.LASF235
	.byte	0x1
	.byte	0x27
	.byte	0xe
	.4byte	0x7a
	.byte	0x10
	.byte	0xd
	.4byte	.LASF236
	.byte	0x1
	.byte	0x28
	.byte	0xe
	.4byte	0x7a
	.byte	0x14
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x7a
	.byte	0x3
	.4byte	.LASF237
	.byte	0x1
	.byte	0x29
	.byte	0x2
	.4byte	0xa35
	.byte	0xe
	.4byte	.LASF238
	.byte	0x1
	.byte	0x2b
	.byte	0x19
	.4byte	0xab5
	.byte	0x5
	.byte	0x3
	.4byte	pgdevice
	.byte	0x7
	.byte	0x4
	.4byte	0xa02
	.byte	0x1b
	.4byte	.LASF240
	.byte	0x1
	.2byte	0x276
	.byte	0x5
	.4byte	0x99
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x1
	.byte	0x9c
	.4byte	0xb3a
	.byte	0x1c
	.string	"adc"
	.byte	0x1
	.2byte	0x276
	.byte	0x29
	.4byte	0xab5
	.4byte	.LLST50
	.byte	0x1d
	.4byte	.LASF239
	.byte	0x1
	.2byte	0x278
	.byte	0x16
	.4byte	0xb3a
	.4byte	.LLST51
	.byte	0x1e
	.4byte	.LVL178
	.4byte	0x1866
	.byte	0x1e
	.4byte	.LVL179
	.4byte	0x1866
	.byte	0x1f
	.4byte	.LVL180
	.4byte	0x1866
	.4byte	0xb1e
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LVL181
	.4byte	0x1872
	.byte	0x1e
	.4byte	.LVL182
	.4byte	0x187f
	.byte	0x1e
	.4byte	.LVL183
	.4byte	0x188b
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xa97
	.byte	0x1b
	.4byte	.LASF241
	.byte	0x1
	.2byte	0x271
	.byte	0x5
	.4byte	0x99
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x1
	.byte	0x9c
	.4byte	0xb6d
	.byte	0x1c
	.string	"adc"
	.byte	0x1
	.2byte	0x271
	.byte	0x25
	.4byte	0xab5
	.4byte	.LLST49
	.byte	0
	.byte	0x1b
	.4byte	.LASF242
	.byte	0x1
	.2byte	0x26b
	.byte	0x5
	.4byte	0x99
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x1
	.byte	0x9c
	.4byte	0xc07
	.byte	0x1c
	.string	"adc"
	.byte	0x1
	.2byte	0x26b
	.byte	0x26
	.4byte	0xab5
	.4byte	.LLST46
	.byte	0x21
	.4byte	.LASF243
	.byte	0x1
	.2byte	0x26b
	.byte	0x31
	.4byte	0xa0
	.4byte	.LLST47
	.byte	0x21
	.4byte	.LASF244
	.byte	0x1
	.2byte	0x26b
	.byte	0x40
	.4byte	0x7a
	.4byte	.LLST48
	.byte	0x1e
	.4byte	.LVL169
	.4byte	0x1897
	.byte	0x1e
	.4byte	.LVL170
	.4byte	0x18a3
	.byte	0x1f
	.4byte	.LVL171
	.4byte	0x18b0
	.4byte	0xbfd
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC21
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x20
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x20
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x26d
	.byte	0
	.byte	0x1e
	.4byte	.LVL172
	.4byte	0x18bc
	.byte	0
	.byte	0x1b
	.4byte	.LASF245
	.byte	0x1
	.2byte	0x265
	.byte	0x5
	.4byte	0x99
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x1
	.byte	0x9c
	.4byte	0xc8f
	.byte	0x1c
	.string	"adc"
	.byte	0x1
	.2byte	0x265
	.byte	0x2e
	.4byte	0xab5
	.4byte	.LLST44
	.byte	0x1c
	.string	"cb"
	.byte	0x1
	.2byte	0x265
	.byte	0x42
	.4byte	0xa0e
	.4byte	.LLST45
	.byte	0x1e
	.4byte	.LVL164
	.4byte	0x1897
	.byte	0x1e
	.4byte	.LVL165
	.4byte	0x18a3
	.byte	0x1f
	.4byte	.LVL166
	.4byte	0x18b0
	.4byte	0xc85
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC21
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x20
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x20
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x267
	.byte	0
	.byte	0x1e
	.4byte	.LVL167
	.4byte	0x18bc
	.byte	0
	.byte	0x1b
	.4byte	.LASF246
	.byte	0x1
	.2byte	0x239
	.byte	0x5
	.4byte	0x99
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x1
	.byte	0x9c
	.4byte	0xe33
	.byte	0x1c
	.string	"adc"
	.byte	0x1
	.2byte	0x239
	.byte	0x2a
	.4byte	0xab5
	.4byte	.LLST34
	.byte	0x21
	.4byte	.LASF247
	.byte	0x1
	.2byte	0x239
	.byte	0x38
	.4byte	0x7a
	.4byte	.LLST35
	.byte	0x21
	.4byte	.LASF248
	.byte	0x1
	.2byte	0x239
	.byte	0x4a
	.4byte	0x7a
	.4byte	.LLST36
	.byte	0x22
	.string	"val"
	.byte	0x1
	.2byte	0x23b
	.byte	0x9
	.4byte	0x99
	.4byte	.LLST37
	.byte	0x1d
	.4byte	.LASF239
	.byte	0x1
	.2byte	0x23c
	.byte	0x16
	.4byte	0xb3a
	.4byte	.LLST38
	.byte	0x23
	.4byte	0x15aa
	.4byte	.LBB44
	.4byte	.Ldebug_ranges0+0x80
	.byte	0x1
	.2byte	0x252
	.byte	0x13
	.4byte	0xd93
	.byte	0x24
	.4byte	0x15c9
	.4byte	.LLST39
	.byte	0x24
	.4byte	0x15d6
	.4byte	.LLST40
	.byte	0x24
	.4byte	0x15bc
	.4byte	.LLST41
	.byte	0x25
	.4byte	.Ldebug_ranges0+0x80
	.byte	0x26
	.4byte	0x15e3
	.4byte	.LLST42
	.byte	0x26
	.4byte	0x15ee
	.4byte	.LLST43
	.byte	0x1e
	.4byte	.LVL156
	.4byte	0x1897
	.byte	0x1e
	.4byte	.LVL157
	.4byte	0x18a3
	.byte	0x1f
	.4byte	.LVL158
	.4byte	0x18b0
	.4byte	0xd88
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC20
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x20
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x20
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x1cd
	.byte	0
	.byte	0x1e
	.4byte	.LVL162
	.4byte	0x18bc
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LVL134
	.4byte	0x1897
	.byte	0x1e
	.4byte	.LVL135
	.4byte	0x18a3
	.byte	0x1e
	.4byte	.LVL136
	.4byte	0x18b0
	.byte	0x1e
	.4byte	.LVL137
	.4byte	0x18bc
	.byte	0x1e
	.4byte	.LVL140
	.4byte	0x1897
	.byte	0x1e
	.4byte	.LVL141
	.4byte	0x18a3
	.byte	0x1f
	.4byte	.LVL142
	.4byte	0x18b0
	.4byte	0xdff
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC18
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x20
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x20
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x249
	.byte	0x20
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LVL143
	.4byte	0x18bc
	.byte	0x1e
	.4byte	.LVL152
	.4byte	0x1897
	.byte	0x1e
	.4byte	.LVL153
	.4byte	0x18a3
	.byte	0x1e
	.4byte	.LVL154
	.4byte	0x18bc
	.byte	0x27
	.4byte	.LVL159
	.4byte	0x18c9
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LASF249
	.byte	0x1
	.2byte	0x22f
	.byte	0x12
	.4byte	0xab5
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x1
	.byte	0x9c
	.4byte	0xe9a
	.byte	0x1e
	.4byte	.LVL124
	.4byte	0x1897
	.byte	0x1e
	.4byte	.LVL125
	.4byte	0x18a3
	.byte	0x1f
	.4byte	.LVL126
	.4byte	0x18b0
	.4byte	0xe90
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x20
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x20
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x232
	.byte	0
	.byte	0x1e
	.4byte	.LVL127
	.4byte	0x18bc
	.byte	0
	.byte	0x1b
	.4byte	.LASF250
	.byte	0x1
	.2byte	0x21c
	.byte	0x5
	.4byte	0x99
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x1
	.byte	0x9c
	.4byte	0xf34
	.byte	0x1c
	.string	"adc"
	.byte	0x1
	.2byte	0x21c
	.byte	0x2f
	.4byte	0xab5
	.4byte	.LLST31
	.byte	0x21
	.4byte	.LASF247
	.byte	0x1
	.2byte	0x21c
	.byte	0x3d
	.4byte	0x7a
	.4byte	.LLST32
	.byte	0x1d
	.4byte	.LASF239
	.byte	0x1
	.2byte	0x21e
	.byte	0x16
	.4byte	0xb3a
	.4byte	.LLST33
	.byte	0x1e
	.4byte	.LVL116
	.4byte	0x1897
	.byte	0x1e
	.4byte	.LVL117
	.4byte	0x18a3
	.byte	0x1f
	.4byte	.LVL118
	.4byte	0x18b0
	.4byte	0xf2a
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x20
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x20
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x226
	.byte	0
	.byte	0x1e
	.4byte	.LVL119
	.4byte	0x18bc
	.byte	0
	.byte	0x1b
	.4byte	.LASF251
	.byte	0x1
	.2byte	0x20a
	.byte	0x5
	.4byte	0x99
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x1
	.byte	0x9c
	.4byte	0xfce
	.byte	0x1c
	.string	"adc"
	.byte	0x1
	.2byte	0x20a
	.byte	0x2c
	.4byte	0xab5
	.4byte	.LLST28
	.byte	0x21
	.4byte	.LASF247
	.byte	0x1
	.2byte	0x20a
	.byte	0x3a
	.4byte	0x7a
	.4byte	.LLST29
	.byte	0x1d
	.4byte	.LASF239
	.byte	0x1
	.2byte	0x20c
	.byte	0x16
	.4byte	0xb3a
	.4byte	.LLST30
	.byte	0x1e
	.4byte	.LVL103
	.4byte	0x1897
	.byte	0x1e
	.4byte	.LVL104
	.4byte	0x18a3
	.byte	0x1f
	.4byte	.LVL105
	.4byte	0x18b0
	.4byte	0xfc4
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x20
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x20
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x214
	.byte	0
	.byte	0x1e
	.4byte	.LVL106
	.4byte	0x18bc
	.byte	0
	.byte	0x1b
	.4byte	.LASF252
	.byte	0x1
	.2byte	0x1d1
	.byte	0x5
	.4byte	0x99
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.4byte	0x15aa
	.byte	0x1c
	.string	"adc"
	.byte	0x1
	.2byte	0x1d1
	.byte	0x25
	.4byte	0xab5
	.4byte	.LLST0
	.byte	0x22
	.string	"res"
	.byte	0x1
	.2byte	0x1d3
	.byte	0x9
	.4byte	0x99
	.4byte	.LLST1
	.byte	0x1d
	.4byte	.LASF253
	.byte	0x1
	.2byte	0x1d4
	.byte	0x9
	.4byte	0x99
	.4byte	.LLST2
	.byte	0x22
	.string	"pin"
	.byte	0x1
	.2byte	0x1d5
	.byte	0x13
	.4byte	0x241
	.4byte	.LLST3
	.byte	0x1d
	.4byte	.LASF239
	.byte	0x1
	.2byte	0x1d6
	.byte	0x16
	.4byte	0xb3a
	.4byte	.LLST4
	.byte	0x23
	.4byte	0x17d3
	.4byte	.LBB16
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x1e1
	.byte	0xb
	.4byte	0x10e9
	.byte	0x24
	.4byte	0x17e4
	.4byte	.LLST5
	.byte	0x25
	.4byte	.Ldebug_ranges0+0
	.byte	0x26
	.4byte	0x17f0
	.4byte	.LLST6
	.byte	0x28
	.4byte	0x17fa
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0x1f
	.4byte	.LVL14
	.4byte	0x18d6
	.4byte	0x1097
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.byte	0x1e
	.4byte	.LVL16
	.4byte	0x1897
	.byte	0x1e
	.4byte	.LVL17
	.4byte	0x18a3
	.byte	0x1f
	.4byte	.LVL19
	.4byte	0x18b0
	.4byte	0x10de
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x20
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x20
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x7e
	.byte	0x20
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LVL23
	.4byte	0x18bc
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	0x175f
	.4byte	.LBB22
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1
	.2byte	0x1fc
	.byte	0x9
	.4byte	0x11b0
	.byte	0x24
	.4byte	0x176c
	.4byte	.LLST7
	.byte	0x24
	.4byte	0x1778
	.4byte	.LLST8
	.byte	0x25
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x26
	.4byte	0x1784
	.4byte	.LLST9
	.byte	0x26
	.4byte	0x1790
	.4byte	.LLST10
	.byte	0x26
	.4byte	0x179c
	.4byte	.LLST11
	.byte	0x1e
	.4byte	.LVL41
	.4byte	0x1897
	.byte	0x1e
	.4byte	.LVL42
	.4byte	0x18a3
	.byte	0x1f
	.4byte	.LVL43
	.4byte	0x18b0
	.4byte	0x1187
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0x20
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x20
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0xd2
	.byte	0x20
	.byte	0x1
	.byte	0x5f
	.byte	0xc
	.byte	0xa
	.2byte	0x753
	.byte	0xf7
	.byte	0x25
	.byte	0x79
	.byte	0
	.byte	0xf7
	.byte	0x25
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x60
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL44
	.4byte	0x18e1
	.4byte	0x11a5
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0x7f
	.byte	0
	.byte	0x1e
	.4byte	.LVL74
	.4byte	0x18bc
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	0x1618
	.4byte	.LBB25
	.4byte	.Ldebug_ranges0+0x38
	.byte	0x1
	.2byte	0x1fd
	.byte	0x9
	.4byte	0x1306
	.byte	0x24
	.4byte	0x1626
	.4byte	.LLST12
	.byte	0x25
	.4byte	.Ldebug_ranges0+0x38
	.byte	0x26
	.4byte	0x1633
	.4byte	.LLST13
	.byte	0x26
	.4byte	0x163e
	.4byte	.LLST14
	.byte	0x28
	.4byte	0x164b
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7e
	.byte	0x26
	.4byte	0x1658
	.4byte	.LLST15
	.byte	0x26
	.4byte	0x1665
	.4byte	.LLST16
	.byte	0x28
	.4byte	0x1672
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0x28
	.4byte	0x167f
	.byte	0x3
	.byte	0x91
	.byte	0xdc,0x7e
	.byte	0x28
	.4byte	0x168c
	.byte	0x3
	.byte	0x91
	.byte	0x84,0x7f
	.byte	0x28
	.4byte	0x1699
	.byte	0x3
	.byte	0x91
	.byte	0xc8,0x7e
	.byte	0x23
	.4byte	0x17a9
	.4byte	.LBB27
	.4byte	.Ldebug_ranges0+0x50
	.byte	0x1
	.2byte	0x16f
	.byte	0x10
	.4byte	0x1252
	.byte	0x24
	.4byte	0x17ba
	.4byte	.LLST17
	.byte	0x25
	.4byte	.Ldebug_ranges0+0x50
	.byte	0x26
	.4byte	0x17c6
	.4byte	.LLST18
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL45
	.4byte	0x18d6
	.4byte	0x1277
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7e
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x7
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x23
	.byte	0x28
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0x1e
	.4byte	.LVL48
	.4byte	0x18ee
	.byte	0x1e
	.4byte	.LVL49
	.4byte	0x18fb
	.byte	0x1e
	.4byte	.LVL50
	.4byte	0x1908
	.byte	0x1f
	.4byte	.LVL51
	.4byte	0x1915
	.4byte	0x12a7
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0
	.byte	0x1f
	.4byte	.LVL55
	.4byte	0x1922
	.4byte	0x12bf
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3a
	.byte	0x20
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x1f
	.4byte	.LVL56
	.4byte	0x192f
	.4byte	0x12d4
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xc8,0x7e
	.byte	0
	.byte	0x1e
	.4byte	.LVL57
	.4byte	0x193c
	.byte	0x1f
	.4byte	.LVL78
	.4byte	0x1949
	.4byte	0x12f5
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x47
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x27
	.4byte	.LVL79
	.4byte	0x1956
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	0x16c7
	.4byte	.LBB32
	.4byte	.Ldebug_ranges0+0x68
	.byte	0x1
	.2byte	0x1fe
	.byte	0x9
	.4byte	0x1453
	.byte	0x24
	.4byte	0x16e4
	.4byte	.LLST19
	.byte	0x24
	.4byte	0x16d8
	.4byte	.LLST20
	.byte	0x25
	.4byte	.Ldebug_ranges0+0x68
	.byte	0x26
	.4byte	0x16f0
	.4byte	.LLST21
	.byte	0x26
	.4byte	0x16fc
	.4byte	.LLST22
	.byte	0x28
	.4byte	0x1708
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0x26
	.4byte	0x1714
	.4byte	.LLST23
	.byte	0x29
	.4byte	0x1721
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.byte	0x1
	.2byte	0x113
	.byte	0x5
	.4byte	0x138c
	.byte	0x24
	.4byte	0x1746
	.4byte	.LLST24
	.byte	0x24
	.4byte	0x173a
	.4byte	.LLST25
	.byte	0x24
	.4byte	0x172e
	.4byte	.LLST26
	.byte	0x2a
	.4byte	0x1752
	.byte	0
	.byte	0x1f
	.4byte	.LVL59
	.4byte	0x1963
	.4byte	0x139f
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1f
	.4byte	.LVL60
	.4byte	0x196f
	.4byte	0x13b3
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x1e
	.4byte	.LVL62
	.4byte	0x1897
	.byte	0x1e
	.4byte	.LVL63
	.4byte	0x18a3
	.byte	0x1e
	.4byte	.LVL65
	.4byte	0x18b0
	.byte	0x1e
	.4byte	.LVL81
	.4byte	0x18bc
	.byte	0x1f
	.4byte	.LVL82
	.4byte	0x196f
	.4byte	0x13eb
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x50
	.byte	0
	.byte	0x1e
	.4byte	.LVL84
	.4byte	0x1897
	.byte	0x1e
	.4byte	.LVL85
	.4byte	0x18a3
	.byte	0x1e
	.4byte	.LVL86
	.4byte	0x18bc
	.byte	0x1e
	.4byte	.LVL89
	.4byte	0x197b
	.byte	0x1f
	.4byte	.LVL91
	.4byte	0x1988
	.4byte	0x1424
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0
	.byte	0x1f
	.4byte	.LVL92
	.4byte	0x1995
	.4byte	0x1438
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x27
	.4byte	.LVL93
	.4byte	0x19a2
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	adc_data_update
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	0x15fc
	.4byte	.LBB37
	.4byte	.LBE37-.LBB37
	.byte	0x1
	.2byte	0x1ff
	.byte	0x9
	.4byte	0x14ee
	.byte	0x24
	.4byte	0x160a
	.4byte	.LLST27
	.byte	0x1f
	.4byte	.LVL66
	.4byte	0x19ae
	.4byte	0x148f
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x1f
	.4byte	.LVL67
	.4byte	0x19ae
	.4byte	0x14ad
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1f
	.4byte	.LVL68
	.4byte	0x19ae
	.4byte	0x14cb
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1e
	.4byte	.LVL69
	.4byte	0x19bb
	.byte	0x1e
	.4byte	.LVL70
	.4byte	0x19c8
	.byte	0x27
	.4byte	.LVL71
	.4byte	0x19d5
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LVL5
	.4byte	0x1897
	.byte	0x1e
	.4byte	.LVL6
	.4byte	0x18a3
	.byte	0x1e
	.4byte	.LVL8
	.4byte	0x18b0
	.byte	0x1e
	.4byte	.LVL10
	.4byte	0x18bc
	.byte	0x1e
	.4byte	.LVL20
	.4byte	0x1897
	.byte	0x1e
	.4byte	.LVL21
	.4byte	0x18a3
	.byte	0x1f
	.4byte	.LVL25
	.4byte	0x196f
	.4byte	0x1537
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x48
	.byte	0
	.byte	0x1e
	.4byte	.LVL27
	.4byte	0x1897
	.byte	0x1e
	.4byte	.LVL28
	.4byte	0x18a3
	.byte	0x1e
	.4byte	.LVL30
	.4byte	0x18bc
	.byte	0x1e
	.4byte	.LVL32
	.4byte	0x18bc
	.byte	0x1f
	.4byte	.LVL33
	.4byte	0x19e2
	.4byte	0x1573
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x48
	.byte	0
	.byte	0x1e
	.4byte	.LVL34
	.4byte	0x1897
	.byte	0x1e
	.4byte	.LVL35
	.4byte	0x18a3
	.byte	0x1e
	.4byte	.LVL36
	.4byte	0x18bc
	.byte	0x1e
	.4byte	.LVL95
	.4byte	0x1897
	.byte	0x1e
	.4byte	.LVL96
	.4byte	0x18a3
	.byte	0x1e
	.4byte	.LVL97
	.4byte	0x18bc
	.byte	0
	.byte	0x2b
	.4byte	.LASF263
	.byte	0x1
	.2byte	0x1bb
	.byte	0xc
	.4byte	0x99
	.byte	0x1
	.4byte	0x15fc
	.byte	0x2c
	.4byte	.LASF254
	.byte	0x1
	.2byte	0x1bb
	.byte	0x25
	.4byte	0xa91
	.byte	0x2c
	.4byte	.LASF236
	.byte	0x1
	.2byte	0x1bb
	.byte	0x2f
	.4byte	0x99
	.byte	0x2c
	.4byte	.LASF247
	.byte	0x1
	.2byte	0x1bb
	.byte	0x3e
	.4byte	0x99
	.byte	0x2d
	.string	"i"
	.byte	0x1
	.2byte	0x1bd
	.byte	0x9
	.4byte	0x99
	.byte	0x2e
	.4byte	.LASF243
	.byte	0x1
	.2byte	0x1be
	.byte	0xd
	.4byte	0x46
	.byte	0
	.byte	0x2f
	.4byte	.LASF256
	.byte	0x1
	.2byte	0x17b
	.byte	0xd
	.byte	0x1
	.4byte	0x1618
	.byte	0x2c
	.4byte	.LASF255
	.byte	0x1
	.2byte	0x17b
	.byte	0x2c
	.4byte	0x8e5
	.byte	0
	.byte	0x2f
	.4byte	.LASF257
	.byte	0x1
	.2byte	0x12b
	.byte	0xd
	.byte	0x1
	.4byte	0x16a7
	.byte	0x30
	.string	"adc"
	.byte	0x1
	.2byte	0x12b
	.byte	0x27
	.4byte	0xab5
	.byte	0x2d
	.string	"i"
	.byte	0x1
	.2byte	0x12d
	.byte	0x9
	.4byte	0x99
	.byte	0x2e
	.4byte	.LASF255
	.byte	0x1
	.2byte	0x12d
	.byte	0xc
	.4byte	0x99
	.byte	0x2e
	.4byte	.LASF258
	.byte	0x1
	.2byte	0x131
	.byte	0xd
	.4byte	0x16a7
	.byte	0x2e
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x133
	.byte	0x1d
	.4byte	0x949
	.byte	0x2d
	.string	"pin"
	.byte	0x1
	.2byte	0x134
	.byte	0x13
	.4byte	0x241
	.byte	0x2e
	.4byte	.LASF259
	.byte	0x1
	.2byte	0x136
	.byte	0x12
	.4byte	0x601
	.byte	0x2e
	.4byte	.LASF260
	.byte	0x1
	.2byte	0x137
	.byte	0x13
	.4byte	0x16b7
	.byte	0x2e
	.4byte	.LASF261
	.byte	0x1
	.2byte	0x138
	.byte	0x13
	.4byte	0x16b7
	.byte	0x2e
	.4byte	.LASF262
	.byte	0x1
	.2byte	0x139
	.byte	0x17
	.4byte	0x671
	.byte	0
	.byte	0x31
	.4byte	0x60
	.4byte	0x16b7
	.byte	0x32
	.4byte	0x25
	.byte	0x9
	.byte	0
	.byte	0x31
	.4byte	0x32e
	.4byte	0x16c7
	.byte	0x32
	.4byte	0x25
	.byte	0x9
	.byte	0
	.byte	0x33
	.4byte	.LASF264
	.byte	0x1
	.byte	0xf1
	.byte	0xc
	.4byte	0x99
	.byte	0x1
	.4byte	0x1721
	.byte	0x34
	.string	"adc"
	.byte	0x1
	.byte	0xf1
	.byte	0x2a
	.4byte	0xab5
	.byte	0x35
	.4byte	.LASF265
	.byte	0x1
	.byte	0xf1
	.byte	0x38
	.4byte	0x7a
	.byte	0x36
	.4byte	.LASF266
	.byte	0x1
	.byte	0xf3
	.byte	0x18
	.4byte	0x8c4
	.byte	0x36
	.4byte	.LASF233
	.byte	0x1
	.byte	0xf4
	.byte	0xf
	.4byte	0xa91
	.byte	0x36
	.4byte	.LASF267
	.byte	0x1
	.byte	0xf5
	.byte	0x16
	.4byte	0x8b8
	.byte	0x36
	.4byte	.LASF239
	.byte	0x1
	.byte	0xf6
	.byte	0x16
	.4byte	0xb3a
	.byte	0
	.byte	0x37
	.4byte	.LASF268
	.byte	0x1
	.byte	0xd7
	.byte	0xd
	.byte	0x1
	.4byte	0x175f
	.byte	0x35
	.4byte	.LASF266
	.byte	0x1
	.byte	0xd7
	.byte	0x31
	.4byte	0x8c4
	.byte	0x34
	.string	"buf"
	.byte	0x1
	.byte	0xd7
	.byte	0x43
	.4byte	0xa91
	.byte	0x35
	.4byte	.LASF265
	.byte	0x1
	.byte	0xd7
	.byte	0x51
	.4byte	0x7a
	.byte	0x36
	.4byte	.LASF269
	.byte	0x1
	.byte	0xd9
	.byte	0x1c
	.4byte	0x67e
	.byte	0
	.byte	0x37
	.4byte	.LASF270
	.byte	0x1
	.byte	0xaf
	.byte	0xd
	.byte	0x1
	.4byte	0x17a9
	.byte	0x35
	.4byte	.LASF219
	.byte	0x1
	.byte	0xaf
	.byte	0x33
	.4byte	0x949
	.byte	0x35
	.4byte	.LASF253
	.byte	0x1
	.byte	0xaf
	.byte	0x42
	.4byte	0x7a
	.byte	0x38
	.string	"div"
	.byte	0x1
	.byte	0xb1
	.byte	0xe
	.4byte	0x7a
	.byte	0x36
	.4byte	.LASF271
	.byte	0x1
	.byte	0xb2
	.byte	0xe
	.4byte	0x7a
	.byte	0x36
	.4byte	.LASF272
	.byte	0x1
	.byte	0xb3
	.byte	0xe
	.4byte	0x7a
	.byte	0
	.byte	0x33
	.4byte	.LASF273
	.byte	0x1
	.byte	0x83
	.byte	0xc
	.4byte	0x99
	.byte	0x1
	.4byte	0x17d3
	.byte	0x34
	.string	"pin"
	.byte	0x1
	.byte	0x83
	.byte	0x32
	.4byte	0x241
	.byte	0x36
	.4byte	.LASF247
	.byte	0x1
	.byte	0x85
	.byte	0x9
	.4byte	0x99
	.byte	0
	.byte	0x33
	.4byte	.LASF274
	.byte	0x1
	.byte	0x6c
	.byte	0xc
	.4byte	0x99
	.byte	0x1
	.4byte	0x1807
	.byte	0x34
	.string	"pin"
	.byte	0x1
	.byte	0x6c
	.byte	0x2f
	.4byte	0x241
	.byte	0x38
	.string	"i"
	.byte	0x1
	.byte	0x6e
	.byte	0x9
	.4byte	0x99
	.byte	0x36
	.4byte	.LASF275
	.byte	0x1
	.byte	0x70
	.byte	0x13
	.4byte	0x1807
	.byte	0
	.byte	0x31
	.4byte	0x241
	.4byte	0x1817
	.byte	0x32
	.4byte	0x25
	.byte	0x9
	.byte	0
	.byte	0x39
	.4byte	.LASF310
	.byte	0x1
	.byte	0x4f
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x1866
	.byte	0x3a
	.4byte	.LASF226
	.byte	0x1
	.byte	0x4f
	.byte	0x1d
	.4byte	0xa0
	.byte	0x1
	.byte	0x5a
	.byte	0x3a
	.4byte	.LASF276
	.byte	0x1
	.byte	0x4f
	.byte	0x2d
	.4byte	0x7a
	.byte	0x1
	.byte	0x5b
	.byte	0x3b
	.string	"adc"
	.byte	0x1
	.byte	0x51
	.byte	0x16
	.4byte	0xab5
	.byte	0x1
	.byte	0x5a
	.byte	0xe
	.4byte	.LASF239
	.byte	0x1
	.byte	0x52
	.byte	0x16
	.4byte	0xb3a
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0x3c
	.4byte	.LASF277
	.4byte	.LASF277
	.byte	0xd
	.byte	0xf
	.byte	0x6
	.byte	0x3d
	.4byte	.LASF278
	.4byte	.LASF278
	.byte	0x7
	.2byte	0x1fd
	.byte	0x6
	.byte	0x3c
	.4byte	.LASF279
	.4byte	.LASF279
	.byte	0xb
	.byte	0x63
	.byte	0x5
	.byte	0x3c
	.4byte	.LASF280
	.4byte	.LASF280
	.byte	0xb
	.byte	0x51
	.byte	0x5
	.byte	0x3c
	.4byte	.LASF281
	.4byte	.LASF281
	.byte	0xe
	.byte	0x98
	.byte	0xc
	.byte	0x3d
	.4byte	.LASF282
	.4byte	.LASF282
	.byte	0xf
	.2byte	0x558
	.byte	0xc
	.byte	0x3c
	.4byte	.LASF283
	.4byte	.LASF283
	.byte	0x10
	.byte	0x81
	.byte	0x6
	.byte	0x3d
	.4byte	.LASF284
	.4byte	.LASF284
	.byte	0xf
	.2byte	0x547
	.byte	0xc
	.byte	0x3d
	.4byte	.LASF285
	.4byte	.LASF285
	.byte	0xf
	.2byte	0x2f6
	.byte	0x6
	.byte	0x3e
	.4byte	.LASF311
	.4byte	.LASF312
	.byte	0x12
	.byte	0
	.byte	0x3d
	.4byte	.LASF286
	.4byte	.LASF286
	.byte	0xa
	.2byte	0x262
	.byte	0xd
	.byte	0x3d
	.4byte	.LASF287
	.4byte	.LASF287
	.byte	0x7
	.2byte	0x1f8
	.byte	0x6
	.byte	0x3d
	.4byte	.LASF288
	.4byte	.LASF288
	.byte	0x7
	.2byte	0x1f7
	.byte	0x6
	.byte	0x3d
	.4byte	.LASF289
	.4byte	.LASF289
	.byte	0x7
	.2byte	0x1f6
	.byte	0x6
	.byte	0x3d
	.4byte	.LASF290
	.4byte	.LASF290
	.byte	0x7
	.2byte	0x1f9
	.byte	0x6
	.byte	0x3d
	.4byte	.LASF291
	.4byte	.LASF291
	.byte	0x7
	.2byte	0x1fb
	.byte	0x6
	.byte	0x3d
	.4byte	.LASF292
	.4byte	.LASF292
	.byte	0x7
	.2byte	0x1fe
	.byte	0x6
	.byte	0x3d
	.4byte	.LASF293
	.4byte	.LASF293
	.byte	0x7
	.2byte	0x209
	.byte	0x6
	.byte	0x3d
	.4byte	.LASF294
	.4byte	.LASF294
	.byte	0x7
	.2byte	0x1fa
	.byte	0x6
	.byte	0x3d
	.4byte	.LASF295
	.4byte	.LASF295
	.byte	0x7
	.2byte	0x20c
	.byte	0xd
	.byte	0x3c
	.4byte	.LASF296
	.4byte	.LASF296
	.byte	0xb
	.byte	0x48
	.byte	0x12
	.byte	0x3c
	.4byte	.LASF297
	.4byte	.LASF297
	.byte	0xd
	.byte	0xc
	.byte	0x8
	.byte	0x3d
	.4byte	.LASF298
	.4byte	.LASF298
	.byte	0x9
	.2byte	0x141
	.byte	0x6
	.byte	0x3d
	.4byte	.LASF299
	.4byte	.LASF299
	.byte	0x9
	.2byte	0x142
	.byte	0x6
	.byte	0x3d
	.4byte	.LASF300
	.4byte	.LASF300
	.byte	0x9
	.2byte	0x143
	.byte	0x6
	.byte	0x3c
	.4byte	.LASF301
	.4byte	.LASF301
	.byte	0xb
	.byte	0x6e
	.byte	0x5
	.byte	0x3d
	.4byte	.LASF302
	.4byte	.LASF302
	.byte	0x9
	.2byte	0x144
	.byte	0x6
	.byte	0x3d
	.4byte	.LASF303
	.4byte	.LASF303
	.byte	0x7
	.2byte	0x1fc
	.byte	0x6
	.byte	0x3d
	.4byte	.LASF304
	.4byte	.LASF304
	.byte	0x9
	.2byte	0x139
	.byte	0x6
	.byte	0x3d
	.4byte	.LASF305
	.4byte	.LASF305
	.byte	0x9
	.2byte	0x140
	.byte	0x6
	.byte	0x3c
	.4byte	.LASF306
	.4byte	.LASF306
	.byte	0x11
	.byte	0x21
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
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x14
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
	.byte	0x15
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
	.byte	0x16
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
	.byte	0x17
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
	.byte	0x18
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
	.byte	0x19
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
	.byte	0x1a
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
	.byte	0x5
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
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1f
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
	.byte	0x20
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
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
	.byte	0x23
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
	.byte	0x24
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x25
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
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
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x28
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x29
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
	.byte	0x2a
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2b
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
	.byte	0x2c
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
	.byte	0x2d
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
	.byte	0x2e
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
	.byte	0x2f
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
	.byte	0x30
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
	.byte	0x31
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x32
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x33
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
	.byte	0x34
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
	.byte	0x35
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
	.byte	0x36
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
	.byte	0x37
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
	.byte	0
	.byte	0
	.byte	0x39
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
	.byte	0x3a
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
	.byte	0x3b
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
	.byte	0x3c
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
	.byte	0x3d
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
	.byte	0x3e
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
.LLST50:
	.4byte	.LVL175
	.4byte	.LVL177
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL177
	.4byte	.LVL184
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL184
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL176
	.4byte	.LVL185
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL173
	.4byte	.LVL174
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL174
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL168
	.4byte	.LVL169-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL169-1
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL168
	.4byte	.LVL169-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL169-1
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL168
	.4byte	.LVL169-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL169-1
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL163
	.4byte	.LVL164-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL164-1
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL163
	.4byte	.LVL164-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL164-1
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL128
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL130
	.4byte	.LVL133
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL133
	.4byte	.LVL134-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL134-1
	.4byte	.LVL138
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL138
	.4byte	.LVL140-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL140-1
	.4byte	.LVL144
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL145
	.4byte	.LVL151
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL151
	.4byte	.LVL152-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL152-1
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL128
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL130
	.4byte	.LVL133
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL133
	.4byte	.LVL134-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL134-1
	.4byte	.LVL138
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL139
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL128
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL133
	.4byte	.LVL134-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL134-1
	.4byte	.LVL138
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL138
	.4byte	.LVL140-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL140-1
	.4byte	.LVL144
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL145
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL151
	.4byte	.LVL152-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL152-1
	.4byte	.LVL155
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL155
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL158
	.4byte	.LVL160
	.2byte	0x3
	.byte	0x79
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL160
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL128
	.4byte	.LVL131
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL133
	.4byte	.LVL150
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL151
	.4byte	.LFE21
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL129
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL133
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL145
	.4byte	.LVL150
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL155
	.4byte	.LVL158
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL161
	.4byte	.LFE21
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL145
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL155
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL161
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL145
	.4byte	.LVL150
	.2byte	0x2
	.byte	0x82
	.byte	0
	.4byte	.LVL155
	.4byte	.LVL156-1
	.2byte	0x2
	.byte	0x82
	.byte	0
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL145
	.4byte	.LVL146
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL147
	.4byte	.LVL148
	.2byte	0x7
	.byte	0x7a
	.byte	0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL148
	.4byte	.LVL149
	.2byte	0x8
	.byte	0x7f
	.byte	0
	.byte	0x6
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL111
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL114
	.4byte	.LVL120
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL120
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL122
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL111
	.4byte	.LVL116-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL116-1
	.4byte	.LVL120
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL121
	.4byte	.LVL123
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL112
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x2
	.byte	0x7a
	.byte	0x20
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x20
	.4byte	.LVL120
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL123
	.4byte	.LFE19
	.2byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x20
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL98
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL101
	.4byte	.LVL107
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL109
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL98
	.4byte	.LVL103-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL103-1
	.4byte	.LVL107
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL108
	.4byte	.LVL110
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL110
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x2
	.byte	0x7a
	.byte	0x20
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x20
	.4byte	.LVL107
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL110
	.4byte	.LFE18
	.2byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x20
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5-1
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL18
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL24
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL72
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LFE17
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL12
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL73
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL94
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL12
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL26
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL31
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL38
	.4byte	.LVL41-1
	.2byte	0x2
	.byte	0x78
	.byte	0x20
	.4byte	.LVL94
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL12
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL37
	.4byte	.LVL44
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL37
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL38
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL37
	.4byte	.LVL44
	.2byte	0x4
	.byte	0xa
	.2byte	0x753
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x4
	.byte	0xa
	.2byte	0x753
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL37
	.4byte	.LVL44
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL44
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL75
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x3
	.byte	0x7f
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL55-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL77
	.4byte	.LVL78-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL46
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL75
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL47
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL75
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL57
	.4byte	.LVL65
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL94
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL57
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL80
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL61
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL80
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL83
	.4byte	.LVL84-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL84-1
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL88
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL58
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL80
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL65
	.4byte	.LVL66-1
	.2byte	0x2
	.byte	0x78
	.byte	0x14
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
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	.LBB20
	.4byte	.LBE20
	.4byte	.LBB21
	.4byte	.LBE21
	.4byte	0
	.4byte	0
	.4byte	.LBB22
	.4byte	.LBE22
	.4byte	.LBB39
	.4byte	.LBE39
	.4byte	0
	.4byte	0
	.4byte	.LBB25
	.4byte	.LBE25
	.4byte	.LBB40
	.4byte	.LBE40
	.4byte	0
	.4byte	0
	.4byte	.LBB27
	.4byte	.LBE27
	.4byte	.LBB30
	.4byte	.LBE30
	.4byte	0
	.4byte	0
	.4byte	.LBB32
	.4byte	.LBE32
	.4byte	.LBB41
	.4byte	.LBE41
	.4byte	0
	.4byte	0
	.4byte	.LBB44
	.4byte	.LBE44
	.4byte	.LBB49
	.4byte	.LBE49
	.4byte	.LBB50
	.4byte	.LBE50
	.4byte	.LBB51
	.4byte	.LBE51
	.4byte	0
	.4byte	0
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF110:
	.string	"ADC_PGA_GAIN_32"
.LASF204:
	.string	"GLB_ADC_CLK_96M"
.LASF154:
	.string	"ADC_FIFO_THRESHOLD_16"
.LASF263:
	.string	"adc_parse_data"
.LASF29:
	.string	"_fsymf_info_hosalhosal_adc"
.LASF250:
	.string	"hosal_adc_remove_channel"
.LASF255:
	.string	"chan"
.LASF13:
	.string	"char"
.LASF275:
	.string	"gpio_arr"
.LASF260:
	.string	"pos_chlist_single"
.LASF17:
	.string	"BLOG_LEVEL_WARN"
.LASF124:
	.string	"ADC_PGA_VCM_Type"
.LASF18:
	.string	"BLOG_LEVEL_ERROR"
.LASF14:
	.string	"BLOG_LEVEL_ALL"
.LASF54:
	.string	"GLB_GPIO_Type"
.LASF196:
	.string	"srcDmaAddr"
.LASF0:
	.string	"unsigned int"
.LASF122:
	.string	"ADC_PGA_VCM_1P4V"
.LASF238:
	.string	"pgdevice"
.LASF249:
	.string	"hosal_adc_device_get"
.LASF125:
	.string	"ADC_VREF_3P2V"
.LASF157:
	.string	"dmaEn"
.LASF145:
	.string	"inputMode"
.LASF98:
	.string	"ADC_CLK_DIV_12"
.LASF99:
	.string	"ADC_CLK_DIV_16"
.LASF216:
	.string	"HOSAL_ADC_CONTINUE"
.LASF262:
	.string	"adc_fifo_cfg"
.LASF22:
	.string	"level"
.LASF300:
	.string	"DMA_LLI_Update"
.LASF92:
	.string	"ADC_V11_SEL_1P18V"
.LASF219:
	.string	"mode"
.LASF312:
	.string	"__builtin_memcpy"
.LASF239:
	.string	"pstctx"
.LASF191:
	.string	"DMA_REQ_NONE"
.LASF80:
	.string	"ADC_CHAN_SENP2"
.LASF272:
	.string	"mode_freq"
.LASF100:
	.string	"ADC_CLK_DIV_20"
.LASF101:
	.string	"ADC_CLK_DIV_24"
.LASF128:
	.string	"ADC_INPUT_SINGLE_END"
.LASF129:
	.string	"ADC_INPUT_DIFF"
.LASF24:
	.string	"blog_info_t"
.LASF266:
	.string	"pstlli"
.LASF161:
	.string	"TransferSize"
.LASF63:
	.string	"ADC_CHAN3"
.LASF1:
	.string	"signed char"
.LASF221:
	.string	"hosal_adc_config_t"
.LASF271:
	.string	"source_freq"
.LASF123:
	.string	"ADC_PGA_VCM_1P6V"
.LASF10:
	.string	"uint32_t"
.LASF245:
	.string	"hosal_adc_sample_cb_reg"
.LASF130:
	.string	"ADC_SIG_INPUT_Type"
.LASF167:
	.string	"reserved_25"
.LASF202:
	.string	"dstPeriph"
.LASF198:
	.string	"nextLLI"
.LASF150:
	.string	"float"
.LASF82:
	.string	"ADC_CHAN_SENP0"
.LASF81:
	.string	"ADC_CHAN_SENP1"
.LASF148:
	.string	"offsetCalibVal"
.LASF79:
	.string	"ADC_CHAN_SENP3"
.LASF283:
	.string	"bl_printk"
.LASF3:
	.string	"int16_t"
.LASF102:
	.string	"ADC_CLK_DIV_32"
.LASF12:
	.string	"long long unsigned int"
.LASF282:
	.string	"xTaskGetTickCountFromISR"
.LASF254:
	.string	"parr"
.LASF83:
	.string	"ADC_CHAN_GND"
.LASF119:
	.string	"ADC_CHOP_MOD_Type"
.LASF290:
	.string	"ADC_Init"
.LASF193:
	.string	"DMA_INT_TCOMPLETED"
.LASF197:
	.string	"destDmaAddr"
.LASF270:
	.string	"adc_freq_init"
.LASF189:
	.string	"DMA_REQ_GPADC0"
.LASF190:
	.string	"DMA_REQ_GPADC1"
.LASF170:
	.string	"DMA_TRNS_WIDTH_16BITS"
.LASF307:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF289:
	.string	"ADC_Reset"
.LASF297:
	.string	"pvPortMalloc"
.LASF159:
	.string	"_blog_info"
.LASF299:
	.string	"DMA_LLI_Init"
.LASF303:
	.string	"ADC_Start"
.LASF178:
	.string	"DMA_BURST_SIZE_4"
.LASF87:
	.string	"ADC_V18_SEL_1P82V"
.LASF236:
	.string	"data_size"
.LASF165:
	.string	"DWidth"
.LASF16:
	.string	"BLOG_LEVEL_INFO"
.LASF88:
	.string	"ADC_V18_SEL_1P92V"
.LASF168:
	.string	"Prot"
.LASF237:
	.string	"hosal_adc_ctx_t"
.LASF242:
	.string	"hosal_adc_start"
.LASF20:
	.string	"BLOG_LEVEL_NEVER"
.LASF298:
	.string	"DMA_Channel_Disable"
.LASF45:
	.string	"GLB_GPIO_PIN_15"
.LASF94:
	.string	"ADC_V11_SEL_Type"
.LASF49:
	.string	"GLB_GPIO_PIN_19"
.LASF90:
	.string	"ADC_V11_SEL_1P0V"
.LASF218:
	.string	"sampling_freq"
.LASF253:
	.string	"freq"
.LASF285:
	.string	"vTaskDelay"
.LASF164:
	.string	"SWidth"
.LASF162:
	.string	"SBSize"
.LASF93:
	.string	"ADC_V11_SEL_1P26V"
.LASF95:
	.string	"ADC_CLK_DIV_1"
.LASF103:
	.string	"ADC_CLK_Type"
.LASF96:
	.string	"ADC_CLK_DIV_4"
.LASF183:
	.string	"DMA_REQ_UART1_RX"
.LASF227:
	.string	"priv"
.LASF97:
	.string	"ADC_CLK_DIV_8"
.LASF284:
	.string	"xTaskGetTickCount"
.LASF280:
	.string	"hosal_dma_chan_release"
.LASF206:
	.string	"hosal_dma_chan_t"
.LASF55:
	.string	"DISABLE"
.LASF136:
	.string	"ADC_Data_Width_Type"
.LASF104:
	.string	"ADC_PGA_GAIN_NONE"
.LASF269:
	.string	"dma_ctrl_reg"
.LASF91:
	.string	"ADC_V11_SEL_1P1V"
.LASF225:
	.string	"dma_chan"
.LASF294:
	.string	"ADC_Channel_Config"
.LASF163:
	.string	"DBSize"
.LASF126:
	.string	"ADC_VREF_2V"
.LASF233:
	.string	"llibuf"
.LASF7:
	.string	"uint8_t"
.LASF230:
	.string	"adc_ctx"
.LASF105:
	.string	"ADC_PGA_GAIN_1"
.LASF106:
	.string	"ADC_PGA_GAIN_2"
.LASF58:
	.string	"UNMASK"
.LASF107:
	.string	"ADC_PGA_GAIN_4"
.LASF149:
	.string	"ADC_CFG_Type"
.LASF108:
	.string	"ADC_PGA_GAIN_8"
.LASF207:
	.string	"_blog_leve"
.LASF146:
	.string	"resWidth"
.LASF60:
	.string	"ADC_CHAN0"
.LASF61:
	.string	"ADC_CHAN1"
.LASF62:
	.string	"ADC_CHAN2"
.LASF127:
	.string	"ADC_VREF_Type"
.LASF64:
	.string	"ADC_CHAN4"
.LASF65:
	.string	"ADC_CHAN5"
.LASF66:
	.string	"ADC_CHAN6"
.LASF67:
	.string	"ADC_CHAN7"
.LASF68:
	.string	"ADC_CHAN8"
.LASF69:
	.string	"ADC_CHAN9"
.LASF144:
	.string	"vref"
.LASF232:
	.string	"adc_lli"
.LASF265:
	.string	"data_num"
.LASF6:
	.string	"long long int"
.LASF135:
	.string	"ADC_DATA_WIDTH_16_WITH_256_AVERAGE"
.LASF139:
	.string	"clkDiv"
.LASF132:
	.string	"ADC_DATA_WIDTH_14_WITH_16_AVERAGE"
.LASF234:
	.string	"lli_flag"
.LASF256:
	.string	"adc_dma_start"
.LASF305:
	.string	"DMA_Channel_Enable"
.LASF304:
	.string	"DMA_Enable"
.LASF192:
	.string	"DMA_Periph_Req_Type"
.LASF25:
	.string	"BLOG_HARD_DECLARE_DISABLE"
.LASF257:
	.string	"adc_init"
.LASF295:
	.string	"ADC_Mic_Init"
.LASF85:
	.string	"ADC_V18_SEL_1P62V"
.LASF160:
	.string	"DMA_Control_Reg"
.LASF134:
	.string	"ADC_DATA_WIDTH_16_WITH_128_AVERAGE"
.LASF184:
	.string	"DMA_REQ_UART1_TX"
.LASF28:
	.string	"_fsymf_level_hosalhosal_adc"
.LASF306:
	.string	"memset"
.LASF310:
	.string	"adc_data_update"
.LASF140:
	.string	"gain1"
.LASF244:
	.string	"size"
.LASF264:
	.string	"adc_dma_init"
.LASF72:
	.string	"ADC_CHAN_DAC_OUTA"
.LASF73:
	.string	"ADC_CHAN_DAC_OUTB"
.LASF74:
	.string	"ADC_CHAN_TSEN_P"
.LASF201:
	.string	"srcPeriph"
.LASF113:
	.string	"ADC_BIAS_SEL_AON_BANDGAP"
.LASF281:
	.string	"xPortIsInsideInterrupt"
.LASF40:
	.string	"GLB_GPIO_PIN_10"
.LASF41:
	.string	"GLB_GPIO_PIN_11"
.LASF42:
	.string	"GLB_GPIO_PIN_12"
.LASF43:
	.string	"GLB_GPIO_PIN_13"
.LASF44:
	.string	"GLB_GPIO_PIN_14"
.LASF259:
	.string	"adccfg"
.LASF46:
	.string	"GLB_GPIO_PIN_16"
.LASF47:
	.string	"GLB_GPIO_PIN_17"
.LASF48:
	.string	"GLB_GPIO_PIN_18"
.LASF133:
	.string	"ADC_DATA_WIDTH_16_WITH_64_AVERAGE"
.LASF292:
	.string	"ADC_FIFO_Cfg"
.LASF117:
	.string	"ADC_CHOP_MOD_AZ_PGA_ON"
.LASF118:
	.string	"ADC_CHOP_MOD_AZ_PGA_RPC_ON"
.LASF243:
	.string	"data"
.LASF131:
	.string	"ADC_DATA_WIDTH_12"
.LASF89:
	.string	"ADC_V18_SEL_Type"
.LASF214:
	.string	"hosal_adc_event_t"
.LASF59:
	.string	"MASK"
.LASF241:
	.string	"hosal_adc_stop"
.LASF142:
	.string	"chopMode"
.LASF200:
	.string	"DMA_LLI_Ctrl_Type"
.LASF203:
	.string	"DMA_LLI_Cfg_Type"
.LASF247:
	.string	"channel"
.LASF205:
	.string	"GLB_ADC_CLK_XCLK"
.LASF208:
	.string	"__ADC_INT_EVENTS__"
.LASF50:
	.string	"GLB_GPIO_PIN_20"
.LASF51:
	.string	"GLB_GPIO_PIN_21"
.LASF52:
	.string	"GLB_GPIO_PIN_22"
.LASF8:
	.string	"unsigned char"
.LASF147:
	.string	"offsetCalibEn"
.LASF224:
	.string	"config"
.LASF169:
	.string	"DMA_TRNS_WIDTH_8BITS"
.LASF2:
	.string	"short int"
.LASF212:
	.string	"HOSAL_ADC_INT_DMA_TRC"
.LASF213:
	.string	"HOSAL_ADC_INT_DMA_TRE"
.LASF211:
	.string	"HOSAL_ADC_INT_DMA_TRH"
.LASF5:
	.string	"long int"
.LASF215:
	.string	"HOSAL_ADC_ONE_SHOT"
.LASF251:
	.string	"hosal_adc_add_channel"
.LASF172:
	.string	"DMA_TRNS_M2M"
.LASF173:
	.string	"DMA_TRNS_M2P"
.LASF30:
	.string	"GLB_GPIO_PIN_0"
.LASF31:
	.string	"GLB_GPIO_PIN_1"
.LASF32:
	.string	"GLB_GPIO_PIN_2"
.LASF33:
	.string	"GLB_GPIO_PIN_3"
.LASF34:
	.string	"GLB_GPIO_PIN_4"
.LASF35:
	.string	"GLB_GPIO_PIN_5"
.LASF36:
	.string	"GLB_GPIO_PIN_6"
.LASF37:
	.string	"GLB_GPIO_PIN_7"
.LASF38:
	.string	"GLB_GPIO_PIN_8"
.LASF39:
	.string	"GLB_GPIO_PIN_9"
.LASF261:
	.string	"neg_chlist_single"
.LASF246:
	.string	"hosal_adc_value_get"
.LASF276:
	.string	"flag"
.LASF199:
	.string	"dmaCtrl"
.LASF220:
	.string	"sample_resolution"
.LASF86:
	.string	"ADC_V18_SEL_1P72V"
.LASF277:
	.string	"vPortFree"
.LASF138:
	.string	"v11Sel"
.LASF258:
	.string	"channel_table"
.LASF75:
	.string	"ADC_CHAN_TSEN_N"
.LASF114:
	.string	"ADC_BIAS_SEL_Type"
.LASF112:
	.string	"ADC_BIAS_SEL_MAIN_BANDGAP"
.LASF23:
	.string	"name"
.LASF217:
	.string	"hosal_adc_sample_mode_t"
.LASF70:
	.string	"ADC_CHAN10"
.LASF71:
	.string	"ADC_CHAN11"
.LASF235:
	.string	"chan_init_table"
.LASF155:
	.string	"ADC_FIFO_Threshold_Type"
.LASF222:
	.string	"hosal_adc_irq_t"
.LASF78:
	.string	"ADC_CHAN_VABT_HALF"
.LASF116:
	.string	"ADC_CHOP_MOD_AZ_ON"
.LASF226:
	.string	"p_arg"
.LASF143:
	.string	"biasSel"
.LASF56:
	.string	"ENABLE"
.LASF177:
	.string	"DMA_BURST_SIZE_1"
.LASF185:
	.string	"DMA_REQ_I2C_RX"
.LASF11:
	.string	"long unsigned int"
.LASF194:
	.string	"DMA_INT_ERR"
.LASF296:
	.string	"hosal_dma_chan_request"
.LASF286:
	.string	"GLB_Set_ADC_CLK"
.LASF179:
	.string	"DMA_BURST_SIZE_8"
.LASF308:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/hosal_adc.c"
.LASF278:
	.string	"ADC_Stop"
.LASF4:
	.string	"int32_t"
.LASF195:
	.string	"DMA_INT_ALL"
.LASF223:
	.string	"port"
.LASF111:
	.string	"ADC_PGA_GAIN_Type"
.LASF57:
	.string	"BL_Fun_Type"
.LASF84:
	.string	"ADC_Chan_Type"
.LASF309:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/hosal"
.LASF301:
	.string	"hosal_dma_irq_callback_set"
.LASF19:
	.string	"BLOG_LEVEL_ASSERT"
.LASF181:
	.string	"DMA_REQ_UART0_RX"
.LASF137:
	.string	"v18Sel"
.LASF252:
	.string	"hosal_adc_init"
.LASF158:
	.string	"ADC_FIFO_Cfg_Type"
.LASF279:
	.string	"hosal_dma_chan_stop"
.LASF248:
	.string	"timeout"
.LASF76:
	.string	"ADC_CHAN_VREF"
.LASF26:
	.string	"_fsymc_info_hosal"
.LASF293:
	.string	"ADC_SET_TSVBE_LOW"
.LASF180:
	.string	"DMA_BURST_SIZE_16"
.LASF267:
	.string	"llicfg"
.LASF109:
	.string	"ADC_PGA_GAIN_16"
.LASF53:
	.string	"GLB_GPIO_PIN_MAX"
.LASF174:
	.string	"DMA_TRNS_P2M"
.LASF209:
	.string	"HOSAL_ADC_INT_OV"
.LASF175:
	.string	"DMA_TRNS_P2P"
.LASF27:
	.string	"_fsymc_level_hosal"
.LASF287:
	.string	"ADC_Disable"
.LASF176:
	.string	"DMA_Trans_Dir_Type"
.LASF231:
	.string	"channel_data"
.LASF291:
	.string	"ADC_Scan_Channel_Config"
.LASF21:
	.string	"blog_level_t"
.LASF9:
	.string	"short unsigned int"
.LASF186:
	.string	"DMA_REQ_I2C_TX"
.LASF302:
	.string	"DMA_IntMask"
.LASF268:
	.string	"adc_dma_lli_init"
.LASF311:
	.string	"memcpy"
.LASF210:
	.string	"HOSAL_ADC_INT_EOS"
.LASF141:
	.string	"gain2"
.LASF274:
	.string	"adc_check_gpio_valid"
.LASF15:
	.string	"BLOG_LEVEL_DEBUG"
.LASF77:
	.string	"ADC_CHAN_DCTEST"
.LASF171:
	.string	"DMA_TRNS_WIDTH_32BITS"
.LASF121:
	.string	"ADC_PGA_VCM_1P2V"
.LASF240:
	.string	"hosal_adc_finalize"
.LASF229:
	.string	"hosal_adc_cb_t"
.LASF182:
	.string	"DMA_REQ_UART0_TX"
.LASF166:
	.string	"SLargerD"
.LASF151:
	.string	"ADC_FIFO_THRESHOLD_1"
.LASF152:
	.string	"ADC_FIFO_THRESHOLD_4"
.LASF273:
	.string	"adc_get_channel_by_gpio"
.LASF153:
	.string	"ADC_FIFO_THRESHOLD_8"
.LASF115:
	.string	"ADC_CHOP_MOD_ALL_OFF"
.LASF187:
	.string	"DMA_REQ_SPI_RX"
.LASF156:
	.string	"fifoThreshold"
.LASF120:
	.string	"ADC_PGA_VCM_1V"
.LASF188:
	.string	"DMA_REQ_SPI_TX"
.LASF288:
	.string	"ADC_Enable"
.LASF228:
	.string	"hosal_adc_dev_t"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
