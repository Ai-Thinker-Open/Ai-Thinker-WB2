	.file	"vfs_pwm.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.vfs_pwm_open,"ax",@progbits
	.align	1
	.globl	vfs_pwm_open
	.type	vfs_pwm_open, @function
vfs_pwm_open:
.LFB4:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/fs/vfs/device/vfs_pwm.c"
	.loc 1 20 1
	.cfi_startproc
.LVL0:
	.loc 1 21 5
	.loc 1 22 5
	.loc 1 25 5
	.loc 1 25 8 is_stmt 0
	beq	a1,zero,.L4
	.loc 1 25 27 discriminator 1
	lw	a5,0(a1)
	.loc 1 25 21 discriminator 1
	beq	a5,zero,.L4
	.loc 1 28 9 is_stmt 1
	.loc 1 28 12 is_stmt 0
	lbu	a3,17(a5)
	li	a4,1
	.loc 1 36 17
	li	a0,0
.LVL1:
	.loc 1 28 12
	bne	a3,a4,.L1
	.loc 1 31 13 is_stmt 1
.LVL2:
	.loc 1 34 13
	.loc 1 34 19 is_stmt 0
	lw	a0,4(a5)
	tail	hal_pwm_init_bydev
.LVL3:
.L4:
	.loc 1 39 13
	li	a0,-22
.LVL4:
.L1:
	.loc 1 43 1
	ret
	.cfi_endproc
.LFE4:
	.size	vfs_pwm_open, .-vfs_pwm_open
	.section	.text.vfs_pwm_close,"ax",@progbits
	.align	1
	.globl	vfs_pwm_close
	.type	vfs_pwm_close, @function
vfs_pwm_close:
.LFB5:
	.loc 1 46 1 is_stmt 1
	.cfi_startproc
.LVL5:
	.loc 1 47 5
	.loc 1 48 5
	.loc 1 51 5
	.loc 1 51 8 is_stmt 0
	beq	a0,zero,.L11
	.loc 1 51 27 discriminator 1
	lw	a5,0(a0)
	.loc 1 51 21 discriminator 1
	beq	a5,zero,.L11
	.loc 1 54 9 is_stmt 1
	.loc 1 54 12 is_stmt 0
	lbu	a3,17(a5)
	li	a4,1
	.loc 1 67 17
	li	a0,0
.LVL6:
	.loc 1 54 12
	bne	a3,a4,.L6
	.loc 1 57 13 is_stmt 1
	.loc 1 57 21 is_stmt 0
	lw	a0,4(a5)
.LVL7:
	.loc 1 59 13 is_stmt 1
	.loc 1 59 16 is_stmt 0
	beq	a0,zero,.L11
	.loc 1 62 17 is_stmt 1
	.loc 1 62 23 is_stmt 0
	tail	hal_pwm_finalize_bydev
.LVL8:
.L11:
	.loc 1 70 13
	li	a0,-22
.LVL9:
	.loc 1 73 5 is_stmt 1
.L6:
	.loc 1 74 1 is_stmt 0
	ret
	.cfi_endproc
.LFE5:
	.size	vfs_pwm_close, .-vfs_pwm_close
	.section	.rodata.vfs_pwm_ioctl.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"vfs_pwm.c"
	.align	2
.LC1:
	.string	"INFO  "
	.align	2
.LC2:
	.string	"[%10u][%s: %s:%4d] ioctl start.\r\n"
	.align	2
.LC3:
	.string	"[%10u][%s: %s:%4d] ioctl stop.\r\n"
	.align	2
.LC4:
	.string	"[%10u][%s: %s:%4d] ioctl set duty.\r\n"
	.align	2
.LC5:
	.string	"[%10u][%s: %s:%4d] ioctl set freq.\r\n"
	.section	.text.vfs_pwm_ioctl,"ax",@progbits
	.align	1
	.globl	vfs_pwm_ioctl
	.type	vfs_pwm_ioctl, @function
vfs_pwm_ioctl:
.LFB6:
	.loc 1 77 1 is_stmt 1
	.cfi_startproc
.LVL10:
	.loc 1 78 5
	.loc 1 79 5
	.loc 1 80 5
	.loc 1 81 5
	.loc 1 84 5
	.loc 1 77 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.loc 1 84 8
	bne	a0,zero,.L13
.LVL11:
.L46:
	.loc 1 95 5
	li	s0,-22
.LVL12:
.L12:
	.loc 1 134 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,s0
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL13:
.L13:
	.cfi_restore_state
	.loc 1 84 27 discriminator 1
	lw	a5,0(a0)
	.loc 1 84 21 discriminator 1
	beq	a5,zero,.L46
	.loc 1 89 5 is_stmt 1
	.loc 1 89 13 is_stmt 0
	lw	s1,4(a5)
.LVL14:
	.loc 1 91 5 is_stmt 1
	.loc 1 91 8 is_stmt 0
	beq	s1,zero,.L46
	.loc 1 95 5
	li	a5,3
	mv	s0,a2
	.loc 1 95 5 is_stmt 1
	beq	a1,a5,.L16
.LVL15:
	bgt	a1,a5,.L17
	li	a5,1
	beq	a1,a5,.L18
	li	a5,2
	bne	a1,a5,.L46
	.loc 1 104 13
	.loc 1 104 18
	.loc 1 104 20
	.loc 1 104 72 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL16:
	.loc 1 104 20
	beq	a0,zero,.L23
	.loc 1 104 99 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL17:
.L43:
	.loc 1 104 128 discriminator 2
	mv	a1,a0
	.loc 1 104 20 discriminator 2
	lui	a3,%hi(.LC0)
	lui	a2,%hi(.LC1)
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	li	a4,104
	addi	a3,a3,%lo(.LC0)
	addi	a2,a2,%lo(.LC1)
	call	bl_printk
.LVL18:
	.loc 1 104 179 is_stmt 1 discriminator 2
	.loc 1 104 188 discriminator 2
	.loc 1 105 13 discriminator 2
	.loc 1 134 1 is_stmt 0 discriminator 2
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL19:
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 105 19 discriminator 2
	mv	a0,s1
	.loc 1 134 1 discriminator 2
	lw	s1,4(sp)
	.cfi_restore 9
.LVL20:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 105 19 discriminator 2
	tail	hal_pwm_stop_bydev
