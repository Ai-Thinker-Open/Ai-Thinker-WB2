	.file	"blog_testc2_full.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.test_buf.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"hexdumpbuf"
	.align	2
.LC1:
	.string	"blog_testc2_full.c"
	.align	2
.LC2:
	.string	"DEBUG "
	.align	2
.LC3:
	.string	"[%10u][%s: %s:%4d] %s:\r\n"
	.align	2
.LC4:
	.string	"\033[32mINFO\033[0m"
	.align	2
.LC5:
	.string	"\033[33mWARN\033[0m"
	.align	2
.LC6:
	.string	"\033[31mERROR\033[0m"
	.align	2
.LC7:
	.string	"\033[35mDUMP\033[0m"
	.section	.text.test_buf,"ax",@progbits
	.align	1
	.globl	test_buf
	.type	test_buf, @function
test_buf:
.LFB4:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog_testc/blog_testc2_full.c"
	.loc 1 10 1
	.cfi_startproc
	.loc 1 11 5
	.loc 1 12 5
	.loc 1 14 5
.LVL0:
	.loc 1 14 16
	.loc 1 10 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	.loc 1 15 16
	lui	s0,%hi(.LANCHOR0)
	.loc 1 10 1
	sw	ra,12(sp)
	sw	s1,4(sp)
	sw	s2,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.loc 1 14 11
	li	a5,0
	.loc 1 15 16
	addi	a2,s0,%lo(.LANCHOR0)
	.loc 1 14 5
	li	a4,256
.LVL1:
.L2:
	.loc 1 15 9 is_stmt 1 discriminator 3
	.loc 1 15 16 is_stmt 0 discriminator 3
	add	a3,a2,a5
	sb	a5,0(a3)
	.loc 1 14 33 is_stmt 1 discriminator 3
	.loc 1 14 34 is_stmt 0 discriminator 3
	addi	a5,a5,1
.LVL2:
	.loc 1 14 16 is_stmt 1 discriminator 3
	.loc 1 14 5 is_stmt 0 discriminator 3
	bne	a5,a4,.L2
	.loc 1 18 5 is_stmt 1 discriminator 1
	.loc 1 18 43 discriminator 1
	.loc 1 18 48 discriminator 1
	.loc 1 18 70 is_stmt 0 discriminator 1
	lui	s1,%hi(_fsymc_level_blog_testc)
	.loc 1 18 51 discriminator 1
	lw	a4,%lo(_fsymc_level_blog_testc)(s1)
	li	a5,1
.LVL3:
	bgtu	a4,a5,.L3
	.loc 1 18 119 discriminator 3
	lui	a4,%hi(_fsymf_level_blog_testcblog_testc2_full)
	.loc 1 18 98 discriminator 3
	lw	a4,%lo(_fsymf_level_blog_testcblog_testc2_full)(a4)
	bleu	a4,a5,.L4
.L9:
	.loc 1 19 117
	lui	a5,%hi(_fsymf_level_blog_testcblog_testc2_full)
	.loc 1 19 97
	lw	a4,%lo(_fsymf_level_blog_testcblog_testc2_full)(a5)
	li	a5,2
	bgtu	a4,a5,.L6
	.loc 1 19 164 is_stmt 1 discriminator 5
	.loc 1 19 205 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL4:
	.loc 1 19 164 discriminator 5
	beq	a0,zero,.L13
	.loc 1 19 234 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL5:
.L31:
	.loc 1 19 265 discriminator 8
	mv	a1,a0
	.loc 1 19 164 discriminator 8
	lui	s2,%hi(.LC0)
	lui	a3,%hi(.LC1)
	lui	a2,%hi(.LC4)
	lui	a0,%hi(.LC3)
	addi	a5,s2,%lo(.LC0)
	li	a4,19
	addi	a3,a3,%lo(.LC1)
	addi	a2,a2,%lo(.LC4)
	addi	a0,a0,%lo(.LC3)
	call	bl_printk
.LVL6:
	.loc 1 19 351 is_stmt 1 discriminator 8
	li	a3,256
	addi	a2,s0,%lo(.LANCHOR0)
	li	a1,16
	addi	a0,s2,%lo(.LC0)
	call	blog_hexdump_out
.LVL7:
	j	.L10
.L4:
	.loc 1 18 166 discriminator 5
	.loc 1 18 207 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL8:
	.loc 1 18 166 discriminator 5
	beq	a0,zero,.L7
	.loc 1 18 236 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL9:
.L30:
	.loc 1 18 267 discriminator 8
	mv	a1,a0
	.loc 1 18 166 discriminator 8
	lui	s2,%hi(.LC0)
	lui	a3,%hi(.LC1)
	lui	a2,%hi(.LC2)
	lui	a0,%hi(.LC3)
	addi	a3,a3,%lo(.LC1)
	addi	a2,a2,%lo(.LC2)
	addi	a0,a0,%lo(.LC3)
	addi	a5,s2,%lo(.LC0)
	li	a4,18
	call	bl_printk
.LVL10:
	.loc 1 18 340 is_stmt 1 discriminator 8
	li	a3,256
	addi	a2,s0,%lo(.LANCHOR0)
	li	a1,16
	addi	a0,s2,%lo(.LC0)
	call	blog_hexdump_out
.LVL11:
.L3:
	.loc 1 18 404 discriminator 1
	.loc 1 18 415 discriminator 1
	.loc 1 19 5 discriminator 1
	.loc 1 19 43 discriminator 1
	.loc 1 19 48 discriminator 1
	.loc 1 19 51 is_stmt 0 discriminator 1
	lw	a4,%lo(_fsymc_level_blog_testc)(s1)
	li	a5,2
	bleu	a4,a5,.L9
.L10:
	.loc 1 19 415 is_stmt 1 discriminator 1
	.loc 1 19 426 discriminator 1
	.loc 1 20 5 discriminator 1
	.loc 1 20 43 discriminator 1
	.loc 1 20 48 discriminator 1
	.loc 1 20 51 is_stmt 0 discriminator 1
	lw	a4,%lo(_fsymc_level_blog_testc)(s1)
	li	a5,3
	bgtu	a4,a5,.L15
.L6:
	.loc 1 20 117
	lui	a5,%hi(_fsymf_level_blog_testcblog_testc2_full)
	.loc 1 20 97
	lw	a4,%lo(_fsymf_level_blog_testcblog_testc2_full)(a5)
	li	a5,3
	bgtu	a4,a5,.L12
	.loc 1 20 164 is_stmt 1 discriminator 5
	.loc 1 20 205 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL12:
	.loc 1 20 164 discriminator 5
	beq	a0,zero,.L18
	.loc 1 20 234 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL13:
.L32:
	.loc 1 20 265 discriminator 8
	mv	a1,a0
	.loc 1 20 164 discriminator 8
	lui	s2,%hi(.LC0)
	lui	a3,%hi(.LC1)
	lui	a2,%hi(.LC5)
	lui	a0,%hi(.LC3)
	addi	a3,a3,%lo(.LC1)
	addi	a2,a2,%lo(.LC5)
	addi	a0,a0,%lo(.LC3)
	addi	a5,s2,%lo(.LC0)
	li	a4,20
	call	bl_printk
.LVL14:
	.loc 1 20 351 is_stmt 1 discriminator 8
	li	a3,256
	addi	a2,s0,%lo(.LANCHOR0)
	li	a1,16
	addi	a0,s2,%lo(.LC0)
	call	blog_hexdump_out
.LVL15:
.L15:
	.loc 1 20 415 discriminator 1
	.loc 1 20 426 discriminator 1
	.loc 1 21 5 discriminator 1
	.loc 1 21 43 discriminator 1
	.loc 1 21 48 discriminator 1
	.loc 1 21 51 is_stmt 0 discriminator 1
	lw	a4,%lo(_fsymc_level_blog_testc)(s1)
	li	a5,4
	bgtu	a4,a5,.L20
