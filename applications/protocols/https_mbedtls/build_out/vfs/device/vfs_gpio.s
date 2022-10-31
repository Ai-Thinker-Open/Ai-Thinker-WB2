	.file	"vfs_gpio.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.vfs_gpio_open,"ax",@progbits
	.align	1
	.globl	vfs_gpio_open
	.type	vfs_gpio_open, @function
vfs_gpio_open:
.LFB4:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/fs/vfs/device/vfs_gpio.c"
	.loc 1 26 1
	.cfi_startproc
.LVL0:
	.loc 1 27 5
	.loc 1 28 5
	.loc 1 31 5
	.loc 1 31 8 is_stmt 0
	beq	a1,zero,.L4
	.loc 1 31 27 discriminator 1
	lw	a5,0(a1)
	.loc 1 31 21 discriminator 1
	beq	a5,zero,.L4
	.loc 1 34 9 is_stmt 1
	.loc 1 34 12 is_stmt 0
	lbu	a3,17(a5)
	li	a4,1
	.loc 1 42 17
	li	a0,0
.LVL1:
	.loc 1 34 12
	bne	a3,a4,.L1
	.loc 1 37 13 is_stmt 1
.LVL2:
	.loc 1 40 13
	.loc 1 40 19 is_stmt 0
	lw	a0,4(a5)
	tail	hal_gpio_init
.LVL3:
.L4:
	.loc 1 45 13
	li	a0,-22
.LVL4:
.L1:
	.loc 1 49 1
	ret
	.cfi_endproc
.LFE4:
	.size	vfs_gpio_open, .-vfs_gpio_open
	.section	.text.vfs_gpio_close,"ax",@progbits
	.align	1
	.globl	vfs_gpio_close
	.type	vfs_gpio_close, @function
vfs_gpio_close:
.LFB5:
	.loc 1 52 1 is_stmt 1
	.cfi_startproc
.LVL5:
	.loc 1 53 5
	.loc 1 54 5
	.loc 1 57 5
	.loc 1 57 8 is_stmt 0
	beq	a0,zero,.L11
	.loc 1 57 27 discriminator 1
	lw	a5,0(a0)
	.loc 1 57 21 discriminator 1
	beq	a5,zero,.L11
	.loc 1 60 9 is_stmt 1
	.loc 1 60 12 is_stmt 0
	lbu	a3,17(a5)
	li	a4,1
	.loc 1 73 17
	li	a0,0
.LVL6:
	.loc 1 60 12
	bne	a3,a4,.L6
	.loc 1 63 13 is_stmt 1
	.loc 1 63 22 is_stmt 0
	lw	a0,4(a5)
.LVL7:
	.loc 1 65 13 is_stmt 1
	.loc 1 65 16 is_stmt 0
	beq	a0,zero,.L11
	.loc 1 68 17 is_stmt 1
	.loc 1 68 23 is_stmt 0
	tail	hal_gpio_finalize
.LVL8:
.L11:
	.loc 1 76 13
	li	a0,-22
.LVL9:
	.loc 1 79 5 is_stmt 1
.L6:
	.loc 1 80 1 is_stmt 0
	ret
	.cfi_endproc
.LFE5:
	.size	vfs_gpio_close, .-vfs_gpio_close
	.section	.text.vfs_gpio_write,"ax",@progbits
	.align	1
	.globl	vfs_gpio_write
	.type	vfs_gpio_write, @function
vfs_gpio_write:
.LFB6:
	.loc 1 83 1 is_stmt 1
	.cfi_startproc
.LVL10:
	.loc 1 84 5
	.loc 1 85 5
	.loc 1 86 5
	.loc 1 89 5
	.loc 1 89 8 is_stmt 0
	beq	a0,zero,.L17
	.loc 1 89 27 discriminator 1
	lw	a5,0(a0)
	.loc 1 89 21 discriminator 1
	beq	a5,zero,.L17
	.loc 1 92 9 is_stmt 1
	.loc 1 92 18 is_stmt 0
	lw	a0,4(a5)
.LVL11:
	.loc 1 94 9 is_stmt 1
	.loc 1 94 12 is_stmt 0
	beq	a0,zero,.L19
	.loc 1 95 13 is_stmt 1
	.loc 1 95 16 is_stmt 0
	lw	a5,4(a0)
	li	a4,2
	bne	a5,a4,.L19
	.loc 1 96 17 is_stmt 1
	.loc 1 96 27 is_stmt 0
	lbu	a4,0(a1)
.LVL12:
	.loc 1 97 17 is_stmt 1
	li	a3,1
	beq	a4,a3,.L14
	beq	a4,a5,.L15
	li	a5,-22
	bne	a4,zero,.L12
	.loc 1 99 25
	.loc 1 99 31 is_stmt 0
	tail	hal_gpio_output_low
.LVL13:
.L14:
	.loc 1 102 25 is_stmt 1
	.loc 1 102 31 is_stmt 0
	tail	hal_gpio_output_high
.LVL14:
.L15:
	.loc 1 105 25 is_stmt 1
	.loc 1 105 31 is_stmt 0
	tail	hal_gpio_output_toggle
.LVL15:
.L17:
	.loc 1 84 9
	li	a5,-1
.LVL16:
.L12:
	.loc 1 119 1
	mv	a0,a5
	ret
.LVL17:
.L19:
	.loc 1 115 17
	li	a5,-22
	j	.L12
	.cfi_endproc
.LFE6:
	.size	vfs_gpio_write, .-vfs_gpio_write
	.section	.text.vfs_gpio_read,"ax",@progbits
	.align	1
	.globl	vfs_gpio_read
	.type	vfs_gpio_read, @function
vfs_gpio_read:
.LFB7:
	.loc 1 122 1 is_stmt 1
	.cfi_startproc
.LVL18:
	.loc 1 123 5
	.loc 1 124 5
	.loc 1 127 5
	.loc 1 127 8 is_stmt 0
	beq	a0,zero,.L25
	.loc 1 127 27 discriminator 1
	lw	a5,0(a0)
	.loc 1 152 13 discriminator 1
	li	a0,-22