.LVL21:
.L17:
	.cfi_restore_state
	.loc 1 95 5
	li	a5,4
	bne	a1,a5,.L46
	.loc 1 120 13 is_stmt 1
	.loc 1 120 18
	.loc 1 120 20
	.loc 1 120 76 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL22:
	.loc 1 120 20
	beq	a0,zero,.L27
	.loc 1 120 103 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL23:
.L45:
	.loc 1 120 132 discriminator 2
	mv	a1,a0
	.loc 1 120 20 discriminator 2
	lui	a3,%hi(.LC0)
	lui	a2,%hi(.LC1)
	lui	a0,%hi(.LC5)
	li	a4,120
	addi	a3,a3,%lo(.LC0)
	addi	a2,a2,%lo(.LC1)
	addi	a0,a0,%lo(.LC5)
	call	bl_printk
.LVL24:
	.loc 1 120 183 is_stmt 1 discriminator 2
	.loc 1 120 192 discriminator 2
	.loc 1 121 13 discriminator 2
	.loc 1 121 16 is_stmt 0 discriminator 2
	beq	s0,zero,.L46
	.loc 1 124 13 is_stmt 1
.LVL25:
	.loc 1 125 13
	.loc 1 125 19 is_stmt 0
	lw	a1,0(s0)
	.loc 1 134 1
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL26:
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 125 19
	mv	a0,s1
	.loc 1 134 1
	lw	s1,4(sp)
	.cfi_restore 9
.LVL27:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 125 19
	tail	hal_pwm_set_freq_bydev
.LVL28:
.L18:
	.cfi_restore_state
	.loc 1 98 13 is_stmt 1
	.loc 1 98 19 is_stmt 0
	mv	a0,s1
.LVL29:
	call	hal_pwm_start_bydev
.LVL30:
	mv	s0,a0
.LVL31:
	.loc 1 99 13 is_stmt 1
	.loc 1 99 18
	.loc 1 99 20
	.loc 1 99 73 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL32:
	.loc 1 99 20
	beq	a0,zero,.L21
	.loc 1 99 100 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL33:
.L42:
	.loc 1 99 129 discriminator 2
	mv	a1,a0
	.loc 1 99 20 discriminator 2
	lui	a3,%hi(.LC0)
	lui	a2,%hi(.LC1)
	lui	a0,%hi(.LC2)
	li	a4,99
	addi	a3,a3,%lo(.LC0)
	addi	a2,a2,%lo(.LC1)
	addi	a0,a0,%lo(.LC2)
	call	bl_printk
.LVL34:
	.loc 1 99 179 is_stmt 1 discriminator 2
	.loc 1 99 188 discriminator 2
	.loc 1 101 9 discriminator 2
	j	.L12
.L21:
	.loc 1 99 129 is_stmt 0 discriminator 2
	call	xTaskGetTickCount
.LVL35:
	j	.L42
.LVL36:
.L23:
	.loc 1 104 128 discriminator 2
	call	xTaskGetTickCount
.LVL37:
	j	.L43
.LVL38:
.L16:
	.loc 1 110 13 is_stmt 1
	.loc 1 110 18
	.loc 1 110 20
	.loc 1 110 76 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL39:
	.loc 1 110 20
	beq	a0,zero,.L25
	.loc 1 110 103 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL40:
.L44:
	.loc 1 110 132 discriminator 2
	mv	a1,a0
	.loc 1 110 20 discriminator 2
	lui	a3,%hi(.LC0)
	lui	a2,%hi(.LC1)
	lui	a0,%hi(.LC4)
	li	a4,110
	addi	a3,a3,%lo(.LC0)
	addi	a2,a2,%lo(.LC1)
	addi	a0,a0,%lo(.LC4)
	call	bl_printk
.LVL41:
	.loc 1 110 183 is_stmt 1 discriminator 2
	.loc 1 110 192 discriminator 2
	.loc 1 111 13 discriminator 2
	.loc 1 111 16 is_stmt 0 discriminator 2
	beq	s0,zero,.L46
	.loc 1 114 13 is_stmt 1
.LVL42:
	.loc 1 115 13
	.loc 1 115 19 is_stmt 0
	flw	fa0,0(s0)
	.loc 1 134 1
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL43:
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 115 19
	mv	a0,s1
	.loc 1 134 1
	lw	s1,4(sp)
	.cfi_restore 9
.LVL44:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 115 19
	tail	hal_pwm_set_duty_bydev
.LVL45:
.L25:
	.cfi_restore_state
	.loc 1 110 132 discriminator 2
	call	xTaskGetTickCount
.LVL46:
	j	.L44
.L27:
	.loc 1 120 132 discriminator 2
	call	xTaskGetTickCount
.LVL47:
	j	.L45
	.cfi_endproc
.LFE6:
	.size	vfs_pwm_ioctl, .-vfs_pwm_ioctl
	.globl	pwm_ops
	.section	.rodata.pwm_ops,"a"
	.align	2
	.type	pwm_ops, @object
	.size	pwm_ops, 28
