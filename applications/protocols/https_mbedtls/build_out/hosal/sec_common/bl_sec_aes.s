	.file	"bl_sec_aes.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.bl_sec_aes_init,"ax",@progbits
	.align	1
	.globl	bl_sec_aes_init
	.type	bl_sec_aes_init, @function
bl_sec_aes_init:
.LFB8:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/sec_common/bl_sec_aes.c"
	.loc 1 37 1
	.cfi_startproc
	.loc 1 38 5
	.loc 1 37 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 38 5
	li	a0,0
	.loc 1 37 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 38 5
	call	Sec_Eng_AES_Enable_BE
.LVL0:
	.loc 1 39 5 is_stmt 1
	.loc 1 40 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	bl_sec_aes_init, .-bl_sec_aes_init
	.section	.text.bl_aes_acquire_hw,"ax",@progbits
	.align	1
	.globl	bl_aes_acquire_hw
	.type	bl_aes_acquire_hw, @function
bl_aes_acquire_hw:
.LFB9:
	.loc 1 43 1 is_stmt 1
	.cfi_startproc
	.loc 1 44 5
	.loc 1 43 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 44 5
	call	vTaskEnterCritical
.LVL1:
	.loc 1 45 5 is_stmt 1
	.loc 1 46 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	bl_aes_acquire_hw, .-bl_aes_acquire_hw
	.section	.text.bl_aes_release_hw,"ax",@progbits
	.align	1
	.globl	bl_aes_release_hw
	.type	bl_aes_release_hw, @function
bl_aes_release_hw:
.LFB10:
	.loc 1 49 1 is_stmt 1
	.cfi_startproc
	.loc 1 50 5
	.loc 1 49 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 50 5
	call	vTaskExitCritical
.LVL2:
	.loc 1 51 5 is_stmt 1
	.loc 1 52 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	bl_aes_release_hw, .-bl_aes_release_hw
	.section	.text.bl_aes_init,"ax",@progbits
	.align	1
	.globl	bl_aes_init
	.type	bl_aes_init, @function
bl_aes_init:
.LFB11:
	.loc 1 55 1 is_stmt 1
	.cfi_startproc
.LVL3:
	.loc 1 56 5
	.loc 1 56 8 is_stmt 0
	beq	a0,zero,.L9
	.loc 1 55 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 59 5
	li	a2,60
	li	a1,0
	.loc 1 55 1
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	mv	s0,a0
	.loc 1 59 5 is_stmt 1
	call	memset
.LVL4:
	.loc 1 60 5
	.loc 1 61 5
	.loc 1 60 29 is_stmt 0
	lbu	a5,1(s0)
	.loc 1 63 12
	li	a0,0
	.loc 1 60 29
	andi	a5,a5,-51
	ori	a5,a5,2
	sb	a5,1(s0)
	.loc 1 63 5 is_stmt 1
	.loc 1 64 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL5:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL6:
.L9:
	.loc 1 57 16
	li	a0,-1
.LVL7:
	.loc 1 64 1
	ret
	.cfi_endproc
.LFE11:
	.size	bl_aes_init, .-bl_aes_init
	.section	.text.bl_aes_set_key,"ax",@progbits
	.align	1
	.globl	bl_aes_set_key
	.type	bl_aes_set_key, @function
bl_aes_set_key:
.LFB12:
	.loc 1 67 1 is_stmt 1
	.cfi_startproc
.LVL8:
	.loc 1 68 5
	.loc 1 68 8 is_stmt 0
	beq	a0,zero,.L18
	mv	a5,a0
	mv	a1,a2
.LVL9:
	.loc 1 69 16 discriminator 1
	li	a0,-1
.LVL10:
	.loc 1 68 15 discriminator 1
	beq	a2,zero,.L24
	mv	a2,a3
.LVL11:
	.loc 1 68 9 discriminator 2
	andi	a4,a3,-9
	li	a3,16
.LVL12:
	beq	a4,a3,.L16
	.loc 1 68 57 discriminator 4
	li	a4,32
	bne	a2,a4,.L24
