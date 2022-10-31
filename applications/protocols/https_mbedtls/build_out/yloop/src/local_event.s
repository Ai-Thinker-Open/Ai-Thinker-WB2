	.file	"local_event.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.event_read_cb,"ax",@progbits
	.align	1
	.type	event_read_cb, @function
event_read_cb:
.LFB16:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/src/local_event.c"
	.loc 1 76 1
	.cfi_startproc
.LVL0:
	.loc 1 77 5
	.loc 1 78 5
	.loc 1 76 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 78 15
	li	a2,16
	mv	a1,sp
.LVL1:
	.loc 1 76 1
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.loc 1 78 15
	call	aos_read
.LVL2:
	.loc 1 79 5 is_stmt 1
	.loc 1 79 8 is_stmt 0
	li	a5,16
	bne	a0,a5,.L1
	.loc 1 80 9 is_stmt 1
.LVL3:
.LBB11:
.LBB12:
	.loc 1 42 5
	.loc 1 42 8 is_stmt 0
	lhu	a4,4(sp)
	li	a5,256
	bne	a4,a5,.L4
.LBB13:
	.loc 1 43 9 is_stmt 1
.LVL4:
	.loc 1 44 9
	.loc 1 45 9
	lw	a0,12(sp)
.LVL5:
	lw	a5,8(sp)
	jalr	a5
.LVL6:
	.loc 1 47 9
.L1:
.LBE13:
.LBE12:
.LBE11:
	.loc 1 82 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL7:
.L4:
	.cfi_restore_state
.LBB15:
.LBB14:
	.loc 1 50 5 is_stmt 1
	.loc 1 51 5
	.loc 1 51 21 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	addi	a4,a5,%lo(.LANCHOR0)
	lw	s0,4(a4)
.LVL8:
	addi	s1,a5,%lo(.LANCHOR0)
.LVL9:
.L5:
	.loc 1 51 135 is_stmt 1
	.loc 1 51 5 is_stmt 0
	beq	s0,s1,.L1
	.loc 1 52 9 is_stmt 1
	.loc 1 52 23 is_stmt 0
	lhu	a5,16(s0)
	.loc 1 52 12
	beq	a5,zero,.L6
	.loc 1 53 13
	lhu	a4,4(sp)
	bne	a4,a5,.L7
.L6:
	.loc 1 56 9 is_stmt 1
	.loc 1 56 20 is_stmt 0
	lw	a5,8(s0)
	lw	a1,12(s0)
	mv	a0,sp
	jalr	a5
.LVL10:
.L7:
	.loc 1 51 179 is_stmt 1
	.loc 1 51 190 is_stmt 0
	lw	s0,4(s0)
.LVL11:
	j	.L5
.LBE14:
.LBE15:
	.cfi_endproc
.LFE16:
	.size	event_read_cb, .-event_read_cb
	.section	.text._schedule_call,"ax",@progbits
	.align	1
	.type	_schedule_call, @function
_schedule_call:
.LFB22:
	.loc 1 167 1 is_stmt 1
	.cfi_startproc
.LVL12:
	.loc 1 169 5
	.loc 1 169 8 is_stmt 0
	beq	a1,zero,.L19
	.loc 1 169 34 discriminator 1
	lui	a5,%hi(g_main_ctx)
	.loc 1 169 20 discriminator 1
	lw	a4,%lo(g_main_ctx)(a5)
	.loc 1 170 16 discriminator 1
	li	a5,-22
	.loc 1 169 20 discriminator 1
	beq	a4,zero,.L26
	.loc 1 167 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 173 19
	sw	zero,4(sp)
	li	a5,256
	.loc 1 167 1
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	mv	s0,a3
	.loc 1 173 5 is_stmt 1
	.loc 1 173 19 is_stmt 0
	sw	zero,0(sp)
	sh	a5,4(sp)
	sw	a1,8(sp)
	sw	a2,12(sp)
	.loc 1 178 5 is_stmt 1
	.loc 1 178 14 is_stmt 0
	call	aos_loop_get_eventfd
.LVL13:
	.loc 1 179 5 is_stmt 1
	.loc 1 179 8 is_stmt 0
	bge	a0,zero,.L16
	.loc 1 180 9 is_stmt 1
	.loc 1 180 12 is_stmt 0
	lui	a5,%hi(.LANCHOR1+4)
	lw	a0,%lo(.LANCHOR1+4)(a5)
.LVL14:
.L16:
	.loc 1 183 5 is_stmt 1
	.loc 1 183 8 is_stmt 0
	beq	s0,zero,.L17
	.loc 1 184 9 is_stmt 1
	.loc 1 184 20 is_stmt 0
	lhu	a5,4(sp)
	li	a4,-32768
	or	a5,a5,a4
	sh	a5,4(sp)
.L17:
	.loc 1 186 5 is_stmt 1
.LVL15:
.LBB18:
.LBB19:
	.loc 1 62 4
	.loc 1 62 23 is_stmt 0
	lhu	a1,4(sp)
.LVL16:
	.loc 1 63 5 is_stmt 1
	.loc 1 72 12 is_stmt 0
	mv	a2,sp
	.loc 1 63 17
	slli	a5,a1,17
	.loc 1 69 13
	srli	a1,a1,15
.LVL17:
	.loc 1 63 17
	srli	a5,a5,17
	.loc 1 72 12
	addi	a1,a1,257
	.loc 1 63 17
	sh	a5,4(sp)
.LVL18:
	.loc 1 64 5 is_stmt 1
	.loc 1 66 5
	.loc 1 72 5
	.loc 1 72 12 is_stmt 0
	call	aos_ioctl
.LVL19:
.LBE19:
.LBE18:
	.loc 1 187 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL20:
.L19:
	.loc 1 170 16
	li	a5,-22
.L26:
	.loc 1 187 1
	mv	a0,a5
.LVL21:
	ret
	.cfi_endproc
.LFE22:
	.size	_schedule_call, .-_schedule_call
	.section	.rodata.aos_event_service_init.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"/dev/event"
	.section	.text.aos_event_service_init,"ax",@progbits
	.align	1
	.globl	aos_event_service_init
	.type	aos_event_service_init, @function