pwm_ops:
	.word	vfs_pwm_open
	.word	vfs_pwm_close
	.zero	8
	.word	vfs_pwm_ioctl
	.zero	8
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timeval.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timespec.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h"
	.file 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/stat.h"
	.file 10 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/fs/vfs/include/vfs_dir.h"
	.file 11 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/fs/vfs/include/vfs_inode.h"
	.file 12 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/fs/vfs/include/hal/soc/pwm.h"
	.file 13 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 14 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 15 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_log.h"
	.file 16 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/fs/vfs/include/device/vfs_pwm.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xc8b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF134
	.byte	0xc
	.4byte	.LASF135
	.4byte	.LASF136
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF1
	.byte	0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x28
	.byte	0x12
	.4byte	0x3f
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF2
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.byte	0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x59
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.byte	0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x73
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
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
	.byte	0x4f
	.byte	0x1b
	.4byte	0x73
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0xc8
	.byte	0x17
	.4byte	0x46
	.byte	0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0xd1
	.byte	0x16
	.4byte	0x88
	.byte	0x3
	.4byte	.LASF15
	.byte	0x5
	.byte	0x1e
	.byte	0xe
	.4byte	0x3f
	.byte	0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0x22
	.byte	0xe
	.4byte	0x3f
	.byte	0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0x2e
	.byte	0xe
	.4byte	0x3f
	.byte	0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x38
	.byte	0xf
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x3c
	.byte	0x18
	.4byte	0x60
	.byte	0x3
	.4byte	.LASF20
	.byte	0x5
	.byte	0x3f
	.byte	0x18
	.4byte	0x60
	.byte	0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0x4b
	.byte	0x18
	.4byte	0x60
	.byte	0x3
	.4byte	.LASF22
	.byte	0x5
	.byte	0x5a
	.byte	0x14
	.4byte	0x8f
	.byte	0x3
	.4byte	.LASF23
	.byte	0x5
	.byte	0x66
	.byte	0x10
	.4byte	0xcb
	.byte	0x3
	.4byte	.LASF24
	.byte	0x5
	.byte	0x93
	.byte	0x14
	.4byte	0x81
	.byte	0x5
	.byte	0x4
	.byte	0x3
	.4byte	.LASF25
	.byte	0x5
	.byte	0xd1
	.byte	0x18
	.4byte	0x60
	.byte	0x6
	.byte	0x4
	.4byte	0x13f
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF26
	.byte	0x7
	.4byte	0x13f
	.byte	0x6
	.byte	0x4
	.4byte	0x146
	.byte	0x3
	.4byte	.LASF27
	.byte	0x6
	.byte	0x2a
	.byte	0x19
	.4byte	0x9b
	.byte	0x8
	.4byte	.LASF40
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
	.4byte	0x3f
	.byte	0x8
	.byte	0
	.byte	0x3
	.4byte	.LASF30
	.byte	0x8
	.byte	0x61
	.byte	0x14
	.4byte	0xb3
	.byte	0x3
	.4byte	.LASF31
	.byte	0x8
	.byte	0x66
	.byte	0x15
	.4byte	0xbf
	.byte	0x3
	.4byte	.LASF32
	.byte	0x8
	.byte	0x8b
	.byte	0x11
	.4byte	0xfb
	.byte	0x3
	.4byte	.LASF33
	.byte	0x8
	.byte	0x9d
	.byte	0x11
	.4byte	0x113
	.byte	0x3
	.4byte	.LASF34
	.byte	0x8
	.byte	0xa1
	.byte	0x11
	.4byte	0xd7
	.byte	0x3
	.4byte	.LASF35
	.byte	0x8
	.byte	0xa5
	.byte	0x11
	.4byte	0xe3
	.byte	0x3
	.4byte	.LASF36
	.byte	0x8
	.byte	0xa9
	.byte	0x11
	.4byte	0xef
	.byte	0x3
	.4byte	.LASF37
	.byte	0x8
	.byte	0xb8
	.byte	0x12
	.4byte	0x11f
	.byte	0x3
	.4byte	.LASF38
	.byte	0x8
	.byte	0xbd
	.byte	0x12
	.4byte	0x107
	.byte	0x3
	.4byte	.LASF39
	.byte	0x8
	.byte	0xc2
	.byte	0x13
	.4byte	0x12d
	.byte	0x8
	.4byte	.LASF41
	.byte	0x58
	.byte	0x9
	.byte	0x1b
	.byte	0x8
	.4byte	0x2c1
	.byte	0x9
	.4byte	.LASF42
	.byte	0x9
	.byte	0x1d
	.byte	0x9
	.4byte	0x1b5
	.byte	0
	.byte	0x9
	.4byte	.LASF43
	.byte	0x9
	.byte	0x1e
	.byte	0x9
	.4byte	0x19d
	.byte	0x2
	.byte	0x9
	.4byte	.LASF44
	.byte	0x9
	.byte	0x1f
	.byte	0xa
	.4byte	0x1e5
	.byte	0x4
	.byte	0x9
	.4byte	.LASF45
	.byte	0x9
	.byte	0x20
	.byte	0xb
	.4byte	0x1f1
	.byte	0x8
	.byte	0x9
	.4byte	.LASF46
	.byte	0x9
	.byte	0x21
	.byte	0x9
	.4byte	0x1c1
	.byte	0xa
	.byte	0x9
	.4byte	.LASF47
	.byte	0x9
	.byte	0x22
	.byte	0x9
	.4byte	0x1cd
	.byte	0xc
	.byte	0x9
	.4byte	.LASF48
	.byte	0x9
	.byte	0x23
	.byte	0x9
	.4byte	0x1b5
	.byte	0xe
	.byte	0x9
	.4byte	.LASF49
	.byte	0x9
	.byte	0x24
	.byte	0x9
	.4byte	0x1a9
	.byte	0x10
	.byte	0x9
	.4byte	.LASF50
	.byte	0x9
	.byte	0x2a
	.byte	0x13
	.4byte	0x15d
	.byte	0x18
	.byte	0x9
	.4byte	.LASF51
	.byte	0x9
	.byte	0x2b
	.byte	0x13
	.4byte	0x15d
	.byte	0x28
	.byte	0x9
	.4byte	.LASF52
	.byte	0x9
	.byte	0x2c
	.byte	0x13
	.4byte	0x15d
	.byte	0x38
	.byte	0x9
	.4byte	.LASF53
	.byte	0x9
	.byte	0x2d
	.byte	0xd
	.4byte	0x191
	.byte	0x48
	.byte	0x9
	.4byte	.LASF54
	.byte	0x9
	.byte	0x2e
	.byte	0xc
	.4byte	0x185
	.byte	0x4c
	.byte	0x9
	.4byte	.LASF55
	.byte	0x9
	.byte	0x30
	.byte	0x8
	.4byte	0x2c1
	.byte	0x50
	.byte	0
	.byte	0xa
	.4byte	0x3f
	.4byte	0x2d1
	.byte	0xb
	.4byte	0x88
	.byte	0x1
	.byte	0
	.byte	0x8
	.4byte	.LASF56
	.byte	0x24
	.byte	0xa
	.byte	0x4
	.byte	0x8
	.4byte	0x354
	.byte	0x9
	.4byte	.LASF57
	.byte	0xa
	.byte	0x5
	.byte	0xa
	.4byte	0x3f
	.byte	0
	.byte	0x9
	.4byte	.LASF58
	.byte	0xa
	.byte	0x6
	.byte	0xa
	.4byte	0x3f
	.byte	0x4
	.byte	0x9
	.4byte	.LASF59
	.byte	0xa
	.byte	0x7
	.byte	0xa
	.4byte	0x3f
	.byte	0x8
	.byte	0x9
	.4byte	.LASF60
	.byte	0xa
	.byte	0x8
	.byte	0xa
	.4byte	0x3f
	.byte	0xc
	.byte	0x9
	.4byte	.LASF61
	.byte	0xa
	.byte	0x9
	.byte	0xa
	.4byte	0x3f
	.byte	0x10
	.byte	0x9
	.4byte	.LASF62
	.byte	0xa
	.byte	0xa
	.byte	0xa
	.4byte	0x3f
	.byte	0x14
	.byte	0x9
	.4byte	.LASF63
	.byte	0xa
	.byte	0xb
	.byte	0xa
	.4byte	0x3f
	.byte	0x18
	.byte	0x9
	.4byte	.LASF64
	.byte	0xa
	.byte	0xc
	.byte	0xa
	.4byte	0x3f
	.byte	0x1c
	.byte	0x9
	.4byte	.LASF65
	.byte	0xa
	.byte	0xd
	.byte	0xa
	.4byte	0x3f
	.byte	0x20
	.byte	0
	.byte	0xc
	.byte	0x8
	.byte	0xa
	.byte	0x10
	.byte	0x9
	.4byte	0x385
	.byte	0x9
	.4byte	.LASF66
	.byte	0xa
	.byte	0x11
	.byte	0x9
	.4byte	0x81
	.byte	0
	.byte	0x9
	.4byte	.LASF67
	.byte	0xa
	.byte	0x12
	.byte	0xd
	.4byte	0x4d
	.byte	0x4
	.byte	0x9
	.4byte	.LASF68
	.byte	0xa
	.byte	0x13
	.byte	0xa
	.4byte	0x385
	.byte	0x5
	.byte	0
	.byte	0xa
	.4byte	0x13f
	.4byte	0x394
	.byte	0xd
	.4byte	0x88
	.byte	0
	.byte	0x3
	.4byte	.LASF69
	.byte	0xa
	.byte	0x14
	.byte	0x3
	.4byte	0x354
	.byte	0xc
	.byte	0x8
	.byte	0xa
	.byte	0x16
	.byte	0x9
	.4byte	0x3c4
	.byte	0x9
	.4byte	.LASF70
	.byte	0xa
	.byte	0x17
	.byte	0x9
	.4byte	0x81
	.byte	0
	.byte	0x9
	.4byte	.LASF71
	.byte	0xa
	.byte	0x18
	.byte	0x9
	.4byte	0x81
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF72
	.byte	0xa
	.byte	0x19
	.byte	0x3
	.4byte	0x3a0
	.byte	0x3
	.4byte	.LASF73
	.byte	0xb
	.byte	0x2c
	.byte	0x1f
	.4byte	0x445
	.byte	0x8
	.4byte	.LASF74
	.byte	0x1c
	.byte	0xb
	.byte	0x47
	.byte	0x8
	.4byte	0x445
	.byte	0x9
	.4byte	.LASF75
	.byte	0xb
	.byte	0x48
	.byte	0xb
	.4byte	0x699
	.byte	0
	.byte	0x9
	.4byte	.LASF76
	.byte	0xb
	.byte	0x49
	.byte	0xb
	.4byte	0x6ae
	.byte	0x4
	.byte	0x9
	.4byte	.LASF77
	.byte	0xb
	.byte	0x4a
	.byte	0xf
	.4byte	0x6cd
	.byte	0x8
	.byte	0x9
	.4byte	.LASF78
	.byte	0xb
	.byte	0x4b
	.byte	0xf
	.4byte	0x6f3
	.byte	0xc
	.byte	0x9
	.4byte	.LASF79
	.byte	0xb
	.byte	0x4c
	.byte	0xb
	.4byte	0x712
	.byte	0x10
	.byte	0x9
	.4byte	.LASF80
	.byte	0xb
	.byte	0x4e
	.byte	0xb
	.4byte	0x742
	.byte	0x14
	.byte	0x9
	.4byte	.LASF81
	.byte	0xb
	.byte	0x50
	.byte	0xb
	.4byte	0x6ae
	.byte	0x18
	.byte	0
	.byte	0x7
	.4byte	0x3dc
	.byte	0x3
	.4byte	.LASF82
	.byte	0xb
	.byte	0x2d
	.byte	0x1d
	.4byte	0x568
	.byte	0x8
	.4byte	.LASF83
	.byte	0x50
	.byte	0xb
	.byte	0x53
	.byte	0x8
	.4byte	0x568
	.byte	0x9
	.4byte	.LASF75
	.byte	0xb
	.byte	0x54
	.byte	0xb
	.4byte	0x761
	.byte	0
	.byte	0x9
	.4byte	.LASF76
	.byte	0xb
	.byte	0x55
	.byte	0xb
	.4byte	0x6ae
	.byte	0x4
	.byte	0x9
	.4byte	.LASF77
	.byte	0xb
	.byte	0x56
	.byte	0xf
	.4byte	0x780
	.byte	0x8
	.byte	0x9
	.4byte	.LASF78
	.byte	0xb
	.byte	0x57
	.byte	0xf
	.4byte	0x79f
	.byte	0xc
	.byte	0x9
	.4byte	.LASF84
	.byte	0xb
	.byte	0x58
	.byte	0xd
	.4byte	0x7be
	.byte	0x10
	.byte	0x9
	.4byte	.LASF81
	.byte	0xb
	.byte	0x59
	.byte	0xb
	.4byte	0x6ae
	.byte	0x14
	.byte	0x9
	.4byte	.LASF41
	.byte	0xb
	.byte	0x5a
	.byte	0xb
	.4byte	0x7e3
	.byte	0x18
	.byte	0x9
	.4byte	.LASF85
	.byte	0xb
	.byte	0x5b
	.byte	0xb
	.4byte	0x7fd
	.byte	0x1c
	.byte	0x9
	.4byte	.LASF86
	.byte	0xb
	.byte	0x5c
	.byte	0xb
	.4byte	0x81c
	.byte	0x20
	.byte	0x9
	.4byte	.LASF87
	.byte	0xb
	.byte	0x5d
	.byte	0x12
	.4byte	0x83c
	.byte	0x24
	.byte	0x9
	.4byte	.LASF88
	.byte	0xb
	.byte	0x5e
	.byte	0x15
	.4byte	0x85c
	.byte	0x28
	.byte	0x9
	.4byte	.LASF89
	.byte	0xb
	.byte	0x5f
	.byte	0xb
	.4byte	0x876
	.byte	0x2c
	.byte	0x9
	.4byte	.LASF90
	.byte	0xb
	.byte	0x60
	.byte	0xb
	.4byte	0x7fd
	.byte	0x30
	.byte	0x9
	.4byte	.LASF91
	.byte	0xb
	.byte	0x61
	.byte	0xb
	.4byte	0x7fd
	.byte	0x34
	.byte	0x9
	.4byte	.LASF92
	.byte	0xb
	.byte	0x62
	.byte	0xc
	.4byte	0x88c
	.byte	0x38
	.byte	0x9
	.4byte	.LASF93
	.byte	0xb
	.byte	0x63
	.byte	0xc
	.4byte	0x8a6
	.byte	0x3c
	.byte	0x9
	.4byte	.LASF94
	.byte	0xb
	.byte	0x64
	.byte	0xc
	.4byte	0x8c1
	.byte	0x40
	.byte	0x9
	.4byte	.LASF79
	.byte	0xb
	.byte	0x65
	.byte	0xb
	.4byte	0x712
	.byte	0x44
	.byte	0x9
	.4byte	.LASF56
	.byte	0xb
	.byte	0x66
	.byte	0xb
	.4byte	0x8e6
	.byte	0x48
	.byte	0x9
	.4byte	.LASF95
	.byte	0xb
	.byte	0x67
	.byte	0xb
	.4byte	0x761
	.byte	0x4c
	.byte	0
	.byte	0x7
	.4byte	0x456
	.byte	0xe
	.4byte	.LASF137
	.byte	0x4
	.byte	0xb
	.byte	0x2f
	.byte	0x7
	.4byte	0x593
	.byte	0xf
	.4byte	.LASF96
	.byte	0xb
	.byte	0x30
	.byte	0x17
	.4byte	0x593
	.byte	0xf
	.4byte	.LASF97
	.byte	0xb
	.byte	0x31
	.byte	0x15
	.4byte	0x599
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x3d0
	.byte	0x6
	.byte	0x4
	.4byte	0x44a
	.byte	0xc
	.byte	0x14
	.byte	0xb
	.byte	0x35
	.byte	0x9
	.4byte	0x5f7
	.byte	0x10
	.string	"ops"
	.byte	0xb
	.byte	0x36
	.byte	0x17
	.4byte	0x56d
	.byte	0
	.byte	0x9
	.4byte	.LASF98
	.byte	0xb
	.byte	0x37
	.byte	0xb
	.4byte	0x12b
	.byte	0x4
	.byte	0x9
	.4byte	.LASF99
	.byte	0xb
	.byte	0x38
	.byte	0xb
	.4byte	0x139
	.byte	0x8
	.byte	0x9
	.4byte	.LASF100
	.byte	0xb
	.byte	0x39
	.byte	0x9
	.4byte	0x81
	.byte	0xc
	.byte	0x9
	.4byte	.LASF101
	.byte	0xb
	.byte	0x3a
	.byte	0xd
	.4byte	0x4d
	.byte	0x10
	.byte	0x9
	.4byte	.LASF102
	.byte	0xb
	.byte	0x3b
	.byte	0xd
	.4byte	0x4d
	.byte	0x11
	.byte	0
	.byte	0x3
	.4byte	.LASF103
	.byte	0xb
	.byte	0x3c
	.byte	0x3
	.4byte	0x59f
	.byte	0xc
	.byte	0x10
	.byte	0xb
	.byte	0x3e
	.byte	0x9
	.4byte	0x640
	.byte	0x9
	.4byte	.LASF104
	.byte	0xb
	.byte	0x3f
	.byte	0xe
	.4byte	0x640
	.byte	0
	.byte	0x9
	.4byte	.LASF105
	.byte	0xb
	.byte	0x40
	.byte	0xb
	.4byte	0x12b
	.byte	0x4
	.byte	0x9
	.4byte	.LASF106
	.byte	0xb
	.byte	0x41
	.byte	0xc
	.4byte	0xa7
	.byte	0x8
	.byte	0x10
	.string	"fd"
	.byte	0xb
	.byte	0x42
	.byte	0x9
	.4byte	0x81
	.byte	0xc
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x5f7
	.byte	0x3
	.4byte	.LASF107
	.byte	0xb
	.byte	0x43
	.byte	0x3
	.4byte	0x603
	.byte	0x3
	.4byte	.LASF108
	.byte	0xb
	.byte	0x46
	.byte	0x10
	.4byte	0x65e
	.byte	0x6
	.byte	0x4
	.4byte	0x664
	.byte	0x11
	.4byte	0x674
	.byte	0x12
	.4byte	0x674
	.byte	0x12
	.4byte	0x12b
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x67a
	.byte	0x13
	.4byte	.LASF138
	.byte	0x14
	.4byte	0x81
	.4byte	0x693
	.byte	0x12
	.4byte	0x640
	.byte	0x12
	.4byte	0x693
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x646
	.byte	0x6
	.byte	0x4
	.4byte	0x67f
	.byte	0x14
	.4byte	0x81
	.4byte	0x6ae
	.byte	0x12
	.4byte	0x693
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x69f
	.byte	0x14
	.4byte	0x1d9
	.4byte	0x6cd
	.byte	0x12
	.4byte	0x693
	.byte	0x12
	.4byte	0x12b
	.byte	0x12
	.4byte	0xa7
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x6b4
	.byte	0x14
	.4byte	0x1d9
	.4byte	0x6ec
	.byte	0x12
	.4byte	0x693
	.byte	0x12
	.4byte	0x6ec
	.byte	0x12
	.4byte	0xa7
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x6f2
	.byte	0x15
	.byte	0x6
	.byte	0x4
	.4byte	0x6d3
	.byte	0x14
	.4byte	0x81
	.4byte	0x712
	.byte	0x12
	.4byte	0x693
	.byte	0x12
	.4byte	0x81
	.byte	0x12
	.4byte	0x73
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x6f9
	.byte	0x14
	.4byte	0x81
	.4byte	0x73b
	.byte	0x12
	.4byte	0x693
	.byte	0x12
	.4byte	0x73b
	.byte	0x12
	.4byte	0x652
	.byte	0x12
	.4byte	0x674
	.byte	0x12
	.4byte	0x12b
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF109
	.byte	0x6
	.byte	0x4
	.4byte	0x718
	.byte	0x14
	.4byte	0x81
	.4byte	0x761
	.byte	0x12
	.4byte	0x693
	.byte	0x12
	.4byte	0x14b
	.byte	0x12
	.4byte	0x81
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x748
	.byte	0x14
	.4byte	0x1d9
	.4byte	0x780
	.byte	0x12
	.4byte	0x693
	.byte	0x12
	.4byte	0x139
	.byte	0x12
	.4byte	0xa7
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x767
	.byte	0x14
	.4byte	0x1d9
	.4byte	0x79f
	.byte	0x12
	.4byte	0x693
	.byte	0x12
	.4byte	0x14b
	.byte	0x12
	.4byte	0xa7
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x786
	.byte	0x14
	.4byte	0x1a9
	.4byte	0x7be
	.byte	0x12
	.4byte	0x693
	.byte	0x12
	.4byte	0x1a9
	.byte	0x12
	.4byte	0x81
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x7a5
	.byte	0x14
	.4byte	0x81
	.4byte	0x7dd
	.byte	0x12
	.4byte	0x693
	.byte	0x12
	.4byte	0x14b
	.byte	0x12
	.4byte	0x7dd
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x1fd
	.byte	0x6
	.byte	0x4
	.4byte	0x7c4
	.byte	0x14
	.4byte	0x81
	.4byte	0x7fd
	.byte	0x12
	.4byte	0x693
	.byte	0x12
	.4byte	0x14b
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x7e9
	.byte	0x14
	.4byte	0x81
	.4byte	0x81c
	.byte	0x12
	.4byte	0x693
	.byte	0x12
	.4byte	0x14b
	.byte	0x12
	.4byte	0x14b
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x803
	.byte	0x14
	.4byte	0x836
	.4byte	0x836
	.byte	0x12
	.4byte	0x693
	.byte	0x12
	.4byte	0x14b
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x3c4
	.byte	0x6
	.byte	0x4
	.4byte	0x822
	.byte	0x14
	.4byte	0x856
	.4byte	0x856
	.byte	0x12
	.4byte	0x693
	.byte	0x12
	.4byte	0x836
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x394
	.byte	0x6
	.byte	0x4
	.4byte	0x842
	.byte	0x14
	.4byte	0x81
	.4byte	0x876
	.byte	0x12
	.4byte	0x693
	.byte	0x12
	.4byte	0x836
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x862
	.byte	0x11
	.4byte	0x88c
	.byte	0x12
	.4byte	0x693
	.byte	0x12
	.4byte	0x836
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x87c
	.byte	0x14
	.4byte	0x3f
	.4byte	0x8a6
	.byte	0x12
	.4byte	0x693
	.byte	0x12
	.4byte	0x836
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x892
	.byte	0x11
	.4byte	0x8c1
	.byte	0x12
	.4byte	0x693
	.byte	0x12
	.4byte	0x836
	.byte	0x12
	.4byte	0x3f
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x8ac
	.byte	0x14
	.4byte	0x81
	.4byte	0x8e0
	.byte	0x12
	.4byte	0x693
	.byte	0x12
	.4byte	0x14b
	.byte	0x12
	.4byte	0x8e0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x2d1
	.byte	0x6
	.byte	0x4
	.4byte	0x8c7
	.byte	0x16
	.4byte	.LASF139
	.byte	0x10
	.byte	0x15
	.byte	0x1e
	.4byte	0x445
	.byte	0xc
	.byte	0x8
	.byte	0xc
	.byte	0x8
	.byte	0x9
	.4byte	0x91c
	.byte	0x9
	.4byte	.LASF110
	.byte	0xc
	.byte	0x9
	.byte	0xb
	.4byte	0x91c
	.byte	0
	.byte	0x9
	.4byte	.LASF111
	.byte	0xc
	.byte	0xa
	.byte	0xe
	.4byte	0x67
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF112
	.byte	0x3
	.4byte	.LASF113
	.byte	0xc
	.byte	0xb
	.byte	0x3
	.4byte	0x8f8
	.byte	0xc
	.byte	0x10
	.byte	0xc
	.byte	0xd
	.byte	0x9
	.4byte	0x960
	.byte	0x9
	.4byte	.LASF114
	.byte	0xc
	.byte	0xe
	.byte	0xd
	.4byte	0x4d
	.byte	0
	.byte	0x9
	.4byte	.LASF115
	.byte	0xc
	.byte	0xf
	.byte	0x12
	.4byte	0x923
	.byte	0x4
	.byte	0x9
	.4byte	.LASF116
	.byte	0xc
	.byte	0x10
	.byte	0xb
	.4byte	0x12b
	.byte	0xc
	.byte	0
	.byte	0x3
	.4byte	.LASF117
	.byte	0xc
	.byte	0x11
	.byte	0x3
	.4byte	0x92f
	.byte	0x17
	.4byte	0x8ec
	.byte	0x1
	.byte	0xc
	.byte	0x17
	.byte	0x5
	.byte	0x3
	.4byte	pwm_ops
	.byte	0x18
	.4byte	.LASF120
	.byte	0x1
	.byte	0x4c
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0xb5b
	.byte	0x19
	.string	"fp"
	.byte	0x1
	.byte	0x4c
	.byte	0x1b
	.4byte	0x693
	.4byte	.LLST6
	.byte	0x19
	.string	"cmd"
	.byte	0x1
	.byte	0x4c
	.byte	0x23
	.4byte	0x81
	.4byte	.LLST7
	.byte	0x19
	.string	"arg"
	.byte	0x1
	.byte	0x4c
	.byte	0x36
	.4byte	0x73
	.4byte	.LLST8
	.byte	0x1a
	.string	"ret"
	.byte	0x1
	.byte	0x4e
	.byte	0x9
	.4byte	0x81
	.4byte	.LLST9
	.byte	0x1b
	.4byte	.LASF118
	.byte	0x1
	.byte	0x4f
	.byte	0x10
	.4byte	0xb5b
	.4byte	.LLST10
	.byte	0x1b
	.4byte	.LASF119
	.byte	0x1
	.byte	0x50
	.byte	0xb
	.4byte	0x91c
	.4byte	.LLST11
	.byte	0x1b
	.4byte	.LASF111
	.byte	0x1
	.byte	0x51
	.byte	0xd
	.4byte	0x33
	.4byte	.LLST12
	.byte	0x1c
	.4byte	.LVL16
	.4byte	0xc14
	.byte	0x1c
	.4byte	.LVL17
	.4byte	0xc20
	.byte	0x1d
	.4byte	.LVL18
	.4byte	0xc2d
	.4byte	0xa44
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x1e
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x1e
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x68
	.byte	0
	.byte	0x1f
	.4byte	.LVL21
	.4byte	0xc39
	.byte	0x1c
	.4byte	.LVL22
	.4byte	0xc14
	.byte	0x1c
	.4byte	.LVL23
	.4byte	0xc20
	.byte	0x1d
	.4byte	.LVL24
	.4byte	0xc2d
	.4byte	0xa8e
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x1e
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x1e
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x78
	.byte	0
	.byte	0x1f
	.4byte	.LVL28
	.4byte	0xc45
	.byte	0x1d
	.4byte	.LVL30
	.4byte	0xc51
	.4byte	0xaab
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LVL32
	.4byte	0xc14
	.byte	0x1c
	.4byte	.LVL33
	.4byte	0xc20
	.byte	0x1d
	.4byte	.LVL34
	.4byte	0xc2d
	.4byte	0xaec
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x1e
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x1e
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x63
	.byte	0
	.byte	0x1c
	.4byte	.LVL35
	.4byte	0xc5d
	.byte	0x1c
	.4byte	.LVL37
	.4byte	0xc5d
	.byte	0x1c
	.4byte	.LVL39
	.4byte	0xc14
	.byte	0x1c
	.4byte	.LVL40
	.4byte	0xc20
	.byte	0x1d
	.4byte	.LVL41
	.4byte	0xc2d
	.4byte	0xb3f
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x1e
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x1e
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x6e
	.byte	0
	.byte	0x1f
	.4byte	.LVL45
	.4byte	0xc6a
	.byte	0x1c
	.4byte	.LVL46
	.4byte	0xc5d
	.byte	0x1c
	.4byte	.LVL47
	.4byte	0xc5d
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x960
	.byte	0x18
	.4byte	.LASF121
	.byte	0x1
	.byte	0x2d
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0xbb4
	.byte	0x19
	.string	"fp"
	.byte	0x1
	.byte	0x2d
	.byte	0x1b
	.4byte	0x693
	.4byte	.LLST3
	.byte	0x1a
	.string	"ret"
	.byte	0x1
	.byte	0x2f
	.byte	0x9
	.4byte	0x81
	.4byte	.LLST4
	.byte	0x1b
	.4byte	.LASF118
	.byte	0x1
	.byte	0x30
	.byte	0x10
	.4byte	0xb5b
	.4byte	.LLST5
	.byte	0x1f
	.4byte	.LVL8
	.4byte	0xc76
	.byte	0
	.byte	0x18
	.4byte	.LASF122
	.byte	0x1
	.byte	0x13
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0xc14
	.byte	0x20
	.4byte	.LASF123
	.byte	0x1
	.byte	0x13
	.byte	0x1b
	.4byte	0x640
	.4byte	.LLST0
	.byte	0x19
	.string	"fp"
	.byte	0x1
	.byte	0x13
	.byte	0x2a
	.4byte	0x693
	.4byte	.LLST1
	.byte	0x21
	.string	"ret"
	.byte	0x1
	.byte	0x15
	.byte	0x9
	.4byte	0x81
	.byte	0x7f
	.byte	0x1b
	.4byte	.LASF118
	.byte	0x1
	.byte	0x16
	.byte	0x10
	.4byte	0xb5b
	.4byte	.LLST2
	.byte	0x1f
	.4byte	.LVL3
	.4byte	0xc82
	.byte	0
	.byte	0x22
	.4byte	.LASF124
	.4byte	.LASF124
	.byte	0xd
	.byte	0x98
	.byte	0xc
	.byte	0x23
	.4byte	.LASF125
	.4byte	.LASF125
	.byte	0xe
	.2byte	0x558
	.byte	0xc
	.byte	0x22
	.4byte	.LASF126
	.4byte	.LASF126
	.byte	0xf
	.byte	0x81
	.byte	0x6
	.byte	0x22
	.4byte	.LASF127
	.4byte	.LASF127
	.byte	0xc
	.byte	0x2d
	.byte	0x9
	.byte	0x22
	.4byte	.LASF128
	.4byte	.LASF128
	.byte	0xc
	.byte	0x3a
	.byte	0x9
	.byte	0x22
	.4byte	.LASF129
	.4byte	.LASF129
	.byte	0xc
	.byte	0x24
	.byte	0x9
	.byte	0x23
	.4byte	.LASF130
	.4byte	.LASF130
	.byte	0xe
	.2byte	0x547
	.byte	0xc
	.byte	0x22
	.4byte	.LASF131
	.4byte	.LASF131
	.byte	0xc
	.byte	0x39
	.byte	0x9
	.byte	0x22
	.4byte	.LASF132
	.4byte	.LASF132
	.byte	0xc
	.byte	0x42
	.byte	0x9
	.byte	0x22
	.4byte	.LASF133
	.4byte	.LASF133
	.byte	0xc
	.byte	0x1b
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
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xc
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
	.byte	0xd
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
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
	.byte	0x26
	.byte	0
	.byte	0
	.byte	0
	.byte	0x16
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
	.byte	0x17
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
	.byte	0x19
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
	.byte	0x1a
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
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1d
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
	.byte	0x1e
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1f
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
	.byte	0x1c
	.byte	0xd
	.byte	0
	.byte	0
	.byte	0x22
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
	.byte	0x23
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
.LLST6:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL16-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16-1
	.4byte	.LVL21
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL22-1
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL29
	.4byte	.LVL38
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL39-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL16-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL16-1
	.4byte	.LVL21
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL22-1
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL30-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL30-1
	.4byte	.LVL38
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL39-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL15
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL31
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL31
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL36
	.4byte	.LFE6
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL20
	.4byte	.LVL21-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL44
	.4byte	.LVL45-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL45
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL10
	.4byte	.LVL42
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x78
	.byte	0
	.4byte	.LVL43
	.4byte	.LVL45-1
	.2byte	0x2
	.byte	0x90
	.byte	0x2a
	.4byte	.LVL45
	.4byte	.LFE6
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL10
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x78
	.byte	0
	.4byte	.LVL26
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL28
	.4byte	.LFE6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3-1
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x2
	.byte	0x7f
	.byte	0x4
	.4byte	.LVL3
	.4byte	.LFE4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
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
.LASF69:
	.string	"aos_dirent_t"
