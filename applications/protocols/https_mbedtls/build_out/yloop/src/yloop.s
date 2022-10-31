	.file	"yloop.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.get_context,"ax",@progbits
	.align	1
	.type	get_context, @function
get_context:
.LFB42:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/src/yloop.c"
	.loc 1 46 1
	.cfi_startproc
	.loc 1 47 5
.LBB28:
.LBB29:
	.loc 1 42 5
.LBE29:
.LBE28:
	.loc 1 46 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s1,4(sp)
	.cfi_offset 9, -12
.LBB32:
.LBB30:
	.loc 1 42 12
	lui	s1,%hi(.LANCHOR0)
	addi	s1,s1,%lo(.LANCHOR0)
	lw	a0,0(s1)
.LBE30:
.LBE32:
	.loc 1 46 1
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
.LBB33:
.LBB31:
	.loc 1 42 12
	call	aos_task_getspecific
.LVL0:
.LBE31:
.LBE33:
	.loc 1 48 5 is_stmt 1
	.loc 1 48 8 is_stmt 0
	bne	a0,zero,.L1
.LBB34:
.LBB35:
	.loc 1 49 9 is_stmt 1
.LVL1:
.LBB36:
.LBB37:
	.loc 1 37 5
.LBE37:
.LBE36:
	.loc 1 49 9 is_stmt 0
	lui	s0,%hi(.LANCHOR1)
	addi	s0,s0,%lo(.LANCHOR1)
.LBB39:
.LBB38:
	.loc 1 37 5
	lw	a1,0(s0)
	lw	a0,0(s1)
.LVL2:
	call	aos_task_setspecific
.LVL3:
.LBE38:
.LBE39:
	.loc 1 50 9 is_stmt 1
	.loc 1 50 16 is_stmt 0
	lw	a0,0(s0)
.L1:
.LBE35:
.LBE34:
	.loc 1 53 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE42:
	.size	get_context, .-get_context
	.section	.text.aos_loop_set_eventfd,"ax",@progbits
	.align	1
	.globl	aos_loop_set_eventfd
	.type	aos_loop_set_eventfd, @function
aos_loop_set_eventfd:
.LFB43:
	.loc 1 56 1 is_stmt 1
	.cfi_startproc
.LVL4:
	.loc 1 57 5
	.loc 1 56 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 56 1
	mv	s0,a0
	.loc 1 57 24
	call	get_context
.LVL5:
	.loc 1 58 5 is_stmt 1
	.loc 1 58 18 is_stmt 0
	sw	s0,16(a0)
	.loc 1 59 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL6:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE43:
	.size	aos_loop_set_eventfd, .-aos_loop_set_eventfd
	.section	.text.aos_loop_get_eventfd,"ax",@progbits
	.align	1
	.globl	aos_loop_get_eventfd
	.type	aos_loop_get_eventfd, @function
aos_loop_get_eventfd:
.LFB44:
	.loc 1 62 1 is_stmt 1
	.cfi_startproc
.LVL7:
	.loc 1 63 5
	.loc 1 63 36 is_stmt 0
	bne	a0,zero,.L9
	.loc 1 62 1 discriminator 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 63 38 discriminator 1
	call	get_context
.LVL8:
	.loc 1 64 5 is_stmt 1 discriminator 1
	.loc 1 65 1 is_stmt 0 discriminator 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	a0,16(a0)
.LVL9:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL10:
.L9:
	.loc 1 64 5 is_stmt 1
	.loc 1 65 1 is_stmt 0
	lw	a0,16(a0)
.LVL11:
	ret
	.cfi_endproc
.LFE44:
	.size	aos_loop_get_eventfd, .-aos_loop_get_eventfd
	.section	.text.aos_current_loop,"ax",@progbits
	.align	1
	.globl	aos_current_loop
	.type	aos_current_loop, @function
aos_current_loop:
.LFB45:
	.loc 1 68 1 is_stmt 1
	.cfi_startproc
	.loc 1 69 5
	.loc 1 69 12 is_stmt 0
	tail	get_context
.LVL12:
	.cfi_endproc
.LFE45:
	.size	aos_current_loop, .-aos_current_loop
	.section	.rodata.aos_loop_init.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"yloopyloop already inited"
	.section	.text.aos_loop_init,"ax",@progbits
	.align	1
	.globl	aos_loop_init
	.type	aos_loop_init, @function
aos_loop_init:
.LFB46:
	.loc 1 73 1 is_stmt 1
	.cfi_startproc
	.loc 1 74 5
.LBB46:
.LBB47:
	.loc 1 42 5
.LBE47:
.LBE46:
	.loc 1 73 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s2,16(sp)
	.cfi_offset 18, -16
.LBB50:
.LBB48:
	.loc 1 42 12
	lui	s2,%hi(.LANCHOR0)
	lw	a0,%lo(.LANCHOR0)(s2)
.LBE48:
.LBE50:
	.loc 1 73 1
	sw	s1,20(sp)
	sw	s3,12(sp)
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	.loc 1 76 9
	lui	s1,%hi(.LANCHOR1)
	.loc 1 73 1
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
.LBB51:
.LBB49:
	.loc 1 42 12
	call	aos_task_getspecific
.LVL13:
.LBE49:
.LBE51:
	.loc 1 76 5 is_stmt 1
	.loc 1 76 8 is_stmt 0
	lw	a5,%lo(.LANCHOR1)(s1)
	addi	s3,s2,%lo(.LANCHOR0)
	addi	s1,s1,%lo(.LANCHOR1)
	bne	a5,zero,.L14
	.loc 1 77 9 is_stmt 1
	addi	a0,s2,%lo(.LANCHOR0)
.LVL14:
	call	aos_task_key_create
.LVL15:
.L15:
	.loc 1 83 5
	.loc 1 83 11 is_stmt 0
	li	a0,28
	call	pvPortMalloc
.LVL16:
	mv	s0,a0
.LVL17:
	.loc 1 84 5 is_stmt 1
	.loc 1 84 8 is_stmt 0
	beq	a0,zero,.L17
	.loc 1 85 9 is_stmt 1
	li	a2,28
	li	a1,0
	call	memset
.LVL18:
.L17:
	.loc 1 87 5
	.loc 1 87 8 is_stmt 0
	lw	a5,0(s1)
	bne	a5,zero,.L18
	.loc 1 88 9 is_stmt 1
	.loc 1 88 20 is_stmt 0
	sw	s0,0(s1)
.L18:
	.loc 1 91 5 is_stmt 1
.LVL19:
.LBB52:
.LBB53:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/aos/list.h"
	.loc 2 77 5
	.loc 2 77 29 is_stmt 0
	sw	s0,0(s0)
.LBE53:
.LBE52:
.LBB55:
.LBB56:
	.loc 1 37 5
	lw	a0,0(s3)
.LBE56:
.LBE55:
	.loc 1 92 18
	li	a5,-1
	sw	a5,16(s0)
.LBB59:
.LBB57:
	.loc 1 37 5
	mv	a1,s0
.LBE57:
.LBE59:
.LBB60:
.LBB54:
	.loc 2 77 16
	sw	s0,4(s0)
.LVL20:
.LBE54:
.LBE60:
	.loc 1 92 5 is_stmt 1
	.loc 1 93 5
.LBB61:
.LBB58:
	.loc 1 37 5
	call	aos_task_setspecific
.LVL21:
.LBE58:
.LBE61:
	.loc 1 95 5
	call	aos_event_service_init
.LVL22:
	.loc 1 97 5
	.loc 1 97 12 is_stmt 0
	j	.L13
.LVL23:
.L14:
	mv	s0,a0
	.loc 1 78 12 is_stmt 1
	.loc 1 78 15 is_stmt 0
	beq	a0,zero,.L15
.LVL24:
	.loc 1 79 9 is_stmt 1
	lui	a0,%hi(.LC0)
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL25:
	.loc 1 80 9
.L13:
	.loc 1 98 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	mv	a0,s0
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE46:
	.size	aos_loop_init, .-aos_loop_init
	.section	.rodata.aos_poll_read_fd.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"yloopout of memory"
	.section	.text.aos_poll_read_fd,"ax",@progbits
	.align	1
	.globl	aos_poll_read_fd
	.type	aos_poll_read_fd, @function
aos_poll_read_fd:
.LFB47:
	.loc 1 101 1 is_stmt 1
	.cfi_startproc
.LVL26:
	.loc 1 102 5
	.loc 1 101 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s2,32(sp)
	.cfi_offset 18, -16
	mv	s2,a0
	sw	s5,20(sp)
	sw	s6,16(sp)
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s7,12(sp)
	sw	s8,8(sp)
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.loc 1 101 1
	mv	s5,a1
	mv	s6,a2
	.loc 1 102 24
	call	get_context
.LVL27:
	.loc 1 103 5 is_stmt 1
	.loc 1 103 8 is_stmt 0
	blt	s2,zero,.L30
	.loc 1 109 18
	lbu	s7,22(a0)
	.loc 1 111 16
	li	s8,12
	mv	s0,a0
	.loc 1 107 5 is_stmt 1
	.loc 1 108 5
	.loc 1 109 5
.LVL28:
	.loc 1 111 5
	.loc 1 109 9 is_stmt 0
	addi	s3,s7,1
	.loc 1 111 16
	mul	s4,s3,s8
	mv	a0,s4
.LVL29:
	call	pvPortMalloc
.LVL30:
	mv	s1,a0
.LVL31:
	.loc 1 112 5 is_stmt 1
	.loc 1 112 24 is_stmt 0
	slli	a0,s3,3
	call	pvPortMalloc
.LVL32:
	mv	s3,a0
