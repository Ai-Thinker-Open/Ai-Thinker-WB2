	.file	"list.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.vListInitialise,"ax",@progbits
	.align	1
	.globl	vListInitialise
	.type	vListInitialise, @function
vListInitialise:
.LFB0:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/list.c"
	.loc 1 38 1
	.cfi_startproc
.LVL0:
	.loc 1 42 2
	.loc 1 42 37 is_stmt 0
	addi	a5,a0,8
	.loc 1 46 30
	li	a4,-1
	.loc 1 42 18
	sw	a5,4(a0)
	.loc 1 46 2 is_stmt 1
	.loc 1 46 30 is_stmt 0
	sw	a4,8(a0)
	.loc 1 50 2 is_stmt 1
	.loc 1 50 26 is_stmt 0
	sw	a5,12(a0)
	.loc 1 51 2 is_stmt 1
	.loc 1 51 30 is_stmt 0
	sw	a5,16(a0)
	.loc 1 53 2 is_stmt 1
	.loc 1 53 26 is_stmt 0
	sw	zero,0(a0)
	.loc 1 57 2 is_stmt 1
	.loc 1 58 2
	.loc 1 59 1 is_stmt 0
	ret
	.cfi_endproc
.LFE0:
	.size	vListInitialise, .-vListInitialise
	.section	.text.vListInitialiseItem,"ax",@progbits
	.align	1
	.globl	vListInitialiseItem
	.type	vListInitialiseItem, @function
vListInitialiseItem:
.LFB1:
	.loc 1 63 1 is_stmt 1
	.cfi_startproc
.LVL1:
	.loc 1 65 2
	.loc 1 65 22 is_stmt 0
	sw	zero,16(a0)
	.loc 1 69 2 is_stmt 1
	.loc 1 70 2
	.loc 1 71 1 is_stmt 0
	ret
	.cfi_endproc
.LFE1:
	.size	vListInitialiseItem, .-vListInitialiseItem
	.section	.text.vListInsertEnd,"ax",@progbits
	.align	1
	.globl	vListInsertEnd
	.type	vListInsertEnd, @function
vListInsertEnd:
.LFB2:
	.loc 1 75 1 is_stmt 1
	.cfi_startproc
.LVL2:
	.loc 1 76 1
	.loc 1 76 20 is_stmt 0
	lw	a5,4(a0)
.LVL3:
	.loc 1 81 2 is_stmt 1
	.loc 1 82 2
	.loc 1 87 2
	.loc 1 87 24 is_stmt 0
	sw	a5,4(a1)
	.loc 1 88 2 is_stmt 1
	.loc 1 88 37 is_stmt 0
	lw	a4,8(a5)
	.loc 1 88 28
	sw	a4,8(a1)
	.loc 1 91 2 is_stmt 1
	.loc 1 93 2
	.loc 1 93 30 is_stmt 0
	sw	a1,4(a4)
	.loc 1 94 2 is_stmt 1
	.loc 1 94 22 is_stmt 0
	sw	a1,8(a5)
	.loc 1 97 2 is_stmt 1
	.loc 1 97 29 is_stmt 0
	sw	a0,16(a1)
	.loc 1 99 2 is_stmt 1
	.loc 1 99 10 is_stmt 0
	lw	a5,0(a0)
.LVL4:
	.loc 1 99 29
	addi	a5,a5,1
	sw	a5,0(a0)
	.loc 1 100 1
	ret
	.cfi_endproc
.LFE2:
	.size	vListInsertEnd, .-vListInsertEnd
	.section	.text.vListInsert,"ax",@progbits
	.align	1
	.globl	vListInsert
	.type	vListInsert, @function
vListInsert:
.LFB3:
	.loc 1 104 1 is_stmt 1
	.cfi_startproc
.LVL5:
	.loc 1 105 1
	.loc 1 106 1
	.loc 1 106 18 is_stmt 0
	lw	a2,0(a1)
.LVL6:
	.loc 1 111 2 is_stmt 1
	.loc 1 112 2
	.loc 1 122 2
	.loc 1 122 4 is_stmt 0
	li	a4,-1
	.loc 1 150 19
	addi	a5,a0,8
	.loc 1 122 4
	beq	a2,a4,.L11