.LASF103:
	.string	"inode_t"
.LASF72:
	.string	"aos_dir_t"
.LASF11:
	.string	"unsigned int"
.LASF53:
	.string	"st_blksize"
.LASF102:
	.string	"refs"
.LASF87:
	.string	"opendir"
.LASF81:
	.string	"sync"
.LASF25:
	.string	"__nlink_t"
.LASF63:
	.string	"f_ffree"
.LASF99:
	.string	"i_name"
.LASF120:
	.string	"vfs_pwm_ioctl"
.LASF68:
	.string	"d_name"
.LASF134:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF21:
	.string	"__ino_t"
.LASF32:
	.string	"ino_t"
.LASF8:
	.string	"uint32_t"
.LASF93:
	.string	"telldir"
.LASF98:
	.string	"i_arg"
.LASF118:
	.string	"pwm_dev"
.LASF85:
	.string	"unlink"
.LASF10:
	.string	"long long unsigned int"
.LASF54:
	.string	"st_blocks"
.LASF125:
	.string	"xTaskGetTickCountFromISR"
.LASF106:
	.string	"offset"
.LASF117:
	.string	"pwm_dev_t"
.LASF105:
	.string	"f_arg"
.LASF126:
	.string	"bl_printk"
.LASF97:
	.string	"i_fops"