.LVL19:
	.loc 1 127 21 discriminator 1
	beq	a5,zero,.L30
	.loc 1 130 9 is_stmt 1
	.loc 1 130 18 is_stmt 0
	lw	a5,4(a5)
.LVL20:
	.loc 1 132 9 is_stmt 1
	.loc 1 132 12 is_stmt 0
	beq	a5,zero,.L30
	.loc 1 133 13 is_stmt 1
	.loc 1 133 16 is_stmt 0
	lw	a3,4(a5)
	li	a4,2
	.loc 1 123 9
	li	a0,-1
	.loc 1 133 16
	bne	a3,a4,.L23
	.loc 1 134 17 is_stmt 1
	.loc 1 134 45 is_stmt 0
	lbu	a4,12(a5)
	.loc 1 135 21
	li	a0,0
	.loc 1 134 35
	sb	a4,0(a1)
	.loc 1 135 17 is_stmt 1
.LVL21:
.L23:
	.loc 1 139 13
	.loc 1 139 16 is_stmt 0
	lw	a3,4(a5)
	li	a4,3
	bne	a3,a4,.L31
	.loc 1 141 17 is_stmt 1
	.loc 1 122 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 141 23
	mv	a0,a5
.LVL22:
	.loc 1 122 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 141 23
	call	hal_gpio_input_get
.LVL23:
	.loc 1 145 13 is_stmt 1
	.loc 1 145 16 is_stmt 0
	bne	a0,zero,.L21
	.loc 1 146 21
	li	a0,1
.LVL24:
.L21:
	.loc 1 156 1
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL25:
.L25:
	.loc 1 152 13
	li	a0,-22
.LVL26:
	ret
.LVL27:
.L31:
	.loc 1 145 13 is_stmt 1
	.loc 1 145 16 is_stmt 0
	bne	a0,zero,.L30
	.loc 1 146 21
	li	a0,1
.LVL28:
.L30:
	.loc 1 156 1
	ret
	.cfi_endproc
.LFE7:
	.size	vfs_gpio_read, .-vfs_gpio_read
	.section	.text.vfs_gpio_ioctl,"ax",@progbits
	.align	1
	.globl	vfs_gpio_ioctl
	.type	vfs_gpio_ioctl, @function
vfs_gpio_ioctl:
.LFB8:
	.loc 1 159 1 is_stmt 1
	.cfi_startproc
.LVL29:
	.loc 1 160 5
	.loc 1 161 5
	.loc 1 164 5
	.loc 1 164 8 is_stmt 0
	beq	a0,zero,.L35
	.loc 1 164 27 discriminator 1
	lw	a5,0(a0)
	.loc 1 164 21 discriminator 1
	beq	a5,zero,.L35
	.loc 1 169 5 is_stmt 1
	.loc 1 169 14 is_stmt 0
	lw	a0,4(a5)
.LVL30:
	.loc 1 171 5 is_stmt 1
	.loc 1 171 8 is_stmt 0
	beq	a0,zero,.L35
	.loc 1 175 9 is_stmt 1
	li	a5,1
	beq	a1,a5,.L37
	li	a5,2
	beq	a1,a5,.L38
	bne	a1,zero,.L35
	.loc 1 177 17
	.loc 1 177 23 is_stmt 0
	li	a1,32
.LVL31:
.L46:
	.loc 1 183 23
	tail	hal_gpio_pulltype_set
.LVL32:
.L37:
	.loc 1 180 17 is_stmt 1
	.loc 1 180 23 is_stmt 0
	li	a1,48
.LVL33:
	j	.L46
.LVL34:
.L38:
	.loc 1 183 17 is_stmt 1
	.loc 1 183 23 is_stmt 0
	li	a1,16
.LVL35:
	j	.L46
.LVL36:
.L35:
	.loc 1 190 1
	li	a0,-22
	ret
	.cfi_endproc
.LFE8:
	.size	vfs_gpio_ioctl, .-vfs_gpio_ioctl
	.globl	gpio_ops
	.section	.rodata.gpio_ops,"a"
	.align	2
	.type	gpio_ops, @object
	.size	gpio_ops, 28
