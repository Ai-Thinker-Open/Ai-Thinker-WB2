	.file	"vfs_register.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.aos_register_driver,"ax",@progbits
	.align	1
	.globl	aos_register_driver
	.type	aos_register_driver, @function
aos_register_driver:
.LFB1:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/fs/vfs/src/vfs_register.c"
	.loc 1 15 1
	.cfi_startproc
.LVL0:
	.loc 1 16 5
	.loc 1 15 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s1,36(sp)
	.cfi_offset 9, -12
	.loc 1 19 33
	lui	s1,%hi(g_vfs_mutex)
	.loc 1 15 1
	sw	s5,20(sp)
	.cfi_offset 21, -28
	mv	s5,a0
	.loc 1 19 33
	lw	a0,%lo(g_vfs_mutex)(s1)
.LVL1:
	.loc 1 15 1
	sw	s4,24(sp)
	.cfi_offset 20, -24
	mv	s4,a1
	.loc 1 19 33
	li	a1,-1
.LVL2:
	.loc 1 15 1
	sw	s3,28(sp)
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s2,32(sp)
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.loc 1 15 1
	mv	s3,a2
	.loc 1 16 14
	sw	zero,12(sp)
	.loc 1 17 5 is_stmt 1
	.loc 1 19 5
	.loc 1 19 33 is_stmt 0
	call	xQueueSemaphoreTake
.LVL3:
	.loc 1 19 8
	li	a5,1
	bne	a0,a5,.L5
	mv	s2,a0
	.loc 1 24 5 is_stmt 1
	.loc 1 24 11 is_stmt 0
	addi	a1,sp,12
	mv	a0,s5
	call	inode_reserve
.LVL4:
	mv	s0,a0
.LVL5:
	.loc 1 25 5 is_stmt 1
	.loc 1 25 8 is_stmt 0
	bne	a0,zero,.L3
	.loc 1 27 9 is_stmt 1
	.loc 1 27 14
	.loc 1 27 20 is_stmt 0
	lw	a5,12(sp)
	.loc 1 29 25
	sw	s4,0(a5)
	.loc 1 27 27
	sb	s2,16(a5)
	.loc 1 27 57 is_stmt 1
	.loc 1 29 9
	.loc 1 30 9
	.loc 1 30 21 is_stmt 0
	lw	a5,12(sp)
	sw	s3,4(a5)
.L3:
	.loc 1 34 5 is_stmt 1
	.loc 1 34 33 is_stmt 0
	lw	a0,%lo(g_vfs_mutex)(s1)
	li	a3,0
	li	a2,0
	li	a1,0
	call	xQueueGenericSend
.LVL6:
	.loc 1 34 8
	li	a5,1
	beq	a0,a5,.L1
	.loc 1 35 9 is_stmt 1
.LVL7:
	.loc 1 36 9
	.loc 1 36 17 is_stmt 0
	lw	a5,12(sp)
	lw	a0,8(a5)
	.loc 1 36 12
	beq	a0,zero,.L4
	.loc 1 37 13 is_stmt 1
	call	vPortFree
.LVL8:
.L4:
	.loc 1 40 9
	lw	a0,12(sp)
	li	a2,20
	li	a1,0
	call	memset
.LVL9:
	.loc 1 41 9
.L5:
	.loc 1 21 16 is_stmt 0
	li	s0,-1
.L1:
	.loc 1 45 1
	lw	ra,44(sp)
	.cfi_restore 1
	mv	a0,s0
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
	lw	s3,28(sp)
	.cfi_restore 19
.LVL10:
	lw	s4,24(sp)
	.cfi_restore 20
.LVL11:
	lw	s5,20(sp)
	.cfi_restore 21
.LVL12:
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	aos_register_driver, .-aos_register_driver
	.section	.text.aos_unregister_driver,"ax",@progbits
	.align	1
	.globl	aos_unregister_driver
	.type	aos_unregister_driver, @function
aos_unregister_driver:
.LFB2:
	.loc 1 48 1 is_stmt 1
	.cfi_startproc
.LVL13:
	.loc 1 49 5
	.loc 1 51 5
	.loc 1 48 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s2,0(sp)
	.cfi_offset 18, -16
	.loc 1 51 33
	lui	s2,%hi(g_vfs_mutex)
	.loc 1 48 1
	sw	s0,8(sp)
	.cfi_offset 8, -8
	mv	s0,a0
	.loc 1 51 33
	lw	a0,%lo(g_vfs_mutex)(s2)
.LVL14:
	li	a1,-1
	.loc 1 48 1
	sw	ra,12(sp)
	sw	s1,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.loc 1 51 33
	call	xQueueSemaphoreTake
.LVL15:
	.loc 1 51 8
	li	a5,1
	bne	a0,a5,.L11
	mv	s1,a0
	.loc 1 56 5 is_stmt 1
	.loc 1 56 11 is_stmt 0
	mv	a0,s0
	call	inode_release
.LVL16:
	mv	s0,a0
.LVL17:
	.loc 1 58 5 is_stmt 1
	.loc 1 58 33 is_stmt 0
	lw	a0,%lo(g_vfs_mutex)(s2)
	li	a3,0
	li	a2,0
	li	a1,0
	call	xQueueGenericSend
.LVL18:
	.loc 1 58 8
	beq	a0,s1,.L10
.LVL19:
.L11:
	.loc 1 59 9 is_stmt 1
	.loc 1 60 9
	.loc 1 60 16 is_stmt 0
	li	s0,-1
.LVL20:
.L10:
	.loc 1 64 1
	lw	ra,12(sp)
	.cfi_restore 1
	mv	a0,s0
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
.LFE2:
	.size	aos_unregister_driver, .-aos_unregister_driver
	.section	.text.aos_register_fs,"ax",@progbits
	.align	1
	.globl	aos_register_fs
	.type	aos_register_fs, @function
aos_register_fs:
.LFB3:
	.loc 1 67 1 is_stmt 1
	.cfi_startproc
