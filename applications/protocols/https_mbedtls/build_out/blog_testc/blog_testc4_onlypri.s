	.file	"blog_testc4_onlypri.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.blog_testc4_entry.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"blog_testc4_onlypri.c"
	.align	2
.LC1:
	.string	"DEBUG "
	.align	2
.LC2:
	.string	"[%d][%s: %s:%4d] blog_testc4 debug user\r\n\r\n"
	.align	2
.LC3:
	.string	"\033[32mINFO\033[0m"
	.align	2
.LC4:
	.string	"[%d][%s: %s:%4d] blog_testc4 info user\r\n\r\n"
	.align	2
.LC5:
	.string	"\033[33mWARN\033[0m"
	.align	2
.LC6:
	.string	"[%d][%s: %s:%4d] blog_testc4 warn user\r\n\r\n"
	.align	2
.LC7:
	.string	"\033[31mERROR\033[0m"
	.align	2
.LC8:
	.string	"[%d][%s: %s:%4d] blog_testc4 error user\r\n\r\n"
	.align	2
.LC9:
	.string	"\033[35mASSERT\033[0m"
	.align	2
.LC10:
	.string	"[%d][%s: %s:%4d] blog_testc4 assert user\r\n\r\n"
	.section	.text.blog_testc4_entry,"ax",@progbits
	.align	1
	.globl	blog_testc4_entry
	.type	blog_testc4_entry, @function
blog_testc4_entry:
.LFB4:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog_testc/blog_testc4_onlypri.c"
	.loc 1 10 1
	.cfi_startproc
.LVL0:
	.loc 1 11 5
	li	a0,4096
