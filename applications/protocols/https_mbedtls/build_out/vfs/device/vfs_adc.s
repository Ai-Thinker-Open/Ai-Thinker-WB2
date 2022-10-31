	.file	"vfs_adc.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.vfs_adc_notify,"ax",@progbits
	.align	1
	.type	vfs_adc_notify, @function
vfs_adc_notify:
.LFB7:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/fs/vfs/device/vfs_adc.c"
	.loc 1 120 1
	.cfi_startproc
.LVL0:
	.loc 1 122 5
	.loc 1 124 5
	.loc 1 124 8 is_stmt 0
	lw	a5,20(a0)
	beq	a5,zero,.L1
	.loc 1 125 9 is_stmt 1
	.loc 1 125 33 is_stmt 0
	lw	a4,16(a0)
	.loc 1 125 48
	lhu	a5,6(a4)
	ori	a5,a5,1
	sh	a5,6(a4)
	.loc 1 126 9 is_stmt 1
	.loc 1 126 10 is_stmt 0
	lw	a5,20(a0)
	lw	a1,24(a0)
	lw	a0,16(a0)
.LVL1:
	jr	a5
.LVL2:
.L1:
	.loc 1 130 1
	ret
	.cfi_endproc
.LFE7:
	.size	vfs_adc_notify, .-vfs_adc_notify
	.section	.text.vfs_adc_close,"ax",@progbits
	.align	1
	.globl	vfs_adc_close
	.type	vfs_adc_close, @function
vfs_adc_close:
.LFB5:
	.loc 1 48 1 is_stmt 1
	.cfi_startproc
.LVL3:
	.loc 1 49 5
	.loc 1 50 5
	.loc 1 53 5
	.loc 1 53 8 is_stmt 0
	beq	a0,zero,.L6
	.loc 1 53 27 discriminator 1
	lw	a5,0(a0)
	.loc 1 53 21 discriminator 1
	beq	a5,zero,.L6
	.loc 1 56 9 is_stmt 1
	.loc 1 56 12 is_stmt 0
	lbu	a3,17(a5)
	li	a4,1
	.loc 1 71 17
	li	a0,0
.LVL4:
	.loc 1 56 12
	bne	a3,a4,.L10
	.loc 1 59 13 is_stmt 1
	.loc 1 48 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 59 21
	lw	s0,4(a5)
.LVL5:
	.loc 1 61 13 is_stmt 1
	.loc 1 61 16 is_stmt 0
	beq	s0,zero,.L8
	.loc 1 63 17 is_stmt 1
	addi	a0,s0,12
	call	aos_mutex_free
.LVL6:
	.loc 1 66 17
	.loc 1 66 23 is_stmt 0
	mv	a0,s0
	.loc 1 78 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL7:
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 66 23
	tail	hal_adc_finalize
.LVL8:
.L6:
	.loc 1 74 13
	li	a0,-22
.LVL9:
	ret
.LVL10:
.L8:
	.cfi_def_cfa_offset 16
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 78 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL11:
	.loc 1 74 13
	li	a0,-22
.LVL12:
	.loc 1 77 5 is_stmt 1
	.loc 1 78 1 is_stmt 0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL13:
.L10:
	ret
	.cfi_endproc
.LFE5:
	.size	vfs_adc_close, .-vfs_adc_close
	.section	.text.vfs_adc_poll,"ax",@progbits
	.align	1
	.type	vfs_adc_poll, @function
vfs_adc_poll:
.LFB8:
	.loc 1 133 1 is_stmt 1
	.cfi_startproc
.LVL14:
	.loc 1 134 5
	.loc 1 133 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	sw	s5,4(sp)
	sw	s6,0(sp)
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 134 16
	lw	a5,0(a0)
	.loc 1 133 1
	mv	s4,a1
	.loc 1 136 5
	li	a1,-1
.LVL15:
	.loc 1 134 16
	lw	s0,4(a5)
.LVL16:
	.loc 1 136 5 is_stmt 1
	.loc 1 133 1 is_stmt 0
	mv	s3,a2
	mv	s2,a3
	.loc 1 136 34
	addi	s5,s0,12
	.loc 1 136 5
	mv	a0,s5
.LVL17:
	.loc 1 133 1
	mv	s1,a4
	lui	s6,%hi(vfs_adc_notify)
	.loc 1 136 5
	call	aos_mutex_lock
.LVL18:
	.loc 1 137 5 is_stmt 1
	.loc 1 137 8 is_stmt 0
	bne	s4,zero,.L14
	.loc 1 139 9 is_stmt 1
	call	vTaskEnterCritical
.LVL19:
	.loc 1 140 9
	.loc 1 142 9 is_stmt 0
	addi	a1,s6,%lo(vfs_adc_notify)
	.loc 1 140 26
	sw	zero,20(s0)
	.loc 1 141 9 is_stmt 1
	.loc 1 141 28 is_stmt 0
	sw	zero,24(s0)
	.loc 1 142 9 is_stmt 1
	mv	a0,s0
	call	hal_adc_notify_unregister
.LVL20:
	.loc 1 143 9
.L17:
.L15:
	.loc 1 152 5
	call	vTaskExitCritical
.LVL21:
	.loc 1 155 5
	mv	a0,s5
	call	aos_mutex_unlock
.LVL22:
	.loc 1 157 5
	.loc 1 158 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL23:
	lw	s1,20(sp)
	.cfi_restore 9
.LVL24:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL25:
	lw	s3,12(sp)
	.cfi_restore 19
.LVL26:
	lw	s4,8(sp)
	.cfi_restore 20
	lw	s5,4(sp)
	.cfi_restore 21
.LVL27:
	lw	s6,0(sp)
	.cfi_restore 22
	li	a0,0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL28:
.L14:
	.cfi_restore_state
	.loc 1 147 5 is_stmt 1
	call	vTaskEnterCritical
.LVL29:
	.loc 1 148 5
	.loc 1 151 5 is_stmt 0
	addi	a1,s6,%lo(vfs_adc_notify)
	.loc 1 148 22
	sw	s3,20(s0)
	.loc 1 149 5 is_stmt 1
	.loc 1 149 17 is_stmt 0
	sw	s2,16(s0)
	.loc 1 150 5 is_stmt 1
	.loc 1 150 24 is_stmt 0
	sw	s1,24(s0)
	.loc 1 151 5 is_stmt 1
	mv	a0,s0
	call	hal_adc_notify_register
.LVL30:
	j	.L17
	.cfi_endproc
.LFE8:
	.size	vfs_adc_poll, .-vfs_adc_poll
	.section	.text.vfs_adc_ioctl,"ax",@progbits
	.align	1
	.type	vfs_adc_ioctl, @function
vfs_adc_ioctl:
.LFB9:
	.loc 1 161 1
	.cfi_startproc
.LVL31:
	.loc 1 162 5
	.loc 1 163 5
	.loc 1 164 5
	.loc 1 167 5
	.loc 1 170 5
	.loc 1 173 5
	.loc 1 173 8 is_stmt 0
	beq	a0,zero,.L28
	.loc 1 173 27 discriminator 1
	lw	a4,0(a0)
	.loc 1 174 16 discriminator 1
	li	a5,-22
	.loc 1 173 21 discriminator 1
	beq	a4,zero,.L38
	.loc 1 178 5 is_stmt 1
	.loc 1 178 13 is_stmt 0
	lw	a0,4(a4)
.LVL32:
	.loc 1 180 5 is_stmt 1
	.loc 1 180 8 is_stmt 0
	beq	a0,zero,.L38
	.loc 1 184 5 is_stmt 1
	li	a4,4
	bgtu	a1,a4,.L38
	lui	a5,%hi(.L21)
	addi	a5,a5,%lo(.L21)
	slli	a1,a1,2
