	.file	"bl602_pwm.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.PWM_Channel_Update,"ax",@progbits
	.align	1
	.globl	PWM_Channel_Update
	.type	PWM_Channel_Update, @function
PWM_Channel_Update:
.LFB9:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_pwm.c"
	.loc 1 214 1
	.cfi_startproc
.LVL0:
	.loc 1 216 5
	.loc 1 216 50 is_stmt 0
	li	a5,33554432
	addi	a5,a5,1313
	add	a0,a0,a5
.LVL1:
	.loc 1 216 14
	slli	a0,a0,5
.LVL2:
	.loc 1 219 5 is_stmt 1
	.loc 1 222 5
	.loc 1 222 41 is_stmt 0
	sw	a2,4(a0)
	.loc 1 223 5 is_stmt 1
	.loc 1 223 41 is_stmt 0
	sw	a3,8(a0)
	.loc 1 224 5 is_stmt 1
	.loc 1 224 41 is_stmt 0
	sw	a1,12(a0)
	.loc 1 225 1
	ret
	.cfi_endproc
.LFE9:
	.size	PWM_Channel_Update, .-PWM_Channel_Update
	.section	.text.PWM_Channel_Set_Div,"ax",@progbits
	.align	1
	.globl	PWM_Channel_Set_Div
	.type	PWM_Channel_Set_Div, @function
PWM_Channel_Set_Div:
.LFB10:
	.loc 1 237 1 is_stmt 1
	.cfi_startproc
.LVL3:
	.loc 1 239 5
	.loc 1 242 5
	.loc 1 244 5
	.loc 1 239 50 is_stmt 0
	li	a5,33554432
	addi	a5,a5,1313
	add	a0,a0,a5
.LVL4:
	.loc 1 239 14
	slli	a0,a0,5
.LVL5:
	.loc 1 244 41
	sw	a1,0(a0)
	.loc 1 245 1
	ret
	.cfi_endproc
.LFE10:
	.size	PWM_Channel_Set_Div, .-PWM_Channel_Set_Div
	.section	.text.PWM_Channel_Set_Threshold1,"ax",@progbits
	.align	1
	.globl	PWM_Channel_Set_Threshold1
	.type	PWM_Channel_Set_Threshold1, @function
PWM_Channel_Set_Threshold1:
.LFB11:
	.loc 1 257 1 is_stmt 1
	.cfi_startproc
.LVL6:
	.loc 1 259 5
	.loc 1 262 5
	.loc 1 265 5
	.loc 1 259 50 is_stmt 0
	li	a5,33554432
	addi	a5,a5,1313
	add	a0,a0,a5
.LVL7:
	.loc 1 259 14
	slli	a0,a0,5
.LVL8:
	.loc 1 265 41
	sw	a1,4(a0)
	.loc 1 266 1
	ret
	.cfi_endproc
.LFE11:
	.size	PWM_Channel_Set_Threshold1, .-PWM_Channel_Set_Threshold1
	.section	.text.PWM_Channel_Set_Threshold2,"ax",@progbits
	.align	1
	.globl	PWM_Channel_Set_Threshold2
	.type	PWM_Channel_Set_Threshold2, @function
PWM_Channel_Set_Threshold2:
.LFB12:
	.loc 1 278 1 is_stmt 1
	.cfi_startproc
.LVL9:
	.loc 1 280 5
	.loc 1 283 5
	.loc 1 286 5
	.loc 1 280 50 is_stmt 0
	li	a5,33554432
	addi	a5,a5,1313
	add	a0,a0,a5
.LVL10:
	.loc 1 280 14
	slli	a0,a0,5
.LVL11:
	.loc 1 286 41
	sw	a1,8(a0)
	.loc 1 287 1
	ret
	.cfi_endproc
.LFE12:
	.size	PWM_Channel_Set_Threshold2, .-PWM_Channel_Set_Threshold2
	.section	.text.PWM_Channel_Set_Period,"ax",@progbits
	.align	1
	.globl	PWM_Channel_Set_Period
	.type	PWM_Channel_Set_Period, @function
PWM_Channel_Set_Period:
.LFB13:
	.loc 1 299 1 is_stmt 1
	.cfi_startproc
.LVL12:
	.loc 1 301 5
	.loc 1 304 5
	.loc 1 307 5
	.loc 1 301 50 is_stmt 0
	li	a5,33554432
	addi	a5,a5,1313
	add	a0,a0,a5
.LVL13:
	.loc 1 301 14
	slli	a0,a0,5
.LVL14:
	.loc 1 307 41
	sw	a1,12(a0)
	.loc 1 308 1
	ret
	.cfi_endproc
.LFE13:
	.size	PWM_Channel_Set_Period, .-PWM_Channel_Set_Period
	.section	.text.PWM_Channel_Get,"ax",@progbits
	.align	1
	.globl	PWM_Channel_Get
	.type	PWM_Channel_Get, @function
PWM_Channel_Get:
.LFB14:
	.loc 1 322 1 is_stmt 1
	.cfi_startproc
.LVL15:
	.loc 1 323 5
	.loc 1 325 5
	.loc 1 325 50 is_stmt 0
	li	a5,33554432
	addi	a5,a5,1313
	add	a0,a0,a5
.LVL16:
	.loc 1 325 14
	slli	a0,a0,5
.LVL17:
	.loc 1 328 5 is_stmt 1
	.loc 1 331 5
	.loc 1 331 12 is_stmt 0
	lw	a5,4(a0)
.LVL18:
	.loc 1 332 5 is_stmt 1
	.loc 1 332 17 is_stmt 0
	sh	a5,0(a2)
	.loc 1 333 5 is_stmt 1
	.loc 1 333 12 is_stmt 0
	lw	a5,8(a0)
.LVL19:
	.loc 1 334 5 is_stmt 1
	.loc 1 334 17 is_stmt 0
	sh	a5,0(a3)
	.loc 1 335 5 is_stmt 1
	.loc 1 335 12 is_stmt 0
	lw	a5,12(a0)
.LVL20:
	.loc 1 336 5 is_stmt 1
	.loc 1 336 13 is_stmt 0
	sh	a5,0(a1)
	.loc 1 337 1
	ret
	.cfi_endproc
.LFE14:
	.size	PWM_Channel_Get, .-PWM_Channel_Get
	.section	.text.PWM_Channel_Enable,"ax",@progbits
	.align	1
	.globl	PWM_Channel_Enable
	.type	PWM_Channel_Enable, @function
PWM_Channel_Enable:
.LFB15:
	.loc 1 348 1 is_stmt 1
	.cfi_startproc
.LVL21:
	.loc 1 349 5
	.loc 1 351 5
	.loc 1 354 5
	.loc 1 357 5
	.loc 1 351 50 is_stmt 0
	li	a5,33554432
	addi	a5,a5,1313
	add	a0,a0,a5
.LVL22:
	.loc 1 351 14
	slli	a0,a0,5
