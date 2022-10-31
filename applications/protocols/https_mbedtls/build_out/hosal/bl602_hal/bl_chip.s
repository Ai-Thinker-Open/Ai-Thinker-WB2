	.file	"bl_chip.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.bl_chip_info.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"RV32"
	.align	2
.LC1:
	.string	"RV64"
	.align	2
.LC2:
	.string	"RV128"
	.align	2
.LC3:
	.string	"RVxx"
	.section	.text.bl_chip_info,"ax",@progbits
	.align	1
	.globl	bl_chip_info
	.type	bl_chip_info, @function
bl_chip_info:
.LFB2:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_chip.c"
	.loc 1 17 1
	.cfi_startproc
.LVL0:
	.loc 1 18 5
	.loc 1 19 5
	.loc 1 21 5
.LBB4:
.LBB5:
	.loc 1 8 5
.LBE5:
.LBE4:
	.loc 1 17 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	sw	s1,20(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.loc 1 17 1
	mv	s0,a0
.LBB7:
.LBB6:
	.loc 1 8 23
	sw	zero,12(sp)
	.loc 1 10 5 is_stmt 1
 #APP
# 10 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_chip.c" 1
	csrr a5, misa
# 0 "" 2
 #NO_APP
	sw	a5,12(sp)
	.loc 1 12 5
	.loc 1 12 12 is_stmt 0
	lw	s1,12(sp)
.LVL1:
.LBE6:
.LBE7:
	.loc 1 24 5 is_stmt 1
	.loc 1 25 5 is_stmt 0
	li	a4,2
	.loc 1 24 15
	srli	a5,s1,30
.LVL2:
	.loc 1 25 5 is_stmt 1
	beq	a5,a4,.L2
	li	a4,3
	beq	a5,a4,.L3
	li	a4,1
	addi	s0,a0,4
	.loc 1 46 13 is_stmt 0
	li	a2,4
	.loc 1 25 5
	bne	a5,a4,.L4
	.loc 1 28 13 is_stmt 1
	lui	a1,%hi(.LC0)
	addi	a1,a1,%lo(.LC0)
.L13:
	.loc 1 46 13 is_stmt 0
	call	memcpy
.LVL3:
	.loc 1 47 13 is_stmt 1
	.loc 1 47 18 is_stmt 0
	mv	a0,s0
.LVL4:
	.loc 1 49 9 is_stmt 1
	j	.L5
.LVL5:
.L2:
	.loc 1 34 13
	lui	a1,%hi(.LC1)
	li	a2,4
	addi	a1,a1,%lo(.LC1)
	call	memcpy
.LVL6:
	.loc 1 35 13
	.loc 1 35 18 is_stmt 0
	addi	a0,s0,4
.LVL7:
	.loc 1 37 9 is_stmt 1
.L5:
	.loc 1 53 5
	.loc 1 53 15 is_stmt 0
	li	a5,45
	sb	a5,0(a0)
	.loc 1 53 11
	addi	a4,a0,1
.LVL8:
	.loc 1 56 5 is_stmt 1
	.loc 1 56 17
	.loc 1 56 12 is_stmt 0
	li	a5,0
	.loc 1 57 23
	li	a1,1
	.loc 1 56 5
	li	a2,26
.LVL9:
.L7:
	.loc 1 57 9 is_stmt 1
	.loc 1 57 23 is_stmt 0
	sll	a3,a1,a5
	.loc 1 57 18
	and	a3,a3,s1
	.loc 1 57 12
	beq	a3,zero,.L6
	.loc 1 59 13 is_stmt 1
.LVL10:
	.loc 1 59 30 is_stmt 0
	addi	a3,a5,65
	.loc 1 59 23
	sb	a3,0(a4)
	.loc 1 59 19
	addi	a4,a4,1
.LVL11:
.L6:
	.loc 1 56 25 is_stmt 1 discriminator 2
	.loc 1 56 26 is_stmt 0 discriminator 2
	addi	a5,a5,1
.LVL12:
	.loc 1 56 17 is_stmt 1 discriminator 2
	.loc 1 56 5 is_stmt 0 discriminator 2
	bne	a5,a2,.L7
	.loc 1 62 5 is_stmt 1
	.loc 1 62 11 is_stmt 0
	sb	zero,0(a4)
	.loc 1 64 5 is_stmt 1
	.loc 1 65 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
.LVL13:
	li	a0,0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL14:
.L3:
	.cfi_restore_state
	.loc 1 40 13 is_stmt 1
	lui	a1,%hi(.LC2)
	li	a2,5
	addi	a1,a1,%lo(.LC2)
	call	memcpy
.LVL15:
	.loc 1 41 13
	.loc 1 41 18 is_stmt 0
	addi	a0,s0,5
.LVL16:
	.loc 1 43 9 is_stmt 1
	j	.L5
.LVL17:
.L4:
	.loc 1 46 13
	lui	a1,%hi(.LC3)
	addi	a1,a1,%lo(.LC3)
	j	.L13
	.cfi_endproc
.LFE2:
	.size	bl_chip_info, .-bl_chip_info
	.section	.text.bl_chip_banner,"ax",@progbits
	.align	1
	.globl	bl_chip_banner
	.type	bl_chip_banner, @function
bl_chip_banner:
.LFB3:
	.loc 1 129 1
	.cfi_startproc
.LVL18:
	.loc 1 130 5
	.loc 1 130 13 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	sw	a5,0(a0)
	.loc 1 131 5 is_stmt 1
	.loc 1 132 1 is_stmt 0
	li	a0,0
.LVL19:
	ret
	.cfi_endproc
.LFE3:
	.size	bl_chip_banner, .-bl_chip_banner
	.section	.rodata.bl_chip_memory_ram.str1.4,"aMS",@progbits,1
	.align	2
.LC4:
	.string	"flash"
	.align	2
.LC5:
	.string	"tcm"
	.align	2
.LC6:
	.string	"wifi"
	.section	.text.bl_chip_memory_ram,"ax",@progbits
	.align	1
	.globl	bl_chip_memory_ram
	.type	bl_chip_memory_ram, @function
bl_chip_memory_ram:
.LFB4:
	.loc 1 135 1 is_stmt 1
	.cfi_startproc
.LVL20:
	.loc 1 136 5
	.loc 1 136 8 is_stmt 0
	lw	a4,0(a0)
	li	a5,2
	ble	a4,a5,.L17
	.loc 1 135 1
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
	.loc 1 140 10
	li	a5,3
	sw	a5,0(a0)
	.loc 1 145 13
	lui	a5,%hi(_ld_ram_addr0)
	addi	a5,a5,%lo(_ld_ram_addr0)
	sw	a5,0(a1)
	.loc 1 146 13
	lui	a5,%hi(_ld_ram_size0)
	mv	s2,a1
	addi	a5,a5,%lo(_ld_ram_size0)
	.loc 1 147 5
	lui	a1,%hi(.LC4)
.LVL21:
	.loc 1 146 13
	sw	a5,0(a2)
	.loc 1 147 5
	mv	a0,a3
.LVL22:
	addi	a1,a1,%lo(.LC4)
	mv	s1,a2
	mv	s0,a3
	.loc 1 140 5 is_stmt 1
	.loc 1 142 1
	.loc 1 143 1
	.loc 1 144 1
	.loc 1 145 5
	.loc 1 146 5
	.loc 1 147 5
	call	strcpy
.LVL23:
	.loc 1 148 5
	.loc 1 148 13 is_stmt 0
	lui	a5,%hi(_ld_ram_addr1)
	addi	a5,a5,%lo(_ld_ram_addr1)
	sw	a5,4(s2)
	.loc 1 149 5 is_stmt 1
	.loc 1 149 13 is_stmt 0
	lui	a5,%hi(_ld_ram_size1)
	addi	a5,a5,%lo(_ld_ram_size1)
	.loc 1 150 5
	lui	a1,%hi(.LC5)
	.loc 1 149 13
	sw	a5,4(s1)
	.loc 1 150 5 is_stmt 1
	addi	a1,a1,%lo(.LC5)
	addi	a0,s0,6
	call	strcpy
.LVL24:
	.loc 1 151 5
	.loc 1 151 13 is_stmt 0
	lui	a5,%hi(_ld_ram_addr2)
	addi	a5,a5,%lo(_ld_ram_addr2)
	sw	a5,8(s2)
	.loc 1 152 5 is_stmt 1
	.loc 1 152 13 is_stmt 0
	lui	a5,%hi(_ld_ram_size2)
	addi	a5,a5,%lo(_ld_ram_size2)
	.loc 1 153 5
	lui	a1,%hi(.LC6)
	.loc 1 152 13
	sw	a5,8(s1)
	.loc 1 153 5 is_stmt 1
	addi	a0,s0,12
	addi	a1,a1,%lo(.LC6)
	call	strcpy
.LVL25:
	.loc 1 154 5
	.loc 1 155 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL26:
	lw	s1,4(sp)
	.cfi_restore 9
.LVL27:
	lw	s2,0(sp)
	.cfi_restore 18
.LVL28:
	.loc 1 154 12
	li	a0,0
	.loc 1 155 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL29:
.L17:
	.loc 1 138 16
	li	a0,-1
.LVL30:
	.loc 1 155 1
	ret
	.cfi_endproc
.LFE4:
	.size	bl_chip_memory_ram, .-bl_chip_memory_ram
	.section	.rodata.bannder_shadow_bl602,"a"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	bannder_shadow_bl602, @object
	.size	bannder_shadow_bl602, 697
bannder_shadow_bl602:
	.ascii	"\342\226\210\342\226\210\342\226\210\342\226\210\342\226\210"
	.ascii	"\342\226\210\342\225\227 \342\226\210\342\226\210\342\225\227"
	.ascii	"      \342\226\210\342\226\210\342\226\210\342\226\210\342\226"
	.ascii	"\210\342\226\210\342\225\227  \342\226\210\342\226\210\342\226"
	.ascii	"\210\342\226\210\342\226\210\342\226\210\342\225\227 \342\226"
	.ascii	"\210\342\226\210\342\226\210\342\226\210\342\226\210\342\226"
	.ascii	"\210\342\225\227\n\r\342\226\210\342\226\210\342\225\224\342"
	.ascii	"\225\220\342\225\220\342\226\210\342\226\210\342\225\227\342"
	.ascii	"\226\210\342\226\210\342\225\221     \342\226\210\342\226\210"
	.ascii	"\342\225\224\342\225\220\342\225\220\342\225\220\342\225\220"
	.ascii	"\342\225\235 \342\226\210\342\226\210\342\225\224\342\225\220"
	.ascii	"\342\226\210\342\226\210\342\226\210\342\226\210\342\225\227"
	.ascii	"\342\225\232\342\225\220\342\225\220\342\225\220\342\225\220"
	.ascii	"\342\226\210\342\226\210\342\225\227\n\r\342\226\210\342\226"
	.ascii	"\210\342\226\210\342\226\210\342\226\210\342\226\210\342\225"
	.ascii	"\224\342\225\235\342\226\210\342\226\210\342\225\221     \342"
	.ascii	"\226\210\342\226\210\342\226\210\342\226\210\342\226\210\342"
	.ascii	"\226\210\342\226\210\342\225\227 \342\226\210\342\226\210\342"
	.ascii	"\225\221\342\226\210\342\226\210\342\225\224\342\226\210\342"
	.ascii	"\226\210\342\225\221 \342\226\210\342\226\210\342\226\210\342"
	.ascii	"\226\210\342\226\210\342\225\224\342\225\235\n\r\342\226\210"
	.ascii	"\342\226\210\342\225\224\342\225\220\342\225\220\342\226\210"
	.ascii	"\342\226\210\342\225\227\342\226\210\342\226\210\342\225\221"
	.ascii	"     \342\226\210\342\226\210\342\225\224\342\225\220\342\225"
	.ascii	"\220\342\225\220\342\226\210\342\226\210\342\225\227\342\226"
	.ascii	"\210\342\226\210\342\226\210\342\226\210\342\225\224\342\225"
	.ascii	"\235\342\226\210\342\226\210\342\225\221\342\226\210\342\226"
	.ascii	"\210\342\225\224\342\225\220\342"
	.string	"\225\220\342\225\220\342\225\235\n\r\342\226\210\342\226\210\342\226\210\342\226\210\342\226\210\342\226\210\342\225\224\342\225\235\342\226\210\342\226\210\342\226\210\342\226\210\342\226\210\342\226\210\342\226\210\342\225\227\342\225\232\342\226\210\342\226\210\342\226\210\342\226\210\342\226\210\342\226\210\342\225\224\342\225\235\342\225\232\342\226\210\342\226\210\342\226\210\342\226\210\342\226\210\342\226\210\342\225\224\342\225\235\342\226\210\342\226\210\342\226\210\342\226\210\342\226\210\342\226\210\342\226\210\342\225\227\n\r\342\225\232\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\235 \342\225\232\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\235 \342\225\232\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\235  \342\225\232\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\235 \342\225\232\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\220\342\225\235\n\r"
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2ed
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF30
	.byte	0xc
	.4byte	.LASF31
	.4byte	.LASF32
	.4byte	.Ldebug_ranges0+0x18
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
	.4byte	.LASF6
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x4d
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.byte	0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x6c
	.byte	0x4
	.4byte	0x5b
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x6
	.byte	0x4
	.4byte	0x8e
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x7
	.4byte	0x8e
	.byte	0x6
	.byte	0x4
	.4byte	0x95
	.byte	0x8
	.4byte	0x95
	.4byte	0xb1
	.byte	0x9
	.4byte	0x81
	.2byte	0x2b8
	.byte	0
	.byte	0x7
	.4byte	0xa0
	.byte	0xa
	.4byte	.LASF26
	.byte	0x1
	.byte	0x43
	.byte	0x13
	.4byte	0xb1
	.byte	0x5
	.byte	0x3
	.4byte	bannder_shadow_bl602
	.byte	0xb
	.4byte	.LASF21
	.byte	0x1
	.byte	0x86
	.byte	0x5
	.4byte	0x7a
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x1be
	.byte	0xc
	.string	"num"
	.byte	0x1
	.byte	0x86
	.byte	0x1d
	.4byte	0x1be
	.4byte	.LLST4
	.byte	0xd
	.4byte	.LASF12
	.byte	0x1
	.byte	0x86
	.byte	0x2f
	.4byte	0x1c4
	.4byte	.LLST5
	.byte	0xd
	.4byte	.LASF13
	.byte	0x1
	.byte	0x86
	.byte	0x44
	.4byte	0x1c4
	.4byte	.LLST6
	.byte	0xd
	.4byte	.LASF14
	.byte	0x1
	.byte	0x86
	.byte	0x51
	.4byte	0x1da
	.4byte	.LLST7
	.byte	0xe
	.4byte	.LASF15
	.byte	0x1
	.byte	0x8e
	.byte	0x10
	.4byte	0x41
	.byte	0xe
	.4byte	.LASF16
	.byte	0x1
	.byte	0x8e
	.byte	0x1f
	.4byte	0x41
	.byte	0xe
	.4byte	.LASF17
	.byte	0x1
	.byte	0x8f
	.byte	0x10
	.4byte	0x41
	.byte	0xe
	.4byte	.LASF18
	.byte	0x1
	.byte	0x8f
	.byte	0x1f
	.4byte	0x41
	.byte	0xe
	.4byte	.LASF19
	.byte	0x1
	.byte	0x90
	.byte	0x10
	.4byte	0x41
	.byte	0xe
	.4byte	.LASF20
	.byte	0x1
	.byte	0x90
	.byte	0x1f
	.4byte	0x41
	.byte	0xf
	.4byte	.LVL23
	.4byte	0x2d8
	.4byte	0x187
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0xf
	.4byte	.LVL24
	.4byte	0x2d8
	.4byte	0x1a4
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x6
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x11
	.4byte	.LVL25
	.4byte	0x2d8
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0xc
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x7a
	.byte	0x6
	.byte	0x4
	.4byte	0x81
	.byte	0x8
	.4byte	0x8e
	.4byte	0x1da
	.byte	0x12
	.4byte	0x81
	.byte	0x5
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x1ca
	.byte	0xb
	.4byte	.LASF22
	.byte	0x1
	.byte	0x80
	.byte	0x5
	.4byte	0x7a
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x20b
	.byte	0xd
	.4byte	.LASF23
	.byte	0x1
	.byte	0x80
	.byte	0x21
	.4byte	0x20b
	.4byte	.LLST3
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x9a
	.byte	0xb
	.4byte	.LASF24
	.byte	0x1
	.byte	0x10
	.byte	0x5
	.4byte	0x7a
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0x2ba
	.byte	0xd
	.4byte	.LASF25
	.byte	0x1
	.byte	0x10
	.byte	0x18
	.4byte	0x88
	.4byte	.LLST0
	.byte	0x13
	.4byte	.LASF27
	.byte	0x1
	.byte	0x12
	.byte	0xe
	.4byte	0x5b
	.4byte	.LLST1
	.byte	0x14
	.string	"i"
	.byte	0x1
	.byte	0x13
	.byte	0x9
	.4byte	0x7a
	.4byte	.LLST2
	.byte	0x15
	.4byte	0x2ba
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x15
	.byte	0xc
	.4byte	0x27c
	.byte	0x16
	.4byte	.Ldebug_ranges0+0
	.byte	0x17
	.4byte	0x2cb
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL3
	.4byte	0x2e4
	.byte	0xf
	.4byte	.LVL6
	.4byte	0x2e4
	.4byte	0x2a1
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0x11
	.4byte	.LVL15
	.4byte	0x2e4
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x35
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LASF33
	.byte	0x1
	.byte	0x6
	.byte	0x11
	.4byte	0x5b
	.byte	0x1
	.4byte	0x2d8
	.byte	0x1a
	.4byte	.LASF27
	.byte	0x1
	.byte	0x8
	.byte	0x17
	.4byte	0x67
	.byte	0
	.byte	0x1b
	.4byte	.LASF28
	.4byte	.LASF28
	.byte	0x3
	.byte	0x26
	.byte	0x7
	.byte	0x1b
	.4byte	.LASF29
	.4byte	.LASF29
	.byte	0x3
	.byte	0x1f
	.byte	0x8
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
	.byte	0x35
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x5
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
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0xa
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
	.byte	0xb
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
	.byte	0xc
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
	.byte	0xd
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
	.byte	0x10
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
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
	.byte	0x15
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
	.byte	0x16
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0
	.byte	0
	.byte	0x1b
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
.LLST4:
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL22
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
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL21
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL20
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL23-1
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL20
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL23-1
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL26
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3-1
	.4byte	.LVL4
	.2byte	0x3
	.byte	0x78
	.byte	0x7c
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x3
	.byte	0x7e
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL16
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL14
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL3-1
	.4byte	.LVL5
	.2byte	0x5
	.byte	0x79
	.byte	0
	.byte	0x4e
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL6-1
	.4byte	.LVL8
	.2byte	0x5
	.byte	0x79
	.byte	0
	.byte	0x4e
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL15-1
	.4byte	.LVL17
	.2byte	0x5
	.byte	0x79
	.byte	0
	.byte	0x4e
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x5f
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
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0
	.4byte	0
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF27:
	.string	"misa"
.LASF22:
	.string	"bl_chip_banner"
.LASF31:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_chip.c"
.LASF5:
	.string	"short unsigned int"
.LASF14:
	.string	"desc"
.LASF13:
	.string	"size"
.LASF18:
	.string	"_ld_ram_addr1"
.LASF20:
	.string	"_ld_ram_addr2"
.LASF28:
	.string	"strcpy"
.LASF8:
	.string	"long unsigned int"
.LASF12:
	.string	"addr"
.LASF23:
	.string	"banner"
.LASF26:
	.string	"bannder_shadow_bl602"
.LASF4:
	.string	"unsigned char"
.LASF25:
	.string	"info"
.LASF15:
	.string	"_ld_ram_size0"
.LASF17:
	.string	"_ld_ram_size1"
.LASF19:
	.string	"_ld_ram_size2"
.LASF10:
	.string	"unsigned int"
.LASF32:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/hosal"
.LASF9:
	.string	"long long unsigned int"
.LASF6:
	.string	"uint8_t"
.LASF33:
	.string	"_risc_isa_info"
.LASF16:
	.string	"_ld_ram_addr0"
.LASF3:
	.string	"long long int"
.LASF30:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF29:
	.string	"memcpy"
.LASF21:
	.string	"bl_chip_memory_ram"
.LASF1:
	.string	"short int"
.LASF7:
	.string	"uint32_t"
.LASF2:
	.string	"long int"
.LASF11:
	.string	"char"
.LASF0:
	.string	"signed char"
.LASF24:
	.string	"bl_chip_info"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