.LVL21:
	.loc 1 68 5
	.loc 1 67 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s1,36(sp)
	.cfi_offset 9, -12
	.loc 1 71 33
	lui	s1,%hi(g_vfs_mutex)
	.loc 1 67 1
	sw	s4,24(sp)
	.cfi_offset 20, -24
	mv	s4,a0
	.loc 1 71 33
	lw	a0,%lo(g_vfs_mutex)(s1)
.LVL22:
	.loc 1 67 1
	sw	s3,28(sp)
	.cfi_offset 19, -20
	mv	s3,a1
	.loc 1 71 33
	li	a1,-1
.LVL23:
	.loc 1 67 1
	sw	s2,32(sp)
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 67 1
	mv	s2,a2
	.loc 1 68 14
	sw	zero,12(sp)
	.loc 1 69 5 is_stmt 1
	.loc 1 71 5
	.loc 1 71 33 is_stmt 0
	call	xQueueSemaphoreTake
.LVL24:
	.loc 1 71 8
	li	a5,1
	bne	a0,a5,.L18
	.loc 1 76 5 is_stmt 1
	.loc 1 76 11 is_stmt 0
	addi	a1,sp,12
	mv	a0,s4
	call	inode_reserve
.LVL25:
	mv	s0,a0
.LVL26:
	.loc 1 77 5 is_stmt 1
	.loc 1 77 8 is_stmt 0
	bne	a0,zero,.L16
	.loc 1 78 9 is_stmt 1
	.loc 1 78 14
	.loc 1 78 20 is_stmt 0
	lw	a5,12(sp)
	.loc 1 78 27
	li	a4,3
	.loc 1 80 26
	sw	s3,0(a5)
	.loc 1 78 27
	sb	a4,16(a5)
	.loc 1 78 55 is_stmt 1
	.loc 1 80 9
	.loc 1 81 9
	.loc 1 81 21 is_stmt 0
	lw	a5,12(sp)
	sw	s2,4(a5)
.L16:
	.loc 1 84 5 is_stmt 1
	.loc 1 84 33 is_stmt 0
	lw	a0,%lo(g_vfs_mutex)(s1)
	li	a3,0
	li	a2,0
	li	a1,0
	call	xQueueGenericSend
.LVL27:
	.loc 1 84 8
	li	a5,1
	beq	a0,a5,.L14
	.loc 1 85 9 is_stmt 1
.LVL28:
	.loc 1 86 9
	.loc 1 86 17 is_stmt 0
	lw	a5,12(sp)
	lw	a0,8(a5)
	.loc 1 86 12
	beq	a0,zero,.L17
	.loc 1 87 13 is_stmt 1
	call	vPortFree
.LVL29:
.L17:
	.loc 1 90 9
	lw	a0,12(sp)
	li	a2,20
	li	a1,0
	call	memset
.LVL30:
	.loc 1 91 9
.L18:
	.loc 1 73 16 is_stmt 0
	li	s0,-1
.L14:
	.loc 1 95 1
	lw	ra,44(sp)
	.cfi_restore 1
	mv	a0,s0
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
.LVL31:
	lw	s3,28(sp)
	.cfi_restore 19
.LVL32:
	lw	s4,24(sp)
	.cfi_restore 20
.LVL33:
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	aos_register_fs, .-aos_register_fs
	.section	.text.aos_unregister_fs,"ax",@progbits
	.align	1
	.globl	aos_unregister_fs
	.type	aos_unregister_fs, @function
aos_unregister_fs:
.LFB6:
	.cfi_startproc
	tail	aos_unregister_driver
	.cfi_endproc