.LASF41:
	.string	"stat"
.LASF121:
	.string	"vfs_pwm_close"
.LASF42:
	.string	"st_dev"
.LASF139:
	.string	"pwm_ops"
.LASF29:
	.string	"tv_nsec"
.LASF14:
	.string	"size_t"
.LASF127:
	.string	"hal_pwm_stop_bydev"
.LASF22:
	.string	"__mode_t"
.LASF67:
	.string	"d_type"
.LASF135:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/fs/vfs/device/vfs_pwm.c"
.LASF109:
	.string	"_Bool"
.LASF47:
	.string	"st_gid"
.LASF92:
	.string	"rewinddir"
.LASF44:
	.string	"st_mode"
.LASF90:
	.string	"mkdir"
.LASF110:
	.string	"duty_cycle"
.LASF107:
	.string	"file_t"
.LASF136:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/vfs"
.LASF45:
	.string	"st_nlink"
.LASF111:
	.string	"freq"
.LASF137:
	.string	"inode_ops_t"
.LASF129:
	.string	"hal_pwm_start_bydev"
.LASF79:
	.string	"ioctl"
.LASF119:
	.string	"duty"
.LASF80:
	.string	"poll"
.LASF116:
	.string	"priv"
.LASF40:
	.string	"timespec"
.LASF26:
	.string	"char"
