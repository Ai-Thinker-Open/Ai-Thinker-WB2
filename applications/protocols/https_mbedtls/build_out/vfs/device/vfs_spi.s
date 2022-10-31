	.file	"vfs_spi.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.vfs_spi_open,"ax",@progbits
	.align	1
	.globl	vfs_spi_open
	.type	vfs_spi_open, @function
vfs_spi_open:
.LFB4:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/fs/vfs/device/vfs_spi.c"
	.loc 1 12 1
	.cfi_startproc
.LVL0:
	.loc 1 13 5
	.loc 1 14 5
	.loc 1 17 5
	.loc 1 17 8 is_stmt 0
	beq	a1,zero,.L4
	.loc 1 17 27 discriminator 1
	lw	a5,0(a1)
	.loc 1 17 21 discriminator 1
	beq	a5,zero,.L4
	.loc 1 20 9 is_stmt 1
	.loc 1 20 12 is_stmt 0
	lbu	a3,17(a5)
	li	a4,1
	.loc 1 28 17
	li	a0,0
.LVL1:
	.loc 1 20 12
	bne	a3,a4,.L1
	.loc 1 23 13 is_stmt 1
.LVL2:
	.loc 1 26 13
	.loc 1 26 19 is_stmt 0
	lw	a0,4(a5)
	tail	hal_spi_init
.LVL3:
.L4:
	.loc 1 31 13
	li	a0,-22
.LVL4:
.L1:
	.loc 1 35 1
	ret
	.cfi_endproc
.LFE4:
	.size	vfs_spi_open, .-vfs_spi_open
	.section	.text.vfs_spi_close,"ax",@progbits
	.align	1
	.globl	vfs_spi_close
	.type	vfs_spi_close, @function
vfs_spi_close:
.LFB5:
	.loc 1 38 1 is_stmt 1
	.cfi_startproc
.LVL5:
	.loc 1 39 5
	.loc 1 40 5
	.loc 1 43 5
	.loc 1 43 8 is_stmt 0
	beq	a0,zero,.L11
	.loc 1 43 27 discriminator 1
	lw	a5,0(a0)
	.loc 1 43 21 discriminator 1
	beq	a5,zero,.L11
	.loc 1 46 9 is_stmt 1
	.loc 1 46 12 is_stmt 0
	lbu	a3,17(a5)
	li	a4,1
	.loc 1 59 17
	li	a0,0
.LVL6:
	.loc 1 46 12
	bne	a3,a4,.L6
	.loc 1 49 13 is_stmt 1
	.loc 1 49 21 is_stmt 0
	lw	a0,4(a5)
.LVL7:
	.loc 1 51 13 is_stmt 1
	.loc 1 51 16 is_stmt 0
	beq	a0,zero,.L11
	.loc 1 54 17 is_stmt 1
	.loc 1 54 23 is_stmt 0
	tail	hal_spi_finalize
.LVL8:
.L11:
	.loc 1 62 13
	li	a0,-22
.LVL9:
	.loc 1 65 5 is_stmt 1
.L6:
	.loc 1 66 1 is_stmt 0
	ret
	.cfi_endproc
.LFE5:
	.size	vfs_spi_close, .-vfs_spi_close
	.section	.text.vfs_spi_read,"ax",@progbits
	.align	1
	.globl	vfs_spi_read
	.type	vfs_spi_read, @function
vfs_spi_read:
.LFB6:
	.loc 1 69 1 is_stmt 1
	.cfi_startproc
.LVL10:
	.loc 1 70 5
	.loc 1 71 5
	.loc 1 74 5
	.loc 1 74 8 is_stmt 0
	beq	a0,zero,.L14
	.loc 1 74 27 discriminator 1
	lw	a5,0(a0)
	.loc 1 93 13 discriminator 1
	li	a0,-22
.LVL11:
	.loc 1 74 21 discriminator 1
	beq	a5,zero,.L18
	.loc 1 77 9 is_stmt 1
	.loc 1 77 17 is_stmt 0
	lw	a5,4(a5)
.LVL12:
	.loc 1 79 9 is_stmt 1
	.loc 1 79 12 is_stmt 0
	beq	a5,zero,.L18
	.loc 1 69 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	mv	s0,a2
	.loc 1 82 13 is_stmt 1
	.loc 1 82 19 is_stmt 0
	slli	a2,a2,16
.LVL13:
	li	a3,-1
	srli	a2,a2,16
	mv	a0,a5
	.loc 1 69 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 82 19
	call	hal_spi_recv
.LVL14:
	.loc 1 86 13 is_stmt 1
	.loc 1 86 16 is_stmt 0
	bne	a0,zero,.L12
	.loc 1 87 17 is_stmt 1
	.loc 1 87 21 is_stmt 0
	mv	a0,s0
.LVL15:
.L12:
	.loc 1 97 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL16:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL17:
.L14:
	.loc 1 93 13
	li	a0,-22
.LVL18:
	ret
.LVL19:
.L18:
	.loc 1 97 1
	ret
	.cfi_endproc