.LFE6:
	.size	aos_unregister_fs, .-aos_unregister_fs
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/semphr.h"
	.file 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timeval.h"
	.file 10 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timespec.h"
	.file 11 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h"
	.file 12 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/stat.h"
	.file 13 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/fs/vfs/include/vfs_dir.h"
	.file 14 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/fs/vfs/include/vfs_inode.h"
	.file 15 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h"
	.file 16 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xc26
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF130
	.byte	0xc
	.4byte	.LASF131
	.4byte	.LASF132
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF6
	.byte	0x2
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
	.byte	0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x4f
	.byte	0x1b
	.4byte	0x6e
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.byte	0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0xc8
	.byte	0x17
	.4byte	0x75
	.byte	0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x1e
	.byte	0xe
	.4byte	0x5b
	.byte	0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x22
	.byte	0xe
	.4byte	0x5b
	.byte	0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x2e
	.byte	0xe
	.4byte	0x5b
	.byte	0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x38
	.byte	0xf
	.4byte	0x4d
	.byte	0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x3c
	.byte	0x18
	.4byte	0x54
	.byte	0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x3f
	.byte	0x18
	.4byte	0x54
	.byte	0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x4b
	.byte	0x18
	.4byte	0x54
	.byte	0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x5a
	.byte	0x14
	.4byte	0x62
	.byte	0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x66
	.byte	0x10
	.4byte	0xa7
	.byte	0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0x93
	.byte	0x14
	.4byte	0x25
	.byte	0x5
	.byte	0x4
	.byte	0x3
	.4byte	.LASF22
	.byte	0x4
	.byte	0xd1
	.byte	0x18
	.4byte	0x54
	.byte	0x6
	.byte	0x4
	.4byte	0x11b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF23
	.byte	0x7
	.4byte	0x11b
	.byte	0x6
	.byte	0x4
	.4byte	0x122
	.byte	0x3
	.4byte	.LASF24
	.byte	0x5
	.byte	0x28
	.byte	0x12
	.4byte	0x5b
	.byte	0x3
	.4byte	.LASF25
	.byte	0x5
	.byte	0x2e
	.byte	0x17
	.4byte	0x46
	.byte	0x3
	.4byte	.LASF26
	.byte	0x5
	.byte	0x34
	.byte	0x1b
	.4byte	0x6e
	.byte	0x3
	.4byte	.LASF27
	.byte	0x6
	.byte	0x3f
	.byte	0x11
	.4byte	0x12d
	.byte	0x3
	.4byte	.LASF28
	.byte	0x6
	.byte	0x41
	.byte	0x12
	.4byte	0x145
	.byte	0x3
	.4byte	.LASF29
	.byte	0x7
	.byte	0x30
	.byte	0x22
	.4byte	0x175
	.byte	0x6
	.byte	0x4
	.4byte	0x17b
	.byte	0x8
	.4byte	.LASF117
	.byte	0x3
	.4byte	.LASF30
	.byte	0x8
	.byte	0x25
	.byte	0x17
	.4byte	0x169
	.byte	0x3
	.4byte	.LASF31
	.byte	0x9
	.byte	0x2a
	.byte	0x19
	.4byte	0x83
	.byte	0x9
	.4byte	.LASF44
	.byte	0x10
	.byte	0xa
	.byte	0x2f
	.byte	0x8
	.4byte	0x1c0
	.byte	0xa
	.4byte	.LASF32
	.byte	0xa
	.byte	0x30
	.byte	0x9
	.4byte	0x18c
	.byte	0
	.byte	0xa
	.4byte	.LASF33
	.byte	0xa
	.byte	0x31
	.byte	0x7
	.4byte	0x5b
	.byte	0x8
	.byte	0
	.byte	0x3
	.4byte	.LASF34
	.byte	0xb
	.byte	0x61
	.byte	0x14
	.4byte	0x8f
	.byte	0x3
	.4byte	.LASF35
	.byte	0xb
	.byte	0x66
	.byte	0x15
	.4byte	0x9b
	.byte	0x3
	.4byte	.LASF36
	.byte	0xb
	.byte	0x8b
	.byte	0x11
	.4byte	0xd7
	.byte	0x3
	.4byte	.LASF37
	.byte	0xb
	.byte	0x9d
	.byte	0x11
	.4byte	0xef
	.byte	0x3
	.4byte	.LASF38
	.byte	0xb
	.byte	0xa1
	.byte	0x11
	.4byte	0xb3
	.byte	0x3
	.4byte	.LASF39
	.byte	0xb
	.byte	0xa5
	.byte	0x11
	.4byte	0xbf
	.byte	0x3
	.4byte	.LASF40
	.byte	0xb
	.byte	0xa9
	.byte	0x11
	.4byte	0xcb
	.byte	0x3
	.4byte	.LASF41
	.byte	0xb
	.byte	0xb8
	.byte	0x12
	.4byte	0xfb
	.byte	0x3
	.4byte	.LASF42
	.byte	0xb
	.byte	0xbd
	.byte	0x12
	.4byte	0xe3
	.byte	0x3
	.4byte	.LASF43
	.byte	0xb
	.byte	0xc2
	.byte	0x13
	.4byte	0x109
	.byte	0x9
	.4byte	.LASF45
	.byte	0x58
	.byte	0xc
	.byte	0x1b
	.byte	0x8
	.4byte	0x2fc
	.byte	0xa
	.4byte	.LASF46
	.byte	0xc
	.byte	0x1d
	.byte	0x9
	.4byte	0x1f0
	.byte	0
	.byte	0xa
	.4byte	.LASF47
	.byte	0xc
	.byte	0x1e
	.byte	0x9
	.4byte	0x1d8
	.byte	0x2
	.byte	0xa
	.4byte	.LASF48
	.byte	0xc
	.byte	0x1f
	.byte	0xa
	.4byte	0x220
	.byte	0x4
	.byte	0xa
	.4byte	.LASF49
	.byte	0xc
	.byte	0x20
	.byte	0xb
	.4byte	0x22c
	.byte	0x8
	.byte	0xa
	.4byte	.LASF50
	.byte	0xc
	.byte	0x21
	.byte	0x9
	.4byte	0x1fc
	.byte	0xa
	.byte	0xa
	.4byte	.LASF51
	.byte	0xc
	.byte	0x22
	.byte	0x9
	.4byte	0x208
	.byte	0xc
	.byte	0xa
	.4byte	.LASF52
	.byte	0xc
	.byte	0x23
	.byte	0x9
	.4byte	0x1f0
	.byte	0xe
	.byte	0xa
	.4byte	.LASF53
	.byte	0xc
	.byte	0x24
	.byte	0x9
	.4byte	0x1e4
	.byte	0x10
	.byte	0xa
	.4byte	.LASF54
	.byte	0xc
	.byte	0x2a
	.byte	0x13
	.4byte	0x198
	.byte	0x18
	.byte	0xa
	.4byte	.LASF55
	.byte	0xc
	.byte	0x2b
	.byte	0x13
	.4byte	0x198
	.byte	0x28
	.byte	0xa
	.4byte	.LASF56
	.byte	0xc
	.byte	0x2c
	.byte	0x13
	.4byte	0x198
	.byte	0x38
	.byte	0xa
	.4byte	.LASF57
	.byte	0xc
	.byte	0x2d
	.byte	0xd
	.4byte	0x1cc
	.byte	0x48
	.byte	0xa
	.4byte	.LASF58
	.byte	0xc
	.byte	0x2e
	.byte	0xc
	.4byte	0x1c0
	.byte	0x4c
	.byte	0xa
	.4byte	.LASF59
	.byte	0xc
	.byte	0x30
	.byte	0x8
	.4byte	0x2fc
	.byte	0x50
	.byte	0
	.byte	0xb
	.4byte	0x5b
	.4byte	0x30c
	.byte	0xc
	.4byte	0x38
	.byte	0x1
	.byte	0
	.byte	0x9
	.4byte	.LASF60
	.byte	0x24
	.byte	0xd
	.byte	0x4
	.byte	0x8
	.4byte	0x38f
	.byte	0xa
	.4byte	.LASF61
	.byte	0xd
	.byte	0x5
	.byte	0xa
	.4byte	0x5b
	.byte	0
	.byte	0xa
	.4byte	.LASF62
	.byte	0xd
	.byte	0x6
	.byte	0xa
	.4byte	0x5b
	.byte	0x4
	.byte	0xa
	.4byte	.LASF63
	.byte	0xd
	.byte	0x7
	.byte	0xa
	.4byte	0x5b
	.byte	0x8
	.byte	0xa
	.4byte	.LASF64
	.byte	0xd
	.byte	0x8
	.byte	0xa
	.4byte	0x5b
	.byte	0xc
	.byte	0xa
	.4byte	.LASF65
	.byte	0xd
	.byte	0x9
	.byte	0xa
	.4byte	0x5b
	.byte	0x10
	.byte	0xa
	.4byte	.LASF66
	.byte	0xd
	.byte	0xa
	.byte	0xa
	.4byte	0x5b
	.byte	0x14
	.byte	0xa
	.4byte	.LASF67
	.byte	0xd
	.byte	0xb
	.byte	0xa
	.4byte	0x5b
	.byte	0x18
	.byte	0xa
	.4byte	.LASF68
	.byte	0xd
	.byte	0xc
	.byte	0xa
	.4byte	0x5b
	.byte	0x1c
	.byte	0xa
	.4byte	.LASF69
	.byte	0xd
	.byte	0xd
	.byte	0xa
	.4byte	0x5b
	.byte	0x20
	.byte	0
	.byte	0xd
	.byte	0x8
	.byte	0xd
	.byte	0x10
	.byte	0x9
	.4byte	0x3c0
	.byte	0xa
	.4byte	.LASF70
	.byte	0xd
	.byte	0x11
	.byte	0x9
	.4byte	0x25
	.byte	0
	.byte	0xa
	.4byte	.LASF71
	.byte	0xd
	.byte	0x12
	.byte	0xd
	.4byte	0x139
	.byte	0x4
	.byte	0xa
	.4byte	.LASF72
	.byte	0xd
	.byte	0x13
	.byte	0xa
	.4byte	0x3c0
	.byte	0x5
	.byte	0
	.byte	0xb
	.4byte	0x11b
	.4byte	0x3cf
	.byte	0xe
	.4byte	0x38
	.byte	0
	.byte	0x3
	.4byte	.LASF73
	.byte	0xd
	.byte	0x14
	.byte	0x3
	.4byte	0x38f
	.byte	0xd
	.byte	0x8
	.byte	0xd
	.byte	0x16
	.byte	0x9
	.4byte	0x3ff
	.byte	0xa
	.4byte	.LASF74
	.byte	0xd
	.byte	0x17
	.byte	0x9
	.4byte	0x25
	.byte	0
	.byte	0xa
	.4byte	.LASF75
	.byte	0xd
	.byte	0x18
	.byte	0x9
	.4byte	0x25
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF76
	.byte	0xd
	.byte	0x19
	.byte	0x3
	.4byte	0x3db
	.byte	0xf
	.byte	0x7
	.byte	0x4
	.4byte	0x38
	.byte	0xe
	.byte	0x12
	.byte	0x6
	.4byte	0x432
	.byte	0x10
	.4byte	.LASF77
	.byte	0
	.byte	0x10
	.4byte	.LASF78
	.byte	0x1
	.byte	0x10
	.4byte	.LASF79
	.byte	0x2
	.byte	0x10
	.4byte	.LASF80
	.byte	0x3
	.byte	0
	.byte	0x3
	.4byte	.LASF81
	.byte	0xe
	.byte	0x2c
	.byte	0x1f
	.4byte	0x4a7
	.byte	0x9
	.4byte	.LASF82
	.byte	0x1c
	.byte	0xe
	.byte	0x47
	.byte	0x8
	.4byte	0x4a7
	.byte	0xa
	.4byte	.LASF83
	.byte	0xe
	.byte	0x48
	.byte	0xb
	.4byte	0x6fb
	.byte	0
	.byte	0xa
	.4byte	.LASF84
	.byte	0xe
	.byte	0x49
	.byte	0xb
	.4byte	0x710
	.byte	0x4
	.byte	0xa
	.4byte	.LASF85
	.byte	0xe
	.byte	0x4a
	.byte	0xf
	.4byte	0x72f
	.byte	0x8
	.byte	0xa
	.4byte	.LASF86
	.byte	0xe
	.byte	0x4b
	.byte	0xf
	.4byte	0x755
	.byte	0xc
	.byte	0xa
	.4byte	.LASF87
	.byte	0xe
	.byte	0x4c
	.byte	0xb
	.4byte	0x774
	.byte	0x10
	.byte	0xa
	.4byte	.LASF88
	.byte	0xe
	.byte	0x4e
	.byte	0xb
	.4byte	0x7a4
	.byte	0x14
	.byte	0xa
	.4byte	.LASF89
	.byte	0xe
	.byte	0x50
	.byte	0xb
	.4byte	0x710
	.byte	0x18
	.byte	0
	.byte	0x7
	.4byte	0x43e
	.byte	0x3
	.4byte	.LASF90
	.byte	0xe
	.byte	0x2d
	.byte	0x1d
	.4byte	0x5ca
	.byte	0x9
	.4byte	.LASF91
	.byte	0x50
	.byte	0xe
	.byte	0x53
	.byte	0x8
	.4byte	0x5ca
	.byte	0xa
	.4byte	.LASF83
	.byte	0xe
	.byte	0x54
	.byte	0xb
	.4byte	0x7c3
	.byte	0
	.byte	0xa
	.4byte	.LASF84
	.byte	0xe
	.byte	0x55
	.byte	0xb
	.4byte	0x710
	.byte	0x4
	.byte	0xa
	.4byte	.LASF85
	.byte	0xe
	.byte	0x56
	.byte	0xf
	.4byte	0x7e2
	.byte	0x8
	.byte	0xa
	.4byte	.LASF86
	.byte	0xe
	.byte	0x57
	.byte	0xf
	.4byte	0x801
	.byte	0xc
	.byte	0xa
	.4byte	.LASF92
	.byte	0xe
	.byte	0x58
	.byte	0xd
	.4byte	0x820
	.byte	0x10
	.byte	0xa
	.4byte	.LASF89
	.byte	0xe
	.byte	0x59
	.byte	0xb
	.4byte	0x710
	.byte	0x14
	.byte	0xa
	.4byte	.LASF45
	.byte	0xe
	.byte	0x5a
	.byte	0xb
	.4byte	0x845
	.byte	0x18
	.byte	0xa
	.4byte	.LASF93
	.byte	0xe
	.byte	0x5b
	.byte	0xb
	.4byte	0x85f
	.byte	0x1c
	.byte	0xa
	.4byte	.LASF94
	.byte	0xe
	.byte	0x5c
	.byte	0xb
	.4byte	0x87e
	.byte	0x20
	.byte	0xa
	.4byte	.LASF95
	.byte	0xe
	.byte	0x5d
	.byte	0x12
	.4byte	0x89e
	.byte	0x24
	.byte	0xa
	.4byte	.LASF96
	.byte	0xe
	.byte	0x5e
	.byte	0x15
	.4byte	0x8be
	.byte	0x28
	.byte	0xa
	.4byte	.LASF97
	.byte	0xe
	.byte	0x5f
	.byte	0xb
	.4byte	0x8d8
	.byte	0x2c
	.byte	0xa
	.4byte	.LASF98
	.byte	0xe
	.byte	0x60
	.byte	0xb
	.4byte	0x85f
	.byte	0x30
	.byte	0xa
	.4byte	.LASF99
	.byte	0xe
	.byte	0x61
	.byte	0xb
	.4byte	0x85f
	.byte	0x34
	.byte	0xa
	.4byte	.LASF100
	.byte	0xe
	.byte	0x62
	.byte	0xc
	.4byte	0x8ee
	.byte	0x38
	.byte	0xa
	.4byte	.LASF101
	.byte	0xe
	.byte	0x63
	.byte	0xc
	.4byte	0x908
	.byte	0x3c
	.byte	0xa
	.4byte	.LASF102
	.byte	0xe
	.byte	0x64
	.byte	0xc
	.4byte	0x923
	.byte	0x40
	.byte	0xa
	.4byte	.LASF87
	.byte	0xe
	.byte	0x65
	.byte	0xb
	.4byte	0x774
	.byte	0x44
	.byte	0xa
	.4byte	.LASF60
	.byte	0xe
	.byte	0x66
	.byte	0xb
	.4byte	0x948
	.byte	0x48
	.byte	0xa
	.4byte	.LASF103
	.byte	0xe
	.byte	0x67
	.byte	0xb
	.4byte	0x7c3
	.byte	0x4c
	.byte	0
	.byte	0x7
	.4byte	0x4b8
	.byte	0x11
	.4byte	.LASF133
	.byte	0x4
	.byte	0xe
	.byte	0x2f
	.byte	0x7
	.4byte	0x5f5
	.byte	0x12
	.4byte	.LASF104
	.byte	0xe
	.byte	0x30
	.byte	0x17
	.4byte	0x5f5
	.byte	0x12
	.4byte	.LASF105
	.byte	0xe
	.byte	0x31
	.byte	0x15
	.4byte	0x5fb
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x432
	.byte	0x6
	.byte	0x4
	.4byte	0x4ac
	.byte	0xd
	.byte	0x14
	.byte	0xe
	.byte	0x35
	.byte	0x9
	.4byte	0x659
	.byte	0x13
	.string	"ops"
	.byte	0xe
	.byte	0x36
	.byte	0x17
	.4byte	0x5cf
	.byte	0
	.byte	0xa
	.4byte	.LASF106
	.byte	0xe
	.byte	0x37
	.byte	0xb
	.4byte	0x107
	.byte	0x4
	.byte	0xa
	.4byte	.LASF107
	.byte	0xe
	.byte	0x38
	.byte	0xb
	.4byte	0x115
	.byte	0x8
	.byte	0xa
	.4byte	.LASF108
	.byte	0xe
	.byte	0x39
	.byte	0x9
	.4byte	0x25
	.byte	0xc
	.byte	0xa
	.4byte	.LASF109
	.byte	0xe
	.byte	0x3a
	.byte	0xd
	.4byte	0x139
	.byte	0x10
	.byte	0xa
	.4byte	.LASF110
	.byte	0xe
	.byte	0x3b
	.byte	0xd
	.4byte	0x139
	.byte	0x11
	.byte	0
	.byte	0x3
	.4byte	.LASF111
	.byte	0xe
	.byte	0x3c
	.byte	0x3
	.4byte	0x601
	.byte	0xd
	.byte	0x10
	.byte	0xe
	.byte	0x3e
	.byte	0x9
	.4byte	0x6a2
	.byte	0xa
	.4byte	.LASF112
	.byte	0xe
	.byte	0x3f
	.byte	0xe
	.4byte	0x6a2
	.byte	0
	.byte	0xa
	.4byte	.LASF113
	.byte	0xe
	.byte	0x40
	.byte	0xb
	.4byte	0x107
	.byte	0x4
	.byte	0xa
	.4byte	.LASF114
	.byte	0xe
	.byte	0x41
	.byte	0xc
	.4byte	0x2c
	.byte	0x8
	.byte	0x13
	.string	"fd"
	.byte	0xe
	.byte	0x42
	.byte	0x9
	.4byte	0x25
	.byte	0xc
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x659
	.byte	0x3
	.4byte	.LASF115
	.byte	0xe
	.byte	0x43
	.byte	0x3
	.4byte	0x665
	.byte	0x3
	.4byte	.LASF116
	.byte	0xe
	.byte	0x46
	.byte	0x10
	.4byte	0x6c0
	.byte	0x6
	.byte	0x4
	.4byte	0x6c6
	.byte	0x14
	.4byte	0x6d6
	.byte	0x15
	.4byte	0x6d6
	.byte	0x15
	.4byte	0x107
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x6dc
	.byte	0x8
	.4byte	.LASF118
	.byte	0x16
	.4byte	0x25
	.4byte	0x6f5
	.byte	0x15
	.4byte	0x6a2
	.byte	0x15
	.4byte	0x6f5
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x6a8
	.byte	0x6
	.byte	0x4
	.4byte	0x6e1
	.byte	0x16
	.4byte	0x25
	.4byte	0x710
	.byte	0x15
	.4byte	0x6f5
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x701
	.byte	0x16
	.4byte	0x214
	.4byte	0x72f
	.byte	0x15
	.4byte	0x6f5
	.byte	0x15
	.4byte	0x107
	.byte	0x15
	.4byte	0x2c
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x716
	.byte	0x16
	.4byte	0x214
	.4byte	0x74e
	.byte	0x15
	.4byte	0x6f5
	.byte	0x15
	.4byte	0x74e
	.byte	0x15
	.4byte	0x2c
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x754
	.byte	0x17
	.byte	0x6
	.byte	0x4
	.4byte	0x735
	.byte	0x16
	.4byte	0x25
	.4byte	0x774
	.byte	0x15
	.4byte	0x6f5
	.byte	0x15
	.4byte	0x25
	.byte	0x15
	.4byte	0x6e
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x75b
	.byte	0x16
	.4byte	0x25
	.4byte	0x79d
	.byte	0x15
	.4byte	0x6f5
	.byte	0x15
	.4byte	0x79d
	.byte	0x15
	.4byte	0x6b4
	.byte	0x15
	.4byte	0x6d6
	.byte	0x15
	.4byte	0x107
	.byte	0
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF119
	.byte	0x6
	.byte	0x4
	.4byte	0x77a
	.byte	0x16
	.4byte	0x25
	.4byte	0x7c3
	.byte	0x15
	.4byte	0x6f5
	.byte	0x15
	.4byte	0x127
	.byte	0x15
	.4byte	0x25
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x7aa
	.byte	0x16
	.4byte	0x214
	.4byte	0x7e2
	.byte	0x15
	.4byte	0x6f5
	.byte	0x15
	.4byte	0x115
	.byte	0x15
	.4byte	0x2c
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x7c9
	.byte	0x16
	.4byte	0x214
	.4byte	0x801
	.byte	0x15
	.4byte	0x6f5
	.byte	0x15
	.4byte	0x127
	.byte	0x15
	.4byte	0x2c
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x7e8
	.byte	0x16
	.4byte	0x1e4
	.4byte	0x820
	.byte	0x15
	.4byte	0x6f5
	.byte	0x15
	.4byte	0x1e4
	.byte	0x15
	.4byte	0x25
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x807
	.byte	0x16
	.4byte	0x25
	.4byte	0x83f
	.byte	0x15
	.4byte	0x6f5
	.byte	0x15
	.4byte	0x127
	.byte	0x15
	.4byte	0x83f
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x238
	.byte	0x6
	.byte	0x4
	.4byte	0x826
	.byte	0x16
	.4byte	0x25
	.4byte	0x85f
	.byte	0x15
	.4byte	0x6f5
	.byte	0x15
	.4byte	0x127
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x84b
	.byte	0x16
	.4byte	0x25
	.4byte	0x87e
	.byte	0x15
	.4byte	0x6f5
	.byte	0x15
	.4byte	0x127
	.byte	0x15
	.4byte	0x127
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x865
	.byte	0x16
	.4byte	0x898
	.4byte	0x898
	.byte	0x15
	.4byte	0x6f5
	.byte	0x15
	.4byte	0x127
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x3ff
	.byte	0x6
	.byte	0x4
	.4byte	0x884
	.byte	0x16
	.4byte	0x8b8
	.4byte	0x8b8
	.byte	0x15
	.4byte	0x6f5
	.byte	0x15
	.4byte	0x898
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x3cf
	.byte	0x6
	.byte	0x4
	.4byte	0x8a4
	.byte	0x16
	.4byte	0x25
	.4byte	0x8d8
	.byte	0x15
	.4byte	0x6f5
	.byte	0x15
	.4byte	0x898
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x8c4
	.byte	0x14
	.4byte	0x8ee
	.byte	0x15
	.4byte	0x6f5
	.byte	0x15
	.4byte	0x898
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x8de
	.byte	0x16
	.4byte	0x5b
	.4byte	0x908
	.byte	0x15
	.4byte	0x6f5
	.byte	0x15
	.4byte	0x898
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x8f4
	.byte	0x14
	.4byte	0x923
	.byte	0x15
	.4byte	0x6f5
	.byte	0x15
	.4byte	0x898
	.byte	0x15
	.4byte	0x5b
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x90e
	.byte	0x16
	.4byte	0x25
	.4byte	0x942
	.byte	0x15
	.4byte	0x6f5
	.byte	0x15
	.4byte	0x127
	.byte	0x15
	.4byte	0x942
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x30c
	.byte	0x6
	.byte	0x4
	.4byte	0x929
	.byte	0x18
	.4byte	.LASF134
	.byte	0x1
	.byte	0xc
	.byte	0x1a
	.4byte	0x180
	.byte	0x19
	.4byte	.LASF135
	.byte	0x1
	.byte	0x61
	.byte	0x5
	.4byte	0x25
	.4byte	0x98f
	.byte	0x1a
	.4byte	.LASF120
	.byte	0x1
	.byte	0x61
	.byte	0x23
	.4byte	0x127
	.byte	0x1b
	.string	"err"
	.byte	0x1
	.byte	0x63
	.byte	0x9
	.4byte	0x25
	.byte	0x1b
	.string	"ret"
	.byte	0x1
	.byte	0x63
	.byte	0xe
	.4byte	0x25
	.byte	0
	.byte	0x1c
	.4byte	.LASF121
	.byte	0x1
	.byte	0x42
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0xa71
	.byte	0x1d
	.4byte	.LASF120
	.byte	0x1
	.byte	0x42
	.byte	0x21
	.4byte	0x127
	.4byte	.LLST8
	.byte	0x1e
	.string	"ops"
	.byte	0x1
	.byte	0x42
	.byte	0x31
	.4byte	0x5fb
	.4byte	.LLST9
	.byte	0x1e
	.string	"arg"
	.byte	0x1
	.byte	0x42
	.byte	0x3c
	.4byte	0x107
	.4byte	.LLST10
	.byte	0x1f
	.4byte	.LASF112
	.byte	0x1
	.byte	0x44
	.byte	0xe
	.4byte	0x6a2
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x20
	.string	"err"
	.byte	0x1
	.byte	0x45
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST11
	.byte	0x20
	.string	"ret"
	.byte	0x1
	.byte	0x45
	.byte	0xe
	.4byte	0x25
	.4byte	.LLST12
	.byte	0x21
	.4byte	.LVL24
	.4byte	0xbdf
	.4byte	0xa1c
	.byte	0x22
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0x21
	.4byte	.LVL25
	.4byte	0xbec
	.4byte	0xa36
	.byte	0x22
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x22
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0
	.byte	0x21
	.4byte	.LVL27
	.4byte	0xbf8
	.4byte	0xa53
	.byte	0x22
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x22
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0x22
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x23
	.4byte	.LVL29
	.4byte	0xc05
	.byte	0x24
	.4byte	.LVL30
	.4byte	0xc11
	.byte	0x22
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x22
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x44
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LASF122
	.byte	0x1
	.byte	0x2f
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0xafd
	.byte	0x1d
	.4byte	.LASF120
	.byte	0x1
	.byte	0x2f
	.byte	0x27
	.4byte	0x127
	.4byte	.LLST5
	.byte	0x20
	.string	"err"
	.byte	0x1
	.byte	0x31
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST6
	.byte	0x20
	.string	"ret"
	.byte	0x1
	.byte	0x31
	.byte	0xe
	.4byte	0x25
	.4byte	.LLST7
	.byte	0x21
	.4byte	.LVL15
	.4byte	0xbdf
	.4byte	0xacf
	.byte	0x22
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0x21
	.4byte	.LVL16
	.4byte	0xc1d
	.4byte	0xae3
	.byte	0x22
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	.LVL18
	.4byte	0xbf8
	.byte	0x22
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x22
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0x22
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LASF123
	.byte	0x1
	.byte	0xe
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.4byte	0xbdf
	.byte	0x1d
	.4byte	.LASF120
	.byte	0x1
	.byte	0xe
	.byte	0x25
	.4byte	0x127
	.4byte	.LLST0
	.byte	0x1e
	.string	"ops"
	.byte	0x1
	.byte	0xe
	.byte	0x37
	.4byte	0x5f5
	.4byte	.LLST1
	.byte	0x1e
	.string	"arg"
	.byte	0x1
	.byte	0xe
	.byte	0x42
	.4byte	0x107
	.4byte	.LLST2
	.byte	0x1f
	.4byte	.LASF112
	.byte	0x1
	.byte	0x10
	.byte	0xe
	.4byte	0x6a2
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x20
	.string	"err"
	.byte	0x1
	.byte	0x11
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST3
	.byte	0x20
	.string	"ret"
	.byte	0x1
	.byte	0x11
	.byte	0xe
	.4byte	0x25
	.4byte	.LLST4
	.byte	0x21
	.4byte	.LVL3
	.4byte	0xbdf
	.4byte	0xb8a
	.byte	0x22
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0x21
	.4byte	.LVL4
	.4byte	0xbec
	.4byte	0xba4
	.byte	0x22
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x22
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0
	.byte	0x21
	.4byte	.LVL6
	.4byte	0xbf8
	.4byte	0xbc1
	.byte	0x22
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x22
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0x22
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x23
	.4byte	.LVL8
	.4byte	0xc05
	.byte	0x24
	.4byte	.LVL9
	.4byte	0xc11
	.byte	0x22
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x22
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x44
	.byte	0
	.byte	0
	.byte	0x25
	.4byte	.LASF124
	.4byte	.LASF124
	.byte	0x7
	.2byte	0x58a
	.byte	0xc
	.byte	0x26
	.4byte	.LASF125
	.4byte	.LASF125
	.byte	0xe
	.byte	0x73
	.byte	0x5
	.byte	0x25
	.4byte	.LASF126
	.4byte	.LASF126
	.byte	0x7
	.2byte	0x28a
	.byte	0xc
	.byte	0x26
	.4byte	.LASF127
	.4byte	.LASF127
	.byte	0xf
	.byte	0x94
	.byte	0x6
	.byte	0x26
	.4byte	.LASF128
	.4byte	.LASF128
	.byte	0x10
	.byte	0x21
	.byte	0x8
	.byte	0x26
	.4byte	.LASF129
	.4byte	.LASF129
	.byte	0xe
	.byte	0x74
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
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
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
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
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0x10
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x14
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
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
	.byte	0x17
	.byte	0x26
	.byte	0
	.byte	0
	.byte	0
	.byte	0x18
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
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
	.byte	0
	.byte	0
	.byte	0x1c
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
	.byte	0x1d
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
	.byte	0x1e
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
	.byte	0x1f
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
	.byte	0x20
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
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x23
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x24
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST8:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL22
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL33
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL23
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL32
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL21
	.4byte	.LVL24-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL24-1
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL31
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL26
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL17
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL17
	.4byte	.LVL19
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
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL12
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL11
	.4byte	.LFE1
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
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL10
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x58
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF124:
	.string	"xQueueSemaphoreTake"