.LASF30:
	.string	"blkcnt_t"
.LASF128:
	.string	"hal_pwm_set_freq_bydev"
.LASF108:
	.string	"poll_notify_t"
.LASF76:
	.string	"close"
.LASF37:
	.string	"ssize_t"
.LASF84:
	.string	"lseek"
.LASF5:
	.string	"uint8_t"
.LASF101:
	.string	"type"
.LASF27:
	.string	"time_t"
.LASF83:
	.string	"fs_ops"
.LASF56:
	.string	"statfs"
.LASF43:
	.string	"st_ino"
.LASF130:
	.string	"xTaskGetTickCount"
.LASF62:
	.string	"f_files"
.LASF3:
	.string	"long long int"
.LASF78:
	.string	"write"
.LASF57:
	.string	"f_type"
.LASF18:
	.string	"__dev_t"
.LASF122:
	.string	"vfs_pwm_open"
.LASF34:
	.string	"dev_t"
.LASF60:
	.string	"f_bfree"
.LASF74:
	.string	"file_ops"
.LASF73:
	.string	"file_ops_t"
.LASF138:
	.string	"pollfd"
.LASF61:
	.string	"f_bavail"
.LASF124:
	.string	"xPortIsInsideInterrupt"
.LASF64:
	.string	"f_fsid"