aos_event_service_init:
.LFB17:
	.loc 1 85 1 is_stmt 1
	.cfi_startproc
	.loc 1 89 5
	.loc 1 89 14 is_stmt 0
	lui	a0,%hi(.LC0)
	.loc 1 85 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 89 14
	li	a1,0
	addi	a0,a0,%lo(.LC0)
	.loc 1 85 1
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 89 14
	call	aos_open
.LVL22:
	.loc 1 92 20
	lui	a5,%hi(.LANCHOR1)
	addi	a5,a5,%lo(.LANCHOR1)
	.loc 1 92 8
	lw	a4,4(a5)
	.loc 1 89 14
	mv	s0,a0
.LVL23:
	.loc 1 92 5 is_stmt 1
	.loc 1 92 8 is_stmt 0
	bge	a4,zero,.L30
	.loc 1 93 9 is_stmt 1
	.loc 1 93 24 is_stmt 0
	sw	a0,4(a5)
.L30:
	.loc 1 95 5 is_stmt 1
	lui	a1,%hi(event_read_cb)
	li	a2,0
	addi	a1,a1,%lo(event_read_cb)
	mv	a0,s0
	call	aos_poll_read_fd
.LVL24:
	.loc 1 96 5
	mv	a0,s0
	call	aos_loop_set_eventfd
.LVL25:
	.loc 1 98 5
	.loc 1 99 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL26:
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE17:
	.size	aos_event_service_init, .-aos_event_service_init
	.section	.text.aos_event_service_deinit,"ax",@progbits
	.align	1
	.globl	aos_event_service_deinit
	.type	aos_event_service_deinit, @function
aos_event_service_deinit:
.LFB18:
	.loc 1 102 1 is_stmt 1
	.cfi_startproc
.LVL27:
	.loc 1 103 5
	lui	a1,%hi(event_read_cb)
	.loc 1 102 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 103 5
	li	a2,0
	addi	a1,a1,%lo(event_read_cb)
	.loc 1 102 1
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 102 1
	mv	s0,a0
	.loc 1 103 5
	call	aos_cancel_poll_read_fd
.LVL28:
	.loc 1 104 5 is_stmt 1
	mv	a0,s0
	.loc 1 105 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
.LVL29:
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 104 5
	tail	aos_close
.LVL30:
	.cfi_endproc
.LFE18:
	.size	aos_event_service_deinit, .-aos_event_service_deinit
	.section	.text.aos_post_event,"ax",@progbits
	.align	1
	.globl	aos_post_event
	.type	aos_post_event, @function
aos_post_event:
.LFB19:
	.loc 1 108 1 is_stmt 1
	.cfi_startproc
.LVL31:
	.loc 1 109 5
.LBB22:
.LBB23:
	.loc 1 63 17 is_stmt 0
	slli	a5,a0,17
.LBE23:
.LBE22:
	.loc 1 108 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
.LBB28:
.LBB24:
	.loc 1 63 17
	srli	a5,a5,17
	sh	a5,4(sp)
	.loc 1 69 13
	srli	a0,a0,15
.LVL32:
	.loc 1 72 12
	lui	a5,%hi(.LANCHOR1+4)
.LBE24:
.LBE28:
	.loc 1 109 19
	sh	a1,6(sp)
.LBB29:
.LBB25:
	.loc 1 72 12
	addi	a1,a0,257
.LVL33:
	lw	a0,%lo(.LANCHOR1+4)(a5)
.LBE25:
.LBE29:
	.loc 1 109 19
	sw	a2,8(sp)
	.loc 1 115 5 is_stmt 1
.LVL34:
.LBB30:
.LBB26:
	.loc 1 62 4
	.loc 1 63 5
	.loc 1 64 5
	.loc 1 66 5
	.loc 1 72 5
	.loc 1 72 12 is_stmt 0
	mv	a2,sp
.LVL35:
.LBE26:
.LBE30:
	.loc 1 108 1
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 109 19
	sw	zero,0(sp)
	sw	zero,12(sp)
.LBB31:
.LBB27:
	.loc 1 72 12
	call	aos_ioctl
.LVL36:
.LBE27:
.LBE31:
	.loc 1 116 1
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE19:
	.size	aos_post_event, .-aos_post_event
	.section	.text.aos_register_event_filter,"ax",@progbits
	.align	1
	.globl	aos_register_event_filter
	.type	aos_register_event_filter, @function
aos_register_event_filter:
.LFB20:
	.loc 1 119 1 is_stmt 1
	.cfi_startproc
.LVL37:
	.loc 1 120 5
	.loc 1 120 8 is_stmt 0
	beq	a1,zero,.L40
	.loc 1 119 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s2,0(sp)
	.cfi_offset 18, -16
	mv	s2,a0
	.loc 1 124 37
	li	a0,20
.LVL38:
	.loc 1 119 1
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	mv	s0,a1
	mv	s1,a2
	.loc 1 124 5 is_stmt 1
	.loc 1 124 37 is_stmt 0
	call	aos_malloc
.LVL39:
	mv	a5,a0
.LVL40:
	.loc 1 125 5 is_stmt 1
	.loc 1 126 16 is_stmt 0
	li	a0,-12
.LVL41:
	.loc 1 125 8
	beq	a5,zero,.L38
	.loc 1 129 5 is_stmt 1
.LBB32:
.LBB33:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/aos/list.h"
	.loc 2 63 28 is_stmt 0
	lui	a4,%hi(.LANCHOR0)
	addi	a4,a4,%lo(.LANCHOR0)
	lw	a3,0(a4)
.LBE33:
.LBE32:
	.loc 1 129 20
	sw	s0,8(a5)
	.loc 1 130 5 is_stmt 1
	.loc 1 130 29 is_stmt 0
	sh	s2,16(a5)
	.loc 1 131 5 is_stmt 1
.LBB40:
.LBB38:
.LBB34:
.LBB35:
	.loc 2 39 16 is_stmt 0
	sw	a3,0(a5)
.LBE35:
.LBE34:
.LBE38:
.LBE40:
	.loc 1 131 22
	sw	s1,12(a5)
	.loc 1 133 5 is_stmt 1
.LVL42:
.LBB41:
.LBB39:
	.loc 2 63 5
.LBB37:
.LBB36:
	.loc 2 38 5
	.loc 2 38 16 is_stmt 0
	sw	a4,4(a5)
	.loc 2 39 5 is_stmt 1
	.loc 2 41 5
	.loc 2 41 16 is_stmt 0
	sw	a5,4(a3)
	.loc 2 42 5 is_stmt 1
	.loc 2 42 16 is_stmt 0
	sw	a5,0(a4)