.L8:
.LVL7:
	.loc 1 150 61 is_stmt 1 discriminator 1
	mv	a3,a5
	.loc 1 150 71 is_stmt 0 discriminator 1
	lw	a5,4(a5)
.LVL8:
	.loc 1 150 3 discriminator 1
	lw	a4,0(a5)
	bleu	a4,a2,.L8
.L7:
	.loc 1 157 2 is_stmt 1
	.loc 1 157 24 is_stmt 0
	sw	a5,4(a1)
	.loc 1 158 2 is_stmt 1
	.loc 1 158 36 is_stmt 0
	sw	a1,8(a5)
	.loc 1 159 2 is_stmt 1
	.loc 1 159 28 is_stmt 0
	sw	a3,8(a1)
	.loc 1 160 2 is_stmt 1
	.loc 1 160 21 is_stmt 0
	sw	a1,4(a3)
	.loc 1 164 2 is_stmt 1
	.loc 1 164 29 is_stmt 0
	sw	a0,16(a1)
	.loc 1 166 2 is_stmt 1
	.loc 1 166 10 is_stmt 0
	lw	a5,0(a0)
	.loc 1 166 29
	addi	a5,a5,1
	sw	a5,0(a0)
	.loc 1 167 1
	ret
.LVL9:
.L11:
	.loc 1 124 3 is_stmt 1
	.loc 1 124 14 is_stmt 0
	lw	a3,16(a0)
.LVL10:
	.loc 1 157 36
	lw	a5,4(a3)
	j	.L7
	.cfi_endproc
.LFE3:
	.size	vListInsert, .-vListInsert
	.section	.text.uxListRemove,"ax",@progbits
	.align	1
	.globl	uxListRemove
	.type	uxListRemove, @function
uxListRemove:
.LFB4:
	.loc 1 171 1 is_stmt 1
	.cfi_startproc
.LVL11:
	.loc 1 174 1
	.loc 1 176 16 is_stmt 0
	lw	a3,4(a0)
	.loc 1 176 53
	lw	a4,8(a0)
	.loc 1 174 16
	lw	a5,16(a0)
.LVL12:
	.loc 1 176 2 is_stmt 1
	.loc 1 176 37 is_stmt 0
	sw	a4,8(a3)
	.loc 1 177 2 is_stmt 1
	.loc 1 177 53 is_stmt 0
	lw	a3,4(a0)
	.loc 1 177 37
	sw	a3,4(a4)
	.loc 1 180 2 is_stmt 1
	.loc 1 183 2
	.loc 1 183 4 is_stmt 0
	lw	a4,4(a5)
	beq	a4,a0,.L14
	.loc 1 189 3 is_stmt 1
	.loc 1 192 2
	.loc 1 192 30 is_stmt 0
	sw	zero,16(a0)
	.loc 1 193 2 is_stmt 1
	.loc 1 193 10 is_stmt 0
	lw	a4,0(a5)
	.loc 1 193 29
	addi	a4,a4,-1
	sw	a4,0(a5)
	.loc 1 195 2 is_stmt 1
	.loc 1 195 15 is_stmt 0
	lw	a0,0(a5)
.LVL13:
	.loc 1 196 1
	ret
.LVL14:
.L14:
	.loc 1 185 3 is_stmt 1
	.loc 1 185 35 is_stmt 0
	lw	a4,8(a0)
	.loc 1 185 19
	sw	a4,4(a5)
	.loc 1 189 3 is_stmt 1
	.loc 1 192 2
	.loc 1 192 30 is_stmt 0
	sw	zero,16(a0)
	.loc 1 193 2 is_stmt 1
	.loc 1 193 10 is_stmt 0
	lw	a4,0(a5)
	.loc 1 193 29
	addi	a4,a4,-1
	sw	a4,0(a5)
	.loc 1 195 2 is_stmt 1
	.loc 1 195 15 is_stmt 0
	lw	a0,0(a5)
.LVL15:
	.loc 1 196 1
	ret
	.cfi_endproc