.LVL33:
	.loc 1 114 5 is_stmt 1
	.loc 1 114 8 is_stmt 0
	beq	s1,zero,.L28
	.loc 1 114 25 discriminator 1
	bne	a0,zero,.L29
.L28:
	.loc 1 115 9 is_stmt 1
	lui	a0,%hi(.LC1)
.LVL34:
	addi	a0,a0,%lo(.LC1)
	call	printf
.LVL35:
	.loc 1 116 9
	mv	a0,s1
	call	vPortFree
.LVL36:
	.loc 1 117 9
	mv	a0,s3
	call	vPortFree
.LVL37:
	.loc 1 118 9
	.loc 1 118 16 is_stmt 0
	li	a0,-12
.LVL38:
.L26:
	.loc 1 144 1
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
.LVL39:
	lw	s3,28(sp)
	.cfi_restore 19
	lw	s4,24(sp)
	.cfi_restore 20
	lw	s5,20(sp)
	.cfi_restore 21
.LVL40:
	lw	s6,16(sp)
	.cfi_restore 22
.LVL41:
	lw	s7,12(sp)
	.cfi_restore 23
	lw	s8,8(sp)
	.cfi_restore 24
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL42:
.L29:
	.cfi_restore_state
	.loc 1 121 5 is_stmt 1
	.loc 1 121 18 is_stmt 0
	li	a2,0
	li	a1,3
	mv	a0,s2
.LVL43:
	call	aos_fcntl
.LVL44:
	.loc 1 122 5 is_stmt 1
	li	a2,16384
	or	a2,a0,a2
	li	a1,4
	mv	a0,s2
.LVL45:
	call	aos_fcntl
.LVL46:
	.loc 1 124 5
	.loc 1 126 5 is_stmt 0
	mul	a2,s7,s8
	.loc 1 124 22
	lbu	a5,22(s0)
	.loc 1 126 5
	lw	a1,12(s0)
	mv	a0,s1
	.loc 1 124 22
	addi	a5,a5,1
	sb	a5,22(s0)
	.loc 1 126 5 is_stmt 1
	.loc 1 134 14 is_stmt 0
	addi	s4,s4,-12
	.loc 1 126 5
	call	memcpy
.LVL47:
	.loc 1 127 5 is_stmt 1
	lw	a0,12(s0)
	call	vPortFree
.LVL48:
	.loc 1 128 5
	.loc 1 130 5 is_stmt 0
	lw	a1,8(s0)
	.loc 1 128 18
	sw	s1,12(s0)
	.loc 1 130 5 is_stmt 1
	slli	a2,s7,3
	mv	a0,s3
	call	memcpy
.LVL49:
	.loc 1 131 5
	lw	a0,8(s0)
	.loc 1 134 14 is_stmt 0
	add	s1,s1,s4
.LVL50:
	.loc 1 131 5
	call	vPortFree
.LVL51:
	.loc 1 132 5 is_stmt 1
	.loc 1 132 18 is_stmt 0
	sw	s3,8(s0)
	.loc 1 134 5 is_stmt 1
.LVL52:
	.loc 1 135 5
	.loc 1 135 20 is_stmt 0
	sw	s2,0(s1)
	.loc 1 136 5 is_stmt 1
	.loc 1 136 28 is_stmt 0
	sw	s6,4(s1)
	.loc 1 137 5 is_stmt 1
	.loc 1 137 18 is_stmt 0
	sw	s5,8(s1)
	.loc 1 139 5 is_stmt 1
	.loc 1 139 19 is_stmt 0
	lhu	a5,20(s0)
	.loc 1 143 12
	li	a0,0
	.loc 1 139 8
	bge	a5,s2,.L26
	.loc 1 140 9 is_stmt 1
	.loc 1 140 23 is_stmt 0
	sh	s2,20(s0)
	j	.L26
.LVL53:
.L30:
	.loc 1 104 16
	li	a0,-22
.LVL54:
	j	.L26
	.cfi_endproc
.LFE47:
	.size	aos_poll_read_fd, .-aos_poll_read_fd
	.section	.text.aos_cancel_poll_read_fd,"ax",@progbits
	.align	1
	.globl	aos_cancel_poll_read_fd
	.type	aos_cancel_poll_read_fd, @function
aos_cancel_poll_read_fd:
.LFB48:
	.loc 1 147 1 is_stmt 1
	.cfi_startproc
.LVL55:
	.loc 1 148 5
	.loc 1 147 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s1,4(sp)
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 147 1
	mv	s1,a0
	.loc 1 148 24
	call	get_context
.LVL56:
	.loc 1 149 5 is_stmt 1
	.loc 1 149 12 is_stmt 0
	lw	a3,12(a0)
	.loc 1 149 8
	beq	a3,zero,.L36
	.loc 1 149 35 discriminator 1
	lbu	a5,22(a0)
	mv	s0,a0
	.loc 1 149 29 discriminator 1
	beq	a5,zero,.L36
	.loc 1 154 12
	li	a4,0
	.loc 1 155 28
	li	a1,12
.L38:
.LVL57:
	.loc 1 154 17 is_stmt 1 discriminator 1
	.loc 1 154 5 is_stmt 0 discriminator 1
	bgt	a5,a4,.L42
	.loc 1 160 5 is_stmt 1
	.loc 1 160 8 is_stmt 0
	bne	a5,a4,.L43
.LVL58:
.L36:
	.loc 1 171 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
.LVL59:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL60:
.L42:
	.cfi_restore_state
	.loc 1 155 9 is_stmt 1
	.loc 1 155 28 is_stmt 0
	mul	a2,a4,a1
	add	a2,a3,a2
	.loc 1 155 12
	lw	a2,0(a2)
	bne	a2,s1,.L39
.L43:
	.loc 1 164 5 is_stmt 1
	.loc 1 164 32 is_stmt 0
	addi	a2,a5,-1
	.loc 1 164 8
	beq	a2,a4,.L41
	.loc 1 165 9 is_stmt 1
	.loc 1 165 30 is_stmt 0
	li	a2,12
	mul	a0,a4,a2
	.loc 1 166 36
	sub	a5,a5,a4
	.loc 1 166 40
	addi	a5,a5,-1
	.loc 1 165 9
	mul	a2,a5,a2
	addi	a1,a0,12
	add	a1,a3,a1
	add	a0,a3,a0
	call	memmove
.LVL61:
.L41:
	.loc 1 170 5 is_stmt 1
	.loc 1 170 22 is_stmt 0
	lbu	a5,22(s0)
	addi	a5,a5,-1
	sb	a5,22(s0)
	j	.L36
.LVL62:
.L39:
	.loc 1 154 40 is_stmt 1 discriminator 2
	.loc 1 154 41 is_stmt 0 discriminator 2
	addi	a4,a4,1
.LVL63:
	j	.L38
	.cfi_endproc
.LFE48:
	.size	aos_cancel_poll_read_fd, .-aos_cancel_poll_read_fd
	.section	.text.aos_post_delayed_action,"ax",@progbits
	.align	1
	.globl	aos_post_delayed_action
	.type	aos_post_delayed_action, @function
aos_post_delayed_action:
.LFB49:
	.loc 1 174 1 is_stmt 1
	.cfi_startproc
.LVL64:
	.loc 1 175 5
	.loc 1 175 8 is_stmt 0
	beq	a1,zero,.L58
	.loc 1 174 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	mv	s3,a1
	mv	s4,a2
	.loc 1 179 5 is_stmt 1
	mv	s1,a0
	.loc 1 179 24 is_stmt 0
	call	get_context
.LVL65:
	mv	s2,a0
.LVL66:
	.loc 1 180 5 is_stmt 1
	.loc 1 180 32 is_stmt 0
	li	a0,32
.LVL67:
	call	pvPortMalloc
.LVL68:
	mv	s0,a0
.LVL69:
	.loc 1 181 5 is_stmt 1
	.loc 1 182 16 is_stmt 0
	li	a0,-12
	.loc 1 181 8
	beq	s0,zero,.L51
	.loc 1 185 5 is_stmt 1
	.loc 1 185 27 is_stmt 0
	call	aos_now_ms
.LVL70:
	.loc 1 185 40
	add	a3,s1,a0
	srai	a5,s1,31
	add	a5,a5,a1
	sltu	a4,a3,s1
	add	a4,a4,a5
	.loc 1 185 25
	sw	a3,8(s0)
	sw	a4,12(s0)
	.loc 1 186 5 is_stmt 1
	.loc 1 186 27 is_stmt 0
	sw	s4,16(s0)
	.loc 1 187 5 is_stmt 1
	.loc 1 187 17 is_stmt 0
	sw	s3,20(s0)
	.loc 1 188 5 is_stmt 1
	.loc 1 188 17 is_stmt 0
	sw	s1,24(s0)
	.loc 1 190 5 is_stmt 1
	.loc 1 192 5
	.loc 1 192 14 is_stmt 0
	lw	a5,4(s2)
.LVL71:
.L53:
	.loc 1 192 119 is_stmt 1 discriminator 1
	.loc 1 192 5 is_stmt 0 discriminator 1
	beq	a5,s2,.L57
	.loc 1 193 9 is_stmt 1
	.loc 1 193 12 is_stmt 0
	lw	a2,12(a5)
	bgt	a2,a4,.L57
	bne	a2,a4,.L54
	lw	a2,8(a5)
	bleu	a2,a3,.L54
.L57:
	.loc 1 198 5 is_stmt 1
.LVL72:
.LBB62:
.LBB63:
	.loc 2 63 5
	.loc 2 63 28 is_stmt 0
	lw	a4,0(a5)
.LVL73:
.LBB64:
.LBB65:
	.loc 2 38 5 is_stmt 1
	.loc 2 38 16 is_stmt 0
	sw	a5,4(s0)
	.loc 2 39 5 is_stmt 1