.LASF73:
	.string	"aos_dirent_t"
.LASF111:
	.string	"inode_t"
.LASF76:
	.string	"aos_dir_t"
.LASF0:
	.string	"unsigned int"
.LASF57:
	.string	"st_blksize"
.LASF110:
	.string	"refs"
.LASF95:
	.string	"opendir"
.LASF89:
	.string	"sync"
.LASF22:
	.string	"__nlink_t"
.LASF67:
	.string	"f_ffree"
.LASF79:
	.string	"VFS_TYPE_BLOCK_DEV"
.LASF107:
	.string	"i_name"
.LASF72:
	.string	"d_name"
.LASF130:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF18:
	.string	"__ino_t"
.LASF36:
	.string	"ino_t"
.LASF26:
	.string	"uint32_t"
.LASF101:
	.string	"telldir"
.LASF106:
	.string	"i_arg"
.LASF117:
	.string	"QueueDefinition"
.LASF93:
	.string	"unlink"
.LASF10:
	.string	"long long unsigned int"
.LASF58:
	.string	"st_blocks"
.LASF129:
	.string	"inode_release"
.LASF114:
	.string	"offset"
.LASF113:
	.string	"f_arg"
.LASF105:
	.string	"i_fops"
.LASF45:
	.string	"stat"