.LFE4:
	.size	uxListRemove, .-uxListRemove
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/list.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2b1
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF36
	.byte	0xc
	.4byte	.LASF37
	.4byte	.LASF38
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x5
	.4byte	.LASF10
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x56
	.byte	0x5
	.4byte	.LASF11
	.byte	0x3
	.byte	0x40
	.byte	0x12
	.4byte	0x74
	.byte	0x6
	.4byte	0x80
	.byte	0x5
	.4byte	.LASF12
	.byte	0x3
	.byte	0x41
	.byte	0x12
	.4byte	0x74
	.byte	0x7
	.4byte	0x91
	.byte	0x8
	.4byte	.LASF18
	.byte	0x14
	.byte	0x4
	.byte	0x8c
	.byte	0x8
	.4byte	0xf1
	.byte	0x9
	.4byte	.LASF13
	.byte	0x4
	.byte	0x8f
	.byte	0xd
	.4byte	0x91
	.byte	0
	.byte	0x9
	.4byte	.LASF14
	.byte	0x4
	.byte	0x90
	.byte	0x16
	.4byte	0xf1
	.byte	0x4
	.byte	0x9
	.4byte	.LASF15
	.byte	0x4
	.byte	0x91
	.byte	0x16
	.4byte	0xf1
	.byte	0x8
	.byte	0x9
	.4byte	.LASF16
	.byte	0x4
	.byte	0x92
	.byte	0x9
	.4byte	0x6b
	.byte	0xc
	.byte	0x9
	.4byte	.LASF17
	.byte	0x4
	.byte	0x93
	.byte	0x11
	.4byte	0x12c
	.byte	0x10
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0xa2
	.byte	0x8
	.4byte	.LASF19
	.byte	0x14
	.byte	0x4
	.byte	0xa4
	.byte	0x10
	.4byte	0x12c
	.byte	0x9
	.4byte	.LASF20
	.byte	0x4
	.byte	0xa7
	.byte	0x17
	.4byte	0x8c
	.byte	0
	.byte	0x9
	.4byte	.LASF21
	.byte	0x4
	.byte	0xa8
	.byte	0xf
	.4byte	0x17f
	.byte	0x4
	.byte	0x9
	.4byte	.LASF22
	.byte	0x4
	.byte	0xa9
	.byte	0x11
	.4byte	0x173
	.byte	0x8
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0xf7
	.byte	0x5
	.4byte	.LASF23
	.byte	0x4
	.byte	0x96
	.byte	0x1b
	.4byte	0xa2
	.byte	0x8
	.4byte	.LASF24
	.byte	0xc
	.byte	0x4
	.byte	0x98
	.byte	0x8
	.4byte	0x173
	.byte	0x9
	.4byte	.LASF13
	.byte	0x4
	.byte	0x9b
	.byte	0xd
	.4byte	0x91
	.byte	0
	.byte	0x9
	.4byte	.LASF14
	.byte	0x4
	.byte	0x9c
	.byte	0x16
	.4byte	0xf1
	.byte	0x4
	.byte	0x9
	.4byte	.LASF15
	.byte	0x4
	.byte	0x9d
	.byte	0x16
	.4byte	0xf1
	.byte	0x8
	.byte	0
	.byte	0x5
	.4byte	.LASF25
	.byte	0x4
	.byte	0x9f
	.byte	0x20
	.4byte	0x13e
	.byte	0xa
	.byte	0x4
	.4byte	0x132
	.byte	0x7
	.4byte	0x17f
	.byte	0x5
	.4byte	.LASF26
	.byte	0x4
	.byte	0xab
	.byte	0x3
	.4byte	0xf7
	.byte	0xb
	.4byte	.LASF39
	.byte	0x1
	.byte	0xaa
	.byte	0xd
	.4byte	0x80
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x1cf
	.byte	0xc
	.4byte	.LASF27
	.byte	0x1
	.byte	0xaa
	.byte	0x2e
	.4byte	0x185
	.4byte	.LLST2
	.byte	0xd
	.4byte	.LASF28
	.byte	0x1
	.byte	0xae
	.byte	0x10
	.4byte	0x1d5
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x18a
	.byte	0x7
	.4byte	0x1cf
	.byte	0xe
	.4byte	.LASF32
	.byte	0x1
	.byte	0x67
	.byte	0x6
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x22b
	.byte	0xf
	.4byte	.LASF28
	.byte	0x1
	.byte	0x67
	.byte	0x22
	.4byte	0x1d5
	.byte	0x1
	.byte	0x5a
	.byte	0xf
	.4byte	.LASF29
	.byte	0x1
	.byte	0x67
	.byte	0x3d
	.4byte	0x185
	.byte	0x1
	.byte	0x5b
	.byte	0x10
	.4byte	.LASF30
	.byte	0x1
	.byte	0x69
	.byte	0xd
	.4byte	0x17f
	.4byte	.LLST1
	.byte	0xd
	.4byte	.LASF31
	.byte	0x1
	.byte	0x6a
	.byte	0x12
	.4byte	0x9d
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0xe
	.4byte	.LASF33
	.byte	0x1
	.byte	0x4a
	.byte	0x6
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0x26e
	.byte	0xf
	.4byte	.LASF28
	.byte	0x1
	.byte	0x4a
	.byte	0x25
	.4byte	0x1d5
	.byte	0x1
	.byte	0x5a
	.byte	0xf
	.4byte	.LASF29
	.byte	0x1
	.byte	0x4a
	.byte	0x40
	.4byte	0x185
	.byte	0x1
	.byte	0x5b
	.byte	0x10
	.4byte	.LASF21
	.byte	0x1
	.byte	0x4c
	.byte	0x14
	.4byte	0x185
	.4byte	.LLST0
	.byte	0
	.byte	0xe
	.4byte	.LASF34
	.byte	0x1
	.byte	0x3e
	.byte	0x6
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.4byte	0x293
	.byte	0xf
	.4byte	.LASF35
	.byte	0x1
	.byte	0x3e
	.byte	0x2e
	.4byte	0x185
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x11
	.4byte	.LASF40
	.byte	0x1
	.byte	0x25
	.byte	0x6
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.byte	0xf
	.4byte	.LASF28
	.byte	0x1
	.byte	0x25
	.byte	0x26
	.4byte	0x1d5
	.byte	0x1
	.byte	0x5a
	.byte	0
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
	.byte	0x35
	.byte	0
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
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
	.byte	0x18
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST2:
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL10
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5f
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
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
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
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
.LASF17:
	.string	"pvContainer"