.LVL23:
	.loc 1 357 12
	lw	a5,16(a0)
.LVL24:
	.loc 1 358 5 is_stmt 1
	.loc 1 358 55 is_stmt 0
	andi	a5,a5,-65
.LVL25:
	.loc 1 358 42
	sw	a5,16(a0)
	.loc 1 359 1
	ret
	.cfi_endproc
.LFE15:
	.size	PWM_Channel_Enable, .-PWM_Channel_Enable
	.section	.text.PWM_SW_Mode,"ax",@progbits
	.align	1
	.globl	PWM_SW_Mode
	.type	PWM_SW_Mode, @function
PWM_SW_Mode:
.LFB17:
	.loc 1 394 1 is_stmt 1
	.cfi_startproc
.LVL26:
	.loc 1 395 5
	.loc 1 397 5
	.loc 1 400 5
	.loc 1 402 5
	.loc 1 397 50 is_stmt 0
	li	a5,33554432
	addi	a5,a5,1313
	add	a0,a0,a5
.LVL27:
	.loc 1 397 14
	slli	a0,a0,5
.LVL28:
	.loc 1 402 12
	lw	a5,16(a0)
.LVL29:
	.loc 1 403 5 is_stmt 1
	.loc 1 403 110 is_stmt 0
	slli	a1,a1,5
.LVL30:
	.loc 1 403 55
	andi	a5,a5,-33
.LVL31:
	.loc 1 403 89
	or	a5,a5,a1
	.loc 1 403 42
	sw	a5,16(a0)
	.loc 1 404 1
	ret
	.cfi_endproc
.LFE17:
	.size	PWM_SW_Mode, .-PWM_SW_Mode
	.section	.text.PWM_SW_Force_Value,"ax",@progbits
	.align	1
	.globl	PWM_SW_Force_Value
	.type	PWM_SW_Force_Value, @function
PWM_SW_Force_Value:
.LFB18:
	.loc 1 416 1 is_stmt 1
	.cfi_startproc
.LVL32:
	.loc 1 417 5
	.loc 1 419 5
	.loc 1 422 5
	.loc 1 424 5
	.loc 1 419 50 is_stmt 0
	li	a5,33554432
	addi	a5,a5,1313
	add	a0,a0,a5
.LVL33:
	.loc 1 419 14
	slli	a0,a0,5
.LVL34:
	.loc 1 424 12
	lw	a5,16(a0)
.LVL35:
	.loc 1 425 5 is_stmt 1
	.loc 1 425 109 is_stmt 0
	slli	a1,a1,4
.LVL36:
	.loc 1 425 55
	andi	a5,a5,-17
.LVL37:
	.loc 1 425 89
	or	a5,a5,a1
	.loc 1 425 42
	sw	a5,16(a0)
	.loc 1 426 1
	ret
	.cfi_endproc
.LFE18:
	.size	PWM_SW_Force_Value, .-PWM_SW_Force_Value
	.section	.text.PWM_Channel_Fource_Output,"ax",@progbits
	.align	1
	.globl	PWM_Channel_Fource_Output
	.type	PWM_Channel_Fource_Output, @function
PWM_Channel_Fource_Output:
.LFB19:
	.loc 1 438 1 is_stmt 1
	.cfi_startproc
.LVL38:
	.loc 1 439 5
	.loc 1 441 5
	.loc 1 444 5
	.loc 1 446 5
	.loc 1 441 50 is_stmt 0
	li	a5,33554432
	addi	a5,a5,1313
	add	a0,a0,a5
.LVL39:
	.loc 1 441 14
	slli	a0,a0,5
.LVL40:
	.loc 1 446 12
	lw	a5,16(a0)
.LVL41:
	.loc 1 447 5 is_stmt 1
	.loc 1 447 55 is_stmt 0
	ori	a5,a5,32
.LVL42:
	.loc 1 447 42
	sw	a5,16(a0)
	.loc 1 448 1
	ret
	.cfi_endproc
.LFE19:
	.size	PWM_Channel_Fource_Output, .-PWM_Channel_Fource_Output
	.section	.text.PWM_IntMask,"ax",@progbits
	.align	1
	.globl	PWM_IntMask
	.type	PWM_IntMask, @function
PWM_IntMask:
.LFB20:
	.loc 1 461 1 is_stmt 1
	.cfi_startproc
.LVL43:
	.loc 1 462 5
	.loc 1 464 5
	.loc 1 467 5
	.loc 1 468 5
	.loc 1 470 5
	.loc 1 464 50 is_stmt 0
	li	a5,33554432
	addi	a5,a5,1313
	add	a0,a0,a5
.LVL44:
	.loc 1 464 14
	slli	a0,a0,5
.LVL45:
	.loc 1 470 12
	lw	a5,20(a0)
.LVL46:
	.loc 1 472 5 is_stmt 1
	beq	a1,zero,.L13
	li	a4,1
	beq	a1,a4,.L13
	ret
.L13:
	.loc 1 484 13
	.loc 1 484 15 is_stmt 0
	bne	a2,zero,.L16
	.loc 1 486 17 is_stmt 1
	.loc 1 486 67 is_stmt 0
	li	a4,65536
	or	a5,a5,a4
.LVL47:
.L17:
	.loc 1 490 54
	sw	a5,20(a0)
	.loc 1 497 1
	ret
.LVL48:
.L16:
	.loc 1 490 17 is_stmt 1
	.loc 1 490 67 is_stmt 0
	li	a4,-65536
	addi	a4,a4,-1
	and	a5,a5,a4
.LVL49:
	j	.L17
	.cfi_endproc
.LFE20:
	.size	PWM_IntMask, .-PWM_IntMask
	.section	.text.PWM_Channel_Init,"ax",@progbits
	.align	1
	.globl	PWM_Channel_Init
	.type	PWM_Channel_Init, @function
PWM_Channel_Init:
.LFB8:
	.loc 1 155 1 is_stmt 1
	.cfi_startproc
.LVL50:
	.loc 1 156 5
	.loc 1 157 5
	.loc 1 159 5
	.loc 1 159 50 is_stmt 0
	lw	a5,0(a0)
	li	a4,33554432
	addi	a4,a4,1313
	add	a5,a5,a4
	.loc 1 159 14
	slli	a5,a5,5
.LVL51:
	.loc 1 162 5 is_stmt 1
	.loc 1 163 5
	.loc 1 164 5
	.loc 1 165 5
	.loc 1 168 5
	.loc 1 168 12 is_stmt 0
	lw	a4,16(a5)
.LVL52:
	.loc 1 169 5 is_stmt 1
	.loc 1 168 42 is_stmt 0
	addi	a2,a5,16
	.loc 1 169 55
	ori	a4,a4,64
.LVL53:
	.loc 1 169 42
	sw	a4,16(a5)
	.loc 1 170 5 is_stmt 1
	.loc 1 170 10 is_stmt 0
	li	a4,159744
	addi	a4,a4,256