.L16:
	.loc 1 71 5 is_stmt 1
	.loc 1 73 5
	.loc 1 67 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 73 32
	lw	a4,0(a5)
	.loc 1 75 8
	li	a3,16
	.loc 1 73 32
	andi	a4,a4,-65
	sw	a4,0(a5)
	.loc 1 74 5 is_stmt 1
	.loc 1 75 5
	.loc 1 76 18 is_stmt 0
	li	a4,0
	.loc 1 75 8
	beq	a2,a3,.L17
	.loc 1 77 12 is_stmt 1
	.loc 1 77 15 is_stmt 0
	li	a3,24
	.loc 1 78 18
	li	a4,2
	.loc 1 77 15
	beq	a2,a3,.L17
	.loc 1 80 18
	li	a4,1
.L17:
.LVL13:
	.loc 1 82 5 is_stmt 1
	.loc 1 82 27 is_stmt 0
	slli	a3,a4,3
	lw	a4,0(a5)
.LVL14:
	.loc 1 83 5
	addi	a0,a5,28
	.loc 1 82 27
	andi	a4,a4,-25
	or	a4,a4,a3
	sw	a4,0(a5)
	.loc 1 83 5 is_stmt 1
	call	memcpy
.LVL15:
	.loc 1 85 5
	.loc 1 86 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 85 12
	li	a0,0
	.loc 1 86 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL16:
.L18:
	.loc 1 69 16
	li	a0,-1
.LVL17:
	ret
.LVL18:
.L24:
	.loc 1 86 1
	ret
	.cfi_endproc
.LFE12:
	.size	bl_aes_set_key, .-bl_aes_set_key
	.section	.text.bl_aes_transform,"ax",@progbits
	.align	1
	.globl	bl_aes_transform
	.type	bl_aes_transform, @function
bl_aes_transform:
.LFB13:
	.loc 1 89 1 is_stmt 1
	.cfi_startproc
.LVL19:
	.loc 1 90 5
	.loc 1 91 5
	.loc 1 91 8 is_stmt 0
	beq	a0,zero,.L28
	.loc 1 89 1 discriminator 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 91 15 discriminator 1
	sw	a2,12(sp)
	mv	s0,a0
	.loc 1 92 16 discriminator 1
	li	a0,-1
.LVL20:
	.loc 1 91 15 discriminator 1
	beq	a2,zero,.L26
	.loc 1 91 9 discriminator 2
	sw	a3,8(sp)
	beq	a3,zero,.L26
	.loc 1 95 5 is_stmt 1
	.loc 1 96 5
	.loc 1 96 8 is_stmt 0
	snez	a5,a1
	.loc 1 95 29
	lw	a1,0(s0)
.LVL21:
	li	a3,65536
.LVL22:
	slli	a5,a5,5
	or	a5,a5,a3
	addi	a3,a3,-33
	and	a3,a1,a3
	or	a5,a5,a3
	sw	a5,0(s0)
	.loc 1 102 5 is_stmt 1
	li	a0,0
	call	Sec_Eng_AES_Enable_Link
.LVL23:
	.loc 1 103 5
	lw	a4,8(sp)
	lw	a2,12(sp)
	li	a3,16
	mv	a1,s0
	li	a0,0
	call	Sec_Eng_AES_Link_Work
.LVL24:
	.loc 1 104 5
	li	a0,0
	call	Sec_Eng_AES_Disable_Link
.LVL25:
	.loc 1 106 5
	.loc 1 106 12 is_stmt 0
	li	a0,0
.LVL26:
.L26:
	.loc 1 107 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL27:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL28:
	jr	ra
.LVL29:
.L28:
	.loc 1 92 16
	li	a0,-1
.LVL30:
	.loc 1 107 1
	ret
	.cfi_endproc
