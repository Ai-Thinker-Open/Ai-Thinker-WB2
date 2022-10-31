	.file	"heap_5.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.prvInsertBlockIntoFreeList,"ax",@progbits
	.align	1
	.type	prvInsertBlockIntoFreeList, @function
prvInsertBlockIntoFreeList:
.LFB7:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/portable/MemMang/heap_5.c"
	.loc 1 410 1
	.cfi_startproc
.LVL0:
	.loc 1 411 1
	.loc 1 412 1
	.loc 1 416 2
	.loc 1 416 18 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
.LVL1:
.L2:
	.loc 1 416 29 is_stmt 1 discriminator 1
	mv	a4,a5
	.loc 1 416 39 is_stmt 0 discriminator 1
	lw	a5,0(a5)
.LVL2:
	.loc 1 416 2 discriminator 1
	bltu	a5,a0,.L2
	.loc 1 423 2 is_stmt 1
.LVL3:
	.loc 1 424 2
	.loc 1 424 24 is_stmt 0
	lw	a2,4(a4)
	.loc 1 426 44
	lw	a3,4(a0)
	.loc 1 424 12
	add	a1,a4,a2
	.loc 1 424 4
	beq	a0,a1,.L10
.L3:
	.loc 1 431 3 is_stmt 1
	.loc 1 436 2
.LVL4:
	.loc 1 437 2
	.loc 1 437 12 is_stmt 0
	add	a2,a0,a3
	.loc 1 437 4
	beq	a5,a2,.L11
.L4:
	.loc 1 452 3 is_stmt 1
	.loc 1 452 36 is_stmt 0
	sw	a5,0(a0)
.L6:
	.loc 1 459 2 is_stmt 1
	.loc 1 459 4 is_stmt 0
	beq	a0,a4,.L1
	.loc 1 461 3 is_stmt 1
	.loc 1 461 31 is_stmt 0
	sw	a0,0(a4)
	.loc 1 465 3 is_stmt 1
.L1:
	.loc 1 467 1 is_stmt 0
	ret
.L11:
	.loc 1 439 3 is_stmt 1
	.loc 1 439 35 is_stmt 0
	lui	a2,%hi(.LANCHOR1)
	lw	a2,%lo(.LANCHOR1)(a2)
	.loc 1 439 5
	beq	a5,a2,.L4
	.loc 1 442 4 is_stmt 1
	.loc 1 442 32 is_stmt 0
	lw	a5,4(a5)
	add	a3,a5,a3
	sw	a3,4(a0)
	.loc 1 443 4 is_stmt 1
	.loc 1 443 66 is_stmt 0
	lw	a5,0(a4)
	lw	a5,0(a5)
	.loc 1 443 37
	sw	a5,0(a0)
	j	.L6
.LVL5:
.L10:
	.loc 1 426 3 is_stmt 1
	.loc 1 426 26 is_stmt 0
	add	a3,a3,a2
	sw	a3,4(a4)
	.loc 1 427 3 is_stmt 1
.LVL6:
	mv	a0,a4
	j	.L3
	.cfi_endproc
.LFE7:
	.size	prvInsertBlockIntoFreeList, .-prvInsertBlockIntoFreeList
	.section	.text.pvPortMalloc,"ax",@progbits
	.align	1
	.globl	pvPortMalloc
	.type	pvPortMalloc, @function
pvPortMalloc:
.LFB1:
	.loc 1 134 1
	.cfi_startproc