.LVL54:
.L21:
	.loc 1 170 10 is_stmt 1
	.loc 1 170 17 is_stmt 0
	lw	a3,0(a2)
	.loc 1 170 55
	andi	a3,a3,128
	.loc 1 170 10
	beq	a3,zero,.L23
	.loc 1 176 5 is_stmt 1
	.loc 1 155 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 176 12
	lw	a4,16(a5)
.LVL55:
	.loc 1 177 5 is_stmt 1
	.loc 1 177 12 is_stmt 0
	lw	a3,4(a0)
	.loc 1 193 5
	li	a1,0
	.loc 1 177 25
	andi	a4,a4,-4
.LVL56:
	.loc 1 178 5 is_stmt 1
	.loc 1 177 12 is_stmt 0
	or	a4,a4,a3
.LVL57:
	.loc 1 178 25
	andi	a3,a4,-5
.LVL58:
	.loc 1 179 5 is_stmt 1
	.loc 1 178 84 is_stmt 0
	lw	a4,12(a0)
	slli	a4,a4,2
	.loc 1 178 12
	or	a4,a4,a3
.LVL59:
	.loc 1 179 89
	lw	a3,8(a0)
	.loc 1 179 25
	andi	a4,a4,-9
.LVL60:
	.loc 1 179 89
	slli	a3,a3,3
	.loc 1 179 12
	or	a4,a3,a4
.LVL61:
	.loc 1 180 5 is_stmt 1
	.loc 1 180 42 is_stmt 0
	sw	a4,16(a5)
	.loc 1 183 5 is_stmt 1
	.loc 1 183 48 is_stmt 0
	lhu	a4,16(a0)
.LVL62:
	.loc 1 192 55
	li	a3,-65536
	.loc 1 183 41
	sw	a4,0(a5)
.LVL63:
	.loc 1 186 5 is_stmt 1
	.loc 1 186 48 is_stmt 0
	lhu	a4,20(a0)
	.loc 1 186 41
	sw	a4,4(a5)
	.loc 1 187 5 is_stmt 1
	.loc 1 187 48 is_stmt 0
	lhu	a4,22(a0)
	.loc 1 187 41
	sw	a4,8(a5)
	.loc 1 188 5 is_stmt 1
	.loc 1 188 48 is_stmt 0
	lhu	a4,18(a0)
	.loc 1 188 41
	sw	a4,12(a5)
	.loc 1 191 5 is_stmt 1
	.loc 1 191 12 is_stmt 0
	lw	a4,20(a5)
.LVL64:
	.loc 1 192 5 is_stmt 1
	.loc 1 192 55 is_stmt 0
	and	a4,a4,a3
.LVL65:
	.loc 1 192 123
	lhu	a3,24(a0)
	.loc 1 192 90
	or	a4,a4,a3
	.loc 1 192 42
	sw	a4,20(a5)
	.loc 1 193 5 is_stmt 1
	lhu	a2,24(a0)
	lw	a0,0(a0)
.LVL66:
	seqz	a2,a2
	call	PWM_IntMask
.LVL67:
	.loc 1 199 5
	.loc 1 200 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 199 12
	li	a0,0
	.loc 1 200 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL68:
.L23:
	.loc 1 171 9 is_stmt 1
	.loc 1 172 9
	.loc 1 172 11 is_stmt 0
	addi	a4,a4,-1
.LVL69:
	bne	a4,zero,.L21
	.loc 1 173 20
	li	a0,2
.LVL70:
	.loc 1 200 1
	ret
	.cfi_endproc
.LFE8:
	.size	PWM_Channel_Init, .-PWM_Channel_Init
	.section	.text.PWM_Channel_Disable,"ax",@progbits
	.align	1
	.globl	PWM_Channel_Disable
	.type	PWM_Channel_Disable, @function
PWM_Channel_Disable:
.LFB16:
	.loc 1 370 1 is_stmt 1
	.cfi_startproc
.LVL71:
	.loc 1 371 5
	.loc 1 373 5
	.loc 1 376 5
	.loc 1 379 5
	.loc 1 373 50 is_stmt 0
	li	a5,33554432
	addi	a5,a5,1313
	add	a5,a0,a5
	.loc 1 373 14
	slli	a5,a5,5
	.loc 1 379 12
	lw	a4,16(a5)
.LVL72:
	.loc 1 380 5 is_stmt 1
	.loc 1 381 5 is_stmt 0
	li	a2,1
	li	a1,0
	.loc 1 380 55
	ori	a4,a4,64
.LVL73:
	.loc 1 380 42
	sw	a4,16(a5)
	.loc 1 381 5 is_stmt 1
	tail	PWM_IntMask
.LVL74:
	.cfi_endproc
.LFE16:
	.size	PWM_Channel_Disable, .-PWM_Channel_Disable
	.section	.text.PWM_Int_Callback_Install,"ax",@progbits
	.align	1
	.globl	PWM_Int_Callback_Install
	.type	PWM_Int_Callback_Install, @function
PWM_Int_Callback_Install:
.LFB21:
	.loc 1 510 1
	.cfi_startproc
.LVL75:
	.loc 1 511 5
	.loc 1 512 1 is_stmt 0
	ret
	.cfi_endproc
.LFE21:
	.size	PWM_Int_Callback_Install, .-PWM_Int_Callback_Install
	.section	.text.PWM_Smart_Configure,"ax",@progbits
	.align	1
	.globl	PWM_Smart_Configure
	.type	PWM_Smart_Configure, @function
PWM_Smart_Configure:
.LFB22:
	.loc 1 525 1 is_stmt 1
	.cfi_startproc
.LVL76:
	.loc 1 526 5
	.loc 1 527 5
	.loc 1 528 5
	.loc 1 530 5
	.loc 1 530 50 is_stmt 0
	li	a5,33554432
	addi	a5,a5,1313
	add	a0,a0,a5
.LVL77:
	.loc 1 532 7
	li	a5,40
	.loc 1 530 14
	slli	a0,a0,5
.LVL78:
	.loc 1 532 5 is_stmt 1
	.loc 1 532 7 is_stmt 0
	bgtu	a1,a5,.L32
	.loc 1 533 9 is_stmt 1
.LVL79:
	.loc 1 534 9
	.loc 1 535 25 is_stmt 0
	li	a4,640
	mul	a2,a2,a4
.LVL80:
	.loc 1 534 23
	li	a5,65536
	addi	a5,a5,-1536
	.loc 1 533 16
	li	a3,625
	.loc 1 534 23
	divu	a5,a5,a1
	.loc 1 535 35
	divu	a1,a2,a1
.LVL81:
	.loc 1 534 16
	slli	a5,a5,16
	srli	a5,a5,16
.LVL82:
	.loc 1 535 9 is_stmt 1
	.loc 1 535 20 is_stmt 0
	slli	a1,a1,16
	srli	a1,a1,16