gpio_ops:
	.word	vfs_gpio_open
	.word	vfs_gpio_close
	.word	vfs_gpio_read
	.word	vfs_gpio_write
	.word	vfs_gpio_ioctl
	.zero	8
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timeval.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timespec.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h"
	.file 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/stat.h"
	.file 10 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/fs/vfs/include/vfs_dir.h"
	.file 11 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/fs/vfs/include/vfs_inode.h"
	.file 12 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/yloop_types.h"
	.file 13 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/fs/vfs/include/hal/soc/gpio.h"
	.file 14 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/fs/vfs/include/device/vfs_gpio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xc38
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF141
	.byte	0xc
	.4byte	.LASF142
	.4byte	.LASF143
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
	.byte	0x6
	.byte	0x2a
	.byte	0x19
	.4byte	0x75
	.byte	0x8
	.4byte	.LASF39
	.byte	0x10
	.byte	0x7
	.byte	0x2f
	.byte	0x8
	.4byte	0x179
	.byte	0x9
	.4byte	.LASF27
	.byte	0x7
	.byte	0x30
	.byte	0x9
	.4byte	0x145
	.byte	0
	.byte	0x9
	.4byte	.LASF28
	.byte	0x7
	.byte	0x31
	.byte	0x7
	.4byte	0x4d
	.byte	0x8
	.byte	0
	.byte	0x3
	.4byte	.LASF29
	.byte	0x8
	.byte	0x61
	.byte	0x14
	.4byte	0x9b
	.byte	0x3
	.4byte	.LASF30
	.byte	0x8
	.byte	0x66
	.byte	0x15
	.4byte	0xa7
	.byte	0x3
	.4byte	.LASF31
	.byte	0x8
	.byte	0x8b
	.byte	0x11
	.4byte	0xe3
	.byte	0x3
	.4byte	.LASF32
	.byte	0x8
	.byte	0x9d
	.byte	0x11
	.4byte	0xfb
	.byte	0x3
	.4byte	.LASF33
	.byte	0x8
	.byte	0xa1
	.byte	0x11
	.4byte	0xbf
	.byte	0x3
	.4byte	.LASF34
	.byte	0x8
	.byte	0xa5
	.byte	0x11
	.4byte	0xcb
	.byte	0x3
	.4byte	.LASF35
	.byte	0x8
	.byte	0xa9
	.byte	0x11
	.4byte	0xd7
	.byte	0x3
	.4byte	.LASF36
	.byte	0x8
	.byte	0xb8
	.byte	0x12
	.4byte	0x107
	.byte	0x3
	.4byte	.LASF37
	.byte	0x8
	.byte	0xbd
	.byte	0x12
	.4byte	0xef
	.byte	0x3
	.4byte	.LASF38
	.byte	0x8
	.byte	0xc2
	.byte	0x13
	.4byte	0x115
	.byte	0x8
	.4byte	.LASF40
	.byte	0x58
	.byte	0x9
	.byte	0x1b
	.byte	0x8
	.4byte	0x2b5
	.byte	0x9
	.4byte	.LASF41
	.byte	0x9
	.byte	0x1d
	.byte	0x9
	.4byte	0x1a9
	.byte	0
	.byte	0x9
	.4byte	.LASF42
	.byte	0x9
	.byte	0x1e
	.byte	0x9
	.4byte	0x191
	.byte	0x2
	.byte	0x9
	.4byte	.LASF43
	.byte	0x9
	.byte	0x1f
	.byte	0xa
	.4byte	0x1d9
	.byte	0x4
	.byte	0x9
	.4byte	.LASF44
	.byte	0x9
	.byte	0x20
	.byte	0xb
	.4byte	0x1e5
	.byte	0x8
	.byte	0x9
	.4byte	.LASF45
	.byte	0x9
	.byte	0x21
	.byte	0x9
	.4byte	0x1b5
	.byte	0xa
	.byte	0x9
	.4byte	.LASF46
	.byte	0x9
	.byte	0x22
	.byte	0x9
	.4byte	0x1c1
	.byte	0xc
	.byte	0x9
	.4byte	.LASF47
	.byte	0x9
	.byte	0x23
	.byte	0x9
	.4byte	0x1a9
	.byte	0xe
	.byte	0x9
	.4byte	.LASF48
	.byte	0x9
	.byte	0x24
	.byte	0x9
	.4byte	0x19d
	.byte	0x10
	.byte	0x9
	.4byte	.LASF49
	.byte	0x9
	.byte	0x2a
	.byte	0x13
	.4byte	0x151
	.byte	0x18
	.byte	0x9
	.4byte	.LASF50
	.byte	0x9
	.byte	0x2b
	.byte	0x13
	.4byte	0x151
	.byte	0x28
	.byte	0x9
	.4byte	.LASF51
	.byte	0x9
	.byte	0x2c
	.byte	0x13
	.4byte	0x151
	.byte	0x38
	.byte	0x9
	.4byte	.LASF52
	.byte	0x9
	.byte	0x2d
	.byte	0xd
	.4byte	0x185
	.byte	0x48
	.byte	0x9
	.4byte	.LASF53
	.byte	0x9
	.byte	0x2e
	.byte	0xc
	.4byte	0x179
	.byte	0x4c
	.byte	0x9
	.4byte	.LASF54
	.byte	0x9
	.byte	0x30
	.byte	0x8
	.4byte	0x2b5
	.byte	0x50
	.byte	0
	.byte	0xa
	.4byte	0x4d
	.4byte	0x2c5
	.byte	0xb
	.4byte	0x88
	.byte	0x1
	.byte	0
	.byte	0x8
	.4byte	.LASF55
	.byte	0x24
	.byte	0xa
	.byte	0x4
	.byte	0x8
	.4byte	0x348
	.byte	0x9
	.4byte	.LASF56
	.byte	0xa
	.byte	0x5
	.byte	0xa
	.4byte	0x4d
	.byte	0
	.byte	0x9
	.4byte	.LASF57
	.byte	0xa
	.byte	0x6
	.byte	0xa
	.4byte	0x4d
	.byte	0x4
	.byte	0x9
	.4byte	.LASF58
	.byte	0xa
	.byte	0x7
	.byte	0xa
	.4byte	0x4d
	.byte	0x8
	.byte	0x9
	.4byte	.LASF59
	.byte	0xa
	.byte	0x8
	.byte	0xa
	.4byte	0x4d
	.byte	0xc
	.byte	0x9
	.4byte	.LASF60
	.byte	0xa
	.byte	0x9
	.byte	0xa
	.4byte	0x4d
	.byte	0x10
	.byte	0x9
	.4byte	.LASF61
	.byte	0xa
	.byte	0xa
	.byte	0xa
	.4byte	0x4d
	.byte	0x14
	.byte	0x9
	.4byte	.LASF62
	.byte	0xa
	.byte	0xb
	.byte	0xa
	.4byte	0x4d
	.byte	0x18
	.byte	0x9
	.4byte	.LASF63
	.byte	0xa
	.byte	0xc
	.byte	0xa
	.4byte	0x4d
	.byte	0x1c
	.byte	0x9
	.4byte	.LASF64
	.byte	0xa
	.byte	0xd
	.byte	0xa
	.4byte	0x4d
	.byte	0x20
	.byte	0
	.byte	0xc
	.byte	0x8
	.byte	0xa
	.byte	0x10
	.byte	0x9
	.4byte	0x379
	.byte	0x9
	.4byte	.LASF65
	.byte	0xa
	.byte	0x11
	.byte	0x9
	.4byte	0x81
	.byte	0
	.byte	0x9
	.4byte	.LASF66
	.byte	0xa
	.byte	0x12
	.byte	0xd
	.4byte	0x139
	.byte	0x4
	.byte	0x9
	.4byte	.LASF67
	.byte	0xa
	.byte	0x13
	.byte	0xa
	.4byte	0x379
	.byte	0x5
	.byte	0
	.byte	0xa
	.4byte	0x127
	.4byte	0x388
	.byte	0xd
	.4byte	0x88
	.byte	0
	.byte	0x3
	.4byte	.LASF68
	.byte	0xa
	.byte	0x14
	.byte	0x3
	.4byte	0x348
	.byte	0xc
	.byte	0x8
	.byte	0xa
	.byte	0x16
	.byte	0x9
	.4byte	0x3b8
	.byte	0x9
	.4byte	.LASF69
	.byte	0xa
	.byte	0x17
	.byte	0x9
	.4byte	0x81
	.byte	0
	.byte	0x9
	.4byte	.LASF70
	.byte	0xa
	.byte	0x18
	.byte	0x9
	.4byte	0x81
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF71
	.byte	0xa
	.byte	0x19
	.byte	0x3
	.4byte	0x394
	.byte	0x3
	.4byte	.LASF72
	.byte	0xb
	.byte	0x2c
	.byte	0x1f
	.4byte	0x439
	.byte	0x8
	.4byte	.LASF73
	.byte	0x1c
	.byte	0xb
	.byte	0x47
	.byte	0x8
	.4byte	0x439
	.byte	0x9
	.4byte	.LASF74
	.byte	0xb
	.byte	0x48
	.byte	0xb
	.4byte	0x6bc
	.byte	0
	.byte	0x9
	.4byte	.LASF75
	.byte	0xb
	.byte	0x49
	.byte	0xb
	.4byte	0x6d1
	.byte	0x4
	.byte	0x9
	.4byte	.LASF76
	.byte	0xb
	.byte	0x4a
	.byte	0xf
	.4byte	0x6f0
	.byte	0x8
	.byte	0x9
	.4byte	.LASF77
	.byte	0xb
	.byte	0x4b
	.byte	0xf
	.4byte	0x716
	.byte	0xc
	.byte	0x9
	.4byte	.LASF78
	.byte	0xb
	.byte	0x4c
	.byte	0xb
	.4byte	0x735
	.byte	0x10
	.byte	0x9
	.4byte	.LASF79
	.byte	0xb
	.byte	0x4e
	.byte	0xb
	.4byte	0x765
	.byte	0x14
	.byte	0x9
	.4byte	.LASF80
	.byte	0xb
	.byte	0x50
	.byte	0xb
	.4byte	0x6d1
	.byte	0x18
	.byte	0
	.byte	0x7
	.4byte	0x3d0
	.byte	0x3
	.4byte	.LASF81
	.byte	0xb
	.byte	0x2d
	.byte	0x1d
	.4byte	0x55c
	.byte	0x8
	.4byte	.LASF82
	.byte	0x50
	.byte	0xb
	.byte	0x53
	.byte	0x8
	.4byte	0x55c
	.byte	0x9
	.4byte	.LASF74
	.byte	0xb
	.byte	0x54
	.byte	0xb
	.4byte	0x784
	.byte	0
	.byte	0x9
	.4byte	.LASF75
	.byte	0xb
	.byte	0x55
	.byte	0xb
	.4byte	0x6d1
	.byte	0x4
	.byte	0x9
	.4byte	.LASF76
	.byte	0xb
	.byte	0x56
	.byte	0xf
	.4byte	0x7a3
	.byte	0x8
	.byte	0x9
	.4byte	.LASF77
	.byte	0xb
	.byte	0x57
	.byte	0xf
	.4byte	0x7c2
	.byte	0xc
	.byte	0x9
	.4byte	.LASF83
	.byte	0xb
	.byte	0x58
	.byte	0xd
	.4byte	0x7e1
	.byte	0x10
	.byte	0x9
	.4byte	.LASF80
	.byte	0xb
	.byte	0x59
	.byte	0xb
	.4byte	0x6d1
	.byte	0x14
	.byte	0x9
	.4byte	.LASF40
	.byte	0xb
	.byte	0x5a
	.byte	0xb
	.4byte	0x806
	.byte	0x18
	.byte	0x9
	.4byte	.LASF84
	.byte	0xb
	.byte	0x5b
	.byte	0xb
	.4byte	0x820
	.byte	0x1c
	.byte	0x9
	.4byte	.LASF85
	.byte	0xb
	.byte	0x5c
	.byte	0xb
	.4byte	0x83f
	.byte	0x20
	.byte	0x9
	.4byte	.LASF86
	.byte	0xb
	.byte	0x5d
	.byte	0x12
	.4byte	0x85f
	.byte	0x24
	.byte	0x9
	.4byte	.LASF87
	.byte	0xb
	.byte	0x5e
	.byte	0x15
	.4byte	0x87f
	.byte	0x28
	.byte	0x9
	.4byte	.LASF88
	.byte	0xb
	.byte	0x5f
	.byte	0xb
	.4byte	0x899
	.byte	0x2c
	.byte	0x9
	.4byte	.LASF89
	.byte	0xb
	.byte	0x60
	.byte	0xb
	.4byte	0x820
	.byte	0x30
	.byte	0x9
	.4byte	.LASF90
	.byte	0xb
	.byte	0x61
	.byte	0xb
	.4byte	0x820
	.byte	0x34
	.byte	0x9
	.4byte	.LASF91
	.byte	0xb
	.byte	0x62
	.byte	0xc
	.4byte	0x8af
	.byte	0x38
	.byte	0x9
	.4byte	.LASF92
	.byte	0xb
	.byte	0x63
	.byte	0xc
	.4byte	0x8c9
	.byte	0x3c
	.byte	0x9
	.4byte	.LASF93
	.byte	0xb
	.byte	0x64
	.byte	0xc
	.4byte	0x8e4
	.byte	0x40
	.byte	0x9
	.4byte	.LASF78
	.byte	0xb
	.byte	0x65
	.byte	0xb
	.4byte	0x735
	.byte	0x44
	.byte	0x9
	.4byte	.LASF55
	.byte	0xb
	.byte	0x66
	.byte	0xb
	.4byte	0x909
	.byte	0x48
	.byte	0x9
	.4byte	.LASF94
	.byte	0xb
	.byte	0x67
	.byte	0xb
	.4byte	0x784
	.byte	0x4c
	.byte	0
	.byte	0x7
	.4byte	0x44a
	.byte	0xe
	.4byte	.LASF144
	.byte	0x4
	.byte	0xb
	.byte	0x2f
	.byte	0x7
	.4byte	0x587
	.byte	0xf
	.4byte	.LASF95
	.byte	0xb
	.byte	0x30
	.byte	0x17
	.4byte	0x587
	.byte	0xf
	.4byte	.LASF96
	.byte	0xb
	.byte	0x31
	.byte	0x15
	.4byte	0x58d
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x3c4
	.byte	0x6
	.byte	0x4
	.4byte	0x43e
	.byte	0xc
	.byte	0x14
	.byte	0xb
	.byte	0x35
	.byte	0x9
	.4byte	0x5eb
	.byte	0x10
	.string	"ops"
	.byte	0xb
	.byte	0x36
	.byte	0x17
	.4byte	0x561
	.byte	0
	.byte	0x9
	.4byte	.LASF97
	.byte	0xb
	.byte	0x37
	.byte	0xb
	.4byte	0x113
	.byte	0x4
	.byte	0x9
	.4byte	.LASF98
	.byte	0xb
	.byte	0x38
	.byte	0xb
	.4byte	0x121
	.byte	0x8
	.byte	0x9
	.4byte	.LASF99
	.byte	0xb
	.byte	0x39
	.byte	0x9
	.4byte	0x81
	.byte	0xc
	.byte	0x9
	.4byte	.LASF100
	.byte	0xb
	.byte	0x3a
	.byte	0xd
	.4byte	0x139
	.byte	0x10
	.byte	0x9
	.4byte	.LASF101
	.byte	0xb
	.byte	0x3b
	.byte	0xd
	.4byte	0x139
	.byte	0x11
	.byte	0
	.byte	0x3
	.4byte	.LASF102
	.byte	0xb
	.byte	0x3c
	.byte	0x3
	.4byte	0x593
	.byte	0xc
	.byte	0x10
	.byte	0xb
	.byte	0x3e
	.byte	0x9
	.4byte	0x634
	.byte	0x9
	.4byte	.LASF103
	.byte	0xb
	.byte	0x3f
	.byte	0xe
	.4byte	0x634
	.byte	0
	.byte	0x9
	.4byte	.LASF104
	.byte	0xb
	.byte	0x40
	.byte	0xb
	.4byte	0x113
	.byte	0x4
	.byte	0x9
	.4byte	.LASF105
	.byte	0xb
	.byte	0x41
	.byte	0xc
	.4byte	0x8f
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
	.4byte	0x5eb
	.byte	0x3
	.4byte	.LASF106
	.byte	0xb
	.byte	0x43
	.byte	0x3
	.4byte	0x5f7
	.byte	0x3
	.4byte	.LASF107
	.byte	0xb
	.byte	0x46
	.byte	0x10
	.4byte	0x652
	.byte	0x6
	.byte	0x4
	.4byte	0x658
	.byte	0x11
	.4byte	0x668
	.byte	0x12
	.4byte	0x668
	.byte	0x12
	.4byte	0x113
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x66e
	.byte	0x8
	.4byte	.LASF108
	.byte	0x8
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.4byte	0x6a2
	.byte	0x10
	.string	"fd"
	.byte	0xc
	.byte	0x8
	.byte	0x9
	.4byte	0x81
	.byte	0
	.byte	0x9
	.4byte	.LASF109
	.byte	0xc
	.byte	0x9
	.byte	0xb
	.4byte	0x3f
	.byte	0x4
	.byte	0x9
	.4byte	.LASF110
	.byte	0xc
	.byte	0xa
	.byte	0xb
	.4byte	0x3f
	.byte	0x6
	.byte	0
	.byte	0x13
	.4byte	0x81
	.4byte	0x6b6
	.byte	0x12
	.4byte	0x634
	.byte	0x12
	.4byte	0x6b6
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x63a
	.byte	0x6
	.byte	0x4
	.4byte	0x6a2
	.byte	0x13
	.4byte	0x81
	.4byte	0x6d1
	.byte	0x12
	.4byte	0x6b6
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x6c2
	.byte	0x13
	.4byte	0x1cd
	.4byte	0x6f0
	.byte	0x12
	.4byte	0x6b6
	.byte	0x12
	.4byte	0x113
	.byte	0x12
	.4byte	0x8f
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x6d7
	.byte	0x13
	.4byte	0x1cd
	.4byte	0x70f
	.byte	0x12
	.4byte	0x6b6
	.byte	0x12
	.4byte	0x70f
	.byte	0x12
	.4byte	0x8f
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x715
	.byte	0x14
	.byte	0x6
	.byte	0x4
	.4byte	0x6f6
	.byte	0x13
	.4byte	0x81
	.4byte	0x735
	.byte	0x12
	.4byte	0x6b6
	.byte	0x12
	.4byte	0x81
	.byte	0x12
	.4byte	0x60
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x71c
	.byte	0x13
	.4byte	0x81
	.4byte	0x75e
	.byte	0x12
	.4byte	0x6b6
	.byte	0x12
	.4byte	0x75e
	.byte	0x12
	.4byte	0x646
	.byte	0x12
	.4byte	0x668
	.byte	0x12
	.4byte	0x113
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF111
	.byte	0x6
	.byte	0x4
	.4byte	0x73b
	.byte	0x13
	.4byte	0x81
	.4byte	0x784
	.byte	0x12
	.4byte	0x6b6
	.byte	0x12
	.4byte	0x133
	.byte	0x12
	.4byte	0x81
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x76b
	.byte	0x13
	.4byte	0x1cd
	.4byte	0x7a3
	.byte	0x12
	.4byte	0x6b6
	.byte	0x12
	.4byte	0x121
	.byte	0x12
	.4byte	0x8f
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x78a
	.byte	0x13
	.4byte	0x1cd
	.4byte	0x7c2
	.byte	0x12
	.4byte	0x6b6
	.byte	0x12
	.4byte	0x133
	.byte	0x12
	.4byte	0x8f
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x7a9
	.byte	0x13
	.4byte	0x19d
	.4byte	0x7e1
	.byte	0x12
	.4byte	0x6b6
	.byte	0x12
	.4byte	0x19d
	.byte	0x12
	.4byte	0x81
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x7c8
	.byte	0x13
	.4byte	0x81
	.4byte	0x800
	.byte	0x12
	.4byte	0x6b6
	.byte	0x12
	.4byte	0x133
	.byte	0x12
	.4byte	0x800
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x1f1
	.byte	0x6
	.byte	0x4
	.4byte	0x7e7
	.byte	0x13
	.4byte	0x81
	.4byte	0x820
	.byte	0x12
	.4byte	0x6b6
	.byte	0x12
	.4byte	0x133
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x80c
	.byte	0x13
	.4byte	0x81
	.4byte	0x83f
	.byte	0x12
	.4byte	0x6b6
	.byte	0x12
	.4byte	0x133
	.byte	0x12
	.4byte	0x133
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x826
	.byte	0x13
	.4byte	0x859
	.4byte	0x859
	.byte	0x12
	.4byte	0x6b6
	.byte	0x12
	.4byte	0x133
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x3b8
	.byte	0x6
	.byte	0x4
	.4byte	0x845
	.byte	0x13
	.4byte	0x879
	.4byte	0x879
	.byte	0x12
	.4byte	0x6b6
	.byte	0x12
	.4byte	0x859
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x388
	.byte	0x6
	.byte	0x4
	.4byte	0x865
	.byte	0x13
	.4byte	0x81
	.4byte	0x899
	.byte	0x12
	.4byte	0x6b6
	.byte	0x12
	.4byte	0x859
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x885
	.byte	0x11
	.4byte	0x8af
	.byte	0x12
	.4byte	0x6b6
	.byte	0x12
	.4byte	0x859
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x89f
	.byte	0x13
	.4byte	0x4d
	.4byte	0x8c9
	.byte	0x12
	.4byte	0x6b6
	.byte	0x12
	.4byte	0x859
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x8b5
	.byte	0x11
	.4byte	0x8e4
	.byte	0x12
	.4byte	0x6b6
	.byte	0x12
	.4byte	0x859
	.byte	0x12
	.4byte	0x4d
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x8cf
	.byte	0x13
	.4byte	0x81
	.4byte	0x903
	.byte	0x12
	.4byte	0x6b6
	.byte	0x12
	.4byte	0x133
	.byte	0x12
	.4byte	0x903
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x2c5
	.byte	0x6
	.byte	0x4
	.4byte	0x8ea
	.byte	0x15
	.4byte	.LASF145
	.byte	0xe
	.byte	0xf
	.byte	0x1e
	.4byte	0x439
	.byte	0x16
	.byte	0x7
	.byte	0x4
	.4byte	0x88
	.byte	0xd
	.byte	0xb
	.byte	0xe
	.4byte	0x94e
	.byte	0x17
	.4byte	.LASF112
	.byte	0x1
	.byte	0x17
	.4byte	.LASF113
	.byte	0x2
	.byte	0x17
	.4byte	.LASF114
	.byte	0x3
	.byte	0x17
	.4byte	.LASF115
	.byte	0x10
	.byte	0x17
	.4byte	.LASF116
	.byte	0x20
	.byte	0x17
	.4byte	.LASF117
	.byte	0x30
	.byte	0
	.byte	0x3
	.4byte	.LASF118
	.byte	0xd
	.byte	0x15
	.byte	0x3
	.4byte	0x91b
	.byte	0xc
	.byte	0x10
	.byte	0xd
	.byte	0x1a
	.byte	0x9
	.4byte	0x998
	.byte	0x9
	.4byte	.LASF119
	.byte	0xd
	.byte	0x1b
	.byte	0xd
	.4byte	0x139
	.byte	0
	.byte	0x9
	.4byte	.LASF120
	.byte	0xd
	.byte	0x1c
	.byte	0x13
	.4byte	0x94e
	.byte	0x4
	.byte	0x9
	.4byte	.LASF121
	.byte	0xd
	.byte	0x1d
	.byte	0xb
	.4byte	0x113
	.byte	0x8
	.byte	0x9
	.4byte	.LASF122
	.byte	0xd
	.byte	0x1e
	.byte	0xd
	.4byte	0x139
	.byte	0xc
	.byte	0
	.byte	0x3
	.4byte	.LASF123
	.byte	0xd
	.byte	0x1f
	.byte	0x3
	.4byte	0x95a
	.byte	0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF124
	.byte	0x18
	.4byte	0x90f
	.byte	0x1
	.byte	0x10
	.byte	0x17
	.byte	0x5
	.byte	0x3
	.4byte	gpio_ops
	.byte	0x19
	.4byte	.LASF126
	.byte	0x1
	.byte	0x9e
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0xa29
	.byte	0x1a
	.string	"fp"
	.byte	0x1
	.byte	0x9e
	.byte	0x1c
	.4byte	0x6b6
	.4byte	.LLST16
	.byte	0x1a
	.string	"cmd"
	.byte	0x1
	.byte	0x9e
	.byte	0x24
	.4byte	0x81
	.4byte	.LLST17
	.byte	0x1a
	.string	"arg"
	.byte	0x1
	.byte	0x9e
	.byte	0x37
	.4byte	0x60
	.4byte	.LLST18
	.byte	0x1b
	.string	"ret"
	.byte	0x1
	.byte	0xa0
	.byte	0x9
	.4byte	0x81
	.byte	0x7f
	.byte	0x1c
	.4byte	.LASF125
	.byte	0x1
	.byte	0xa1
	.byte	0x11
	.4byte	0xa29
	.4byte	.LLST19
	.byte	0x1d
	.4byte	.LVL32
	.4byte	0xbe7
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x998
	.byte	0x19
	.4byte	.LASF127
	.byte	0x1
	.byte	0x79
	.byte	0x9
	.4byte	0x1cd
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0xaa2
	.byte	0x1a
	.string	"fp"
	.byte	0x1
	.byte	0x79
	.byte	0x1f
	.4byte	0x6b6
	.4byte	.LLST11
	.byte	0x1a
	.string	"buf"
	.byte	0x1
	.byte	0x79
	.byte	0x29
	.4byte	0x113
	.4byte	.LLST12
	.byte	0x1e
	.4byte	.LASF128
	.byte	0x1
	.byte	0x79
	.byte	0x35
	.4byte	0x8f
	.4byte	.LLST13
	.byte	0x1f
	.string	"ret"
	.byte	0x1
	.byte	0x7b
	.byte	0x9
	.4byte	0x81
	.4byte	.LLST14
	.byte	0x1c
	.4byte	.LASF125
	.byte	0x1
	.byte	0x7c
	.byte	0x11
	.4byte	0xa29
	.4byte	.LLST15
	.byte	0x20
	.4byte	.LVL23
	.4byte	0xbf3
	.byte	0
	.byte	0x19
	.4byte	.LASF129
	.byte	0x1
	.byte	0x52
	.byte	0x9
	.4byte	0x1cd
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0xb34
	.byte	0x1a
	.string	"fp"
	.byte	0x1
	.byte	0x52
	.byte	0x20
	.4byte	0x6b6
	.4byte	.LLST6
	.byte	0x1a
	.string	"buf"
	.byte	0x1
	.byte	0x52
	.byte	0x30
	.4byte	0x70f
	.4byte	.LLST7
	.byte	0x1e
	.4byte	.LASF128
	.byte	0x1
	.byte	0x52
	.byte	0x3c
	.4byte	0x8f
	.4byte	.LLST8
	.byte	0x1b
	.string	"ret"
	.byte	0x1
	.byte	0x54
	.byte	0x9
	.4byte	0x81
	.byte	0x7f
	.byte	0x1c
	.4byte	.LASF130
	.byte	0x1
	.byte	0x55
	.byte	0xd
	.4byte	0x139
	.4byte	.LLST9
	.byte	0x1c
	.4byte	.LASF125
	.byte	0x1
	.byte	0x56
	.byte	0x11
	.4byte	0xa29
	.4byte	.LLST10
	.byte	0x1d
	.4byte	.LVL13
	.4byte	0xbff
	.byte	0x1d
	.4byte	.LVL14
	.4byte	0xc0b
	.byte	0x1d
	.4byte	.LVL15
	.4byte	0xc17
	.byte	0
	.byte	0x19
	.4byte	.LASF131
	.byte	0x1
	.byte	0x33
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0xb87
	.byte	0x1a
	.string	"fp"
	.byte	0x1
	.byte	0x33
	.byte	0x1c
	.4byte	0x6b6
	.4byte	.LLST3
	.byte	0x1f
	.string	"ret"
	.byte	0x1
	.byte	0x35
	.byte	0x9
	.4byte	0x81
	.4byte	.LLST4
	.byte	0x1c
	.4byte	.LASF125
	.byte	0x1
	.byte	0x36
	.byte	0x11
	.4byte	0xa29
	.4byte	.LLST5
	.byte	0x1d
	.4byte	.LVL8
	.4byte	0xc23
	.byte	0
	.byte	0x19
	.4byte	.LASF132
	.byte	0x1
	.byte	0x19
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0xbe7
	.byte	0x1e
	.4byte	.LASF133
	.byte	0x1
	.byte	0x19
	.byte	0x1c
	.4byte	0x634
	.4byte	.LLST0
	.byte	0x1a
	.string	"fp"
	.byte	0x1
	.byte	0x19
	.byte	0x2b
	.4byte	0x6b6
	.4byte	.LLST1
	.byte	0x1b
	.string	"ret"
	.byte	0x1
	.byte	0x1b
	.byte	0x9
	.4byte	0x81
	.byte	0x7f
	.byte	0x1c
	.4byte	.LASF125
	.byte	0x1
	.byte	0x1c
	.byte	0x11
	.4byte	0xa29
	.4byte	.LLST2
	.byte	0x1d
	.4byte	.LVL3
	.4byte	0xc2f
	.byte	0
	.byte	0x21
	.4byte	.LASF134
	.4byte	.LASF134
	.byte	0xd
	.byte	0x6d
	.byte	0x5
	.byte	0x21
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0xd
	.byte	0x64
	.byte	0x9
	.byte	0x21
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0xd
	.byte	0x4f
	.byte	0x9
	.byte	0x21
	.4byte	.LASF137
	.4byte	.LASF137
	.byte	0xd
	.byte	0x44
	.byte	0x9
	.byte	0x21
	.4byte	.LASF138
	.4byte	.LASF138
	.byte	0xd
	.byte	0x59
	.byte	0x9
	.byte	0x21
	.4byte	.LASF139
	.4byte	.LASF139
	.byte	0xd
	.byte	0x9b
	.byte	0x9
	.byte	0x21
	.4byte	.LASF140
	.4byte	.LASF140
	.byte	0xd
	.byte	0x39
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
	.byte	0x17
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x18
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
	.byte	0x1e
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
	.byte	0x1f
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
	.byte	0x20
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x21
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
.LLST16:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL30
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL29
	.4byte	.LVL32-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL32-1
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL32-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL32
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL18
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL23-1
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL18
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL23-1
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16
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
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL13-1
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL14-1
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL15-1
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL10
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL13-1
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL14-1
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL15-1
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL12
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL13
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL14
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5a
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
.LASF68:
	.string	"aos_dirent_t"