.L12:
	.loc 1 21 119
	lui	a5,%hi(_fsymf_level_blog_testcblog_testc2_full)
	.loc 1 21 98
	lw	a4,%lo(_fsymf_level_blog_testcblog_testc2_full)(a5)
	li	a5,4
	bgtu	a4,a5,.L17
	.loc 1 21 166 is_stmt 1 discriminator 5
	.loc 1 21 207 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL16:
	.loc 1 21 166 discriminator 5
	beq	a0,zero,.L23
	.loc 1 21 236 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL17:
.L33:
	.loc 1 21 267 discriminator 8
	mv	a1,a0
	.loc 1 21 166 discriminator 8
	lui	s2,%hi(.LC0)
	lui	a3,%hi(.LC1)
	lui	a2,%hi(.LC6)
	lui	a0,%hi(.LC3)
	addi	a3,a3,%lo(.LC1)
	addi	a2,a2,%lo(.LC6)
	addi	a0,a0,%lo(.LC3)
	addi	a5,s2,%lo(.LC0)
	li	a4,21
	call	bl_printk
.LVL18:
	.loc 1 21 354 is_stmt 1 discriminator 8
	li	a3,256
	addi	a2,s0,%lo(.LANCHOR0)
	li	a1,16
	addi	a0,s2,%lo(.LC0)
	call	blog_hexdump_out
.LVL19:
.L20:
	.loc 1 21 418 discriminator 1
	.loc 1 21 429 discriminator 1
	.loc 1 22 5 discriminator 1
	.loc 1 22 43 discriminator 1
	.loc 1 22 48 discriminator 1
	.loc 1 22 51 is_stmt 0 discriminator 1
	lw	a4,%lo(_fsymc_level_blog_testc)(s1)
	li	a5,5
	bgtu	a4,a5,.L1
.L17:
	.loc 1 22 121
	lui	a5,%hi(_fsymf_level_blog_testcblog_testc2_full)
	.loc 1 22 99
	lw	a4,%lo(_fsymf_level_blog_testcblog_testc2_full)(a5)
	li	a5,5
	bgtu	a4,a5,.L1
	.loc 1 22 168 is_stmt 1 discriminator 5
	.loc 1 22 209 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL20:
	.loc 1 22 168 discriminator 5
	beq	a0,zero,.L26
	.loc 1 22 238 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL21:
.L34:
	.loc 1 22 269 discriminator 8
	mv	a1,a0
	.loc 1 22 168 discriminator 8
	lui	s1,%hi(.LC0)
	lui	a3,%hi(.LC1)
	lui	a2,%hi(.LC7)
	lui	a0,%hi(.LC3)
	addi	a5,s1,%lo(.LC0)
	addi	a3,a3,%lo(.LC1)
	addi	a2,a2,%lo(.LC7)
	addi	a0,a0,%lo(.LC3)
	li	a4,22
	call	bl_printk
.LVL22:
	.loc 1 22 355 is_stmt 1 discriminator 8
	addi	a2,s0,%lo(.LANCHOR0)
	.loc 1 23 1 is_stmt 0 discriminator 8
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s2,0(sp)
	.cfi_restore 18
	.loc 1 22 355 discriminator 8
	addi	a0,s1,%lo(.LC0)
	.loc 1 23 1 discriminator 8
	lw	s1,4(sp)
	.cfi_restore 9
	.loc 1 22 355 discriminator 8
	li	a3,256
	.loc 1 23 1 discriminator 8
	.loc 1 22 355 discriminator 8
	li	a1,16
	.loc 1 23 1 discriminator 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 22 355 discriminator 8
	tail	blog_hexdump_out
.LVL23:
.L7:
	.cfi_restore_state
	.loc 1 18 267 discriminator 8
	call	xTaskGetTickCount
.LVL24:
	j	.L30
.L13:
	.loc 1 19 265 discriminator 8
	call	xTaskGetTickCount
.LVL25:
	j	.L31
.L18:
	.loc 1 20 265 discriminator 8
	call	xTaskGetTickCount
.LVL26:
	j	.L32
.L23:
	.loc 1 21 267 discriminator 8
	call	xTaskGetTickCount
.LVL27:
	j	.L33
.L26:
	.loc 1 22 269 discriminator 8
	call	xTaskGetTickCount
.LVL28:
	j	.L34
.L1:
	.loc 1 23 1
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
.LFE4:
	.size	test_buf, .-test_buf
	.section	.rodata.blog_testc2_entry.str1.4,"aMS",@progbits,1
	.align	2
.LC8:
	.string	"DEBUG"
	.align	2
.LC9:
	.string	"%s (%d)[%s:%4d] blog_testc2 debug\r\n\r\n"
	.align	2
.LC10:
	.string	"%s (%d)[%s:%4d] blog_testc2 info\r\n\r\n"
	.align	2
.LC11:
	.string	"%s (%d)[%s:%4d] blog_testc2 warn\r\n\r\n"
	.align	2
.LC12:
	.string	"%s (%d)[%s:%4d] blog_testc2 error\r\n\r\n"
	.align	2
.LC13:
	.string	"[%d][%s: %s:%4d] blog_testc2 debug user\r\n\r\n"
	.align	2
.LC14:
	.string	"[%d][%s: %s:%4d] blog_testc2 info user\r\n\r\n"
	.align	2
.LC15:
	.string	"[%d][%s: %s:%4d] blog_testc2 warn user\r\n\r\n"
	.align	2
.LC16:
	.string	"[%d][%s: %s:%4d] blog_testc2 error user\r\n\r\n"
	.align	2
.LC17:
	.string	"\033[35mASSERT\033[0m"
	.align	2
.LC18:
	.string	"[%d][%s: %s:%4d] blog_testc2 assert user\r\n\r\n"
	.section	.text.blog_testc2_entry,"ax",@progbits
	.align	1
	.globl	blog_testc2_entry
	.type	blog_testc2_entry, @function
blog_testc2_entry:
.LFB5:
	.loc 1 25 1 is_stmt 1
	.cfi_startproc
.LVL29:
	.loc 1 26 5
	li	a0,4096
.LVL30:
	.loc 1 25 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	.loc 1 26 5
	addi	a0,a0,904
	.loc 1 25 1
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
	.loc 1 28 70
	lui	s0,%hi(_fsymc_level_blog_testc)
	.loc 1 26 5
	call	aos_msleep
.LVL31:
	.loc 1 28 5 is_stmt 1
	.loc 1 28 43
	.loc 1 28 48
	.loc 1 28 51 is_stmt 0
	lw	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,1
	bgtu	a4,a5,.L36
	.loc 1 28 119 discriminator 3
	lui	a4,%hi(_fsymf_level_blog_testcblog_testc2_full)
	.loc 1 28 98 discriminator 3
	lw	a4,%lo(_fsymf_level_blog_testcblog_testc2_full)(a4)
	bleu	a4,a5,.L37
.L42:
	.loc 1 29 117
	lui	a5,%hi(_fsymf_level_blog_testcblog_testc2_full)
	.loc 1 29 97
	lw	a4,%lo(_fsymf_level_blog_testcblog_testc2_full)(a5)
	li	a5,2
	bgtu	a4,a5,.L39
	.loc 1 29 164 is_stmt 1 discriminator 5
	.loc 1 29 248 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL32:
	.loc 1 29 164 discriminator 5
	beq	a0,zero,.L46
	.loc 1 29 277 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL33:
.L129:
	.loc 1 29 308 discriminator 8
	mv	a2,a0
	.loc 1 29 164 discriminator 8
	lui	a3,%hi(.LC1)
	lui	a1,%hi(.LC4)
	lui	a0,%hi(.LC10)
	li	a4,29
	addi	a3,a3,%lo(.LC1)
	addi	a1,a1,%lo(.LC4)
	addi	a0,a0,%lo(.LC10)
	call	bl_printk
.LVL34:
	j	.L43
.L37:
	.loc 1 28 166 is_stmt 1 discriminator 5
	.loc 1 28 237 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL35:
	.loc 1 28 166 discriminator 5
	beq	a0,zero,.L40
	.loc 1 28 266 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL36:
.L128:
	.loc 1 28 297 discriminator 8
	mv	a2,a0
	.loc 1 28 166 discriminator 8
	lui	a3,%hi(.LC1)
	lui	a1,%hi(.LC8)
	lui	a0,%hi(.LC9)
	li	a4,28
	addi	a3,a3,%lo(.LC1)
	addi	a1,a1,%lo(.LC8)
	addi	a0,a0,%lo(.LC9)
	call	bl_printk
.LVL37:
.L36:
	.loc 1 28 356 is_stmt 1 discriminator 1
	.loc 1 28 367 discriminator 1
	.loc 1 29 5 discriminator 1
	.loc 1 29 43 discriminator 1
	.loc 1 29 48 discriminator 1
	.loc 1 29 51 is_stmt 0 discriminator 1
	lw	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,2
	bleu	a4,a5,.L42
.L43:
	.loc 1 29 367 is_stmt 1 discriminator 1
	.loc 1 29 378 discriminator 1
	.loc 1 30 5 discriminator 1
	.loc 1 30 43 discriminator 1
	.loc 1 30 48 discriminator 1
	.loc 1 30 51 is_stmt 0 discriminator 1
	lw	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,3
	bgtu	a4,a5,.L48
.L39:
	.loc 1 30 117
	lui	a5,%hi(_fsymf_level_blog_testcblog_testc2_full)
	.loc 1 30 97
	lw	a4,%lo(_fsymf_level_blog_testcblog_testc2_full)(a5)
	li	a5,3
	bgtu	a4,a5,.L45
	.loc 1 30 164 is_stmt 1 discriminator 5
	.loc 1 30 248 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL38:
	.loc 1 30 164 discriminator 5
	beq	a0,zero,.L51
	.loc 1 30 277 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL39:
.L130:
	.loc 1 30 308 discriminator 8
	mv	a2,a0
	.loc 1 30 164 discriminator 8
	lui	a3,%hi(.LC1)
	lui	a1,%hi(.LC5)
	lui	a0,%hi(.LC11)
	li	a4,30
	addi	a3,a3,%lo(.LC1)
	addi	a1,a1,%lo(.LC5)
	addi	a0,a0,%lo(.LC11)
	call	bl_printk
.LVL40:
.L48:
	.loc 1 30 367 is_stmt 1 discriminator 1
	.loc 1 30 378 discriminator 1
	.loc 1 31 5 discriminator 1
	.loc 1 31 43 discriminator 1
	.loc 1 31 48 discriminator 1
	.loc 1 31 51 is_stmt 0 discriminator 1
	lw	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,4
	bgtu	a4,a5,.L53
.L45:
	.loc 1 31 119
	lui	a5,%hi(_fsymf_level_blog_testcblog_testc2_full)
	.loc 1 31 98
	lw	a4,%lo(_fsymf_level_blog_testcblog_testc2_full)(a5)
	li	a5,4
	bgtu	a4,a5,.L53
	.loc 1 31 166 is_stmt 1 discriminator 5
	.loc 1 31 252 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL41:
	.loc 1 31 166 discriminator 5
	beq	a0,zero,.L54
	.loc 1 31 281 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL42:
.L131:
	.loc 1 31 312 discriminator 8
	mv	a2,a0
	.loc 1 31 166 discriminator 8
	lui	a3,%hi(.LC1)
	lui	a1,%hi(.LC6)
	lui	a0,%hi(.LC12)
	li	a4,31
	addi	a3,a3,%lo(.LC1)
	addi	a1,a1,%lo(.LC6)
	addi	a0,a0,%lo(.LC12)
	call	bl_printk
.LVL43:
.L53:
	.loc 1 31 371 is_stmt 1 discriminator 1
	.loc 1 31 382 discriminator 1
	.loc 1 33 5 discriminator 1
	.loc 1 33 43 discriminator 1
	.loc 1 33 48 discriminator 1
	.loc 1 33 51 is_stmt 0 discriminator 1
	lw	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,1
	bgtu	a4,a5,.L56
	.loc 1 33 119 discriminator 3
	lui	a4,%hi(_fsymf_level_blog_testcblog_testc2_full)
	.loc 1 33 98 discriminator 3
	lw	a4,%lo(_fsymf_level_blog_testcblog_testc2_full)(a4)
	bleu	a4,a5,.L57
.L62:
	.loc 1 34 117
	lui	a5,%hi(_fsymf_level_blog_testcblog_testc2_full)
	.loc 1 34 97
	lw	a4,%lo(_fsymf_level_blog_testcblog_testc2_full)(a5)
	li	a5,2
	bgtu	a4,a5,.L59
.L58:
	.loc 1 34 181 discriminator 5
	lui	a5,%hi(_fsymp_level_blog_testc2)
	.loc 1 34 161 discriminator 5
	lw	a4,%lo(_fsymp_level_blog_testc2)(a5)
	li	a5,2
	bgtu	a4,a5,.L64
	.loc 1 34 213 is_stmt 1 discriminator 7
	.loc 1 34 280 is_stmt 0 discriminator 7
	call	xPortIsInsideInterrupt
.LVL44:
	.loc 1 34 213 discriminator 7
	beq	a0,zero,.L66
	.loc 1 34 309 discriminator 9
	call	xTaskGetTickCountFromISR
.LVL45:
.L133:
	.loc 1 34 340 discriminator 10
	mv	a1,a0
	.loc 1 34 213 discriminator 10
	lui	a3,%hi(.LC1)
	lui	a2,%hi(.LC4)
	lui	a0,%hi(.LC14)
	li	a4,34
	addi	a3,a3,%lo(.LC1)
	addi	a2,a2,%lo(.LC4)
	addi	a0,a0,%lo(.LC14)
	call	bl_printk
.LVL46:
	j	.L63
.L40:
	.loc 1 28 297 discriminator 8
	call	xTaskGetTickCount
.LVL47:
	j	.L128
.L46:
	.loc 1 29 308 discriminator 8
	call	xTaskGetTickCount
.LVL48:
	j	.L129
.L51:
	.loc 1 30 308 discriminator 8
	call	xTaskGetTickCount
.LVL49:
	j	.L130
.L54:
	.loc 1 31 312 discriminator 8
	call	xTaskGetTickCount
.LVL50:
	j	.L131
.L57:
	.loc 1 33 184 discriminator 5
	lui	a4,%hi(_fsymp_level_blog_testc2)
	.loc 1 33 163 discriminator 5
	lw	a4,%lo(_fsymp_level_blog_testc2)(a4)
	bgtu	a4,a5,.L58
	.loc 1 33 216 is_stmt 1 discriminator 7
	.loc 1 33 284 is_stmt 0 discriminator 7
	call	xPortIsInsideInterrupt
.LVL51:
	.loc 1 33 216 discriminator 7
	beq	a0,zero,.L60
	.loc 1 33 313 discriminator 9
	call	xTaskGetTickCountFromISR
.LVL52:
.L132:
	.loc 1 33 344 discriminator 10
	mv	a1,a0
	.loc 1 33 216 discriminator 10
	lui	a3,%hi(.LC1)
	lui	a2,%hi(.LC2)
	lui	a0,%hi(.LC13)
	li	a4,33
	addi	a3,a3,%lo(.LC1)
	addi	a2,a2,%lo(.LC2)
	addi	a0,a0,%lo(.LC13)
	call	bl_printk
.LVL53:
.L56:
	.loc 1 33 413 is_stmt 1 discriminator 1
	.loc 1 33 424 discriminator 1
	.loc 1 34 5 discriminator 1
	.loc 1 34 43 discriminator 1
	.loc 1 34 48 discriminator 1
	.loc 1 34 51 is_stmt 0 discriminator 1
	lw	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,2
	bleu	a4,a5,.L62
.L63:
	.loc 1 34 422 is_stmt 1 discriminator 1
	.loc 1 34 433 discriminator 1
	.loc 1 35 5 discriminator 1
	.loc 1 35 43 discriminator 1
	.loc 1 35 48 discriminator 1
	.loc 1 35 51 is_stmt 0 discriminator 1
	lw	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,3
	bgtu	a4,a5,.L68