.LBE65:
.LBE64:
.LBE63:
.LBE62:
	.loc 1 200 12 is_stmt 0
	li	a0,0
.LBB69:
.LBB68:
.LBB67:
.LBB66:
	.loc 2 39 16
	sw	a4,0(s0)
	.loc 2 41 5 is_stmt 1
	.loc 2 41 16 is_stmt 0
	sw	s0,4(a4)
	.loc 2 42 5 is_stmt 1
	.loc 2 42 16 is_stmt 0
	sw	s0,0(a5)
.LVL74:
.LBE66:
.LBE67:
.LBE68:
.LBE69:
	.loc 1 200 5 is_stmt 1
.L51:
	.loc 1 201 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL75:
	lw	s1,20(sp)
	.cfi_restore 9
.LVL76:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL77:
	lw	s3,12(sp)
	.cfi_restore 19
.LVL78:
	lw	s4,8(sp)
	.cfi_restore 20
.LVL79:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL80:
.L54:
	.cfi_restore_state
	.loc 1 192 151 is_stmt 1 discriminator 2
	.loc 1 192 155 is_stmt 0 discriminator 2
	lw	a5,4(a5)
.LVL81:
	j	.L53
.LVL82:
.L58:
	.cfi_def_cfa_offset 0
	.cfi_restore 1
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 18
	.cfi_restore 19
	.cfi_restore 20
	.loc 1 176 16
	li	a0,-22
.LVL83:
	.loc 1 201 1
	ret
	.cfi_endproc
.LFE49:
	.size	aos_post_delayed_action, .-aos_post_delayed_action
	.section	.text.aos_cancel_delayed_action,"ax",@progbits
	.align	1
	.globl	aos_cancel_delayed_action
	.type	aos_cancel_delayed_action, @function
aos_cancel_delayed_action:
.LFB50:
	.loc 1 204 1 is_stmt 1
	.cfi_startproc
.LVL84:
	.loc 1 205 5
	.loc 1 204 1 is_stmt 0
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
	.loc 1 204 1
	mv	s0,a0
	mv	s1,a1
	mv	s2,a2
	.loc 1 205 24
	call	get_context
.LVL85:
	mv	a5,a0
.LVL86:
	.loc 1 206 5 is_stmt 1
	.loc 1 208 5
	.loc 1 208 14 is_stmt 0
	lw	a0,4(a0)
.LVL87:
	.loc 1 209 12
	li	a4,-1
.L65:
	.loc 1 208 119 is_stmt 1 discriminator 1
	.loc 1 208 5 is_stmt 0 discriminator 1
	bne	a0,a5,.L68
	.loc 1 225 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL88:
	lw	s1,4(sp)
	.cfi_restore 9
.LVL89:
	lw	s2,0(sp)
	.cfi_restore 18
.LVL90:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL91:
.L68:
	.cfi_restore_state
	.loc 1 209 9 is_stmt 1
	.loc 1 209 12 is_stmt 0
	beq	s0,a4,.L66
	.loc 1 209 22 discriminator 1
	lw	a3,24(a0)
	bne	a3,s0,.L67
.L66:
	.loc 1 213 9 is_stmt 1
	.loc 1 213 12 is_stmt 0
	lw	a3,20(a0)
	bne	a3,s1,.L67
	.loc 1 217 9 is_stmt 1
	.loc 1 217 12 is_stmt 0
	lw	a3,16(a0)
	bne	a3,s2,.L67
	.loc 1 221 9 is_stmt 1
.LVL92:
.LBB72:
.LBB73:
	.loc 2 68 5
	.loc 2 68 14 is_stmt 0
	lw	a4,0(a0)
.LVL93:
	.loc 2 69 5 is_stmt 1
	.loc 2 69 14 is_stmt 0
	lw	a5,4(a0)
.LVL94:
	.loc 2 71 5 is_stmt 1
	.loc 2 71 16 is_stmt 0
	sw	a5,4(a4)
	.loc 2 72 5 is_stmt 1
	.loc 2 72 16 is_stmt 0
	sw	a4,0(a5)
.LVL95:
.LBE73:
.LBE72:
	.loc 1 222 9 is_stmt 1
	.loc 1 225 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL96:
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
.LVL97:
	lw	s2,0(sp)
	.cfi_restore 18
.LVL98:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 222 9
	tail	vPortFree
.LVL99:
.L67:
	.cfi_restore_state
	.loc 1 208 151 is_stmt 1 discriminator 2
	.loc 1 208 155 is_stmt 0 discriminator 2
	lw	a0,4(a0)
.LVL100:
	j	.L65
	.cfi_endproc
.LFE50:
	.size	aos_cancel_delayed_action, .-aos_cancel_delayed_action
	.section	.rodata.aos_loop_run.str1.4,"aMS",@progbits,1
	.align	2
.LC2:
	.string	"yloopaos_poll"
	.section	.text.aos_loop_run,"ax",@progbits
	.align	1
	.globl	aos_loop_run
	.type	aos_loop_run, @function