.LVL33:
	add	a1,a1,a5
	lw	a5,0(a1)
	.loc 1 161 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	jr	a5
	.section	.rodata.vfs_adc_ioctl,"a",@progbits
	.align	2
	.align	2
.L21:
	.word	.L25
	.word	.L24
	.word	.L23
	.word	.L22
	.word	.L20
	.section	.text.vfs_adc_ioctl
.L25:
	.loc 1 188 13 is_stmt 1
	.loc 1 188 19 is_stmt 0
	call	hal_adc_notify_register_config_disable
.LVL34:
.L42:
	.loc 1 189 13 is_stmt 1
	.loc 1 190 21 is_stmt 0
	li	a5,-5
	.loc 1 189 16
	bne	a0,zero,.L18
	.loc 1 174 16
	li	a5,0
.LVL35:
.L18:
	.loc 1 244 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL36:
.L24:
	.cfi_restore_state
	.loc 1 197 13 is_stmt 1
	.loc 1 197 19 is_stmt 0
	call	hal_adc_notify_register_config_high
.LVL37:
	j	.L42
.LVL38:
.L23:
	.loc 1 206 13 is_stmt 1
	.loc 1 206 19 is_stmt 0
	call	hal_adc_notify_register_config_low
.LVL39:
	j	.L42
.LVL40:
.L22:
	.loc 1 215 13 is_stmt 1
	.loc 1 174 16 is_stmt 0
	li	a5,-22
	.loc 1 215 16
	beq	a2,zero,.L18
	.loc 1 218 17 is_stmt 1
	.loc 1 218 23 is_stmt 0
	lw	a1,0(a2)
	call	hal_adc_notify_register_config_higher
.LVL41:
	j	.L42
.LVL42:
.L20:
	.loc 1 227 13 is_stmt 1
	.loc 1 174 16 is_stmt 0
	li	a5,-22
	.loc 1 227 16
	beq	a2,zero,.L18
	.loc 1 230 17 is_stmt 1
	.loc 1 230 23 is_stmt 0
	lw	a1,0(a2)
	call	hal_adc_notify_register_config_lower
.LVL43:
	j	.L42
.LVL44:
.L28:
	.cfi_def_cfa_offset 0
	.cfi_restore 1
	.loc 1 174 16
	li	a5,-22
.LVL45:
.L38:
	.loc 1 244 1
	mv	a0,a5
	ret
	.cfi_endproc
.LFE9:
	.size	vfs_adc_ioctl, .-vfs_adc_ioctl
	.section	.text.vfs_adc_read,"ax",@progbits
	.align	1
	.type	vfs_adc_read, @function
vfs_adc_read:
.LFB6:
	.loc 1 81 1 is_stmt 1
	.cfi_startproc
.LVL46:
	.loc 1 82 5
	.loc 1 83 5
	.loc 1 84 5
	.loc 1 86 5
	.loc 1 86 8 is_stmt 0
	li	a5,4
	bne	a2,a5,.L48
	.loc 1 92 5 is_stmt 1
	.loc 1 88 16 is_stmt 0
	li	a5,-22
	.loc 1 92 8
	beq	a0,zero,.L54
	.loc 1 92 27 discriminator 1
	lw	a4,0(a0)
	.loc 1 92 21 discriminator 1
	beq	a4,zero,.L54
	.loc 1 95 9 is_stmt 1
	.loc 1 95 17 is_stmt 0
	lw	a0,4(a4)
.LVL47:
	.loc 1 97 9 is_stmt 1
	.loc 1 97 12 is_stmt 0
	beq	a0,zero,.L54
	.loc 1 81 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	.loc 1 100 19
	li	a2,-1
.LVL48:
	.cfi_offset 8, -8
	mv	s0,a1
	.loc 1 100 13 is_stmt 1
	.loc 1 100 19 is_stmt 0
	addi	a1,sp,12
.LVL49:
	.loc 1 81 1
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 100 19
	call	hal_adc_value_get
.LVL50:
	.loc 1 102 13 is_stmt 1
	.loc 1 107 21 is_stmt 0
	li	a5,-5
	.loc 1 102 16
	bne	a0,zero,.L46
	.loc 1 103 17 is_stmt 1
.LVL51:
	.loc 1 104 17
	li	a2,4
	addi	a1,sp,12
	mv	a0,s0
	call	memcpy
.LVL52:
	.loc 1 103 21 is_stmt 0
	li	a5,4
.LVL53:
.L46:
	.loc 1 117 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL54:
	mv	a0,a5
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL55:
.L48:
	.loc 1 88 16
	li	a5,-22
.LVL56:
.L54:
	.loc 1 117 1
	mv	a0,a5
	ret
	.cfi_endproc
.LFE6:
	.size	vfs_adc_read, .-vfs_adc_read
	.section	.text.vfs_adc_open,"ax",@progbits
	.align	1
	.type	vfs_adc_open, @function
vfs_adc_open:
.LFB4:
	.loc 1 17 1 is_stmt 1
	.cfi_startproc