.L59:
	.loc 1 35 117
	lui	a5,%hi(_fsymf_level_blog_testcblog_testc2_full)
	.loc 1 35 97
	lw	a4,%lo(_fsymf_level_blog_testcblog_testc2_full)(a5)
	li	a5,3
	bgtu	a4,a5,.L65
.L64:
	.loc 1 35 181 discriminator 5
	lui	a5,%hi(_fsymp_level_blog_testc2)
	.loc 1 35 161 discriminator 5
	lw	a4,%lo(_fsymp_level_blog_testc2)(a5)
	li	a5,3
	bgtu	a4,a5,.L69
	.loc 1 35 213 is_stmt 1 discriminator 7
	.loc 1 35 280 is_stmt 0 discriminator 7
	call	xPortIsInsideInterrupt
.LVL54:
	.loc 1 35 213 discriminator 7
	beq	a0,zero,.L71
	.loc 1 35 309 discriminator 9
	call	xTaskGetTickCountFromISR
.LVL55:
.L134:
	.loc 1 35 340 discriminator 10
	mv	a1,a0
	.loc 1 35 213 discriminator 10
	lui	a3,%hi(.LC1)
	lui	a2,%hi(.LC5)
	lui	a0,%hi(.LC15)
	li	a4,35
	addi	a3,a3,%lo(.LC1)
	addi	a2,a2,%lo(.LC5)
	addi	a0,a0,%lo(.LC15)
	call	bl_printk
.LVL56:
.L68:
	.loc 1 35 422 is_stmt 1 discriminator 1
	.loc 1 35 433 discriminator 1
	.loc 1 36 5 discriminator 1
	.loc 1 36 43 discriminator 1
	.loc 1 36 48 discriminator 1
	.loc 1 36 51 is_stmt 0 discriminator 1
	lw	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,4
	bgtu	a4,a5,.L73
.L65:
	.loc 1 36 119
	lui	a5,%hi(_fsymf_level_blog_testcblog_testc2_full)
	.loc 1 36 98
	lw	a4,%lo(_fsymf_level_blog_testcblog_testc2_full)(a5)
	li	a5,4
	bgtu	a4,a5,.L70
.L69:
	.loc 1 36 184 discriminator 5
	lui	a5,%hi(_fsymp_level_blog_testc2)
	.loc 1 36 163 discriminator 5
	lw	a4,%lo(_fsymp_level_blog_testc2)(a5)
	li	a5,4
	bgtu	a4,a5,.L74
	.loc 1 36 216 is_stmt 1 discriminator 7
	.loc 1 36 284 is_stmt 0 discriminator 7
	call	xPortIsInsideInterrupt
.LVL57:
	.loc 1 36 216 discriminator 7
	beq	a0,zero,.L76
	.loc 1 36 313 discriminator 9
	call	xTaskGetTickCountFromISR
.LVL58:
.L135:
	.loc 1 36 344 discriminator 10
	mv	a1,a0
	.loc 1 36 216 discriminator 10
	lui	a3,%hi(.LC1)
	lui	a2,%hi(.LC6)
	lui	a0,%hi(.LC16)
	li	a4,36
	addi	a3,a3,%lo(.LC1)
	addi	a2,a2,%lo(.LC6)
	addi	a0,a0,%lo(.LC16)
	call	bl_printk
.LVL59:
.L73:
	.loc 1 36 427 is_stmt 1 discriminator 1
	.loc 1 36 438 discriminator 1
	.loc 1 37 5 discriminator 1
	.loc 1 37 43 discriminator 1
	.loc 1 37 48 discriminator 1
	.loc 1 37 51 is_stmt 0 discriminator 1
	lw	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,5
	bgtu	a4,a5,.L78
.L70:
	.loc 1 37 121
	lui	a5,%hi(_fsymf_level_blog_testcblog_testc2_full)
	.loc 1 37 99
	lw	a4,%lo(_fsymf_level_blog_testcblog_testc2_full)(a5)
	li	a5,5
	bgtu	a4,a5,.L78
.L74:
	.loc 1 37 187 discriminator 5
	lui	a5,%hi(_fsymp_level_blog_testc2)
	.loc 1 37 165 discriminator 5
	lw	a4,%lo(_fsymp_level_blog_testc2)(a5)
	li	a5,5
	bgtu	a4,a5,.L78
	.loc 1 37 219 is_stmt 1 discriminator 7
	.loc 1 37 288 is_stmt 0 discriminator 7
	call	xPortIsInsideInterrupt
.LVL60:
	.loc 1 37 219 discriminator 7
	beq	a0,zero,.L79
	.loc 1 37 317 discriminator 9
	call	xTaskGetTickCountFromISR
.LVL61:
.L136:
	.loc 1 37 348 discriminator 10
	mv	a1,a0
	.loc 1 37 219 discriminator 10
	lui	a3,%hi(.LC1)
	lui	a2,%hi(.LC17)
	lui	a0,%hi(.LC18)
	li	a4,37
	addi	a3,a3,%lo(.LC1)
	addi	a2,a2,%lo(.LC17)
	addi	a0,a0,%lo(.LC18)
	call	bl_printk
.LVL62:
.L78:
	.loc 1 47 123 discriminator 13
	lui	s2,%hi(_fsymf_level_blog_testcblog_testc2_full)
	.loc 1 47 170 discriminator 13
	lui	s1,%hi(.LC1)
	lui	s3,%hi(.LC6)
	lui	s6,%hi(.LC12)
	.loc 1 46 168 discriminator 13
	lui	s4,%hi(.LC5)
	lui	s7,%hi(.LC11)
	.loc 1 45 168 discriminator 13
	lui	s5,%hi(.LC4)
	lui	s8,%hi(.LC10)
.L81:
	.loc 1 37 432 is_stmt 1 discriminator 13
	.loc 1 37 443 discriminator 13
	.loc 1 39 5 discriminator 13
	.loc 1 40 9 discriminator 13
	li	a0,4096
	addi	a0,a0,904
	call	aos_msleep
.LVL63:
	.loc 1 42 9 discriminator 13
	call	test_buf
.LVL64:
	.loc 1 44 9 discriminator 13
	.loc 1 44 47 discriminator 13
	.loc 1 44 52 discriminator 13
	.loc 1 44 55 is_stmt 0 discriminator 13
	lw	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,1
	bgtu	a4,a5,.L82
	.loc 1 44 102 discriminator 3
	lw	a4,%lo(_fsymf_level_blog_testcblog_testc2_full)(s2)
	bleu	a4,a5,.L83
.L88:
	.loc 1 45 101
	lw	a4,%lo(_fsymf_level_blog_testcblog_testc2_full)(s2)
	li	a5,2
	bgtu	a4,a5,.L85
	.loc 1 45 168 is_stmt 1 discriminator 5
	.loc 1 45 252 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL65:
	.loc 1 45 168 discriminator 5
	beq	a0,zero,.L92
	.loc 1 45 281 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL66:
.L138:
	.loc 1 45 312 discriminator 8
	mv	a2,a0
	.loc 1 45 168 discriminator 8
	li	a4,45
	addi	a3,s1,%lo(.LC1)
	addi	a1,s5,%lo(.LC4)
	addi	a0,s8,%lo(.LC10)
	call	bl_printk
.LVL67:
	j	.L89
.L60:
	.loc 1 33 344 discriminator 10
	call	xTaskGetTickCount
.LVL68:
	j	.L132
.L66:
	.loc 1 34 340 discriminator 10
	call	xTaskGetTickCount
.LVL69:
	j	.L133
.L71:
	.loc 1 35 340 discriminator 10
	call	xTaskGetTickCount
.LVL70:
	j	.L134
.L76:
	.loc 1 36 344 discriminator 10
	call	xTaskGetTickCount
.LVL71:
	j	.L135
.L79:
	.loc 1 37 348 discriminator 10
	call	xTaskGetTickCount
.LVL72:
	j	.L136
.L83:
	.loc 1 44 170 is_stmt 1 discriminator 5
	.loc 1 44 241 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL73:
	.loc 1 44 170 discriminator 5
	beq	a0,zero,.L86
	.loc 1 44 270 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL74:
.L137:
	.loc 1 44 301 discriminator 8
	mv	a2,a0
	.loc 1 44 170 discriminator 8
	lui	a1,%hi(.LC8)
	lui	a0,%hi(.LC9)
	li	a4,44
	addi	a3,s1,%lo(.LC1)
	addi	a1,a1,%lo(.LC8)
	addi	a0,a0,%lo(.LC9)
	call	bl_printk
.LVL75:
.L82:
	.loc 1 44 360 is_stmt 1 discriminator 1
	.loc 1 44 371 discriminator 1
	.loc 1 45 9 discriminator 1
	.loc 1 45 47 discriminator 1
	.loc 1 45 52 discriminator 1
	.loc 1 45 55 is_stmt 0 discriminator 1
	lw	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,2
	bleu	a4,a5,.L88
.L89:
	.loc 1 45 371 is_stmt 1 discriminator 1
	.loc 1 45 382 discriminator 1
	.loc 1 46 9 discriminator 1
	.loc 1 46 47 discriminator 1
	.loc 1 46 52 discriminator 1
	.loc 1 46 55 is_stmt 0 discriminator 1
	lw	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,3
	bgtu	a4,a5,.L94
.L85:
	.loc 1 46 101
	lw	a4,%lo(_fsymf_level_blog_testcblog_testc2_full)(s2)
	li	a5,3
	bgtu	a4,a5,.L91
	.loc 1 46 168 is_stmt 1 discriminator 5
	.loc 1 46 252 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL76:
	.loc 1 46 168 discriminator 5
	beq	a0,zero,.L97
	.loc 1 46 281 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL77:
.L139:
	.loc 1 46 312 discriminator 8
	mv	a2,a0
	.loc 1 46 168 discriminator 8
	li	a4,46
	addi	a3,s1,%lo(.LC1)
	addi	a1,s4,%lo(.LC5)
	addi	a0,s7,%lo(.LC11)
	call	bl_printk
.LVL78:
.L94:
	.loc 1 46 371 is_stmt 1 discriminator 1
	.loc 1 46 382 discriminator 1
	.loc 1 47 9 discriminator 1
	.loc 1 47 47 discriminator 1
	.loc 1 47 52 discriminator 1
	.loc 1 47 55 is_stmt 0 discriminator 1
	lw	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,4
	bgtu	a4,a5,.L99
.L91:
	.loc 1 47 102
	lw	a4,%lo(_fsymf_level_blog_testcblog_testc2_full)(s2)
	li	a5,4
	bgtu	a4,a5,.L99
	.loc 1 47 170 is_stmt 1 discriminator 5
	.loc 1 47 256 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL79:
	.loc 1 47 170 discriminator 5
	beq	a0,zero,.L100
	.loc 1 47 285 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL80:
.L140:
	.loc 1 47 316 discriminator 8
	mv	a2,a0
	.loc 1 47 170 discriminator 8
	li	a4,47
	addi	a3,s1,%lo(.LC1)
	addi	a1,s3,%lo(.LC6)
	addi	a0,s6,%lo(.LC12)
	call	bl_printk
.LVL81:
.L99:
	.loc 1 47 375 is_stmt 1 discriminator 1
	.loc 1 47 386 discriminator 1
	.loc 1 49 9 discriminator 1
	.loc 1 49 47 discriminator 1
	.loc 1 49 52 discriminator 1
	.loc 1 49 55 is_stmt 0 discriminator 1
	lw	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,1
	bgtu	a4,a5,.L102
	.loc 1 49 102 discriminator 3
	lw	a4,%lo(_fsymf_level_blog_testcblog_testc2_full)(s2)
	bleu	a4,a5,.L103
.L108:
	.loc 1 50 101
	lw	a4,%lo(_fsymf_level_blog_testcblog_testc2_full)(s2)
	li	a5,2
	bgtu	a4,a5,.L105
.L104:
	.loc 1 50 185 discriminator 5
	lui	a5,%hi(_fsymp_level_blog_testc2)
	.loc 1 50 165 discriminator 5
	lw	a4,%lo(_fsymp_level_blog_testc2)(a5)
	li	a5,2
	bgtu	a4,a5,.L110
	.loc 1 50 217 is_stmt 1 discriminator 7
	.loc 1 50 284 is_stmt 0 discriminator 7
	call	xPortIsInsideInterrupt
.LVL82:
	.loc 1 50 217 discriminator 7
	beq	a0,zero,.L112
	.loc 1 50 313 discriminator 9
	call	xTaskGetTickCountFromISR
.LVL83:
.L142:
	.loc 1 50 344 discriminator 10
	mv	a1,a0
	.loc 1 50 217 discriminator 10
	lui	a0,%hi(.LC14)
	li	a4,50
	addi	a3,s1,%lo(.LC1)
	addi	a2,s5,%lo(.LC4)
	addi	a0,a0,%lo(.LC14)
	call	bl_printk
.LVL84:
	j	.L109
.L86:
	.loc 1 44 301 discriminator 8
	call	xTaskGetTickCount
.LVL85:
	j	.L137
.L92:
	.loc 1 45 312 discriminator 8
	call	xTaskGetTickCount
.LVL86:
	j	.L138
.L97:
	.loc 1 46 312 discriminator 8
	call	xTaskGetTickCount
.LVL87:
	j	.L139
.L100:
	.loc 1 47 316 discriminator 8
	call	xTaskGetTickCount
.LVL88:
	j	.L140
.L103:
	.loc 1 49 188 discriminator 5
	lui	a4,%hi(_fsymp_level_blog_testc2)
	.loc 1 49 167 discriminator 5
	lw	a4,%lo(_fsymp_level_blog_testc2)(a4)
	bgtu	a4,a5,.L104
	.loc 1 49 220 is_stmt 1 discriminator 7
	.loc 1 49 288 is_stmt 0 discriminator 7
	call	xPortIsInsideInterrupt
.LVL89:
	.loc 1 49 220 discriminator 7
	beq	a0,zero,.L106
	.loc 1 49 317 discriminator 9
	call	xTaskGetTickCountFromISR
.LVL90:
.L141:
	.loc 1 49 348 discriminator 10
	mv	a1,a0
	.loc 1 49 220 discriminator 10
	lui	a2,%hi(.LC2)
	lui	a0,%hi(.LC13)
	li	a4,49
	addi	a3,s1,%lo(.LC1)
	addi	a2,a2,%lo(.LC2)
	addi	a0,a0,%lo(.LC13)
	call	bl_printk
.LVL91:
.L102:
	.loc 1 49 417 is_stmt 1 discriminator 1
	.loc 1 49 428 discriminator 1
	.loc 1 50 9 discriminator 1
	.loc 1 50 47 discriminator 1
	.loc 1 50 52 discriminator 1
	.loc 1 50 55 is_stmt 0 discriminator 1
	lw	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,2
	bleu	a4,a5,.L108
.L109:
	.loc 1 50 426 is_stmt 1 discriminator 1
	.loc 1 50 437 discriminator 1
	.loc 1 51 9 discriminator 1
	.loc 1 51 47 discriminator 1
	.loc 1 51 52 discriminator 1
	.loc 1 51 55 is_stmt 0 discriminator 1
	lw	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,3
	bgtu	a4,a5,.L114
.L105:
	.loc 1 51 101
	lw	a4,%lo(_fsymf_level_blog_testcblog_testc2_full)(s2)
	li	a5,3
	bgtu	a4,a5,.L111
.L110:
	.loc 1 51 185 discriminator 5
	lui	a5,%hi(_fsymp_level_blog_testc2)
	.loc 1 51 165 discriminator 5
	lw	a4,%lo(_fsymp_level_blog_testc2)(a5)
	li	a5,3
	bgtu	a4,a5,.L115
	.loc 1 51 217 is_stmt 1 discriminator 7
	.loc 1 51 284 is_stmt 0 discriminator 7
	call	xPortIsInsideInterrupt
.LVL92:
	.loc 1 51 217 discriminator 7
	beq	a0,zero,.L117
	.loc 1 51 313 discriminator 9
	call	xTaskGetTickCountFromISR