.LFE13:
	.size	bl_aes_transform, .-bl_aes_transform
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/sec_common/bl_sec_aes.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sec_eng.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x563
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF75
	.byte	0xc
	.4byte	.LASF76
	.4byte	.LASF77
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF5
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
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF3
	.byte	0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF4
	.byte	0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x6c
	.byte	0x5
	.4byte	0x5b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF7
	.byte	0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x31
	.byte	0x1c
	.4byte	0x84
	.byte	0x5
	.4byte	0x73
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.byte	0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x97
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.byte	0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.byte	0x6
	.byte	0x4
	.4byte	0x5b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.byte	0x7
	.byte	0x3c
	.byte	0x4
	.byte	0x4
	.byte	0x22
	.byte	0x9
	.4byte	0x213
	.byte	0x8
	.4byte	.LASF14
	.byte	0x4
	.byte	0x25
	.byte	0xe
	.4byte	0x8b
	.byte	0x4
	.byte	0x2
	.byte	0x1b
	.byte	0
	.byte	0x8
	.4byte	.LASF15
	.byte	0x4
	.byte	0x26
	.byte	0xe
	.4byte	0x8b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.byte	0x8
	.4byte	.LASF16
	.byte	0x4
	.byte	0x27
	.byte	0xe
	.4byte	0x8b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.byte	0x8
	.4byte	.LASF17
	.byte	0x4
	.byte	0x28
	.byte	0xe
	.4byte	0x8b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.byte	0x8
	.4byte	.LASF18
	.byte	0x4
	.byte	0x2a
	.byte	0xe
	.4byte	0x8b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.byte	0x8
	.4byte	.LASF19
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.4byte	0x8b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.byte	0x8
	.4byte	.LASF20
	.byte	0x4
	.byte	0x2d
	.byte	0xe
	.4byte	0x8b
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0
	.byte	0x8
	.4byte	.LASF21
	.byte	0x4
	.byte	0x2e
	.byte	0xe
	.4byte	0x8b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.byte	0x8
	.4byte	.LASF22
	.byte	0x4
	.byte	0x2f
	.byte	0xe
	.4byte	0x8b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.byte	0x8
	.4byte	.LASF23
	.byte	0x4
	.byte	0x30
	.byte	0xe
	.4byte	0x8b
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0x9
	.4byte	.LASF24
	.byte	0x4
	.byte	0x31
	.byte	0xe
	.4byte	0x8b
	.byte	0x4
	.byte	0x9
	.4byte	.LASF25
	.byte	0x4
	.byte	0x32
	.byte	0xe
	.4byte	0x8b
	.byte	0x8
	.byte	0x9
	.4byte	.LASF26
	.byte	0x4
	.byte	0x33
	.byte	0xe
	.4byte	0x8b
	.byte	0xc
	.byte	0x9
	.4byte	.LASF27
	.byte	0x4
	.byte	0x34
	.byte	0xe
	.4byte	0x8b
	.byte	0x10
	.byte	0x9
	.4byte	.LASF28
	.byte	0x4
	.byte	0x35
	.byte	0xe
	.4byte	0x8b
	.byte	0x14
	.byte	0x9
	.4byte	.LASF29
	.byte	0x4
	.byte	0x36
	.byte	0xe
	.4byte	0x8b
	.byte	0x18
	.byte	0x9
	.4byte	.LASF30
	.byte	0x4
	.byte	0x37
	.byte	0xe
	.4byte	0x8b
	.byte	0x1c
	.byte	0x9
	.4byte	.LASF31
	.byte	0x4
	.byte	0x38
	.byte	0xe
	.4byte	0x8b
	.byte	0x20
	.byte	0x9
	.4byte	.LASF32
	.byte	0x4
	.byte	0x39
	.byte	0xe
	.4byte	0x8b
	.byte	0x24
	.byte	0x9
	.4byte	.LASF33
	.byte	0x4
	.byte	0x3a
	.byte	0xe
	.4byte	0x8b
	.byte	0x28
	.byte	0x9
	.4byte	.LASF34
	.byte	0x4
	.byte	0x3b
	.byte	0xe
	.4byte	0x8b
	.byte	0x2c
	.byte	0x9
	.4byte	.LASF35
	.byte	0x4
	.byte	0x3c
	.byte	0xe
	.4byte	0x8b
	.byte	0x30
	.byte	0x9
	.4byte	.LASF36
	.byte	0x4
	.byte	0x3d
	.byte	0xe
	.4byte	0x8b
	.byte	0x34
	.byte	0x9
	.4byte	.LASF37
	.byte	0x4
	.byte	0x3e
	.byte	0xe
	.4byte	0x8b
	.byte	0x38
	.byte	0
	.byte	0xa
	.4byte	.LASF41
	.byte	0x4
	.byte	0x3f
	.byte	0x1f
	.4byte	0xb2
	.byte	0x4
	.byte	0xb
	.byte	0x7
	.byte	0x4
	.4byte	0x38
	.byte	0x4
	.byte	0x41
	.byte	0xe
	.4byte	0x23b
	.byte	0xc
	.4byte	.LASF38
	.byte	0
	.byte	0xc
	.4byte	.LASF39
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF40
	.byte	0x4
	.byte	0x44
	.byte	0x3
	.4byte	0x220
	.byte	0x7
	.byte	0x3c
	.byte	0x4
	.byte	0x4
	.byte	0x46
	.byte	0x9
	.4byte	0x260
	.byte	0xd
	.4byte	.LASF78
	.byte	0x4
	.byte	0x47
	.byte	0x25
	.4byte	0x213
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0xa
	.4byte	.LASF42
	.byte	0x4
	.byte	0x48
	.byte	0x3
	.4byte	0x247
	.byte	0x4
	.byte	0xb
	.byte	0x7
	.byte	0x4
	.4byte	0x38
	.byte	0x5
	.byte	0x39
	.byte	0xe
	.4byte	0x282
	.byte	0xc
	.4byte	.LASF43
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x7
	.byte	0x4
	.4byte	0x38
	.byte	0x5
	.byte	0x51
	.byte	0xe
	.4byte	0x2a3
	.byte	0xc
	.4byte	.LASF44
	.byte	0
	.byte	0xc
	.4byte	.LASF45
	.byte	0x1
	.byte	0xc
	.4byte	.LASF46
	.byte	0x2
	.byte	0
	.byte	0xb
	.byte	0x7
	.byte	0x4
	.4byte	0x38
	.byte	0x5
	.byte	0x5a
	.byte	0xe
	.4byte	0x2ca
	.byte	0xc
	.4byte	.LASF47
	.byte	0
	.byte	0xc
	.4byte	.LASF48
	.byte	0x1
	.byte	0xc
	.4byte	.LASF49
	.byte	0x2
	.byte	0xc
	.4byte	.LASF50
	.byte	0x3
	.byte	0
	.byte	0x3
	.4byte	.LASF51
	.byte	0x5
	.byte	0x5f
	.byte	0x2
	.4byte	0x2a3
	.byte	0xb
	.byte	0x7
	.byte	0x4
	.4byte	0x38
	.byte	0x5
	.byte	0x6e
	.byte	0xe
	.4byte	0x2f1
	.byte	0xc
	.4byte	.LASF52
	.byte	0
	.byte	0xc
	.4byte	.LASF53
	.byte	0x1
	.byte	0
	.byte	0xb
	.byte	0x7
	.byte	0x4
	.4byte	0x38
	.byte	0x5
	.byte	0x7e
	.byte	0xe
	.4byte	0x30c
	.byte	0xc
	.4byte	.LASF54
	.byte	0
	.byte	0xc
	.4byte	.LASF55
	.byte	0x1
	.byte	0
	.byte	0xe
	.4byte	.LASF58
	.byte	0x1
	.byte	0x58
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x3c1
	.byte	0xf
	.string	"aes"
	.byte	0x1
	.byte	0x58
	.byte	0x24
	.4byte	0x3c1
	.4byte	.LLST6
	.byte	0xf
	.string	"op"
	.byte	0x1
	.byte	0x58
	.byte	0x39
	.4byte	0x23b
	.4byte	.LLST7
	.byte	0x10
	.4byte	.LASF56
	.byte	0x1
	.byte	0x58
	.byte	0x4c
	.4byte	0x3c7
	.4byte	.LLST8
	.byte	0x10
	.4byte	.LASF57
	.byte	0x1
	.byte	0x58
	.byte	0x5c
	.4byte	0xa5
	.4byte	.LLST9
	.byte	0x11
	.4byte	.LASF61
	.byte	0x1
	.byte	0x5a
	.byte	0x14
	.4byte	0x7f
	.byte	0x1
	.byte	0x12
	.4byte	.LVL23
	.4byte	0x502
	.4byte	0x385
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x12
	.4byte	.LVL24
	.4byte	0x50f
	.4byte	0x3b1
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0x13
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x40
	.byte	0x13
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0x91
	.byte	0x68
	.byte	0x6
	.byte	0
	.byte	0x14
	.4byte	.LVL25
	.4byte	0x51c
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x260
	.byte	0x6
	.byte	0x4
	.4byte	0x67
	.byte	0xe
	.4byte	.LASF59
	.byte	0x1
	.byte	0x42
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x44a
	.byte	0xf
	.string	"aes"
	.byte	0x1
	.byte	0x42
	.byte	0x22
	.4byte	0x3c1
	.4byte	.LLST1
	.byte	0xf
	.string	"op"
	.byte	0x1
	.byte	0x42
	.byte	0x37
	.4byte	0x23b
	.4byte	.LLST2
	.byte	0xf
	.string	"key"
	.byte	0x1
	.byte	0x42
	.byte	0x4a
	.4byte	0x3c7
	.4byte	.LLST3
	.byte	0x10
	.4byte	.LASF60
	.byte	0x1
	.byte	0x42
	.byte	0x56
	.4byte	0x2c
	.4byte	.LLST4
	.byte	0x15
	.4byte	.LASF62
	.byte	0x1
	.byte	0x4a
	.byte	0x1a
	.4byte	0x2ca
	.4byte	.LLST5
	.byte	0x14
	.4byte	.LVL15
	.4byte	0x529
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LASF63
	.byte	0x1
	.byte	0x36
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x490
	.byte	0xf
	.string	"aes"
	.byte	0x1
	.byte	0x36
	.byte	0x1f
	.4byte	0x3c1
	.4byte	.LLST0
	.byte	0x14
	.4byte	.LVL4
	.4byte	0x535
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LASF64
	.byte	0x1
	.byte	0x30
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x4b4
	.byte	0x17
	.4byte	.LVL2
	.4byte	0x541
	.byte	0
	.byte	0x16
	.4byte	.LASF65
	.byte	0x1
	.byte	0x2a
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x4d8
	.byte	0x17
	.4byte	.LVL1
	.4byte	0x54d
	.byte	0
	.byte	0x16
	.4byte	.LASF66
	.byte	0x1
	.byte	0x24
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x502
	.byte	0x14
	.4byte	.LVL0
	.4byte	0x559
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LASF67
	.4byte	.LASF67
	.byte	0x5
	.2byte	0x1c1
	.byte	0x6
	.byte	0x18
	.4byte	.LASF68
	.4byte	.LASF68
	.byte	0x5
	.2byte	0x1c3
	.byte	0xd
	.byte	0x18
	.4byte	.LASF69
	.4byte	.LASF69
	.byte	0x5
	.2byte	0x1c2
	.byte	0x6
	.byte	0x19
	.4byte	.LASF70
	.4byte	.LASF70
	.byte	0x6
	.byte	0x1f
	.byte	0x8
	.byte	0x19
	.4byte	.LASF71
	.4byte	.LASF71
	.byte	0x6
	.byte	0x21
	.byte	0x8
	.byte	0x19
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0x7
	.byte	0x62
	.byte	0xd
	.byte	0x19
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0x7
	.byte	0x61
	.byte	0xd
	.byte	0x18
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0x5
	.2byte	0x1c0
	.byte	0x6
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0x13
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x88,0x1
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
	.byte	0x8
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
	.byte	0xb
	.byte	0xb
	.byte	0xd
	.byte	0xb
	.byte	0xc
	.byte	0xb
	.byte	0x38
	.byte	0xb
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
	.byte	0x88,0x1
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xb
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
	.byte	0xc
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xd
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
	.byte	0x88,0x1
	.byte	0xb
	.byte	0x38
	.byte	0xb
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
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0x13
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x89,0x82,0x1
	.byte	0x1
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
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
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
	.byte	0x19
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
.LLST6:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL30
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL21
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL19
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL23-1
	.4byte	.LVL28
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x72
	.byte	0x6c
	.4byte	.LVL29
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL22
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x91
	.byte	0x68
	.4byte	.LVL26
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL15-1
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL9
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL18
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL11
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL15-1
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL18
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL12
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL15-1
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL18
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4-1
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
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
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF30:
	.string	"aesKey0"