.LFE6:
	.size	vfs_spi_read, .-vfs_spi_read
	.section	.text.vfs_spi_write,"ax",@progbits
	.align	1
	.globl	vfs_spi_write
	.type	vfs_spi_write, @function
vfs_spi_write:
.LFB7:
	.loc 1 100 1 is_stmt 1
	.cfi_startproc
.LVL20:
	.loc 1 101 5
	.loc 1 102 5
	.loc 1 105 5
	.loc 1 105 8 is_stmt 0
	beq	a0,zero,.L23
	.loc 1 105 27 discriminator 1
	lw	a5,0(a0)
	.loc 1 124 13 discriminator 1
	li	a0,-22
.LVL21:
	.loc 1 105 21 discriminator 1
	beq	a5,zero,.L27
	.loc 1 108 9 is_stmt 1
	.loc 1 108 17 is_stmt 0
	lw	a5,4(a5)
.LVL22:
	.loc 1 110 9 is_stmt 1
	.loc 1 110 12 is_stmt 0
	beq	a5,zero,.L27
	.loc 1 100 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	mv	s0,a2
	.loc 1 113 13 is_stmt 1
	.loc 1 113 19 is_stmt 0
	slli	a2,a2,16
.LVL23:
	li	a3,-1
	srli	a2,a2,16
	mv	a0,a5
	.loc 1 100 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 113 19
	call	hal_spi_send
.LVL24:
	.loc 1 117 13 is_stmt 1
	.loc 1 117 16 is_stmt 0
	bne	a0,zero,.L21
	.loc 1 118 17 is_stmt 1
	.loc 1 118 21 is_stmt 0
	mv	a0,s0
.LVL25:
.L21:
	.loc 1 128 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL26:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL27:
.L23:
	.loc 1 124 13
	li	a0,-22
.LVL28:
	ret
.LVL29:
.L27:
	.loc 1 128 1
	ret
	.cfi_endproc
.LFE7:
	.size	vfs_spi_write, .-vfs_spi_write
	.section	.rodata.vfs_spi_ioctl.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"vfs_spi.c"
	.align	2
.LC1:
	.string	"INFO  "
	.align	2
.LC2:
	.string	"[%10u][%s: %s:%4d] IOCTL_SPI_IOC_WR_MODE.\r\n"
	.align	2
.LC3:
	.string	"[%10u][%s: %s:%4d] IOCTL_SPI_IOC_WR_MAX_SPEED_HZ.\r\n"
	.align	2
.LC4:
	.string	"ERROR "
	.align	2
.LC5:
	.string	"[%10u][%s: %s:%4d] NOT SUPPORT, IOCTL_SPI_IOC_WR_MODE32.\r\n"
	.align	2
.LC6:
	.string	"[%10u][%s: %s:%4d] IOCTL_SPI_IOC_MESSAGE_1.\r\n"
	.align	2
.LC7:
	.string	"[%10u][%s: %s:%4d] IOCTL_SPI_IOC_MESSAGE_2.\r\n"
	.section	.text.vfs_spi_ioctl,"ax",@progbits
	.align	1
	.globl	vfs_spi_ioctl
	.type	vfs_spi_ioctl, @function
vfs_spi_ioctl:
.LFB8:
	.loc 1 131 1 is_stmt 1
	.cfi_startproc
.LVL30:
	.loc 1 132 5
	.loc 1 133 5
	.loc 1 134 5
	.loc 1 137 5
	.loc 1 137 8 is_stmt 0
	beq	a0,zero,.L49
	.loc 1 137 27 discriminator 1
	lw	a5,0(a0)
	.loc 1 137 21 discriminator 1
	beq	a5,zero,.L49
	.loc 1 142 5 is_stmt 1
	.loc 1 131 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	s2,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.loc 1 142 13
	lw	s1,4(a5)
.LVL31:
	.loc 1 144 5 is_stmt 1
	.loc 1 144 8 is_stmt 0
	beq	s1,zero,.L51
	.loc 1 148 5 is_stmt 1
	li	a5,11
	bgtu	a1,a5,.L51
	lui	a5,%hi(.L33)
	slli	a1,a1,2
.LVL32:
	addi	a5,a5,%lo(.L33)
	add	a5,a1,a5
	lw	a5,0(a5)
	mv	s0,a2
	lui	s2,%hi(.LC0)
	jr	a5
	.section	.rodata.vfs_spi_ioctl,"a",@progbits
	.align	2
	.align	2
.L33:
	.word	.L37
	.word	.L37
	.word	.L35
	.word	.L35
	.word	.L35
	.word	.L35
	.word	.L36
	.word	.L36
	.word	.L35
	.word	.L35
	.word	.L34
	.word	.L32
	.section	.text.vfs_spi_ioctl
.L37:
	.loc 1 152 13
	.loc 1 152 18
	.loc 1 152 20
	.loc 1 152 83 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL33:
	.loc 1 152 20
	beq	a0,zero,.L38
	.loc 1 152 110 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL34:
.L56:
	.loc 1 152 139 discriminator 2
	mv	a1,a0
	.loc 1 152 20 discriminator 2
	lui	a2,%hi(.LC1)
	lui	a0,%hi(.LC2)
	addi	a3,s2,%lo(.LC0)
	addi	a0,a0,%lo(.LC2)
	li	a4,152
	addi	a2,a2,%lo(.LC1)
	call	bl_printk
.LVL35:
	.loc 1 152 190 is_stmt 1 discriminator 2
	.loc 1 152 199 discriminator 2
	.loc 1 153 13 discriminator 2
	.loc 1 153 19 is_stmt 0 discriminator 2
	lw	a1,0(s0)
	.loc 1 192 1 discriminator 2
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL36:
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s2,0(sp)
	.cfi_restore 18
	.loc 1 153 19 discriminator 2
	mv	a0,s1
	.loc 1 192 1 discriminator 2
	lw	s1,4(sp)
	.cfi_restore 9
.LVL37:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 153 19 discriminator 2
	tail	hal_spi_set_rwmode
.LVL38:
.L38:
	.cfi_restore_state
	.loc 1 152 139 discriminator 2
	call	xTaskGetTickCount
.LVL39:
	j	.L56
.LVL40:
.L36:
	.loc 1 159 13 is_stmt 1
	.loc 1 159 18
	.loc 1 159 20
	.loc 1 159 91 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL41:
	.loc 1 159 20
	beq	a0,zero,.L40
	.loc 1 159 118 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL42:
.L57:
	.loc 1 159 147 discriminator 2
	mv	a1,a0
	.loc 1 159 20 discriminator 2
	lui	a2,%hi(.LC1)
	lui	a0,%hi(.LC3)
	addi	a3,s2,%lo(.LC0)
	addi	a0,a0,%lo(.LC3)
	li	a4,159
	addi	a2,a2,%lo(.LC1)
	call	bl_printk
.LVL43:
	.loc 1 159 198 is_stmt 1 discriminator 2
	.loc 1 159 207 discriminator 2
	.loc 1 160 13 discriminator 2
	.loc 1 160 19 is_stmt 0 discriminator 2
	lw	a1,0(s0)
	.loc 1 192 1 discriminator 2
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL44:
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s2,0(sp)
	.cfi_restore 18
	.loc 1 160 19 discriminator 2
	mv	a0,s1
	.loc 1 192 1 discriminator 2
	lw	s1,4(sp)
	.cfi_restore 9
.LVL45:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 160 19 discriminator 2
	tail	hal_spi_set_rwspeed
.LVL46:
.L40:
	.cfi_restore_state
	.loc 1 159 147 discriminator 2
	call	xTaskGetTickCount
.LVL47:
	j	.L57
.LVL48:
.L35:
	.loc 1 170 13 is_stmt 1
	.loc 1 170 18
	.loc 1 170 20
	.loc 1 170 98 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL49:
	.loc 1 170 20
	beq	a0,zero,.L42
	.loc 1 170 125 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL50:
.L58:
	.loc 1 170 154 discriminator 2
	mv	a1,a0
	.loc 1 170 20 discriminator 2
	lui	a2,%hi(.LC4)
	lui	a0,%hi(.LC5)
	addi	a0,a0,%lo(.LC5)
	li	a4,170
	addi	a3,s2,%lo(.LC0)
	addi	a2,a2,%lo(.LC4)
	call	bl_printk
.LVL51:
	.loc 1 170 205 is_stmt 1 discriminator 2
	.loc 1 170 214 discriminator 2
	.loc 1 172 9 discriminator 2
	.loc 1 132 9 is_stmt 0 discriminator 2
	li	a0,-1
.LVL52:
.L30:
	.loc 1 192 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
.LVL53:
	lw	s2,0(sp)
	.cfi_restore 18
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL54:
.L42:
	.cfi_restore_state
	.loc 1 170 154 discriminator 2
	call	xTaskGetTickCount
.LVL55:
	j	.L58
.LVL56:
.L34:
	.loc 1 175 13 is_stmt 1
	.loc 1 175 18
	.loc 1 175 20
	.loc 1 175 85 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL57:
	.loc 1 175 20
	beq	a0,zero,.L44
	.loc 1 175 112 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL58:
.L59:
	.loc 1 175 141 discriminator 2
	mv	a1,a0
	.loc 1 175 20 discriminator 2
	lui	a2,%hi(.LC1)
	lui	a0,%hi(.LC6)
	addi	a2,a2,%lo(.LC1)
	li	a4,175
	addi	a3,s2,%lo(.LC0)
	addi	a0,a0,%lo(.LC6)
	call	bl_printk
.LVL59:
	.loc 1 175 192 is_stmt 1 discriminator 2
	.loc 1 175 201 discriminator 2
	.loc 1 176 13 discriminator 2
	.loc 1 176 19 is_stmt 0 discriminator 2
	li	a2,1
.L61:
	.loc 1 182 19 discriminator 4
	mv	a1,s0
	.loc 1 192 1 discriminator 4
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL60:
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s2,0(sp)
	.cfi_restore 18
	.loc 1 182 19 discriminator 4
	mv	a0,s1
	.loc 1 192 1 discriminator 4
	lw	s1,4(sp)
	.cfi_restore 9