.LVL43:
.LBE36:
.LBE37:
.LBE39:
.LBE41:
	.loc 1 135 5 is_stmt 1
	.loc 1 135 12 is_stmt 0
	li	a0,0
.L38:
	.loc 1 136 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL44:
	lw	s1,4(sp)
	.cfi_restore 9
.LVL45:
	lw	s2,0(sp)
	.cfi_restore 18
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL46:
.L40:
	.loc 1 121 16
	li	a0,-22
.LVL47:
	.loc 1 136 1
	ret
	.cfi_endproc
.LFE20:
	.size	aos_register_event_filter, .-aos_register_event_filter
	.section	.text.aos_unregister_event_filter,"ax",@progbits
	.align	1
	.globl	aos_unregister_event_filter
	.type	aos_unregister_event_filter, @function
aos_unregister_event_filter:
.LFB21:
	.loc 1 139 1 is_stmt 1
	.cfi_startproc
.LVL48:
	.loc 1 140 5
	.loc 1 141 5
	.loc 1 141 21 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	addi	a3,a5,%lo(.LANCHOR0)
	.loc 1 139 1
	mv	a4,a0
	.loc 1 141 21
	lw	a0,4(a3)
.LVL49:
	addi	a5,a5,%lo(.LANCHOR0)
.L47:
	.loc 1 141 135 is_stmt 1 discriminator 1
	.loc 1 141 5 is_stmt 0 discriminator 1
	bne	a0,a5,.L50
	.loc 1 159 12
	li	a0,-22
.LVL50:
	.loc 1 160 1
	ret
.LVL51:
.L50:
	.loc 1 142 9 is_stmt 1
	.loc 1 142 12 is_stmt 0
	lhu	a3,16(a0)
	bne	a3,a4,.L48
	.loc 1 146 9 is_stmt 1
	.loc 1 146 12 is_stmt 0
	lw	a3,8(a0)
	bne	a3,a1,.L48
	.loc 1 150 9 is_stmt 1
	.loc 1 150 12 is_stmt 0
	lw	a3,12(a0)
	bne	a3,a2,.L48
	.loc 1 154 9 is_stmt 1
.LVL52:
.LBB44:
.LBB45:
	.loc 2 68 5
.LBE45:
.LBE44:
	.loc 1 139 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LBB47:
.LBB46:
	.loc 2 68 14
	lw	a4,0(a0)
.LVL53:
	.loc 2 69 5 is_stmt 1
	.loc 2 69 14 is_stmt 0
	lw	a5,4(a0)
.LVL54:
	.loc 2 71 5 is_stmt 1
	.loc 2 71 16 is_stmt 0
	sw	a5,4(a4)
	.loc 2 72 5 is_stmt 1
	.loc 2 72 16 is_stmt 0
	sw	a4,0(a5)
.LVL55:
.LBE46:
.LBE47:
	.loc 1 155 9 is_stmt 1
	call	aos_free
.LVL56:
	.loc 1 156 9
	.loc 1 160 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 156 16
	li	a0,0
	.loc 1 160 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL57:
.L48:
	.loc 1 141 179 is_stmt 1 discriminator 2
	.loc 1 141 190 is_stmt 0 discriminator 2
	lw	a0,4(a0)
.LVL58:
	j	.L47
	.cfi_endproc
.LFE21:
	.size	aos_unregister_event_filter, .-aos_unregister_event_filter
	.section	.text.aos_loop_schedule_urgent_call,"ax",@progbits
	.align	1
	.globl	aos_loop_schedule_urgent_call
	.type	aos_loop_schedule_urgent_call, @function
aos_loop_schedule_urgent_call:
.LFB23:
	.loc 1 190 1 is_stmt 1
	.cfi_startproc
.LVL59:
	.loc 1 191 5
	.loc 1 191 12 is_stmt 0
	li	a3,1
	tail	_schedule_call
.LVL60:
	.cfi_endproc
.LFE23:
	.size	aos_loop_schedule_urgent_call, .-aos_loop_schedule_urgent_call
	.section	.text.aos_loop_schedule_call,"ax",@progbits
	.align	1
	.globl	aos_loop_schedule_call
	.type	aos_loop_schedule_call, @function
aos_loop_schedule_call:
.LFB24:
	.loc 1 195 1 is_stmt 1
	.cfi_startproc
.LVL61:
	.loc 1 196 5
	.loc 1 196 12 is_stmt 0
	li	a3,0
	tail	_schedule_call
.LVL62:
	.cfi_endproc
.LFE24:
	.size	aos_loop_schedule_call, .-aos_loop_schedule_call
	.section	.text.aos_schedule_call,"ax",@progbits
	.align	1
	.globl	aos_schedule_call
	.type	aos_schedule_call, @function
aos_schedule_call:
.LFB25:
	.loc 1 200 1 is_stmt 1
	.cfi_startproc
.LVL63:
	.loc 1 201 5
	.loc 1 200 1 is_stmt 0
	mv	a2,a1
	.loc 1 201 12
	li	a3,0
	mv	a1,a0
.LVL64:
	li	a0,0
.LVL65:
	tail	_schedule_call
.LVL66:
	.cfi_endproc
.LFE25:
	.size	aos_schedule_call, .-aos_schedule_call
	.section	.sdata.g_local_event_list,"aw"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	g_local_event_list, @object
	.size	g_local_event_list, 8
g_local_event_list:
	.word	g_local_event_list
	.word	g_local_event_list
	.section	.sdata.local_event,"aw"
	.align	2
	.set	.LANCHOR1,. + 0
	.type	local_event, @object
	.size	local_event, 8
local_event:
	.zero	4
	.word	-1
	.text
