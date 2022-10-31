	.file	"device.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.event_poll,"ax",@progbits
	.align	1
	.type	event_poll, @function
event_poll:
.LFB21:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/src/device.c"
	.loc 1 161 1
	.cfi_startproc
.LVL0:
	.loc 1 162 5
	.loc 1 161 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 162 18
	lw	s0,4(a0)
	.loc 1 164 5 is_stmt 1
	.loc 1 161 1 is_stmt 0
	mv	s4,a1
	.loc 1 164 5
	li	a1,-1
.LVL1:
	mv	a0,s0
.LVL2:
	.loc 1 161 1
	mv	s2,a2
	mv	s1,a3
	mv	s3,a4
	.loc 1 164 5
	call	aos_mutex_lock
.LVL3:
	.loc 1 165 5 is_stmt 1
	.loc 1 165 8 is_stmt 0
	bne	s4,zero,.L2
	.loc 1 166 9 is_stmt 1
	.loc 1 166 23 is_stmt 0
	sw	zero,4(s0)
	.loc 1 167 9 is_stmt 1
	.loc 1 167 25 is_stmt 0
	sw	zero,12(s0)
	.loc 1 168 9 is_stmt 1
.L3:
	.loc 1 180 5
	mv	a0,s0
	call	aos_mutex_unlock
.LVL4:
	.loc 1 182 5
	.loc 1 183 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
.LVL5:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL6:
	lw	s3,12(sp)
	.cfi_restore 19
.LVL7:
	lw	s4,8(sp)
	.cfi_restore 20
	li	a0,0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL8:
.L2:
	.cfi_restore_state
	.loc 1 171 5 is_stmt 1
	.loc 1 175 8 is_stmt 0
	lw	a5,16(s0)
	.loc 1 171 19
	sw	s2,4(s0)
	.loc 1 172 5 is_stmt 1
	.loc 1 172 14 is_stmt 0
	sw	s1,8(s0)
	.loc 1 173 5 is_stmt 1
	.loc 1 173 21 is_stmt 0
	sw	s3,12(s0)
	.loc 1 175 5 is_stmt 1
	.loc 1 175 8 is_stmt 0
	beq	a5,zero,.L3
	.loc 1 176 9 is_stmt 1
	.loc 1 176 27 is_stmt 0
	lhu	a5,6(s1)
	.loc 1 177 10
	mv	a1,s3
	mv	a0,s1
	.loc 1 176 27
	ori	a5,a5,1
	sh	a5,6(s1)
	.loc 1 177 9 is_stmt 1
	.loc 1 177 10 is_stmt 0
	jalr	s2
.LVL9:
	j	.L3
	.cfi_endproc
.LFE21:
	.size	event_poll, .-event_poll
	.section	.text.event_read,"ax",@progbits
	.align	1
	.type	event_read, @function
event_read:
.LFB20:
	.loc 1 130 1 is_stmt 1
	.cfi_startproc
.LVL10:
	.loc 1 131 5
	.loc 1 130 1 is_stmt 0
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
	.loc 1 131 18
	lw	s0,4(a0)
.LVL11:
	.loc 1 132 5 is_stmt 1
	.loc 1 132 9 is_stmt 0
	lw	s2,16(s0)
.LVL12:
	.loc 1 134 5 is_stmt 1
	.loc 1 134 8 is_stmt 0
	beq	s2,zero,.L8
	mv	s4,a1
	.loc 1 138 5
	mv	a0,s0
.LVL13:
	li	a1,-1
.LVL14:
	mv	s3,a2
	.loc 1 138 5 is_stmt 1
	call	aos_mutex_lock
.LVL15:
	.loc 1 140 5
	.loc 1 140 18 is_stmt 0
	lw	s1,24(s0)
.LVL16:
	.loc 1 141 5 is_stmt 1
.LBB42:
.LBB43:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/aos/list.h"
	.loc 2 68 5
	.loc 2 68 14 is_stmt 0
	lw	a4,0(s1)
.LVL17:
	.loc 2 69 5 is_stmt 1
	.loc 2 69 14 is_stmt 0
	lw	a5,4(s1)
.LVL18:
	.loc 2 71 5 is_stmt 1
	.loc 2 71 16 is_stmt 0
	sw	a5,4(a4)
	.loc 2 72 5 is_stmt 1
	.loc 2 72 16 is_stmt 0
	sw	a4,0(a5)
.LVL19:
.LBE43:
.LBE42:
	.loc 1 142 5 is_stmt 1
	.loc 1 142 39 is_stmt 0
	lw	s2,8(s1)
.LVL20:
	bleu	s2,s3,.L10
	mv	s2,s3
.L10:
.LVL21:
	.loc 1 143 5 is_stmt 1
	mv	a2,s2
	addi	a1,s1,12
	mv	a0,s4
	call	memcpy
.LVL22:
	.loc 1 145 5
	.loc 1 145 8 is_stmt 0
	lw	a4,28(s0)
	li	a5,3
	bgt	a4,a5,.L11
	.loc 1 146 9 is_stmt 1
.LVL23:
.LBB44:
.LBB45:
	.loc 2 58 5
	.loc 2 58 35 is_stmt 0
	lw	a5,36(s0)
.LVL24:
.LBB46:
.LBB47:
	.loc 2 38 5 is_stmt 1
.LBE47:
.LBE46:
.LBE45:
.LBE44:
	.loc 1 146 9 is_stmt 0
	addi	a4,s0,32
.LVL25:
.LBB51:
.LBB50:
.LBB49:
.LBB48:
	.loc 2 39 16
	sw	a4,0(s1)
	.loc 2 38 16
	sw	a5,4(s1)
	.loc 2 39 5 is_stmt 1
	.loc 2 41 5
	.loc 2 41 16 is_stmt 0
	sw	s1,36(s0)
	.loc 2 42 5 is_stmt 1
	.loc 2 42 16 is_stmt 0
	sw	s1,0(a5)
.LVL26:
.LBE48:
.LBE49:
.LBE50:
.LBE51:
	.loc 1 147 9 is_stmt 1
	.loc 1 147 27 is_stmt 0
	lw	a5,28(s0)
	addi	a5,a5,1
	sw	a5,28(s0)
.L12:
	.loc 1 152 5 is_stmt 1
	.loc 1 152 19 is_stmt 0
	lw	a5,16(s0)
	.loc 1 154 5
	mv	a0,s0
	.loc 1 152 19
	addi	a5,a5,-1
	sw	a5,16(s0)
	.loc 1 154 5 is_stmt 1
	call	aos_mutex_unlock
.LVL27:
	.loc 1 156 5
.L8:
	.loc 1 157 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL28:
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
	mv	a0,s2
	lw	s2,16(sp)
	.cfi_restore 18
.LVL29:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL30:
.L11:
	.cfi_restore_state
	.loc 1 149 9 is_stmt 1
	mv	a0,s1
	call	aos_free
.LVL31:
	j	.L12
	.cfi_endproc
.LFE20:
	.size	event_read, .-event_read
	.section	.text.event_open,"ax",@progbits
	.align	1
	.type	event_open, @function
event_open:
.LFB15:
	.loc 1 37 1
	.cfi_startproc
.LVL32:
	.loc 1 38 5
	.loc 1 37 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 38 40
	li	a0,40
.LVL33:
	.loc 1 37 1
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.loc 1 37 1
	mv	s1,a1
	.loc 1 38 40
	call	aos_malloc
.LVL34:
	.loc 1 39 5
	li	a2,40
	li	a1,0
	.loc 1 38 40
	mv	s0,a0
.LVL35:
	.loc 1 39 5 is_stmt 1
	call	memset
.LVL36:
	.loc 1 40 5
	mv	a0,s0
	call	aos_mutex_new
.LVL37:
	.loc 1 41 5
	addi	a5,s0,20
.LVL38:
.LBB52:
.LBB53:
	.loc 2 77 5
	.loc 2 77 29 is_stmt 0
	sw	a5,20(s0)
	.loc 2 77 16
	sw	a5,24(s0)
.LVL39:
.LBE53:
.LBE52:
	.loc 1 42 5 is_stmt 1
	addi	a5,s0,32
.LVL40:
.LBB54:
.LBB55:
	.loc 2 77 5
	.loc 2 77 29 is_stmt 0
	sw	a5,32(s0)
	.loc 2 77 16
	sw	a5,36(s0)
.LVL41:
.LBE55:
.LBE54:
	.loc 1 43 5 is_stmt 1
	.loc 1 43 17 is_stmt 0
	sw	s0,4(s1)
	.loc 1 44 5 is_stmt 1
	.loc 1 45 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL42:
	lw	s1,4(sp)
	.cfi_restore 9
.LVL43:
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE15:
	.size	event_open, .-event_open
	.section	.text._event_write.isra.0,"ax",@progbits
	.align	1
	.type	_event_write.isra.0, @function
_event_write.isra.0:
.LFB23:
	.loc 1 69 16 is_stmt 1
	.cfi_startproc
.LVL44:
	.loc 1 71 5
	.loc 1 69 16 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s4,8(sp)
	.cfi_offset 20, -24
	mv	s4,a1
	.loc 1 72 5
	li	a1,-1