.LASF46:
	.string	"st_dev"
.LASF33:
	.string	"tv_nsec"
.LASF6:
	.string	"size_t"
.LASF134:
	.string	"g_vfs_mutex"
.LASF19:
	.string	"__mode_t"
.LASF71:
	.string	"d_type"
.LASF119:
	.string	"_Bool"
.LASF51:
	.string	"st_gid"
.LASF100:
	.string	"rewinddir"
.LASF48:
	.string	"st_mode"
.LASF98:
	.string	"mkdir"
.LASF115:
	.string	"file_t"
.LASF132:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/vfs"
.LASF49:
	.string	"st_nlink"
.LASF120:
	.string	"path"
.LASF133:
	.string	"inode_ops_t"
.LASF126:
	.string	"xQueueGenericSend"
.LASF87:
	.string	"ioctl"
.LASF80:
	.string	"VFS_TYPE_FS_DEV"
.LASF88:
	.string	"poll"
.LASF44:
	.string	"timespec"
.LASF23:
	.string	"char"
.LASF34:
	.string	"blkcnt_t"
.LASF78:
	.string	"VFS_TYPE_CHAR_DEV"
.LASF116:
	.string	"poll_notify_t"
.LASF84:
	.string	"close"
.LASF29:
	.string	"QueueHandle_t"