.LASF55:
	.string	"st_spare4"
.LASF95:
	.string	"access"
.LASF86:
	.string	"rename"
.LASF20:
	.string	"__gid_t"
.LASF59:
	.string	"f_blocks"
.LASF113:
	.string	"pwm_config_t"
.LASF36:
	.string	"gid_t"
.LASF13:
	.string	"__int_least64_t"
.LASF96:
	.string	"i_ops"
.LASF35:
	.string	"uid_t"
.LASF115:
	.string	"config"
.LASF91:
	.string	"rmdir"
.LASF89:
	.string	"closedir"
.LASF1:
	.string	"short int"
.LASF51:
	.string	"st_mtim"
.LASF100:
	.string	"i_flags"
.LASF2:
	.string	"long int"
.LASF104:
	.string	"node"
.LASF88:
	.string	"readdir"
.LASF65:
	.string	"f_namelen"
.LASF16:
	.string	"__blksize_t"
.LASF133:
	.string	"hal_pwm_init_bydev"
.LASF19:
	.string	"__uid_t"
.LASF50:
	.string	"st_atim"
.LASF77:
	.string	"read"
.LASF131:
	.string	"hal_pwm_set_duty_bydev"
.LASF70:
	.string	"dd_vfs_fd"
.LASF75:
	.string	"open"