.LVL61:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 182 19 discriminator 4
	tail	hal_spi_transfer
.LVL62:
.L44:
	.cfi_restore_state
	.loc 1 175 141 discriminator 2
	call	xTaskGetTickCount
.LVL63:
	j	.L59
.LVL64:
.L32:
	.loc 1 181 13 is_stmt 1
	.loc 1 181 18
	.loc 1 181 20
	.loc 1 181 85 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL65:
	.loc 1 181 20
	beq	a0,zero,.L46
	.loc 1 181 112 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL66:
.L60:
	.loc 1 181 141 discriminator 2
	mv	a1,a0
	.loc 1 181 20 discriminator 2
	lui	a2,%hi(.LC1)
	lui	a0,%hi(.LC7)
	addi	a2,a2,%lo(.LC1)
	li	a4,181
	addi	a3,s2,%lo(.LC0)
	addi	a0,a0,%lo(.LC7)
	call	bl_printk
.LVL67:
	.loc 1 181 192 is_stmt 1 discriminator 2
	.loc 1 181 201 discriminator 2
	.loc 1 182 13 discriminator 2
	.loc 1 182 19 is_stmt 0 discriminator 2
	li	a2,2
	j	.L61
.L46:
	.loc 1 181 141 discriminator 2
	call	xTaskGetTickCount
.LVL68:
	j	.L60
.LVL69:
.L49:
	.cfi_def_cfa_offset 0
	.cfi_restore 1
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 18
	.loc 1 138 16
	li	a0,-22
.LVL70:
	.loc 1 192 1
	ret
.LVL71:
.L51:
	.cfi_def_cfa_offset 16
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.loc 1 144 8
	li	a0,-22
.LVL72:
	j	.L30
	.cfi_endproc
.LFE8:
	.size	vfs_spi_ioctl, .-vfs_spi_ioctl
	.globl	spi_ops
	.section	.rodata.spi_ops,"a"
	.align	2
	.type	spi_ops, @object
	.size	spi_ops, 28