.LASF41:
	.string	"ssize_t"
.LASF92:
	.string	"lseek"
.LASF25:
	.string	"uint8_t"
.LASF109:
	.string	"type"
.LASF31:
	.string	"time_t"
.LASF91:
	.string	"fs_ops"
.LASF60:
	.string	"statfs"
.LASF47:
	.string	"st_ino"
.LASF66:
	.string	"f_files"
.LASF9:
	.string	"long long int"
.LASF86:
	.string	"write"
.LASF61:
	.string	"f_type"
.LASF15:
	.string	"__dev_t"
.LASF27:
	.string	"BaseType_t"
.LASF38:
	.string	"dev_t"
.LASF64:
	.string	"f_bfree"
.LASF122:
	.string	"aos_unregister_driver"
.LASF82:
	.string	"file_ops"
.LASF81:
	.string	"file_ops_t"
.LASF128:
	.string	"memset"
.LASF118:
	.string	"pollfd"
.LASF65:
	.string	"f_bavail"
.LASF68:
	.string	"f_fsid"
.LASF59:
	.string	"st_spare4"
.LASF103:
	.string	"access"
.LASF28:
	.string	"TickType_t"
.LASF94:
	.string	"rename"
.LASF17:
	.string	"__gid_t"
.LASF63:
	.string	"f_blocks"