.LVL93:
.L143:
	.loc 1 51 344 discriminator 10
	mv	a1,a0
	.loc 1 51 217 discriminator 10
	lui	a0,%hi(.LC15)
	li	a4,51
	addi	a3,s1,%lo(.LC1)
	addi	a2,s4,%lo(.LC5)
	addi	a0,a0,%lo(.LC15)
	call	bl_printk
.LVL94:
.L114:
	.loc 1 51 426 is_stmt 1 discriminator 1
	.loc 1 51 437 discriminator 1
	.loc 1 52 9 discriminator 1
	.loc 1 52 47 discriminator 1
	.loc 1 52 52 discriminator 1
	.loc 1 52 55 is_stmt 0 discriminator 1
	lw	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,4
	bgtu	a4,a5,.L119
.L111:
	.loc 1 52 102
	lw	a4,%lo(_fsymf_level_blog_testcblog_testc2_full)(s2)
	li	a5,4
	bgtu	a4,a5,.L116
.L115:
	.loc 1 52 188 discriminator 5
	lui	a5,%hi(_fsymp_level_blog_testc2)
	.loc 1 52 167 discriminator 5
	lw	a4,%lo(_fsymp_level_blog_testc2)(a5)
	li	a5,4
	bgtu	a4,a5,.L120
	.loc 1 52 220 is_stmt 1 discriminator 7
	.loc 1 52 288 is_stmt 0 discriminator 7
	call	xPortIsInsideInterrupt
.LVL95:
	.loc 1 52 220 discriminator 7
	beq	a0,zero,.L122
	.loc 1 52 317 discriminator 9
	call	xTaskGetTickCountFromISR
.LVL96:
.L144:
	.loc 1 52 348 discriminator 10
	mv	a1,a0
	.loc 1 52 220 discriminator 10
	lui	a0,%hi(.LC16)
	li	a4,52
	addi	a3,s1,%lo(.LC1)
	addi	a2,s3,%lo(.LC6)
	addi	a0,a0,%lo(.LC16)
	call	bl_printk
.LVL97:
.L119:
	.loc 1 52 431 is_stmt 1 discriminator 1
	.loc 1 52 442 discriminator 1
	.loc 1 53 9 discriminator 1
	.loc 1 53 47 discriminator 1
	.loc 1 53 52 discriminator 1
	.loc 1 53 55 is_stmt 0 discriminator 1
	lw	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,5
	bgtu	a4,a5,.L81
.L116:
	.loc 1 53 103
	lw	a4,%lo(_fsymf_level_blog_testcblog_testc2_full)(s2)
	li	a5,5
	bgtu	a4,a5,.L81
.L120:
	.loc 1 53 191 discriminator 5
	lui	a5,%hi(_fsymp_level_blog_testc2)
	.loc 1 53 169 discriminator 5
	lw	a4,%lo(_fsymp_level_blog_testc2)(a5)
	li	a5,5
	bgtu	a4,a5,.L81
	.loc 1 53 223 is_stmt 1 discriminator 7
	.loc 1 53 292 is_stmt 0 discriminator 7
	call	xPortIsInsideInterrupt
.LVL98:
	.loc 1 53 223 discriminator 7
	beq	a0,zero,.L124
	.loc 1 53 321 discriminator 9
	call	xTaskGetTickCountFromISR
.LVL99:
.L145:
	.loc 1 53 352 discriminator 10
	mv	a1,a0
	.loc 1 53 223 discriminator 10
	lui	a2,%hi(.LC17)
	lui	a0,%hi(.LC18)
	li	a4,53
	addi	a3,s1,%lo(.LC1)
	addi	a2,a2,%lo(.LC17)
	addi	a0,a0,%lo(.LC18)
	call	bl_printk
.LVL100:
	j	.L81
.L106:
	.loc 1 49 348 discriminator 10
	call	xTaskGetTickCount
.LVL101:
	j	.L141
.L112:
	.loc 1 50 344 discriminator 10
	call	xTaskGetTickCount
.LVL102:
	j	.L142
.L117:
	.loc 1 51 344 discriminator 10
	call	xTaskGetTickCount
.LVL103:
	j	.L143
.L122:
	.loc 1 52 348 discriminator 10
	call	xTaskGetTickCount
.LVL104:
	j	.L144
.L124:
	.loc 1 53 352 discriminator 10
	call	xTaskGetTickCount
.LVL105:
	j	.L145
	.cfi_endproc
.LFE5:
	.size	blog_testc2_entry, .-blog_testc2_entry
	.section	.rodata.blog_testc2_init.str1.4,"aMS",@progbits,1
	.align	2
.LC19:
	.string	"blog_testc2"
	.section	.text.blog_testc2_init,"ax",@progbits
	.align	1
	.globl	blog_testc2_init
	.type	blog_testc2_init, @function
blog_testc2_init:
.LFB6:
	.loc 1 58 1 is_stmt 1
	.cfi_startproc
	.loc 1 59 5
	li	a3,4096
	lui	a1,%hi(blog_testc2_entry)
	lui	a0,%hi(.LC19)
	.loc 1 58 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 59 5
	addi	a3,a3,-2048
	li	a2,0
	addi	a1,a1,%lo(blog_testc2_entry)
	addi	a0,a0,%lo(.LC19)
	.loc 1 58 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 59 5
	call	aos_task_new
.LVL106:
	.loc 1 61 5 is_stmt 1
	.loc 1 62 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	blog_testc2_init, .-blog_testc2_init
	.globl	_fsymp_info_blog_testc2
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC20:
	.string	"blog_testc.blog_testc2_full.blog_testc2"
	.comm	_fsymp_level_blog_testc2,4,4
	.globl	_fsymf_info_blog_testcblog_testc2_full
	.align	2
.LC21:
	.string	"blog_testc.blog_testc2_full"
	.comm	_fsymf_level_blog_testcblog_testc2_full,4,4
	.align	2
.LC22:
	.string	"blog_testc"
	.weak	_fsymc_level_blog_testc
	.section	.bss.buf.0,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	buf.0, @object
	.size	buf.0, 256
buf.0:
	.zero	256
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
	.word	.LC22
	.section	.static_blogfile_code.blog_testcblog_testc2_full,"a"
	.align	2
	.type	_fsymf_info_blog_testcblog_testc2_full, @object
	.size	_fsymf_info_blog_testcblog_testc2_full, 8
_fsymf_info_blog_testcblog_testc2_full:
	.word	_fsymf_level_blog_testcblog_testc2_full
	.word	.LC21
	.section	.static_blogpri_code.blog_testc2,"a"
	.align	2
	.type	_fsymp_info_blog_testc2, @object
	.size	_fsymp_info_blog_testc2, 8