spi_ops:
	.word	vfs_spi_open
	.word	vfs_spi_close
	.word	vfs_spi_read
	.word	vfs_spi_write
	.word	vfs_spi_ioctl
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
	.file 12 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/fs/vfs/include/device/vfs_spi.h"
	.file 13 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/fs/vfs/include/hal/soc/spi.h"
	.file 14 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 15 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 16 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xe9b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF150
	.byte	0xc
	.4byte	.LASF151
	.4byte	.LASF152
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
	.4byte	0x4d
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x60
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
	.4byte	0x3a
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
	.4byte	0x33
	.byte	0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0x22
	.byte	0xe
	.4byte	0x33
	.byte	0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0x2e
	.byte	0xe
	.4byte	0x33
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
	.4byte	0x33
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
	.4byte	0x33
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
	.4byte	0x33
	.byte	0
	.byte	0x9
	.4byte	.LASF58
	.byte	0xa
	.byte	0x6
	.byte	0xa
	.4byte	0x33
	.byte	0x4
	.byte	0x9
	.4byte	.LASF59
	.byte	0xa
	.byte	0x7
	.byte	0xa
	.4byte	0x33
	.byte	0x8
	.byte	0x9
	.4byte	.LASF60
	.byte	0xa
	.byte	0x8
	.byte	0xa
	.4byte	0x33
	.byte	0xc
	.byte	0x9
	.4byte	.LASF61
	.byte	0xa
	.byte	0x9
	.byte	0xa
	.4byte	0x33
	.byte	0x10
	.byte	0x9
	.4byte	.LASF62
	.byte	0xa
	.byte	0xa
	.byte	0xa
	.4byte	0x33
	.byte	0x14
	.byte	0x9
	.4byte	.LASF63
	.byte	0xa
	.byte	0xb
	.byte	0xa
	.4byte	0x33
	.byte	0x18
	.byte	0x9
	.4byte	.LASF64
	.byte	0xa
	.byte	0xc
	.byte	0xa
	.4byte	0x33
	.byte	0x1c
	.byte	0x9
	.4byte	.LASF65
	.byte	0xa
	.byte	0xd
	.byte	0xa
	.4byte	0x33
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
	.4byte	0x41
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
	.4byte	.LASF153
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
	.4byte	0x41
	.byte	0x10
	.byte	0x9
	.4byte	.LASF102
	.byte	0xb
	.byte	0x3b
	.byte	0xd
	.4byte	0x41
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
	.4byte	.LASF154
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
	.4byte	0x33
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
	.4byte	0x33
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
	.byte	0x8
	.4byte	.LASF110
	.byte	0x1c
	.byte	0xc
	.byte	0x29
	.byte	0x10
	.4byte	0x996
	.byte	0x9
	.4byte	.LASF111
	.byte	0xc
	.byte	0x2a
	.byte	0xe
	.4byte	0x67
	.byte	0
	.byte	0x9
	.4byte	.LASF112
	.byte	0xc
	.byte	0x2b
	.byte	0xe
	.4byte	0x67
	.byte	0x4
	.byte	0x10
	.string	"len"
	.byte	0xc
	.byte	0x2c
	.byte	0xe
	.4byte	0x67
	.byte	0x8
	.byte	0x9
	.4byte	.LASF113
	.byte	0xc
	.byte	0x2d
	.byte	0xe
	.4byte	0x67
	.byte	0xc
	.byte	0x9
	.4byte	.LASF114
	.byte	0xc
	.byte	0x2e
	.byte	0xe
	.4byte	0x54
	.byte	0x10
	.byte	0x9
	.4byte	.LASF115
	.byte	0xc
	.byte	0x2f
	.byte	0xe
	.4byte	0x54
	.byte	0x12
	.byte	0x9
	.4byte	.LASF116
	.byte	0xc
	.byte	0x30
	.byte	0xd
	.4byte	0x41
	.byte	0x14
	.byte	0x9
	.4byte	.LASF117
	.byte	0xc
	.byte	0x31
	.byte	0xd
	.4byte	0x41
	.byte	0x15
	.byte	0x9
	.4byte	.LASF118
	.byte	0xc
	.byte	0x32
	.byte	0xd
	.4byte	0x41
	.byte	0x16
	.byte	0x9
	.4byte	.LASF119
	.byte	0xc
	.byte	0x33
	.byte	0xd
	.4byte	0x41
	.byte	0x17
	.byte	0x9
	.4byte	.LASF120
	.byte	0xc
	.byte	0x34
	.byte	0xd
	.4byte	0x41
	.byte	0x18
	.byte	0x10
	.string	"pad"
	.byte	0xc
	.byte	0x35
	.byte	0xd
	.4byte	0x41
	.byte	0x19
	.byte	0
	.byte	0x3
	.4byte	.LASF121
	.byte	0xc
	.byte	0x36
	.byte	0x3
	.4byte	0x8ec
	.byte	0x16
	.4byte	.LASF155
	.byte	0xc
	.byte	0x39
	.byte	0x1e
	.4byte	0x445
	.byte	0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF122
	.byte	0xc
	.byte	0x8
	.byte	0xd
	.byte	0xb
	.byte	0x9
	.4byte	0x9d9
	.byte	0x9
	.4byte	.LASF123
	.byte	0xd
	.byte	0xc
	.byte	0xd
	.4byte	0x41
	.byte	0
	.byte	0x9
	.4byte	.LASF124
	.byte	0xd
	.byte	0xd
	.byte	0xe
	.4byte	0x67
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF125
	.byte	0xd
	.byte	0xe
	.byte	0x3
	.4byte	0x9b5
	.byte	0xc
	.byte	0x10
	.byte	0xd
	.byte	0x10
	.byte	0x9
	.4byte	0xa16
	.byte	0x9
	.4byte	.LASF126
	.byte	0xd
	.byte	0x11
	.byte	0xd
	.4byte	0x41
	.byte	0
	.byte	0x9
	.4byte	.LASF127
	.byte	0xd
	.byte	0x12
	.byte	0x12
	.4byte	0x9d9
	.byte	0x4
	.byte	0x9
	.4byte	.LASF128
	.byte	0xd
	.byte	0x13
	.byte	0xb
	.4byte	0x12b
	.byte	0xc
	.byte	0
	.byte	0x3
	.4byte	.LASF129
	.byte	0xd
	.byte	0x14
	.byte	0x3
	.4byte	0x9e5
	.byte	0x17
	.4byte	0x9a2
	.byte	0x1
	.byte	0xc3
	.byte	0x17
	.byte	0x5
	.byte	0x3
	.4byte	spi_ops
	.byte	0x18
	.4byte	.LASF132
	.byte	0x1
	.byte	0x82
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0xc43
	.byte	0x19
	.string	"fp"
	.byte	0x1
	.byte	0x82
	.byte	0x1b
	.4byte	0x693
	.4byte	.LLST16
	.byte	0x19
	.string	"cmd"
	.byte	0x1
	.byte	0x82
	.byte	0x23
	.4byte	0x81
	.4byte	.LLST17
	.byte	0x19
	.string	"arg"
	.byte	0x1
	.byte	0x82
	.byte	0x36
	.4byte	0x73
	.4byte	.LLST18
	.byte	0x1a
	.string	"ret"
	.byte	0x1
	.byte	0x84
	.byte	0x9
	.4byte	0x81
	.4byte	.LLST19
	.byte	0x1b
	.4byte	.LASF130
	.byte	0x1
	.byte	0x85
	.byte	0x10
	.4byte	0xc43
	.4byte	.LLST20
	.byte	0x1b
	.4byte	.LASF131
	.byte	0x1
	.byte	0x86
	.byte	0x19
	.4byte	0xc49
	.4byte	.LLST21
	.byte	0x1c
	.4byte	.LVL33
	.4byte	0xe18
	.byte	0x1c
	.4byte	.LVL34
	.4byte	0xe24
	.byte	0x1d
	.4byte	.LVL35
	.4byte	0xe31
	.4byte	0xaea
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
	.byte	0x98
	.byte	0
	.byte	0x1f
	.4byte	.LVL38
	.4byte	0xe3d
	.byte	0x1c
	.4byte	.LVL39
	.4byte	0xe49
	.byte	0x1c
	.4byte	.LVL41
	.4byte	0xe18
	.byte	0x1c
	.4byte	.LVL42
	.4byte	0xe24
	.byte	0x1d
	.4byte	.LVL43
	.4byte	0xe31
	.4byte	0xb3d
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
	.byte	0x9f
	.byte	0
	.byte	0x1f
	.4byte	.LVL46
	.4byte	0xe56
	.byte	0x1c
	.4byte	.LVL47
	.4byte	0xe49
	.byte	0x1c
	.4byte	.LVL49
	.4byte	0xe18
	.byte	0x1c
	.4byte	.LVL50
	.4byte	0xe24
	.byte	0x1d
	.4byte	.LVL51
	.4byte	0xe31
	.4byte	0xb90
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
	.4byte	.LC4
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
	.byte	0xaa
	.byte	0
	.byte	0x1c
	.4byte	.LVL55
	.4byte	0xe49
	.byte	0x1c
	.4byte	.LVL57
	.4byte	0xe18
	.byte	0x1c
	.4byte	.LVL58
	.4byte	0xe24
	.byte	0x1d
	.4byte	.LVL59
	.4byte	0xe31
	.4byte	0xbda
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
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
	.byte	0xaf
	.byte	0
	.byte	0x20
	.4byte	.LVL62
	.4byte	0xe62
	.4byte	0xbef
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0x1c
	.4byte	.LVL63
	.4byte	0xe49
	.byte	0x1c
	.4byte	.LVL65
	.4byte	0xe18
	.byte	0x1c
	.4byte	.LVL66
	.4byte	0xe24
	.byte	0x1d
	.4byte	.LVL67
	.4byte	0xe31
	.4byte	0xc39
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
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
	.byte	0xb5
	.byte	0
	.byte	0x1c
	.4byte	.LVL68
	.4byte	0xe49
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xa16
	.byte	0x6
	.byte	0x4
	.4byte	0x996
	.byte	0x18
	.4byte	.LASF133
	.byte	0x1
	.byte	0x63
	.byte	0x9
	.4byte	0x1d9
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0xcda
	.byte	0x19
	.string	"fp"
	.byte	0x1
	.byte	0x63
	.byte	0x1f
	.4byte	0x693
	.4byte	.LLST11
	.byte	0x19
	.string	"buf"
	.byte	0x1
	.byte	0x63
	.byte	0x2f
	.4byte	0x6ec
	.4byte	.LLST12
	.byte	0x21
	.4byte	.LASF134
	.byte	0x1
	.byte	0x63
	.byte	0x3b
	.4byte	0xa7
	.4byte	.LLST13
	.byte	0x1a
	.string	"ret"
	.byte	0x1
	.byte	0x65
	.byte	0x9
	.4byte	0x81
	.4byte	.LLST14
	.byte	0x1b
	.4byte	.LASF130
	.byte	0x1
	.byte	0x66
	.byte	0x10
	.4byte	0xc43
	.4byte	.LLST15
	.byte	0x22
	.4byte	.LVL24
	.4byte	0xe6e
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x6
	.byte	0x78
	.byte	0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0x1e
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LASF135
	.byte	0x1
	.byte	0x44
	.byte	0x9
	.4byte	0x1d9
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0xd65
	.byte	0x19
	.string	"fp"
	.byte	0x1
	.byte	0x44
	.byte	0x1e
	.4byte	0x693
	.4byte	.LLST6
	.byte	0x19
	.string	"buf"
	.byte	0x1
	.byte	0x44
	.byte	0x28
	.4byte	0x12b
	.4byte	.LLST7
	.byte	0x21
	.4byte	.LASF134
	.byte	0x1
	.byte	0x44
	.byte	0x34
	.4byte	0xa7
	.4byte	.LLST8
	.byte	0x1a
	.string	"ret"
	.byte	0x1
	.byte	0x46
	.byte	0x9
	.4byte	0x81
	.4byte	.LLST9
	.byte	0x1b
	.4byte	.LASF130
	.byte	0x1
	.byte	0x47
	.byte	0x10
	.4byte	0xc43
	.4byte	.LLST10
	.byte	0x22
	.4byte	.LVL14
	.4byte	0xe7a
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x6
	.byte	0x78
	.byte	0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0x1e
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LASF136
	.byte	0x1
	.byte	0x25
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0xdb8
	.byte	0x19
	.string	"fp"
	.byte	0x1
	.byte	0x25
	.byte	0x1b
	.4byte	0x693
	.4byte	.LLST3
	.byte	0x1a
	.string	"ret"
	.byte	0x1
	.byte	0x27
	.byte	0x9
	.4byte	0x81
	.4byte	.LLST4
	.byte	0x1b
	.4byte	.LASF130
	.byte	0x1
	.byte	0x28
	.byte	0x10
	.4byte	0xc43
	.4byte	.LLST5
	.byte	0x1f
	.4byte	.LVL8
	.4byte	0xe86
	.byte	0
	.byte	0x18
	.4byte	.LASF137
	.byte	0x1
	.byte	0xb
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0xe18
	.byte	0x21
	.4byte	.LASF138
	.byte	0x1
	.byte	0xb
	.byte	0x1b
	.4byte	0x640
	.4byte	.LLST0
	.byte	0x19
	.string	"fp"
	.byte	0x1
	.byte	0xb
	.byte	0x2a
	.4byte	0x693
	.4byte	.LLST1
	.byte	0x23
	.string	"ret"
	.byte	0x1
	.byte	0xd
	.byte	0x9
	.4byte	0x81
	.byte	0x7f
	.byte	0x1b
	.4byte	.LASF130
	.byte	0x1
	.byte	0xe
	.byte	0x10
	.4byte	0xc43
	.4byte	.LLST2
	.byte	0x1f
	.4byte	.LVL3
	.4byte	0xe92
	.byte	0
	.byte	0x24
	.4byte	.LASF139
	.4byte	.LASF139
	.byte	0xe
	.byte	0x98
	.byte	0xc
	.byte	0x25
	.4byte	.LASF140
	.4byte	.LASF140
	.byte	0xf
	.2byte	0x558
	.byte	0xc
	.byte	0x24
	.4byte	.LASF141
	.4byte	.LASF141
	.byte	0x10
	.byte	0x81
	.byte	0x6
	.byte	0x24
	.4byte	.LASF142
	.4byte	.LASF142
	.byte	0xd
	.byte	0x52
	.byte	0x5
	.byte	0x25
	.4byte	.LASF143
	.4byte	.LASF143
	.byte	0xf
	.2byte	0x547
	.byte	0xc
	.byte	0x24
	.4byte	.LASF144
	.4byte	.LASF144
	.byte	0xd
	.byte	0x53
	.byte	0x5
	.byte	0x24
	.4byte	.LASF145
	.4byte	.LASF145
	.byte	0xd
	.byte	0x54
	.byte	0x5
	.byte	0x24
	.4byte	.LASF146
	.4byte	.LASF146
	.byte	0xd
	.byte	0x2a
	.byte	0x9
	.byte	0x24
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0xd
	.byte	0x37
	.byte	0x9
	.byte	0x24
	.4byte	.LASF148
	.4byte	.LASF148
	.byte	0xd
	.byte	0x50
	.byte	0x9
	.byte	0x24
	.4byte	.LASF149
	.4byte	.LASF149
	.byte	0xd
	.byte	0x1d
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
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x23
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
	.byte	0x24
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST16:
	.4byte	.LVL30
	.4byte	.LVL33-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL33-1
	.4byte	.LVL40
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL41-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL41-1
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL49-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL49-1
	.4byte	.LVL56
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL57-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL57-1
	.4byte	.LVL64
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL65-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL65-1
	.4byte	.LVL69
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL72
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL32
	.4byte	.LVL69
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL30
	.4byte	.LVL33-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL33-1
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL60
	.4byte	.LVL62-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL62-1
	.4byte	.LVL62
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL69
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL30
	.4byte	.LVL52
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL72
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL37
	.4byte	.LVL38-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL38
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL45
	.4byte	.LVL46-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL46
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL54
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL61
	.4byte	.LVL62-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL62
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL30
	.4byte	.LVL33-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL33-1
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL60
	.4byte	.LVL62-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL62-1
	.4byte	.LVL62
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL69
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL20
	.4byte	.LVL24-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL24-1
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL20
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL20
	.4byte	.LVL24
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL27
	.4byte	.LFE7
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL24-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18
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
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL14-1
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL13
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL10
	.4byte	.LVL14
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LFE6
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL17
	.4byte	.LVL19
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
	.4byte	0x3c
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
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
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
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF144:
	.string	"hal_spi_set_rwspeed"