.LASF40:
	.string	"gid_t"
.LASF11:
	.string	"__int_least64_t"
.LASF104:
	.string	"i_ops"
.LASF39:
	.string	"uid_t"
.LASF135:
	.string	"aos_unregister_fs"
.LASF99:
	.string	"rmdir"
.LASF97:
	.string	"closedir"
.LASF3:
	.string	"short int"
.LASF55:
	.string	"st_mtim"
.LASF108:
	.string	"i_flags"
.LASF5:
	.string	"long int"
.LASF30:
	.string	"SemaphoreHandle_t"
.LASF125:
	.string	"inode_reserve"
.LASF131:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/fs/vfs/src/vfs_register.c"
.LASF112:
	.string	"node"
.LASF96:
	.string	"readdir"
.LASF69:
	.string	"f_namelen"
.LASF121:
	.string	"aos_register_fs"
.LASF13:
	.string	"__blksize_t"
.LASF127:
	.string	"vPortFree"
.LASF16:
	.string	"__uid_t"
.LASF54:
	.string	"st_atim"
.LASF85:
	.string	"read"
.LASF74:
	.string	"dd_vfs_fd"
.LASF83:
	.string	"open"
.LASF32:
	.string	"tv_sec"
.LASF77:
	.string	"VFS_TYPE_NOT_INIT"
.LASF8:
	.string	"long unsigned int"
.LASF24:
	.string	"int32_t"
.LASF43:
	.string	"nlink_t"
.LASF62:
	.string	"f_bsize"
.LASF2:
	.string	"unsigned char"
.LASF7:
	.string	"__uint32_t"
.LASF35:
	.string	"blksize_t"
.LASF53:
	.string	"st_size"
.LASF123:
	.string	"aos_register_driver"
.LASF70:
	.string	"d_ino"
.LASF50:
	.string	"st_uid"
.LASF20:
	.string	"__off_t"
.LASF56:
	.string	"st_ctim"
.LASF21:
	.string	"_ssize_t"
.LASF75:
	.string	"dd_rsv"
.LASF1:
	.string	"signed char"
.LASF42:
	.string	"mode_t"
.LASF37:
	.string	"off_t"
.LASF4:
	.string	"short unsigned int"
.LASF102:
	.string	"seekdir"
.LASF12:
	.string	"__blkcnt_t"
.LASF14:
	.string	"_off_t"
.LASF52:
	.string	"st_rdev"
.LASF90:
	.string	"fs_ops_t"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