.LASF102:
	.string	"inode_t"
.LASF136:
	.string	"hal_gpio_output_low"
.LASF71:
	.string	"aos_dir_t"
.LASF126:
	.string	"vfs_gpio_ioctl"
.LASF11:
	.string	"unsigned int"
.LASF52:
	.string	"st_blksize"
.LASF101:
	.string	"refs"
.LASF109:
	.string	"events"
.LASF86:
	.string	"opendir"
.LASF80:
	.string	"sync"
.LASF122:
	.string	"level"
.LASF23:
	.string	"__nlink_t"
.LASF62:
	.string	"f_ffree"
.LASF98:
	.string	"i_name"
.LASF132:
	.string	"vfs_gpio_open"
.LASF67:
	.string	"d_name"
.LASF141:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF19:
	.string	"__ino_t"
.LASF31:
	.string	"ino_t"
.LASF92:
	.string	"telldir"
.LASF131:
	.string	"vfs_gpio_close"
.LASF97:
	.string	"i_arg"
.LASF127:
	.string	"vfs_gpio_read"
.LASF84:
	.string	"unlink"
.LASF9:
	.string	"long long unsigned int"
.LASF53:
	.string	"st_blocks"
.LASF105:
	.string	"offset"
.LASF113:
	.string	"GPIO_CONFIG_MODE_OUTPUT"