.LVL57:
	.loc 1 18 5
	.loc 1 19 5
	.loc 1 22 5
	.loc 1 17 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	sw	s1,4(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.loc 1 41 13
	li	s0,-22
	.loc 1 22 8
	beq	a1,zero,.L57
	.loc 1 22 27 discriminator 1
	lw	a5,0(a1)
	.loc 1 22 21 discriminator 1
	beq	a5,zero,.L57
	.loc 1 25 9 is_stmt 1
	.loc 1 25 12 is_stmt 0
	lbu	a3,17(a5)
	li	a4,1
	.loc 1 38 17
	li	s0,0
	.loc 1 25 12
	bne	a3,a4,.L57
	.loc 1 28 13 is_stmt 1
	.loc 1 28 21 is_stmt 0
	lw	s1,4(a5)
.LVL58:
	.loc 1 31 13 is_stmt 1
	.loc 1 31 19 is_stmt 0
	mv	a0,s1
.LVL59:
	call	hal_adc_init
.LVL60:
	mv	s0,a0
.LVL61:
	.loc 1 34 13 is_stmt 1
	.loc 1 34 16 is_stmt 0
	bne	a0,zero,.L57
	.loc 1 35 17 is_stmt 1
	addi	a0,s1,12
	call	aos_mutex_new
.LVL62:
.L57:
	.loc 1 45 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	mv	a0,s0
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	vfs_adc_open, .-vfs_adc_open
	.globl	adc_ops
	.section	.rodata.adc_ops,"a"
	.align	2
	.type	adc_ops, @object
	.size	adc_ops, 28
adc_ops:
	.word	vfs_adc_open
	.word	vfs_adc_close
	.word	vfs_adc_read
	.zero	4
	.word	vfs_adc_ioctl
	.word	vfs_adc_poll
	.zero	4
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timeval.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timespec.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h"
	.file 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/aos/kernel.h"
	.file 10 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/stat.h"
	.file 11 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/fs/vfs/include/vfs_dir.h"
	.file 12 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/fs/vfs/include/vfs_inode.h"
	.file 13 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/yloop_types.h"
	.file 14 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/fs/vfs/include/hal/soc/adc.h"
	.file 15 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 16 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 17 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/fs/vfs/include/device/vfs_adc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xe48
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF153
	.byte	0xc
	.4byte	.LASF154
	.4byte	.LASF155
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
	.byte	0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0xc8
	.byte	0x17
	.4byte	0x67
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0xd1
	.byte	0x16
	.4byte	0x88
	.byte	0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x1e
	.byte	0xe
	.4byte	0x4d
	.byte	0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x22
	.byte	0xe
	.4byte	0x4d
	.byte	0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x2e
	.byte	0xe
	.4byte	0x4d
	.byte	0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x38
	.byte	0xf
	.4byte	0x3f
	.byte	0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x3c
	.byte	0x18
	.4byte	0x46
	.byte	0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x3f
	.byte	0x18
	.4byte	0x46
	.byte	0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x4b
	.byte	0x18
	.4byte	0x46
	.byte	0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x5a
	.byte	0x14
	.4byte	0x54
	.byte	0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0x66
	.byte	0x10
	.4byte	0xb3
	.byte	0x3
	.4byte	.LASF22
	.byte	0x4
	.byte	0x93
	.byte	0x14
	.4byte	0x81
	.byte	0x5
	.byte	0x4
	.byte	0x3
	.4byte	.LASF23
	.byte	0x4
	.byte	0xd1
	.byte	0x18
	.4byte	0x46
	.byte	0x6
	.byte	0x4
	.4byte	0x127
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF24
	.byte	0x7
	.4byte	0x127
	.byte	0x6
	.byte	0x4
	.4byte	0x12e
	.byte	0x3
	.4byte	.LASF25
	.byte	0x5
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF26
	.byte	0x5
	.byte	0x30
	.byte	0x14
	.4byte	0x54
	.byte	0x3
	.4byte	.LASF27
	.byte	0x6
	.byte	0x2a
	.byte	0x19
	.4byte	0x75
	.byte	0x8
	.4byte	.LASF42
	.byte	0x10
	.byte	0x7
	.byte	0x2f
	.byte	0x8
	.4byte	0x185
	.byte	0x9
	.4byte	.LASF28
	.byte	0x7
	.byte	0x30
	.byte	0x9
	.4byte	0x151
	.byte	0
	.byte	0x9
	.4byte	.LASF29
	.byte	0x7
	.byte	0x31
	.byte	0x7
	.4byte	0x4d
	.byte	0x8
	.byte	0
	.byte	0x3
	.4byte	.LASF30
	.byte	0x8
	.byte	0x61
	.byte	0x14
	.4byte	0x9b
	.byte	0x3
	.4byte	.LASF31
	.byte	0x8
	.byte	0x66
	.byte	0x15
	.4byte	0xa7
	.byte	0x3
	.4byte	.LASF32
	.byte	0x8
	.byte	0x8b
	.byte	0x11
	.4byte	0xe3
	.byte	0x3
	.4byte	.LASF33
	.byte	0x8
	.byte	0x9d
	.byte	0x11
	.4byte	0xfb
	.byte	0x3
	.4byte	.LASF34
	.byte	0x8
	.byte	0xa1
	.byte	0x11
	.4byte	0xbf
	.byte	0x3
	.4byte	.LASF35
	.byte	0x8
	.byte	0xa5
	.byte	0x11
	.4byte	0xcb
	.byte	0x3
	.4byte	.LASF36
	.byte	0x8
	.byte	0xa9
	.byte	0x11
	.4byte	0xd7
	.byte	0x3
	.4byte	.LASF37
	.byte	0x8
	.byte	0xb8
	.byte	0x12
	.4byte	0x107
	.byte	0x3
	.4byte	.LASF38
	.byte	0x8
	.byte	0xbd
	.byte	0x12
	.4byte	0xef
	.byte	0x3
	.4byte	.LASF39
	.byte	0x8
	.byte	0xc2
	.byte	0x13
	.4byte	0x115
	.byte	0xa
	.byte	0x4
	.byte	0x9
	.byte	0x16
	.byte	0xc
	.4byte	0x214
	.byte	0xb
	.string	"hdl"
	.byte	0x9
	.byte	0x18
	.byte	0xf
	.4byte	0x113
	.byte	0
	.byte	0
	.byte	0x3
	.4byte	.LASF40
	.byte	0x9
	.byte	0x19
	.byte	0x7
	.4byte	0x1fd
	.byte	0x3
	.4byte	.LASF41
	.byte	0x9
	.byte	0x1c
	.byte	0x17
	.4byte	0x214
	.byte	0x8
	.4byte	.LASF43
	.byte	0x58
	.byte	0xa
	.byte	0x1b
	.byte	0x8
	.4byte	0x2f0
	.byte	0x9
	.4byte	.LASF44
	.byte	0xa
	.byte	0x1d
	.byte	0x9
	.4byte	0x1b5
	.byte	0
	.byte	0x9
	.4byte	.LASF45
	.byte	0xa
	.byte	0x1e
	.byte	0x9
	.4byte	0x19d
	.byte	0x2
	.byte	0x9
	.4byte	.LASF46
	.byte	0xa
	.byte	0x1f
	.byte	0xa
	.4byte	0x1e5
	.byte	0x4
	.byte	0x9
	.4byte	.LASF47
	.byte	0xa
	.byte	0x20
	.byte	0xb
	.4byte	0x1f1
	.byte	0x8
	.byte	0x9
	.4byte	.LASF48
	.byte	0xa
	.byte	0x21
	.byte	0x9
	.4byte	0x1c1
	.byte	0xa
	.byte	0x9
	.4byte	.LASF49
	.byte	0xa
	.byte	0x22
	.byte	0x9
	.4byte	0x1cd
	.byte	0xc
	.byte	0x9
	.4byte	.LASF50
	.byte	0xa
	.byte	0x23
	.byte	0x9
	.4byte	0x1b5
	.byte	0xe
	.byte	0x9
	.4byte	.LASF51
	.byte	0xa
	.byte	0x24
	.byte	0x9
	.4byte	0x1a9
	.byte	0x10
	.byte	0x9
	.4byte	.LASF52
	.byte	0xa
	.byte	0x2a
	.byte	0x13
	.4byte	0x15d
	.byte	0x18
	.byte	0x9
	.4byte	.LASF53
	.byte	0xa
	.byte	0x2b
	.byte	0x13
	.4byte	0x15d
	.byte	0x28
	.byte	0x9
	.4byte	.LASF54
	.byte	0xa
	.byte	0x2c
	.byte	0x13
	.4byte	0x15d
	.byte	0x38
	.byte	0x9
	.4byte	.LASF55
	.byte	0xa
	.byte	0x2d
	.byte	0xd
	.4byte	0x191
	.byte	0x48
	.byte	0x9
	.4byte	.LASF56
	.byte	0xa
	.byte	0x2e
	.byte	0xc
	.4byte	0x185
	.byte	0x4c
	.byte	0x9
	.4byte	.LASF57
	.byte	0xa
	.byte	0x30
	.byte	0x8
	.4byte	0x2f0
	.byte	0x50
	.byte	0
	.byte	0xc
	.4byte	0x4d
	.4byte	0x300
	.byte	0xd
	.4byte	0x88
	.byte	0x1
	.byte	0
	.byte	0x8
	.4byte	.LASF58
	.byte	0x24
	.byte	0xb
	.byte	0x4
	.byte	0x8
	.4byte	0x383
	.byte	0x9
	.4byte	.LASF59
	.byte	0xb
	.byte	0x5
	.byte	0xa
	.4byte	0x4d
	.byte	0
	.byte	0x9
	.4byte	.LASF60
	.byte	0xb
	.byte	0x6
	.byte	0xa
	.4byte	0x4d
	.byte	0x4
	.byte	0x9
	.4byte	.LASF61
	.byte	0xb
	.byte	0x7
	.byte	0xa
	.4byte	0x4d
	.byte	0x8
	.byte	0x9
	.4byte	.LASF62
	.byte	0xb
	.byte	0x8
	.byte	0xa
	.4byte	0x4d
	.byte	0xc
	.byte	0x9
	.4byte	.LASF63
	.byte	0xb
	.byte	0x9
	.byte	0xa
	.4byte	0x4d
	.byte	0x10
	.byte	0x9
	.4byte	.LASF64
	.byte	0xb
	.byte	0xa
	.byte	0xa
	.4byte	0x4d
	.byte	0x14
	.byte	0x9
	.4byte	.LASF65
	.byte	0xb
	.byte	0xb
	.byte	0xa
	.4byte	0x4d
	.byte	0x18
	.byte	0x9
	.4byte	.LASF66
	.byte	0xb
	.byte	0xc
	.byte	0xa
	.4byte	0x4d
	.byte	0x1c
	.byte	0x9
	.4byte	.LASF67
	.byte	0xb
	.byte	0xd
	.byte	0xa
	.4byte	0x4d
	.byte	0x20
	.byte	0
	.byte	0xa
	.byte	0x8
	.byte	0xb
	.byte	0x10
	.byte	0x9
	.4byte	0x3b4
	.byte	0x9
	.4byte	.LASF68
	.byte	0xb
	.byte	0x11
	.byte	0x9
	.4byte	0x81
	.byte	0
	.byte	0x9
	.4byte	.LASF69
	.byte	0xb
	.byte	0x12
	.byte	0xd
	.4byte	0x139
	.byte	0x4
	.byte	0x9
	.4byte	.LASF70
	.byte	0xb
	.byte	0x13
	.byte	0xa
	.4byte	0x3b4
	.byte	0x5
	.byte	0
	.byte	0xc
	.4byte	0x127
	.4byte	0x3c3
	.byte	0xe
	.4byte	0x88
	.byte	0
	.byte	0x3
	.4byte	.LASF71
	.byte	0xb
	.byte	0x14
	.byte	0x3
	.4byte	0x383
	.byte	0xa
	.byte	0x8
	.byte	0xb
	.byte	0x16
	.byte	0x9
	.4byte	0x3f3
	.byte	0x9
	.4byte	.LASF72
	.byte	0xb
	.byte	0x17
	.byte	0x9
	.4byte	0x81
	.byte	0
	.byte	0x9
	.4byte	.LASF73
	.byte	0xb
	.byte	0x18
	.byte	0x9
	.4byte	0x81
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF74
	.byte	0xb
	.byte	0x19
	.byte	0x3
	.4byte	0x3cf
	.byte	0x3
	.4byte	.LASF75
	.byte	0xc
	.byte	0x2c
	.byte	0x1f
	.4byte	0x474
	.byte	0x8
	.4byte	.LASF76
	.byte	0x1c
	.byte	0xc
	.byte	0x47
	.byte	0x8
	.4byte	0x474
	.byte	0x9
	.4byte	.LASF77
	.byte	0xc
	.byte	0x48
	.byte	0xb
	.4byte	0x6f7
	.byte	0
	.byte	0x9
	.4byte	.LASF78
	.byte	0xc
	.byte	0x49
	.byte	0xb
	.4byte	0x70c
	.byte	0x4
	.byte	0x9
	.4byte	.LASF79
	.byte	0xc
	.byte	0x4a
	.byte	0xf
	.4byte	0x72b
	.byte	0x8
	.byte	0x9
	.4byte	.LASF80
	.byte	0xc
	.byte	0x4b
	.byte	0xf
	.4byte	0x751
	.byte	0xc
	.byte	0x9
	.4byte	.LASF81
	.byte	0xc
	.byte	0x4c
	.byte	0xb
	.4byte	0x770
	.byte	0x10
	.byte	0x9
	.4byte	.LASF82
	.byte	0xc
	.byte	0x4e
	.byte	0xb
	.4byte	0x7a0
	.byte	0x14
	.byte	0x9
	.4byte	.LASF83
	.byte	0xc
	.byte	0x50
	.byte	0xb
	.4byte	0x70c
	.byte	0x18
	.byte	0
	.byte	0x7
	.4byte	0x40b
	.byte	0x3
	.4byte	.LASF84
	.byte	0xc
	.byte	0x2d
	.byte	0x1d
	.4byte	0x597
	.byte	0x8
	.4byte	.LASF85
	.byte	0x50
	.byte	0xc
	.byte	0x53
	.byte	0x8
	.4byte	0x597
	.byte	0x9
	.4byte	.LASF77
	.byte	0xc
	.byte	0x54
	.byte	0xb
	.4byte	0x7bf
	.byte	0
	.byte	0x9
	.4byte	.LASF78
	.byte	0xc
	.byte	0x55
	.byte	0xb
	.4byte	0x70c
	.byte	0x4
	.byte	0x9
	.4byte	.LASF79
	.byte	0xc
	.byte	0x56
	.byte	0xf
	.4byte	0x7de
	.byte	0x8
	.byte	0x9
	.4byte	.LASF80
	.byte	0xc
	.byte	0x57
	.byte	0xf
	.4byte	0x7fd
	.byte	0xc
	.byte	0x9
	.4byte	.LASF86
	.byte	0xc
	.byte	0x58
	.byte	0xd
	.4byte	0x81c
	.byte	0x10
	.byte	0x9
	.4byte	.LASF83
	.byte	0xc
	.byte	0x59
	.byte	0xb
	.4byte	0x70c
	.byte	0x14
	.byte	0x9
	.4byte	.LASF43
	.byte	0xc
	.byte	0x5a
	.byte	0xb
	.4byte	0x841
	.byte	0x18
	.byte	0x9
	.4byte	.LASF87
	.byte	0xc
	.byte	0x5b
	.byte	0xb
	.4byte	0x85b
	.byte	0x1c
	.byte	0x9
	.4byte	.LASF88
	.byte	0xc
	.byte	0x5c
	.byte	0xb
	.4byte	0x87a
	.byte	0x20
	.byte	0x9
	.4byte	.LASF89
	.byte	0xc
	.byte	0x5d
	.byte	0x12
	.4byte	0x89a
	.byte	0x24
	.byte	0x9
	.4byte	.LASF90
	.byte	0xc
	.byte	0x5e
	.byte	0x15
	.4byte	0x8ba
	.byte	0x28
	.byte	0x9
	.4byte	.LASF91
	.byte	0xc
	.byte	0x5f
	.byte	0xb
	.4byte	0x8d4
	.byte	0x2c
	.byte	0x9
	.4byte	.LASF92
	.byte	0xc
	.byte	0x60
	.byte	0xb
	.4byte	0x85b
	.byte	0x30
	.byte	0x9
	.4byte	.LASF93
	.byte	0xc
	.byte	0x61
	.byte	0xb
	.4byte	0x85b
	.byte	0x34
	.byte	0x9
	.4byte	.LASF94
	.byte	0xc
	.byte	0x62
	.byte	0xc
	.4byte	0x8ea
	.byte	0x38
	.byte	0x9
	.4byte	.LASF95
	.byte	0xc
	.byte	0x63
	.byte	0xc
	.4byte	0x904
	.byte	0x3c
	.byte	0x9
	.4byte	.LASF96
	.byte	0xc
	.byte	0x64
	.byte	0xc
	.4byte	0x91f
	.byte	0x40
	.byte	0x9
	.4byte	.LASF81
	.byte	0xc
	.byte	0x65
	.byte	0xb
	.4byte	0x770
	.byte	0x44
	.byte	0x9
	.4byte	.LASF58
	.byte	0xc
	.byte	0x66
	.byte	0xb
	.4byte	0x944
	.byte	0x48
	.byte	0x9
	.4byte	.LASF97
	.byte	0xc
	.byte	0x67
	.byte	0xb
	.4byte	0x7bf
	.byte	0x4c
	.byte	0
	.byte	0x7
	.4byte	0x485
	.byte	0xf
	.4byte	.LASF156
	.byte	0x4
	.byte	0xc
	.byte	0x2f
	.byte	0x7
	.4byte	0x5c2
	.byte	0x10
	.4byte	.LASF98
	.byte	0xc
	.byte	0x30
	.byte	0x17
	.4byte	0x5c2
	.byte	0x10
	.4byte	.LASF99
	.byte	0xc
	.byte	0x31
	.byte	0x15
	.4byte	0x5c8
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x3ff
	.byte	0x6
	.byte	0x4
	.4byte	0x479
	.byte	0xa
	.byte	0x14
	.byte	0xc
	.byte	0x35
	.byte	0x9
	.4byte	0x626
	.byte	0xb
	.string	"ops"
	.byte	0xc
	.byte	0x36
	.byte	0x17
	.4byte	0x59c
	.byte	0
	.byte	0x9
	.4byte	.LASF100
	.byte	0xc
	.byte	0x37
	.byte	0xb
	.4byte	0x113
	.byte	0x4
	.byte	0x9
	.4byte	.LASF101
	.byte	0xc
	.byte	0x38
	.byte	0xb
	.4byte	0x121
	.byte	0x8
	.byte	0x9
	.4byte	.LASF102
	.byte	0xc
	.byte	0x39
	.byte	0x9
	.4byte	0x81
	.byte	0xc
	.byte	0x9
	.4byte	.LASF103
	.byte	0xc
	.byte	0x3a
	.byte	0xd
	.4byte	0x139
	.byte	0x10
	.byte	0x9
	.4byte	.LASF104
	.byte	0xc
	.byte	0x3b
	.byte	0xd
	.4byte	0x139
	.byte	0x11
	.byte	0
	.byte	0x3
	.4byte	.LASF105
	.byte	0xc
	.byte	0x3c
	.byte	0x3
	.4byte	0x5ce
	.byte	0xa
	.byte	0x10
	.byte	0xc
	.byte	0x3e
	.byte	0x9
	.4byte	0x66f
	.byte	0x9
	.4byte	.LASF106
	.byte	0xc
	.byte	0x3f
	.byte	0xe
	.4byte	0x66f
	.byte	0
	.byte	0x9
	.4byte	.LASF107
	.byte	0xc
	.byte	0x40
	.byte	0xb
	.4byte	0x113
	.byte	0x4
	.byte	0x9
	.4byte	.LASF108
	.byte	0xc
	.byte	0x41
	.byte	0xc
	.4byte	0x8f
	.byte	0x8
	.byte	0xb
	.string	"fd"
	.byte	0xc
	.byte	0x42
	.byte	0x9
	.4byte	0x81
	.byte	0xc
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x626
	.byte	0x3
	.4byte	.LASF109
	.byte	0xc
	.byte	0x43
	.byte	0x3
	.4byte	0x632
	.byte	0x3
	.4byte	.LASF110
	.byte	0xc
	.byte	0x46
	.byte	0x10
	.4byte	0x68d
	.byte	0x6
	.byte	0x4
	.4byte	0x693
	.byte	0x11
	.4byte	0x6a3
	.byte	0x12
	.4byte	0x6a3
	.byte	0x12
	.4byte	0x113
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x6a9
	.byte	0x8
	.4byte	.LASF111
	.byte	0x8
	.byte	0xd
	.byte	0x7
	.byte	0x8
	.4byte	0x6dd
	.byte	0xb
	.string	"fd"
	.byte	0xd
	.byte	0x8
	.byte	0x9
	.4byte	0x81
	.byte	0
	.byte	0x9
	.4byte	.LASF112
	.byte	0xd
	.byte	0x9
	.byte	0xb
	.4byte	0x3f
	.byte	0x4
	.byte	0x9
	.4byte	.LASF113
	.byte	0xd
	.byte	0xa
	.byte	0xb
	.4byte	0x3f
	.byte	0x6
	.byte	0
	.byte	0x13
	.4byte	0x81
	.4byte	0x6f1
	.byte	0x12
	.4byte	0x66f
	.byte	0x12
	.4byte	0x6f1
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x675
	.byte	0x6
	.byte	0x4
	.4byte	0x6dd
	.byte	0x13
	.4byte	0x81
	.4byte	0x70c
	.byte	0x12
	.4byte	0x6f1
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x6fd
	.byte	0x13
	.4byte	0x1d9
	.4byte	0x72b
	.byte	0x12
	.4byte	0x6f1
	.byte	0x12
	.4byte	0x113
	.byte	0x12
	.4byte	0x8f
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x712
	.byte	0x13
	.4byte	0x1d9
	.4byte	0x74a
	.byte	0x12
	.4byte	0x6f1
	.byte	0x12
	.4byte	0x74a
	.byte	0x12
	.4byte	0x8f
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x750
	.byte	0x14
	.byte	0x6
	.byte	0x4
	.4byte	0x731
	.byte	0x13
	.4byte	0x81
	.4byte	0x770
	.byte	0x12
	.4byte	0x6f1
	.byte	0x12
	.4byte	0x81
	.byte	0x12
	.4byte	0x60
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x757
	.byte	0x13
	.4byte	0x81
	.4byte	0x799
	.byte	0x12
	.4byte	0x6f1
	.byte	0x12
	.4byte	0x799
	.byte	0x12
	.4byte	0x681
	.byte	0x12
	.4byte	0x6a3
	.byte	0x12
	.4byte	0x113
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF114
	.byte	0x6
	.byte	0x4
	.4byte	0x776
	.byte	0x13
	.4byte	0x81
	.4byte	0x7bf
	.byte	0x12
	.4byte	0x6f1
	.byte	0x12
	.4byte	0x133
	.byte	0x12
	.4byte	0x81
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x7a6
	.byte	0x13
	.4byte	0x1d9
	.4byte	0x7de
	.byte	0x12
	.4byte	0x6f1
	.byte	0x12
	.4byte	0x121
	.byte	0x12
	.4byte	0x8f
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x7c5
	.byte	0x13
	.4byte	0x1d9
	.4byte	0x7fd
	.byte	0x12
	.4byte	0x6f1
	.byte	0x12
	.4byte	0x133
	.byte	0x12
	.4byte	0x8f
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x7e4
	.byte	0x13
	.4byte	0x1a9
	.4byte	0x81c
	.byte	0x12
	.4byte	0x6f1
	.byte	0x12
	.4byte	0x1a9
	.byte	0x12
	.4byte	0x81
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x803
	.byte	0x13
	.4byte	0x81
	.4byte	0x83b
	.byte	0x12
	.4byte	0x6f1
	.byte	0x12
	.4byte	0x133
	.byte	0x12
	.4byte	0x83b
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x22c
	.byte	0x6
	.byte	0x4
	.4byte	0x822
	.byte	0x13
	.4byte	0x81
	.4byte	0x85b
	.byte	0x12
	.4byte	0x6f1
	.byte	0x12
	.4byte	0x133
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x847
	.byte	0x13
	.4byte	0x81
	.4byte	0x87a
	.byte	0x12
	.4byte	0x6f1
	.byte	0x12
	.4byte	0x133
	.byte	0x12
	.4byte	0x133
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x861
	.byte	0x13
	.4byte	0x894
	.4byte	0x894
	.byte	0x12
	.4byte	0x6f1
	.byte	0x12
	.4byte	0x133
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x3f3
	.byte	0x6
	.byte	0x4
	.4byte	0x880
	.byte	0x13
	.4byte	0x8b4
	.4byte	0x8b4
	.byte	0x12
	.4byte	0x6f1
	.byte	0x12
	.4byte	0x894
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x3c3
	.byte	0x6
	.byte	0x4
	.4byte	0x8a0
	.byte	0x13
	.4byte	0x81
	.4byte	0x8d4
	.byte	0x12
	.4byte	0x6f1
	.byte	0x12
	.4byte	0x894
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x8c0
	.byte	0x11
	.4byte	0x8ea
	.byte	0x12
	.4byte	0x6f1
	.byte	0x12
	.4byte	0x894
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x8da
	.byte	0x13
	.4byte	0x4d
	.4byte	0x904
	.byte	0x12
	.4byte	0x6f1
	.byte	0x12
	.4byte	0x894
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x8f0
	.byte	0x11
	.4byte	0x91f
	.byte	0x12
	.4byte	0x6f1
	.byte	0x12
	.4byte	0x894
	.byte	0x12
	.4byte	0x4d
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x90a
	.byte	0x13
	.4byte	0x81
	.4byte	0x93e
	.byte	0x12
	.4byte	0x6f1
	.byte	0x12
	.4byte	0x133
	.byte	0x12
	.4byte	0x93e
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x300
	.byte	0x6
	.byte	0x4
	.4byte	0x925
	.byte	0x15
	.4byte	.LASF157
	.byte	0x11
	.byte	0xf
	.byte	0x1e
	.4byte	0x474
	.byte	0xa
	.byte	0x4
	.byte	0xe
	.byte	0x8
	.byte	0x9
	.4byte	0x96d
	.byte	0x9
	.4byte	.LASF115
	.byte	0xe
	.byte	0x9
	.byte	0xe
	.4byte	0x145
	.byte	0
	.byte	0
	.byte	0x3
	.4byte	.LASF116
	.byte	0xe
	.byte	0xa
	.byte	0x3
	.4byte	0x956
	.byte	0xa
	.byte	0x1c
	.byte	0xe
	.byte	0xc
	.byte	0x9
	.4byte	0x9dd
	.byte	0x9
	.4byte	.LASF117
	.byte	0xe
	.byte	0xd
	.byte	0xd
	.4byte	0x139
	.byte	0
	.byte	0x9
	.4byte	.LASF118
	.byte	0xe
	.byte	0xe
	.byte	0x12
	.4byte	0x96d
	.byte	0x4
	.byte	0x9
	.4byte	.LASF119
	.byte	0xe
	.byte	0xf
	.byte	0xb
	.4byte	0x113
	.byte	0x8
	.byte	0x9
	.4byte	.LASF120
	.byte	0xe
	.byte	0x10
	.byte	0xb
	.4byte	0x113
	.byte	0xc
	.byte	0xb
	.string	"fd"
	.byte	0xe
	.byte	0x11
	.byte	0xb
	.4byte	0x113
	.byte	0x10
	.byte	0x9
	.4byte	.LASF121
	.byte	0xe
	.byte	0x12
	.byte	0xb
	.4byte	0x113
	.byte	0x14
	.byte	0x9
	.4byte	.LASF122
	.byte	0xe
	.byte	0x13
	.byte	0xb
	.4byte	0x113
	.byte	0x18
	.byte	0
	.byte	0x3
	.4byte	.LASF123
	.byte	0xe
	.byte	0x14
	.byte	0x3
	.4byte	0x979
	.byte	0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF124
	.byte	0x16
	.4byte	0x94a
	.byte	0x1
	.byte	0xf7
	.byte	0x17
	.byte	0x5
	.byte	0x3
	.4byte	adc_ops
	.byte	0x17
	.4byte	.LASF127
	.byte	0x1
	.byte	0xa0
	.byte	0xc
	.4byte	0x81
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0xaa5
	.byte	0x18
	.string	"fp"
	.byte	0x1
	.byte	0xa0
	.byte	0x22
	.4byte	0x6f1
	.4byte	.LLST11
	.byte	0x18
	.string	"cmd"
	.byte	0x1
	.byte	0xa0
	.byte	0x2a
	.4byte	0x81
	.4byte	.LLST12
	.byte	0x18
	.string	"arg"
	.byte	0x1
	.byte	0xa0
	.byte	0x3d
	.4byte	0x60
	.4byte	.LLST13
	.byte	0x19
	.string	"ret"
	.byte	0x1
	.byte	0xa2
	.byte	0x9
	.4byte	0x81
	.4byte	.LLST14
	.byte	0x1a
	.4byte	.LASF125
	.byte	0x1
	.byte	0xa3
	.byte	0x10
	.4byte	0xaa5
	.4byte	.LLST15
	.byte	0x1a
	.4byte	.LASF126
	.byte	0x1
	.byte	0xa4
	.byte	0xa
	.4byte	0xaab
	.4byte	.LLST16
	.byte	0x1b
	.4byte	.LVL34
	.4byte	0xd7f
	.byte	0x1b
	.4byte	.LVL37
	.4byte	0xd8b
	.byte	0x1b
	.4byte	.LVL39
	.4byte	0xd97
	.byte	0x1b
	.4byte	.LVL41
	.4byte	0xda3
	.byte	0x1b
	.4byte	.LVL43
	.4byte	0xdaf
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x9dd
	.byte	0x6
	.byte	0x4
	.4byte	0x81
	.byte	0x17
	.4byte	.LASF128
	.byte	0x1
	.byte	0x84
	.byte	0xc
	.4byte	0x81
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0xbb5
	.byte	0x18
	.string	"fp"
	.byte	0x1
	.byte	0x84
	.byte	0x21
	.4byte	0x6f1
	.4byte	.LLST5
	.byte	0x1c
	.4byte	.LASF129
	.byte	0x1
	.byte	0x84
	.byte	0x29
	.4byte	0x799
	.4byte	.LLST6
	.byte	0x1c
	.4byte	.LASF130
	.byte	0x1
	.byte	0x84
	.byte	0x3e
	.4byte	0x681
	.4byte	.LLST7
	.byte	0x18
	.string	"fd"
	.byte	0x1
	.byte	0x84
	.byte	0x55
	.4byte	0x6a3
	.4byte	.LLST8
	.byte	0x18
	.string	"opa"
	.byte	0x1
	.byte	0x84
	.byte	0x5f
	.4byte	0x113
	.4byte	.LLST9
	.byte	0x1a
	.4byte	.LASF125
	.byte	0x1
	.byte	0x86
	.byte	0x10
	.4byte	0xaa5
	.4byte	.LLST10
	.byte	0x1d
	.string	"out"
	.byte	0x1
	.byte	0x9a
	.byte	0x1
	.4byte	.L15
	.byte	0x1e
	.4byte	.LVL18
	.4byte	0xdbb
	.4byte	0xb4f
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0x1b
	.4byte	.LVL19
	.4byte	0xdc7
	.byte	0x1e
	.4byte	.LVL20
	.4byte	0xdd3
	.4byte	0xb75
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	vfs_adc_notify
	.byte	0
	.byte	0x1b
	.4byte	.LVL21
	.4byte	0xddf
	.byte	0x1e
	.4byte	.LVL22
	.4byte	0xdeb
	.4byte	0xb92
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LVL29
	.4byte	0xdc7
	.byte	0x20
	.4byte	.LVL30
	.4byte	0xdf7
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	vfs_adc_notify
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	.LASF158
	.byte	0x1
	.byte	0x77
	.byte	0xd
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0xbec
	.byte	0x18
	.string	"arg"
	.byte	0x1
	.byte	0x77
	.byte	0x22
	.4byte	0x113
	.4byte	.LLST0
	.byte	0x1a
	.4byte	.LASF125
	.byte	0x1
	.byte	0x7a
	.byte	0x10
	.4byte	0xaa5
	.4byte	.LLST1
	.byte	0
	.byte	0x17
	.4byte	.LASF131
	.byte	0x1
	.byte	0x50
	.byte	0x10
	.4byte	0x1d9
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0xc9a
	.byte	0x18
	.string	"fp"
	.byte	0x1
	.byte	0x50
	.byte	0x25
	.4byte	0x6f1
	.4byte	.LLST17
	.byte	0x18
	.string	"buf"
	.byte	0x1
	.byte	0x50
	.byte	0x2f
	.4byte	0x113
	.4byte	.LLST18
	.byte	0x1c
	.4byte	.LASF132
	.byte	0x1
	.byte	0x50
	.byte	0x3b
	.4byte	0x8f
	.4byte	.LLST19
	.byte	0x19
	.string	"ret"
	.byte	0x1
	.byte	0x52
	.byte	0x9
	.4byte	0x81
	.4byte	.LLST20
	.byte	0x22
	.4byte	.LASF133
	.byte	0x1
	.byte	0x53
	.byte	0xe
	.4byte	0x145
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x1a
	.4byte	.LASF125
	.byte	0x1
	.byte	0x54
	.byte	0x10
	.4byte	0xaa5
	.4byte	.LLST21
	.byte	0x1e
	.4byte	.LVL50
	.4byte	0xe03
	.4byte	0xc7e
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x1f
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0x20
	.4byte	.LVL52
	.4byte	0xe0f
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x1f
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	.LASF159
	.byte	0x1
	.byte	0x2f
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0xd01
	.byte	0x18
	.string	"fp"
	.byte	0x1
	.byte	0x2f
	.byte	0x1b
	.4byte	0x6f1
	.4byte	.LLST2
	.byte	0x19
	.string	"ret"
	.byte	0x1
	.byte	0x31
	.byte	0x9
	.4byte	0x81
	.4byte	.LLST3
	.byte	0x1a
	.4byte	.LASF125
	.byte	0x1
	.byte	0x32
	.byte	0x10
	.4byte	0xaa5
	.4byte	.LLST4
	.byte	0x1e
	.4byte	.LVL6
	.4byte	0xe1b
	.4byte	0xcf7
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0xc
	.byte	0
	.byte	0x24
	.4byte	.LVL8
	.4byte	0xe27
	.byte	0
	.byte	0x17
	.4byte	.LASF134
	.byte	0x1
	.byte	0x10
	.byte	0xc
	.4byte	0x81
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0xd7f
	.byte	0x1c
	.4byte	.LASF135
	.byte	0x1
	.byte	0x10
	.byte	0x22
	.4byte	0x66f
	.4byte	.LLST22
	.byte	0x18
	.string	"fp"
	.byte	0x1
	.byte	0x10
	.byte	0x31
	.4byte	0x6f1
	.4byte	.LLST23
	.byte	0x19
	.string	"ret"
	.byte	0x1
	.byte	0x12
	.byte	0x9
	.4byte	0x81
	.4byte	.LLST24
	.byte	0x1a
	.4byte	.LASF125
	.byte	0x1
	.byte	0x13
	.byte	0x10
	.4byte	0xaa5
	.4byte	.LLST25
	.byte	0x1e
	.4byte	.LVL60
	.4byte	0xe33
	.4byte	0xd6e
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x20
	.4byte	.LVL62
	.4byte	0xe3f
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0x25
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0xe
	.byte	0x44
	.byte	0x5
	.byte	0x25
	.4byte	.LASF137
	.4byte	.LASF137
	.byte	0xe
	.byte	0x4d
	.byte	0x5
	.byte	0x25
	.4byte	.LASF138
	.4byte	.LASF138
	.byte	0xe
	.byte	0x56
	.byte	0x5
	.byte	0x25
	.4byte	.LASF139
	.4byte	.LASF139
	.byte	0xe
	.byte	0x5f
	.byte	0x5
	.byte	0x25
	.4byte	.LASF140
	.4byte	.LASF140
	.byte	0xe
	.byte	0x68
	.byte	0x5
	.byte	0x25
	.4byte	.LASF141
	.4byte	.LASF141
	.byte	0x9
	.byte	0xa7
	.byte	0x9
	.byte	0x25
	.4byte	.LASF142
	.4byte	.LASF142
	.byte	0xf
	.byte	0x61
	.byte	0xd
	.byte	0x25
	.4byte	.LASF143
	.4byte	.LASF143
	.byte	0xe
	.byte	0x71
	.byte	0x5
	.byte	0x25
	.4byte	.LASF144
	.4byte	.LASF144
	.byte	0xf
	.byte	0x62
	.byte	0xd
	.byte	0x25
	.4byte	.LASF145
	.4byte	.LASF145
	.byte	0x9
	.byte	0xb1
	.byte	0x9
	.byte	0x25
	.4byte	.LASF146
	.4byte	.LASF146
	.byte	0xe
	.byte	0x3b
	.byte	0x5
	.byte	0x25
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0xe
	.byte	0x28
	.byte	0x9
	.byte	0x25
	.4byte	.LASF148
	.4byte	.LASF148
	.byte	0x10
	.byte	0x1f
	.byte	0x8
	.byte	0x25
	.4byte	.LASF149
	.4byte	.LASF149
	.byte	0x9
	.byte	0x9c
	.byte	0xa
	.byte	0x25
	.4byte	.LASF150
	.4byte	.LASF150
	.byte	0xe
	.byte	0x31
	.byte	0x9
	.byte	0x25
	.4byte	.LASF151
	.4byte	.LASF151
	.byte	0xe
	.byte	0x1d
	.byte	0x9
	.byte	0x25
	.4byte	.LASF152
	.4byte	.LASF152
	.byte	0x9
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
	.byte	0x9
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
	.byte	0xa
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
	.byte	0xb
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
	.byte	0xc
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x11
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
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
	.byte	0x14
	.byte	0x26
	.byte	0
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
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x34
	.byte	0
	.byte	0x47
	.byte	0x13
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x17
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
	.byte	0x18
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
	.byte	0x19
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
	.byte	0x1a
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
	.byte	0x1b
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
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
	.byte	0x1e
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
	.byte	0x1f
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x20
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x21
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x23
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
	.byte	0x24
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
	.byte	0x25
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST11:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL32
	.4byte	.LVL44
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL45
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL33
	.4byte	.LVL44
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL31
	.4byte	.LVL34-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL34-1
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL37-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL37-1
	.4byte	.LVL38
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL39-1
	.4byte	.LVL40
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL41-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL41-1
	.4byte	.LVL42
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL43-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL43-1
	.4byte	.LVL44
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL31
	.4byte	.LVL34
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL36
	.4byte	.LFE9
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL34-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL36
	.4byte	.LVL37-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL38
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL40
	.4byte	.LVL41-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL42
	.4byte	.LVL43-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL31
	.4byte	.LVL34-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL34-1
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL37-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL37-1
	.4byte	.LVL38
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL39-1
	.4byte	.LVL40
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL41-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL41-1
	.4byte	.LVL42
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL43-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL43-1
	.4byte	.LVL44
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL15
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL14
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL18-1
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL14
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL18-1
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL25
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL14
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL18-1
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL24
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL16
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL23
	.4byte	.LVL27
	.2byte	0x3
	.byte	0x85
	.byte	0x74
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL47
	.4byte	.LVL55
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL56
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL46
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL49
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL48
	.4byte	.LVL55
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL46
	.4byte	.LVL50
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LFE6
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL50-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL3
	.4byte	.LVL12
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x3
	.byte	0x9
	.byte	0xea
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LFE5
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x7f
	.byte	0x4
	.4byte	.LVL13
	.4byte	.LFE5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL57
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL59
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL57
	.4byte	.LVL60-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL60-1
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL57
	.4byte	.LVL61
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x44
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF150:
	.string	"hal_adc_finalize"
.LASF146:
	.string	"hal_adc_notify_register"
.LASF71:
	.string	"aos_dirent_t"
.LASF105:
	.string	"inode_t"
.LASF121:
	.string	"poll_cb"
.LASF128:
	.string	"vfs_adc_poll"
.LASF74:
	.string	"aos_dir_t"
.LASF11:
	.string	"unsigned int"
.LASF55:
	.string	"st_blksize"
.LASF104:
	.string	"refs"
.LASF112:
	.string	"events"
.LASF89:
	.string	"opendir"
.LASF83:
	.string	"sync"
.LASF126:
	.string	"level"
.LASF23:
	.string	"__nlink_t"
.LASF65:
	.string	"f_ffree"
.LASF101:
	.string	"i_name"
.LASF70:
	.string	"d_name"
.LASF153:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF19:
	.string	"__ino_t"
.LASF41:
	.string	"aos_mutex_t"
.LASF32:
	.string	"ino_t"
.LASF26:
	.string	"uint32_t"
.LASF95:
	.string	"telldir"
.LASF120:
	.string	"mutex"
.LASF100:
	.string	"i_arg"
.LASF87:
	.string	"unlink"
.LASF9:
	.string	"long long unsigned int"
.LASF56:
	.string	"st_blocks"
.LASF108:
	.string	"offset"
.LASF107:
	.string	"f_arg"
.LASF99:
	.string	"i_fops"
.LASF144:
	.string	"vTaskExitCritical"
.LASF43:
	.string	"stat"
.LASF44:
	.string	"st_dev"
.LASF143:
	.string	"hal_adc_notify_unregister"
.LASF29:
	.string	"tv_nsec"
.LASF116:
	.string	"adc_config_t"
.LASF12:
	.string	"size_t"
.LASF141:
	.string	"aos_mutex_lock"
.LASF20:
	.string	"__mode_t"
.LASF69:
	.string	"d_type"
.LASF159:
	.string	"vfs_adc_close"
.LASF114:
	.string	"_Bool"
.LASF49:
	.string	"st_gid"
.LASF94:
	.string	"rewinddir"
.LASF46:
	.string	"st_mode"
.LASF92:
	.string	"mkdir"
.LASF109:
	.string	"file_t"
.LASF155:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/vfs"
.LASF47:
	.string	"st_nlink"
.LASF156:
	.string	"inode_ops_t"
.LASF81:
	.string	"ioctl"
.LASF133:
	.string	"adc_value"
.LASF82:
	.string	"poll"
.LASF40:
	.string	"aos_hdl_t"
.LASF119:
	.string	"priv"
.LASF42:
	.string	"timespec"
.LASF24:
	.string	"char"
.LASF30:
	.string	"blkcnt_t"
.LASF134:
	.string	"vfs_adc_open"
.LASF110:
	.string	"poll_notify_t"
.LASF78:
	.string	"close"
.LASF113:
	.string	"revents"
.LASF37:
	.string	"ssize_t"
.LASF86:
	.string	"lseek"
.LASF115:
	.string	"sampling_cycle"
.LASF25:
	.string	"uint8_t"
.LASF103:
	.string	"type"
.LASF27:
	.string	"time_t"
.LASF85:
	.string	"fs_ops"
.LASF58:
	.string	"statfs"
.LASF45:
	.string	"st_ino"
.LASF64:
	.string	"f_files"
.LASF8:
	.string	"long long int"
.LASF80:
	.string	"write"
.LASF59:
	.string	"f_type"
.LASF16:
	.string	"__dev_t"
.LASF136:
	.string	"hal_adc_notify_register_config_disable"
.LASF131:
	.string	"vfs_adc_read"
.LASF158:
	.string	"vfs_adc_notify"
.LASF34:
	.string	"dev_t"
.LASF62:
	.string	"f_bfree"
.LASF76:
	.string	"file_ops"
.LASF149:
	.string	"aos_mutex_free"
.LASF75:
	.string	"file_ops_t"
.LASF132:
	.string	"nbytes"
.LASF140:
	.string	"hal_adc_notify_register_config_lower"
.LASF111:
	.string	"pollfd"
.LASF138:
	.string	"hal_adc_notify_register_config_low"
.LASF63:
	.string	"f_bavail"
.LASF123:
	.string	"adc_dev_t"
.LASF66:
	.string	"f_fsid"
.LASF147:
	.string	"hal_adc_value_get"
.LASF57:
	.string	"st_spare4"
.LASF97:
	.string	"access"
.LASF88:
	.string	"rename"
.LASF18:
	.string	"__gid_t"
.LASF61:
	.string	"f_blocks"
.LASF154:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/fs/vfs/device/vfs_adc.c"
.LASF36:
	.string	"gid_t"
.LASF10:
	.string	"__int_least64_t"
.LASF98:
	.string	"i_ops"
.LASF35:
	.string	"uid_t"
.LASF118:
	.string	"config"
.LASF93:
	.string	"rmdir"
.LASF91:
	.string	"closedir"
.LASF2:
	.string	"short int"
.LASF53:
	.string	"st_mtim"
.LASF102:
	.string	"i_flags"
.LASF4:
	.string	"long int"
.LASF106:
	.string	"node"
.LASF90:
	.string	"readdir"
.LASF151:
	.string	"hal_adc_init"
.LASF67:
	.string	"f_namelen"
.LASF130:
	.string	"notify"
.LASF14:
	.string	"__blksize_t"
.LASF17:
	.string	"__uid_t"
.LASF5:
	.string	"__uint8_t"
.LASF52:
	.string	"st_atim"
.LASF79:
	.string	"read"
.LASF72:
	.string	"dd_vfs_fd"
.LASF77:
	.string	"open"
.LASF28:
	.string	"tv_sec"
.LASF7:
	.string	"long unsigned int"
.LASF124:
	.string	"float"
.LASF117:
	.string	"port"
.LASF152:
	.string	"aos_mutex_new"
.LASF39:
	.string	"nlink_t"
.LASF60:
	.string	"f_bsize"
.LASF1:
	.string	"unsigned char"
.LASF129:
	.string	"setup"
.LASF6:
	.string	"__uint32_t"
.LASF31:
	.string	"blksize_t"
.LASF125:
	.string	"adc_dev"
.LASF142:
	.string	"vTaskEnterCritical"
.LASF122:
	.string	"poll_data"
.LASF51:
	.string	"st_size"
.LASF137:
	.string	"hal_adc_notify_register_config_high"
.LASF68:
	.string	"d_ino"
.LASF48:
	.string	"st_uid"
.LASF21:
	.string	"__off_t"
.LASF54:
	.string	"st_ctim"
.LASF139:
	.string	"hal_adc_notify_register_config_higher"
.LASF22:
	.string	"_ssize_t"
.LASF73:
	.string	"dd_rsv"
.LASF0:
	.string	"signed char"
.LASF38:
	.string	"mode_t"
.LASF33:
	.string	"off_t"
.LASF3:
	.string	"short unsigned int"
.LASF148:
	.string	"memcpy"
.LASF96:
	.string	"seekdir"
.LASF13:
	.string	"__blkcnt_t"
.LASF157:
	.string	"adc_ops"
.LASF15:
	.string	"_off_t"
.LASF50:
	.string	"st_rdev"
.LASF145:
	.string	"aos_mutex_unlock"
.LASF127:
	.string	"vfs_adc_ioctl"
.LASF84:
	.string	"fs_ops_t"
.LASF135:
	.string	"inode"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