.LVL7:
	.loc 1 135 1
	.loc 1 136 1
	.loc 1 140 2
	.loc 1 134 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s1,20(sp)
	.cfi_offset 9, -12
	.loc 1 140 16
	lui	s1,%hi(.LANCHOR1)
	.loc 1 134 1
	sw	s0,24(sp)
	sw	ra,28(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.loc 1 140 16
	addi	s1,s1,%lo(.LANCHOR1)
	.loc 1 140 4
	lw	a5,0(s1)
	.loc 1 134 1
	mv	s0,a0
	.loc 1 140 4
	beq	a5,zero,.L33
.LVL8:
.L13:
	.loc 1 142 2 is_stmt 1
	call	vTaskSuspendAll
.LVL9:
	.loc 1 148 3
	.loc 1 148 21 is_stmt 0
	lui	a5,%hi(.LANCHOR2)
	lw	s3,%lo(.LANCHOR2)(a5)
	and	a5,s3,s0
	.loc 1 148 5
	bne	a5,zero,.L16
	.loc 1 152 4 is_stmt 1
	.loc 1 152 6 is_stmt 0
	beq	s0,zero,.L16
	.loc 1 154 5 is_stmt 1
	.loc 1 158 23 is_stmt 0
	andi	a5,s0,7
	.loc 1 154 17
	addi	a4,s0,8
.LVL10:
	.loc 1 158 5 is_stmt 1
	.loc 1 158 7 is_stmt 0
	beq	a5,zero,.L17
	.loc 1 161 6 is_stmt 1
	.loc 1 161 18 is_stmt 0
	andi	a4,a4,-8
.LVL11:
	addi	a4,a4,8
.LVL12:
.L17:
	.loc 1 170 5 is_stmt 1
	.loc 1 173 4
	.loc 1 173 6 is_stmt 0
	beq	a4,zero,.L16
	.loc 1 173 45 discriminator 1
	lui	s4,%hi(.LANCHOR3)
	addi	s4,s4,%lo(.LANCHOR3)
	lw	s2,0(s4)
	.loc 1 173 28 discriminator 1
	bltu	s2,a4,.L16
	.loc 1 177 5 is_stmt 1
.LVL13:
	.loc 1 178 5
	.loc 1 178 13 is_stmt 0
	lui	a3,%hi(.LANCHOR0)
	lw	s0,%lo(.LANCHOR0)(a3)
.LVL14:
	.loc 1 179 5 is_stmt 1
	.loc 1 177 21 is_stmt 0
	addi	a3,a3,%lo(.LANCHOR0)
	.loc 1 179 10
	j	.L19
.LVL15:
.L34:
	.loc 1 179 62 discriminator 1
	lw	a5,0(s0)
	.loc 1 179 50 discriminator 1
	beq	a5,zero,.L18
	mv	a3,s0
.LVL16:
	mv	s0,a5
.LVL17:
.L19:
	.loc 1 179 10 is_stmt 1
	lw	a5,4(s0)
	bltu	a5,a4,.L34
.L18:
	.loc 1 187 5
	.loc 1 187 7 is_stmt 0
	lw	a5,0(s1)
	beq	a5,s0,.L16
	.loc 1 191 6 is_stmt 1
	.loc 1 195 48 is_stmt 0
	lw	a5,0(s0)
	.loc 1 191 15
	lw	s1,0(a3)
	.loc 1 199 8
	li	a2,16
	.loc 1 195 39
	sw	a5,0(a3)
	.loc 1 199 19
	lw	a3,4(s0)
.LVL18:
	.loc 1 191 15
	addi	s1,s1,8
.LVL19:
	.loc 1 195 6 is_stmt 1
	.loc 1 199 6
	.loc 1 199 32 is_stmt 0
	sub	a5,a3,a4
	.loc 1 199 8
	bgtu	a5,a2,.L35
.LVL20:
.L20:
	.loc 1 217 7 is_stmt 1
	.loc 1 220 6
	.loc 1 222 30 is_stmt 0
	lui	a5,%hi(.LANCHOR4)
	addi	a5,a5,%lo(.LANCHOR4)
	.loc 1 222 8
	lw	a4,0(a5)
	.loc 1 220 26
	sub	s2,s2,a3
	sw	s2,0(s4)
	.loc 1 222 6 is_stmt 1
	.loc 1 222 8 is_stmt 0
	bgeu	s2,a4,.L21
	.loc 1 224 7 is_stmt 1
	.loc 1 224 38 is_stmt 0
	sw	s2,0(a5)
.L21:
	.loc 1 228 7 is_stmt 1
	.loc 1 233 6
	.loc 1 233 26 is_stmt 0
	or	s3,s3,a3
	sw	s3,4(s0)
	.loc 1 234 6 is_stmt 1
	.loc 1 234 31 is_stmt 0
	sw	zero,0(s0)
	.loc 1 248 4 is_stmt 1
	.loc 1 251 3
	.loc 1 253 2
	.loc 1 253 11 is_stmt 0
	call	xTaskResumeAll
.LVL21:
	.loc 1 257 3 is_stmt 1
	.loc 1 264 4
	.loc 1 269 2
	.loc 1 269 9 is_stmt 0
	j	.L12
.LVL22:
.L16:
	.loc 1 248 4 is_stmt 1
	.loc 1 251 3
	.loc 1 253 2
	.loc 1 253 11 is_stmt 0
	call	xTaskResumeAll
.LVL23:
	.loc 1 257 3 is_stmt 1
.LBB2:
	.loc 1 259 4
	.loc 1 260 4
	call	vApplicationMallocFailedHook
.LVL24:
.LBE2:
	li	s1,0
.LVL25:
.L12:
	.loc 1 270 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
	mv	a0,s1
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL26:
.L35:
	.cfi_restore_state
	.loc 1 205 7 is_stmt 1
	.loc 1 205 22 is_stmt 0
	add	a0,s0,a4
.LVL27:
	.loc 1 209 7 is_stmt 1
	.loc 1 209 34 is_stmt 0
	sw	a5,4(a0)
	.loc 1 210 7 is_stmt 1
	.loc 1 210 27 is_stmt 0
	sw	a4,4(s0)
	.loc 1 213 7 is_stmt 1
	call	prvInsertBlockIntoFreeList
.LVL28:
	.loc 1 220 36 is_stmt 0
	lw	a3,4(s0)
	j	.L20
.LVL29:
.L33:
	.loc 1 140 23 is_stmt 1 discriminator 1
	li	a0,2
	call	vEnvironmentCall
.LVL30:
	j	.L13
	.cfi_endproc
.LFE1:
	.size	pvPortMalloc, .-pvPortMalloc
	.section	.text.pvPortCalloc,"ax",@progbits
	.align	1
	.globl	pvPortCalloc
	.type	pvPortCalloc, @function
pvPortCalloc:
.LFB2:
	.loc 1 274 1
	.cfi_startproc
.LVL31:
	.loc 1 275 5
	.loc 1 277 5
	.loc 1 274 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s1,4(sp)
	.cfi_offset 9, -12
	.loc 1 277 8
	mul	s1,a0,a1
	.loc 1 274 1
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 277 8
	mv	a0,s1
.LVL32:
	call	pvPortMalloc
.LVL33:
	mv	s0,a0
.LVL34:
	.loc 1 278 5 is_stmt 1
	.loc 1 278 7 is_stmt 0
	beq	a0,zero,.L36
	.loc 1 279 9 is_stmt 1
	mv	a2,s1
	li	a1,0
	call	memset
.LVL35:
	.loc 1 281 5
.L36:
	.loc 1 282 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	mv	a0,s0
	lw	s0,8(sp)
	.cfi_restore 8
.LVL36:
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2:
	.size	pvPortCalloc, .-pvPortCalloc
	.section	.text.vPortFree,"ax",@progbits
	.align	1
	.globl	vPortFree
	.type	vPortFree, @function
vPortFree:
.LFB4:
	.loc 1 350 1 is_stmt 1
	.cfi_startproc
.LVL37:
	.loc 1 351 1
	.loc 1 352 1
	.loc 1 354 2
	.loc 1 354 4 is_stmt 0
	beq	a0,zero,.L56
	.loc 1 350 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s1,4(sp)
	.cfi_offset 9, -12
	.loc 1 364 30
	lui	s1,%hi(.LANCHOR2)
	.loc 1 350 1
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 364 30
	addi	s1,s1,%lo(.LANCHOR2)
	lw	a4,-4(a0)
	lw	a5,0(s1)
	mv	s0,a0
	.loc 1 358 3 is_stmt 1
.LVL38:
	.loc 1 361 3
	.loc 1 364 3
	.loc 1 364 30 is_stmt 0
	and	a3,a4,a5
	.loc 1 364 5
	beq	a3,zero,.L59
	.loc 1 365 3 is_stmt 1
	.loc 1 365 5 is_stmt 0
	lw	a3,-8(a0)
	beq	a3,zero,.L48
.LVL39:
.L49:
	.loc 1 365 11 is_stmt 1 discriminator 1
	li	a0,2
	call	vEnvironmentCall
.LVL40:
	.loc 1 367 3 discriminator 1
	.loc 1 367 15 is_stmt 0 discriminator 1
	lw	a4,-4(s0)
	.loc 1 367 28 discriminator 1
	lw	a5,0(s1)
	and	a3,a4,a5
	.loc 1 367 5 discriminator 1
	beq	a3,zero,.L42
	.loc 1 369 4 is_stmt 1
	.loc 1 369 6 is_stmt 0
	lw	a3,-8(s0)
	beq	a3,zero,.L48
.L42:
	.loc 1 394 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL41:
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL42:
.L59:
	.cfi_restore_state
	.loc 1 364 67 is_stmt 1 discriminator 1
	li	a0,2
	call	vEnvironmentCall
.LVL43:
	.loc 1 365 3 discriminator 1
	.loc 1 365 5 is_stmt 0 discriminator 1
	lw	a5,-8(s0)
	bne	a5,zero,.L49
	.loc 1 367 3 is_stmt 1
	.loc 1 367 15 is_stmt 0
	lw	a4,-4(s0)
	.loc 1 367 28
	lw	a5,0(s1)
	and	a3,a4,a5
	.loc 1 367 5
	beq	a3,zero,.L42
.L48:
	.loc 1 373 5 is_stmt 1
	.loc 1 373 27 is_stmt 0
	not	a5,a5
	.loc 1 373 24
	and	a5,a5,a4
	sw	a5,-4(s0)
	.loc 1 375 5 is_stmt 1
	call	vTaskSuspendAll
.LVL44:
	.loc 1 378 6
	.loc 1 378 26 is_stmt 0
	lui	a5,%hi(.LANCHOR3)
	addi	a5,a5,%lo(.LANCHOR3)
	lw	a3,0(a5)
	lw	a4,-4(s0)
	.loc 1 380 6
	addi	a0,s0,-8
	.loc 1 378 26
	add	a4,a4,a3
	sw	a4,0(a5)
	.loc 1 379 6 is_stmt 1
	.loc 1 380 6
	call	prvInsertBlockIntoFreeList
.LVL45:
	.loc 1 382 5
	.loc 1 394 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
.LVL46:
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 382 14
	tail	xTaskResumeAll
.LVL47:
.L56:
	ret
	.cfi_endproc
.LFE4:
	.size	vPortFree, .-vPortFree
	.section	.text.pvPortRealloc,"ax",@progbits
	.align	1
	.globl	pvPortRealloc
	.type	pvPortRealloc, @function
pvPortRealloc:
.LFB3:
	.loc 1 285 1 is_stmt 1
	.cfi_startproc
.LVL48:
	.loc 1 286 5
	.loc 1 287 5
	.loc 1 288 5
	.loc 1 289 5
	.loc 1 285 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s1,20(sp)
	.cfi_offset 9, -12
	mv	s1,a1
	sw	s0,24(sp)
	sw	ra,28(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	sw	s5,4(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.loc 1 285 1
	mv	s0,a0
.LVL49:
	.loc 1 291 5 is_stmt 1
	call	vTaskSuspendAll
.LVL50:
	.loc 1 293 9
	.loc 1 293 12 is_stmt 0
	beq	s1,zero,.L61
	.loc 1 295 13 is_stmt 1
	.loc 1 295 16 is_stmt 0
	beq	s0,zero,.L62
	.loc 1 297 17 is_stmt 1
.LVL51:
	.loc 1 298 17
	.loc 1 300 17
	.loc 1 300 41 is_stmt 0
	lui	s3,%hi(.LANCHOR2)
	addi	s3,s3,%lo(.LANCHOR2)
	.loc 1 300 28
	lw	s5,-4(s0)
	.loc 1 300 41
	lw	s4,0(s3)
	and	a5,s5,s4
	.loc 1 300 20
	beq	a5,zero,.L62
	.loc 1 302 21 is_stmt 1
	.loc 1 302 24 is_stmt 0
	lw	a5,-8(s0)
	beq	a5,zero,.L76
.LVL52:
.L62:
	.loc 1 326 7 is_stmt 1
	.loc 1 326 18 is_stmt 0
	mv	a0,s1
	call	pvPortMalloc
.LVL53:
	mv	s2,a0
.LVL54:
.L63:
	.loc 1 345 2 is_stmt 1
	.loc 1 345 11 is_stmt 0
	call	xTaskResumeAll
.LVL55:
	.loc 1 346 5 is_stmt 1
	.loc 1 347 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL56:
	lw	s1,20(sp)
	.cfi_restore 9
.LVL57:
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
	lw	s5,4(sp)
	.cfi_restore 21
	mv	a0,s2
	lw	s2,16(sp)
	.cfi_restore 18
.LVL58:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL59:
.L76:
	.cfi_restore_state
	.loc 1 305 25 is_stmt 1
	.loc 1 306 7
.LBB5:
.LBB6:
	.loc 1 275 5
	.loc 1 277 5
	.loc 1 277 8 is_stmt 0
	mv	a0,s1
	call	pvPortMalloc
.LVL60:
	mv	s2,a0
.LVL61:
	.loc 1 278 5 is_stmt 1
	.loc 1 278 7 is_stmt 0
	beq	a0,zero,.L63
.LBE6:
.LBE5:
	.loc 1 305 60
	not	s4,s4
.LVL62:
	.loc 1 305 58
	and	s4,s4,s5
.LVL63:
	.loc 1 305 36
	addi	s4,s4,-8
.LBB8:
.LBB7:
	.loc 1 279 9 is_stmt 1
	mv	a2,s1
	li	a1,0
	call	memset
.LVL64:
	.loc 1 281 5
.LBE7:
.LBE8:
	.loc 1 308 7
	.loc 1 310 29
	.loc 1 310 32 is_stmt 0
	bgtu	s1,s4,.L77
	.loc 1 316 33 is_stmt 1
.LVL65:
	.loc 1 317 33
	.loc 1 318 9
	.loc 1 319 33
	.loc 1 318 44 is_stmt 0
	lw	a2,0(s3)
	.loc 1 318 42
	lw	a5,-4(s2)
	.loc 1 319 33
	mv	a1,s0
	.loc 1 318 44
	not	a2,a2
	.loc 1 318 42
	and	a2,a2,a5
	.loc 1 319 33
	addi	a2,a2,-8
.LVL66:
	mv	a0,s2
	call	memcpy
.LVL67:
.L65:
	.loc 1 321 29 is_stmt 1
	mv	a0,s0
	call	vPortFree
.LVL68:
	j	.L63
.LVL69:
.L61:
	.loc 1 341 13
	mv	a0,s0
	call	vPortFree
.LVL70:
	.loc 1 342 13
	.loc 1 342 22 is_stmt 0
	li	s2,0
	j	.L63
.LVL71:
.L77:
	.loc 1 312 33 is_stmt 1
	mv	a2,s4
	mv	a1,s0
	mv	a0,s2
	call	memcpy
.LVL72:
	j	.L65
	.cfi_endproc
.LFE3:
	.size	pvPortRealloc, .-pvPortRealloc
	.section	.text.xPortGetFreeHeapSize,"ax",@progbits
	.align	1
	.globl	xPortGetFreeHeapSize
	.type	xPortGetFreeHeapSize, @function
xPortGetFreeHeapSize:
.LFB5:
	.loc 1 398 1
	.cfi_startproc
	.loc 1 399 2
	.loc 1 399 9 is_stmt 0
	lui	a5,%hi(.LANCHOR3)
	.loc 1 400 1
	lw	a0,%lo(.LANCHOR3)(a5)
	ret
	.cfi_endproc
.LFE5:
	.size	xPortGetFreeHeapSize, .-xPortGetFreeHeapSize
	.section	.text.xPortGetMinimumEverFreeHeapSize,"ax",@progbits
	.align	1
	.globl	xPortGetMinimumEverFreeHeapSize
	.type	xPortGetMinimumEverFreeHeapSize, @function
xPortGetMinimumEverFreeHeapSize:
.LFB6:
	.loc 1 404 1 is_stmt 1
	.cfi_startproc
	.loc 1 405 2
	.loc 1 405 9 is_stmt 0
	lui	a5,%hi(.LANCHOR4)
	.loc 1 406 1
	lw	a0,%lo(.LANCHOR4)(a5)
	ret
	.cfi_endproc
.LFE6:
	.size	xPortGetMinimumEverFreeHeapSize, .-xPortGetMinimumEverFreeHeapSize
	.section	.text.vPortDefineHeapRegions,"ax",@progbits
	.align	1
	.globl	vPortDefineHeapRegions
	.type	vPortDefineHeapRegions, @function
vPortDefineHeapRegions:
.LFB8:
	.loc 1 471 1 is_stmt 1
	.cfi_startproc
.LVL73:
	.loc 1 472 1
	.loc 1 473 1
	.loc 1 474 1
	.loc 1 475 1
	.loc 1 476 1
	.loc 1 477 1
	.loc 1 480 2
	.loc 1 471 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s6,16(sp)
	.cfi_offset 22, -32
	.loc 1 480 3
	lui	s6,%hi(.LANCHOR1)
	addi	s6,s6,%lo(.LANCHOR1)
	lw	a5,0(s6)
	.loc 1 471 1
	sw	s3,28(sp)
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	sw	s7,12(sp)
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 23, -36
	.loc 1 471 1
	mv	s3,a0
	.loc 1 480 4
	beq	a5,zero,.L81
	.loc 1 480 10 is_stmt 1 discriminator 1
	li	a0,2
.LVL74:
	call	vEnvironmentCall
.LVL75:
	.loc 1 484 7 discriminator 1
	.loc 1 484 21 is_stmt 0 discriminator 1
	lw	s0,4(s3)
	.loc 1 484 7 discriminator 1
	beq	s0,zero,.L85
	.loc 1 513 5
	lw	a5,0(s6)
.L84:
	.loc 1 506 27
	lui	s7,%hi(.LANCHOR0)
	.loc 1 471 1
	li	s4,0
	li	s5,0
	.loc 1 506 27
	addi	s7,s7,%lo(.LANCHOR0)
.LVL76:
.L91:
	.loc 1 486 3 is_stmt 1
	.loc 1 489 3
	.loc 1 489 37 is_stmt 0
	lw	s1,0(s3)
	.loc 1 490 18
	andi	a4,s1,7
	.loc 1 489 12
	mv	s2,s1
.LVL77:
	.loc 1 490 3 is_stmt 1
	.loc 1 490 5 is_stmt 0
	beq	a4,zero,.L86
	.loc 1 492 4 is_stmt 1
	.loc 1 492 13 is_stmt 0
	addi	a4,s1,7
.LVL78:
	.loc 1 493 4 is_stmt 1
	.loc 1 493 13 is_stmt 0
	andi	a4,a4,-8
.LVL79:
	.loc 1 496 4 is_stmt 1
	.loc 1 496 21 is_stmt 0
	add	s0,s1,s0
.LVL80:
	sub	s0,s0,a4
.LVL81:
	.loc 1 506 29
	mv	s1,a4
	.loc 1 493 13
	mv	s2,a4
.LVL82:
.L86:
	.loc 1 499 3 is_stmt 1
	.loc 1 502 3
	.loc 1 502 5 is_stmt 0
	bne	s4,zero,.L87
	.loc 1 506 4 is_stmt 1
	.loc 1 506 27 is_stmt 0
	sw	s1,0(s7)
	.loc 1 507 4 is_stmt 1
	.loc 1 507 22 is_stmt 0
	sw	zero,4(s7)
	mv	a4,a5
.L88:
	.loc 1 521 3 is_stmt 1
.LVL83:
	.loc 1 525 3
	.loc 1 525 12 is_stmt 0
	add	s0,s0,s2
.LVL84:
	.loc 1 526 3 is_stmt 1
	.loc 1 526 12 is_stmt 0
	addi	s0,s0,-8
.LVL85:
	.loc 1 527 3 is_stmt 1
	.loc 1 527 12 is_stmt 0
	andi	a5,s0,-8
.LVL86:
	.loc 1 528 3 is_stmt 1
	.loc 1 529 21 is_stmt 0
	sw	zero,4(a5)
	.loc 1 530 26
	sw	zero,0(a5)
	.loc 1 536 51
	sub	s2,a5,s2
	.loc 1 528 9
	sw	a5,0(s6)
.LVL87:
	.loc 1 529 3 is_stmt 1
	.loc 1 530 3
	.loc 1 535 3
	.loc 1 536 3
	.loc 1 536 40 is_stmt 0
	sw	s2,4(s1)
	.loc 1 537 3 is_stmt 1
	.loc 1 537 45 is_stmt 0
	sw	a5,0(s1)
	.loc 1 541 3 is_stmt 1
	.loc 1 541 5 is_stmt 0
	beq	a4,zero,.L90
	.loc 1 543 4 is_stmt 1
	.loc 1 543 41 is_stmt 0
	sw	s1,0(a4)
.L90:
	.loc 1 546 3 is_stmt 1
	.loc 1 546 18 is_stmt 0
	lw	a4,4(s1)
	.loc 1 484 21
	lw	s0,12(s3)
	.loc 1 549 18
	addi	s4,s4,1
.LVL88:
	addi	s3,s3,8
.LVL89:
	.loc 1 546 18
	add	s5,s5,a4
.LVL90:
	.loc 1 549 3 is_stmt 1
	.loc 1 550 3
	.loc 1 484 7
	bne	s0,zero,.L91
	.loc 1 553 2
	.loc 1 553 33 is_stmt 0
	lui	a5,%hi(.LANCHOR4)
	sw	s5,%lo(.LANCHOR4)(a5)
	.loc 1 554 2 is_stmt 1
	.loc 1 554 22 is_stmt 0
	lui	a5,%hi(.LANCHOR3)
	sw	s5,%lo(.LANCHOR3)(a5)
	.loc 1 556 2 is_stmt 1
	.loc 1 556 4 is_stmt 0
	beq	s5,zero,.L83
.LVL91:
.L92:
	.loc 1 559 2 is_stmt 1
	.loc 1 560 1 is_stmt 0
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.loc 1 559 21
	lui	a5,%hi(.LANCHOR2)
	li	a4,-2147483648
	sw	a4,%lo(.LANCHOR2)(a5)
	.loc 1 560 1
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
	lw	s3,28(sp)
	.cfi_restore 19
.LVL92:
	lw	s4,24(sp)
	.cfi_restore 20
	lw	s5,20(sp)
	.cfi_restore 21
	lw	s6,16(sp)
	.cfi_restore 22
	lw	s7,12(sp)
	.cfi_restore 23
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL93:
.L87:
	.cfi_restore_state
	.loc 1 513 4 is_stmt 1
	.loc 1 513 6 is_stmt 0
	beq	a5,zero,.L102
.L89:
	.loc 1 516 4 is_stmt 1
	mv	a4,a5
	.loc 1 516 6 is_stmt 0
	bltu	a5,s2,.L88
	.loc 1 516 47 is_stmt 1 discriminator 1
	li	a0,2
	call	vEnvironmentCall
.LVL94:
	.loc 1 521 23 is_stmt 0 discriminator 1
	lw	a4,0(s6)
	j	.L88
.L102:
	.loc 1 513 12 is_stmt 1 discriminator 1
	li	a0,2
	call	vEnvironmentCall
.LVL95:
	.loc 1 516 21 is_stmt 0 discriminator 1
	lw	a5,0(s6)
	j	.L89
.LVL96:
.L81:
	.loc 1 484 7 is_stmt 1
	.loc 1 484 21 is_stmt 0
	lw	s0,4(a0)
	.loc 1 484 7
	bne	s0,zero,.L84
.LVL97:
.L85:
	.loc 1 553 2 is_stmt 1
	.loc 1 553 33 is_stmt 0
	lui	a5,%hi(.LANCHOR4)
	sw	zero,%lo(.LANCHOR4)(a5)
	.loc 1 554 2 is_stmt 1
	.loc 1 554 22 is_stmt 0
	lui	a5,%hi(.LANCHOR3)
	sw	zero,%lo(.LANCHOR3)(a5)
	.loc 1 556 2 is_stmt 1
.LVL98:
.L83:
	.loc 1 556 32 discriminator 1
	li	a0,2
	call	vEnvironmentCall
.LVL99:
	j	.L92
	.cfi_endproc
.LFE8:
	.size	vPortDefineHeapRegions, .-vPortDefineHeapRegions
	.section	.sbss.pxEnd,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	pxEnd, @object
	.size	pxEnd, 4
pxEnd:
	.zero	4
	.section	.sbss.xBlockAllocatedBit,"aw",@nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	xBlockAllocatedBit, @object
	.size	xBlockAllocatedBit, 4
xBlockAllocatedBit:
	.zero	4
	.section	.sbss.xFreeBytesRemaining,"aw",@nobits
	.align	2
	.set	.LANCHOR3,. + 0
	.type	xFreeBytesRemaining, @object
	.size	xFreeBytesRemaining, 4
xFreeBytesRemaining:
	.zero	4
	.section	.sbss.xMinimumEverFreeBytesRemaining,"aw",@nobits
	.align	2
	.set	.LANCHOR4,. + 0
	.type	xMinimumEverFreeBytesRemaining, @object
	.size	xMinimumEverFreeBytesRemaining, 4
xMinimumEverFreeBytesRemaining:
	.zero	4
	.section	.sbss.xStart,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	xStart, @object
	.size	xStart, 8
xStart:
	.zero	8
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x6aa
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF60
	.byte	0xc
	.4byte	.LASF61
	.4byte	.LASF62
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.4byte	.LASF10
	.byte	0x2
	.byte	0xd1
	.byte	0x16
	.4byte	0x36
	.byte	0x3
	.4byte	0x25
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.byte	0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.byte	0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.byte	0x6
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x2
	.4byte	.LASF11
	.byte	0x3
	.byte	0x28
	.byte	0x12
	.4byte	0x60
	.byte	0x2
	.4byte	.LASF12
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x4b
	.byte	0x2
	.4byte	.LASF13
	.byte	0x4
	.byte	0x3f
	.byte	0x11
	.4byte	0x85
	.byte	0x7
	.4byte	.LASF17
	.byte	0x8
	.byte	0x5
	.byte	0x7a
	.byte	0x10
	.4byte	0xd1
	.byte	0x8
	.4byte	.LASF14
	.byte	0x5
	.byte	0x7c
	.byte	0xb
	.4byte	0xd1
	.byte	0
	.byte	0x8
	.4byte	.LASF15
	.byte	0x5
	.byte	0x7d
	.byte	0x9
	.4byte	0x25
	.byte	0x4
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0x91
	.byte	0x2
	.4byte	.LASF16
	.byte	0x5
	.byte	0x7e
	.byte	0x3
	.4byte	0xa9
	.byte	0x3
	.4byte	0xd7
	.byte	0x7
	.4byte	.LASF18
	.byte	0x8
	.byte	0x1
	.byte	0x5f
	.byte	0x10
	.4byte	0x110
	.byte	0x8
	.4byte	.LASF19
	.byte	0x1
	.byte	0x61
	.byte	0x17
	.4byte	0x110
	.byte	0
	.byte	0x8
	.4byte	.LASF20
	.byte	0x1
	.byte	0x62
	.byte	0x9
	.4byte	0x25
	.byte	0x4
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0xe8
	.byte	0x2
	.4byte	.LASF21
	.byte	0x1
	.byte	0x63
	.byte	0x3
	.4byte	0xe8
	.byte	0xa
	.4byte	.LASF22
	.byte	0x1
	.byte	0x73
	.byte	0x15
	.4byte	0x31
	.byte	0x8
	.byte	0xb
	.4byte	.LASF23
	.byte	0x1
	.byte	0x76
	.byte	0x14
	.4byte	0x116
	.byte	0x5
	.byte	0x3
	.4byte	xStart
	.byte	0xb
	.4byte	.LASF24
	.byte	0x1
	.byte	0x76
	.byte	0x1d
	.4byte	0x153
	.byte	0x5
	.byte	0x3
	.4byte	pxEnd
	.byte	0x9
	.byte	0x4
	.4byte	0x116
	.byte	0xb
	.4byte	.LASF25
	.byte	0x1
	.byte	0x7a
	.byte	0xf
	.4byte	0x25
	.byte	0x5
	.byte	0x3
	.4byte	xFreeBytesRemaining
	.byte	0xb
	.4byte	.LASF26
	.byte	0x1
	.byte	0x7b
	.byte	0xf
	.4byte	0x25
	.byte	0x5
	.byte	0x3
	.4byte	xMinimumEverFreeBytesRemaining
	.byte	0xb
	.4byte	.LASF27
	.byte	0x1
	.byte	0x81
	.byte	0xf
	.4byte	0x25
	.byte	0x5
	.byte	0x3
	.4byte	xBlockAllocatedBit
	.byte	0xc
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x1d6
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x288
	.byte	0xd
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x1d6
	.byte	0x39
	.4byte	0x28e
	.4byte	.LLST23
	.byte	0xe
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x1d8
	.byte	0xe
	.4byte	0x153
	.4byte	.LLST24
	.byte	0xe
	.4byte	.LASF29
	.byte	0x1
	.2byte	0x1d8
	.byte	0x2f
	.4byte	0x153
	.4byte	.LLST25
	.byte	0xe
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1d9
	.byte	0x8
	.4byte	0x25
	.4byte	.LLST26
	.byte	0xe
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1da
	.byte	0x8
	.4byte	0x25
	.4byte	.LLST27
	.byte	0xe
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x1da
	.byte	0x1a
	.4byte	0x25
	.4byte	.LLST28
	.byte	0xe
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x1db
	.byte	0xc
	.4byte	0x9d
	.4byte	.LLST29
	.byte	0xe
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x1dc
	.byte	0x8
	.4byte	0x25
	.4byte	.LLST30
	.byte	0xe
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x1dd
	.byte	0x15
	.4byte	0x288
	.4byte	.LLST31
	.byte	0xf
	.4byte	.LVL75
	.4byte	0x662
	.4byte	0x252
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0xf
	.4byte	.LVL94
	.4byte	0x662
	.4byte	0x265
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0xf
	.4byte	.LVL95
	.4byte	0x662
	.4byte	0x278
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x11
	.4byte	.LVL99
	.4byte	0x662
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0xe3
	.byte	0x3
	.4byte	0x288
	.byte	0x12
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x199
	.byte	0xd
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x2de
	.byte	0xd
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x199
	.byte	0x36
	.4byte	0x153
	.4byte	.LLST0
	.byte	0xe
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x19b
	.byte	0xe
	.4byte	0x153
	.4byte	.LLST1
	.byte	0x13
	.string	"puc"
	.byte	0x1
	.2byte	0x19c
	.byte	0xa
	.4byte	0xd1
	.4byte	.LLST2
	.byte	0
	.byte	0x14
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x193
	.byte	0x8
	.4byte	0x25
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.byte	0x14
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x18d
	.byte	0x8
	.4byte	0x25
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.byte	0xc
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x15d
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x3a2
	.byte	0x15
	.string	"pv"
	.byte	0x1
	.2byte	0x15d
	.byte	0x17
	.4byte	0x7c
	.4byte	.LLST11
	.byte	0x13
	.string	"puc"
	.byte	0x1
	.2byte	0x15f
	.byte	0xa
	.4byte	0xd1
	.4byte	.LLST12
	.byte	0xe
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x160
	.byte	0xe
	.4byte	0x153
	.4byte	.LLST13
	.byte	0xf
	.4byte	.LVL40
	.4byte	0x662
	.4byte	0x368
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0xf
	.4byte	.LVL43
	.4byte	0x662
	.4byte	0x37b
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x16
	.4byte	.LVL44
	.4byte	0x66e
	.byte	0xf
	.4byte	.LVL45
	.4byte	0x293
	.4byte	0x398
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x78
	.byte	0
	.byte	0x17
	.4byte	.LVL47
	.4byte	0x67b
	.byte	0
	.byte	0x18
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x11c
	.byte	0x7
	.4byte	0x7c
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x50d
	.byte	0x15
	.string	"pv"
	.byte	0x1
	.2byte	0x11c
	.byte	0x1b
	.4byte	0x7c
	.4byte	.LLST14
	.byte	0xd
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x11c
	.byte	0x26
	.4byte	0x25
	.4byte	.LLST15
	.byte	0xe
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x11e
	.byte	0xc
	.4byte	0x25
	.4byte	.LLST16
	.byte	0xe
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x11f
	.byte	0x12
	.4byte	0x153
	.4byte	.LLST17
	.byte	0xe
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x120
	.byte	0xb
	.4byte	0x7c
	.4byte	.LLST18
	.byte	0x13
	.string	"puc"
	.byte	0x1
	.2byte	0x121
	.byte	0xe
	.4byte	0xd1
	.4byte	.LLST19
	.byte	0x19
	.4byte	0x50d
	.4byte	.LBB5
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x132
	.byte	0x12
	.4byte	0x488
	.byte	0x1a
	.4byte	0x52c
	.4byte	.LLST20
	.byte	0x1a
	.4byte	0x51f
	.4byte	.LLST21
	.byte	0x1b
	.4byte	.Ldebug_ranges0+0
	.byte	0x1c
	.4byte	0x539
	.4byte	.LLST22
	.byte	0xf
	.4byte	.LVL60
	.4byte	0x546
	.4byte	0x46b
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LVL64
	.4byte	0x688
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LVL50
	.4byte	0x66e
	.byte	0xf
	.4byte	.LVL53
	.4byte	0x546
	.4byte	0x4a5
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LVL55
	.4byte	0x67b
	.byte	0xf
	.4byte	.LVL67
	.4byte	0x694
	.4byte	0x4c8
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LVL68
	.4byte	0x30c
	.4byte	0x4dc
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LVL70
	.4byte	0x30c
	.4byte	0x4f0
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LVL72
	.4byte	0x694
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x111
	.byte	0x7
	.4byte	0x7c
	.byte	0x1
	.4byte	0x546
	.byte	0x1e
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x111
	.byte	0x1b
	.4byte	0x25
	.byte	0x1e
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x111
	.byte	0x2f
	.4byte	0x25
	.byte	0x1f
	.string	"pv"
	.byte	0x1
	.2byte	0x113
	.byte	0xb
	.4byte	0x7c
	.byte	0
	.byte	0x20
	.4byte	.LASF50
	.byte	0x1
	.byte	0x85
	.byte	0x7
	.4byte	0x7c
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.4byte	0x604
	.byte	0x21
	.4byte	.LASF44
	.byte	0x1
	.byte	0x85
	.byte	0x1c
	.4byte	0x25
	.4byte	.LLST3
	.byte	0x22
	.4byte	.LASF51
	.byte	0x1
	.byte	0x87
	.byte	0xe
	.4byte	0x153
	.4byte	.LLST4
	.byte	0x22
	.4byte	.LASF52
	.byte	0x1
	.byte	0x87
	.byte	0x18
	.4byte	0x153
	.4byte	.LLST5
	.byte	0x22
	.4byte	.LASF53
	.byte	0x1
	.byte	0x87
	.byte	0x2a
	.4byte	0x153
	.4byte	.LLST6
	.byte	0x22
	.4byte	.LASF46
	.byte	0x1
	.byte	0x88
	.byte	0x7
	.4byte	0x7c
	.4byte	.LLST7
	.byte	0x23
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x5d0
	.byte	0x24
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x103
	.byte	0x10
	.byte	0x16
	.4byte	.LVL24
	.4byte	0x6a0
	.byte	0
	.byte	0x16
	.4byte	.LVL9
	.4byte	0x66e
	.byte	0x16
	.4byte	.LVL21
	.4byte	0x67b
	.byte	0x16
	.4byte	.LVL23
	.4byte	0x67b
	.byte	0x16
	.4byte	.LVL28
	.4byte	0x293
	.byte	0x11
	.4byte	.LVL30
	.4byte	0x662
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0x25
	.4byte	0x50d
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0x662
	.byte	0x1a
	.4byte	0x51f
	.4byte	.LLST8
	.byte	0x1a
	.4byte	0x52c
	.4byte	.LLST9
	.byte	0x1c
	.4byte	0x539
	.4byte	.LLST10
	.byte	0xf
	.4byte	.LVL33
	.4byte	0x546
	.4byte	0x646
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LVL35
	.4byte	0x688
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0x4
	.byte	0x55
	.byte	0xd
	.byte	0x27
	.4byte	.LASF55
	.4byte	.LASF55
	.byte	0x6
	.2byte	0x502
	.byte	0x6
	.byte	0x27
	.4byte	.LASF56
	.4byte	.LASF56
	.byte	0x6
	.2byte	0x538
	.byte	0xc
	.byte	0x26
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0x7
	.byte	0x21
	.byte	0x8
	.byte	0x26
	.4byte	.LASF58
	.4byte	.LASF58
	.byte	0x7
	.byte	0x1f
	.byte	0x8
	.byte	0x27
	.4byte	.LASF59
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x103
	.byte	0x10
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
	.byte	0x3
	.byte	0x26
	.byte	0
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
	.byte	0xe
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
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
	.byte	0xb
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
	.byte	0xc
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
	.byte	0xd
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
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
	.byte	0x13
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
	.byte	0x14
	.byte	0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x5
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1d
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
	.byte	0x1e
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
	.byte	0x1f
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
	.byte	0x20
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
	.byte	0x21
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
	.byte	0x24
	.byte	0x2e
	.byte	0
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
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x25
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
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x27
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
.LLST23:
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL74
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL76
	.4byte	.LVL96
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL98
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL73
	.4byte	.LVL76
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL96
	.4byte	.LVL98
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL83
	.4byte	.LVL87
	.2byte	0x5
	.byte	0x3
	.4byte	pxEnd
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL82
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL93
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL76
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL81
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL93
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL73
	.4byte	.LVL76
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL93
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL96
	.4byte	.LVL98
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL73
	.4byte	.LVL76
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL88
	.4byte	.LVL90
	.2byte	0x3
	.byte	0x84
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL93
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL96
	.4byte	.LVL98
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL78
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL82
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL84
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL93
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL75
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x3
	.byte	0x83
	.byte	0x78
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL93
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL97
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x6
	.byte	0x3
	.4byte	xStart
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL2
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x3
	.byte	0x7a
	.byte	0x78
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x3
	.byte	0x78
	.byte	0x78
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x6
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL46
	.2byte	0x3
	.byte	0x78
	.byte	0x78
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x6
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x3
	.byte	0x7a
	.byte	0x78
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x3
	.byte	0x78
	.byte	0x78
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x6
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL46
	.2byte	0x3
	.byte	0x78
	.byte	0x78
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x6
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL48
	.4byte	.LVL50-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL50-1
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL56
	.4byte	.LVL59
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL48
	.4byte	.LVL50-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL50-1
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL57
	.4byte	.LVL59
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL59
	.4byte	.LVL62
	.2byte	0x9
	.byte	0x84
	.byte	0
	.byte	0x20
	.byte	0x85
	.byte	0
	.byte	0x1a
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x8
	.byte	0x85
	.byte	0
	.byte	0x84
	.byte	0
	.byte	0x1a
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0xe
	.byte	0x3
	.4byte	xBlockAllocatedBit
	.byte	0x6
	.byte	0x20
	.byte	0x82
	.byte	0x7c
	.byte	0x6
	.byte	0x1a
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL67-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x3
	.byte	0x78
	.byte	0x78
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL65
	.2byte	0x3
	.byte	0x78
	.byte	0x78
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LVL67
	.2byte	0x3
	.byte	0x82
	.byte	0x78
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LFE3
	.2byte	0x3
	.byte	0x78
	.byte	0x78
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL48
	.4byte	.LVL54
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL59
	.4byte	.LVL64
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL49
	.4byte	.LVL50-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL50-1
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x3
	.byte	0x78
	.byte	0x78
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL65
	.2byte	0x3
	.byte	0x78
	.byte	0x78
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LVL67
	.2byte	0x3
	.byte	0x82
	.byte	0x78
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL71
	.4byte	.LFE3
	.2byte	0x3
	.byte	0x78
	.byte	0x78
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL59
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL59
	.4byte	.LVL64
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL59
	.4byte	.LVL61
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL64-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL64-1
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x3
	.byte	0x78
	.byte	0x8
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL26
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL29
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL14
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL26
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x6
	.byte	0x3
	.4byte	xStart
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL7
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL29
	.4byte	.LFE1
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL32
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL31
	.4byte	.LVL33-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL33-1
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL31
	.4byte	.LVL34
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL36
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	0
	.4byte	0
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF52:
	.string	"pxPreviousBlock"
.LASF59:
	.string	"vApplicationMallocFailedHook"
.LASF45:
	.string	"block_size"
.LASF27:
	.string	"xBlockAllocatedBit"
.LASF26:
	.string	"xMinimumEverFreeBytesRemaining"
.LASF34:
	.string	"xAddress"
.LASF19:
	.string	"pxNextFreeBlock"
.LASF51:
	.string	"pxBlock"
.LASF10:
	.string	"size_t"
.LASF47:
	.string	"numElements"
.LASF58:
	.string	"memcpy"
.LASF29:
	.string	"pxPreviousFreeBlock"
.LASF24:
	.string	"pxEnd"
.LASF33:
	.string	"xDefinedRegions"
.LASF3:
	.string	"short int"
.LASF49:
	.string	"pvPortRealloc"
.LASF63:
	.string	"prvInsertBlockIntoFreeList"
.LASF12:
	.string	"uint8_t"
.LASF18:
	.string	"A_BLOCK_LINK"
.LASF36:
	.string	"pxHeapRegions"
.LASF7:
	.string	"long long int"
.LASF22:
	.string	"xHeapStructSize"
.LASF57:
	.string	"memset"
.LASF5:
	.string	"long int"
.LASF53:
	.string	"pxNewBlockLink"
.LASF62:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/freertos_riscv_ram"
.LASF46:
	.string	"pvReturn"
.LASF14:
	.string	"pucStartAddress"
.LASF39:
	.string	"xPortGetMinimumEverFreeHeapSize"
.LASF21:
	.string	"BlockLink_t"
.LASF61:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/portable/MemMang/heap_5.c"
.LASF16:
	.string	"HeapRegion_t"
.LASF54:
	.string	"vEnvironmentCall"
.LASF2:
	.string	"unsigned char"
.LASF41:
	.string	"vPortDefineHeapRegions"
.LASF30:
	.string	"xAlignedHeap"
.LASF1:
	.string	"signed char"
.LASF64:
	.string	"pvPortCalloc"
.LASF8:
	.string	"long long unsigned int"
.LASF0:
	.string	"unsigned int"
.LASF13:
	.string	"BaseType_t"
.LASF31:
	.string	"xTotalRegionSize"
.LASF25:
	.string	"xFreeBytesRemaining"
.LASF48:
	.string	"sizeOfElement"
.LASF56:
	.string	"xTaskResumeAll"
.LASF4:
	.string	"short unsigned int"
.LASF38:
	.string	"pxIterator"
.LASF9:
	.string	"char"
.LASF35:
	.string	"pxHeapRegion"
.LASF60:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -O2 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF11:
	.string	"int32_t"
.LASF37:
	.string	"pxBlockToInsert"
.LASF6:
	.string	"long unsigned int"
.LASF40:
	.string	"xPortGetFreeHeapSize"
.LASF42:
	.string	"vPortFree"
.LASF28:
	.string	"pxFirstFreeBlockInRegion"
.LASF20:
	.string	"xBlockSize"
.LASF23:
	.string	"xStart"
.LASF17:
	.string	"HeapRegion"
.LASF44:
	.string	"xWantedSize"
.LASF32:
	.string	"xTotalHeapSize"
.LASF50:
	.string	"pvPortMalloc"
.LASF55:
	.string	"vTaskSuspendAll"
.LASF43:
	.string	"pxLink"
.LASF15:
	.string	"xSizeInBytes"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