.LASF104:
	.string	"f_arg"
.LASF96:
	.string	"i_fops"
.LASF129:
	.string	"vfs_gpio_write"
.LASF40:
	.string	"stat"
.LASF41:
	.string	"st_dev"
.LASF28:
	.string	"tv_nsec"
.LASF12:
	.string	"size_t"
.LASF20:
	.string	"__mode_t"
.LASF66:
	.string	"d_type"
.LASF111:
	.string	"_Bool"
.LASF46:
	.string	"st_gid"
.LASF91:
	.string	"rewinddir"
.LASF43:
	.string	"st_mode"
.LASF89:
	.string	"mkdir"
.LASF106:
	.string	"file_t"
.LASF143:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/vfs"
.LASF44:
	.string	"st_nlink"
.LASF125:
	.string	"gpio_dev"
.LASF144:
	.string	"inode_ops_t"
.LASF124:
	.string	"float"
.LASF78:
	.string	"ioctl"
.LASF79:
	.string	"poll"
.LASF121:
	.string	"priv"
.LASF39:
	.string	"timespec"
.LASF24:
	.string	"char"
.LASF29:
	.string	"blkcnt_t"
.LASF107:
	.string	"poll_notify_t"
.LASF75:
	.string	"close"
.LASF110:
	.string	"revents"
