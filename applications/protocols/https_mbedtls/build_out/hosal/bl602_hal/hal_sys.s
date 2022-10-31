	.file	"hal_sys.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.globl	__clzsi2
	.section	.text.user_clz,"ax",@progbits
	.align	1
	.type	user_clz, @function
user_clz:
.LFB11:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/hal_sys.c"
	.loc 1 23 1
	.cfi_startproc
.LVL0:
	.loc 1 24 5
	.loc 1 23 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 24 12
	call	__clzsi2
.LVL1:
	.loc 1 25 1
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	user_clz, .-user_clz
	.section	.text.hal_reboot,"ax",@progbits
	.align	1
	.globl	hal_reboot
	.type	hal_reboot, @function
hal_reboot:
.LFB8:
	.loc 1 8 1 is_stmt 1
	.cfi_startproc
	.loc 1 9 5
	tail	bl_sys_reset_por
.LVL2:
	.cfi_endproc
.LFE8:
	.size	hal_reboot, .-hal_reboot
	.section	.text.hal_sys_reset,"ax",@progbits
	.align	1
	.globl	hal_sys_reset
	.type	hal_sys_reset, @function
hal_sys_reset:
.LFB9:
	.loc 1 13 1
	.cfi_startproc
	.loc 1 14 5
	tail	bl_sys_reset_system
.LVL3:
	.cfi_endproc
.LFE9:
	.size	hal_sys_reset, .-hal_sys_reset
	.section	.text.hal_poweroff,"ax",@progbits
	.align	1
	.globl	hal_poweroff
	.type	hal_poweroff, @function
hal_poweroff:
.LFB10:
	.loc 1 18 1
	.cfi_startproc
	.loc 1 20 1
	ret
	.cfi_endproc
.LFE10:
	.size	hal_poweroff, .-hal_poweroff
	.section	.rodata.hal_sys_romapi_get.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"  Configuring Version 1.0 ROM API...\r\n"
	.section	.text.hal_sys_romapi_get,"ax",@progbits
	.align	1
	.globl	hal_sys_romapi_get
	.type	hal_sys_romapi_get, @function
hal_sys_romapi_get:
.LFB12:
	.loc 1 28 1
	.cfi_startproc
	.loc 1 29 5
	.loc 1 30 5
.LVL4:
	.loc 1 31 5
	.loc 1 33 5
	lui	a0,%hi(.LC0)
	.loc 1 28 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 33 5
	addi	a0,a0,%lo(.LC0)
	.loc 1 28 1
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 33 5
	call	puts
.LVL5:
	.loc 1 36 5 is_stmt 1
	lui	s0,%hi(__global_pointer_head$)
	addi	a0,s0,%lo(__global_pointer_head$)
	li	a2,1176
	li	a1,0
	call	memset
.LVL6:
	.loc 1 37 5
	.loc 1 40 5
	.loc 1 40 26 is_stmt 0
	lui	a5,%hi(__global_pointer_head$+88)
	addi	a5,a5,%lo(__global_pointer_head$+88)
	srli	a4,a5,8
	sb	a4,%lo(__global_pointer_head$+1)(s0)
	srli	a4,a5,16
	sb	a4,%lo(__global_pointer_head$+2)(s0)
	.loc 1 42 26
	lui	a4,%hi(__global_pointer_head$+96)
	.loc 1 40 26
	sb	a5,%lo(__global_pointer_head$)(s0)
	.loc 1 42 26
	addi	a4,a4,%lo(__global_pointer_head$+96)
	.loc 1 40 26
	srli	a5,a5,24
	sb	a5,%lo(__global_pointer_head$+3)(s0)
	.loc 1 42 5 is_stmt 1
	.loc 1 42 26 is_stmt 0
	srli	a3,a4,8
	addi	a5,s0,%lo(__global_pointer_head$)
	sb	a4,4(a5)
	sb	a3,5(a5)
	srli	a3,a4,16
	srli	a4,a4,24
	sb	a4,7(a5)
	.loc 1 44 5 is_stmt 1
	.loc 1 44 26 is_stmt 0
	li	a4,32
	.loc 1 42 26
	sb	a3,6(a5)
	.loc 1 44 26
	sb	a4,8(a5)
	sb	zero,9(a5)
	sb	zero,10(a5)
	sb	zero,11(a5)
	.loc 1 46 5 is_stmt 1
	.loc 1 47 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.loc 1 46 12
	lui	a0,%hi(__global_pointer_head$+1116)
	.loc 1 47 1
	addi	a0,a0,%lo(__global_pointer_head$+1116)
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE12:
	.size	hal_sys_romapi_get, .-hal_sys_romapi_get
	.section	.text.hal_sys_romapi_update,"ax",@progbits
	.align	1
	.globl	hal_sys_romapi_update
	.type	hal_sys_romapi_update, @function
hal_sys_romapi_update:
.LFB13:
	.loc 1 50 1 is_stmt 1
	.cfi_startproc
.LVL7:
	.loc 1 51 5
	.loc 1 52 5
	.loc 1 53 5
	.loc 1 55 5
	.loc 1 55 42 is_stmt 0
	lui	a5,%hi(interrupt_entry)
	addi	a5,a5,%lo(interrupt_entry)
	sw	a5,4(a0)
	.loc 1 56 5 is_stmt 1
	.loc 1 56 35 is_stmt 0
	lui	a5,%hi(sprintf)
	addi	a5,a5,%lo(sprintf)
	sw	a5,20(a0)
	.loc 1 57 5 is_stmt 1
	.loc 1 57 38 is_stmt 0
	lui	a5,%hi(memcpy)
	addi	a5,a5,%lo(memcpy)
	sw	a5,28(a0)
	.loc 1 58 5 is_stmt 1
	.loc 1 58 38 is_stmt 0
	lui	a5,%hi(strlen)
	addi	a5,a5,%lo(strlen)
	sw	a5,36(a0)
	.loc 1 59 5 is_stmt 1
	.loc 1 59 38 is_stmt 0
	lui	a5,%hi(memset)
	addi	a5,a5,%lo(memset)
	sw	a5,40(a0)
	.loc 1 60 5 is_stmt 1
	.loc 1 60 42 is_stmt 0
	lui	a5,%hi(exception_entry)
	addi	a5,a5,%lo(exception_entry)
	sw	a5,48(a0)
	.loc 1 61 5 is_stmt 1
	.loc 1 61 38 is_stmt 0
	lui	a5,%hi(strcpy)
	addi	a5,a5,%lo(strcpy)
	sw	a5,52(a0)
	.loc 1 62 5 is_stmt 1
	.loc 1 62 35 is_stmt 0
	lui	a5,%hi(__freertos_irq_stack_top)
	addi	a5,a5,%lo(__freertos_irq_stack_top)
	sw	a5,56(a0)
	.loc 1 63 5 is_stmt 1
	.loc 1 63 31 is_stmt 0
	lui	a5,%hi(user_clz)
	addi	a5,a5,%lo(user_clz)
	sw	a5,44(a0)
	.loc 1 64 1
	ret
	.cfi_endproc