.LVL83:
.L33:
	.loc 1 558 5 is_stmt 1
	.loc 1 558 12 is_stmt 0
	lw	a4,16(a0)
.LVL84:
	.loc 1 559 5 is_stmt 1
	.loc 1 558 42 is_stmt 0
	addi	a7,a0,16
	.loc 1 559 52
	andi	a2,a4,3
	.loc 1 559 7
	beq	a2,zero,.L38
	.loc 1 560 9 is_stmt 1
	.loc 1 560 59 is_stmt 0
	ori	a2,a4,64
	.loc 1 560 46
	sw	a2,16(a0)
	.loc 1 561 9 is_stmt 1
	.loc 1 561 14 is_stmt 0
	li	a2,159744
	addi	a2,a2,256
.LVL85:
.L39:
	.loc 1 561 14 is_stmt 1
	.loc 1 561 21 is_stmt 0
	lw	a6,0(a7)
	.loc 1 561 59
	andi	a6,a6,128
	.loc 1 561 14
	beq	a6,zero,.L41
	.loc 1 567 9 is_stmt 1
	.loc 1 567 16 is_stmt 0
	andi	a4,a4,-4
.LVL86:
.L38:
	.loc 1 569 5 is_stmt 1
	.loc 1 569 12 is_stmt 0
	andi	a4,a4,-5
.LVL87:
	.loc 1 570 5 is_stmt 1
	.loc 1 570 12 is_stmt 0
	ori	a4,a4,8
.LVL88:
	.loc 1 571 5 is_stmt 1
	.loc 1 571 42 is_stmt 0
	sw	a4,16(a0)
	.loc 1 574 5 is_stmt 1
	.loc 1 574 41 is_stmt 0
	sw	a3,0(a0)
	.loc 1 577 5 is_stmt 1
	.loc 1 577 41 is_stmt 0
	sw	a5,12(a0)
	.loc 1 578 5 is_stmt 1
	.loc 1 578 41 is_stmt 0
	sw	zero,4(a0)
	.loc 1 579 5 is_stmt 1
	.loc 1 579 41 is_stmt 0
	sw	a1,8(a0)
	.loc 1 581 5 is_stmt 1
	.loc 1 581 12 is_stmt 0
	li	a0,0
.LVL89:
	ret
.LVL90:
.L32:
	.loc 1 536 11 is_stmt 1
	.loc 1 536 13 is_stmt 0
	li	a5,78
	bgtu	a1,a5,.L34
	.loc 1 537 9 is_stmt 1
.LVL91:
	.loc 1 538 9
	.loc 1 539 27 is_stmt 0
	li	a4,24576
	addi	a4,a4,424
	mul	a2,a2,a4
.LVL92:
	.loc 1 538 25
	li	a5,2498560
	addi	a5,a5,1440
	.loc 1 537 16
	li	a3,16
	.loc 1 538 25
	divu	a5,a5,a1
	.loc 1 539 37
	divu	a1,a2,a1
.LVL93:
	.loc 1 538 16
	slli	a5,a5,16
	srli	a5,a5,16
.LVL94:
	.loc 1 539 9 is_stmt 1
	.loc 1 539 20 is_stmt 0
	slli	a1,a1,16
	srli	a1,a1,16
.LVL95:
	j	.L33
.LVL96:
.L34:
	.loc 1 540 11 is_stmt 1
	.loc 1 540 13 is_stmt 0
	li	a5,155
	bgtu	a1,a5,.L35
	.loc 1 541 9 is_stmt 1
.LVL97:
	.loc 1 542 9
	.loc 1 543 27 is_stmt 0
	li	a4,49152
	addi	a4,a4,848
	mul	a2,a2,a4
.LVL98:
	.loc 1 542 25
	li	a5,5001216
	addi	a5,a5,-1216
	.loc 1 541 16
	li	a3,8
	.loc 1 542 25
	divu	a5,a5,a1
	.loc 1 543 37
	divu	a1,a2,a1
.LVL99:
	.loc 1 542 16
	slli	a5,a5,16
	srli	a5,a5,16
.LVL100:
	.loc 1 543 9 is_stmt 1
	.loc 1 543 20 is_stmt 0
	slli	a1,a1,16
	srli	a1,a1,16
.LVL101:
	j	.L33
.LVL102:
.L35:
	.loc 1 544 11 is_stmt 1
	.loc 1 544 13 is_stmt 0
	li	a5,310
	bgtu	a1,a5,.L36
	.loc 1 545 9 is_stmt 1
.LVL103:
	.loc 1 546 9
	.loc 1 547 28 is_stmt 0
	li	a4,98304
	addi	a4,a4,1696
	mul	a2,a2,a4
.LVL104:
	.loc 1 546 26
	li	a5,9998336
	addi	a5,a5,1664
	.loc 1 545 16
	li	a3,4
	.loc 1 546 26
	divu	a5,a5,a1
	.loc 1 547 38
	divu	a1,a2,a1
.LVL105:
	.loc 1 546 16
	slli	a5,a5,16
	srli	a5,a5,16
.LVL106:
	.loc 1 547 9 is_stmt 1
	.loc 1 547 20 is_stmt 0
	slli	a1,a1,16
	srli	a1,a1,16
.LVL107:
	j	.L33
.LVL108:
.L36:
	.loc 1 548 11 is_stmt 1
	.loc 1 548 13 is_stmt 0
	li	a5,620
	bgtu	a1,a5,.L37
	.loc 1 549 9 is_stmt 1
.LVL109:
	.loc 1 550 9
	.loc 1 551 28 is_stmt 0
	li	a4,200704
	addi	a4,a4,-704
	mul	a2,a2,a4
.LVL110:
	.loc 1 550 26
	li	a5,20000768
	addi	a5,a5,-768
	.loc 1 549 16
	li	a3,2
	.loc 1 550 26
	divu	a5,a5,a1
	.loc 1 551 38
	divu	a1,a2,a1
.LVL111:
	.loc 1 550 16
	slli	a5,a5,16
	srli	a5,a5,16
.LVL112:
	.loc 1 551 9 is_stmt 1
	.loc 1 551 20 is_stmt 0
	slli	a1,a1,16
	srli	a1,a1,16
.LVL113:
	j	.L33
.LVL114:
.L37:
	.loc 1 553 9 is_stmt 1
	.loc 1 554 9
	.loc 1 555 28 is_stmt 0
	li	a4,401408
	addi	a4,a4,-1408
	mul	a2,a2,a4
.LVL115:
	.loc 1 554 26
	li	a5,40001536
	addi	a5,a5,-1536
	.loc 1 553 16
	li	a3,1
	.loc 1 554 26
	divu	a5,a5,a1
	.loc 1 555 38
	divu	a1,a2,a1
.LVL116:
	.loc 1 554 16
	slli	a5,a5,16
	srli	a5,a5,16