.LASF69:
	.string	"aos_dirent_t"
.LASF119:
	.string	"rx_nbits"
.LASF103:
	.string	"inode_t"
.LASF130:
	.string	"spi_dev"
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
.LASF112:
	.string	"rx_buf"
.LASF81:
	.string	"sync"
.LASF136:
	.string	"vfs_spi_close"
.LASF25:
	.string	"__nlink_t"
.LASF63:
	.string	"f_ffree"
.LASF99:
	.string	"i_name"
.LASF123:
	.string	"mode"
.LASF155:
	.string	"spi_ops"
.LASF68:
	.string	"d_name"
.LASF150:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF146:
	.string	"hal_spi_send"
.LASF21:
	.string	"__ino_t"
.LASF32:
	.string	"ino_t"
.LASF8:
	.string	"uint32_t"
.LASF116:
	.string	"bits_per_word"
.LASF93:
	.string	"telldir"
.LASF98:
	.string	"i_arg"
.LASF132:
	.string	"vfs_spi_ioctl"
.LASF85:
	.string	"unlink"
.LASF10:
	.string	"long long unsigned int"
.LASF54:
	.string	"st_blocks"
.LASF140:
	.string	"xTaskGetTickCountFromISR"
.LASF106:
	.string	"offset"
.LASF105:
	.string	"f_arg"