.LASF8:
	.string	"long long int"
.LASF36:
	.string	"ssize_t"
.LASF83:
	.string	"lseek"
.LASF25:
	.string	"uint8_t"
.LASF145:
	.string	"gpio_ops"
.LASF100:
	.string	"type"
.LASF26:
	.string	"time_t"
.LASF82:
	.string	"fs_ops"
.LASF55:
	.string	"statfs"
.LASF42:
	.string	"st_ino"
.LASF61:
	.string	"f_files"
.LASF142:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/fs/vfs/device/vfs_gpio.c"
.LASF77:
	.string	"write"
.LASF56:
	.string	"f_type"
.LASF16:
	.string	"__dev_t"
.LASF33:
	.string	"dev_t"
.LASF59:
	.string	"f_bfree"
.LASF73:
	.string	"file_ops"
.LASF72:
	.string	"file_ops_t"
.LASF128:
	.string	"nbytes"
.LASF138:
	.string	"hal_gpio_output_toggle"
.LASF108:
	.string	"pollfd"
.LASF60:
	.string	"f_bavail"
.LASF63:
	.string	"f_fsid"
.LASF54:
	.string	"st_spare4"
.LASF130:
	.string	"write_buf"
.LASF94:
	.string	"access"
.LASF137:
	.string	"hal_gpio_output_high"