.Letext0:
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/aos/yloop.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/yloop_types.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/yloop.h"
	.file 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/fs/vfs/include/vfs.h"
	.file 10 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/aos/kernel.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xaa2
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF82
	.byte	0xc
	.4byte	.LASF83
	.4byte	.LASF84
	.4byte	.Ldebug_ranges0+0x98
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
	.byte	0x2
	.4byte	.LASF6
	.byte	0x4
	.byte	0x39
	.byte	0x1c
	.4byte	0x6c
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.byte	0x2
	.4byte	.LASF9
	.byte	0x4
	.byte	0x4f
	.byte	0x1b
	.4byte	0x86
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.byte	0x5
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.byte	0x2
	.4byte	.LASF14
	.byte	0x5
	.byte	0x18
	.byte	0x13
	.4byte	0x46
	.byte	0x2
	.4byte	.LASF15
	.byte	0x5
	.byte	0x24
	.byte	0x14
	.4byte	0x60
	.byte	0x2
	.4byte	.LASF16
	.byte	0x5
	.byte	0x30
	.byte	0x14
	.4byte	0x7a
	.byte	0x6
	.4byte	.LASF30
	.byte	0x8
	.byte	0x2
	.byte	0x1f
	.byte	0x10
	.4byte	0xf0
	.byte	0x7
	.4byte	.LASF17
	.byte	0x2
	.byte	0x20
	.byte	0x15
	.4byte	0xf0
	.byte	0
	.byte	0x7
	.4byte	.LASF18
	.byte	0x2
	.byte	0x21
	.byte	0x15
	.4byte	0xf0
	.byte	0x4
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0xc8
	.byte	0x2
	.4byte	.LASF19
	.byte	0x2
	.byte	0x22
	.byte	0x3
	.4byte	0xc8
	.byte	0x9
	.byte	0x10
	.byte	0x6
	.byte	0x64
	.byte	0x9
	.4byte	0x14d
	.byte	0x7
	.4byte	.LASF20
	.byte	0x6
	.byte	0x66
	.byte	0xe
	.4byte	0xbc
	.byte	0
	.byte	0x7
	.4byte	.LASF21
	.byte	0x6
	.byte	0x68
	.byte	0xe
	.4byte	0xb0
	.byte	0x4
	.byte	0x7
	.4byte	.LASF22
	.byte	0x6
	.byte	0x6a
	.byte	0xe
	.4byte	0xb0
	.byte	0x6
	.byte	0x7
	.4byte	.LASF23
	.byte	0x6
	.byte	0x6c
	.byte	0x13
	.4byte	0x86
	.byte	0x8
	.byte	0x7
	.4byte	.LASF24
	.byte	0x6
	.byte	0x6e
	.byte	0x13
	.4byte	0x86
	.byte	0xc
	.byte	0
	.byte	0x2
	.4byte	.LASF25
	.byte	0x6
	.byte	0x6f
	.byte	0x3
	.4byte	0x102
	.byte	0x2
	.4byte	.LASF26
	.byte	0x6
	.byte	0x72
	.byte	0x10
	.4byte	0x165
	.byte	0x8
	.byte	0x4
	.4byte	0x16b
	.byte	0xa
	.4byte	0x17b
	.byte	0xb
	.4byte	0x17b
	.byte	0xb
	.4byte	0x9b
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x14d
	.byte	0x2
	.4byte	.LASF27
	.byte	0x6
	.byte	0x74
	.byte	0x10
	.4byte	0x18d
	.byte	0x8
	.byte	0x4
	.4byte	0x193
	.byte	0xa
	.4byte	0x19e
	.byte	0xb
	.4byte	0x9b
	.byte	0
	.byte	0x2
	.4byte	.LASF28
	.byte	0x6
	.byte	0x76
	.byte	0x10
	.4byte	0x1aa
	.byte	0x8
	.byte	0x4
	.4byte	0x1b0
	.byte	0xa
	.4byte	0x1c0
	.byte	0xb
	.4byte	0x38
	.byte	0xb
	.4byte	0x9b
	.byte	0
	.byte	0x2
	.4byte	.LASF29
	.byte	0x6
	.byte	0xce
	.byte	0xf
	.4byte	0x9b
	.byte	0x6
	.4byte	.LASF31
	.byte	0x8
	.byte	0x7
	.byte	0x7
	.byte	0x8
	.4byte	0x200
	.byte	0xc
	.string	"fd"
	.byte	0x7
	.byte	0x8
	.byte	0x9
	.4byte	0x38
	.byte	0
	.byte	0x7
	.4byte	.LASF32
	.byte	0x7
	.byte	0x9
	.byte	0xb
	.4byte	0x59
	.byte	0x4
	.byte	0x7
	.4byte	.LASF33
	.byte	0x7
	.byte	0xa
	.byte	0xb
	.4byte	0x59
	.byte	0x6
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x1cc
	.byte	0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF34
	.byte	0x9
	.byte	0xc
	.byte	0x8
	.byte	0xa
	.byte	0x9
	.4byte	0x23d
	.byte	0x7
	.4byte	.LASF35
	.byte	0x8
	.byte	0xb
	.byte	0x9
	.4byte	0x38
	.byte	0
	.byte	0x7
	.4byte	.LASF36
	.byte	0x8
	.byte	0xc
	.byte	0xb
	.4byte	0x9b
	.byte	0x4
	.byte	0xc
	.string	"cb"
	.byte	0x8
	.byte	0xd
	.byte	0x15
	.4byte	0x19e
	.byte	0x8
	.byte	0
	.byte	0x2
	.4byte	.LASF37
	.byte	0x8
	.byte	0xe
	.byte	0x3
	.4byte	0x20d
	.byte	0x9
	.byte	0x1c
	.byte	0x8
	.byte	0x10
	.byte	0x9
	.4byte	0x2bb
	.byte	0x7
	.4byte	.LASF38
	.byte	0x8
	.byte	0x11
	.byte	0xd
	.4byte	0xf6
	.byte	0
	.byte	0x7
	.4byte	.LASF39
	.byte	0x8
	.byte	0x12
	.byte	0x14
	.4byte	0x200
	.byte	0x8
	.byte	0x7
	.4byte	.LASF40
	.byte	0x8
	.byte	0x13
	.byte	0x13
	.4byte	0x2bb
	.byte	0xc
	.byte	0x7
	.4byte	.LASF41
	.byte	0x8
	.byte	0x14
	.byte	0x9
	.4byte	0x38
	.byte	0x10
	.byte	0x7
	.4byte	.LASF42
	.byte	0x8
	.byte	0x16
	.byte	0xe
	.4byte	0xb0
	.byte	0x14
	.byte	0x7
	.4byte	.LASF43
	.byte	0x8
	.byte	0x17
	.byte	0xd
	.4byte	0xa4
	.byte	0x16
	.byte	0x7
	.4byte	.LASF44
	.byte	0x8
	.byte	0x18
	.byte	0x15
	.4byte	0x206
	.byte	0x17
	.byte	0x7
	.4byte	.LASF45
	.byte	0x8
	.byte	0x19
	.byte	0x15
	.4byte	0x206
	.byte	0x18
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x23d
	.byte	0x2
	.4byte	.LASF46
	.byte	0x8
	.byte	0x1a
	.byte	0x3
	.4byte	0x249
	.byte	0x9
	.byte	0x14
	.byte	0x1
	.byte	0x10
	.byte	0x9
	.4byte	0x30a
	.byte	0x7
	.4byte	.LASF47
	.byte	0x1
	.byte	0x11
	.byte	0xd
	.4byte	0xf6
	.byte	0
	.byte	0xc
	.string	"cb"
	.byte	0x1
	.byte	0x12
	.byte	0x12
	.4byte	0x159
	.byte	0x8
	.byte	0x7
	.4byte	.LASF48
	.byte	0x1
	.byte	0x13
	.byte	0xb
	.4byte	0x9b
	.byte	0xc
	.byte	0x7
	.4byte	.LASF49
	.byte	0x1
	.byte	0x14
	.byte	0xe
	.4byte	0xb0
	.byte	0x10
	.byte	0
	.byte	0x2
	.4byte	.LASF50
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.4byte	0x2cd
	.byte	0x9
	.byte	0x8
	.byte	0x1
	.byte	0x17
	.byte	0x8
	.4byte	0x339
	.byte	0x7
	.4byte	.LASF51
	.byte	0x1
	.byte	0x18
	.byte	0xb
	.4byte	0x9b
	.byte	0
	.byte	0xc
	.string	"fd"
	.byte	0x1
	.byte	0x19
	.byte	0x9
	.4byte	0x38
	.byte	0x4
	.byte	0
	.byte	0xd
	.4byte	.LASF52
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.4byte	0x316
	.byte	0x5
	.byte	0x3
	.4byte	local_event
	.byte	0xd
	.4byte	.LASF53
	.byte	0x1
	.byte	0x1e
	.byte	0x10
	.4byte	0xf6
	.byte	0x5
	.byte	0x3
	.4byte	g_local_event_list
	.byte	0xe
	.4byte	.LASF85
	.byte	0x1
	.byte	0x24
	.byte	0x15
	.4byte	0x369
	.byte	0x8
	.byte	0x4
	.4byte	0x2c1
	.byte	0xf
	.4byte	.LASF54
	.byte	0x1
	.byte	0xc7
	.byte	0x5
	.4byte	0x38
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x1
	.byte	0x9c
	.4byte	0x3cc
	.byte	0x10
	.string	"fun"
	.byte	0x1
	.byte	0xc7
	.byte	0x22
	.4byte	0x181
	.4byte	.LLST44
	.byte	0x10
	.string	"arg"
	.byte	0x1
	.byte	0xc7
	.byte	0x2d
	.4byte	0x9b
	.4byte	.LLST45
	.byte	0x11
	.4byte	.LVL66
	.4byte	0x4b0
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x12
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LASF55
	.byte	0x1
	.byte	0xc2
	.byte	0x5
	.4byte	0x38
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x1
	.byte	0x9c
	.4byte	0x43b
	.byte	0x13
	.4byte	.LASF56
	.byte	0x1
	.byte	0xc2
	.byte	0x28
	.4byte	0x43b
	.4byte	.LLST41
	.byte	0x10
	.string	"fun"
	.byte	0x1
	.byte	0xc2
	.byte	0x39
	.4byte	0x181
	.4byte	.LLST42
	.byte	0x10
	.string	"arg"
	.byte	0x1
	.byte	0xc2
	.byte	0x44
	.4byte	0x9b
	.4byte	.LLST43
	.byte	0x11
	.4byte	.LVL62
	.4byte	0x4b0
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x12
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x1c0
	.byte	0xf
	.4byte	.LASF57
	.byte	0x1
	.byte	0xbd
	.byte	0x5
	.4byte	0x38
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x1
	.byte	0x9c
	.4byte	0x4b0
	.byte	0x13
	.4byte	.LASF56
	.byte	0x1
	.byte	0xbd
	.byte	0x2f
	.4byte	0x43b
	.4byte	.LLST38
	.byte	0x10
	.string	"fun"
	.byte	0x1
	.byte	0xbd
	.byte	0x40
	.4byte	0x181
	.4byte	.LLST39
	.byte	0x10
	.string	"arg"
	.byte	0x1
	.byte	0xbd
	.byte	0x4b
	.4byte	0x9b
	.4byte	.LLST40
	.byte	0x11
	.4byte	.LVL60
	.4byte	0x4b0
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x12
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LASF86
	.byte	0x1
	.byte	0xa5
	.byte	0xc
	.4byte	0x38
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x1
	.byte	0x9c
	.4byte	0x581
	.byte	0x13
	.4byte	.LASF56
	.byte	0x1
	.byte	0xa5
	.byte	0x27
	.4byte	0x43b
	.4byte	.LLST7
	.byte	0x10
	.string	"fun"
	.byte	0x1
	.byte	0xa5
	.byte	0x38
	.4byte	0x181
	.4byte	.LLST8
	.byte	0x10
	.string	"arg"
	.byte	0x1
	.byte	0xa5
	.byte	0x43
	.4byte	0x9b
	.4byte	.LLST9
	.byte	0x13
	.4byte	.LASF58
	.byte	0x1
	.byte	0xa6
	.byte	0x1f
	.4byte	0x206
	.4byte	.LLST10
	.byte	0xd
	.4byte	.LASF59
	.byte	0x1
	.byte	0xad
	.byte	0x13
	.4byte	0x14d
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x15
	.string	"fd"
	.byte	0x1
	.byte	0xb2
	.byte	0x9
	.4byte	0x38
	.4byte	.LLST11
	.byte	0x16
	.4byte	0x91a
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.byte	0x1
	.byte	0xba
	.byte	0xc
	.4byte	0x56f
	.byte	0x17
	.4byte	0x936
	.4byte	.LLST12
	.byte	0x17
	.4byte	0x92b
	.4byte	.LLST13
	.byte	0x18
	.4byte	0x942
	.4byte	.LLST14
	.byte	0x19
	.4byte	0x94e
	.byte	0x1
	.byte	0x5b
	.byte	0x1a
	.4byte	.LVL19
	.4byte	0xa2b
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL13
	.4byte	0xa37
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LASF60
	.byte	0x1
	.byte	0x8a
	.byte	0x5
	.4byte	0x38
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x1
	.byte	0x9c
	.4byte	0x61a
	.byte	0x13
	.4byte	.LASF21
	.byte	0x1
	.byte	0x8a
	.byte	0x2a
	.4byte	0xb0
	.4byte	.LLST31
	.byte	0x10
	.string	"cb"
	.byte	0x1
	.byte	0x8a
	.byte	0x3d
	.4byte	0x159
	.4byte	.LLST32
	.byte	0x13
	.4byte	.LASF48
	.byte	0x1
	.byte	0x8a
	.byte	0x47
	.4byte	0x9b
	.4byte	.LLST33
	.byte	0x1b
	.4byte	.LASF61
	.byte	0x1
	.byte	0x8c
	.byte	0x18
	.4byte	0x61a
	.4byte	.LLST34
	.byte	0x1c
	.4byte	0x99b
	.4byte	.LBB44
	.4byte	.Ldebug_ranges0+0x80
	.byte	0x1
	.byte	0x9a
	.byte	0x9
	.4byte	0x610
	.byte	0x17
	.4byte	0x9a8
	.4byte	.LLST35
	.byte	0x1d
	.4byte	.Ldebug_ranges0+0x80
	.byte	0x18
	.4byte	0x9b4
	.4byte	.LLST36
	.byte	0x18
	.4byte	0x9c0
	.4byte	.LLST37
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LVL56
	.4byte	0xa43
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x30a
	.byte	0xf
	.4byte	.LASF62
	.byte	0x1
	.byte	0x76
	.byte	0x5
	.4byte	0x38
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x1
	.byte	0x9c
	.4byte	0x6dc
	.byte	0x13
	.4byte	.LASF21
	.byte	0x1
	.byte	0x76
	.byte	0x28
	.4byte	0xb0
	.4byte	.LLST22
	.byte	0x10
	.string	"cb"
	.byte	0x1
	.byte	0x76
	.byte	0x3b
	.4byte	0x159
	.4byte	.LLST23
	.byte	0x13
	.4byte	.LASF48
	.byte	0x1
	.byte	0x76
	.byte	0x45
	.4byte	0x9b
	.4byte	.LLST24
	.byte	0x1b
	.4byte	.LASF61
	.byte	0x1
	.byte	0x7c
	.byte	0x18
	.4byte	0x61a
	.4byte	.LLST25
	.byte	0x1c
	.4byte	0x9d3
	.4byte	.LBB32
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0x85
	.byte	0x5
	.4byte	0x6cc
	.byte	0x17
	.4byte	0x9ec
	.4byte	.LLST26
	.byte	0x17
	.4byte	0x9e0
	.4byte	.LLST27
	.byte	0x1f
	.4byte	0x9f9
	.4byte	.LBB34
	.4byte	.Ldebug_ranges0+0x68
	.byte	0x2
	.byte	0x3f
	.byte	0x5
	.byte	0x17
	.4byte	0xa1e
	.4byte	.LLST26
	.byte	0x17
	.4byte	0xa12
	.4byte	.LLST29
	.byte	0x17
	.4byte	0xa06
	.4byte	.LLST27
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL39
	.4byte	0xa50
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x44
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LASF63
	.byte	0x1
	.byte	0x6b
	.byte	0x5
	.4byte	0x38
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x1
	.byte	0x9c
	.4byte	0x77b
	.byte	0x13
	.4byte	.LASF21
	.byte	0x1
	.byte	0x6b
	.byte	0x1d
	.4byte	0xb0
	.4byte	.LLST17
	.byte	0x13
	.4byte	.LASF22
	.byte	0x1
	.byte	0x6b
	.byte	0x2c
	.4byte	0xb0
	.4byte	.LLST18
	.byte	0x13
	.4byte	.LASF23
	.byte	0x1
	.byte	0x6b
	.byte	0x40
	.4byte	0x86
	.4byte	.LLST19
	.byte	0xd
	.4byte	.LASF59
	.byte	0x1
	.byte	0x6d
	.byte	0x13
	.4byte	0x14d
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x1f
	.4byte	0x91a
	.4byte	.LBB22
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x73
	.byte	0xc
	.byte	0x17
	.4byte	0x936
	.4byte	.LLST20
	.byte	0x17
	.4byte	0x92b
	.4byte	.LLST21
	.byte	0x1d
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x20
	.4byte	0x942
	.byte	0x19
	.4byte	0x94e
	.byte	0x1
	.byte	0x5a
	.byte	0x1a
	.4byte	.LVL36
	.4byte	0xa2b
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	.LASF87
	.byte	0x1
	.byte	0x65
	.byte	0x6
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x1
	.byte	0x9c
	.4byte	0x7d4
	.byte	0x10
	.string	"fd"
	.byte	0x1
	.byte	0x65
	.byte	0x23
	.4byte	0x38
	.4byte	.LLST16
	.byte	0x22
	.4byte	.LVL28
	.4byte	0xa5d
	.4byte	0x7c2
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	event_read_cb
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x11
	.4byte	.LVL30
	.4byte	0xa69
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LASF64
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.4byte	0x38
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.4byte	0x84c
	.byte	0x15
	.string	"fd"
	.byte	0x1
	.byte	0x59
	.byte	0x9
	.4byte	0x38
	.4byte	.LLST15
	.byte	0x22
	.4byte	.LVL22
	.4byte	0xa75
	.4byte	0x819
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x22
	.4byte	.LVL24
	.4byte	0xa81
	.4byte	0x83b
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	event_read_cb
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1a
	.4byte	.LVL25
	.4byte	0xa8d
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	.LASF88
	.byte	0x1
	.byte	0x4b
	.byte	0x6
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0x91a
	.byte	0x10
	.string	"fd"
	.byte	0x1
	.byte	0x4b
	.byte	0x18
	.4byte	0x38
	.4byte	.LLST0
	.byte	0x13
	.4byte	.LASF65
	.byte	0x1
	.byte	0x4b
	.byte	0x22
	.4byte	0x9b
	.4byte	.LLST1
	.byte	0xd
	.4byte	.LASF59
	.byte	0x1
	.byte	0x4d
	.byte	0x13
	.4byte	0x14d
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x15
	.string	"ret"
	.byte	0x1
	.byte	0x4e
	.byte	0x9
	.4byte	0x38
	.4byte	.LLST2
	.byte	0x1c
	.4byte	0x95b
	.4byte	.LBB11
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x50
	.byte	0x9
	.4byte	0x8fd
	.byte	0x17
	.4byte	0x968
	.4byte	.LLST3
	.byte	0x1d
	.4byte	.Ldebug_ranges0+0
	.byte	0x18
	.4byte	0x974
	.4byte	.LLST4
	.byte	0x24
	.4byte	0x980
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.4byte	0x8ef
	.byte	0x18
	.4byte	0x981
	.4byte	.LLST5
	.byte	0x18
	.4byte	0x98d
	.4byte	.LLST6
	.byte	0
	.byte	0x25
	.4byte	.LVL10
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL2
	.4byte	0xa99
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	.LASF89
	.byte	0x1
	.byte	0x3c
	.byte	0xc
	.4byte	0x38
	.byte	0x1
	.4byte	0x95b
	.byte	0x27
	.string	"fd"
	.byte	0x1
	.byte	0x3c
	.byte	0x20
	.4byte	0x38
	.byte	0x28
	.4byte	.LASF59
	.byte	0x1
	.byte	0x3c
	.byte	0x33
	.4byte	0x17b
	.byte	0x29
	.4byte	.LASF58
	.byte	0x1
	.byte	0x3e
	.byte	0x9
	.4byte	0x206
	.byte	0x2a
	.string	"cmd"
	.byte	0x1
	.byte	0x40
	.byte	0x9
	.4byte	0x38
	.byte	0
	.byte	0x2b
	.4byte	.LASF67
	.byte	0x1
	.byte	0x28
	.byte	0x6
	.byte	0x1
	.4byte	0x99b
	.byte	0x28
	.4byte	.LASF59
	.byte	0x1
	.byte	0x28
	.byte	0x23
	.4byte	0x17b
	.byte	0x29
	.4byte	.LASF61
	.byte	0x1
	.byte	0x32
	.byte	0x18
	.4byte	0x61a
	.byte	0x2c
	.byte	0x29
	.4byte	.LASF66
	.byte	0x1
	.byte	0x2b
	.byte	0x14
	.4byte	0x181
	.byte	0x2a
	.string	"arg"
	.byte	0x1
	.byte	0x2c
	.byte	0xf
	.4byte	0x9b
	.byte	0
	.byte	0
	.byte	0x2b
	.4byte	.LASF68
	.byte	0x2
	.byte	0x42
	.byte	0x14
	.byte	0x3
	.4byte	0x9cd
	.byte	0x28
	.4byte	.LASF47
	.byte	0x2
	.byte	0x42
	.byte	0x27
	.4byte	0x9cd
	.byte	0x29
	.4byte	.LASF17
	.byte	0x2
	.byte	0x44
	.byte	0xe
	.4byte	0x9cd
	.byte	0x29
	.4byte	.LASF18
	.byte	0x2
	.byte	0x45
	.byte	0xe
	.4byte	0x9cd
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0xf6
	.byte	0x2b
	.4byte	.LASF69
	.byte	0x2
	.byte	0x3d
	.byte	0x14
	.byte	0x3
	.4byte	0x9f9
	.byte	0x28
	.4byte	.LASF47
	.byte	0x2
	.byte	0x3d
	.byte	0x2c
	.4byte	0x9cd
	.byte	0x28
	.4byte	.LASF70
	.byte	0x2
	.byte	0x3d
	.byte	0x3b
	.4byte	0x9cd
	.byte	0
	.byte	0x2b
	.4byte	.LASF71
	.byte	0x2
	.byte	0x24
	.byte	0x14
	.byte	0x3
	.4byte	0xa2b
	.byte	0x28
	.4byte	.LASF47
	.byte	0x2
	.byte	0x24
	.byte	0x29
	.4byte	0x9cd
	.byte	0x28
	.4byte	.LASF17
	.byte	0x2
	.byte	0x24
	.byte	0x38
	.4byte	0x9cd
	.byte	0x28
	.4byte	.LASF18
	.byte	0x2
	.byte	0x24
	.byte	0x47
	.4byte	0x9cd
	.byte	0
	.byte	0x2d
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0x9
	.byte	0x60
	.byte	0x5
	.byte	0x2d
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0x8
	.byte	0x1f
	.byte	0x5
	.byte	0x2e
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0xa
	.2byte	0x1e1
	.byte	0xa
	.byte	0x2e
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0xa
	.2byte	0x1bf
	.byte	0xb
	.byte	0x2d
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0x6
	.byte	0xab
	.byte	0x6
	.byte	0x2d
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0x9
	.byte	0x3f
	.byte	0x5
	.byte	0x2d
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0x9
	.byte	0x36
	.byte	0x5
	.byte	0x2d
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0x6
	.byte	0xa2
	.byte	0x5
	.byte	0x2d
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x8
	.byte	0x1c
	.byte	0x6
	.byte	0x2d
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0x9
	.byte	0x4a
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
	.byte	0x7
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
	.byte	0x8
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0xa
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x5
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
	.byte	0x3c
	.byte	0x19
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
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x12
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x13
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
	.byte	0x14
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
	.byte	0x17
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1b
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
	.byte	0x1c
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
	.byte	0x1d
	.byte	0xb
	.byte	0x1
	.byte	0x55
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
	.byte	0x20
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x21
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
	.byte	0x22
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
	.byte	0x23
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
	.byte	0x24
	.byte	0xb
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x25
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
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
	.byte	0x27
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
	.byte	0x28
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2c
	.byte	0xb
	.byte	0x1
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
.LLST44:
	.4byte	.LVL63
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL65
	.4byte	.LVL66-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL66-1
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL64
	.4byte	.LVL66-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL66-1
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL61
	.4byte	.LVL62-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL62-1
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL61
	.4byte	.LVL62-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL62-1
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL61
	.4byte	.LVL62-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL62-1
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL59
	.4byte	.LVL60-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL60-1
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL59
	.4byte	.LVL60-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL60-1
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL59
	.4byte	.LVL60-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL60-1
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL12
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13-1
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
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL12
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL13-1
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL12
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL13-1
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL12
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL13-1
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL13
	.4byte	.LVL19-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL15
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL15
	.4byte	.LVL19-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x7
	.byte	0x7b
	.byte	0
	.byte	0x40
	.byte	0x24
	.byte	0x30
	.byte	0x2d
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x9
	.byte	0x91
	.byte	0x64
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x30
	.byte	0x2d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL49
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL48
	.4byte	.LVL56-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL56-1
	.4byte	.LVL57
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL48
	.4byte	.LVL56-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL56-1
	.4byte	.LVL57
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL51
	.4byte	.LVL56-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL57
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL52
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL38
	.4byte	.LVL46
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL47
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL37
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL39-1
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL37
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL39-1
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL41
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x6
	.byte	0x3
	.4byte	g_local_event_list
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL32
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL33
	.4byte	.LVL36-1
	.2byte	0x2
	.byte	0x91
	.byte	0x66
	.4byte	.LVL36-1
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL31
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL35
	.4byte	.LVL36-1
	.2byte	0x2
	.byte	0x91
	.byte	0x68
	.4byte	.LVL36-1
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL34
	.4byte	.LVL36-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28-1
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL29
	.4byte	.LVL30-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL30-1
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2-1
	.4byte	.LFE16
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
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL4
	.4byte	.LVL6-1
	.2byte	0x2
	.byte	0x91
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL4
	.4byte	.LVL6-1
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
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
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
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
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	0
	.4byte	0
	.4byte	.LBB22
	.4byte	.LBE22
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	.LBB29
	.4byte	.LBE29
	.4byte	.LBB30
	.4byte	.LBE30
	.4byte	.LBB31
	.4byte	.LBE31
	.4byte	0
	.4byte	0
	.4byte	.LBB32
	.4byte	.LBE32
	.4byte	.LBB40
	.4byte	.LBE40
	.4byte	.LBB41
	.4byte	.LBE41
	.4byte	0
	.4byte	0
	.4byte	.LBB34
	.4byte	.LBE34
	.4byte	.LBB37
	.4byte	.LBE37
	.4byte	0
	.4byte	0
	.4byte	.LBB44
	.4byte	.LBE44
	.4byte	.LBB47
	.4byte	.LBE47
	.4byte	0
	.4byte	0
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB22
	.4byte	.LFE22
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
.LASF48:
	.string	"priv"