.LASF31:
	.string	"aesKey1"
.LASF32:
	.string	"aesKey2"
.LASF33:
	.string	"aesKey3"
.LASF34:
	.string	"aesKey4"
.LASF35:
	.string	"aesKey5"
.LASF36:
	.string	"aesKey6"
.LASF37:
	.string	"aesKey7"
.LASF44:
	.string	"SEC_ENG_AES_ECB"
.LASF63:
	.string	"bl_aes_init"
.LASF73:
	.string	"vTaskEnterCritical"
.LASF5:
	.string	"size_t"
.LASF56:
	.string	"input"
.LASF74:
	.string	"Sec_Eng_AES_Enable_BE"
.LASF39:
	.string	"BL_AES_DECRYPT"
.LASF61:
	.string	"n_blk"
.LASF70:
	.string	"memcpy"
.LASF55:
	.string	"SEC_ENG_AES_DECRYPTION"
.LASF2:
	.string	"short int"
.LASF67:
	.string	"Sec_Eng_AES_Enable_Link"
.LASF28:
	.string	"aesIV2"
.LASF50:
	.string	"SEC_ENG_AES_DOUBLE_KEY_128BITS"
.LASF10:
	.string	"uint32_t"
.LASF18:
	.string	"aesIntClr"
.LASF23:
	.string	"aesMsgLen"