.LASF141:
	.string	"bl_printk"
.LASF97:
	.string	"i_fops"
.LASF41:
	.string	"stat"
.LASF42:
	.string	"st_dev"
.LASF29:
	.string	"tv_nsec"
.LASF14:
	.string	"size_t"
.LASF117:
	.string	"cs_change"
.LASF22:
	.string	"__mode_t"
.LASF67:
	.string	"d_type"
.LASF109:
	.string	"_Bool"
.LASF47:
	.string	"st_gid"
.LASF137:
	.string	"vfs_spi_open"
.LASF129:
	.string	"spi_dev_t"
.LASF92:
	.string	"rewinddir"
.LASF44:
	.string	"st_mode"
.LASF90:
	.string	"mkdir"
.LASF107:
	.string	"file_t"
.LASF152:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/vfs"
.LASF45:
	.string	"st_nlink"
.LASF124:
	.string	"freq"
.LASF153:
	.string	"inode_ops_t"
.LASF79:
	.string	"ioctl"
.LASF111:
	.string	"tx_buf"
.LASF80:
	.string	"poll"
.LASF128:
	.string	"priv"
.LASF40:
	.string	"timespec"
.LASF26:
	.string	"char"
.LASF30:
	.string	"blkcnt_t"
.LASF108:
	.string	"poll_notify_t"