.LASF72:
	.string	"aos_ioctl"
.LASF75:
	.string	"aos_malloc"
.LASF53:
	.string	"g_local_event_list"
.LASF62:
	.string	"aos_register_event_filter"
.LASF86:
	.string	"_schedule_call"
.LASF85:
	.string	"g_main_ctx"
.LASF45:
	.string	"terminate"
.LASF57:
	.string	"aos_loop_schedule_urgent_call"
.LASF5:
	.string	"short int"
.LASF2:
	.string	"size_t"
.LASF42:
	.string	"max_sock"
.LASF56:
	.string	"loop"
.LASF43:
	.string	"reader_count"
.LASF59:
	.string	"event"
.LASF6:
	.string	"__uint16_t"
.LASF66:
	.string	"handler"
.LASF84:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/yloop"
.LASF79:
	.string	"aos_poll_read_fd"
.LASF23:
	.string	"value"
.LASF55:
	.string	"aos_loop_schedule_call"
.LASF28:
	.string	"aos_poll_call_t"
.LASF14:
	.string	"uint8_t"
.LASF88:
	.string	"event_read_cb"
.LASF46:
	.string	"yloop_ctx_t"
.LASF26:
	.string	"aos_event_cb"
.LASF40:
	.string	"readers"
.LASF71:
	.string	"__dlist_add"