_fsymp_info_blog_testc2:
	.word	_fsymp_level_blog_testc2
	.word	.LC20
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
	.4byte	0xa94
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF41
	.byte	0xc
	.4byte	.LASF42
	.4byte	.LASF43
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x38
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
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x60
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
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
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x54
	.byte	0x7
	.4byte	0x9e
	.byte	0x8
	.4byte	.LASF44
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x4
	.byte	0x22
	.byte	0xe
	.4byte	0xec
	.byte	0x9
	.4byte	.LASF14
	.byte	0
	.byte	0x9
	.4byte	.LASF15
	.byte	0x1
	.byte	0x9
	.4byte	.LASF16
	.byte	0x2
	.byte	0x9
	.4byte	.LASF17
	.byte	0x3
	.byte	0x9
	.4byte	.LASF18
	.byte	0x4
	.byte	0x9
	.4byte	.LASF19
	.byte	0x5
	.byte	0x9
	.4byte	.LASF20
	.byte	0x6
	.byte	0
	.byte	0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0x2a
	.byte	0x3
	.4byte	0xaf
	.byte	0xa
	.4byte	.LASF45
	.byte	0x8
	.byte	0x4
	.byte	0x2c
	.byte	0x10
	.4byte	0x120
	.byte	0xb
	.4byte	.LASF22
	.byte	0x4
	.byte	0x2d
	.byte	0x13
	.4byte	0x120
	.byte	0
	.byte	0xb
	.4byte	.LASF23
	.byte	0x4
	.byte	0x2e
	.byte	0xb
	.4byte	0x85
	.byte	0x4
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xec
	.byte	0x3
	.4byte	.LASF24
	.byte	0x4
	.byte	0x2f
	.byte	0x3
	.4byte	0xf8
	.byte	0x7
	.4byte	0x126
	.byte	0xc
	.4byte	.LASF25
	.byte	0x5
	.byte	0x38
	.byte	0x1b
	.4byte	0xaa
	.byte	0x5
	.byte	0x3
	.4byte	BLOG_HARD_DECLARE_DISABLE
	.byte	0xd
	.4byte	.LASF27
	.byte	0x5
	.byte	0x45
	.byte	0x12
	.4byte	0xec
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_level_blog_testc
	.byte	0xc
	.4byte	.LASF26
	.byte	0x5
	.byte	0x46
	.byte	0x1e
	.4byte	0x132
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_info_blog_testc
	.byte	0xd
	.4byte	.LASF28
	.byte	0x5
	.byte	0x53
	.byte	0x12
	.4byte	0xec
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_level_blog_testcblog_testc2_full
	.byte	0xd
	.4byte	.LASF29
	.byte	0x5
	.byte	0x54
	.byte	0x17
	.4byte	0x132
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_info_blog_testcblog_testc2_full
	.byte	0xd
	.4byte	.LASF30
	.byte	0x1
	.byte	0x7
	.byte	0xe
	.4byte	0xec
	.byte	0x5
	.byte	0x3
	.4byte	_fsymp_level_blog_testc2
	.byte	0xd
	.4byte	.LASF31
	.byte	0x1
	.byte	0x7
	.byte	0x3a
	.4byte	0x132
	.byte	0x5
	.byte	0x3
	.4byte	_fsymp_info_blog_testc2
	.byte	0xe
	.4byte	.LASF46
	.byte	0x1
	.byte	0x39
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x1f8
	.byte	0xf
	.4byte	.LVL106
	.4byte	0xa3f
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	blog_testc2_entry
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
	.4byte	.LASF32
	.byte	0x1
	.byte	0x18
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x782
	.byte	0x12
	.string	"arg"
	.byte	0x1
	.byte	0x18
	.byte	0x1e
	.4byte	0x83
	.4byte	.LLST1
	.byte	0x13
	.4byte	.LVL31
	.4byte	0xa4b
	.4byte	0x233
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x1388
	.byte	0
	.byte	0x14
	.4byte	.LVL32
	.4byte	0xa58
	.byte	0x14
	.4byte	.LVL33
	.4byte	0xa64
	.byte	0x13
	.4byte	.LVL34
	.4byte	0xa71
	.4byte	0x273
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x10
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x4d
	.byte	0
	.byte	0x14
	.4byte	.LVL35
	.4byte	0xa58
	.byte	0x14
	.4byte	.LVL36
	.4byte	0xa64
	.byte	0x13
	.4byte	.LVL37
	.4byte	0xa71
	.4byte	0x2b3
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x10
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x4c
	.byte	0
	.byte	0x14
	.4byte	.LVL38
	.4byte	0xa58
	.byte	0x14
	.4byte	.LVL39
	.4byte	0xa64
	.byte	0x13
	.4byte	.LVL40
	.4byte	0xa71
	.4byte	0x2f3
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
	.4byte	.LC5
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x10
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x4e
	.byte	0
	.byte	0x14
	.4byte	.LVL41
	.4byte	0xa58
	.byte	0x14
	.4byte	.LVL42
	.4byte	0xa64
	.byte	0x13
	.4byte	.LVL43
	.4byte	0xa71
	.4byte	0x333
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x10
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x4f
	.byte	0
	.byte	0x14
	.4byte	.LVL44
	.4byte	0xa58
	.byte	0x14
	.4byte	.LVL45
	.4byte	0xa64
	.byte	0x13
	.4byte	.LVL46
	.4byte	0xa71
	.4byte	0x374
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x10
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x22
	.byte	0
	.byte	0x14
	.4byte	.LVL47
	.4byte	0xa7d
	.byte	0x14
	.4byte	.LVL48
	.4byte	0xa7d
	.byte	0x14
	.4byte	.LVL49
	.4byte	0xa7d
	.byte	0x14
	.4byte	.LVL50
	.4byte	0xa7d
	.byte	0x14
	.4byte	.LVL51
	.4byte	0xa58
	.byte	0x14
	.4byte	.LVL52
	.4byte	0xa64
	.byte	0x13
	.4byte	.LVL53
	.4byte	0xa71
	.4byte	0x3d9
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x10
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x21
	.byte	0
	.byte	0x14
	.4byte	.LVL54
	.4byte	0xa58
	.byte	0x14
	.4byte	.LVL55
	.4byte	0xa64
	.byte	0x13
	.4byte	.LVL56
	.4byte	0xa71
	.4byte	0x41a
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC15
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
	.4byte	.LC1
	.byte	0x10
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x23
	.byte	0
	.byte	0x14
	.4byte	.LVL57
	.4byte	0xa58
	.byte	0x14
	.4byte	.LVL58
	.4byte	0xa64
	.byte	0x13
	.4byte	.LVL59
	.4byte	0xa71
	.4byte	0x45b
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x10
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x24
	.byte	0
	.byte	0x14
	.4byte	.LVL60
	.4byte	0xa58
	.byte	0x14
	.4byte	.LVL61
	.4byte	0xa64
	.byte	0x13
	.4byte	.LVL62
	.4byte	0xa71
	.4byte	0x49c
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC18
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x10
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x25
	.byte	0
	.byte	0x13
	.4byte	.LVL63
	.4byte	0xa4b
	.4byte	0x4b1
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x1388
	.byte	0
	.byte	0x14
	.4byte	.LVL64
	.4byte	0x782
	.byte	0x14
	.4byte	.LVL65
	.4byte	0xa58
	.byte	0x14
	.4byte	.LVL66
	.4byte	0xa64
	.byte	0x13
	.4byte	.LVL67
	.4byte	0xa71
	.4byte	0x4fb
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x10
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x2d
	.byte	0
	.byte	0x14
	.4byte	.LVL68
	.4byte	0xa7d
	.byte	0x14
	.4byte	.LVL69
	.4byte	0xa7d
	.byte	0x14
	.4byte	.LVL70
	.4byte	0xa7d
	.byte	0x14
	.4byte	.LVL71
	.4byte	0xa7d
	.byte	0x14
	.4byte	.LVL72
	.4byte	0xa7d
	.byte	0x14
	.4byte	.LVL73
	.4byte	0xa58
	.byte	0x14
	.4byte	.LVL74
	.4byte	0xa64
	.byte	0x13
	.4byte	.LVL75
	.4byte	0xa71
	.4byte	0x569
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x10
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x2c
	.byte	0
	.byte	0x14
	.4byte	.LVL76
	.4byte	0xa58
	.byte	0x14
	.4byte	.LVL77
	.4byte	0xa64
	.byte	0x13
	.4byte	.LVL78
	.4byte	0xa71
	.4byte	0x5aa
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
	.4byte	.LC5
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x10
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x2e
	.byte	0
	.byte	0x14
	.4byte	.LVL79
	.4byte	0xa58
	.byte	0x14
	.4byte	.LVL80
	.4byte	0xa64
	.byte	0x13
	.4byte	.LVL81
	.4byte	0xa71
	.4byte	0x5eb
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x10
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x2f
	.byte	0
	.byte	0x14
	.4byte	.LVL82
	.4byte	0xa58
	.byte	0x14
	.4byte	.LVL83
	.4byte	0xa64
	.byte	0x13
	.4byte	.LVL84
	.4byte	0xa71
	.4byte	0x62c
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x10
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.byte	0x14
	.4byte	.LVL85
	.4byte	0xa7d
	.byte	0x14
	.4byte	.LVL86
	.4byte	0xa7d
	.byte	0x14
	.4byte	.LVL87
	.4byte	0xa7d
	.byte	0x14
	.4byte	.LVL88
	.4byte	0xa7d
	.byte	0x14
	.4byte	.LVL89
	.4byte	0xa58
	.byte	0x14
	.4byte	.LVL90
	.4byte	0xa64
	.byte	0x13
	.4byte	.LVL91
	.4byte	0xa71
	.4byte	0x691
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x10
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x31
	.byte	0
	.byte	0x14
	.4byte	.LVL92
	.4byte	0xa58
	.byte	0x14
	.4byte	.LVL93
	.4byte	0xa64
	.byte	0x13
	.4byte	.LVL94
	.4byte	0xa71
	.4byte	0x6d2
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC15
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
	.4byte	.LC1
	.byte	0x10
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x33
	.byte	0
	.byte	0x14
	.4byte	.LVL95
	.4byte	0xa58
	.byte	0x14
	.4byte	.LVL96
	.4byte	0xa64
	.byte	0x13
	.4byte	.LVL97
	.4byte	0xa71
	.4byte	0x713
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x10
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x34
	.byte	0
	.byte	0x14
	.4byte	.LVL98
	.4byte	0xa58
	.byte	0x14
	.4byte	.LVL99
	.4byte	0xa64
	.byte	0x13
	.4byte	.LVL100
	.4byte	0xa71
	.4byte	0x754
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC18
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x10
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x35
	.byte	0
	.byte	0x14
	.4byte	.LVL101
	.4byte	0xa7d
	.byte	0x14
	.4byte	.LVL102
	.4byte	0xa7d
	.byte	0x14
	.4byte	.LVL103
	.4byte	0xa7d
	.byte	0x14
	.4byte	.LVL104
	.4byte	0xa7d
	.byte	0x14
	.4byte	.LVL105
	.4byte	0xa7d
	.byte	0
	.byte	0x11
	.4byte	.LASF33
	.byte	0x1
	.byte	0x9
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0xa2f
	.byte	0x15
	.string	"i"
	.byte	0x1
	.byte	0xb
	.byte	0x9
	.4byte	0x75
	.4byte	.LLST0
	.byte	0x16
	.string	"buf"
	.byte	0x1
	.byte	0xc
	.byte	0x14
	.4byte	0xa2f
	.byte	0x5
	.byte	0x3
	.4byte	buf.0
	.byte	0x14
	.4byte	.LVL4
	.4byte	0xa58
	.byte	0x14
	.4byte	.LVL5
	.4byte	0xa64
	.byte	0x13
	.4byte	.LVL6
	.4byte	0xa71
	.4byte	0x801
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x10
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x43
	.byte	0x10
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x13
	.4byte	.LVL7
	.4byte	0xa8a
	.4byte	0x82d
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.byte	0x14
	.4byte	.LVL8
	.4byte	0xa58
	.byte	0x14
	.4byte	.LVL9
	.4byte	0xa64
	.byte	0x13
	.4byte	.LVL10
	.4byte	0xa71
	.4byte	0x876
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x10
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x42
	.byte	0x10
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x13
	.4byte	.LVL11
	.4byte	0xa8a
	.4byte	0x8a2
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.byte	0x14
	.4byte	.LVL12
	.4byte	0xa58
	.byte	0x14
	.4byte	.LVL13
	.4byte	0xa64
	.byte	0x13
	.4byte	.LVL14
	.4byte	0xa71
	.4byte	0x8eb
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
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
	.4byte	.LC1
	.byte	0x10
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x44
	.byte	0x10
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x13
	.4byte	.LVL15
	.4byte	0xa8a
	.4byte	0x917
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.byte	0x14
	.4byte	.LVL16
	.4byte	0xa58
	.byte	0x14
	.4byte	.LVL17
	.4byte	0xa64
	.byte	0x13
	.4byte	.LVL18
	.4byte	0xa71
	.4byte	0x960
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x10
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x45
	.byte	0x10
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x13
	.4byte	.LVL19
	.4byte	0xa8a
	.4byte	0x98c
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.byte	0x14
	.4byte	.LVL20
	.4byte	0xa58
	.byte	0x14
	.4byte	.LVL21
	.4byte	0xa64
	.byte	0x13
	.4byte	.LVL22
	.4byte	0xa71
	.4byte	0x9d5
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
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
	.4byte	.LC1
	.byte	0x10
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x46
	.byte	0x10
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x17
	.4byte	.LVL23
	.4byte	0xa8a
	.4byte	0xa01
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.byte	0x14
	.4byte	.LVL24
	.4byte	0xa7d
	.byte	0x14
	.4byte	.LVL25
	.4byte	0xa7d
	.byte	0x14
	.4byte	.LVL26
	.4byte	0xa7d
	.byte	0x14
	.4byte	.LVL27
	.4byte	0xa7d
	.byte	0x14
	.4byte	.LVL28
	.4byte	0xa7d
	.byte	0
	.byte	0x18
	.4byte	0x92
	.4byte	0xa3f
	.byte	0x19
	.4byte	0x7c
	.byte	0xff
	.byte	0
	.byte	0x1a
	.4byte	.LASF34
	.4byte	.LASF34
	.byte	0x6
	.byte	0x47
	.byte	0x9
	.byte	0x1b
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x6
	.2byte	0x207
	.byte	0xa
	.byte	0x1a
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x7
	.byte	0x98
	.byte	0xc
	.byte	0x1b
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x8
	.2byte	0x558
	.byte	0xc
	.byte	0x1a
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x9
	.byte	0x81
	.byte	0x6
	.byte	0x1b
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x8
	.2byte	0x547
	.byte	0xc
	.byte	0x1b
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x5
	.2byte	0x155
	.byte	0xa
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x17
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
	.byte	0x18
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x1b
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
.LLST1:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL30
	.4byte	.LFE5
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
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF8:
	.string	"long long int"