.LVL117:
	.loc 1 555 9 is_stmt 1
	.loc 1 555 20 is_stmt 0
	slli	a1,a1,16
	srli	a1,a1,16
.LVL118:
	j	.L33
.LVL119:
.L41:
	.loc 1 562 13 is_stmt 1
	.loc 1 563 13
	.loc 1 563 15 is_stmt 0
	addi	a2,a2,-1
.LVL120:
	bne	a2,zero,.L39
	.loc 1 564 24
	li	a0,2
.LVL121:
	.loc 1 582 1
	ret
	.cfi_endproc
.LFE22:
	.size	PWM_Smart_Configure, .-PWM_Smart_Configure
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_pwm.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x820
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF77
	.byte	0xc
	.4byte	.LASF78
	.4byte	.LASF79
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
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF3
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF4
	.byte	0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x54
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.byte	0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x67
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.byte	0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x7a
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x5
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x3
	.byte	0x17
	.byte	0x1
	.4byte	0xb8
	.byte	0x7
	.4byte	.LASF13
	.byte	0
	.byte	0x7
	.4byte	.LASF14
	.byte	0x1
	.byte	0x7
	.4byte	.LASF15
	.byte	0x2
	.byte	0
	.byte	0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x1b
	.byte	0x2
	.4byte	0x97
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x3
	.byte	0x21
	.byte	0x1
	.4byte	0xdf
	.byte	0x7
	.4byte	.LASF17
	.byte	0
	.byte	0x7
	.4byte	.LASF18
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF19
	.byte	0x3
	.byte	0x24
	.byte	0x2
	.4byte	0xc4
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x3
	.byte	0x33
	.byte	0x1
	.4byte	0x106
	.byte	0x7
	.4byte	.LASF20
	.byte	0
	.byte	0x7
	.4byte	.LASF21
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF22
	.byte	0x3
	.byte	0x36
	.byte	0x2
	.4byte	0xeb
	.byte	0x3
	.4byte	.LASF23
	.byte	0x3
	.byte	0x7c
	.byte	0xf
	.4byte	0x8f
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x4
	.byte	0x39
	.byte	0xe
	.4byte	0x151
	.byte	0x7
	.4byte	.LASF24
	.byte	0
	.byte	0x7
	.4byte	.LASF25
	.byte	0x1
	.byte	0x7
	.4byte	.LASF26
	.byte	0x2
	.byte	0x7
	.4byte	.LASF27
	.byte	0x3
	.byte	0x7
	.4byte	.LASF28
	.byte	0x4
	.byte	0x7
	.4byte	.LASF29
	.byte	0x5
	.byte	0
	.byte	0x3
	.4byte	.LASF30
	.byte	0x4
	.byte	0x40
	.byte	0x2
	.4byte	0x11e
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x4
	.byte	0x45
	.byte	0xe
	.4byte	0x17e
	.byte	0x7
	.4byte	.LASF31
	.byte	0
	.byte	0x7
	.4byte	.LASF32
	.byte	0x1
	.byte	0x7
	.4byte	.LASF33
	.byte	0x2
	.byte	0
	.byte	0x3
	.4byte	.LASF34
	.byte	0x4
	.byte	0x49
	.byte	0x2
	.4byte	0x15d
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x4
	.byte	0x4e
	.byte	0xe
	.4byte	0x1a5
	.byte	0x7
	.4byte	.LASF35
	.byte	0
	.byte	0x7
	.4byte	.LASF36
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF37
	.byte	0x4
	.byte	0x51
	.byte	0x2
	.4byte	0x18a
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x4
	.byte	0x56
	.byte	0xe
	.4byte	0x1cc
	.byte	0x7
	.4byte	.LASF38
	.byte	0
	.byte	0x7
	.4byte	.LASF39
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF40
	.byte	0x4
	.byte	0x59
	.byte	0x2
	.4byte	0x1b1
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x4
	.byte	0x5e
	.byte	0xe
	.4byte	0x1f3
	.byte	0x7
	.4byte	.LASF41
	.byte	0
	.byte	0x7
	.4byte	.LASF42
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF43
	.byte	0x4
	.byte	0x61
	.byte	0x2
	.4byte	0x1d8
	.byte	0x8
	.byte	0x1c
	.byte	0x4
	.byte	0x66
	.byte	0x9
	.4byte	0x27d
	.byte	0x9
	.string	"ch"
	.byte	0x4
	.byte	0x67
	.byte	0x14
	.4byte	0x151
	.byte	0
	.byte	0x9
	.string	"clk"
	.byte	0x4
	.byte	0x68
	.byte	0x12
	.4byte	0x17e
	.byte	0x4
	.byte	0xa
	.4byte	.LASF44
	.byte	0x4
	.byte	0x69
	.byte	0x18
	.4byte	0x1a5
	.byte	0x8
	.byte	0x9
	.string	"pol"
	.byte	0x4
	.byte	0x6a
	.byte	0x17
	.4byte	0x1cc
	.byte	0xc
	.byte	0xa
	.4byte	.LASF45
	.byte	0x4
	.byte	0x6b
	.byte	0xe
	.4byte	0x5b
	.byte	0x10
	.byte	0xa
	.4byte	.LASF46
	.byte	0x4
	.byte	0x6c
	.byte	0xe
	.4byte	0x5b
	.byte	0x12
	.byte	0xa
	.4byte	.LASF47
	.byte	0x4
	.byte	0x6d
	.byte	0xe
	.4byte	0x5b
	.byte	0x14
	.byte	0xa
	.4byte	.LASF48
	.byte	0x4
	.byte	0x6e
	.byte	0xe
	.4byte	0x5b
	.byte	0x16
	.byte	0xa
	.4byte	.LASF49
	.byte	0x4
	.byte	0x6f
	.byte	0xe
	.4byte	0x5b
	.byte	0x18
	.byte	0
	.byte	0x3
	.4byte	.LASF50
	.byte	0x4
	.byte	0x70
	.byte	0x2
	.4byte	0x1ff
	.byte	0xb
	.4byte	0x29f
	.4byte	0x29f
	.byte	0xc
	.4byte	0x25
	.byte	0x4
	.byte	0xc
	.4byte	0x25
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x112
	.byte	0xe
	.4byte	.LASF80
	.byte	0x1
	.byte	0x45
	.byte	0x1b
	.4byte	0x289
	.byte	0xf
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x20c
	.byte	0xd
	.4byte	0xb8
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x1
	.byte	0x9c
	.4byte	0x365
	.byte	0x10
	.string	"ch"
	.byte	0x1
	.2byte	0x20c
	.byte	0x30
	.4byte	0x151
	.4byte	.LLST34
	.byte	0x11
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x20c
	.byte	0x3c
	.4byte	0x6e
	.4byte	.LLST35
	.byte	0x11
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x20c
	.byte	0x4e
	.4byte	0x48
	.4byte	.LLST36
	.byte	0x12
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x20e
	.byte	0xe
	.4byte	0x6e
	.4byte	.LLST37
	.byte	0x12
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x20f
	.byte	0xe
	.4byte	0x5b
	.4byte	.LLST38
	.byte	0x12
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x20f
	.byte	0x15
	.4byte	0x5b
	.4byte	.LLST39
	.byte	0x12
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x20f
	.byte	0x1c
	.4byte	0x5b
	.4byte	.LLST40
	.byte	0x12
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x210
	.byte	0xe
	.4byte	0x6e
	.4byte	.LLST41
	.byte	0x12
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x212
	.byte	0xe
	.4byte	0x6e
	.4byte	.LLST42
	.byte	0
	.byte	0x13
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x1fd
	.byte	0x6
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x1
	.byte	0x9c
	.4byte	0x3a9
	.byte	0x14
	.string	"ch"
	.byte	0x1
	.2byte	0x1fd
	.byte	0x2e
	.4byte	0x151
	.byte	0x1
	.byte	0x5a
	.byte	0x15
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x1fd
	.byte	0x3a
	.4byte	0x6e
	.byte	0x1
	.byte	0x5b
	.byte	0x15
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x1fd
	.byte	0x54
	.4byte	0x29f
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0x13
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x1cc
	.byte	0x6
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x1
	.byte	0x9c
	.4byte	0x411
	.byte	0x10
	.string	"ch"
	.byte	0x1
	.2byte	0x1cc
	.byte	0x21
	.4byte	0x151
	.4byte	.LLST24
	.byte	0x15
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x1cc
	.byte	0x31
	.4byte	0x1f3
	.byte	0x1
	.byte	0x5b
	.byte	0x15
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x1cc
	.byte	0x46
	.4byte	0x106
	.byte	0x1
	.byte	0x5c
	.byte	0x12
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x1ce
	.byte	0xe
	.4byte	0x6e
	.4byte	.LLST25
	.byte	0x12
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x1d0
	.byte	0xe
	.4byte	0x6e
	.4byte	.LLST26
	.byte	0
	.byte	0x13
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x1b5
	.byte	0x6
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x1
	.byte	0x9c
	.4byte	0x45b
	.byte	0x10
	.string	"ch"
	.byte	0x1
	.2byte	0x1b5
	.byte	0x2f
	.4byte	0x151
	.4byte	.LLST21
	.byte	0x12
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x1b7
	.byte	0xe
	.4byte	0x6e
	.4byte	.LLST22
	.byte	0x12
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x1b9
	.byte	0xe
	.4byte	0x6e
	.4byte	.LLST23
	.byte	0
	.byte	0x13
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x19f
	.byte	0x6
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x1
	.byte	0x9c
	.4byte	0x4b6
	.byte	0x10
	.string	"ch"
	.byte	0x1
	.2byte	0x19f
	.byte	0x28
	.4byte	0x151
	.4byte	.LLST17
	.byte	0x11
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x19f
	.byte	0x33
	.4byte	0x48
	.4byte	.LLST18
	.byte	0x12
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x1a1
	.byte	0xe
	.4byte	0x6e
	.4byte	.LLST19
	.byte	0x12
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x1a3
	.byte	0xe
	.4byte	0x6e
	.4byte	.LLST20
	.byte	0
	.byte	0x13
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x189
	.byte	0x6
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.4byte	0x511
	.byte	0x10
	.string	"ch"
	.byte	0x1
	.2byte	0x189
	.byte	0x21
	.4byte	0x151
	.4byte	.LLST13
	.byte	0x11
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x189
	.byte	0x30
	.4byte	0xdf
	.4byte	.LLST14
	.byte	0x12
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x18b
	.byte	0xe
	.4byte	0x6e
	.4byte	.LLST15
	.byte	0x12
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x18d
	.byte	0xe
	.4byte	0x6e
	.4byte	.LLST16
	.byte	0
	.byte	0x13
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x171
	.byte	0x6
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0x576
	.byte	0x10
	.string	"ch"
	.byte	0x1
	.2byte	0x171
	.byte	0x29
	.4byte	0x151
	.4byte	.LLST31
	.byte	0x12
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x173
	.byte	0xe
	.4byte	0x6e
	.4byte	.LLST32
	.byte	0x12
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x175
	.byte	0xe
	.4byte	0x6e
	.4byte	.LLST33
	.byte	0x16
	.4byte	.LVL74
	.4byte	0x3a9
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x15b
	.byte	0x6
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x5c0
	.byte	0x10
	.string	"ch"
	.byte	0x1
	.2byte	0x15b
	.byte	0x28
	.4byte	0x151
	.4byte	.LLST10
	.byte	0x12
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x15d
	.byte	0xe
	.4byte	0x6e
	.4byte	.LLST11
	.byte	0x12
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x15f
	.byte	0xe
	.4byte	0x6e
	.4byte	.LLST12
	.byte	0
	.byte	0x13
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x141
	.byte	0x6
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x633
	.byte	0x10
	.string	"ch"
	.byte	0x1
	.2byte	0x141
	.byte	0x25
	.4byte	0x151
	.4byte	.LLST9
	.byte	0x15
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x141
	.byte	0x32
	.4byte	0x633
	.byte	0x1
	.byte	0x5b
	.byte	0x15
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x141
	.byte	0x43
	.4byte	0x633
	.byte	0x1
	.byte	0x5c
	.byte	0x15
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x141
	.byte	0x58
	.4byte	0x633
	.byte	0x1
	.byte	0x5d
	.byte	0x18
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x143
	.byte	0xe
	.4byte	0x6e
	.byte	0x1
	.byte	0x5f
	.byte	0x18
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x145
	.byte	0xe
	.4byte	0x6e
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x5b
	.byte	0x13
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x12a
	.byte	0x6
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x681
	.byte	0x10
	.string	"ch"
	.byte	0x1
	.2byte	0x12a
	.byte	0x2c
	.4byte	0x151
	.4byte	.LLST7
	.byte	0x15
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x12a
	.byte	0x38
	.4byte	0x5b
	.byte	0x1
	.byte	0x5b
	.byte	0x12
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x12d
	.byte	0xe
	.4byte	0x6e
	.4byte	.LLST8
	.byte	0
	.byte	0x13
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x115
	.byte	0x6
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x6c9
	.byte	0x10
	.string	"ch"
	.byte	0x1
	.2byte	0x115
	.byte	0x30
	.4byte	0x151
	.4byte	.LLST5
	.byte	0x15
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x115
	.byte	0x3c
	.4byte	0x5b
	.byte	0x1
	.byte	0x5b
	.byte	0x12
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x118
	.byte	0xe
	.4byte	0x6e
	.4byte	.LLST6
	.byte	0
	.byte	0x13
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x100
	.byte	0x6
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x711
	.byte	0x10
	.string	"ch"
	.byte	0x1
	.2byte	0x100
	.byte	0x30
	.4byte	0x151
	.4byte	.LLST3
	.byte	0x15
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x100
	.byte	0x3c
	.4byte	0x5b
	.byte	0x1
	.byte	0x5b
	.byte	0x12
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x103
	.byte	0xe
	.4byte	0x6e
	.4byte	.LLST4
	.byte	0
	.byte	0x19
	.4byte	.LASF72
	.byte	0x1
	.byte	0xec
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x755
	.byte	0x1a
	.string	"ch"
	.byte	0x1
	.byte	0xec
	.byte	0x29
	.4byte	0x151
	.4byte	.LLST1
	.byte	0x1b
	.string	"div"
	.byte	0x1
	.byte	0xec
	.byte	0x35
	.4byte	0x5b
	.byte	0x1
	.byte	0x5b
	.byte	0x1c
	.4byte	.LASF55
	.byte	0x1
	.byte	0xef
	.byte	0xe
	.4byte	0x6e
	.4byte	.LLST2
	.byte	0
	.byte	0x19
	.4byte	.LASF73
	.byte	0x1
	.byte	0xd5
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x7b3
	.byte	0x1a
	.string	"ch"
	.byte	0x1
	.byte	0xd5
	.byte	0x28
	.4byte	0x151
	.4byte	.LLST0
	.byte	0x1d
	.4byte	.LASF46
	.byte	0x1
	.byte	0xd5
	.byte	0x34
	.4byte	0x5b
	.byte	0x1
	.byte	0x5b
	.byte	0x1d
	.4byte	.LASF47
	.byte	0x1
	.byte	0xd5
	.byte	0x44
	.4byte	0x5b
	.byte	0x1
	.byte	0x5c
	.byte	0x1d
	.4byte	.LASF48
	.byte	0x1
	.byte	0xd5
	.byte	0x58
	.4byte	0x5b
	.byte	0x1
	.byte	0x5d
	.byte	0x1e
	.4byte	.LASF55
	.byte	0x1
	.byte	0xd8
	.byte	0xe
	.4byte	0x6e
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x1f
	.4byte	.LASF75
	.byte	0x1
	.byte	0x9a
	.byte	0xd
	.4byte	0xb8
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x81d
	.byte	0x20
	.4byte	.LASF76
	.byte	0x1
	.byte	0x9a
	.byte	0x2f
	.4byte	0x81d
	.4byte	.LLST27
	.byte	0x1c
	.4byte	.LASF53
	.byte	0x1
	.byte	0x9c
	.byte	0xe
	.4byte	0x6e
	.4byte	.LLST28
	.byte	0x1c
	.4byte	.LASF54
	.byte	0x1
	.byte	0x9d
	.byte	0xe
	.4byte	0x6e
	.4byte	.LLST29
	.byte	0x1c
	.4byte	.LASF55
	.byte	0x1
	.byte	0x9f
	.byte	0xe
	.4byte	0x6e
	.4byte	.LLST30
	.byte	0x21
	.4byte	.LVL67
	.4byte	0x3a9
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x27d
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
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x6
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
	.byte	0x7
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
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
	.byte	0xa
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
	.byte	0xb
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
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
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x5
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
	.byte	0x14
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
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
	.byte	0x5
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
	.byte	0x1a
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
	.byte	0x1b
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
	.byte	0x1e
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
	.byte	0x1f
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x21
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST34:
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x6
	.byte	0x7a
	.byte	0xdf,0xf5,0xff,0x6f
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL76
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL81
	.4byte	.LVL90
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL93
	.4byte	.LVL96
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL99
	.4byte	.LVL102
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL102
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL105
	.4byte	.LVL108
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL108
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL111
	.4byte	.LVL114
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL114
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL116
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL76
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL80
	.4byte	.LVL90
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL92
	.4byte	.LVL96
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL98
	.4byte	.LVL102
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL102
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL104
	.4byte	.LVL108
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL108
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL110
	.4byte	.LVL114
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL115
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL84
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL119
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL79
	.4byte	.LVL83
	.2byte	0x4
	.byte	0xa
	.2byte	0x271
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL91
	.4byte	.LVL96
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LVL102
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LVL108
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL114
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL114
	.4byte	.LVL119
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL119
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL82
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL94
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL100
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL106
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL112
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL117
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL83
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL118
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL76
	.4byte	.LVL85
	.2byte	0x6
	.byte	0xc
	.4byte	0x27100
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL90
	.4byte	.LVL119
	.2byte	0x6
	.byte	0xc
	.4byte	0x27100
	.byte	0x9f
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x3
	.byte	0x7c
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL120
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL78
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x3
	.byte	0x81
	.byte	0x70
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL121
	.4byte	.LFE22
	.2byte	0x3
	.byte	0x81
	.byte	0x70
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x6
	.byte	0x7a
	.byte	0xdf,0xf5,0xff,0x6f
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x8
	.byte	0x7a
	.byte	0xa1,0x8a,0x80,0x10
	.byte	0x35
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x5
	.byte	0x7a
	.byte	0
	.byte	0x35
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LFE20
	.2byte	0xb
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0xa1,0x8a,0x80,0x10
	.byte	0x35
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x6
	.byte	0x7a
	.byte	0xdf,0xf5,0xff,0x6f
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x8
	.byte	0x7a
	.byte	0xa1,0x8a,0x80,0x10
	.byte	0x35
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x5
	.byte	0x7a
	.byte	0
	.byte	0x35
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LFE19
	.2byte	0xb
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0xa1,0x8a,0x80,0x10
	.byte	0x35
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x6
	.byte	0x7a
	.byte	0xdf,0xf5,0xff,0x6f
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL32
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL36
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x8
	.byte	0x7a
	.byte	0xa1,0x8a,0x80,0x10
	.byte	0x35
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x5
	.byte	0x7a
	.byte	0
	.byte	0x35
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LFE18
	.2byte	0xb
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0xa1,0x8a,0x80,0x10
	.byte	0x35
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x6
	.byte	0x7a
	.byte	0xdf,0xf5,0xff,0x6f
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL26
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL30
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x8
	.byte	0x7a
	.byte	0xa1,0x8a,0x80,0x10
	.byte	0x35
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x5
	.byte	0x7a
	.byte	0
	.byte	0x35
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LFE17
	.2byte	0xb
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0xa1,0x8a,0x80,0x10
	.byte	0x35
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL71
	.4byte	.LVL74-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL74-1
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL71
	.4byte	.LVL74-1
	.2byte	0x8
	.byte	0x7a
	.byte	0xa1,0x8a,0x80,0x10
	.byte	0x35
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL74-1
	.4byte	.LFE16
	.2byte	0xb
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0xa1,0x8a,0x80,0x10
	.byte	0x35
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x6
	.byte	0x7a
	.byte	0xdf,0xf5,0xff,0x6f
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x8
	.byte	0x7a
	.byte	0xa1,0x8a,0x80,0x10
	.byte	0x35
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x5
	.byte	0x7a
	.byte	0
	.byte	0x35
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LFE15
	.2byte	0xb
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0xa1,0x8a,0x80,0x10
	.byte	0x35
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x6
	.byte	0x7a
	.byte	0xdf,0xf5,0xff,0x6f
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x6
	.byte	0x7a
	.byte	0xdf,0xf5,0xff,0x6f
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x8
	.byte	0x7a
	.byte	0xa1,0x8a,0x80,0x10
	.byte	0x35
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x5
	.byte	0x7a
	.byte	0
	.byte	0x35
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LFE13
	.2byte	0xb
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0xa1,0x8a,0x80,0x10
	.byte	0x35
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x6
	.byte	0x7a
	.byte	0xdf,0xf5,0xff,0x6f
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x8
	.byte	0x7a
	.byte	0xa1,0x8a,0x80,0x10
	.byte	0x35
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x5
	.byte	0x7a
	.byte	0
	.byte	0x35
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LFE12
	.2byte	0xb
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0xa1,0x8a,0x80,0x10
	.byte	0x35
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x6
	.byte	0x7a
	.byte	0xdf,0xf5,0xff,0x6f
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x8
	.byte	0x7a
	.byte	0xa1,0x8a,0x80,0x10
	.byte	0x35
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x5
	.byte	0x7a
	.byte	0
	.byte	0x35
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LFE11
	.2byte	0xb
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0xa1,0x8a,0x80,0x10
	.byte	0x35
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x6
	.byte	0x7a
	.byte	0xdf,0xf5,0xff,0x6f
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x8
	.byte	0x7a
	.byte	0xa1,0x8a,0x80,0x10
	.byte	0x35
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x5
	.byte	0x7a
	.byte	0
	.byte	0x35
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LFE10
	.2byte	0xb
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0xa1,0x8a,0x80,0x10
	.byte	0x35
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x6
	.byte	0x7a
	.byte	0xdf,0xf5,0xff,0x6f
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL50
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL66
	.4byte	.LVL68
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL70
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x6
	.byte	0x7d
	.byte	0
	.byte	0x7e
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x9
	.byte	0x7a
	.byte	0xc
	.byte	0x6
	.byte	0x32
	.byte	0x24
	.byte	0x7d
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x2
	.byte	0x7f
	.byte	0x10
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL50
	.4byte	.LVL54
	.2byte	0x6
	.byte	0xc
	.4byte	0x27100
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x3
	.byte	0x7e
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL51
	.4byte	.LVL67-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL68
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x8c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF66:
	.string	"PWM_Channel_Disable"