.LASF53:
	.string	"SEC_ENG_AES_USE_OLD"
.LASF4:
	.string	"long long int"
.LASF17:
	.string	"aesHwKeyEn"
.LASF71:
	.string	"memset"
.LASF3:
	.string	"long int"
.LASF66:
	.string	"bl_sec_aes_init"
.LASF54:
	.string	"SEC_ENG_AES_ENCRYPTION"
.LASF68:
	.string	"Sec_Eng_AES_Link_Work"
.LASF38:
	.string	"BL_AES_ENCRYPT"
.LASF59:
	.string	"bl_aes_set_key"
.LASF40:
	.string	"bl_sec_aes_op_t"
.LASF22:
	.string	"aesXTS"
.LASF15:
	.string	"aesDecEn"
.LASF72:
	.string	"vTaskExitCritical"
.LASF76:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/sec_common/bl_sec_aes.c"
.LASF7:
	.string	"unsigned char"
.LASF48:
	.string	"SEC_ENG_AES_KEY_256BITS"
.LASF58:
	.string	"bl_aes_transform"
.LASF1:
	.string	"signed char"
.LASF12:
	.string	"long long unsigned int"
.LASF41:
	.string	"bl_SEC_Eng_AES_Link_Config_Type"
.LASF0:
	.string	"unsigned int"