.LFE13:
	.size	hal_sys_romapi_update, .-hal_sys_romapi_update
	.section	.text.hal_sys_capcode_update,"ax",@progbits
	.align	1
	.globl	hal_sys_capcode_update
	.type	hal_sys_capcode_update, @function
hal_sys_capcode_update:
.LFB14:
	.loc 1 67 1 is_stmt 1
	.cfi_startproc
.LVL8:
	.loc 1 68 5
	.loc 1 70 5
	.loc 1 67 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	ra,28(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.loc 1 71 82
	li	a5,553717760
	lui	s0,%hi(.LANCHOR0)
	lui	s1,%hi(.LANCHOR1)
	.loc 1 70 8
	li	a4,255
	.loc 1 71 10
	lw	a5,-2020(a5)
	addi	s0,s0,%lo(.LANCHOR0)
	addi	s1,s1,%lo(.LANCHOR1)
	.loc 1 70 8
	beq	a0,a4,.L10
	mv	s2,a1
	.loc 1 70 22 discriminator 1
	beq	a1,a4,.L10
	mv	s3,a0
	.loc 1 71 9 is_stmt 1
	.loc 1 71 10 is_stmt 0
	jalr	a5
.LVL9:
	.loc 1 72 9 is_stmt 1
	.loc 1 77 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	.loc 1 72 22
	sb	s3,0(s0)
	.loc 1 73 9 is_stmt 1
	.loc 1 77 1 is_stmt 0
	lw	s0,24(sp)
	.cfi_restore 8
	.loc 1 73 23
	sb	s2,0(s1)
	.loc 1 77 1
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL10:
.L10:
	.cfi_restore_state
	.loc 1 75 9 is_stmt 1
	.loc 1 75 10 is_stmt 0
	lbu	a0,0(s0)
.LVL11:
	.loc 1 77 1
	lw	s0,24(sp)
	.cfi_restore 8
	.loc 1 75 10
	lbu	a1,0(s1)
.LVL12:
	.loc 1 77 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	.loc 1 75 10
	jr	a5
.LVL13:
	.cfi_endproc
.LFE14:
	.size	hal_sys_capcode_update, .-hal_sys_capcode_update
	.section	.text.hal_sys_capcode_get,"ax",@progbits
	.align	1
	.globl	hal_sys_capcode_get
	.type	hal_sys_capcode_get, @function
hal_sys_capcode_get:
.LFB15:
	.loc 1 80 1 is_stmt 1
	.cfi_startproc
	.loc 1 81 5
	.loc 1 81 12 is_stmt 0
	tail	AON_Get_Xtal_CapCode
.LVL14:
	.cfi_endproc
.LFE15:
	.size	hal_sys_capcode_get, .-hal_sys_capcode_get
	.section	.sbss.capin_static.1,"aw",@nobits
	.set	.LANCHOR0,. + 0
	.type	capin_static.1, @object
	.size	capin_static.1, 1
capin_static.1:
	.zero	1
	.section	.sbss.capout_static.0,"aw",@nobits
	.set	.LANCHOR1,. + 0
	.type	capout_static.0, @object
	.size	capout_static.0, 1
capout_static.0:
	.zero	1
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_romdriver.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/hal_sys.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_aon.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_sys.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x7f6
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF230
	.byte	0xc
	.4byte	.LASF231
	.4byte	.LASF232
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x5
	.4byte	.LASF10
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x3a
	.byte	0x5
	.4byte	.LASF11
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x56
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x3
	.byte	0x17
	.byte	0x1
	.4byte	0xad
	.byte	0x7
	.4byte	.LASF12
	.byte	0
	.byte	0x7
	.4byte	.LASF13
	.byte	0x1
	.byte	0x7
	.4byte	.LASF14
	.byte	0x2
	.byte	0
	.byte	0x5
	.4byte	.LASF15
	.byte	0x3
	.byte	0x1b
	.byte	0x2
	.4byte	0x8c
	.byte	0x8
	.byte	0x4
	.4byte	0x80
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x4
	.byte	0x40
	.byte	0xe
	.4byte	0x4fb
	.byte	0x7
	.4byte	.LASF16
	.byte	0
	.byte	0x7
	.4byte	.LASF17
	.byte	0x1
	.byte	0x7
	.4byte	.LASF18
	.byte	0x2
	.byte	0x7
	.4byte	.LASF19
	.byte	0x3
	.byte	0x7
	.4byte	.LASF20
	.byte	0x4
	.byte	0x7
	.4byte	.LASF21
	.byte	0x5
	.byte	0x7
	.4byte	.LASF22
	.byte	0x6
	.byte	0x7
	.4byte	.LASF23
	.byte	0x7
	.byte	0x7
	.4byte	.LASF24
	.byte	0x8
	.byte	0x7
	.4byte	.LASF25
	.byte	0x9
	.byte	0x7
	.4byte	.LASF26
	.byte	0xa
	.byte	0x7
	.4byte	.LASF27
	.byte	0xb
	.byte	0x7
	.4byte	.LASF28
	.byte	0xc
	.byte	0x7
	.4byte	.LASF29
	.byte	0xd
	.byte	0x7
	.4byte	.LASF30
	.byte	0xe
	.byte	0x7
	.4byte	.LASF31
	.byte	0xf
	.byte	0x7
	.4byte	.LASF32
	.byte	0x10
	.byte	0x7
	.4byte	.LASF33
	.byte	0x11
	.byte	0x7
	.4byte	.LASF34
	.byte	0x12
	.byte	0x7
	.4byte	.LASF35
	.byte	0x13
	.byte	0x7
	.4byte	.LASF36
	.byte	0x14
	.byte	0x7
	.4byte	.LASF37
	.byte	0x15
	.byte	0x7
	.4byte	.LASF38
	.byte	0x16
	.byte	0x7
	.4byte	.LASF39
	.byte	0x17
	.byte	0x7
	.4byte	.LASF40
	.byte	0x18
	.byte	0x7
	.4byte	.LASF41
	.byte	0x19
	.byte	0x7
	.4byte	.LASF42
	.byte	0x1a
	.byte	0x7
	.4byte	.LASF43
	.byte	0x1b
	.byte	0x7
	.4byte	.LASF44
	.byte	0x1c
	.byte	0x7
	.4byte	.LASF45
	.byte	0x1d
	.byte	0x7
	.4byte	.LASF46
	.byte	0x1e
	.byte	0x7
	.4byte	.LASF47
	.byte	0x1f
	.byte	0x7
	.4byte	.LASF48
	.byte	0x20
	.byte	0x7
	.4byte	.LASF49
	.byte	0x21
	.byte	0x7
	.4byte	.LASF50
	.byte	0x22
	.byte	0x7
	.4byte	.LASF51
	.byte	0x23
	.byte	0x7
	.4byte	.LASF52
	.byte	0x24
	.byte	0x7
	.4byte	.LASF53
	.byte	0x25
	.byte	0x7
	.4byte	.LASF54
	.byte	0x26
	.byte	0x7
	.4byte	.LASF55
	.byte	0x27
	.byte	0x7
	.4byte	.LASF56
	.byte	0x28
	.byte	0x7
	.4byte	.LASF57
	.byte	0x29
	.byte	0x7
	.4byte	.LASF58
	.byte	0x2a
	.byte	0x7
	.4byte	.LASF59
	.byte	0x2b
	.byte	0x7
	.4byte	.LASF60
	.byte	0x2c
	.byte	0x7
	.4byte	.LASF61
	.byte	0x2d
	.byte	0x7
	.4byte	.LASF62
	.byte	0x2e
	.byte	0x7
	.4byte	.LASF63
	.byte	0x2f
	.byte	0x7
	.4byte	.LASF64
	.byte	0x30
	.byte	0x7
	.4byte	.LASF65
	.byte	0x31
	.byte	0x7
	.4byte	.LASF66
	.byte	0x32
	.byte	0x7
	.4byte	.LASF67
	.byte	0x33
	.byte	0x7
	.4byte	.LASF68
	.byte	0x34
	.byte	0x7
	.4byte	.LASF69
	.byte	0x35
	.byte	0x7
	.4byte	.LASF70
	.byte	0x36
	.byte	0x7
	.4byte	.LASF71
	.byte	0x37
	.byte	0x7
	.4byte	.LASF72
	.byte	0x38
	.byte	0x7
	.4byte	.LASF73
	.byte	0x39
	.byte	0x7
	.4byte	.LASF74
	.byte	0x3a
	.byte	0x7
	.4byte	.LASF75
	.byte	0x3b
	.byte	0x7
	.4byte	.LASF76
	.byte	0x3c
	.byte	0x7
	.4byte	.LASF77
	.byte	0x3d
	.byte	0x7
	.4byte	.LASF78
	.byte	0x3e
	.byte	0x7
	.4byte	.LASF79
	.byte	0x3f
	.byte	0x7
	.4byte	.LASF80
	.byte	0x40
	.byte	0x7
	.4byte	.LASF81
	.byte	0x41
	.byte	0x7
	.4byte	.LASF82
	.byte	0x42
	.byte	0x7
	.4byte	.LASF83
	.byte	0x43
	.byte	0x7
	.4byte	.LASF84
	.byte	0x44
	.byte	0x7
	.4byte	.LASF85
	.byte	0x45
	.byte	0x7
	.4byte	.LASF86
	.byte	0x46
	.byte	0x7
	.4byte	.LASF87
	.byte	0x47
	.byte	0x7
	.4byte	.LASF88
	.byte	0x48
	.byte	0x7
	.4byte	.LASF89
	.byte	0x49
	.byte	0x7
	.4byte	.LASF90
	.byte	0x4a
	.byte	0x7
	.4byte	.LASF91
	.byte	0x4b
	.byte	0x7
	.4byte	.LASF92
	.byte	0x4c
	.byte	0x7
	.4byte	.LASF93
	.byte	0x4d
	.byte	0x7
	.4byte	.LASF94
	.byte	0x4e
	.byte	0x7
	.4byte	.LASF95
	.byte	0x4f
	.byte	0x7
	.4byte	.LASF96
	.byte	0x50
	.byte	0x7
	.4byte	.LASF97
	.byte	0x51
	.byte	0x7
	.4byte	.LASF98
	.byte	0x52
	.byte	0x7
	.4byte	.LASF99
	.byte	0x53
	.byte	0x7
	.4byte	.LASF100
	.byte	0x54
	.byte	0x7
	.4byte	.LASF101
	.byte	0x55
	.byte	0x7
	.4byte	.LASF102
	.byte	0x56
	.byte	0x7
	.4byte	.LASF103
	.byte	0x57
	.byte	0x7
	.4byte	.LASF104
	.byte	0x58
	.byte	0x7
	.4byte	.LASF105
	.byte	0x59
	.byte	0x7
	.4byte	.LASF106
	.byte	0x5a
	.byte	0x7
	.4byte	.LASF107
	.byte	0x5b
	.byte	0x7
	.4byte	.LASF108
	.byte	0x5c
	.byte	0x7
	.4byte	.LASF109
	.byte	0x5d
	.byte	0x7
	.4byte	.LASF110
	.byte	0x5e
	.byte	0x7
	.4byte	.LASF111
	.byte	0x5f
	.byte	0x7
	.4byte	.LASF112
	.byte	0x60
	.byte	0x7
	.4byte	.LASF113
	.byte	0x61
	.byte	0x7
	.4byte	.LASF114
	.byte	0x62
	.byte	0x7
	.4byte	.LASF115
	.byte	0x63
	.byte	0x7
	.4byte	.LASF116
	.byte	0x64
	.byte	0x7
	.4byte	.LASF117
	.byte	0x65
	.byte	0x7
	.4byte	.LASF118
	.byte	0x66
	.byte	0x7
	.4byte	.LASF119
	.byte	0x67
	.byte	0x7
	.4byte	.LASF120
	.byte	0x68
	.byte	0x7
	.4byte	.LASF121
	.byte	0x69
	.byte	0x7
	.4byte	.LASF122
	.byte	0x6a
	.byte	0x7
	.4byte	.LASF123
	.byte	0x6b
	.byte	0x7
	.4byte	.LASF124
	.byte	0x6c
	.byte	0x7
	.4byte	.LASF125
	.byte	0x6d
	.byte	0x7
	.4byte	.LASF126
	.byte	0x6e
	.byte	0x7
	.4byte	.LASF127
	.byte	0x6f
	.byte	0x7
	.4byte	.LASF128
	.byte	0x70
	.byte	0x7
	.4byte	.LASF129
	.byte	0x71
	.byte	0x7
	.4byte	.LASF130
	.byte	0x72
	.byte	0x7
	.4byte	.LASF131
	.byte	0x73
	.byte	0x7
	.4byte	.LASF132
	.byte	0x74
	.byte	0x7
	.4byte	.LASF133
	.byte	0x75
	.byte	0x7
	.4byte	.LASF134
	.byte	0x76
	.byte	0x7
	.4byte	.LASF135
	.byte	0x77
	.byte	0x7
	.4byte	.LASF136
	.byte	0x78
	.byte	0x7
	.4byte	.LASF137
	.byte	0x79
	.byte	0x7
	.4byte	.LASF138
	.byte	0x7a
	.byte	0x7
	.4byte	.LASF139
	.byte	0x7b
	.byte	0x7
	.4byte	.LASF140
	.byte	0x7c
	.byte	0x7
	.4byte	.LASF141
	.byte	0x7d
	.byte	0x7
	.4byte	.LASF142
	.byte	0x7e
	.byte	0x7
	.4byte	.LASF143
	.byte	0x7f
	.byte	0x7
	.4byte	.LASF144
	.byte	0x80
	.byte	0x7
	.4byte	.LASF145
	.byte	0x81
	.byte	0x7
	.4byte	.LASF146
	.byte	0x82
	.byte	0x7
	.4byte	.LASF147
	.byte	0x83
	.byte	0x7
	.4byte	.LASF148
	.byte	0x84
	.byte	0x7
	.4byte	.LASF149
	.byte	0x85
	.byte	0x7
	.4byte	.LASF150
	.byte	0x86
	.byte	0x7
	.4byte	.LASF151
	.byte	0x87
	.byte	0x7
	.4byte	.LASF152
	.byte	0x88
	.byte	0x7
	.4byte	.LASF153
	.byte	0x89
	.byte	0x7
	.4byte	.LASF154
	.byte	0x8a
	.byte	0x7
	.4byte	.LASF155
	.byte	0x8b
	.byte	0x7
	.4byte	.LASF156
	.byte	0x8c
	.byte	0x7
	.4byte	.LASF157
	.byte	0x8d
	.byte	0x7
	.4byte	.LASF158
	.byte	0x8e
	.byte	0x7
	.4byte	.LASF159
	.byte	0x8f
	.byte	0x7
	.4byte	.LASF160
	.byte	0x90
	.byte	0x7
	.4byte	.LASF161
	.byte	0x91
	.byte	0x7
	.4byte	.LASF162
	.byte	0x92
	.byte	0x7
	.4byte	.LASF163
	.byte	0x93
	.byte	0x7
	.4byte	.LASF164
	.byte	0x94
	.byte	0x7
	.4byte	.LASF165
	.byte	0x95
	.byte	0x7
	.4byte	.LASF166
	.byte	0x96
	.byte	0x7
	.4byte	.LASF167
	.byte	0x97
	.byte	0x7
	.4byte	.LASF168
	.byte	0x98
	.byte	0x7
	.4byte	.LASF169
	.byte	0x99
	.byte	0x7
	.4byte	.LASF170
	.byte	0x9a
	.byte	0x7
	.4byte	.LASF171
	.byte	0x9b
	.byte	0x7
	.4byte	.LASF172
	.byte	0x9c
	.byte	0x7
	.4byte	.LASF173
	.byte	0x9d
	.byte	0x7
	.4byte	.LASF174
	.byte	0x9e
	.byte	0x7
	.4byte	.LASF175
	.byte	0x9f
	.byte	0x7
	.4byte	.LASF176
	.byte	0xa0
	.byte	0x7
	.4byte	.LASF177
	.byte	0xa1
	.byte	0x7
	.4byte	.LASF178
	.byte	0xa2
	.byte	0x7
	.4byte	.LASF179
	.byte	0xa3
	.byte	0x7
	.4byte	.LASF180
	.byte	0xa4
	.byte	0x7
	.4byte	.LASF181
	.byte	0xa5
	.byte	0x7
	.4byte	.LASF182
	.byte	0xa6
	.byte	0x7
	.4byte	.LASF183
	.byte	0xa7
	.byte	0x7
	.4byte	.LASF184
	.byte	0xa8
	.byte	0x7
	.4byte	.LASF185
	.byte	0xa9
	.byte	0x7
	.4byte	.LASF186
	.byte	0xaa
	.byte	0x7
	.4byte	.LASF187
	.byte	0xab
	.byte	0x7
	.4byte	.LASF188
	.byte	0xac
	.byte	0x7
	.4byte	.LASF189
	.byte	0xad
	.byte	0x7
	.4byte	.LASF190
	.byte	0xae
	.byte	0x7
	.4byte	.LASF191
	.byte	0xaf
	.byte	0x7
	.4byte	.LASF192
	.byte	0xb0
	.byte	0x9
	.4byte	.LASF193
	.2byte	0x1ff
	.byte	0
	.byte	0xa
	.4byte	.LASF233
	.byte	0x3c
	.byte	0x5
	.byte	0x7
	.byte	0x8
	.4byte	0x5cc
	.byte	0xb
	.4byte	.LASF194
	.byte	0x5
	.byte	0x9
	.byte	0xb
	.4byte	0x6b
	.byte	0
	.byte	0xb
	.4byte	.LASF195
	.byte	0x5
	.byte	0xa
	.byte	0xb
	.4byte	0x6b
	.byte	0x4
	.byte	0xb
	.4byte	.LASF196
	.byte	0x5
	.byte	0xb
	.byte	0xb
	.4byte	0x6b
	.byte	0x8
	.byte	0xb
	.4byte	.LASF197
	.byte	0x5
	.byte	0xc
	.byte	0xb
	.4byte	0x6b
	.byte	0xc
	.byte	0xb
	.4byte	.LASF198
	.byte	0x5
	.byte	0xd
	.byte	0xb
	.4byte	0x6b
	.byte	0x10
	.byte	0xb
	.4byte	.LASF199
	.byte	0x5
	.byte	0xe
	.byte	0xb
	.4byte	0x6b
	.byte	0x14
	.byte	0xb
	.4byte	.LASF200
	.byte	0x5
	.byte	0xf
	.byte	0xb
	.4byte	0x6b
	.byte	0x18
	.byte	0xb
	.4byte	.LASF201
	.byte	0x5
	.byte	0x10
	.byte	0xb
	.4byte	0x6b
	.byte	0x1c
	.byte	0xb
	.4byte	.LASF202
	.byte	0x5
	.byte	0x11
	.byte	0xb
	.4byte	0x6b
	.byte	0x20
	.byte	0xb
	.4byte	.LASF203
	.byte	0x5
	.byte	0x12
	.byte	0xb
	.4byte	0x6b
	.byte	0x24
	.byte	0xb
	.4byte	.LASF204
	.byte	0x5
	.byte	0x13
	.byte	0xb
	.4byte	0x6b
	.byte	0x28
	.byte	0xb
	.4byte	.LASF205
	.byte	0x5
	.byte	0x14
	.byte	0xb
	.4byte	0x6b
	.byte	0x2c
	.byte	0xb
	.4byte	.LASF206
	.byte	0x5
	.byte	0x15
	.byte	0xb
	.4byte	0x6b
	.byte	0x30
	.byte	0xb
	.4byte	.LASF207
	.byte	0x5
	.byte	0x16
	.byte	0xb
	.4byte	0x6b
	.byte	0x34
	.byte	0xb
	.4byte	.LASF208
	.byte	0x5
	.byte	0x17
	.byte	0xb
	.4byte	0x6b
	.byte	0x38
	.byte	0
	.byte	0xc
	.4byte	.LASF216
	.byte	0x1
	.byte	0x4f
	.byte	0x9
	.4byte	0x74
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x5f0
	.byte	0xd
	.4byte	.LVL14
	.4byte	0x7b4
	.byte	0
	.byte	0xe
	.4byte	.LASF222
	.byte	0x1
	.byte	0x42
	.byte	0x6
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x65d
	.byte	0xf
	.4byte	.LASF209
	.byte	0x1
	.byte	0x42
	.byte	0x25
	.4byte	0x74
	.4byte	.LLST1
	.byte	0xf
	.4byte	.LASF210
	.byte	0x1
	.byte	0x42
	.byte	0x34
	.4byte	0x74
	.4byte	.LLST2
	.byte	0x10
	.4byte	.LASF211
	.byte	0x1
	.byte	0x44
	.byte	0x14
	.4byte	0x74
	.byte	0x5
	.byte	0x3
	.4byte	capin_static.1
	.byte	0x10
	.4byte	.LASF212
	.byte	0x1
	.byte	0x44
	.byte	0x22
	.4byte	0x74
	.byte	0x5
	.byte	0x3
	.4byte	capout_static.0
	.byte	0x11
	.4byte	.LVL9
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LASF234
	.byte	0x1
	.byte	0x31
	.byte	0x6
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x6bc
	.byte	0x14
	.4byte	.LASF213
	.byte	0x1
	.byte	0x31
	.byte	0x38
	.4byte	0x6bc
	.byte	0x1
	.byte	0x5a
	.byte	0x15
	.4byte	.LASF214
	.byte	0x1
	.byte	0x33
	.byte	0x11
	.4byte	0x693
	.byte	0x16
	.4byte	0x80
	.byte	0
	.byte	0x15
	.4byte	.LASF215
	.byte	0x1
	.byte	0x34
	.byte	0x11
	.4byte	0x6af
	.byte	0x16
	.4byte	0x80
	.byte	0x16
	.4byte	0x80
	.byte	0x16
	.4byte	0x80
	.byte	0
	.byte	0x17
	.4byte	.LASF218
	.byte	0x1
	.byte	0x35
	.byte	0x14
	.4byte	0x74
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x4fb
	.byte	0xc
	.4byte	.LASF217
	.byte	0x1
	.byte	0x1b
	.byte	0x1d
	.4byte	0x6bc
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x72e
	.byte	0x17
	.4byte	.LASF219
	.byte	0x1
	.byte	0x1d
	.byte	0x14
	.4byte	0x74
	.byte	0x18
	.4byte	.LASF220
	.byte	0x1
	.byte	0x1e
	.byte	0xf
	.4byte	0xb9
	.byte	0x18
	.4byte	.LASF213
	.byte	0x1
	.byte	0x1f
	.byte	0x21
	.4byte	0x6bc
	.byte	0x19
	.4byte	.LVL5
	.4byte	0x7c0
	.4byte	0x717
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x1a
	.4byte	.LVL6
	.4byte	0x7cc
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x498
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LASF235
	.byte	0x1
	.byte	0x16
	.byte	0x11
	.4byte	0x80
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x762
	.byte	0xf
	.4byte	.LASF221
	.byte	0x1
	.byte	0x16
	.byte	0x23
	.4byte	0x80
	.4byte	.LLST0
	.byte	0x1c
	.4byte	.LVL1
	.4byte	0x7d8
	.byte	0
	.byte	0x1d
	.4byte	.LASF236
	.byte	0x1
	.byte	0x11
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.byte	0x1e
	.4byte	.LASF223
	.byte	0x1
	.byte	0xc
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x794
	.byte	0xd
	.4byte	.LVL3
	.4byte	0x7e1
	.byte	0
	.byte	0x1e
	.4byte	.LASF224
	.byte	0x1
	.byte	0x7
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x7b4
	.byte	0xd
	.4byte	.LVL2
	.4byte	0x7ed
	.byte	0
	.byte	0x1f
	.4byte	.LASF225
	.4byte	.LASF225
	.byte	0x6
	.byte	0x51
	.byte	0x9
	.byte	0x1f
	.4byte	.LASF226
	.4byte	.LASF226
	.byte	0x7
	.byte	0xdd
	.byte	0x5
	.byte	0x1f
	.4byte	.LASF227
	.4byte	.LASF227
	.byte	0x8
	.byte	0x21
	.byte	0x8
	.byte	0x20
	.4byte	.LASF237
	.4byte	.LASF237
	.byte	0x1f
	.4byte	.LASF228
	.4byte	.LASF228
	.byte	0x9
	.byte	0x16
	.byte	0x6
	.byte	0x1f
	.4byte	.LASF229
	.4byte	.LASF229
	.byte	0x9
	.byte	0x15
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x5
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
	.byte	0x6
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
	.byte	0x7
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
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
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0x5
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
	.byte	0xd
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
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x11
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
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
	.byte	0x14
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x3c
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
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
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x2e
	.byte	0
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
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x1e
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
	.byte	0x1f
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
	.byte	0x20
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST1:
	.4byte	.LVL8
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9-1
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
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL8
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL9-1
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL12
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1-1
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
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
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF133:
	.string	"ROM_API_INDEX_SFlash_Software_Reset"
.LASF88:
	.string	"ROM_API_INDEX_HBN_Trim_RC32K"
.LASF140:
	.string	"ROM_API_INDEX_SFlash_Cache_Hit_Count_Get"
.LASF51:
	.string	"ROM_API_INDEX_EF_Ctrl_Read_RC32M_Trim"
.LASF183:
	.string	"ROM_API_INDEX_XIP_SFlash_GetDeviceId_Need_Lock"
.LASF147:
	.string	"ROM_API_INDEX_SF_Cfg_Init_Ext_Flash_Gpio"
.LASF46:
	.string	"ROM_API_INDEX_EF_Ctrl_Program_Efuse_0"
.LASF23:
	.string	"ROM_API_INDEX_AON_Set_Xtal_CapCode"
.LASF172:
	.string	"ROM_API_INDEX_SF_Ctrl_Icache2_Set"
.LASF187:
	.string	"ROM_API_INDEX_XIP_SFlash_Write_With_Lock"
.LASF1:
	.string	"signed char"
.LASF135:
	.string	"ROM_API_INDEX_SFlash_Set_IDbus_Cfg"
.LASF47:
	.string	"ROM_API_INDEX_EF_Ctrl_Load_Efuse_R0"
.LASF26:
	.string	"ROM_API_INDEX_AON_Power_On_BG"
.LASF59:
	.string	"ROM_API_INDEX_GLB_Set_System_CLK"
.LASF75:
	.string	"ROM_API_INDEX_HBN_Mode_Enter"
.LASF114:
	.string	"ROM_API_INDEX_SFlash_Read_Reg"
.LASF72:
	.string	"ROM_API_INDEX_GLB_GPIO_OUTPUT_Disable"
.LASF127:
	.string	"ROM_API_INDEX_SFlash_GetJedecId"
.LASF113:
	.string	"ROM_API_INDEX_SFlash_SetSPIMode"
.LASF104:
	.string	"ROM_API_INDEX_PDS_Power_On_PLL"
.LASF190:
	.string	"ROM_API_INDEX_XIP_SFlash_Opt_Exit"
.LASF139:
	.string	"ROM_API_INDEX_SFlash_Cache_Read_Enable"
.LASF176:
	.string	"ROM_API_INDEX_SF_Ctrl_Set_Clock_Delay"
.LASF105:
	.string	"ROM_API_INDEX_PDS_Enable_PLL_All_Clks"
.LASF22:
	.string	"ROM_API_INDEX_AON_Power_On_XTAL"
.LASF54:
	.string	"ROM_API_INDEX_GLB_Get_Root_CLK_Sel"
.LASF35:
	.string	"ROM_API_INDEX_AON_LowPower_Exit_PDS0"
.LASF34:
	.string	"ROM_API_INDEX_AON_LowPower_Enter_PDS0"
.LASF44:
	.string	"ROM_API_INDEX_BL602_MemCmp"
.LASF215:
	.string	"exception_entry"
.LASF61:
	.string	"ROM_API_INDEX_GLB_Set_SF_CLK"
.LASF41:
	.string	"ROM_API_INDEX_BL602_MemCpy_Fast"
.LASF87:
	.string	"ROM_API_INDEX_HBN_Power_Off_RC32K"
.LASF7:
	.string	"long long int"
.LASF165:
	.string	"ROM_API_INDEX_SF_Ctrl_AES_Enable"
.LASF201:
	.string	"rtos_memcpy_ptr"
.LASF219:
	.string	"__global_pointer_head$"
.LASF196:
	.string	"vApplicationGetIdleTaskMemory"
.LASF18:
	.string	"ROM_API_INDEX_RSVD_1"
.LASF102:
	.string	"ROM_API_INDEX_PDS_Select_RC32M_As_PLL_Ref"
.LASF8:
	.string	"long long unsigned int"
.LASF195:
	.string	"interrupt_entry_ptr"
.LASF81:
	.string	"ROM_API_INDEX_HBN_Set_Ldo11_Soc_Vout"
.LASF199:
	.string	"rtos_sprintf"
.LASF71:
	.string	"ROM_API_INDEX_GLB_GPIO_OUTPUT_Enable"
.LASF42:
	.string	"ROM_API_INDEX_BL602_MemSet"
.LASF15:
	.string	"BL_Err_Type"
.LASF5:
	.string	"long int"
.LASF117:
	.string	"ROM_API_INDEX_SFlash_Write_Enable"
.LASF170:
	.string	"ROM_API_INDEX_SF_Ctrl_SendCmd"
.LASF17:
	.string	"ROM_API_INDEX_RSVD_0"
.LASF168:
	.string	"ROM_API_INDEX_SF_Ctrl_Get_Flash_Image_Offset"
.LASF73:
	.string	"ROM_API_INDEX_GLB_GPIO_Set_HZ"
.LASF69:
	.string	"ROM_API_INDEX_GLB_Swap_Flash_Pin"
.LASF200:
	.string	"vApplicationMallocFailedHook"
.LASF154:
	.string	"ROM_API_INDEX_SF_Ctrl_Enable"
.LASF78:
	.string	"ROM_API_INDEX_HBN_Reset"
.LASF19:
	.string	"ROM_API_INDEX_RSVD_LAST"
.LASF163:
	.string	"ROM_API_INDEX_SF_Ctrl_AES_Set_IV"
.LASF124:
	.string	"ROM_API_INDEX_SFlash_Erase"
.LASF79:
	.string	"ROM_API_INDEX_HBN_Set_Ldo11_Aon_Vout"
.LASF225:
	.string	"AON_Get_Xtal_CapCode"
.LASF156:
	.string	"ROM_API_INDEX_SF_Ctrl_Set_Owner"
.LASF14:
	.string	"TIMEOUT"
.LASF119:
	.string	"ROM_API_INDEX_SFlash_Volatile_Reg_Write_Enable"
.LASF136:
	.string	"ROM_API_INDEX_SFlash_IDbus_Read_Enable"
.LASF13:
	.string	"ERROR"
.LASF153:
	.string	"ROM_API_INDEX_SF_Cfg_Flash_Identify"
.LASF216:
	.string	"hal_sys_capcode_get"
.LASF204:
	.string	"rtos_memset_ptr"
.LASF159:
	.string	"ROM_API_INDEX_SF_Ctrl_AES_Enable_LE"
.LASF36:
	.string	"ROM_API_INDEX_ASM_Delay_Us"
.LASF91:
	.string	"ROM_API_INDEX_HBN_GPIO7_Dbg_Pull_Cfg"
.LASF27:
	.string	"ROM_API_INDEX_AON_Power_Off_BG"
.LASF43:
	.string	"ROM_API_INDEX_BL602_MemSet4"
.LASF149:
	.string	"ROM_API_INDEX_SF_Cfg_Deinit_Ext_Flash_Gpio"
.LASF0:
	.string	"unsigned int"
.LASF202:
	.string	"vAssertCalled"
.LASF33:
	.string	"ROM_API_INDEX_AON_Power_Off_SFReg"
.LASF123:
	.string	"ROM_API_INDEX_SFlash_Blk64_Erase"
.LASF208:
	.string	"xISRStackTop"
.LASF6:
	.string	"long unsigned int"
.LASF85:
	.string	"ROM_API_INDEX_HBN_Power_Off_Xtal_32K"
.LASF138:
	.string	"ROM_API_INDEX_SFlash_Cache_Flush"
.LASF53:
	.string	"ROM_API_INDEX_EF_Ctrl_Clear"
.LASF20:
	.string	"ROM_API_INDEX_AON_Power_On_MBG"
.LASF52:
	.string	"ROM_API_INDEX_EF_Ctrl_Read_RC32K_Trim"
.LASF203:
	.string	"rtos_strlen_ptr"
.LASF57:
	.string	"ROM_API_INDEX_GLB_Get_HCLK_Div"
.LASF96:
	.string	"ROM_API_INDEX_PDS_Reset"
.LASF155:
	.string	"ROM_API_INDEX_SF_Ctrl_Select_Pad"
.LASF197:
	.string	"vApplicationStackOverflowHook"
.LASF237:
	.string	"__clzsi2"
.LASF4:
	.string	"short unsigned int"
.LASF29:
	.string	"ROM_API_INDEX_AON_Power_Off_LDO11_SOC"
.LASF167:
	.string	"ROM_API_INDEX_SF_Ctrl_Set_Flash_Image_Offset"
.LASF193:
	.string	"ROM_API_INDEX_FUNC_EMPTY_END"
.LASF214:
	.string	"interrupt_entry"
.LASF189:
	.string	"ROM_API_INDEX_XIP_SFlash_Opt_Enter"
.LASF118:
	.string	"ROM_API_INDEX_SFlash_Qspi_Enable"
.LASF169:
	.string	"ROM_API_INDEX_SF_Ctrl_Select_Clock"
.LASF206:
	.string	"exception_entry_ptr"
.LASF84:
	.string	"ROM_API_INDEX_HBN_Power_On_Xtal_32K"
.LASF134:
	.string	"ROM_API_INDEX_SFlash_Reset_Continue_Read"
.LASF222:
	.string	"hal_sys_capcode_update"
.LASF50:
	.string	"ROM_API_INDEX_EF_Ctrl_Get_Trim_Parity"
.LASF182:
	.string	"ROM_API_INDEX_XIP_SFlash_GetJedecId_Need_Lock"
.LASF109:
	.string	"ROM_API_INDEX_PDS_Power_Off_PLL"
.LASF160:
	.string	"ROM_API_INDEX_SF_Ctrl_AES_Set_Region"
.LASF65:
	.string	"ROM_API_INDEX_GLB_SW_POR_Reset"
.LASF192:
	.string	"ROM_API_INDEX_FUNC_EMPTY_START"
.LASF228:
	.string	"bl_sys_reset_system"
.LASF236:
	.string	"hal_poweroff"
.LASF92:
	.string	"ROM_API_INDEX_HBN_Set_Embedded_Flash_Pullup"
.LASF179:
	.string	"ROM_API_INDEX_XIP_SFlash_Erase_Need_Lock"
.LASF226:
	.string	"puts"
.LASF232:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/hosal"
.LASF173:
	.string	"ROM_API_INDEX_SF_Ctrl_GetBusyState"
.LASF233:
	.string	"romapi_freertos_map"
.LASF186:
	.string	"ROM_API_INDEX_XIP_SFlash_Read_With_Lock"
.LASF111:
	.string	"ROM_API_INDEX_SEC_Eng_Turn_Off_Sec_Ring"
.LASF101:
	.string	"ROM_API_INDEX_PDS_Trim_RC32M"
.LASF198:
	.string	"vApplicationGetTimerTaskMemory"
.LASF129:
	.string	"ROM_API_INDEX_SFlash_Powerdown"
.LASF211:
	.string	"capin_static"
.LASF37:
	.string	"ROM_API_INDEX_BL602_Delay_US"
.LASF141:
	.string	"ROM_API_INDEX_SFlash_Cache_Miss_Count_Get"
.LASF39:
	.string	"ROM_API_INDEX_BL602_MemCpy"
.LASF90:
	.string	"ROM_API_INDEX_HBN_Pin_WakeUp_Mask"
.LASF21:
	.string	"ROM_API_INDEX_AON_Power_Off_MBG"
.LASF74:
	.string	"ROM_API_INDEX_GLB_GPIO_Get_Fun"
.LASF82:
	.string	"ROM_API_INDEX_HBN_32K_Sel"
.LASF49:
	.string	"ROM_API_INDEX_EF_Ctrl_AutoLoad_Done"
.LASF184:
	.string	"ROM_API_INDEX_XIP_SFlash_GetUniqueId_Need_Lock"
.LASF229:
	.string	"bl_sys_reset_por"
.LASF164:
	.string	"ROM_API_INDEX_SF_Ctrl_AES_Set_IV_BE"
.LASF130:
	.string	"ROM_API_INDEX_SFlash_Releae_Powerdown"
.LASF137:
	.string	"ROM_API_INDEX_SFlash_Cache_Enable_Set"
.LASF218:
	.string	"__freertos_irq_stack_top"
.LASF177:
	.string	"ROM_API_INDEX_XIP_SFlash_State_Save"
.LASF106:
	.string	"ROM_API_INDEX_PDS_Disable_PLL_All_Clks"
.LASF16:
	.string	"ROM_API_INDEX_VERSION"
.LASF120:
	.string	"ROM_API_INDEX_SFlash_Chip_Erase"
.LASF25:
	.string	"ROM_API_INDEX_AON_Power_Off_XTAL"
.LASF86:
	.string	"ROM_API_INDEX_HBN_Power_On_RC32K"
.LASF97:
	.string	"ROM_API_INDEX_PDS_Enable"
.LASF67:
	.string	"ROM_API_INDEX_GLB_Select_External_Flash"
.LASF126:
	.string	"ROM_API_INDEX_SFlash_GetUniqueId"
.LASF175:
	.string	"ROM_API_INDEX_SF_Ctrl_Get_Clock_Delay"
.LASF62:
	.string	"ROM_API_INDEX_GLB_Set_PKA_CLK_Sel"
.LASF231:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/hal_sys.c"
.LASF162:
	.string	"ROM_API_INDEX_SF_Ctrl_AES_Set_Key_BE"
.LASF56:
	.string	"ROM_API_INDEX_GLB_Get_BCLK_Div"
.LASF2:
	.string	"unsigned char"
.LASF235:
	.string	"user_clz"
.LASF24:
	.string	"ROM_API_INDEX_AON_Get_Xtal_CapCode"
.LASF76:
	.string	"ROM_API_INDEX_HBN_Power_Down_Flash"
.LASF143:
	.string	"ROM_API_INDEX_SFlash_Read"
.LASF174:
	.string	"ROM_API_INDEX_SF_Ctrl_Is_AES_Enable"
.LASF3:
	.string	"short int"
.LASF31:
	.string	"ROM_API_INDEX_AON_Power_Off_LDO15_RF"
.LASF89:
	.string	"ROM_API_INDEX_HBN_Hw_Pu_Pd_Cfg"
.LASF146:
	.string	"ROM_API_INDEX_SFlash_Restore_From_Powerdown"
.LASF121:
	.string	"ROM_API_INDEX_SFlash_Sector_Erase"
.LASF30:
	.string	"ROM_API_INDEX_AON_Power_On_LDO15_RF"
.LASF93:
	.string	"ROM_API_INDEX_L1C_Set_Wrap"
.LASF108:
	.string	"ROM_API_INDEX_PDS_Disable_PLL_Clk"
.LASF68:
	.string	"ROM_API_INDEX_GLB_Deswap_Flash_Pin"
.LASF194:
	.string	"vApplicationIdleHook"
.LASF125:
	.string	"ROM_API_INDEX_SFlash_Program"
.LASF58:
	.string	"ROM_API_INDEX_Update_SystemCoreClockWith_XTAL"
.LASF115:
	.string	"ROM_API_INDEX_SFlash_Write_Reg"
.LASF60:
	.string	"ROM_API_INDEX_System_Core_Clock_Update_From_RC32M"
.LASF212:
	.string	"capout_static"
.LASF210:
	.string	"capout"
.LASF181:
	.string	"ROM_API_INDEX_XIP_SFlash_Read_Need_Lock"
.LASF11:
	.string	"uint32_t"
.LASF185:
	.string	"ROM_API_INDEX_XIP_SFlash_Read_Via_Cache_Need_Lock"
.LASF220:
	.string	"gp_data_start"
.LASF152:
	.string	"ROM_API_INDEX_SF_Cfg_Init_Flash_Gpio"
.LASF178:
	.string	"ROM_API_INDEX_XIP_SFlash_State_Restore"
.LASF45:
	.string	"ROM_API_INDEX_EF_Ctrl_Sw_AHB_Clk_0"
.LASF98:
	.string	"ROM_API_INDEX_PDS_Force_Config"
.LASF171:
	.string	"ROM_API_INDEX_SF_Ctrl_Icache_Set"
.LASF161:
	.string	"ROM_API_INDEX_SF_Ctrl_AES_Set_Key"
.LASF9:
	.string	"char"
.LASF64:
	.string	"ROM_API_INDEX_GLB_SW_CPU_Reset"
.LASF151:
	.string	"ROM_API_INDEX_SF_Cfg_Get_Flash_Cfg_Need_Lock"
.LASF83:
	.string	"ROM_API_INDEX_HBN_Set_ROOT_CLK_Sel"
.LASF40:
	.string	"ROM_API_INDEX_BL602_MemCpy4"
.LASF48:
	.string	"ROM_API_INDEX_EF_Ctrl_Busy"
.LASF209:
	.string	"capin"
.LASF99:
	.string	"ROM_API_INDEX_PDS_RAM_Config"
.LASF77:
	.string	"ROM_API_INDEX_HBN_Enable"
.LASF10:
	.string	"uint8_t"
.LASF94:
	.string	"ROM_API_INDEX_L1C_Set_Way_Disable"
.LASF191:
	.string	"ROM_API_INDEX_BFLB_Soft_CRC32"
.LASF213:
	.string	"romapi_freertos"
.LASF131:
	.string	"ROM_API_INDEX_SFlash_SetBurstWrap"
.LASF205:
	.string	"rtos_clz"
.LASF217:
	.string	"hal_sys_romapi_get"
.LASF132:
	.string	"ROM_API_INDEX_SFlash_DisableBurstWrap"
.LASF223:
	.string	"hal_sys_reset"
.LASF234:
	.string	"hal_sys_romapi_update"
.LASF38:
	.string	"ROM_API_INDEX_BL602_Delay_MS"
.LASF32:
	.string	"ROM_API_INDEX_AON_Power_On_SFReg"
.LASF28:
	.string	"ROM_API_INDEX_AON_Power_On_LDO11_SOC"
.LASF224:
	.string	"hal_reboot"
.LASF66:
	.string	"ROM_API_INDEX_GLB_Select_Internal_Flash"
.LASF95:
	.string	"ROM_API_INDEX_L1C_IROM_2T_Access_Set"
.LASF221:
	.string	"priorities"
.LASF227:
	.string	"memset"
.LASF100:
	.string	"ROM_API_INDEX_PDS_Default_Level_Config"
.LASF110:
	.string	"ROM_API_INDEX_SEC_Eng_Turn_On_Sec_Ring"
.LASF230:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF55:
	.string	"ROM_API_INDEX_GLB_Set_System_CLK_Div"
.LASF207:
	.string	"rtos_strcpy_ptr"
.LASF157:
	.string	"ROM_API_INDEX_SF_Ctrl_Disable"
.LASF158:
	.string	"ROM_API_INDEX_SF_Ctrl_AES_Enable_BE"
.LASF12:
	.string	"SUCCESS"
.LASF148:
	.string	"ROM_API_INDEX_SF_Cfg_Init_Internal_Flash_Gpio"
.LASF112:
	.string	"ROM_API_INDEX_SFlash_Init"
.LASF63:
	.string	"ROM_API_INDEX_GLB_SW_System_Reset"
.LASF122:
	.string	"ROM_API_INDEX_SFlash_Blk32_Erase"
.LASF107:
	.string	"ROM_API_INDEX_PDS_Enable_PLL_Clk"
.LASF116:
	.string	"ROM_API_INDEX_SFlash_Busy"
.LASF166:
	.string	"ROM_API_INDEX_SF_Ctrl_AES_Disable"
.LASF128:
	.string	"ROM_API_INDEX_SFlash_GetDeviceId"
.LASF103:
	.string	"ROM_API_INDEX_PDS_Select_XTAL_As_PLL_Ref"
.LASF144:
	.string	"ROM_API_INDEX_SFlash_Read_Reg_With_Cmd"
.LASF188:
	.string	"ROM_API_INDEX_XIP_SFlash_Erase_With_Lock"
.LASF180:
	.string	"ROM_API_INDEX_XIP_SFlash_Write_Need_Lock"
.LASF142:
	.string	"ROM_API_INDEX_SFlash_Cache_Read_Disable"
.LASF70:
	.string	"ROM_API_INDEX_GLB_GPIO_Init"
.LASF145:
	.string	"ROM_API_INDEX_SFlash_Write_Reg_With_Cmd"
.LASF80:
	.string	"ROM_API_INDEX_HBN_Set_Ldo11_Rt_Vout"
.LASF150:
	.string	"ROM_API_INDEX_SF_Cfg_Restore_GPIO17_Fun"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