.LASF21:
	.string	"blog_level_t"
.LASF5:
	.string	"__uint8_t"
.LASF26:
	.string	"_fsymc_info_blog_testc"
.LASF19:
	.string	"BLOG_LEVEL_ASSERT"
.LASF30:
	.string	"_fsymp_level_blog_testc2"
.LASF24:
	.string	"blog_info_t"
.LASF43:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/blog_testc"
.LASF46:
	.string	"blog_testc2_init"
.LASF31:
	.string	"_fsymp_info_blog_testc2"
.LASF27:
	.string	"_fsymc_level_blog_testc"
.LASF1:
	.string	"unsigned char"
.LASF38:
	.string	"bl_printk"
.LASF44:
	.string	"_blog_leve"
.LASF7:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF34:
	.string	"aos_task_new"
.LASF18:
	.string	"BLOG_LEVEL_ERROR"
.LASF17:
	.string	"BLOG_LEVEL_WARN"
.LASF45:
	.string	"_blog_info"
.LASF6:
	.string	"__uint32_t"
.LASF28:
	.string	"_fsymf_level_blog_testcblog_testc2_full"
.LASF29:
	.string	"_fsymf_info_blog_testcblog_testc2_full"
.LASF10:
	.string	"unsigned int"
.LASF14:
	.string	"BLOG_LEVEL_ALL"
.LASF9:
	.string	"long long unsigned int"
.LASF12:
	.string	"uint8_t"
.LASF36:
	.string	"xPortIsInsideInterrupt"
.LASF42:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog_testc/blog_testc2_full.c"
.LASF25:
	.string	"BLOG_HARD_DECLARE_DISABLE"
.LASF16:
	.string	"BLOG_LEVEL_INFO"
.LASF40:
	.string	"blog_hexdump_out"
.LASF22:
	.string	"level"
.LASF41:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF11:
	.string	"char"
.LASF37:
	.string	"xTaskGetTickCountFromISR"
.LASF39:
	.string	"xTaskGetTickCount"
.LASF33:
	.string	"test_buf"
.LASF2:
	.string	"short int"
.LASF32:
	.string	"blog_testc2_entry"
.LASF13:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF15:
	.string	"BLOG_LEVEL_DEBUG"
.LASF23:
	.string	"name"
.LASF20:
	.string	"BLOG_LEVEL_NEVER"
.LASF35:
	.string	"aos_msleep"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