.LVL1:
	.loc 1 10 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	.loc 1 11 5
	addi	a0,a0,904
	.loc 1 10 1
	sw	s0,40(sp)
	sw	ra,44(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	sw	s6,16(sp)
	sw	s7,12(sp)
	sw	s8,8(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.loc 1 13 70
	lui	s0,%hi(_fsymc_level_blog_testc)
	.loc 1 11 5
	call	aos_msleep
.LVL2:
	.loc 1 13 5 is_stmt 1
	.loc 1 13 43
	.loc 1 13 48
	.loc 1 13 51 is_stmt 0
	lw	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,1
	bgtu	a4,a5,.L2
	.loc 1 13 119 discriminator 3
	lui	a4,%hi(_fsymf_level_blog_testcblog_testc4_onlypri)
	.loc 1 13 98 discriminator 3
	lw	a4,%lo(_fsymf_level_blog_testcblog_testc4_onlypri)(a4)
	bleu	a4,a5,.L3
.L8:
	.loc 1 14 117
	lui	a5,%hi(_fsymf_level_blog_testcblog_testc4_onlypri)
	.loc 1 14 97
	lw	a4,%lo(_fsymf_level_blog_testcblog_testc4_onlypri)(a5)
	li	a5,2
	bgtu	a4,a5,.L5
.L4:
	.loc 1 14 184 discriminator 5
	lui	a5,%hi(_fsymp_level_blog_testc4)
	.loc 1 14 164 discriminator 5
	lw	a4,%lo(_fsymp_level_blog_testc4)(a5)
	li	a5,2
	bgtu	a4,a5,.L10
	.loc 1 14 216 is_stmt 1 discriminator 7
	.loc 1 14 283 is_stmt 0 discriminator 7
	call	xPortIsInsideInterrupt
.LVL3:
	.loc 1 14 216 discriminator 7
	beq	a0,zero,.L12
	.loc 1 14 312 discriminator 9
	call	xTaskGetTickCountFromISR
.LVL4:
.L55:
	.loc 1 14 343 discriminator 10
	mv	a1,a0
	.loc 1 14 216 discriminator 10
	lui	a3,%hi(.LC0)
	lui	a2,%hi(.LC3)
	lui	a0,%hi(.LC4)
	li	a4,14
	addi	a3,a3,%lo(.LC0)
	addi	a2,a2,%lo(.LC3)
	addi	a0,a0,%lo(.LC4)
	call	bl_printk
.LVL5:
	j	.L9
.L3:
	.loc 1 13 187 discriminator 5
	lui	a4,%hi(_fsymp_level_blog_testc4)
	.loc 1 13 166 discriminator 5
	lw	a4,%lo(_fsymp_level_blog_testc4)(a4)
	bgtu	a4,a5,.L4
	.loc 1 13 219 is_stmt 1 discriminator 7
	.loc 1 13 287 is_stmt 0 discriminator 7
	call	xPortIsInsideInterrupt
.LVL6:
	.loc 1 13 219 discriminator 7
	beq	a0,zero,.L6
	.loc 1 13 316 discriminator 9
	call	xTaskGetTickCountFromISR
.LVL7:
.L54:
	.loc 1 13 347 discriminator 10
	mv	a1,a0
	.loc 1 13 219 discriminator 10
	lui	a3,%hi(.LC0)
	lui	a2,%hi(.LC1)
	lui	a0,%hi(.LC2)
	li	a4,13
	addi	a3,a3,%lo(.LC0)
	addi	a2,a2,%lo(.LC1)
	addi	a0,a0,%lo(.LC2)
	call	bl_printk
.LVL8:
.L2:
	.loc 1 13 419 is_stmt 1 discriminator 1
	.loc 1 13 430 discriminator 1
	.loc 1 14 5 discriminator 1
	.loc 1 14 43 discriminator 1
	.loc 1 14 48 discriminator 1
	.loc 1 14 51 is_stmt 0 discriminator 1
	lw	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,2
	bleu	a4,a5,.L8
.L9:
	.loc 1 14 428 is_stmt 1 discriminator 1
	.loc 1 14 439 discriminator 1
	.loc 1 15 5 discriminator 1
	.loc 1 15 43 discriminator 1
	.loc 1 15 48 discriminator 1
	.loc 1 15 51 is_stmt 0 discriminator 1
	lw	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,3
	bgtu	a4,a5,.L14
.L5:
	.loc 1 15 117
	lui	a5,%hi(_fsymf_level_blog_testcblog_testc4_onlypri)
	.loc 1 15 97
	lw	a4,%lo(_fsymf_level_blog_testcblog_testc4_onlypri)(a5)
	li	a5,3
	bgtu	a4,a5,.L11
.L10:
	.loc 1 15 184 discriminator 5
	lui	a5,%hi(_fsymp_level_blog_testc4)
	.loc 1 15 164 discriminator 5
	lw	a4,%lo(_fsymp_level_blog_testc4)(a5)
	li	a5,3
	bgtu	a4,a5,.L15
	.loc 1 15 216 is_stmt 1 discriminator 7
	.loc 1 15 283 is_stmt 0 discriminator 7
	call	xPortIsInsideInterrupt
.LVL9:
	.loc 1 15 216 discriminator 7
	beq	a0,zero,.L17
	.loc 1 15 312 discriminator 9
	call	xTaskGetTickCountFromISR
.LVL10:
.L56:
	.loc 1 15 343 discriminator 10
	mv	a1,a0
	.loc 1 15 216 discriminator 10
	lui	a3,%hi(.LC0)
	lui	a2,%hi(.LC5)
	lui	a0,%hi(.LC6)
	li	a4,15
	addi	a3,a3,%lo(.LC0)
	addi	a2,a2,%lo(.LC5)
	addi	a0,a0,%lo(.LC6)
	call	bl_printk
.LVL11:
.L14:
	.loc 1 15 428 is_stmt 1 discriminator 1
	.loc 1 15 439 discriminator 1
	.loc 1 16 5 discriminator 1
	.loc 1 16 43 discriminator 1
	.loc 1 16 48 discriminator 1
	.loc 1 16 51 is_stmt 0 discriminator 1
	lw	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,4
	bgtu	a4,a5,.L19
.L11:
	.loc 1 16 119
	lui	a5,%hi(_fsymf_level_blog_testcblog_testc4_onlypri)
	.loc 1 16 98
	lw	a4,%lo(_fsymf_level_blog_testcblog_testc4_onlypri)(a5)
	li	a5,4
	bgtu	a4,a5,.L16
.L15:
	.loc 1 16 187 discriminator 5
	lui	a5,%hi(_fsymp_level_blog_testc4)
	.loc 1 16 166 discriminator 5
	lw	a4,%lo(_fsymp_level_blog_testc4)(a5)
	li	a5,4
	bgtu	a4,a5,.L20
	.loc 1 16 219 is_stmt 1 discriminator 7
	.loc 1 16 287 is_stmt 0 discriminator 7
	call	xPortIsInsideInterrupt
.LVL12:
	.loc 1 16 219 discriminator 7
	beq	a0,zero,.L22
	.loc 1 16 316 discriminator 9
	call	xTaskGetTickCountFromISR
.LVL13:
.L57:
	.loc 1 16 347 discriminator 10
	mv	a1,a0
	.loc 1 16 219 discriminator 10
	lui	a3,%hi(.LC0)
	lui	a2,%hi(.LC7)
	lui	a0,%hi(.LC8)
	li	a4,16
	addi	a3,a3,%lo(.LC0)
	addi	a2,a2,%lo(.LC7)
	addi	a0,a0,%lo(.LC8)
	call	bl_printk
.LVL14:
.L19:
	.loc 1 16 433 is_stmt 1 discriminator 1
	.loc 1 16 444 discriminator 1
	.loc 1 17 5 discriminator 1
	.loc 1 17 43 discriminator 1
	.loc 1 17 48 discriminator 1
	.loc 1 17 51 is_stmt 0 discriminator 1
	lw	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,5
	bgtu	a4,a5,.L24
.L16:
	.loc 1 17 121
	lui	a5,%hi(_fsymf_level_blog_testcblog_testc4_onlypri)
	.loc 1 17 99
	lw	a4,%lo(_fsymf_level_blog_testcblog_testc4_onlypri)(a5)
	li	a5,5
	bgtu	a4,a5,.L24
.L20:
	.loc 1 17 190 discriminator 5
	lui	a5,%hi(_fsymp_level_blog_testc4)
	.loc 1 17 168 discriminator 5
	lw	a4,%lo(_fsymp_level_blog_testc4)(a5)
	li	a5,5
	bgtu	a4,a5,.L24
	.loc 1 17 222 is_stmt 1 discriminator 7
	.loc 1 17 291 is_stmt 0 discriminator 7
	call	xPortIsInsideInterrupt
.LVL15:
	.loc 1 17 222 discriminator 7
	beq	a0,zero,.L25
	.loc 1 17 320 discriminator 9
	call	xTaskGetTickCountFromISR
.LVL16:
.L58:
	.loc 1 17 351 discriminator 10
	mv	a1,a0
	.loc 1 17 222 discriminator 10
	lui	a3,%hi(.LC0)
	lui	a2,%hi(.LC9)
	lui	a0,%hi(.LC10)
	li	a4,17
	addi	a3,a3,%lo(.LC0)
	addi	a2,a2,%lo(.LC9)
	addi	a0,a0,%lo(.LC10)
	call	bl_printk
.LVL17:
.L24:
	.loc 1 25 194 discriminator 13
	lui	s2,%hi(_fsymp_level_blog_testc4)
	.loc 1 25 226 discriminator 13
	lui	s1,%hi(.LC0)
	lui	s5,%hi(.LC9)
	lui	s4,%hi(.LC10)
	.loc 1 24 223 discriminator 13
	lui	s6,%hi(.LC7)
	lui	s7,%hi(.LC8)
	.loc 1 25 125 discriminator 13
	lui	s3,%hi(_fsymf_level_blog_testcblog_testc4_onlypri)
	.loc 1 23 220 discriminator 13
	lui	s8,%hi(.LC5)
.L27:
	.loc 1 17 438 is_stmt 1 discriminator 13
	.loc 1 17 449 discriminator 13
	.loc 1 19 5 discriminator 13
	.loc 1 20 9 discriminator 13
	li	a0,4096
	addi	a0,a0,904
	call	aos_msleep
.LVL18:
	.loc 1 21 9 discriminator 13
	.loc 1 21 47 discriminator 13
	.loc 1 21 52 discriminator 13
	.loc 1 21 55 is_stmt 0 discriminator 13
	lw	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,1
	bgtu	a4,a5,.L28
	.loc 1 21 102 discriminator 3
	lw	a4,%lo(_fsymf_level_blog_testcblog_testc4_onlypri)(s3)
	bleu	a4,a5,.L29
.L34:
	.loc 1 22 101
	lw	a4,%lo(_fsymf_level_blog_testcblog_testc4_onlypri)(s3)
	li	a5,2
	bgtu	a4,a5,.L31
.L30:
	.loc 1 22 168 discriminator 5
	lw	a4,%lo(_fsymp_level_blog_testc4)(s2)
	li	a5,2
	bgtu	a4,a5,.L36
	.loc 1 22 220 is_stmt 1 discriminator 7
	.loc 1 22 287 is_stmt 0 discriminator 7
	call	xPortIsInsideInterrupt
.LVL19:
	.loc 1 22 220 discriminator 7
	beq	a0,zero,.L38
	.loc 1 22 316 discriminator 9
	call	xTaskGetTickCountFromISR
.LVL20:
.L60:
	.loc 1 22 347 discriminator 10
	mv	a1,a0
	.loc 1 22 220 discriminator 10
	lui	a2,%hi(.LC3)
	lui	a0,%hi(.LC4)
	li	a4,22
	addi	a3,s1,%lo(.LC0)
	addi	a2,a2,%lo(.LC3)
	addi	a0,a0,%lo(.LC4)
	call	bl_printk
.LVL21:
	j	.L35
.L6:
	.loc 1 13 347 discriminator 10
	call	xTaskGetTickCount
.LVL22:
	j	.L54
.L12:
	.loc 1 14 343 discriminator 10
	call	xTaskGetTickCount
.LVL23:
	j	.L55
.L17:
	.loc 1 15 343 discriminator 10
	call	xTaskGetTickCount
.LVL24:
	j	.L56
.L22:
	.loc 1 16 347 discriminator 10
	call	xTaskGetTickCount
.LVL25:
	j	.L57
.L25:
	.loc 1 17 351 discriminator 10
	call	xTaskGetTickCount
.LVL26:
	j	.L58
.L29:
	.loc 1 21 170 discriminator 5
	lw	a4,%lo(_fsymp_level_blog_testc4)(s2)
	bgtu	a4,a5,.L30
	.loc 1 21 223 is_stmt 1 discriminator 7
	.loc 1 21 291 is_stmt 0 discriminator 7
	call	xPortIsInsideInterrupt
.LVL27:
	.loc 1 21 223 discriminator 7
	beq	a0,zero,.L32
	.loc 1 21 320 discriminator 9
	call	xTaskGetTickCountFromISR
.LVL28:
.L59:
	.loc 1 21 351 discriminator 10
	mv	a1,a0
	.loc 1 21 223 discriminator 10
	lui	a2,%hi(.LC1)
	lui	a0,%hi(.LC2)
	li	a4,21
	addi	a3,s1,%lo(.LC0)
	addi	a2,a2,%lo(.LC1)
	addi	a0,a0,%lo(.LC2)
	call	bl_printk
.LVL29:
.L28:
	.loc 1 21 423 is_stmt 1 discriminator 1
	.loc 1 21 434 discriminator 1
	.loc 1 22 9 discriminator 1
	.loc 1 22 47 discriminator 1
	.loc 1 22 52 discriminator 1
	.loc 1 22 55 is_stmt 0 discriminator 1
	lw	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,2
	bleu	a4,a5,.L34
.L35:
	.loc 1 22 432 is_stmt 1 discriminator 1
	.loc 1 22 443 discriminator 1
	.loc 1 23 9 discriminator 1
	.loc 1 23 47 discriminator 1
	.loc 1 23 52 discriminator 1
	.loc 1 23 55 is_stmt 0 discriminator 1
	lw	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,3
	bgtu	a4,a5,.L40
.L31:
	.loc 1 23 101
	lw	a4,%lo(_fsymf_level_blog_testcblog_testc4_onlypri)(s3)
	li	a5,3
	bgtu	a4,a5,.L37
.L36:
	.loc 1 23 168 discriminator 5
	lw	a4,%lo(_fsymp_level_blog_testc4)(s2)
	li	a5,3
	bgtu	a4,a5,.L41
	.loc 1 23 220 is_stmt 1 discriminator 7
	.loc 1 23 287 is_stmt 0 discriminator 7
	call	xPortIsInsideInterrupt
.LVL30:
	.loc 1 23 220 discriminator 7
	beq	a0,zero,.L43
	.loc 1 23 316 discriminator 9
	call	xTaskGetTickCountFromISR
.LVL31:
.L61:
	.loc 1 23 347 discriminator 10
	mv	a1,a0
	.loc 1 23 220 discriminator 10
	lui	a0,%hi(.LC6)
	li	a4,23
	addi	a3,s1,%lo(.LC0)
	addi	a2,s8,%lo(.LC5)
	addi	a0,a0,%lo(.LC6)
	call	bl_printk
.LVL32:
.L40:
	.loc 1 23 432 is_stmt 1 discriminator 1
	.loc 1 23 443 discriminator 1
	.loc 1 24 9 discriminator 1
	.loc 1 24 47 discriminator 1
	.loc 1 24 52 discriminator 1
	.loc 1 24 55 is_stmt 0 discriminator 1
	lw	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,4
	bgtu	a4,a5,.L45
.L37:
	.loc 1 24 102
	lw	a4,%lo(_fsymf_level_blog_testcblog_testc4_onlypri)(s3)
	li	a5,4
	bgtu	a4,a5,.L42
.L41:
	.loc 1 24 170 discriminator 5
	lw	a4,%lo(_fsymp_level_blog_testc4)(s2)
	li	a5,4
	bgtu	a4,a5,.L46
	.loc 1 24 223 is_stmt 1 discriminator 7
	.loc 1 24 291 is_stmt 0 discriminator 7
	call	xPortIsInsideInterrupt
.LVL33:
	.loc 1 24 223 discriminator 7
	beq	a0,zero,.L48
	.loc 1 24 320 discriminator 9
	call	xTaskGetTickCountFromISR
.LVL34:
.L62:
	.loc 1 24 351 discriminator 10
	mv	a1,a0
	.loc 1 24 223 discriminator 10
	li	a4,24
	addi	a3,s1,%lo(.LC0)
	addi	a2,s6,%lo(.LC7)
	addi	a0,s7,%lo(.LC8)
	call	bl_printk
.LVL35:
.L45:
	.loc 1 24 437 is_stmt 1 discriminator 1
	.loc 1 24 448 discriminator 1
	.loc 1 25 9 discriminator 1
	.loc 1 25 47 discriminator 1
	.loc 1 25 52 discriminator 1
	.loc 1 25 55 is_stmt 0 discriminator 1
	lw	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,5
	bgtu	a4,a5,.L27
.L42:
	.loc 1 25 103
	lw	a4,%lo(_fsymf_level_blog_testcblog_testc4_onlypri)(s3)
	li	a5,5
	bgtu	a4,a5,.L27
.L46:
	.loc 1 25 172 discriminator 5
	lw	a4,%lo(_fsymp_level_blog_testc4)(s2)
	li	a5,5
	bgtu	a4,a5,.L27
	.loc 1 25 226 is_stmt 1 discriminator 7
	.loc 1 25 295 is_stmt 0 discriminator 7
	call	xPortIsInsideInterrupt
.LVL36:
	.loc 1 25 226 discriminator 7
	beq	a0,zero,.L50
	.loc 1 25 324 discriminator 9
	call	xTaskGetTickCountFromISR
.LVL37:
.L63:
	.loc 1 25 355 discriminator 10
	mv	a1,a0
	.loc 1 25 226 discriminator 10
	li	a4,25
	addi	a3,s1,%lo(.LC0)
	addi	a2,s5,%lo(.LC9)
	addi	a0,s4,%lo(.LC10)
	call	bl_printk
.LVL38:
	j	.L27
.L32:
	.loc 1 21 351 discriminator 10
	call	xTaskGetTickCount
.LVL39:
	j	.L59
.L38:
	.loc 1 22 347 discriminator 10
	call	xTaskGetTickCount
.LVL40:
	j	.L60
.L43:
	.loc 1 23 347 discriminator 10
	call	xTaskGetTickCount
.LVL41:
	j	.L61
.L48:
	.loc 1 24 351 discriminator 10
	call	xTaskGetTickCount
.LVL42:
	j	.L62
.L50:
	.loc 1 25 355 discriminator 10
	call	xTaskGetTickCount
.LVL43:
	j	.L63
	.cfi_endproc
.LFE4:
	.size	blog_testc4_entry, .-blog_testc4_entry
	.section	.rodata.blog_testc4_init.str1.4,"aMS",@progbits,1
	.align	2
.LC11:
	.string	"blog_testc4"
	.section	.text.blog_testc4_init,"ax",@progbits
	.align	1
	.globl	blog_testc4_init
	.type	blog_testc4_init, @function
blog_testc4_init:
.LFB5:
	.loc 1 30 1 is_stmt 1
	.cfi_startproc
	.loc 1 31 5
	li	a3,4096
	lui	a1,%hi(blog_testc4_entry)
	lui	a0,%hi(.LC11)
	.loc 1 30 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 31 5
	addi	a3,a3,-2048
	li	a2,0
	addi	a1,a1,%lo(blog_testc4_entry)
	addi	a0,a0,%lo(.LC11)
	.loc 1 30 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 31 5
	call	aos_task_new
.LVL44:
	.loc 1 33 5 is_stmt 1
	.loc 1 34 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	blog_testc4_init, .-blog_testc4_init
	.globl	_fsymp_info_blog_testc4
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC12:
	.string	"blog_testc.blog_testc4_onlypri.blog_testc4"
	.comm	_fsymp_level_blog_testc4,4,4
	.globl	_fsymf_info_blog_testcblog_testc4_onlypri
	.align	2
.LC13:
	.string	"blog_testc.blog_testc4_onlypri"
	.comm	_fsymf_level_blog_testcblog_testc4_onlypri,4,4
	.align	2
.LC14:
	.string	"blog_testc"
	.weak	_fsymc_level_blog_testc
	.section	.sbss._fsymc_level_blog_testc,"aw",@nobits
	.align	2
	.type	_fsymc_level_blog_testc, @object
	.size	_fsymc_level_blog_testc, 4
_fsymc_level_blog_testc:
	.zero	4
	.section	.srodata.BLOG_HARD_DECLARE_DISABLE,"a"
	.align	2
	.type	BLOG_HARD_DECLARE_DISABLE, @object
	.size	BLOG_HARD_DECLARE_DISABLE, 4
BLOG_HARD_DECLARE_DISABLE:
	.zero	4
	.section	.static_blogcomponent_code.blog_testc,"a"
	.align	2
	.type	_fsymc_info_blog_testc, @object
	.size	_fsymc_info_blog_testc, 8
_fsymc_info_blog_testc:
	.word	_fsymc_level_blog_testc
	.word	.LC14
	.section	.static_blogfile_code.blog_testcblog_testc4_onlypri,"a"
	.align	2
	.type	_fsymf_info_blog_testcblog_testc4_onlypri, @object
	.size	_fsymf_info_blog_testcblog_testc4_onlypri, 8
_fsymf_info_blog_testcblog_testc4_onlypri:
	.word	_fsymf_level_blog_testcblog_testc4_onlypri
	.word	.LC13
	.section	.static_blogpri_code.blog_testc4,"a"
	.align	2
	.type	_fsymp_info_blog_testc4, @object
	.size	_fsymp_info_blog_testc4, 8
_fsymp_info_blog_testc4:
	.word	_fsymp_level_blog_testc4
	.word	.LC12
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog_type.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/aos/kernel.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x553
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF36
	.byte	0xc
	.4byte	.LASF37
	.4byte	.LASF38
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x54
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x5
	.byte	0x4
	.byte	0x6
	.byte	0x4
	.4byte	0x7f
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x48
	.byte	0x7
	.4byte	0x86
	.byte	0x8
	.4byte	.LASF39
	.byte	0x7
	.byte	0x4
	.4byte	0x70
	.byte	0x4
	.byte	0x22
	.byte	0xe
	.4byte	0xd4
	.byte	0x9
	.4byte	.LASF12
	.byte	0
	.byte	0x9
	.4byte	.LASF13
	.byte	0x1
	.byte	0x9
	.4byte	.LASF14
	.byte	0x2
	.byte	0x9
	.4byte	.LASF15
	.byte	0x3
	.byte	0x9
	.4byte	.LASF16
	.byte	0x4
	.byte	0x9
	.4byte	.LASF17
	.byte	0x5
	.byte	0x9
	.4byte	.LASF18
	.byte	0x6
	.byte	0
	.byte	0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x2a
	.byte	0x3
	.4byte	0x97
	.byte	0xa
	.4byte	.LASF40
	.byte	0x8
	.byte	0x4
	.byte	0x2c
	.byte	0x10
	.4byte	0x108
	.byte	0xb
	.4byte	.LASF20
	.byte	0x4
	.byte	0x2d
	.byte	0x13
	.4byte	0x108
	.byte	0
	.byte	0xb
	.4byte	.LASF21
	.byte	0x4
	.byte	0x2e
	.byte	0xb
	.4byte	0x79
	.byte	0x4
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xd4
	.byte	0x3
	.4byte	.LASF22
	.byte	0x4
	.byte	0x2f
	.byte	0x3
	.4byte	0xe0
	.byte	0x7
	.4byte	0x10e
	.byte	0xc
	.4byte	.LASF23
	.byte	0x5
	.byte	0x38
	.byte	0x1b
	.4byte	0x92
	.byte	0x5
	.byte	0x3
	.4byte	BLOG_HARD_DECLARE_DISABLE
	.byte	0xd
	.4byte	.LASF25
	.byte	0x5
	.byte	0x45
	.byte	0x12
	.4byte	0xd4
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_level_blog_testc
	.byte	0xc
	.4byte	.LASF24
	.byte	0x5
	.byte	0x46
	.byte	0x1e
	.4byte	0x11a
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_info_blog_testc
	.byte	0xd
	.4byte	.LASF26
	.byte	0x5
	.byte	0x53
	.byte	0x12
	.4byte	0xd4
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_level_blog_testcblog_testc4_onlypri
	.byte	0xd
	.4byte	.LASF27
	.byte	0x5
	.byte	0x54
	.byte	0x17
	.4byte	0x11a
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_info_blog_testcblog_testc4_onlypri
	.byte	0xd
	.4byte	.LASF28
	.byte	0x1
	.byte	0x7
	.byte	0xe
	.4byte	0xd4
	.byte	0x5
	.byte	0x3
	.4byte	_fsymp_level_blog_testc4
	.byte	0xd
	.4byte	.LASF29
	.byte	0x1
	.byte	0x7
	.byte	0x3a
	.4byte	0x11a
	.byte	0x5
	.byte	0x3
	.4byte	_fsymp_info_blog_testc4
	.byte	0xe
	.4byte	.LASF41
	.byte	0x1
	.byte	0x1d
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x1e0
	.byte	0xf
	.4byte	.LVL44
	.4byte	0x50b
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	blog_testc4_entry
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xa
	.2byte	0x800
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LASF42
	.byte	0x1
	.byte	0x9
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x50b
	.byte	0x12
	.string	"arg"
	.byte	0x1
	.byte	0x9
	.byte	0x1e
	.4byte	0x77
	.4byte	.LLST0
	.byte	0x13
	.4byte	.LVL2
	.4byte	0x517
	.4byte	0x21b
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x1388
	.byte	0
	.byte	0x14
	.4byte	.LVL3
	.4byte	0x524
	.byte	0x14
	.4byte	.LVL4
	.4byte	0x530
	.byte	0x13
	.4byte	.LVL5
	.4byte	0x53d
	.4byte	0x25b
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x10
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x3e
	.byte	0
	.byte	0x14
	.4byte	.LVL6
	.4byte	0x524
	.byte	0x14
	.4byte	.LVL7
	.4byte	0x530
	.byte	0x13
	.4byte	.LVL8
	.4byte	0x53d
	.4byte	0x29b
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x10
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x3d
	.byte	0
	.byte	0x14
	.4byte	.LVL9
	.4byte	0x524
	.byte	0x14
	.4byte	.LVL10
	.4byte	0x530
	.byte	0x13
	.4byte	.LVL11
	.4byte	0x53d
	.4byte	0x2db
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x10
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x3f
	.byte	0
	.byte	0x14
	.4byte	.LVL12
	.4byte	0x524
	.byte	0x14
	.4byte	.LVL13
	.4byte	0x530
	.byte	0x13
	.4byte	.LVL14
	.4byte	0x53d
	.4byte	0x31b
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x10
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x14
	.4byte	.LVL15
	.4byte	0x524
	.byte	0x14
	.4byte	.LVL16
	.4byte	0x530
	.byte	0x13
	.4byte	.LVL17
	.4byte	0x53d
	.4byte	0x35b
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x10
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x41
	.byte	0
	.byte	0x13
	.4byte	.LVL18
	.4byte	0x517
	.4byte	0x370
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x1388
	.byte	0
	.byte	0x14
	.4byte	.LVL19
	.4byte	0x524
	.byte	0x14
	.4byte	.LVL20
	.4byte	0x530
	.byte	0x13
	.4byte	.LVL21
	.4byte	0x53d
	.4byte	0x3b0
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x10
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x46
	.byte	0
	.byte	0x14
	.4byte	.LVL22
	.4byte	0x549
	.byte	0x14
	.4byte	.LVL23
	.4byte	0x549
	.byte	0x14
	.4byte	.LVL24
	.4byte	0x549
	.byte	0x14
	.4byte	.LVL25
	.4byte	0x549
	.byte	0x14
	.4byte	.LVL26
	.4byte	0x549
	.byte	0x14
	.4byte	.LVL27
	.4byte	0x524
	.byte	0x14
	.4byte	.LVL28
	.4byte	0x530
	.byte	0x13
	.4byte	.LVL29
	.4byte	0x53d
	.4byte	0x41d
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x10
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x45
	.byte	0
	.byte	0x14
	.4byte	.LVL30
	.4byte	0x524
	.byte	0x14
	.4byte	.LVL31
	.4byte	0x530
	.byte	0x13
	.4byte	.LVL32
	.4byte	0x53d
	.4byte	0x45d
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x10
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x47
	.byte	0
	.byte	0x14
	.4byte	.LVL33
	.4byte	0x524
	.byte	0x14
	.4byte	.LVL34
	.4byte	0x530
	.byte	0x13
	.4byte	.LVL35
	.4byte	0x53d
	.4byte	0x49d
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x10
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x48
	.byte	0
	.byte	0x14
	.4byte	.LVL36
	.4byte	0x524
	.byte	0x14
	.4byte	.LVL37
	.4byte	0x530
	.byte	0x13
	.4byte	.LVL38
	.4byte	0x53d
	.4byte	0x4dd
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x10
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x49
	.byte	0
	.byte	0x14
	.4byte	.LVL39
	.4byte	0x549
	.byte	0x14
	.4byte	.LVL40
	.4byte	0x549
	.byte	0x14
	.4byte	.LVL41
	.4byte	0x549
	.byte	0x14
	.4byte	.LVL42
	.4byte	0x549
	.byte	0x14
	.4byte	.LVL43
	.4byte	0x549
	.byte	0
	.byte	0x15
	.4byte	.LASF30
	.4byte	.LASF30
	.byte	0x6
	.byte	0x47
	.byte	0x9
	.byte	0x16
	.4byte	.LASF31
	.4byte	.LASF31
	.byte	0x6
	.2byte	0x207
	.byte	0xa
	.byte	0x15
	.4byte	.LASF32
	.4byte	.LASF32
	.byte	0x7
	.byte	0x98
	.byte	0xc
	.byte	0x16
	.4byte	.LASF33
	.4byte	.LASF33
	.byte	0x8
	.2byte	0x558
	.byte	0xc
	.byte	0x15
	.4byte	.LASF34
	.4byte	.LASF34
	.byte	0x9
	.byte	0x81
	.byte	0x6
	.byte	0x16
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x8
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
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0xf
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
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
	.byte	0x12
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
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x16
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
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF6:
	.string	"long long int"
.LASF19:
	.string	"blog_level_t"
.LASF42:
	.string	"blog_testc4_entry"
.LASF27:
	.string	"_fsymf_info_blog_testcblog_testc4_onlypri"
.LASF24:
	.string	"_fsymc_info_blog_testc"
.LASF17:
	.string	"BLOG_LEVEL_ASSERT"
.LASF22:
	.string	"blog_info_t"
.LASF38:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/blog_testc"
.LASF25:
	.string	"_fsymc_level_blog_testc"
.LASF26:
	.string	"_fsymf_level_blog_testcblog_testc4_onlypri"
.LASF1:
	.string	"unsigned char"
.LASF34:
	.string	"bl_printk"
.LASF37:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog_testc/blog_testc4_onlypri.c"
.LASF39:
	.string	"_blog_leve"
.LASF5:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF30:
	.string	"aos_task_new"
.LASF16:
	.string	"BLOG_LEVEL_ERROR"
.LASF15:
	.string	"BLOG_LEVEL_WARN"
.LASF40:
	.string	"_blog_info"
.LASF10:
	.string	"__uint32_t"
.LASF8:
	.string	"unsigned int"
.LASF12:
	.string	"BLOG_LEVEL_ALL"
.LASF28:
	.string	"_fsymp_level_blog_testc4"
.LASF7:
	.string	"long long unsigned int"
.LASF32:
	.string	"xPortIsInsideInterrupt"
.LASF23:
	.string	"BLOG_HARD_DECLARE_DISABLE"
.LASF14:
	.string	"BLOG_LEVEL_INFO"
.LASF20:
	.string	"level"
.LASF36:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF9:
	.string	"char"
.LASF33:
	.string	"xTaskGetTickCountFromISR"
.LASF29:
	.string	"_fsymp_info_blog_testc4"
.LASF35:
	.string	"xTaskGetTickCount"
.LASF2:
	.string	"short int"
.LASF11:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF41:
	.string	"blog_testc4_init"
.LASF13:
	.string	"BLOG_LEVEL_DEBUG"
.LASF21:
	.string	"name"
.LASF18:
	.string	"BLOG_LEVEL_NEVER"
.LASF31:
	.string	"aos_msleep"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