.LASF8:
	.string	"uint16_t"
.LASF25:
	.string	"aesDstAddr"
.LASF26:
	.string	"aesIV0"
.LASF27:
	.string	"aesIV1"
.LASF46:
	.string	"SEC_ENG_AES_CBC"
.LASF29:
	.string	"aesIV3"
.LASF62:
	.string	"key_type"
.LASF9:
	.string	"short unsigned int"
.LASF51:
	.string	"SEC_ENG_AES_Key_Type"
.LASF52:
	.string	"SEC_ENG_AES_USE_NEW"
.LASF13:
	.string	"char"
.LASF19:
	.string	"aesIntSet"
.LASF47:
	.string	"SEC_ENG_AES_KEY_128BITS"
.LASF21:
	.string	"aesIVSel"
.LASF49:
	.string	"SEC_ENG_AES_KEY_192BITS"
.LASF24:
	.string	"aesSrcAddr"
.LASF11:
	.string	"long unsigned int"
.LASF77:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/hosal"
.LASF43:
	.string	"SEC_ENG_AES_ID0"
.LASF20:
	.string	"aesBlockMode"
.LASF60:
	.string	"key_len"
.LASF78:
	.string	"link_cfg"
.LASF6:
	.string	"uint8_t"
.LASF64:
	.string	"bl_aes_release_hw"
.LASF57:
	.string	"output"
.LASF45:
	.string	"SEC_ENG_AES_CTR"
.LASF69:
	.string	"Sec_Eng_AES_Disable_Link"
.LASF16:
	.string	"aesDecKeySel"
.LASF65:
	.string	"bl_aes_acquire_hw"
.LASF42:
	.string	"bl_sec_aes_t"
.LASF14:
	.string	"aesMode"
.LASF75:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