.LASF72:
	.string	"PWM_Channel_Set_Div"
.LASF67:
	.string	"PWM_Channel_Enable"
.LASF68:
	.string	"PWM_Channel_Get"
.LASF2:
	.string	"short int"
.LASF74:
	.string	"PWM_Smart_Configure"
.LASF80:
	.string	"PWMIntCbfArra"
.LASF40:
	.string	"PWM_Polarity_Type"
.LASF49:
	.string	"intPulseCnt"
.LASF4:
	.string	"long long int"
.LASF59:
	.string	"PWM_IntMask"
.LASF73:
	.string	"PWM_Channel_Update"
.LASF29:
	.string	"PWM_CH_MAX"
.LASF63:
	.string	"value"
.LASF65:
	.string	"enable"
.LASF71:
	.string	"PWM_Channel_Set_Threshold1"
.LASF45:
	.string	"clkDiv"
.LASF60:
	.string	"intMask"
.LASF54:
	.string	"timeoutCnt"
.LASF17:
	.string	"DISABLE"
.LASF30:
	.string	"PWM_CH_ID_Type"
.LASF13:
	.string	"SUCCESS"
.LASF19:
	.string	"BL_Fun_Type"
.LASF15:
	.string	"TIMEOUT"
.LASF55:
	.string	"PWMx"