.LASF37:
	.string	"yloop_sock_t"
.LASF11:
	.string	"long long int"
.LASF38:
	.string	"timeouts"
.LASF69:
	.string	"dlist_add_tail"
.LASF13:
	.string	"char"
.LASF83:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/src/local_event.c"
.LASF8:
	.string	"long int"
.LASF64:
	.string	"aos_event_service_init"
.LASF27:
	.string	"aos_call_t"
.LASF81:
	.string	"aos_read"
.LASF33:
	.string	"revents"
.LASF47:
	.string	"node"
.LASF67:
	.string	"handle_events"
.LASF70:
	.string	"queue"
.LASF36:
	.string	"private_data"
.LASF89:
	.string	"input_add_event"
.LASF77:
	.string	"aos_close"
.LASF78:
	.string	"aos_open"
.LASF4:
	.string	"unsigned char"
.LASF51:
	.string	"handle"
.LASF19:
	.string	"dlist_t"
.LASF80:
	.string	"aos_loop_set_eventfd"
.LASF1:
	.string	"signed char"
.LASF12:
	.string	"long long unsigned int"
.LASF16:
	.string	"uint32_t"
.LASF30:
	.string	"dlist_s"
.LASF0:
	.string	"unsigned int"
.LASF15:
	.string	"uint16_t"