.LVL45:
	.loc 1 69 16
	sw	s0,24(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s5,4(sp)
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 21, -28
	mv	s0,a0
.LVL46:
	.loc 1 72 5 is_stmt 1
	.loc 1 69 16 is_stmt 0
	mv	s2,a2
	sw	ra,28(sp)
	sw	s1,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.loc 1 69 16
	mv	s3,a3
	.loc 1 72 5
	call	aos_mutex_lock
.LVL47:
	.loc 1 73 5 is_stmt 1
	.loc 1 78 8 is_stmt 0
	lw	a5,28(s0)
	.loc 1 73 13
	mv	s5,s2
.LVL48:
	.loc 1 75 5 is_stmt 1
	.loc 1 76 5
	.loc 1 78 5
	.loc 1 78 8 is_stmt 0
	ble	a5,zero,.L20
	.loc 1 76 9
	lw	s1,36(s0)
	.loc 1 78 31
	lw	a5,8(s1)
	bne	s2,a5,.L20
	.loc 1 79 9 is_stmt 1
.LVL49:
.LBB66:
.LBB67:
	.loc 2 68 5
	.loc 2 69 14 is_stmt 0
	lw	a5,4(s1)
	.loc 2 68 14
	lw	a4,0(s1)
.LVL50:
	.loc 2 69 5 is_stmt 1
	.loc 2 71 5
	.loc 2 71 16 is_stmt 0
	sw	a5,4(a4)
.LVL51:
	.loc 2 72 5 is_stmt 1
	.loc 2 72 16 is_stmt 0
	sw	a4,0(a5)
.LVL52:
.LBE67:
.LBE66:
	.loc 1 80 9 is_stmt 1
	.loc 1 80 27 is_stmt 0
	lw	a5,28(s0)
	addi	a5,a5,-1
	sw	a5,28(s0)
	.loc 1 85 5 is_stmt 1
.LVL53:
.L21:
	.loc 1 90 5
	.loc 1 90 19 is_stmt 0
	lw	a5,16(s0)
	.loc 1 93 5
	mv	a2,s2
	mv	a1,s4
	.loc 1 90 19
	addi	a5,a5,1
	sw	a5,16(s0)
	.loc 1 92 5 is_stmt 1
	.loc 1 92 14 is_stmt 0
	sw	s2,8(s1)
	.loc 1 93 5 is_stmt 1
	addi	a0,s1,12
	call	memcpy
.LVL54:
	.loc 1 94 5
	.loc 1 95 9 is_stmt 0
	addi	a4,s0,20
	.loc 1 94 8
	beq	s3,zero,.L23
	.loc 1 95 9 is_stmt 1
.LVL55:
.LBB68:
.LBB69:
	.loc 2 58 5
	.loc 2 58 35 is_stmt 0
	lw	a5,24(s0)
.LVL56:
.LBB70:
.LBB71:
	.loc 2 38 5 is_stmt 1
	.loc 2 39 16 is_stmt 0
	sw	a4,0(s1)
	.loc 2 38 16
	sw	a5,4(s1)
	.loc 2 39 5 is_stmt 1
	.loc 2 41 5
	.loc 2 41 16 is_stmt 0
	sw	s1,24(s0)
	.loc 2 42 5 is_stmt 1
	.loc 2 42 16 is_stmt 0
	sw	s1,0(a5)
.LVL57:
.L24:
.LBE71:
.LBE70:
.LBE69:
.LBE68:
	.loc 1 100 5 is_stmt 1
	.loc 1 100 8 is_stmt 0
	lw	a5,4(s0)
	beq	a5,zero,.L22
	.loc 1 101 9 is_stmt 1
	.loc 1 101 13 is_stmt 0
	lw	a4,8(s0)
	.loc 1 101 27
	lhu	a5,6(a4)
	ori	a5,a5,1
	sh	a5,6(a4)
	.loc 1 102 9 is_stmt 1
	lw	a5,4(s0)
	lw	a1,12(s0)
	lw	a0,8(s0)
	jalr	a5
.LVL58:
.L22:
	.loc 1 105 5
	mv	a0,s0
	call	aos_mutex_unlock
.LVL59:
	.loc 1 106 5
	.loc 1 107 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL60:
	lw	s1,20(sp)
	.cfi_restore 9
.LVL61:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL62:
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
.LVL63:
	mv	a0,s5
	lw	s5,4(sp)
	.cfi_restore 21
.LVL64:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL65:
.L20:
	.cfi_restore_state
	.loc 1 82 9 is_stmt 1
	.loc 1 82 30 is_stmt 0
	addi	a0,s2,12
	call	aos_malloc
.LVL66:
	mv	s1,a0
.LVL67:
	.loc 1 85 5 is_stmt 1
	.loc 1 85 8 is_stmt 0
	bne	a0,zero,.L21
	.loc 1 86 13
	li	s5,-1
	j	.L22
.L23:
	.loc 1 97 9 is_stmt 1
.LVL68:
.LBB72:
.LBB73:
	.loc 2 63 5
	.loc 2 63 28 is_stmt 0
	lw	a5,20(s0)
.LVL69:
.LBB74:
.LBB75:
	.loc 2 38 5 is_stmt 1
	.loc 2 38 16 is_stmt 0
	sw	a4,4(s1)
	.loc 2 39 5 is_stmt 1
	.loc 2 39 16 is_stmt 0
	sw	a5,0(s1)
	.loc 2 41 5 is_stmt 1
	.loc 2 41 16 is_stmt 0
	sw	s1,4(a5)
	.loc 2 42 5 is_stmt 1
	.loc 2 42 16 is_stmt 0
	sw	s1,20(s0)
.LVL70:
.LBE75:
.LBE74:
	.loc 2 64 1
	j	.L24
.LBE73:
.LBE72:
	.cfi_endproc
.LFE23:
	.size	_event_write.isra.0, .-_event_write.isra.0
	.section	.text.event_write,"ax",@progbits
	.align	1
	.type	event_write, @function
event_write:
.LFB18:
	.loc 1 110 1 is_stmt 1
	.cfi_startproc
.LVL71:
	.loc 1 111 5
	.loc 1 111 12 is_stmt 0
	lw	a0,4(a0)
.LVL72:
	li	a3,0
	tail	_event_write.isra.0
.LVL73:
	.cfi_endproc
.LFE18:
	.size	event_write, .-event_write
	.section	.text.event_ioctl,"ax",@progbits
	.align	1
	.type	event_ioctl, @function
event_ioctl:
.LFB19:
	.loc 1 115 1 is_stmt 1
	.cfi_startproc
.LVL74:
	.loc 1 116 5
	.loc 1 115 1 is_stmt 0
	mv	a5,a1
	.loc 1 119 5
	li	a4,1
	.loc 1 115 1
	mv	a1,a2
.LVL75:
	.loc 1 116 9
	srai	a2,a5,4
.LVL76:
	.loc 1 117 5 is_stmt 1
	.loc 1 118 5
	.loc 1 118 9 is_stmt 0
	andi	a5,a5,15
.LVL77:
	.loc 1 119 5 is_stmt 1
	beq	a5,a4,.L32
	li	a4,2
	beq	a5,a4,.L33
	.loc 1 127 1 is_stmt 0
	li	a0,-1
.LVL78:
	ret
.LVL79:
.L32:
	.loc 1 121 13 is_stmt 1
	.loc 1 121 20 is_stmt 0
	li	a3,0
.L36:
	.loc 1 123 20
	lw	a0,4(a0)
.LVL80:
	tail	_event_write.isra.0
.LVL81:
.L33:
	.loc 1 123 13 is_stmt 1
	.loc 1 123 20 is_stmt 0
	li	a3,1
	j	.L36
	.cfi_endproc
.LFE19:
	.size	event_ioctl, .-event_ioctl
	.section	.text.event_close,"ax",@progbits
	.align	1
	.type	event_close, @function
event_close:
.LFB16:
	.loc 1 48 1 is_stmt 1
	.cfi_startproc
.LVL82:
	.loc 1 49 5
	.loc 1 48 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s1,4(sp)
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 49 18
	lw	s0,4(a0)
.LVL83:
	.loc 1 50 5 is_stmt 1
	mv	a0,s0
.LVL84:
	call	aos_mutex_free
.LVL85:
	.loc 1 52 5
	.loc 1 52 25 is_stmt 0
	addi	s1,s0,20
.L38:
	.loc 1 52 11 is_stmt 1
.LVL86:
.LBB86:
.LBB87:
	.loc 2 88 5
	.loc 2 88 16 is_stmt 0
	lw	a0,24(s0)
.LVL87:
.LBE87:
.LBE86:
	.loc 1 52 11
	bne	a0,s1,.L39
	.loc 1 58 25
	addi	s1,s0,32
.L40:
	.loc 1 58 11 is_stmt 1
.LVL88:
.LBB88:
.LBB89:
	.loc 2 88 5
	.loc 2 88 16 is_stmt 0
	lw	a0,36(s0)
.LVL89:
.LBE89:
.LBE88:
	.loc 1 58 11
	bne	a0,s1,.L41
	.loc 1 64 5 is_stmt 1
	mv	a0,s0
	call	aos_free
.LVL90:
	.loc 1 66 5
	.loc 1 67 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL91:
	lw	s1,4(sp)
	.cfi_restore 9
.LVL92:
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL93:
.L39:
	.cfi_restore_state
.LBB90:
	.loc 1 53 9 is_stmt 1
	.loc 1 54 9
.LBB91:
.LBB92:
	.loc 2 68 5
	.loc 2 68 14 is_stmt 0
	lw	a4,0(a0)
.LVL94:
	.loc 2 69 5 is_stmt 1
	.loc 2 69 14 is_stmt 0
	lw	a5,4(a0)
.LVL95:
	.loc 2 71 5 is_stmt 1
	.loc 2 71 16 is_stmt 0
	sw	a5,4(a4)
	.loc 2 72 5 is_stmt 1
	.loc 2 72 16 is_stmt 0
	sw	a4,0(a5)
.LVL96:
.LBE92:
.LBE91:
	.loc 1 55 9 is_stmt 1
	call	aos_free
.LVL97:
	j	.L38
.L41:
.LBE90:
.LBB93:
	.loc 1 59 9
.LVL98:
	.loc 1 60 9
.LBB94:
.LBB95:
	.loc 2 68 5
	.loc 2 68 14 is_stmt 0
	lw	a4,0(a0)
.LVL99:
	.loc 2 69 5 is_stmt 1
	.loc 2 69 14 is_stmt 0
	lw	a5,4(a0)
.LVL100:
	.loc 2 71 5 is_stmt 1
	.loc 2 71 16 is_stmt 0
	sw	a5,4(a4)
	.loc 2 72 5 is_stmt 1
	.loc 2 72 16 is_stmt 0
	sw	a4,0(a5)
.LVL101:
.LBE95:
.LBE94:
	.loc 1 61 9 is_stmt 1
	call	aos_free
.LVL102:
	j	.L40
.LBE93:
	.cfi_endproc
.LFE16:
	.size	event_close, .-event_close
	.section	.rodata.vfs_device_init.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"/dev/event"
	.section	.text.vfs_device_init,"ax",@progbits
	.align	1
	.globl	vfs_device_init
	.type	vfs_device_init, @function
vfs_device_init:
.LFB22:
	.loc 1 195 1
	.cfi_startproc
	.loc 1 196 5
	.loc 1 198 5
	.loc 1 195 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	.loc 1 198 16
	lui	s0,%hi(.LANCHOR0)
	addi	s0,s0,%lo(.LANCHOR0)
	.loc 1 198 8
	lw	a5,0(s0)
	.loc 1 195 1
	sw	s1,4(sp)
	sw	ra,12(sp)
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.loc 1 198 8
	li	s1,1
	.loc 1 199 16
	li	a0,0
	.loc 1 198 8
	beq	a5,s1,.L43
	.loc 1 201 5 is_stmt 1
	.loc 1 201 11 is_stmt 0
	lui	a1,%hi(.LANCHOR1)
	lui	a0,%hi(.LC0)
	li	a2,0
	addi	a1,a1,%lo(.LANCHOR1)
	addi	a0,a0,%lo(.LC0)
	call	aos_register_driver
.LVL103:
	.loc 1 203 5 is_stmt 1
	.loc 1 203 8 is_stmt 0
	bne	a0,zero,.L43
	.loc 1 207 5 is_stmt 1
	.loc 1 207 12 is_stmt 0
	sw	s1,0(s0)
	.loc 1 209 5 is_stmt 1
.LVL104:
.L43:
	.loc 1 210 1 is_stmt 0
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
.LFE22:
	.size	vfs_device_init, .-vfs_device_init
	.section	.rodata.event_fops,"a"
	.align	2
	.set	.LANCHOR1,. + 0
	.type	event_fops, @object
	.size	event_fops, 28
event_fops:
	.word	event_open
	.word	event_close
	.word	event_read
	.word	event_write
	.word	event_ioctl
	.word	event_poll
	.zero	4
	.section	.sbss.inited,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	inited, @object
	.size	inited, 4
inited:
	.zero	4
	.text
.Letext0:
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timeval.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timespec.h"
	.file 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h"
	.file 10 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/aos/kernel.h"
	.file 11 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/yloop_types.h"
	.file 12 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/stat.h"
	.file 13 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/fs/vfs/include/vfs_dir.h"
	.file 14 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/fs/vfs/include/vfs_inode.h"
	.file 15 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/fs/vfs/include/vfs_register.h"
	.file 16 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x132b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF158
	.byte	0xc
	.4byte	.LASF159
	.4byte	.LASF160
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.4byte	.LASF2
	.byte	0x3
	.byte	0xd1
	.byte	0x16
	.4byte	0x31
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x2
	.4byte	.LASF3
	.byte	0x4
	.byte	0x2b
	.byte	0x17
	.4byte	0x52
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.byte	0x2
	.4byte	.LASF8
	.byte	0x4
	.byte	0x4f
	.byte	0x1b
	.4byte	0x7a
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.byte	0x2
	.4byte	.LASF12
	.byte	0x4
	.byte	0xc8
	.byte	0x17
	.4byte	0x81
	.byte	0x2
	.4byte	.LASF13
	.byte	0x5
	.byte	0x1e
	.byte	0xe
	.4byte	0x67
	.byte	0x2
	.4byte	.LASF14
	.byte	0x5
	.byte	0x22
	.byte	0xe
	.4byte	0x67
	.byte	0x2
	.4byte	.LASF15
	.byte	0x5
	.byte	0x2e
	.byte	0xe
	.4byte	0x67
	.byte	0x2
	.4byte	.LASF16
	.byte	0x5
	.byte	0x38
	.byte	0xf
	.4byte	0x59
	.byte	0x2
	.4byte	.LASF17
	.byte	0x5
	.byte	0x3c
	.byte	0x18
	.4byte	0x60
	.byte	0x2
	.4byte	.LASF18
	.byte	0x5
	.byte	0x3f
	.byte	0x18
	.4byte	0x60
	.byte	0x2
	.4byte	.LASF19
	.byte	0x5
	.byte	0x4b
	.byte	0x18
	.4byte	0x60
	.byte	0x2
	.4byte	.LASF20
	.byte	0x5
	.byte	0x5a
	.byte	0x14
	.4byte	0x6e
	.byte	0x2
	.4byte	.LASF21
	.byte	0x5
	.byte	0x66
	.byte	0x10
	.4byte	0xb3
	.byte	0x2
	.4byte	.LASF22
	.byte	0x5
	.byte	0x93
	.byte	0x14
	.4byte	0x38
	.byte	0x5
	.byte	0x4
	.byte	0x2
	.4byte	.LASF23
	.byte	0x5
	.byte	0xd1
	.byte	0x18
	.4byte	0x60
	.byte	0x6
	.byte	0x4
	.4byte	0x127
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF24
	.byte	0x7
	.4byte	0x127
	.byte	0x6
	.byte	0x4
	.4byte	0x12e
	.byte	0x6
	.byte	0x4
	.4byte	0x13f
	.byte	0x8
	.byte	0x2
	.4byte	.LASF25
	.byte	0x6
	.byte	0x18
	.byte	0x13
	.4byte	0x46
	.byte	0x2
	.4byte	.LASF26
	.byte	0x7
	.byte	0x2a
	.byte	0x19
	.4byte	0x8f
	.byte	0x9
	.4byte	.LASF41
	.byte	0x10
	.byte	0x8
	.byte	0x2f
	.byte	0x8
	.4byte	0x180
	.byte	0xa
	.4byte	.LASF27
	.byte	0x8
	.byte	0x30
	.byte	0x9
	.4byte	0x14c
	.byte	0
	.byte	0xa
	.4byte	.LASF28
	.byte	0x8
	.byte	0x31
	.byte	0x7
	.4byte	0x67
	.byte	0x8
	.byte	0
	.byte	0x2
	.4byte	.LASF29
	.byte	0x9
	.byte	0x61
	.byte	0x14
	.4byte	0x9b
	.byte	0x2
	.4byte	.LASF30
	.byte	0x9
	.byte	0x66
	.byte	0x15
	.4byte	0xa7
	.byte	0x2
	.4byte	.LASF31
	.byte	0x9
	.byte	0x8b
	.byte	0x11
	.4byte	0xe3
	.byte	0x2
	.4byte	.LASF32
	.byte	0x9
	.byte	0x9d
	.byte	0x11
	.4byte	0xfb
	.byte	0x2
	.4byte	.LASF33
	.byte	0x9
	.byte	0xa1
	.byte	0x11
	.4byte	0xbf
	.byte	0x2
	.4byte	.LASF34
	.byte	0x9
	.byte	0xa5
	.byte	0x11
	.4byte	0xcb
	.byte	0x2
	.4byte	.LASF35
	.byte	0x9
	.byte	0xa9
	.byte	0x11
	.4byte	0xd7
	.byte	0x2
	.4byte	.LASF36
	.byte	0x9
	.byte	0xb8
	.byte	0x12
	.4byte	0x107
	.byte	0x2
	.4byte	.LASF37
	.byte	0x9
	.byte	0xbd
	.byte	0x12
	.4byte	0xef
	.byte	0x2
	.4byte	.LASF38
	.byte	0x9
	.byte	0xc2
	.byte	0x13
	.4byte	0x115
	.byte	0xb
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0xc
	.4byte	0x20f
	.byte	0xc
	.string	"hdl"
	.byte	0xa
	.byte	0x18
	.byte	0xf
	.4byte	0x113
	.byte	0
	.byte	0
	.byte	0x2
	.4byte	.LASF39
	.byte	0xa
	.byte	0x19
	.byte	0x7
	.4byte	0x1f8
	.byte	0x2
	.4byte	.LASF40
	.byte	0xa
	.byte	0x1c
	.byte	0x17
	.4byte	0x20f
	.byte	0x9
	.4byte	.LASF42
	.byte	0x8
	.byte	0x2
	.byte	0x1f
	.byte	0x10
	.4byte	0x24f
	.byte	0xa
	.4byte	.LASF43
	.byte	0x2
	.byte	0x20
	.byte	0x15
	.4byte	0x24f
	.byte	0
	.byte	0xa
	.4byte	.LASF44
	.byte	0x2
	.byte	0x21
	.byte	0x15
	.4byte	0x24f
	.byte	0x4
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x227
	.byte	0x2
	.4byte	.LASF45
	.byte	0x2
	.byte	0x22
	.byte	0x3
	.4byte	0x227
	.byte	0x7
	.4byte	0x255
	.byte	0x9
	.4byte	.LASF46
	.byte	0x8
	.byte	0xb
	.byte	0x7
	.byte	0x8
	.4byte	0x29a
	.byte	0xc
	.string	"fd"
	.byte	0xb
	.byte	0x8
	.byte	0x9
	.4byte	0x38
	.byte	0
	.byte	0xa
	.4byte	.LASF47
	.byte	0xb
	.byte	0x9
	.byte	0xb
	.4byte	0x59
	.byte	0x4
	.byte	0xa
	.4byte	.LASF48
	.byte	0xb
	.byte	0xa
	.byte	0xb
	.4byte	0x59
	.byte	0x6
	.byte	0
	.byte	0x9
	.4byte	.LASF49
	.byte	0x58
	.byte	0xc
	.byte	0x1b
	.byte	0x8
	.4byte	0x35e
	.byte	0xa
	.4byte	.LASF50
	.byte	0xc
	.byte	0x1d
	.byte	0x9
	.4byte	0x1b0
	.byte	0
	.byte	0xa
	.4byte	.LASF51
	.byte	0xc
	.byte	0x1e
	.byte	0x9
	.4byte	0x198
	.byte	0x2
	.byte	0xa
	.4byte	.LASF52
	.byte	0xc
	.byte	0x1f
	.byte	0xa
	.4byte	0x1e0
	.byte	0x4
	.byte	0xa
	.4byte	.LASF53
	.byte	0xc
	.byte	0x20
	.byte	0xb
	.4byte	0x1ec
	.byte	0x8
	.byte	0xa
	.4byte	.LASF54
	.byte	0xc
	.byte	0x21
	.byte	0x9
	.4byte	0x1bc
	.byte	0xa
	.byte	0xa
	.4byte	.LASF55
	.byte	0xc
	.byte	0x22
	.byte	0x9
	.4byte	0x1c8
	.byte	0xc
	.byte	0xa
	.4byte	.LASF56
	.byte	0xc
	.byte	0x23
	.byte	0x9
	.4byte	0x1b0
	.byte	0xe
	.byte	0xa
	.4byte	.LASF57
	.byte	0xc
	.byte	0x24
	.byte	0x9
	.4byte	0x1a4
	.byte	0x10
	.byte	0xa
	.4byte	.LASF58
	.byte	0xc
	.byte	0x2a
	.byte	0x13
	.4byte	0x158
	.byte	0x18
	.byte	0xa
	.4byte	.LASF59
	.byte	0xc
	.byte	0x2b
	.byte	0x13
	.4byte	0x158
	.byte	0x28
	.byte	0xa
	.4byte	.LASF60
	.byte	0xc
	.byte	0x2c
	.byte	0x13
	.4byte	0x158
	.byte	0x38
	.byte	0xa
	.4byte	.LASF61
	.byte	0xc
	.byte	0x2d
	.byte	0xd
	.4byte	0x18c
	.byte	0x48
	.byte	0xa
	.4byte	.LASF62
	.byte	0xc
	.byte	0x2e
	.byte	0xc
	.4byte	0x180
	.byte	0x4c
	.byte	0xa
	.4byte	.LASF63
	.byte	0xc
	.byte	0x30
	.byte	0x8
	.4byte	0x35e
	.byte	0x50
	.byte	0
	.byte	0xd
	.4byte	0x67
	.4byte	0x36e
	.byte	0xe
	.4byte	0x31
	.byte	0x1
	.byte	0
	.byte	0x9
	.4byte	.LASF64
	.byte	0x24
	.byte	0xd
	.byte	0x4
	.byte	0x8
	.4byte	0x3f1
	.byte	0xa
	.4byte	.LASF65
	.byte	0xd
	.byte	0x5
	.byte	0xa
	.4byte	0x67
	.byte	0
	.byte	0xa
	.4byte	.LASF66
	.byte	0xd
	.byte	0x6
	.byte	0xa
	.4byte	0x67
	.byte	0x4
	.byte	0xa
	.4byte	.LASF67
	.byte	0xd
	.byte	0x7
	.byte	0xa
	.4byte	0x67
	.byte	0x8
	.byte	0xa
	.4byte	.LASF68
	.byte	0xd
	.byte	0x8
	.byte	0xa
	.4byte	0x67
	.byte	0xc
	.byte	0xa
	.4byte	.LASF69
	.byte	0xd
	.byte	0x9
	.byte	0xa
	.4byte	0x67
	.byte	0x10
	.byte	0xa
	.4byte	.LASF70
	.byte	0xd
	.byte	0xa
	.byte	0xa
	.4byte	0x67
	.byte	0x14
	.byte	0xa
	.4byte	.LASF71
	.byte	0xd
	.byte	0xb
	.byte	0xa
	.4byte	0x67
	.byte	0x18
	.byte	0xa
	.4byte	.LASF72
	.byte	0xd
	.byte	0xc
	.byte	0xa
	.4byte	0x67
	.byte	0x1c
	.byte	0xa
	.4byte	.LASF73
	.byte	0xd
	.byte	0xd
	.byte	0xa
	.4byte	0x67
	.byte	0x20
	.byte	0
	.byte	0xb
	.byte	0x8
	.byte	0xd
	.byte	0x10
	.byte	0x9
	.4byte	0x422
	.byte	0xa
	.4byte	.LASF74
	.byte	0xd
	.byte	0x11
	.byte	0x9
	.4byte	0x38
	.byte	0
	.byte	0xa
	.4byte	.LASF75
	.byte	0xd
	.byte	0x12
	.byte	0xd
	.4byte	0x140
	.byte	0x4
	.byte	0xa
	.4byte	.LASF76
	.byte	0xd
	.byte	0x13
	.byte	0xa
	.4byte	0x422
	.byte	0x5
	.byte	0
	.byte	0xd
	.4byte	0x127
	.4byte	0x431
	.byte	0xf
	.4byte	0x31
	.byte	0
	.byte	0x2
	.4byte	.LASF77
	.byte	0xd
	.byte	0x14
	.byte	0x3
	.4byte	0x3f1
	.byte	0xb
	.byte	0x8
	.byte	0xd
	.byte	0x16
	.byte	0x9
	.4byte	0x461
	.byte	0xa
	.4byte	.LASF78
	.byte	0xd
	.byte	0x17
	.byte	0x9
	.4byte	0x38
	.byte	0
	.byte	0xa
	.4byte	.LASF79
	.byte	0xd
	.byte	0x18
	.byte	0x9
	.4byte	0x38
	.byte	0x4
	.byte	0
	.byte	0x2
	.4byte	.LASF80
	.byte	0xd
	.byte	0x19
	.byte	0x3
	.4byte	0x43d
	.byte	0x2
	.4byte	.LASF81
	.byte	0xe
	.byte	0x2c
	.byte	0x1f
	.4byte	0x4e2
	.byte	0x9
	.4byte	.LASF82
	.byte	0x1c
	.byte	0xe
	.byte	0x47
	.byte	0x8
	.4byte	0x4e2
	.byte	0xa
	.4byte	.LASF83
	.byte	0xe
	.byte	0x48
	.byte	0xb
	.4byte	0x731
	.byte	0
	.byte	0xa
	.4byte	.LASF84
	.byte	0xe
	.byte	0x49
	.byte	0xb
	.4byte	0x746
	.byte	0x4
	.byte	0xa
	.4byte	.LASF85
	.byte	0xe
	.byte	0x4a
	.byte	0xf
	.4byte	0x765
	.byte	0x8
	.byte	0xa
	.4byte	.LASF86
	.byte	0xe
	.byte	0x4b
	.byte	0xf
	.4byte	0x784
	.byte	0xc
	.byte	0xa
	.4byte	.LASF87
	.byte	0xe
	.byte	0x4c
	.byte	0xb
	.4byte	0x7a3
	.byte	0x10
	.byte	0xa
	.4byte	.LASF88
	.byte	0xe
	.byte	0x4e
	.byte	0xb
	.4byte	0x7d3
	.byte	0x14
	.byte	0xa
	.4byte	.LASF89
	.byte	0xe
	.byte	0x50
	.byte	0xb
	.4byte	0x746
	.byte	0x18
	.byte	0
	.byte	0x7
	.4byte	0x479
	.byte	0x2
	.4byte	.LASF90
	.byte	0xe
	.byte	0x2d
	.byte	0x1d
	.4byte	0x605
	.byte	0x9
	.4byte	.LASF91
	.byte	0x50
	.byte	0xe
	.byte	0x53
	.byte	0x8
	.4byte	0x605
	.byte	0xa
	.4byte	.LASF83
	.byte	0xe
	.byte	0x54
	.byte	0xb
	.4byte	0x7f2
	.byte	0
	.byte	0xa
	.4byte	.LASF84
	.byte	0xe
	.byte	0x55
	.byte	0xb
	.4byte	0x746
	.byte	0x4
	.byte	0xa
	.4byte	.LASF85
	.byte	0xe
	.byte	0x56
	.byte	0xf
	.4byte	0x811
	.byte	0x8
	.byte	0xa
	.4byte	.LASF86
	.byte	0xe
	.byte	0x57
	.byte	0xf
	.4byte	0x830
	.byte	0xc
	.byte	0xa
	.4byte	.LASF92
	.byte	0xe
	.byte	0x58
	.byte	0xd
	.4byte	0x84f
	.byte	0x10
	.byte	0xa
	.4byte	.LASF89
	.byte	0xe
	.byte	0x59
	.byte	0xb
	.4byte	0x746
	.byte	0x14
	.byte	0xa
	.4byte	.LASF49
	.byte	0xe
	.byte	0x5a
	.byte	0xb
	.4byte	0x874
	.byte	0x18
	.byte	0xa
	.4byte	.LASF93
	.byte	0xe
	.byte	0x5b
	.byte	0xb
	.4byte	0x88e
	.byte	0x1c
	.byte	0xa
	.4byte	.LASF94
	.byte	0xe
	.byte	0x5c
	.byte	0xb
	.4byte	0x8ad
	.byte	0x20
	.byte	0xa
	.4byte	.LASF95
	.byte	0xe
	.byte	0x5d
	.byte	0x12
	.4byte	0x8cd
	.byte	0x24
	.byte	0xa
	.4byte	.LASF96
	.byte	0xe
	.byte	0x5e
	.byte	0x15
	.4byte	0x8ed
	.byte	0x28
	.byte	0xa
	.4byte	.LASF97
	.byte	0xe
	.byte	0x5f
	.byte	0xb
	.4byte	0x907
	.byte	0x2c
	.byte	0xa
	.4byte	.LASF98
	.byte	0xe
	.byte	0x60
	.byte	0xb
	.4byte	0x88e
	.byte	0x30
	.byte	0xa
	.4byte	.LASF99
	.byte	0xe
	.byte	0x61
	.byte	0xb
	.4byte	0x88e
	.byte	0x34
	.byte	0xa
	.4byte	.LASF100
	.byte	0xe
	.byte	0x62
	.byte	0xc
	.4byte	0x91d
	.byte	0x38
	.byte	0xa
	.4byte	.LASF101
	.byte	0xe
	.byte	0x63
	.byte	0xc
	.4byte	0x937
	.byte	0x3c
	.byte	0xa
	.4byte	.LASF102
	.byte	0xe
	.byte	0x64
	.byte	0xc
	.4byte	0x952
	.byte	0x40
	.byte	0xa
	.4byte	.LASF87
	.byte	0xe
	.byte	0x65
	.byte	0xb
	.4byte	0x7a3
	.byte	0x44
	.byte	0xa
	.4byte	.LASF64
	.byte	0xe
	.byte	0x66
	.byte	0xb
	.4byte	0x977
	.byte	0x48
	.byte	0xa
	.4byte	.LASF103
	.byte	0xe
	.byte	0x67
	.byte	0xb
	.4byte	0x7f2
	.byte	0x4c
	.byte	0
	.byte	0x7
	.4byte	0x4f3
	.byte	0x10
	.4byte	.LASF161
	.byte	0x4
	.byte	0xe
	.byte	0x2f
	.byte	0x7
	.4byte	0x630
	.byte	0x11
	.4byte	.LASF104
	.byte	0xe
	.byte	0x30
	.byte	0x17
	.4byte	0x630
	.byte	0x11
	.4byte	.LASF105
	.byte	0xe
	.byte	0x31
	.byte	0x15
	.4byte	0x636
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x46d
	.byte	0x6
	.byte	0x4
	.4byte	0x4e7
	.byte	0xb
	.byte	0x14
	.byte	0xe
	.byte	0x35
	.byte	0x9
	.4byte	0x694
	.byte	0xc
	.string	"ops"
	.byte	0xe
	.byte	0x36
	.byte	0x17
	.4byte	0x60a
	.byte	0
	.byte	0xa
	.4byte	.LASF106
	.byte	0xe
	.byte	0x37
	.byte	0xb
	.4byte	0x113
	.byte	0x4
	.byte	0xa
	.4byte	.LASF107
	.byte	0xe
	.byte	0x38
	.byte	0xb
	.4byte	0x121
	.byte	0x8
	.byte	0xa
	.4byte	.LASF108
	.byte	0xe
	.byte	0x39
	.byte	0x9
	.4byte	0x38
	.byte	0xc
	.byte	0xa
	.4byte	.LASF109
	.byte	0xe
	.byte	0x3a
	.byte	0xd
	.4byte	0x140
	.byte	0x10
	.byte	0xa
	.4byte	.LASF110
	.byte	0xe
	.byte	0x3b
	.byte	0xd
	.4byte	0x140
	.byte	0x11
	.byte	0
	.byte	0x2
	.4byte	.LASF111
	.byte	0xe
	.byte	0x3c
	.byte	0x3
	.4byte	0x63c
	.byte	0xb
	.byte	0x10
	.byte	0xe
	.byte	0x3e
	.byte	0x9
	.4byte	0x6dd
	.byte	0xa
	.4byte	.LASF112
	.byte	0xe
	.byte	0x3f
	.byte	0xe
	.4byte	0x6dd
	.byte	0
	.byte	0xa
	.4byte	.LASF113
	.byte	0xe
	.byte	0x40
	.byte	0xb
	.4byte	0x113
	.byte	0x4
	.byte	0xa
	.4byte	.LASF114
	.byte	0xe
	.byte	0x41
	.byte	0xc
	.4byte	0x25
	.byte	0x8
	.byte	0xc
	.string	"fd"
	.byte	0xe
	.byte	0x42
	.byte	0x9
	.4byte	0x38
	.byte	0xc
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x694
	.byte	0x2
	.4byte	.LASF115
	.byte	0xe
	.byte	0x43
	.byte	0x3
	.4byte	0x6a0
	.byte	0x2
	.4byte	.LASF116
	.byte	0xe
	.byte	0x46
	.byte	0x10
	.4byte	0x6fb
	.byte	0x6
	.byte	0x4
	.4byte	0x701
	.byte	0x12
	.4byte	0x711
	.byte	0x13
	.4byte	0x711
	.byte	0x13
	.4byte	0x113
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x266
	.byte	0x14
	.4byte	0x38
	.4byte	0x72b
	.byte	0x13
	.4byte	0x6dd
	.byte	0x13
	.4byte	0x72b
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x6e3
	.byte	0x6
	.byte	0x4
	.4byte	0x717
	.byte	0x14
	.4byte	0x38
	.4byte	0x746
	.byte	0x13
	.4byte	0x72b
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x737
	.byte	0x14
	.4byte	0x1d4
	.4byte	0x765
	.byte	0x13
	.4byte	0x72b
	.byte	0x13
	.4byte	0x113
	.byte	0x13
	.4byte	0x25
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x74c
	.byte	0x14
	.4byte	0x1d4
	.4byte	0x784
	.byte	0x13
	.4byte	0x72b
	.byte	0x13
	.4byte	0x139
	.byte	0x13
	.4byte	0x25
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x76b
	.byte	0x14
	.4byte	0x38
	.4byte	0x7a3
	.byte	0x13
	.4byte	0x72b
	.byte	0x13
	.4byte	0x38
	.byte	0x13
	.4byte	0x7a
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x78a
	.byte	0x14
	.4byte	0x38
	.4byte	0x7cc
	.byte	0x13
	.4byte	0x72b
	.byte	0x13
	.4byte	0x7cc
	.byte	0x13
	.4byte	0x6ef
	.byte	0x13
	.4byte	0x711
	.byte	0x13
	.4byte	0x113
	.byte	0
	.byte	0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF117
	.byte	0x6
	.byte	0x4
	.4byte	0x7a9
	.byte	0x14
	.4byte	0x38
	.4byte	0x7f2
	.byte	0x13
	.4byte	0x72b
	.byte	0x13
	.4byte	0x133
	.byte	0x13
	.4byte	0x38
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x7d9
	.byte	0x14
	.4byte	0x1d4
	.4byte	0x811
	.byte	0x13
	.4byte	0x72b
	.byte	0x13
	.4byte	0x121
	.byte	0x13
	.4byte	0x25
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x7f8
	.byte	0x14
	.4byte	0x1d4
	.4byte	0x830
	.byte	0x13
	.4byte	0x72b
	.byte	0x13
	.4byte	0x133
	.byte	0x13
	.4byte	0x25
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x817
	.byte	0x14
	.4byte	0x1a4
	.4byte	0x84f
	.byte	0x13
	.4byte	0x72b
	.byte	0x13
	.4byte	0x1a4
	.byte	0x13
	.4byte	0x38
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x836
	.byte	0x14
	.4byte	0x38
	.4byte	0x86e
	.byte	0x13
	.4byte	0x72b
	.byte	0x13
	.4byte	0x133
	.byte	0x13
	.4byte	0x86e
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x29a
	.byte	0x6
	.byte	0x4
	.4byte	0x855
	.byte	0x14
	.4byte	0x38
	.4byte	0x88e
	.byte	0x13
	.4byte	0x72b
	.byte	0x13
	.4byte	0x133
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x87a
	.byte	0x14
	.4byte	0x38
	.4byte	0x8ad
	.byte	0x13
	.4byte	0x72b
	.byte	0x13
	.4byte	0x133
	.byte	0x13
	.4byte	0x133
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x894
	.byte	0x14
	.4byte	0x8c7
	.4byte	0x8c7
	.byte	0x13
	.4byte	0x72b
	.byte	0x13
	.4byte	0x133
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x461
	.byte	0x6
	.byte	0x4
	.4byte	0x8b3
	.byte	0x14
	.4byte	0x8e7
	.4byte	0x8e7
	.byte	0x13
	.4byte	0x72b
	.byte	0x13
	.4byte	0x8c7
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x431
	.byte	0x6
	.byte	0x4
	.4byte	0x8d3
	.byte	0x14
	.4byte	0x38
	.4byte	0x907
	.byte	0x13
	.4byte	0x72b
	.byte	0x13
	.4byte	0x8c7
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x8f3
	.byte	0x12
	.4byte	0x91d
	.byte	0x13
	.4byte	0x72b
	.byte	0x13
	.4byte	0x8c7
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x90d
	.byte	0x14
	.4byte	0x67
	.4byte	0x937
	.byte	0x13
	.4byte	0x72b
	.byte	0x13
	.4byte	0x8c7
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x923
	.byte	0x12
	.4byte	0x952
	.byte	0x13
	.4byte	0x72b
	.byte	0x13
	.4byte	0x8c7
	.byte	0x13
	.4byte	0x67
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x93d
	.byte	0x14
	.4byte	0x38
	.4byte	0x971
	.byte	0x13
	.4byte	0x72b
	.byte	0x13
	.4byte	0x133
	.byte	0x13
	.4byte	0x971
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x36e
	.byte	0x6
	.byte	0x4
	.4byte	0x958
	.byte	0x15
	.4byte	.LASF127
	.byte	0x1
	.byte	0x11
	.byte	0xc
	.4byte	0x38
	.byte	0x5
	.byte	0x3
	.4byte	inited
	.byte	0xb
	.byte	0x28
	.byte	0x1
	.byte	0x13
	.byte	0x9
	.4byte	0xa00
	.byte	0xa
	.4byte	.LASF118
	.byte	0x1
	.byte	0x14
	.byte	0x11
	.4byte	0x21b
	.byte	0
	.byte	0xa
	.4byte	.LASF119
	.byte	0x1
	.byte	0x15
	.byte	0x13
	.4byte	0x6ef
	.byte	0x4
	.byte	0xc
	.string	"fd"
	.byte	0x1
	.byte	0x16
	.byte	0x14
	.4byte	0x711
	.byte	0x8
	.byte	0xa
	.4byte	.LASF120
	.byte	0x1
	.byte	0x17
	.byte	0xb
	.4byte	0x113
	.byte	0xc
	.byte	0xa
	.4byte	.LASF121
	.byte	0x1
	.byte	0x18
	.byte	0x9
	.4byte	0x38
	.byte	0x10
	.byte	0xa
	.4byte	.LASF122
	.byte	0x1
	.byte	0x19
	.byte	0xd
	.4byte	0x255
	.byte	0x14
	.byte	0xa
	.4byte	.LASF123
	.byte	0x1
	.byte	0x1a
	.byte	0x9
	.4byte	0x38
	.byte	0x1c
	.byte	0xa
	.4byte	.LASF124
	.byte	0x1
	.byte	0x1b
	.byte	0xd
	.4byte	0x255
	.byte	0x20
	.byte	0
	.byte	0x2
	.4byte	.LASF125
	.byte	0x1
	.byte	0x1c
	.byte	0x3
	.4byte	0x98f
	.byte	0xb
	.byte	0xc
	.byte	0x1
	.byte	0x1e
	.byte	0x9
	.4byte	0xa3d
	.byte	0xa
	.4byte	.LASF112
	.byte	0x1
	.byte	0x1f
	.byte	0xd
	.4byte	0x255
	.byte	0
	.byte	0xc
	.string	"len"
	.byte	0x1
	.byte	0x20
	.byte	0xc
	.4byte	0x25
	.byte	0x8
	.byte	0xc
	.string	"buf"
	.byte	0x1
	.byte	0x21
	.byte	0xa
	.4byte	0x422
	.byte	0xc
	.byte	0
	.byte	0x2
	.4byte	.LASF126
	.byte	0x1
	.byte	0x22
	.byte	0x3
	.4byte	0xa0c
	.byte	0x15
	.4byte	.LASF128
	.byte	0x1
	.byte	0xb9
	.byte	0x13
	.4byte	0x46d
	.byte	0x5
	.byte	0x3
	.4byte	event_fops
	.byte	0x16
	.4byte	.LASF162
	.byte	0x1
	.byte	0xc2
	.byte	0x5
	.4byte	0x38
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x1
	.byte	0x9c
	.4byte	0xaa7
	.byte	0x17
	.string	"ret"
	.byte	0x1
	.byte	0xc4
	.byte	0x9
	.4byte	0x38
	.4byte	.LLST61
	.byte	0x18
	.4byte	.LVL103
	.4byte	0x12c0
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LASF131
	.byte	0x1
	.byte	0x9f
	.byte	0xc
	.4byte	0x38
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x1
	.byte	0x9c
	.4byte	0xb6a
	.byte	0x1b
	.string	"f"
	.byte	0x1
	.byte	0x9f
	.byte	0x1f
	.4byte	0x72b
	.4byte	.LLST0
	.byte	0x1c
	.4byte	.LASF129
	.byte	0x1
	.byte	0x9f
	.byte	0x26
	.4byte	0x7cc
	.4byte	.LLST1
	.byte	0x1c
	.4byte	.LASF130
	.byte	0x1
	.byte	0x9f
	.byte	0x3b
	.4byte	0x6ef
	.4byte	.LLST2
	.byte	0x1b
	.string	"fd"
	.byte	0x1
	.byte	0xa0
	.byte	0x26
	.4byte	0x711
	.4byte	.LLST3
	.byte	0x1b
	.string	"opa"
	.byte	0x1
	.byte	0xa0
	.byte	0x30
	.4byte	0x113
	.4byte	.LLST4
	.byte	0x1d
	.4byte	.LASF133
	.byte	0x1
	.byte	0xa2
	.byte	0x12
	.4byte	0xb6a
	.byte	0x1e
	.string	"out"
	.byte	0x1
	.byte	0xb3
	.byte	0x1
	.4byte	.L3
	.byte	0x1f
	.4byte	.LVL3
	.4byte	0x12cc
	.4byte	0xb40
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0x1f
	.4byte	.LVL4
	.4byte	0x12d8
	.4byte	0xb54
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x20
	.4byte	.LVL9
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xa00
	.byte	0x1a
	.4byte	.LASF132
	.byte	0x1
	.byte	0x81
	.byte	0x10
	.4byte	0x1d4
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x1
	.byte	0x9c
	.4byte	0xcca
	.byte	0x1b
	.string	"f"
	.byte	0x1
	.byte	0x81
	.byte	0x23
	.4byte	0x72b
	.4byte	.LLST5
	.byte	0x1b
	.string	"buf"
	.byte	0x1
	.byte	0x81
	.byte	0x2c
	.4byte	0x113
	.4byte	.LLST6
	.byte	0x1b
	.string	"len"
	.byte	0x1
	.byte	0x81
	.byte	0x38
	.4byte	0x25
	.4byte	.LLST7
	.byte	0x21
	.4byte	.LASF133
	.byte	0x1
	.byte	0x83
	.byte	0x12
	.4byte	0xb6a
	.4byte	.LLST8
	.byte	0x17
	.string	"cnt"
	.byte	0x1
	.byte	0x84
	.byte	0x9
	.4byte	0x38
	.4byte	.LLST9
	.byte	0x17
	.string	"evt"
	.byte	0x1
	.byte	0x8c
	.byte	0x12
	.4byte	0xcca
	.4byte	.LLST10
	.byte	0x22
	.4byte	0x107a
	.4byte	.LBB42
	.4byte	.LBE42-.LBB42
	.byte	0x1
	.byte	0x8d
	.byte	0x5
	.4byte	0xc18
	.byte	0x23
	.4byte	0x1087
	.4byte	.LLST11
	.byte	0x24
	.4byte	0x1093
	.4byte	.LLST12
	.byte	0x24
	.4byte	0x109f
	.4byte	.LLST13
	.byte	0
	.byte	0x25
	.4byte	0x10d2
	.4byte	.LBB44
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x92
	.byte	0x9
	.4byte	0xc6b
	.byte	0x23
	.4byte	0x10eb
	.4byte	.LLST14
	.byte	0x23
	.4byte	0x10df
	.4byte	.LLST15
	.byte	0x26
	.4byte	0x10f8
	.4byte	.LBB46
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x2
	.byte	0x3a
	.byte	0x5
	.byte	0x23
	.4byte	0x111d
	.4byte	.LLST16
	.byte	0x23
	.4byte	0x1111
	.4byte	.LLST17
	.byte	0x23
	.4byte	0x1105
	.4byte	.LLST18
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL15
	.4byte	0x12cc
	.4byte	0xc85
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0x1f
	.4byte	.LVL22
	.4byte	0x12e4
	.4byte	0xca5
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0xc
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL27
	.4byte	0x12d8
	.4byte	0xcb9
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL31
	.4byte	0x12f0
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xa3d
	.byte	0x1a
	.4byte	.LASF134
	.byte	0x1
	.byte	0x72
	.byte	0xc
	.4byte	0x38
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x1
	.byte	0x9c
	.4byte	0xd4c
	.byte	0x1b
	.string	"f"
	.byte	0x1
	.byte	0x72
	.byte	0x20
	.4byte	0x72b
	.4byte	.LLST44
	.byte	0x1b
	.string	"cmd"
	.byte	0x1
	.byte	0x72
	.byte	0x27
	.4byte	0x38
	.4byte	.LLST45
	.byte	0x1b
	.string	"arg"
	.byte	0x1
	.byte	0x72
	.byte	0x3a
	.4byte	0x7a
	.4byte	.LLST46
	.byte	0x17
	.string	"len"
	.byte	0x1
	.byte	0x74
	.byte	0x9
	.4byte	0x38
	.4byte	.LLST47
	.byte	0x17
	.string	"buf"
	.byte	0x1
	.byte	0x75
	.byte	0xb
	.4byte	0x113
	.4byte	.LLST48
	.byte	0x27
	.4byte	.LVL81
	.4byte	0x112a
	.byte	0x28
	.4byte	0xdcc
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LASF135
	.byte	0x1
	.byte	0x6d
	.byte	0x10
	.4byte	0x1d4
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x1
	.byte	0x9c
	.4byte	0xdbb
	.byte	0x1b
	.string	"f"
	.byte	0x1
	.byte	0x6d
	.byte	0x24
	.4byte	0x72b
	.4byte	.LLST41
	.byte	0x1b
	.string	"buf"
	.byte	0x1
	.byte	0x6d
	.byte	0x33
	.4byte	0x139
	.4byte	.LLST42
	.byte	0x1b
	.string	"len"
	.byte	0x1
	.byte	0x6d
	.byte	0x3f
	.4byte	0x25
	.4byte	.LLST43
	.byte	0x27
	.4byte	.LVL73
	.4byte	0x112a
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x19
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x28
	.4byte	0xdcc
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	.LASF140
	.byte	0x1
	.byte	0x45
	.byte	0x10
	.4byte	0x1d4
	.byte	0x1
	.4byte	0xe27
	.byte	0x2a
	.string	"f"
	.byte	0x1
	.byte	0x45
	.byte	0x25
	.4byte	0x72b
	.byte	0x2a
	.string	"buf"
	.byte	0x1
	.byte	0x45
	.byte	0x34
	.4byte	0x139
	.byte	0x2a
	.string	"len"
	.byte	0x1
	.byte	0x45
	.byte	0x40
	.4byte	0x25
	.byte	0x2b
	.4byte	.LASF136
	.byte	0x1
	.byte	0x45
	.byte	0x49
	.4byte	0x7cc
	.byte	0x1d
	.4byte	.LASF133
	.byte	0x1
	.byte	0x47
	.byte	0x12
	.4byte	0xb6a
	.byte	0x2c
	.string	"ret"
	.byte	0x1
	.byte	0x49
	.byte	0xd
	.4byte	0x1d4
	.byte	0x2c
	.string	"evt"
	.byte	0x1
	.byte	0x4b
	.byte	0x12
	.4byte	0xcca
	.byte	0x2d
	.string	"out"
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0
	.byte	0x1a
	.4byte	.LASF137
	.byte	0x1
	.byte	0x2f
	.byte	0xc
	.4byte	0x38
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0xf6c
	.byte	0x1c
	.4byte	.LASF138
	.byte	0x1
	.byte	0x2f
	.byte	0x20
	.4byte	0x72b
	.4byte	.LLST49
	.byte	0x21
	.4byte	.LASF133
	.byte	0x1
	.byte	0x31
	.byte	0x12
	.4byte	0xb6a
	.4byte	.LLST50
	.byte	0x2e
	.4byte	.LBB90
	.4byte	.LBE90-.LBB90
	.4byte	0xeb6
	.byte	0x17
	.string	"n"
	.byte	0x1
	.byte	0x35
	.byte	0x12
	.4byte	0xf6c
	.4byte	.LLST53
	.byte	0x22
	.4byte	0x107a
	.4byte	.LBB91
	.4byte	.LBE91-.LBB91
	.byte	0x1
	.byte	0x36
	.byte	0x9
	.4byte	0xeac
	.byte	0x23
	.4byte	0x1087
	.4byte	.LLST54
	.byte	0x24
	.4byte	0x1093
	.4byte	.LLST55
	.byte	0x24
	.4byte	0x109f
	.4byte	.LLST56
	.byte	0
	.byte	0x2f
	.4byte	.LVL97
	.4byte	0x12f0
	.byte	0
	.byte	0x2e
	.4byte	.LBB93
	.4byte	.LBE93-.LBB93
	.4byte	0xf0b
	.byte	0x17
	.string	"n"
	.byte	0x1
	.byte	0x3b
	.byte	0x12
	.4byte	0xf6c
	.4byte	.LLST57
	.byte	0x22
	.4byte	0x107a
	.4byte	.LBB94
	.4byte	.LBE94-.LBB94
	.byte	0x1
	.byte	0x3c
	.byte	0x9
	.4byte	0xf01
	.byte	0x23
	.4byte	0x1087
	.4byte	.LLST58
	.byte	0x24
	.4byte	0x1093
	.4byte	.LLST59
	.byte	0x24
	.4byte	0x109f
	.4byte	.LLST60
	.byte	0
	.byte	0x2f
	.4byte	.LVL102
	.4byte	0x12f0
	.byte	0
	.byte	0x22
	.4byte	0x103c
	.4byte	.LBB86
	.4byte	.LBE86-.LBB86
	.byte	0x1
	.byte	0x34
	.byte	0xd
	.4byte	0xf29
	.byte	0x23
	.4byte	0x104d
	.4byte	.LLST51
	.byte	0
	.byte	0x22
	.4byte	0x103c
	.4byte	.LBB88
	.4byte	.LBE88-.LBB88
	.byte	0x1
	.byte	0x3a
	.byte	0xd
	.4byte	0xf47
	.byte	0x23
	.4byte	0x104d
	.4byte	.LLST52
	.byte	0
	.byte	0x1f
	.4byte	.LVL85
	.4byte	0x12fd
	.4byte	0xf5b
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL90
	.4byte	0x12f0
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x255
	.byte	0x1a
	.4byte	.LASF139
	.byte	0x1
	.byte	0x24
	.byte	0xc
	.4byte	0x38
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x103c
	.byte	0x1c
	.4byte	.LASF112
	.byte	0x1
	.byte	0x24
	.byte	0x20
	.4byte	0x6dd
	.4byte	.LLST19
	.byte	0x1c
	.4byte	.LASF138
	.byte	0x1
	.byte	0x24
	.byte	0x2e
	.4byte	0x72b
	.4byte	.LLST20
	.byte	0x21
	.4byte	.LASF133
	.byte	0x1
	.byte	0x26
	.byte	0x12
	.4byte	0xb6a
	.4byte	.LLST21
	.byte	0x22
	.4byte	0x1060
	.4byte	.LBB52
	.4byte	.LBE52-.LBB52
	.byte	0x1
	.byte	0x29
	.byte	0x5
	.4byte	0xfda
	.byte	0x23
	.4byte	0x106d
	.4byte	.LLST22
	.byte	0
	.byte	0x22
	.4byte	0x1060
	.4byte	.LBB54
	.4byte	.LBE54-.LBB54
	.byte	0x1
	.byte	0x2a
	.byte	0x5
	.4byte	0xff8
	.byte	0x23
	.4byte	0x106d
	.4byte	.LLST23
	.byte	0
	.byte	0x1f
	.4byte	.LVL34
	.4byte	0x1309
	.4byte	0x100c
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.byte	0x1f
	.4byte	.LVL36
	.4byte	0x1316
	.4byte	0x102b
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
	.byte	0x28
	.byte	0
	.byte	0x18
	.4byte	.LVL37
	.4byte	0x1322
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	.LASF141
	.byte	0x2
	.byte	0x56
	.byte	0x13
	.4byte	0x38
	.byte	0x3
	.4byte	0x105a
	.byte	0x2b
	.4byte	.LASF142
	.byte	0x2
	.byte	0x56
	.byte	0x2e
	.4byte	0x105a
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x261
	.byte	0x30
	.4byte	.LASF143
	.byte	0x2
	.byte	0x4b
	.byte	0x14
	.byte	0x3
	.4byte	0x107a
	.byte	0x2b
	.4byte	.LASF112
	.byte	0x2
	.byte	0x4b
	.byte	0x28
	.4byte	0xf6c
	.byte	0
	.byte	0x30
	.4byte	.LASF144
	.byte	0x2
	.byte	0x42
	.byte	0x14
	.byte	0x3
	.4byte	0x10ac
	.byte	0x2b
	.4byte	.LASF112
	.byte	0x2
	.byte	0x42
	.byte	0x27
	.4byte	0xf6c
	.byte	0x1d
	.4byte	.LASF43
	.byte	0x2
	.byte	0x44
	.byte	0xe
	.4byte	0xf6c
	.byte	0x1d
	.4byte	.LASF44
	.byte	0x2
	.byte	0x45
	.byte	0xe
	.4byte	0xf6c
	.byte	0
	.byte	0x30
	.4byte	.LASF145
	.byte	0x2
	.byte	0x3d
	.byte	0x14
	.byte	0x3
	.4byte	0x10d2
	.byte	0x2b
	.4byte	.LASF112
	.byte	0x2
	.byte	0x3d
	.byte	0x2c
	.4byte	0xf6c
	.byte	0x2b
	.4byte	.LASF146
	.byte	0x2
	.byte	0x3d
	.byte	0x3b
	.4byte	0xf6c
	.byte	0
	.byte	0x30
	.4byte	.LASF147
	.byte	0x2
	.byte	0x38
	.byte	0x14
	.byte	0x3
	.4byte	0x10f8
	.byte	0x2b
	.4byte	.LASF112
	.byte	0x2
	.byte	0x38
	.byte	0x27
	.4byte	0xf6c
	.byte	0x2b
	.4byte	.LASF146
	.byte	0x2
	.byte	0x38
	.byte	0x36
	.4byte	0xf6c
	.byte	0
	.byte	0x30
	.4byte	.LASF148
	.byte	0x2
	.byte	0x24
	.byte	0x14
	.byte	0x3
	.4byte	0x112a
	.byte	0x2b
	.4byte	.LASF112
	.byte	0x2
	.byte	0x24
	.byte	0x29
	.4byte	0xf6c
	.byte	0x2b
	.4byte	.LASF43
	.byte	0x2
	.byte	0x24
	.byte	0x38
	.4byte	0xf6c
	.byte	0x2b
	.4byte	.LASF44
	.byte	0x2
	.byte	0x24
	.byte	0x47
	.4byte	0xf6c
	.byte	0
	.byte	0x31
	.4byte	0xdbb
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x1
	.byte	0x9c
	.4byte	0x12c0
	.byte	0x23
	.4byte	0xdd6
	.4byte	.LLST24
	.byte	0x23
	.4byte	0xde2
	.4byte	.LLST25
	.byte	0x23
	.4byte	0xdee
	.4byte	.LLST26
	.byte	0x24
	.4byte	0xdfa
	.4byte	.LLST27
	.byte	0x24
	.4byte	0xe06
	.4byte	.LLST28
	.byte	0x24
	.4byte	0xe12
	.4byte	.LLST29
	.byte	0x32
	.4byte	0xe1e
	.4byte	.L22
	.byte	0x33
	.4byte	0xdcc
	.byte	0x6
	.byte	0xfa
	.4byte	0xdcc
	.byte	0x9f
	.byte	0x34
	.4byte	0xdcc
	.byte	0x22
	.4byte	0x107a
	.4byte	.LBB66
	.4byte	.LBE66-.LBB66
	.byte	0x1
	.byte	0x4f
	.byte	0x9
	.4byte	0x11bd
	.byte	0x23
	.4byte	0x1087
	.4byte	.LLST30
	.byte	0x24
	.4byte	0x1093
	.4byte	.LLST31
	.byte	0x24
	.4byte	0x109f
	.4byte	.LLST32
	.byte	0
	.byte	0x22
	.4byte	0x10d2
	.4byte	.LBB68
	.4byte	.LBE68-.LBB68
	.byte	0x1
	.byte	0x5f
	.byte	0x9
	.4byte	0x1210
	.byte	0x23
	.4byte	0x10eb
	.4byte	.LLST33
	.byte	0x23
	.4byte	0x10df
	.4byte	.LLST34
	.byte	0x35
	.4byte	0x10f8
	.4byte	.LBB70
	.4byte	.LBE70-.LBB70
	.byte	0x2
	.byte	0x3a
	.byte	0x5
	.byte	0x23
	.4byte	0x111d
	.4byte	.LLST35
	.byte	0x23
	.4byte	0x1111
	.4byte	.LLST36
	.byte	0x23
	.4byte	0x1105
	.4byte	.LLST37
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	0x10ac
	.4byte	.LBB72
	.4byte	.LBE72-.LBB72
	.byte	0x1
	.byte	0x61
	.byte	0x9
	.4byte	0x1261
	.byte	0x33
	.4byte	0x10c5
	.byte	0x3
	.byte	0x78
	.byte	0x14
	.byte	0x9f
	.byte	0x33
	.4byte	0x10b9
	.byte	0x1
	.byte	0x59
	.byte	0x35
	.4byte	0x10f8
	.4byte	.LBB74
	.4byte	.LBE74-.LBB74
	.byte	0x2
	.byte	0x3f
	.byte	0x5
	.byte	0x23
	.4byte	0x111d
	.4byte	.LLST38
	.byte	0x23
	.4byte	0x1111
	.4byte	.LLST39
	.byte	0x23
	.4byte	0x1105
	.4byte	.LLST40
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL47
	.4byte	0x12cc
	.4byte	0x127b
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0x1f
	.4byte	.LVL54
	.4byte	0x12e4
	.4byte	0x129b
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0xc
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL59
	.4byte	0x12d8
	.4byte	0x12af
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL66
	.4byte	0x1309
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0x36
	.4byte	.LASF149
	.4byte	.LASF149
	.byte	0xf
	.byte	0xe
	.byte	0x5
	.byte	0x36
	.4byte	.LASF150
	.4byte	.LASF150
	.byte	0xa
	.byte	0xa7
	.byte	0x9
	.byte	0x36
	.4byte	.LASF151
	.4byte	.LASF151
	.byte	0xa
	.byte	0xb1
	.byte	0x9
	.byte	0x36
	.4byte	.LASF152
	.4byte	.LASF152
	.byte	0x10
	.byte	0x1f
	.byte	0x8
	.byte	0x37
	.4byte	.LASF153
	.4byte	.LASF153
	.byte	0xa
	.2byte	0x1e1
	.byte	0xa
	.byte	0x36
	.4byte	.LASF154
	.4byte	.LASF154
	.byte	0xa
	.byte	0x9c
	.byte	0xa
	.byte	0x37
	.4byte	.LASF155
	.4byte	.LASF155
	.byte	0xa
	.2byte	0x1bf
	.byte	0xb
	.byte	0x36
	.4byte	.LASF156
	.4byte	.LASF156
	.byte	0x10
	.byte	0x21
	.byte	0x8
	.byte	0x36
	.4byte	.LASF157
	.4byte	.LASF157
	.byte	0xa
	.byte	0x94
	.byte	0x9
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
	.byte	0x26
	.byte	0
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
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x17
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
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
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
	.byte	0x15
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
	.byte	0x16
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
	.byte	0x17
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
	.byte	0x17
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
	.byte	0
	.byte	0
	.byte	0x1e
	.byte	0xa
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x11
	.byte	0x1
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
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x93,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x21
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
	.byte	0x22
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
	.byte	0x23
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x24
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x25
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
	.byte	0x26
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
	.byte	0x27
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
	.byte	0x28
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x29
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
	.byte	0x2a
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
	.byte	0xa
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x2e
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
	.byte	0x2f
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
	.byte	0x31
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
	.byte	0x96,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x32
	.byte	0xa
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x33
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x34
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x35
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x37
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
.LLST61:
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL3-1
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL3-1
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL5
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL3-1
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL10
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL14
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL27
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL10
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL15-1
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL27
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL11
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL30
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL12
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL21
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL30
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL16
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL30
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x3
	.byte	0x78
	.byte	0x20
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x3
	.byte	0x78
	.byte	0x20
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL74
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL75
	.4byte	.LVL81-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL81-1
	.4byte	.LVL81
	.2byte	0x6
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL74
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL76
	.4byte	.LVL81-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL81-1
	.4byte	.LVL81
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL76
	.4byte	.LVL81-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL81-1
	.4byte	.LVL81
	.2byte	0x6
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x34
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL76
	.4byte	.LVL81-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL81-1
	.4byte	.LVL81
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL72
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL71
	.4byte	.LVL73-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL73-1
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL71
	.4byte	.LVL73-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL73-1
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL82
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL84
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL83
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x3
	.byte	0x79
	.byte	0x60
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL93
	.4byte	.LVL97-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL93
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL94
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL98
	.4byte	.LVL102-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL98
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL99
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x3
	.byte	0x78
	.byte	0x14
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x3
	.byte	0x78
	.byte	0x20
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL33
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL32
	.4byte	.LVL34-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL34-1
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL43
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL35
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x79
	.byte	0x4
	.4byte	.LVL43
	.4byte	.LFE15
	.2byte	0x3
	.byte	0x7f
	.byte	0x60
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL45
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL63
	.4byte	.LVL65
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL44
	.4byte	.LVL47-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL47-1
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL62
	.4byte	.LVL65
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL44
	.4byte	.LVL47-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL47-1
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL46
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL65
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL48
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL58
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL65
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL48
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x78
	.byte	0x24
	.4byte	.LVL51
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL65
	.4byte	.LVL66-1
	.2byte	0x2
	.byte	0x78
	.byte	0x24
	.4byte	.LVL67
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x78
	.byte	0x24
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x3
	.byte	0x78
	.byte	0x14
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x59
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
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB44
	.4byte	.LBE44
	.4byte	.LBB51
	.4byte	.LBE51
	.4byte	0
	.4byte	0
	.4byte	.LBB46
	.4byte	.LBE46
	.4byte	.LBB49
	.4byte	.LBE49
	.4byte	0
	.4byte	0
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF131:
	.string	"event_poll"
.LASF135:
	.string	"event_write"
.LASF77:
	.string	"aos_dirent_t"
.LASF127:
	.string	"inited"
.LASF125:
	.string	"event_dev_t"
.LASF111:
	.string	"inode_t"
.LASF119:
	.string	"poll_cb"
.LASF159:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/src/device.c"
.LASF80:
	.string	"aos_dir_t"
.LASF155:
	.string	"aos_malloc"
.LASF0:
	.string	"unsigned int"
.LASF44:
	.string	"next"
.LASF61:
	.string	"st_blksize"
.LASF142:
	.string	"head"
.LASF110:
	.string	"refs"
.LASF47:
	.string	"events"
.LASF95:
	.string	"opendir"
.LASF89:
	.string	"sync"
.LASF23:
	.string	"__nlink_t"
.LASF71:
	.string	"f_ffree"
.LASF107:
	.string	"i_name"
.LASF43:
	.string	"prev"
.LASF76:
	.string	"d_name"
.LASF158:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF19:
	.string	"__ino_t"
.LASF40:
	.string	"aos_mutex_t"
.LASF31:
	.string	"ino_t"
.LASF126:
	.string	"dev_event_t"
.LASF101:
	.string	"telldir"
.LASF118:
	.string	"mutex"
.LASF106:
	.string	"i_arg"
.LASF93:
	.string	"unlink"
.LASF11:
	.string	"long long unsigned int"
.LASF62:
	.string	"st_blocks"
.LASF138:
	.string	"file"
.LASF114:
	.string	"offset"
.LASF113:
	.string	"f_arg"
.LASF105:
	.string	"i_fops"
.LASF49:
	.string	"stat"
.LASF50:
	.string	"st_dev"
.LASF121:
	.string	"counter"
.LASF28:
	.string	"tv_nsec"
.LASF122:
	.string	"bufs"
.LASF2:
	.string	"size_t"
.LASF150:
	.string	"aos_mutex_lock"
.LASF20:
	.string	"__mode_t"
.LASF75:
	.string	"d_type"
.LASF117:
	.string	"_Bool"
.LASF55:
	.string	"st_gid"
.LASF100:
	.string	"rewinddir"
.LASF52:
	.string	"st_mode"
.LASF98:
	.string	"mkdir"
.LASF115:
	.string	"file_t"
.LASF53:
	.string	"st_nlink"
.LASF161:
	.string	"inode_ops_t"
.LASF136:
	.string	"urgent"
.LASF87:
	.string	"ioctl"
.LASF88:
	.string	"poll"
.LASF39:
	.string	"aos_hdl_t"
.LASF41:
	.string	"timespec"
.LASF24:
	.string	"char"
.LASF29:
	.string	"blkcnt_t"
.LASF116:
	.string	"poll_notify_t"
.LASF84:
	.string	"close"
.LASF97:
	.string	"closedir"
.LASF36:
	.string	"ssize_t"
.LASF92:
	.string	"lseek"
.LASF25:
	.string	"uint8_t"
.LASF109:
	.string	"type"
.LASF145:
	.string	"dlist_add_tail"
.LASF26:
	.string	"time_t"
.LASF91:
	.string	"fs_ops"
.LASF64:
	.string	"statfs"
.LASF132:
	.string	"event_read"
.LASF51:
	.string	"st_ino"
.LASF70:
	.string	"f_files"
.LASF148:
	.string	"__dlist_add"
.LASF10:
	.string	"long long int"
.LASF86:
	.string	"write"
.LASF143:
	.string	"dlist_init"
.LASF65:
	.string	"f_type"
.LASF128:
	.string	"event_fops"
.LASF16:
	.string	"__dev_t"
.LASF162:
	.string	"vfs_device_init"
.LASF33:
	.string	"dev_t"
.LASF68:
	.string	"f_bfree"
.LASF82:
	.string	"file_ops"
.LASF154:
	.string	"aos_mutex_free"
.LASF160:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/yloop"
.LASF81:
	.string	"file_ops_t"
.LASF156:
	.string	"memset"
.LASF46:
	.string	"pollfd"
.LASF69:
	.string	"f_bavail"
.LASF72:
	.string	"f_fsid"
.LASF133:
	.string	"pdev"
.LASF63:
	.string	"st_spare4"
.LASF103:
	.string	"access"
.LASF94:
	.string	"rename"
.LASF124:
	.string	"buf_cache"
.LASF18:
	.string	"__gid_t"
.LASF67:
	.string	"f_blocks"
.LASF35:
	.string	"gid_t"
.LASF139:
	.string	"event_open"
.LASF12:
	.string	"__int_least64_t"
.LASF104:
	.string	"i_ops"
.LASF34:
	.string	"uid_t"
.LASF99:
	.string	"rmdir"
.LASF48:
	.string	"revents"
.LASF5:
	.string	"short int"
.LASF59:
	.string	"st_mtim"
.LASF108:
	.string	"i_flags"
.LASF7:
	.string	"long int"
.LASF147:
	.string	"dlist_add"
.LASF112:
	.string	"node"
.LASF96:
	.string	"readdir"
.LASF73:
	.string	"f_namelen"
.LASF130:
	.string	"notify"
.LASF14:
	.string	"__blksize_t"
.LASF42:
	.string	"dlist_s"
.LASF45:
	.string	"dlist_t"
.LASF17:
	.string	"__uid_t"
.LASF3:
	.string	"__uint8_t"
.LASF58:
	.string	"st_atim"
.LASF85:
	.string	"read"
.LASF78:
	.string	"dd_vfs_fd"
.LASF83:
	.string	"open"
.LASF140:
	.string	"_event_write"
.LASF27:
	.string	"tv_sec"
.LASF9:
	.string	"long unsigned int"
.LASF146:
	.string	"queue"
.LASF157:
	.string	"aos_mutex_new"
.LASF38:
	.string	"nlink_t"
.LASF66:
	.string	"f_bsize"
.LASF4:
	.string	"unsigned char"
.LASF129:
	.string	"setup"
.LASF8:
	.string	"__uint32_t"
.LASF30:
	.string	"blksize_t"
.LASF120:
	.string	"poll_data"
.LASF57:
	.string	"st_size"
.LASF149:
	.string	"aos_register_driver"
.LASF74:
	.string	"d_ino"
.LASF144:
	.string	"dlist_del"
.LASF153:
	.string	"aos_free"
.LASF134:
	.string	"event_ioctl"
.LASF54:
	.string	"st_uid"
.LASF21:
	.string	"__off_t"
.LASF60:
	.string	"st_ctim"
.LASF22:
	.string	"_ssize_t"
.LASF79:
	.string	"dd_rsv"
.LASF1:
	.string	"signed char"
.LASF37:
	.string	"mode_t"
.LASF32:
	.string	"off_t"
.LASF6:
	.string	"short unsigned int"
.LASF152:
	.string	"memcpy"
.LASF102:
	.string	"seekdir"
.LASF137:
	.string	"event_close"
.LASF13:
	.string	"__blkcnt_t"
.LASF15:
	.string	"_off_t"
.LASF56:
	.string	"st_rdev"
.LASF151:
	.string	"aos_mutex_unlock"
.LASF123:
	.string	"cache_count"
.LASF90:
	.string	"fs_ops_t"
.LASF141:
	.string	"dlist_empty"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