.LASF47:
	.string	"threshold1"
.LASF48:
	.string	"threshold2"
.LASF46:
	.string	"period"
.LASF32:
	.string	"PWM_CLK_BCLK"
.LASF14:
	.string	"ERROR"
.LASF53:
	.string	"tmpVal"
.LASF56:
	.string	"intType"
.LASF20:
	.string	"UNMASK"
.LASF5:
	.string	"unsigned char"
.LASF61:
	.string	"PWM_Channel_Fource_Output"
.LASF34:
	.string	"PWM_Clk_Type"
.LASF22:
	.string	"BL_Mask_Type"
.LASF1:
	.string	"signed char"
.LASF11:
	.string	"long long unsigned int"
.LASF9:
	.string	"uint32_t"
.LASF62:
	.string	"PWM_SW_Force_Value"
.LASF0:
	.string	"unsigned int"
.LASF21:
	.string	"MASK"
.LASF7:
	.string	"uint16_t"
.LASF50:
	.string	"PWM_CH_CFG_Type"
.LASF76:
	.string	"chCfg"
.LASF23:
	.string	"intCallback_Type"
.LASF24:
	.string	"PWM_CH0"
.LASF25:
	.string	"PWM_CH1"
.LASF26:
	.string	"PWM_CH2"
.LASF27:
	.string	"PWM_CH3"