.LASF28:
	.string	"tv_sec"
.LASF9:
	.string	"long unsigned int"
.LASF112:
	.string	"float"
.LASF4:
	.string	"int32_t"
.LASF114:
	.string	"port"
.LASF39:
	.string	"nlink_t"
.LASF58:
	.string	"f_bsize"
.LASF6:
	.string	"unsigned char"
.LASF12:
	.string	"__uint32_t"
.LASF31:
	.string	"blksize_t"
.LASF49:
	.string	"st_size"
.LASF66:
	.string	"d_ino"
.LASF46:
	.string	"st_uid"
.LASF23:
	.string	"__off_t"
.LASF52:
	.string	"st_ctim"
.LASF24:
	.string	"_ssize_t"
.LASF71:
	.string	"dd_rsv"
.LASF0:
	.string	"signed char"
.LASF38:
	.string	"mode_t"
.LASF132:
	.string	"hal_pwm_finalize_bydev"
.LASF33:
	.string	"off_t"
.LASF7:
	.string	"short unsigned int"
.LASF94:
	.string	"seekdir"
.LASF15:
	.string	"__blkcnt_t"
.LASF17:
	.string	"_off_t"
.LASF48:
	.string	"st_rdev"
.LASF82:
	.string	"fs_ops_t"
.LASF123:
	.string	"inode"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