.LASF44:
	.string	"pending_terminate"
.LASF22:
	.string	"code"
.LASF76:
	.string	"aos_cancel_poll_read_fd"
.LASF29:
	.string	"aos_loop_t"
.LASF31:
	.string	"pollfd"
.LASF7:
	.string	"short unsigned int"
.LASF65:
	.string	"param"
.LASF41:
	.string	"eventfd"
.LASF50:
	.string	"event_list_node_t"
.LASF21:
	.string	"type"
.LASF54:
	.string	"aos_schedule_call"
.LASF34:
	.string	"_Bool"
.LASF61:
	.string	"event_node"
.LASF25:
	.string	"input_event_t"
.LASF39:
	.string	"pollfds"
.LASF68:
	.string	"dlist_del"
.LASF73:
	.string	"aos_loop_get_eventfd"
.LASF63:
	.string	"aos_post_event"
.LASF10:
	.string	"long unsigned int"
.LASF52:
	.string	"local_event"
.LASF9:
	.string	"__uint32_t"
.LASF58:
	.string	"urgent"
.LASF87:
	.string	"aos_event_service_deinit"
.LASF74:
	.string	"aos_free"
.LASF32:
	.string	"events"
.LASF20:
	.string	"time"
.LASF35:
	.string	"sock"
.LASF60:
	.string	"aos_unregister_event_filter"
.LASF49:
	.string	"type_filter"
.LASF17:
	.string	"prev"
.LASF24:
	.string	"extra"
.LASF18:
	.string	"next"
.LASF3:
	.string	"__uint8_t"
.LASF82:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