aos_loop_run:
.LFB51:
	.loc 1 228 1 is_stmt 1
	.cfi_startproc
	.loc 1 229 5
	.loc 1 228 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	sw	s5,4(sp)
	sw	ra,28(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s6,0(sp)
	.cfi_offset 8, -8
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 22, -32
	.loc 1 229 24
	call	get_context
.LVL101:
	mv	s0,a0
.LVL102:
	.loc 1 231 5 is_stmt 1
.LBB83:
	.loc 1 249 49 is_stmt 0
	li	s3,12
	.loc 1 250 36
	li	s4,1
	.loc 1 255 21
	li	s5,4
.L81:
.LBE83:
	.loc 1 231 11 is_stmt 1
	lbu	a5,24(s0)
	bne	a5,zero,.L85
.LVL103:
.LBB91:
.LBB92:
	.loc 2 88 5 discriminator 1
	.loc 2 88 16 is_stmt 0 discriminator 1
	lw	s1,4(s0)
.LVL104:
.LBE92:
.LBE91:
.LBB93:
	.loc 1 234 26 discriminator 1
	lbu	s2,22(s0)
.LBE93:
	.loc 1 231 28 discriminator 1
	bne	s0,s1,.L86
	.loc 1 232 42
	bne	s2,zero,.L86
.L85:
	.loc 1 285 5 is_stmt 1
	.loc 1 285 20 is_stmt 0
	sb	zero,24(s0)
	.loc 1 286 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL105:
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
	lw	s5,4(sp)
	.cfi_restore 21
	lw	s6,0(sp)
	.cfi_restore 22
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL106:
.L86:
	.cfi_restore_state
.LBB94:
	.loc 1 233 9 is_stmt 1
	.loc 1 234 9
	.loc 1 235 9
	.loc 1 237 9
.LBE94:
	.loc 2 88 5
.LBB95:
	.loc 1 233 13 is_stmt 0
	li	a2,-1
	.loc 1 237 12
	beq	s0,s1,.L72
.LBB84:
	.loc 1 238 13 is_stmt 1
.LVL107:
	.loc 1 239 13
	.loc 1 239 29 is_stmt 0
	call	aos_now_ms
.LVL108:
	.loc 1 241 13 is_stmt 1
	.loc 1 241 26 is_stmt 0
	lw	a5,12(s1)
	lw	a2,8(s1)
	.loc 1 241 16
	bgt	a5,a1,.L89
	bne	a5,a1,.L88
	bleu	a2,a0,.L88
.L89:
	.loc 1 242 17 is_stmt 1
	.loc 1 242 46 is_stmt 0
	sub	a2,a2,a0
.LVL109:
.L72:
.LBE84:
	.loc 1 248 9 is_stmt 1
	.loc 1 248 16 is_stmt 0
	li	a5,0
.LVL110:
.L74:
	.loc 1 248 21 is_stmt 1 discriminator 1
	.loc 1 249 16 is_stmt 0 discriminator 1
	lw	a0,8(s0)
	.loc 1 248 9 discriminator 1
	blt	a5,s2,.L75
	.loc 1 253 9 is_stmt 1
	.loc 1 253 19 is_stmt 0
	mv	a1,s2
	call	aos_poll
.LVL111:
	mv	s6,a0
.LVL112:
	.loc 1 255 9 is_stmt 1
	.loc 1 255 12 is_stmt 0
	bge	a0,zero,.L76
	.loc 1 255 25 discriminator 1
	call	__errno
.LVL113:
	.loc 1 255 21 discriminator 1
	lw	a5,0(a0)
	beq	a5,s5,.L76
	.loc 1 256 13 is_stmt 1
.LBE95:
	.loc 1 286 1 is_stmt 0
	lw	s0,24(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL114:
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
	lw	s5,4(sp)
	.cfi_restore 21
	lw	s6,0(sp)
	.cfi_restore 22
.LVL115:
.LBB96:
	.loc 1 256 13
	lui	a0,%hi(.LC2)
.LBE96:
	.loc 1 286 1
.LBB97:
	.loc 1 256 13
	addi	a0,a0,%lo(.LC2)
.LBE97:
	.loc 1 286 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LBB98:
	.loc 1 256 13
	tail	printf
.LVL116:
.L88:
	.cfi_restore_state
.LBB85:
	.loc 1 244 28
	li	a2,0
	j	.L72
.LVL117:
.L75:
.LBE85:
	.loc 1 249 13 is_stmt 1 discriminator 3
	.loc 1 249 49 is_stmt 0 discriminator 3
	mul	a4,a5,s3
	lw	a3,12(s0)
	slli	a1,a5,3
	.loc 1 249 32 discriminator 3
	add	a0,a0,a1
	.loc 1 248 35 discriminator 3
	addi	a5,a5,1
.LVL118:
	.loc 1 249 49 discriminator 3
	add	a3,a3,a4
	lw	a4,0(a3)
	.loc 1 249 32 discriminator 3
	sw	a4,0(a0)
	.loc 1 250 13 is_stmt 1 discriminator 3
	.loc 1 250 36 is_stmt 0 discriminator 3
	lw	a4,8(s0)
	add	a4,a4,a1
	sh	s4,4(a4)
	.loc 1 248 34 is_stmt 1 discriminator 3
.LVL119:
	j	.L74
.LVL120:
.L76:
	.loc 1 261 9
.LBB86:
.LBB87:
	.loc 2 88 5
	.loc 2 88 16 is_stmt 0
	lw	s1,4(s0)
.LVL121:
.LBE87:
.LBE86:
	.loc 1 261 12
	beq	s0,s1,.L78
.LBB88:
	.loc 1 262 13 is_stmt 1
.LVL122:
	.loc 1 263 13
	.loc 1 263 29 is_stmt 0
	call	aos_now_ms
.LVL123:
	.loc 1 265 13 is_stmt 1
	.loc 1 265 16 is_stmt 0
	lw	a5,12(s1)
	bgt	a5,a1,.L78
	bne	a5,a1,.L90
	lw	a5,8(s1)
	bgtu	a5,a0,.L78
.L90:
	.loc 1 266 17 is_stmt 1
.LVL124:
.LBB89:
.LBB90:
	.loc 2 68 5
	.loc 2 69 14 is_stmt 0
	lw	a5,4(s1)
	.loc 2 68 14
	lw	a4,0(s1)
.LVL125:
	.loc 2 69 5 is_stmt 1
	.loc 2 71 5
	.loc 2 71 16 is_stmt 0
	sw	a5,4(a4)
	.loc 2 72 5 is_stmt 1
	.loc 2 72 16 is_stmt 0
	sw	a4,0(a5)
.LVL126:
.LBE90:
.LBE89:
	.loc 1 267 17 is_stmt 1
	lw	a0,16(s1)
.LVL127:
	lw	a5,20(s1)
	jalr	a5
.LVL128:
	.loc 1 268 17
	mv	a0,s1
	call	vPortFree
.LVL129:
.L78:
.LBE88:
	.loc 1 272 9
	.loc 1 276 16 is_stmt 0
	li	s1,0
	.loc 1 272 12
	ble	s6,zero,.L81
.L82:
.LVL130:
	.loc 1 276 21 is_stmt 1 discriminator 1
	.loc 1 276 9 is_stmt 0 discriminator 1
	beq	s1,s2,.L81
	.loc 1 277 13 is_stmt 1
	.loc 1 277 32 is_stmt 0
	lw	a5,8(s0)
	slli	a4,s1,3
	add	a5,a5,a4
	.loc 1 277 16
	lhu	a5,6(a5)
	andi	a5,a5,1
	beq	a5,zero,.L83
	.loc 1 278 17 is_stmt 1
	.loc 1 278 29 is_stmt 0
	mul	a5,s1,s3
	lw	a4,12(s0)
	add	a5,a4,a5
	.loc 1 278 17
	lw	a4,8(a5)
	lw	a1,4(a5)
	lw	a0,0(a5)
	jalr	a4
.LVL131:
.L83:
	.loc 1 276 34 is_stmt 1 discriminator 2
	.loc 1 276 35 is_stmt 0 discriminator 2
	addi	s1,s1,1
.LVL132:
	j	.L82
.LBE98:
	.cfi_endproc
.LFE51:
	.size	aos_loop_run, .-aos_loop_run
	.section	.text.aos_loop_exit,"ax",@progbits
	.align	1
	.globl	aos_loop_exit
	.type	aos_loop_exit, @function
aos_loop_exit:
.LFB52:
	.loc 1 289 1 is_stmt 1
	.cfi_startproc
	.loc 1 290 5
	.loc 1 289 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 290 24
	call	get_context
.LVL133:
	.loc 1 291 5 is_stmt 1
	.loc 1 291 20 is_stmt 0
	li	a5,1
	sb	a5,24(a0)
	.loc 1 292 1
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE52:
	.size	aos_loop_exit, .-aos_loop_exit
	.section	.text.aos_loop_destroy,"ax",@progbits
	.align	1
	.globl	aos_loop_destroy
	.type	aos_loop_destroy, @function
aos_loop_destroy:
.LFB53:
	.loc 1 295 1 is_stmt 1
	.cfi_startproc
	.loc 1 296 5
.LBB108:
.LBB109:
	.loc 1 42 5
.LBE109:
.LBE108:
	.loc 1 295 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s1,4(sp)
	.cfi_offset 9, -12
.LBB112:
.LBB110:
	.loc 1 42 12
	lui	s1,%hi(.LANCHOR0)
	lw	a0,%lo(.LANCHOR0)(s1)
.LBE110:
.LBE112:
	.loc 1 295 1
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
.LBB113:
.LBB111:
	.loc 1 42 12
	call	aos_task_getspecific
.LVL134:
.LBE111:
.LBE113:
	.loc 1 298 5 is_stmt 1
	.loc 1 298 8 is_stmt 0
	beq	a0,zero,.L98
	mv	s0,a0
	.loc 1 302 5
	lw	a0,16(a0)
.LVL135:
	addi	s1,s1,%lo(.LANCHOR0)
	.loc 1 302 5 is_stmt 1
	call	aos_event_service_deinit
.LVL136:
	.loc 1 304 5
.L100:
	.loc 1 304 11
.LBB114:
.LBB115:
	.loc 2 88 5
	.loc 2 88 16 is_stmt 0
	lw	a0,4(s0)
.LVL137:
.LBE115:
.LBE114:
	.loc 1 304 11
	bne	s0,a0,.L101
	.loc 1 311 5 is_stmt 1
	lw	a0,12(s0)
	call	vPortFree
.LVL138:
	.loc 1 312 5
	lw	a0,8(s0)
	call	vPortFree
.LVL139:
	.loc 1 314 5
.LBB116:
.LBB117:
	.loc 1 37 5
	lw	a0,0(s1)
	li	a1,0
	call	aos_task_setspecific
.LVL140:
.LBE117:
.LBE116:
	.loc 1 315 5
	.loc 1 315 13 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	addi	a5,a5,%lo(.LANCHOR1)
	.loc 1 315 8
	lw	a4,0(a5)
	bne	a4,s0,.L102
	.loc 1 316 9 is_stmt 1
	.loc 1 316 20 is_stmt 0
	sw	zero,0(a5)
.L102:
	.loc 1 318 5 is_stmt 1
	mv	a0,s0
	.loc 1 319 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL141:
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 318 5
	tail	vPortFree
.LVL142:
.L101:
	.cfi_restore_state
.LBB118:
	.loc 1 305 9 is_stmt 1
	.loc 1 307 9
.LBB119:
.LBB120:
	.loc 2 68 5
	.loc 2 68 14 is_stmt 0
	lw	a4,0(a0)
.LVL143:
	.loc 2 69 5 is_stmt 1
	.loc 2 69 14 is_stmt 0
	lw	a5,4(a0)
.LVL144:
	.loc 2 71 5 is_stmt 1
	.loc 2 71 16 is_stmt 0
	sw	a5,4(a4)
	.loc 2 72 5 is_stmt 1
	.loc 2 72 16 is_stmt 0
	sw	a4,0(a5)
.LVL145:
.LBE120:
.LBE119:
	.loc 1 308 9 is_stmt 1
	call	vPortFree
.LVL146:
	j	.L100
.LVL147:
.L98:
.LBE118:
	.loc 1 319 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE53:
	.size	aos_loop_destroy, .-aos_loop_destroy
	.globl	g_main_ctx
	.section	.sbss.g_loop_key,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	g_loop_key, @object
	.size	g_loop_key, 4
g_loop_key:
	.zero	4
	.section	.sbss.g_main_ctx,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	g_main_ctx, @object
	.size	g_main_ctx, 4
g_main_ctx:
	.zero	4
	.text
.Letext0:
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/aos/kernel.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/aos/yloop.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/yloop_types.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/yloop.h"
	.file 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h"
	.file 10 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/fs/vfs/include/vfs.h"
	.file 11 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/errno.h"
	.file 12 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 13 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xcff
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF85
	.byte	0xc
	.4byte	.LASF86
	.4byte	.LASF87
	.4byte	.Ldebug_ranges0+0x138
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0xd1
	.byte	0x16
	.4byte	0x38
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
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
	.byte	0x5
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0x2e
	.byte	0x17
	.4byte	0x46
	.byte	0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x31
	.byte	0x1c
	.4byte	0x54
	.byte	0x6
	.byte	0x4
	.4byte	0x9e
	.byte	0x7
	.4byte	0xa9
	.byte	0x8
	.4byte	0x77
	.byte	0
	.byte	0x9
	.4byte	.LASF20
	.byte	0x8
	.byte	0x2
	.byte	0x1f
	.byte	0x10
	.4byte	0xd1
	.byte	0xa
	.4byte	.LASF13
	.byte	0x2
	.byte	0x20
	.byte	0x15
	.4byte	0xd1
	.byte	0
	.byte	0xa
	.4byte	.LASF14
	.byte	0x2
	.byte	0x21
	.byte	0x15
	.4byte	0xd1
	.byte	0x4
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xa9
	.byte	0x3
	.4byte	.LASF15
	.byte	0x2
	.byte	0x22
	.byte	0x3
	.4byte	0xa9
	.byte	0xb
	.4byte	0xd7
	.byte	0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0x28
	.byte	0x1a
	.4byte	0x38
	.byte	0x3
	.4byte	.LASF17
	.byte	0x6
	.byte	0x74
	.byte	0x10
	.4byte	0x98
	.byte	0x3
	.4byte	.LASF18
	.byte	0x6
	.byte	0x76
	.byte	0x10
	.4byte	0x10c
	.byte	0x6
	.byte	0x4
	.4byte	0x112
	.byte	0x7
	.4byte	0x122
	.byte	0x8
	.4byte	0x25
	.byte	0x8
	.4byte	0x77
	.byte	0
	.byte	0x3
	.4byte	.LASF19
	.byte	0x6
	.byte	0xce
	.byte	0xf
	.4byte	0x77
	.byte	0x9
	.4byte	.LASF21
	.byte	0x8
	.byte	0x7
	.byte	0x7
	.byte	0x8
	.4byte	0x162
	.byte	0xc
	.string	"fd"
	.byte	0x7
	.byte	0x8
	.byte	0x9
	.4byte	0x25
	.byte	0
	.byte	0xa
	.4byte	.LASF22
	.byte	0x7
	.byte	0x9
	.byte	0xb
	.4byte	0x4d
	.byte	0x4
	.byte	0xa
	.4byte	.LASF23
	.byte	0x7
	.byte	0xa
	.byte	0xb
	.4byte	0x4d
	.byte	0x6
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x12e
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF24
	.byte	0xd
	.byte	0xc
	.byte	0x8
	.byte	0xa
	.byte	0x9
	.4byte	0x19f
	.byte	0xa
	.4byte	.LASF25
	.byte	0x8
	.byte	0xb
	.byte	0x9
	.4byte	0x25
	.byte	0
	.byte	0xa
	.4byte	.LASF26
	.byte	0x8
	.byte	0xc
	.byte	0xb
	.4byte	0x77
	.byte	0x4
	.byte	0xc
	.string	"cb"
	.byte	0x8
	.byte	0xd
	.byte	0x15
	.4byte	0x100
	.byte	0x8
	.byte	0
	.byte	0x3
	.4byte	.LASF27
	.byte	0x8
	.byte	0xe
	.byte	0x3
	.4byte	0x16f
	.byte	0xd
	.byte	0x1c
	.byte	0x8
	.byte	0x10
	.byte	0x9
	.4byte	0x21d
	.byte	0xa
	.4byte	.LASF28
	.byte	0x8
	.byte	0x11
	.byte	0xd
	.4byte	0xd7
	.byte	0
	.byte	0xa
	.4byte	.LASF29
	.byte	0x8
	.byte	0x12
	.byte	0x14
	.4byte	0x162
	.byte	0x8
	.byte	0xa
	.4byte	.LASF30
	.byte	0x8
	.byte	0x13
	.byte	0x13
	.4byte	0x21d
	.byte	0xc
	.byte	0xa
	.4byte	.LASF31
	.byte	0x8
	.byte	0x14
	.byte	0x9
	.4byte	0x25
	.byte	0x10
	.byte	0xa
	.4byte	.LASF32
	.byte	0x8
	.byte	0x16
	.byte	0xe
	.4byte	0x8c
	.byte	0x14
	.byte	0xa
	.4byte	.LASF33
	.byte	0x8
	.byte	0x17
	.byte	0xd
	.4byte	0x80
	.byte	0x16
	.byte	0xa
	.4byte	.LASF34
	.byte	0x8
	.byte	0x18
	.byte	0x15
	.4byte	0x168
	.byte	0x17
	.byte	0xa
	.4byte	.LASF35
	.byte	0x8
	.byte	0x19
	.byte	0x15
	.4byte	0x168
	.byte	0x18
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x19f
	.byte	0x3
	.4byte	.LASF36
	.byte	0x8
	.byte	0x1a
	.byte	0x3
	.4byte	0x1ab
	.byte	0x9
	.4byte	.LASF37
	.byte	0x20
	.byte	0x1
	.byte	0x17
	.byte	0x10
	.4byte	0x27c
	.byte	0xa
	.4byte	.LASF14
	.byte	0x1
	.byte	0x18
	.byte	0xd
	.4byte	0xd7
	.byte	0
	.byte	0xa
	.4byte	.LASF38
	.byte	0x1
	.byte	0x19
	.byte	0xf
	.4byte	0x69
	.byte	0x8
	.byte	0xa
	.4byte	.LASF26
	.byte	0x1
	.byte	0x1a
	.byte	0xb
	.4byte	0x77
	.byte	0x10
	.byte	0xc
	.string	"cb"
	.byte	0x1
	.byte	0x1b
	.byte	0x10
	.4byte	0xf4
	.byte	0x14
	.byte	0xc
	.string	"ms"
	.byte	0x1
	.byte	0x1c
	.byte	0x9
	.4byte	0x25
	.byte	0x18
	.byte	0
	.byte	0x3
	.4byte	.LASF39
	.byte	0x1
	.byte	0x1d
	.byte	0x3
	.4byte	0x22f
	.byte	0xe
	.4byte	.LASF88
	.byte	0x1
	.byte	0x20
	.byte	0xe
	.4byte	0x29a
	.byte	0x5
	.byte	0x3
	.4byte	g_main_ctx
	.byte	0x6
	.byte	0x4
	.4byte	0x223
	.byte	0xf
	.4byte	.LASF40
	.byte	0x1
	.byte	0x21
	.byte	0x17
	.4byte	0xe8
	.byte	0x5
	.byte	0x3
	.4byte	g_loop_key
	.byte	0x10
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x126
	.byte	0x6
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.byte	0x1
	.byte	0x9c
	.4byte	0x3c4
	.byte	0x11
	.string	"ctx"
	.byte	0x1
	.2byte	0x128
	.byte	0x12
	.4byte	0x29a
	.4byte	.LLST54
	.byte	0x12
	.4byte	.LBB118
	.4byte	.LBE118-.LBB118
	.4byte	0x333
	.byte	0x13
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x131
	.byte	0x1a
	.4byte	0x3c4
	.4byte	.LLST57
	.byte	0x14
	.4byte	0xb4f
	.4byte	.LBB119
	.4byte	.LBE119-.LBB119
	.byte	0x1
	.2byte	0x133
	.byte	0x9
	.4byte	0x329
	.byte	0x15
	.4byte	0xb5c
	.4byte	.LLST58
	.byte	0x16
	.4byte	0xb68
	.4byte	.LLST59
	.byte	0x16
	.4byte	0xb74
	.4byte	.LLST60
	.byte	0
	.byte	0x17
	.4byte	.LVL146
	.4byte	0xc4d
	.byte	0
	.byte	0x18
	.4byte	0xae4
	.4byte	.LBB108
	.4byte	.Ldebug_ranges0+0x118
	.byte	0x1
	.2byte	0x128
	.byte	0x18
	.4byte	0x352
	.byte	0x17
	.4byte	.LVL134
	.4byte	0xc59
	.byte	0
	.byte	0x14
	.4byte	0xb0b
	.4byte	.LBB114
	.4byte	.LBE114-.LBB114
	.byte	0x1
	.2byte	0x130
	.byte	0xd
	.4byte	0x371
	.byte	0x15
	.4byte	0xb1c
	.4byte	.LLST55
	.byte	0
	.byte	0x14
	.4byte	0xaf1
	.4byte	.LBB116
	.4byte	.LBE116-.LBB116
	.byte	0x1
	.2byte	0x13a
	.byte	0x5
	.4byte	0x39f
	.byte	0x15
	.4byte	0xafe
	.4byte	.LLST56
	.byte	0x19
	.4byte	.LVL140
	.4byte	0xc65
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	.LVL136
	.4byte	0xc71
	.byte	0x17
	.4byte	.LVL138
	.4byte	0xc4d
	.byte	0x17
	.4byte	.LVL139
	.4byte	0xc4d
	.byte	0x1b
	.4byte	.LVL142
	.4byte	0xc4d
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x27c
	.byte	0x10
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x120
	.byte	0x6
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.byte	0x1
	.byte	0x9c
	.4byte	0x3fa
	.byte	0x1c
	.string	"ctx"
	.byte	0x1
	.2byte	0x122
	.byte	0x12
	.4byte	0x29a
	.byte	0x1
	.byte	0x5a
	.byte	0x17
	.4byte	.LVL133
	.4byte	0xac6
	.byte	0
	.byte	0x1d
	.4byte	.LASF44
	.byte	0x1
	.byte	0xe3
	.byte	0x6
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.byte	0x1
	.byte	0x9c
	.4byte	0x58c
	.byte	0x1e
	.string	"ctx"
	.byte	0x1
	.byte	0xe5
	.byte	0x12
	.4byte	0x29a
	.4byte	.LLST40
	.byte	0x1f
	.4byte	.Ldebug_ranges0+0xc0
	.4byte	0x564
	.byte	0x20
	.4byte	.LASF45
	.byte	0x1
	.byte	0xe9
	.byte	0xd
	.4byte	0x25
	.4byte	.LLST41
	.byte	0x20
	.4byte	.LASF30
	.byte	0x1
	.byte	0xea
	.byte	0xd
	.4byte	0x25
	.4byte	.LLST42
	.byte	0x1e
	.string	"i"
	.byte	0x1
	.byte	0xeb
	.byte	0xd
	.4byte	0x25
	.4byte	.LLST43
	.byte	0x1e
	.string	"res"
	.byte	0x1
	.byte	0xfd
	.byte	0xd
	.4byte	0x25
	.4byte	.LLST44
	.byte	0x1f
	.4byte	.Ldebug_ranges0+0x100
	.4byte	0x49a
	.byte	0x1e
	.string	"tmo"
	.byte	0x1
	.byte	0xee
	.byte	0x1e
	.4byte	0x3c4
	.4byte	.LLST45
	.byte	0x1e
	.string	"now"
	.byte	0x1
	.byte	0xef
	.byte	0x17
	.4byte	0x69
	.4byte	.LLST46
	.byte	0x17
	.4byte	.LVL108
	.4byte	0xc7d
	.byte	0
	.byte	0x12
	.4byte	.LBB88
	.4byte	.LBE88-.LBB88
	.4byte	0x514
	.byte	0x11
	.string	"tmo"
	.byte	0x1
	.2byte	0x106
	.byte	0x1e
	.4byte	0x3c4
	.4byte	.LLST48
	.byte	0x11
	.string	"now"
	.byte	0x1
	.2byte	0x107
	.byte	0x17
	.4byte	0x69
	.4byte	.LLST49
	.byte	0x14
	.4byte	0xb4f
	.4byte	.LBB89
	.4byte	.LBE89-.LBB89
	.byte	0x1
	.2byte	0x10a
	.byte	0x11
	.4byte	0x4fa
	.byte	0x15
	.4byte	0xb5c
	.4byte	.LLST50
	.byte	0x16
	.4byte	0xb68
	.4byte	.LLST51
	.byte	0x16
	.4byte	0xb74
	.4byte	.LLST52
	.byte	0
	.byte	0x17
	.4byte	.LVL123
	.4byte	0xc7d
	.byte	0x19
	.4byte	.LVL129
	.4byte	0xc4d
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	0xb0b
	.4byte	.LBB86
	.4byte	.LBE86-.LBB86
	.byte	0x1
	.2byte	0x105
	.byte	0xe
	.4byte	0x533
	.byte	0x15
	.4byte	0xb1c
	.4byte	.LLST47
	.byte	0
	.byte	0x21
	.4byte	.LVL111
	.4byte	0xc8a
	.4byte	0x547
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	.LVL113
	.4byte	0xc96
	.byte	0x22
	.4byte	.LVL116
	.4byte	0xca2
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	0xb0b
	.4byte	.LBB91
	.4byte	.LBE91-.LBB91
	.byte	0x1
	.byte	0xe8
	.byte	0xe
	.4byte	0x582
	.byte	0x15
	.4byte	0xb1c
	.4byte	.LLST53
	.byte	0
	.byte	0x17
	.4byte	.LVL101
	.4byte	0xac6
	.byte	0
	.byte	0x24
	.4byte	.LASF46
	.byte	0x1
	.byte	0xcb
	.byte	0x6
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.byte	0x1
	.byte	0x9c
	.4byte	0x633
	.byte	0x25
	.string	"ms"
	.byte	0x1
	.byte	0xcb
	.byte	0x24
	.4byte	0x25
	.4byte	.LLST32
	.byte	0x25
	.string	"cb"
	.byte	0x1
	.byte	0xcb
	.byte	0x33
	.4byte	0xf4
	.4byte	.LLST33
	.byte	0x26
	.4byte	.LASF26
	.byte	0x1
	.byte	0xcb
	.byte	0x3d
	.4byte	0x77
	.4byte	.LLST34
	.byte	0x1e
	.string	"ctx"
	.byte	0x1
	.byte	0xcd
	.byte	0x12
	.4byte	0x29a
	.4byte	.LLST35
	.byte	0x1e
	.string	"tmp"
	.byte	0x1
	.byte	0xce
	.byte	0x16
	.4byte	0x3c4
	.4byte	.LLST36
	.byte	0x23
	.4byte	0xb4f
	.4byte	.LBB72
	.4byte	.LBE72-.LBB72
	.byte	0x1
	.byte	0xdd
	.byte	0x9
	.4byte	0x620
	.byte	0x15
	.4byte	0xb5c
	.4byte	.LLST37
	.byte	0x16
	.4byte	0xb68
	.4byte	.LLST38
	.byte	0x16
	.4byte	0xb74
	.4byte	.LLST39
	.byte	0
	.byte	0x17
	.4byte	.LVL85
	.4byte	0xac6
	.byte	0x1b
	.4byte	.LVL99
	.4byte	0xc4d
	.byte	0
	.byte	0x27
	.4byte	.LASF50
	.byte	0x1
	.byte	0xad
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.byte	0x1
	.byte	0x9c
	.4byte	0x726
	.byte	0x25
	.string	"ms"
	.byte	0x1
	.byte	0xad
	.byte	0x21
	.4byte	0x25
	.4byte	.LLST21
	.byte	0x26
	.4byte	.LASF47
	.byte	0x1
	.byte	0xad
	.byte	0x30
	.4byte	0xf4
	.4byte	.LLST22
	.byte	0x26
	.4byte	.LASF48
	.byte	0x1
	.byte	0xad
	.byte	0x3e
	.4byte	0x77
	.4byte	.LLST23
	.byte	0x1e
	.string	"ctx"
	.byte	0x1
	.byte	0xb3
	.byte	0x12
	.4byte	0x29a
	.4byte	.LLST24
	.byte	0x20
	.4byte	.LASF41
	.byte	0x1
	.byte	0xb4
	.byte	0x16
	.4byte	0x3c4
	.4byte	.LLST25
	.byte	0x1e
	.string	"tmp"
	.byte	0x1
	.byte	0xbe
	.byte	0x16
	.4byte	0x3c4
	.4byte	.LLST26
	.byte	0x28
	.4byte	0xb81
	.4byte	.LBB62
	.4byte	.Ldebug_ranges0+0x90
	.byte	0x1
	.byte	0xc6
	.byte	0x5
	.4byte	0x6ff
	.byte	0x15
	.4byte	0xb9a
	.4byte	.LLST27
	.byte	0x15
	.4byte	0xb8e
	.4byte	.LLST28
	.byte	0x29
	.4byte	0xba7
	.4byte	.LBB64
	.4byte	.Ldebug_ranges0+0xa8
	.byte	0x2
	.byte	0x3f
	.byte	0x5
	.byte	0x15
	.4byte	0xbcc
	.4byte	.LLST29
	.byte	0x15
	.4byte	0xbc0
	.4byte	.LLST30
	.byte	0x15
	.4byte	0xbb4
	.4byte	.LLST31
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	.LVL65
	.4byte	0xac6
	.byte	0x21
	.4byte	.LVL68
	.4byte	0xcae
	.4byte	0x71c
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x17
	.4byte	.LVL70
	.4byte	0xc7d
	.byte	0
	.byte	0x24
	.4byte	.LASF49
	.byte	0x1
	.byte	0x92
	.byte	0x6
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x1
	.byte	0x9c
	.4byte	0x79d
	.byte	0x26
	.4byte	.LASF25
	.byte	0x1
	.byte	0x92
	.byte	0x22
	.4byte	0x25
	.4byte	.LLST16
	.byte	0x26
	.4byte	.LASF47
	.byte	0x1
	.byte	0x92
	.byte	0x38
	.4byte	0x100
	.4byte	.LLST17
	.byte	0x26
	.4byte	.LASF48
	.byte	0x1
	.byte	0x92
	.byte	0x46
	.4byte	0x77
	.4byte	.LLST18
	.byte	0x1e
	.string	"ctx"
	.byte	0x1
	.byte	0x94
	.byte	0x12
	.4byte	0x29a
	.4byte	.LLST19
	.byte	0x1e
	.string	"i"
	.byte	0x1
	.byte	0x99
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST20
	.byte	0x17
	.4byte	.LVL56
	.4byte	0xac6
	.byte	0x17
	.4byte	.LVL61
	.4byte	0xcba
	.byte	0
	.byte	0x27
	.4byte	.LASF51
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x1
	.byte	0x9c
	.4byte	0x92b
	.byte	0x26
	.4byte	.LASF25
	.byte	0x1
	.byte	0x64
	.byte	0x1a
	.4byte	0x25
	.4byte	.LLST8
	.byte	0x25
	.string	"cb"
	.byte	0x1
	.byte	0x64
	.byte	0x30
	.4byte	0x100
	.4byte	.LLST9
	.byte	0x26
	.4byte	.LASF26
	.byte	0x1
	.byte	0x64
	.byte	0x3a
	.4byte	0x77
	.4byte	.LLST10
	.byte	0x1e
	.string	"ctx"
	.byte	0x1
	.byte	0x66
	.byte	0x12
	.4byte	0x29a
	.4byte	.LLST11
	.byte	0x20
	.4byte	.LASF52
	.byte	0x1
	.byte	0x6b
	.byte	0x13
	.4byte	0x21d
	.4byte	.LLST12
	.byte	0x20
	.4byte	.LASF53
	.byte	0x1
	.byte	0x6c
	.byte	0x14
	.4byte	0x162
	.4byte	.LLST13
	.byte	0x1e
	.string	"cnt"
	.byte	0x1
	.byte	0x6d
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST14
	.byte	0x20
	.4byte	.LASF54
	.byte	0x1
	.byte	0x79
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST15
	.byte	0x17
	.4byte	.LVL27
	.4byte	0xac6
	.byte	0x21
	.4byte	.LVL30
	.4byte	0xcae
	.4byte	0x853
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	.LVL32
	.4byte	0xcae
	.4byte	0x869
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x4
	.byte	0x83
	.byte	0
	.byte	0x33
	.byte	0x24
	.byte	0
	.byte	0x21
	.4byte	.LVL35
	.4byte	0xca2
	.4byte	0x880
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0x21
	.4byte	.LVL36
	.4byte	0xc4d
	.4byte	0x894
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	.LVL37
	.4byte	0xc4d
	.4byte	0x8a8
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	.LVL44
	.4byte	0xcc6
	.4byte	0x8c6
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0x1a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x21
	.4byte	.LVL46
	.4byte	0xcc6
	.4byte	0x8df
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0x21
	.4byte	.LVL47
	.4byte	0xcd2
	.4byte	0x8fc
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x1a
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x87
	.byte	0
	.byte	0x88
	.byte	0
	.byte	0x1e
	.byte	0
	.byte	0x17
	.4byte	.LVL48
	.4byte	0xc4d
	.byte	0x21
	.4byte	.LVL49
	.4byte	0xcd2
	.4byte	0x921
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x1a
	.byte	0x1
	.byte	0x5c
	.byte	0x4
	.byte	0x87
	.byte	0
	.byte	0x33
	.byte	0x24
	.byte	0
	.byte	0x17
	.4byte	.LVL51
	.4byte	0xc4d
	.byte	0
	.byte	0x27
	.4byte	.LASF55
	.byte	0x1
	.byte	0x48
	.byte	0xc
	.4byte	0x122
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x1
	.byte	0x9c
	.4byte	0xa21
	.byte	0x1e
	.string	"ctx"
	.byte	0x1
	.byte	0x4a
	.byte	0x12
	.4byte	0x29a
	.4byte	.LLST5
	.byte	0x28
	.4byte	0xae4
	.4byte	.LBB46
	.4byte	.Ldebug_ranges0+0x38
	.byte	0x1
	.byte	0x4a
	.byte	0x18
	.4byte	0x973
	.byte	0x17
	.4byte	.LVL13
	.4byte	0xc59
	.byte	0
	.byte	0x28
	.4byte	0xb2f
	.4byte	.LBB52
	.4byte	.Ldebug_ranges0+0x58
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.4byte	0x991
	.byte	0x15
	.4byte	0xb3c
	.4byte	.LLST6
	.byte	0
	.byte	0x28
	.4byte	0xaf1
	.4byte	.LBB55
	.4byte	.Ldebug_ranges0+0x70
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.4byte	0x9bf
	.byte	0x15
	.4byte	0xafe
	.4byte	.LLST7
	.byte	0x19
	.4byte	.LVL21
	.4byte	0xc65
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	.LVL15
	.4byte	0xcde
	.4byte	0x9d3
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	.LVL16
	.4byte	0xcae
	.4byte	0x9e6
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x4c
	.byte	0
	.byte	0x21
	.4byte	.LVL18
	.4byte	0xcea
	.4byte	0xa04
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x1a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x4c
	.byte	0
	.byte	0x17
	.4byte	.LVL22
	.4byte	0xcf6
	.byte	0x19
	.4byte	.LVL25
	.4byte	0xca2
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.byte	0x27
	.4byte	.LASF56
	.byte	0x1
	.byte	0x43
	.byte	0xc
	.4byte	0x122
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x1
	.byte	0x9c
	.4byte	0xa45
	.byte	0x1b
	.4byte	.LVL12
	.4byte	0xac6
	.byte	0
	.byte	0x27
	.4byte	.LASF57
	.byte	0x1
	.byte	0x3d
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x1
	.byte	0x9c
	.4byte	0xa89
	.byte	0x26
	.4byte	.LASF58
	.byte	0x1
	.byte	0x3d
	.byte	0x20
	.4byte	0x77
	.4byte	.LLST3
	.byte	0x1e
	.string	"ctx"
	.byte	0x1
	.byte	0x3f
	.byte	0x12
	.4byte	0x29a
	.4byte	.LLST4
	.byte	0x17
	.4byte	.LVL8
	.4byte	0xac6
	.byte	0
	.byte	0x24
	.4byte	.LASF59
	.byte	0x1
	.byte	0x37
	.byte	0x6
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x1
	.byte	0x9c
	.4byte	0xac6
	.byte	0x25
	.string	"fd"
	.byte	0x1
	.byte	0x37
	.byte	0x1f
	.4byte	0x25
	.4byte	.LLST2
	.byte	0x2a
	.string	"ctx"
	.byte	0x1
	.byte	0x39
	.byte	0x12
	.4byte	0x29a
	.byte	0x1
	.byte	0x5a
	.byte	0x17
	.4byte	.LVL5
	.4byte	0xac6
	.byte	0
	.byte	0x2b
	.4byte	.LASF60
	.byte	0x1
	.byte	0x2d
	.byte	0x1c
	.4byte	0x29a
	.byte	0x3
	.4byte	0xae4
	.byte	0x2c
	.string	"ctx"
	.byte	0x1
	.byte	0x2f
	.byte	0x12
	.4byte	0x29a
	.byte	0
	.byte	0x2d
	.4byte	.LASF89
	.byte	0x1
	.byte	0x28
	.byte	0x1c
	.4byte	0x29a
	.byte	0x3
	.byte	0x2e
	.4byte	.LASF63
	.byte	0x1
	.byte	0x23
	.byte	0x14
	.byte	0x3
	.4byte	0xb0b
	.byte	0x2f
	.string	"ctx"
	.byte	0x1
	.byte	0x23
	.byte	0x2e
	.4byte	0x29a
	.byte	0
	.byte	0x2b
	.4byte	.LASF61
	.byte	0x2
	.byte	0x56
	.byte	0x13
	.4byte	0x25
	.byte	0x3
	.4byte	0xb29
	.byte	0x30
	.4byte	.LASF62
	.byte	0x2
	.byte	0x56
	.byte	0x2e
	.4byte	0xb29
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xe3
	.byte	0x2e
	.4byte	.LASF64
	.byte	0x2
	.byte	0x4b
	.byte	0x14
	.byte	0x3
	.4byte	0xb49
	.byte	0x30
	.4byte	.LASF65
	.byte	0x2
	.byte	0x4b
	.byte	0x28
	.4byte	0xb49
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xd7
	.byte	0x2e
	.4byte	.LASF66
	.byte	0x2
	.byte	0x42
	.byte	0x14
	.byte	0x3
	.4byte	0xb81
	.byte	0x30
	.4byte	.LASF65
	.byte	0x2
	.byte	0x42
	.byte	0x27
	.4byte	0xb49
	.byte	0x31
	.4byte	.LASF13
	.byte	0x2
	.byte	0x44
	.byte	0xe
	.4byte	0xb49
	.byte	0x31
	.4byte	.LASF14
	.byte	0x2
	.byte	0x45
	.byte	0xe
	.4byte	0xb49
	.byte	0
	.byte	0x2e
	.4byte	.LASF67
	.byte	0x2
	.byte	0x3d
	.byte	0x14
	.byte	0x3
	.4byte	0xba7
	.byte	0x30
	.4byte	.LASF65
	.byte	0x2
	.byte	0x3d
	.byte	0x2c
	.4byte	0xb49
	.byte	0x30
	.4byte	.LASF68
	.byte	0x2
	.byte	0x3d
	.byte	0x3b
	.4byte	0xb49
	.byte	0
	.byte	0x2e
	.4byte	.LASF69
	.byte	0x2
	.byte	0x24
	.byte	0x14
	.byte	0x3
	.4byte	0xbd9
	.byte	0x30
	.4byte	.LASF65
	.byte	0x2
	.byte	0x24
	.byte	0x29
	.4byte	0xb49
	.byte	0x30
	.4byte	.LASF13
	.byte	0x2
	.byte	0x24
	.byte	0x38
	.4byte	0xb49
	.byte	0x30
	.4byte	.LASF14
	.byte	0x2
	.byte	0x24
	.byte	0x47
	.4byte	0xb49
	.byte	0
	.byte	0x32
	.4byte	0xac6
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x1
	.byte	0x9c
	.4byte	0xc4d
	.byte	0x16
	.4byte	0xad7
	.4byte	.LLST0
	.byte	0x28
	.4byte	0xae4
	.4byte	.LBB28
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x2f
	.byte	0x18
	.4byte	0xc13
	.byte	0x17
	.4byte	.LVL0
	.4byte	0xc59
	.byte	0
	.byte	0x33
	.4byte	0xac6
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.byte	0x1
	.byte	0x2d
	.byte	0x1c
	.byte	0x34
	.4byte	0xad7
	.byte	0x29
	.4byte	0xaf1
	.4byte	.LBB36
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0x31
	.byte	0x9
	.byte	0x15
	.4byte	0xafe
	.4byte	.LLST1
	.byte	0x17
	.4byte	.LVL3
	.4byte	0xc65
	.byte	0
	.byte	0
	.byte	0
	.byte	0x35
	.4byte	.LASF70
	.4byte	.LASF70
	.byte	0x9
	.byte	0x94
	.byte	0x6
	.byte	0x35
	.4byte	.LASF71
	.4byte	.LASF71
	.byte	0x5
	.byte	0x89
	.byte	0xb
	.byte	0x35
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0x5
	.byte	0x82
	.byte	0x9
	.byte	0x35
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0x8
	.byte	0x25
	.byte	0x6
	.byte	0x36
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0x5
	.2byte	0x1ef
	.byte	0xf
	.byte	0x35
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0xa
	.byte	0x6c
	.byte	0x5
	.byte	0x35
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0xb
	.byte	0xf
	.byte	0xd
	.byte	0x35
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0xc
	.byte	0xc8
	.byte	0x5
	.byte	0x35
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0x9
	.byte	0x91
	.byte	0x7
	.byte	0x35
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0xd
	.byte	0x20
	.byte	0x8
	.byte	0x35
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0xa
	.byte	0x77
	.byte	0x5
	.byte	0x35
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0xd
	.byte	0x1f
	.byte	0x8
	.byte	0x35
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0x5
	.byte	0x71
	.byte	0x9
	.byte	0x35
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0xd
	.byte	0x21
	.byte	0x8
	.byte	0x35
	.4byte	.LASF84
	.4byte	.LASF84
	.byte	0x8
	.byte	0x22
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
	.byte	0x8
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
	.byte	0xe
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
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x14
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
	.byte	0x15
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
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
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
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
	.byte	0x1e
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
	.byte	0x1f
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x20
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
	.byte	0x21
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
	.byte	0x22
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
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x24
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
	.byte	0x25
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
	.byte	0x26
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
	.byte	0x27
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
	.byte	0x28
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
	.byte	0x29
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
	.byte	0x2a
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
	.byte	0x2b
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
	.byte	0x2c
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
	.byte	0x2d
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
	.byte	0x49
	.byte	0x13
	.byte	0x20
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x2e
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
	.byte	0x2f
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
	.byte	0x30
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
	.byte	0x31
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
	.byte	0x32
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
	.byte	0x33
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
	.byte	0x34
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x35
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
	.byte	0x36
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
.LLST54:
	.4byte	.LVL134
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL135
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL141
	.4byte	.LVL142-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL142
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL147
	.4byte	.LFE53
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL142
	.4byte	.LVL146-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL142
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL143
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL136
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL139
	.4byte	.LVL140
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL102
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL106
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL116
	.4byte	.LFE51
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL106
	.4byte	.LVL109
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL111-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL117
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL106
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL110
	.4byte	.LVL111-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x3
	.byte	0x7f
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL130
	.4byte	.LFE51
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL112
	.4byte	.LVL113-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL113-1
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL120
	.4byte	.LFE51
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL107
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.byte	0x4
	.byte	0x5b
	.byte	0x93
	.byte	0x4
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.byte	0x4
	.byte	0x5b
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL122
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL123
	.4byte	.LVL127
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.byte	0x4
	.byte	0x5b
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL124
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL125
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL125
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL84
	.4byte	.LVL85-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL85-1
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL88
	.4byte	.LVL91
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL91
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL96
	.4byte	.LVL99
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LFE50
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL84
	.4byte	.LVL85-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL85-1
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL89
	.4byte	.LVL91
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL91
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL97
	.4byte	.LVL99
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LFE50
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL84
	.4byte	.LVL85-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL85-1
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL91
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LFE50
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL87
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL99
	.4byte	.LFE50
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL87
	.4byte	.LVL99-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL99
	.4byte	.LFE50
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL92
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL93
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL64
	.4byte	.LVL65-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL65-1
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL76
	.4byte	.LVL80
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL83
	.4byte	.LFE49
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL64
	.4byte	.LVL65-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL65-1
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL78
	.4byte	.LVL80
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL82
	.4byte	.LFE49
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL64
	.4byte	.LVL65-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL65-1
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL82
	.4byte	.LFE49
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL67
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL69
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL71
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL55
	.4byte	.LVL56-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL56-1
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LFE48
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL55
	.4byte	.LVL56-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL56-1
	.4byte	.LFE48
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL55
	.4byte	.LVL56-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL56-1
	.4byte	.LFE48
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL60
	.4byte	.LFE48
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL60
	.4byte	.LVL61-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL62
	.4byte	.LFE48
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL26
	.4byte	.LVL27-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL27-1
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL39
	.4byte	.LVL42
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LFE47
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL26
	.4byte	.LVL27-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL27-1
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LFE47
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL26
	.4byte	.LVL27-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL27-1
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LFE47
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL29
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL42
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL31
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL42
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL34
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL43
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL28
	.4byte	.LVL38
	.2byte	0x8
	.byte	0x87
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL53
	.2byte	0x8
	.byte	0x87
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8-1
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5-1
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL6
	.4byte	.LFE43
	.2byte	0x2
	.byte	0x7a
	.byte	0x10
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL3-1
	.2byte	0x5
	.byte	0x3
	.4byte	g_main_ctx
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x74
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	.LBB32
	.4byte	.LBE32
	.4byte	.LBB33
	.4byte	.LBE33
	.4byte	0
	.4byte	0
	.4byte	.LBB36
	.4byte	.LBE36
	.4byte	.LBB39
	.4byte	.LBE39
	.4byte	0
	.4byte	0
	.4byte	.LBB46
	.4byte	.LBE46
	.4byte	.LBB50
	.4byte	.LBE50
	.4byte	.LBB51
	.4byte	.LBE51
	.4byte	0
	.4byte	0
	.4byte	.LBB52
	.4byte	.LBE52
	.4byte	.LBB60
	.4byte	.LBE60
	.4byte	0
	.4byte	0
	.4byte	.LBB55
	.4byte	.LBE55
	.4byte	.LBB59
	.4byte	.LBE59
	.4byte	.LBB61
	.4byte	.LBE61
	.4byte	0
	.4byte	0
	.4byte	.LBB62
	.4byte	.LBE62
	.4byte	.LBB69
	.4byte	.LBE69
	.4byte	0
	.4byte	0
	.4byte	.LBB64
	.4byte	.LBE64
	.4byte	.LBB67
	.4byte	.LBE67
	.4byte	0
	.4byte	0
	.4byte	.LBB83
	.4byte	.LBE83
	.4byte	.LBB93
	.4byte	.LBE93
	.4byte	.LBB94
	.4byte	.LBE94
	.4byte	.LBB95
	.4byte	.LBE95
	.4byte	.LBB96
	.4byte	.LBE96
	.4byte	.LBB97
	.4byte	.LBE97
	.4byte	.LBB98
	.4byte	.LBE98
	.4byte	0
	.4byte	0
	.4byte	.LBB84
	.4byte	.LBE84
	.4byte	.LBB85
	.4byte	.LBE85
	.4byte	0
	.4byte	0
	.4byte	.LBB108
	.4byte	.LBE108
	.4byte	.LBB112
	.4byte	.LBE112
	.4byte	.LBB113
	.4byte	.LBE113
	.4byte	0
	.4byte	0
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	.LFB53
	.4byte	.LFE53
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF73:
	.string	"aos_event_service_deinit"
.LASF19:
	.string	"aos_loop_t"
.LASF50:
	.string	"aos_post_delayed_action"
.LASF88:
	.string	"g_main_ctx"
.LASF35:
	.string	"terminate"
.LASF71:
	.string	"aos_task_getspecific"
.LASF52:
	.string	"new_sock"
.LASF3:
	.string	"short int"
.LASF10:
	.string	"size_t"
.LASF86:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/src/yloop.c"
.LASF32:
	.string	"max_sock"
.LASF8:
	.string	"long long unsigned int"
.LASF33:
	.string	"reader_count"
.LASF69:
	.string	"__dlist_add"
.LASF87:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/yloop"
.LASF72:
	.string	"aos_task_setspecific"
.LASF63:
	.string	"_set_context"
.LASF81:
	.string	"memcpy"
.LASF53:
	.string	"new_loop_pollfds"
.LASF62:
	.string	"head"
.LASF18:
	.string	"aos_poll_call_t"
.LASF11:
	.string	"uint8_t"
.LASF36:
	.string	"yloop_ctx_t"
.LASF30:
	.string	"readers"
.LASF74:
	.string	"aos_now_ms"
.LASF27:
	.string	"yloop_sock_t"
.LASF7:
	.string	"long long int"
.LASF28:
	.string	"timeouts"
.LASF67:
	.string	"dlist_add_tail"
.LASF56:
	.string	"aos_current_loop"
.LASF83:
	.string	"memset"
.LASF89:
	.string	"_get_context"
.LASF5:
	.string	"long int"
.LASF84:
	.string	"aos_event_service_init"
.LASF77:
	.string	"printf"
.LASF47:
	.string	"action"
.LASF17:
	.string	"aos_call_t"
.LASF23:
	.string	"revents"
.LASF51:
	.string	"aos_poll_read_fd"
.LASF68:
	.string	"queue"
.LASF26:
	.string	"private_data"
.LASF43:
	.string	"aos_loop_exit"
.LASF60:
	.string	"get_context"
.LASF79:
	.string	"memmove"
.LASF2:
	.string	"unsigned char"
.LASF37:
	.string	"yloop_timeout_s"
.LASF39:
	.string	"yloop_timeout_t"
.LASF15:
	.string	"dlist_t"
.LASF59:
	.string	"aos_loop_set_eventfd"
.LASF1:
	.string	"signed char"
.LASF82:
	.string	"aos_task_key_create"
.LASF20:
	.string	"dlist_s"
.LASF0:
	.string	"unsigned int"
.LASF40:
	.string	"g_loop_key"
.LASF12:
	.string	"uint16_t"
.LASF34:
	.string	"pending_terminate"
.LASF6:
	.string	"long unsigned int"
.LASF44:
	.string	"aos_loop_run"
.LASF49:
	.string	"aos_cancel_poll_read_fd"
.LASF80:
	.string	"aos_fcntl"
.LASF21:
	.string	"pollfd"
.LASF61:
	.string	"dlist_empty"
.LASF4:
	.string	"short unsigned int"
.LASF48:
	.string	"param"
.LASF54:
	.string	"status"
.LASF31:
	.string	"eventfd"
.LASF9:
	.string	"char"
.LASF55:
	.string	"aos_loop_init"
.LASF66:
	.string	"dlist_del"
.LASF24:
	.string	"_Bool"
.LASF75:
	.string	"aos_poll"
.LASF29:
	.string	"pollfds"
.LASF46:
	.string	"aos_cancel_delayed_action"
.LASF38:
	.string	"timeout_ms"
.LASF57:
	.string	"aos_loop_get_eventfd"
.LASF64:
	.string	"dlist_init"
.LASF70:
	.string	"vPortFree"
.LASF65:
	.string	"node"
.LASF45:
	.string	"delayed_ms"
.LASF42:
	.string	"aos_loop_destroy"
.LASF16:
	.string	"aos_task_key_t"
.LASF22:
	.string	"events"
.LASF58:
	.string	"loop"
.LASF13:
	.string	"prev"
.LASF78:
	.string	"pvPortMalloc"
.LASF41:
	.string	"timeout"
.LASF14:
	.string	"next"
.LASF76:
	.string	"__errno"
.LASF25:
	.string	"sock"
.LASF85:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