.LASF76:
	.string	"close"
.LASF135:
	.string	"vfs_spi_read"
.LASF37:
	.string	"ssize_t"
.LASF84:
	.string	"lseek"
.LASF133:
	.string	"vfs_spi_write"
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
.LASF143:
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
.LASF34:
	.string	"dev_t"
.LASF60:
	.string	"f_bfree"
.LASF118:
	.string	"tx_nbits"
.LASF74:
	.string	"file_ops"
.LASF73:
	.string	"file_ops_t"
.LASF134:
	.string	"nbytes"
.LASF154:
	.string	"pollfd"
.LASF61:
	.string	"f_bavail"
.LASF139:
	.string	"xPortIsInsideInterrupt"
.LASF64:
	.string	"f_fsid"
.LASF55:
	.string	"st_spare4"
.LASF95:
	.string	"access"
.LASF148:
	.string	"hal_spi_finalize"
.LASF86:
	.string	"rename"
.LASF20:
	.string	"__gid_t"
.LASF6:
	.string	"uint16_t"
.LASF59:
	.string	"f_blocks"
.LASF149:
	.string	"hal_spi_init"
.LASF36:
	.string	"gid_t"
.LASF13:
	.string	"__int_least64_t"
.LASF96:
	.string	"i_ops"
.LASF35:
	.string	"uid_t"
.LASF127:
	.string	"config"
.LASF91:
	.string	"rmdir"
.LASF151:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/fs/vfs/device/vfs_spi.c"
.LASF89:
	.string	"closedir"
.LASF1:
	.string	"short int"
.LASF51:
	.string	"st_mtim"
.LASF142:
	.string	"hal_spi_set_rwmode"
.LASF100:
	.string	"i_flags"
.LASF2:
	.string	"long int"
.LASF104:
	.string	"node"
.LASF88:
	.string	"readdir"
.LASF115:
	.string	"delay_msecs"
.LASF65:
	.string	"f_namelen"
.LASF16:
	.string	"__blksize_t"
.LASF121:
	.string	"spi_ioc_transfer_t"
.LASF19:
	.string	"__uid_t"
.LASF120:
	.string	"word_delay_usecs"
.LASF50:
	.string	"st_atim"
.LASF77:
	.string	"read"
.LASF70:
	.string	"dd_vfs_fd"
.LASF75:
	.string	"open"
.LASF28:
	.string	"tv_sec"
.LASF113:
	.string	"speed_hz"
.LASF9:
	.string	"long unsigned int"
.LASF145:
	.string	"hal_spi_transfer"
.LASF122:
	.string	"float"
.LASF126:
	.string	"port"
.LASF39:
	.string	"nlink_t"
.LASF58:
	.string	"f_bsize"
.LASF4:
	.string	"unsigned char"
.LASF12:
	.string	"__uint32_t"
.LASF31:
	.string	"blksize_t"
.LASF49:
	.string	"st_size"
.LASF66:
	.string	"d_ino"
.LASF147:
	.string	"hal_spi_recv"
.LASF131:
	.string	"xfer"
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
.LASF125:
	.string	"spi_config_t"
.LASF33:
	.string	"off_t"
.LASF7:
	.string	"short unsigned int"
.LASF110:
	.string	"spi_ioc_transfer"
.LASF94:
	.string	"seekdir"
.LASF114:
	.string	"delay_usecs"
.LASF15:
	.string	"__blkcnt_t"
.LASF17:
	.string	"_off_t"
.LASF48:
	.string	"st_rdev"
.LASF82:
	.string	"fs_ops_t"
.LASF138:
	.string	"inode"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