.LASF118:
	.string	"gpio_config_t"
.LASF85:
	.string	"rename"
.LASF18:
	.string	"__gid_t"
.LASF58:
	.string	"f_blocks"
.LASF35:
	.string	"gid_t"
.LASF10:
	.string	"__int_least64_t"
.LASF95:
	.string	"i_ops"
.LASF34:
	.string	"uid_t"
.LASF120:
	.string	"config"
.LASF90:
	.string	"rmdir"
.LASF88:
	.string	"closedir"
.LASF117:
	.string	"GPIO_CONFIG_PULL_DOWN"
.LASF2:
	.string	"short int"
.LASF50:
	.string	"st_mtim"
.LASF116:
	.string	"GPIO_CONFIG_PULL_UP"
.LASF99:
	.string	"i_flags"
.LASF4:
	.string	"long int"
.LASF114:
	.string	"GPIO_CONFIG_MODE_INPUT"
.LASF140:
	.string	"hal_gpio_init"
.LASF103:
	.string	"node"
.LASF87:
	.string	"readdir"
.LASF64:
	.string	"f_namelen"
.LASF14:
	.string	"__blksize_t"
.LASF17:
	.string	"__uid_t"
.LASF5:
	.string	"__uint8_t"
.LASF49:
	.string	"st_atim"