.LASF28:
	.string	"PWM_CH4"
.LASF39:
	.string	"PWM_POL_INVERT"
.LASF37:
	.string	"PWM_Stop_Mode_Type"
.LASF12:
	.string	"char"
.LASF58:
	.string	"PWM_Int_Callback_Install"
.LASF52:
	.string	"dutyCycle"
.LASF75:
	.string	"PWM_Channel_Init"
.LASF31:
	.string	"PWM_CLK_XCLK"
.LASF16:
	.string	"BL_Err_Type"
.LASF8:
	.string	"short unsigned int"
.LASF43:
	.string	"PWM_INT_Type"
.LASF79:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/bl602_std"
.LASF35:
	.string	"PWM_STOP_ABRUPT"
.LASF57:
	.string	"cbFun"
.LASF64:
	.string	"PWM_SW_Mode"
.LASF10:
	.string	"long unsigned int"
.LASF69:
	.string	"PWM_Channel_Set_Period"
.LASF33:
	.string	"PWM_CLK_32K"
.LASF42:
	.string	"PWM_INT_ALL"
.LASF6:
	.string	"uint8_t"
.LASF70:
	.string	"PWM_Channel_Set_Threshold2"
.LASF44:
	.string	"stopMode"
.LASF51:
	.string	"frequency"
.LASF38:
	.string	"PWM_POL_NORMAL"
.LASF3:
	.string	"long int"
.LASF36:
	.string	"PWM_STOP_GRACEFUL"
.LASF41:
	.string	"PWM_INT_PULSE_CNT"
.LASF78:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_pwm.c"
.LASF18:
	.string	"ENABLE"
.LASF77:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