.LASF12:
	.string	"TickType_t"
.LASF25:
	.string	"MiniListItem_t"
.LASF13:
	.string	"xItemValue"
.LASF22:
	.string	"xListEnd"
.LASF16:
	.string	"pvOwner"
.LASF18:
	.string	"xLIST_ITEM"
.LASF2:
	.string	"unsigned char"
.LASF6:
	.string	"long unsigned int"
.LASF27:
	.string	"pxItemToRemove"
.LASF4:
	.string	"short unsigned int"
.LASF38:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/freertos_riscv_ram"
.LASF34:
	.string	"vListInitialiseItem"
.LASF26:
	.string	"List_t"
.LASF37:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/list.c"
.LASF20:
	.string	"uxNumberOfItems"
.LASF33:
	.string	"vListInsertEnd"
.LASF14:
	.string	"pxNext"
.LASF0:
	.string	"unsigned int"
.LASF40:
	.string	"vListInitialise"
.LASF31:
	.string	"xValueOfInsertion"
.LASF8:
	.string	"long long unsigned int"
.LASF35:
	.string	"pxItem"
.LASF23:
	.string	"ListItem_t"
.LASF7:
	.string	"long long int"
.LASF9:
	.string	"char"
.LASF30:
	.string	"pxIterator"
.LASF3:
	.string	"short int"
.LASF21:
	.string	"pxIndex"
.LASF36:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -O2 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF15:
	.string	"pxPrevious"
.LASF10:
	.string	"uint32_t"
.LASF5:
	.string	"long int"
.LASF39:
	.string	"uxListRemove"
.LASF24:
	.string	"xMINI_LIST_ITEM"
.LASF1:
	.string	"signed char"
.LASF28:
	.string	"pxList"
.LASF19:
	.string	"xLIST"
.LASF11:
	.string	"UBaseType_t"
.LASF29:
	.string	"pxNewListItem"
.LASF32:
	.string	"vListInsert"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