.LASF76:
	.string	"read"
.LASF69:
	.string	"dd_vfs_fd"
.LASF74:
	.string	"open"
.LASF139:
	.string	"hal_gpio_finalize"
.LASF27:
	.string	"tv_sec"
.LASF7:
	.string	"long unsigned int"
.LASF112:
	.string	"GPIO_CONFIG_MODE_AF"
.LASF119:
	.string	"port"
.LASF38:
	.string	"nlink_t"
.LASF134:
	.string	"hal_gpio_pulltype_set"
.LASF57:
	.string	"f_bsize"
.LASF1:
	.string	"unsigned char"
.LASF6:
	.string	"__uint32_t"
.LASF115:
	.string	"GPIO_CONFIG_PULL_NONE"
.LASF30:
	.string	"blksize_t"
.LASF123:
	.string	"gpio_dev_t"
.LASF48:
	.string	"st_size"
.LASF65:
	.string	"d_ino"
.LASF135:
	.string	"hal_gpio_input_get"
.LASF45:
	.string	"st_uid"
.LASF21:
	.string	"__off_t"
.LASF51:
	.string	"st_ctim"
.LASF22:
	.string	"_ssize_t"
.LASF70:
	.string	"dd_rsv"
.LASF0:
	.string	"signed char"
.LASF37:
	.string	"mode_t"
.LASF32:
	.string	"off_t"
.LASF3:
	.string	"short unsigned int"
.LASF93:
	.string	"seekdir"
.LASF13:
	.string	"__blkcnt_t"
.LASF15:
	.string	"_off_t"
.LASF47:
	.string	"st_rdev"
.LASF81:
	.string	"fs_ops_t"
.LASF133:
	.string	"inode"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
