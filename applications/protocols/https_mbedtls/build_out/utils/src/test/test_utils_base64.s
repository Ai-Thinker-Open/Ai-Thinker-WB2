	.file	"test_utils_base64.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.cmd_encode.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"test_utils_base64.c"
	.align	2
.LC1:
	.string	"ERROR "
	.align	2
.LC2:
	.string	"[%10u][%s: %s:%4d] Usage:\r\n"
	.align	2
.LC3:
	.string	"[%10u][%s: %s:%4d] encode_base64 0x420c0000 512\r\n"
	.align	2
.LC4:
	.string	"%c"
	.align	2
.LC5:
	.string	"[%10u][%s: %s:%4d] base64 encode error\r\n"
	.align	2
.LC6:
	.string	"[%10u][%s: %s:%4d] base64 encode mem not enough %d\r\n"
	.align	2
.LC7:
	.string	"[%10u][%s: %s:%4d] base64 encode argc error\r\n"
	.section	.text.cmd_encode,"ax",@progbits
	.align	1
	.type	cmd_encode, @function
cmd_encode:
.LFB4:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/src/test/test_utils_base64.c"
	.loc 1 13 1
	.cfi_startproc
.LVL0:
	.loc 1 14 5
	.loc 1 13 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.loc 1 14 25
	sw	zero,12(sp)
	.loc 1 15 5 is_stmt 1
.LVL1:
	.loc 1 17 5
	.loc 1 17 8 is_stmt 0
	li	a5,3
	beq	a2,a5,.L2
	.loc 1 19 9 is_stmt 1
	.loc 1 19 14
	.loc 1 19 16
	.loc 1 19 63 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL2:
	.loc 1 19 16
	beq	a0,zero,.L3
	.loc 1 19 90 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL3:
.L31:
	.loc 1 19 119 discriminator 2
	mv	a1,a0
	.loc 1 19 16 discriminator 2
	lui	s1,%hi(.LC0)
	lui	s0,%hi(.LC1)
	lui	a0,%hi(.LC2)
	li	a4,19
	addi	a3,s1,%lo(.LC0)
	addi	a2,s0,%lo(.LC1)
	addi	a0,a0,%lo(.LC2)
	call	bl_printk
.LVL4:
	.loc 1 19 179 is_stmt 1 discriminator 2
	.loc 1 19 188 discriminator 2
	.loc 1 20 9 discriminator 2
	.loc 1 20 14 discriminator 2
	.loc 1 20 16 discriminator 2
	.loc 1 20 85 is_stmt 0 discriminator 2
	call	xPortIsInsideInterrupt
.LVL5:
	.loc 1 20 16 discriminator 2
	beq	a0,zero,.L5
	.loc 1 20 112 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL6:
.L32:
	.loc 1 20 141 discriminator 2
	mv	a1,a0
	.loc 1 20 16 discriminator 2
	lui	a0,%hi(.LC3)
	li	a4,20
	addi	a3,s1,%lo(.LC0)
	addi	a2,s0,%lo(.LC1)
	addi	a0,a0,%lo(.LC3)
.L36:
	.loc 1 57 16 discriminator 4
	call	bl_printk
.LVL7:
	.loc 1 57 197 is_stmt 1 discriminator 4
	.loc 1 57 206 discriminator 4
	j	.L1
.L3:
	.loc 1 19 119 is_stmt 0 discriminator 2
	call	xTaskGetTickCount
.LVL8:
	j	.L31
.L5:
	.loc 1 20 141 discriminator 2
	call	xTaskGetTickCount
.LVL9:
	j	.L32
.LVL10:
.L2:
	.loc 1 24 21
	lw	a0,4(a3)
.LVL11:
	li	a1,0
.LVL12:
	mv	s0,a2
	li	a2,0
.LVL13:
	mv	s1,a3
	.loc 1 24 5 is_stmt 1
	.loc 1 24 21 is_stmt 0
	call	strtol
.LVL14:
	mv	s2,a0
.LVL15:
	.loc 1 25 5 is_stmt 1
	.loc 1 25 17 is_stmt 0
	lw	a0,8(s1)
.LVL16:
	li	a2,0
	li	a1,0
	call	strtol
.LVL17:
	mv	s1,a0
.LVL18:
	.loc 1 26 5 is_stmt 1
	.loc 1 26 8 is_stmt 0
	beq	s2,zero,.L8
	.loc 1 26 22 discriminator 1
	beq	a0,zero,.L8
	.loc 1 28 9 is_stmt 1
	.loc 1 28 38 is_stmt 0
	addi	a1,a0,2
	.loc 1 28 43
	divu	a1,a1,s0
	.loc 1 29 18
	li	a0,1
	.loc 1 28 24
	slli	a1,a1,2
	.loc 1 28 20
	sw	a1,12(sp)
	.loc 1 29 9 is_stmt 1
	.loc 1 29 18 is_stmt 0
	call	calloc
.LVL19:
	mv	s0,a0
.LVL20:
	.loc 1 31 9 is_stmt 1
	.loc 1 31 12 is_stmt 0
	beq	a0,zero,.L9
	.loc 1 33 13 is_stmt 1
	.loc 1 33 35 is_stmt 0
	lw	a2,12(sp)
	mv	a3,a0
	mv	a1,s1
	addi	a4,sp,12
	mv	a0,s2
	call	utils_base64encode
.LVL21:
	.loc 1 33 16
	li	a5,1
.LBB2:
	.loc 1 37 24
	li	s1,0
.LVL22:
.LBE2:
	.loc 1 33 16
	bne	a0,a5,.L29
.LBB3:
	.loc 1 39 21
	lui	s2,%hi(.LC4)
.LVL23:
.L10:
	.loc 1 37 29 is_stmt 1 discriminator 1
	.loc 1 37 17 is_stmt 0 discriminator 1
	lw	a5,12(sp)
	bgtu	a5,s1,.L12
.LVL24:
.L13:
.LBE3:
	.loc 1 45 200 is_stmt 1 discriminator 5
	.loc 1 45 209 discriminator 5
	.loc 1 48 13 discriminator 5
	mv	a0,s0
	call	free
.LVL25:
.L1:
	.loc 1 60 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL26:
.L12:
	.cfi_restore_state
.LBB4:
	.loc 1 39 21 is_stmt 1 discriminator 3
	.loc 1 39 42 is_stmt 0 discriminator 3
	add	a5,s0,s1
	.loc 1 39 21 discriminator 3
	lbu	a1,0(a5)
	addi	a0,s2,%lo(.LC4)
	.loc 1 37 46 discriminator 3
	addi	s1,s1,1
.LVL27:
	.loc 1 39 21 discriminator 3
	call	aos_cli_printf
.LVL28:
	.loc 1 40 21 is_stmt 1 discriminator 3
	.loc 1 37 45 discriminator 3
	j	.L10
.LVL29:
.L29:
.LBE4:
	.loc 1 45 17
	.loc 1 45 22
	.loc 1 45 24
	.loc 1 45 84 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL30:
	.loc 1 45 24
	beq	a0,zero,.L14
	.loc 1 45 111 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL31:
.L33:
	.loc 1 45 140 discriminator 2
	mv	a1,a0
	.loc 1 45 24 discriminator 2
	lui	a3,%hi(.LC0)
	lui	a2,%hi(.LC1)
	lui	a0,%hi(.LC5)
	li	a4,45
	addi	a3,a3,%lo(.LC0)
	addi	a2,a2,%lo(.LC1)
	addi	a0,a0,%lo(.LC5)
	call	bl_printk
.LVL32:
	j	.L13
.L14:
	.loc 1 45 140 discriminator 2
	call	xTaskGetTickCount
.LVL33:
	j	.L33
.LVL34:
.L9:
	.loc 1 52 13 is_stmt 1
	.loc 1 52 18
	.loc 1 52 20
	.loc 1 52 92 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL35:
	.loc 1 52 20
	beq	a0,zero,.L17
	.loc 1 52 119 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL36:
.L34:
	.loc 1 52 20 discriminator 2
	lw	a5,12(sp)
	.loc 1 52 148 discriminator 2
	mv	a1,a0
	.loc 1 52 20 discriminator 2
	lui	a3,%hi(.LC0)
	lui	a2,%hi(.LC1)
	lui	a0,%hi(.LC6)
	li	a4,52
	addi	a3,a3,%lo(.LC0)
	addi	a2,a2,%lo(.LC1)
	addi	a0,a0,%lo(.LC6)
	call	bl_printk
.LVL37:
	j	.L1
.L17:
	.loc 1 52 148 discriminator 2
	call	xTaskGetTickCount
.LVL38:
	j	.L34
.LVL39:
.L8:
	.loc 1 57 9 is_stmt 1
	.loc 1 57 14
	.loc 1 57 16
	.loc 1 57 81 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL40:
	.loc 1 57 16
	beq	a0,zero,.L19
	.loc 1 57 108 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL41:
.L35:
	.loc 1 57 137 discriminator 2
	mv	a1,a0
	.loc 1 57 16 discriminator 2
	lui	a3,%hi(.LC0)
	lui	a2,%hi(.LC1)
	lui	a0,%hi(.LC7)
	li	a4,57
	addi	a3,a3,%lo(.LC0)
	addi	a2,a2,%lo(.LC1)
	addi	a0,a0,%lo(.LC7)
	j	.L36
.L19:
	.loc 1 57 137 discriminator 2
	call	xTaskGetTickCount
.LVL42:
	j	.L35
	.cfi_endproc
.LFE4:
	.size	cmd_encode, .-cmd_encode
	.section	.text.base64_cli_init,"ax",@progbits
	.align	1
	.globl	base64_cli_init
	.type	base64_cli_init, @function
base64_cli_init:
.LFB5:
	.loc 1 67 1 is_stmt 1
	.cfi_startproc
	.loc 1 72 5
	.loc 1 73 1 is_stmt 0
	li	a0,0
	ret
	.cfi_endproc
.LFE5:
	.size	base64_cli_init, .-base64_cli_init
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC8:
	.string	"encode_base64"
	.align	2
.LC9:
	.string	"base64 encode"
	.section	.static_cli_cmds,"a"
	.align	2
	.type	cmds_user, @object
	.size	cmds_user, 12
cmds_user:
	.word	.LC8
	.word	.LC9
	.word	cmd_encode
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/cli/cli/include/cli.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_log.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_base64.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x43d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF34
	.byte	0xc
	.4byte	.LASF35
	.4byte	.LASF36
	.4byte	.Ldebug_ranges0+0x20
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF3
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF4
	.byte	0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x54
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x6e
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
	.byte	0x5
	.byte	0x4
	.4byte	0x89
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x6
	.4byte	0x89
	.byte	0x5
	.byte	0x4
	.4byte	0x90
	.byte	0x7
	.4byte	.LASF37
	.byte	0xc
	.byte	0x3
	.byte	0x32
	.byte	0x8
	.4byte	0xd0
	.byte	0x8
	.4byte	.LASF12
	.byte	0x3
	.byte	0x33
	.byte	0x11
	.4byte	0x95
	.byte	0
	.byte	0x8
	.4byte	.LASF13
	.byte	0x3
	.byte	0x34
	.byte	0x11
	.4byte	0x95
	.byte	0x4
	.byte	0x8
	.4byte	.LASF14
	.byte	0x3
	.byte	0x36
	.byte	0xc
	.4byte	0xf5
	.byte	0x8
	.byte	0
	.byte	0x6
	.4byte	0x9b
	.byte	0x9
	.4byte	0xef
	.byte	0xa
	.4byte	0x83
	.byte	0xa
	.4byte	0x7c
	.byte	0xa
	.4byte	0x7c
	.byte	0xa
	.4byte	0xef
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x83
	.byte	0x5
	.byte	0x4
	.4byte	0xd5
	.byte	0xb
	.4byte	.LASF38
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x8
	.byte	0xf
	.byte	0xe
	.4byte	0x11a
	.byte	0xc
	.4byte	.LASF15
	.byte	0
	.byte	0xc
	.4byte	.LASF16
	.byte	0x1
	.byte	0
	.byte	0xd
	.4byte	0xd0
	.4byte	0x12a
	.byte	0xe
	.4byte	0x25
	.byte	0
	.byte	0
	.byte	0x6
	.4byte	0x11a
	.byte	0xf
	.4byte	.LASF19
	.byte	0x1
	.byte	0x3e
	.byte	0x21
	.4byte	0x12a
	.byte	0x5
	.byte	0x3
	.4byte	cmds_user
	.byte	0x10
	.4byte	.LASF39
	.byte	0x1
	.byte	0x42
	.byte	0x5
	.4byte	0x7c
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.byte	0x11
	.4byte	.LASF40
	.byte	0x1
	.byte	0xc
	.byte	0xd
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x3d2
	.byte	0x12
	.string	"buf"
	.byte	0x1
	.byte	0xc
	.byte	0x1e
	.4byte	0x83
	.4byte	.LLST0
	.byte	0x12
	.string	"len"
	.byte	0x1
	.byte	0xc
	.byte	0x27
	.4byte	0x7c
	.4byte	.LLST1
	.byte	0x13
	.4byte	.LASF17
	.byte	0x1
	.byte	0xc
	.byte	0x30
	.4byte	0x7c
	.4byte	.LLST2
	.byte	0x13
	.4byte	.LASF18
	.byte	0x1
	.byte	0xc
	.byte	0x3d
	.4byte	0xef
	.4byte	.LLST3
	.byte	0x14
	.4byte	.LASF20
	.byte	0x1
	.byte	0xe
	.byte	0xe
	.4byte	0x62
	.4byte	.LLST4
	.byte	0xf
	.4byte	.LASF21
	.byte	0x1
	.byte	0xe
	.byte	0x19
	.4byte	0x62
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x14
	.4byte	.LASF22
	.byte	0x1
	.byte	0xf
	.byte	0xb
	.4byte	0x83
	.4byte	.LLST5
	.byte	0x14
	.4byte	.LASF23
	.byte	0x1
	.byte	0xf
	.byte	0x13
	.4byte	0x83
	.4byte	.LLST6
	.byte	0x15
	.4byte	.Ldebug_ranges0+0
	.4byte	0x227
	.byte	0x16
	.string	"i"
	.byte	0x1
	.byte	0x23
	.byte	0x1a
	.4byte	0x62
	.4byte	.LLST7
	.byte	0x14
	.4byte	.LASF24
	.byte	0x1
	.byte	0x24
	.byte	0x17
	.4byte	0x83
	.4byte	.LLST8
	.byte	0x17
	.4byte	.LVL28
	.4byte	0x3d2
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LVL2
	.4byte	0x3de
	.byte	0x19
	.4byte	.LVL3
	.4byte	0x3ea
	.byte	0x1a
	.4byte	.LVL4
	.4byte	0x3f7
	.4byte	0x267
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x18
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x18
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x18
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x43
	.byte	0
	.byte	0x19
	.4byte	.LVL5
	.4byte	0x3de
	.byte	0x19
	.4byte	.LVL6
	.4byte	0x3ea
	.byte	0x19
	.4byte	.LVL7
	.4byte	0x3f7
	.byte	0x19
	.4byte	.LVL8
	.4byte	0x403
	.byte	0x19
	.4byte	.LVL9
	.4byte	0x403
	.byte	0x1a
	.4byte	.LVL14
	.4byte	0x410
	.4byte	0x2ac
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x18
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1a
	.4byte	.LVL17
	.4byte	0x410
	.4byte	0x2c4
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x18
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1a
	.4byte	.LVL19
	.4byte	0x41c
	.4byte	0x2e8
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0xd
	.byte	0x79
	.byte	0x2
	.byte	0xf7
	.byte	0x25
	.byte	0x78
	.byte	0
	.byte	0xf7
	.byte	0x25
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0x32
	.byte	0x24
	.byte	0
	.byte	0x1a
	.4byte	.LVL21
	.4byte	0x428
	.4byte	0x30e
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x18
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x18
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x1a
	.4byte	.LVL25
	.4byte	0x434
	.4byte	0x322
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LVL30
	.4byte	0x3de
	.byte	0x19
	.4byte	.LVL31
	.4byte	0x3ea
	.byte	0x1a
	.4byte	.LVL32
	.4byte	0x3f7
	.4byte	0x363
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x18
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x18
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x18
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x2d
	.byte	0
	.byte	0x19
	.4byte	.LVL33
	.4byte	0x403
	.byte	0x19
	.4byte	.LVL35
	.4byte	0x3de
	.byte	0x19
	.4byte	.LVL36
	.4byte	0x3ea
	.byte	0x1a
	.4byte	.LVL37
	.4byte	0x3f7
	.4byte	0x3ad
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x18
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x18
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x18
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x34
	.byte	0
	.byte	0x19
	.4byte	.LVL38
	.4byte	0x403
	.byte	0x19
	.4byte	.LVL40
	.4byte	0x3de
	.byte	0x19
	.4byte	.LVL41
	.4byte	0x3ea
	.byte	0x19
	.4byte	.LVL42
	.4byte	0x403
	.byte	0
	.byte	0x1b
	.4byte	.LASF25
	.4byte	.LASF25
	.byte	0x3
	.byte	0x8c
	.byte	0x5
	.byte	0x1b
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x4
	.byte	0x98
	.byte	0xc
	.byte	0x1c
	.4byte	.LASF27
	.4byte	.LASF27
	.byte	0x5
	.2byte	0x558
	.byte	0xc
	.byte	0x1b
	.4byte	.LASF28
	.4byte	.LASF28
	.byte	0x6
	.byte	0x81
	.byte	0x6
	.byte	0x1c
	.4byte	.LASF29
	.4byte	.LASF29
	.byte	0x5
	.2byte	0x547
	.byte	0xc
	.byte	0x1b
	.4byte	.LASF30
	.4byte	.LASF30
	.byte	0x7
	.byte	0xab
	.byte	0x6
	.byte	0x1b
	.4byte	.LASF31
	.4byte	.LASF31
	.byte	0x7
	.byte	0x5a
	.byte	0x7
	.byte	0x1b
	.4byte	.LASF32
	.4byte	.LASF32
	.byte	0x8
	.byte	0x15
	.byte	0xc
	.byte	0x1b
	.4byte	.LASF33
	.4byte	.LASF33
	.byte	0x7
	.byte	0x5e
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
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
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
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0xe
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
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0x10
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
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0x15
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
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
	.byte	0x17
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
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
	.byte	0x1
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
	.byte	0x1c
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
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2-1
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
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2-1
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
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL2-1
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL13
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL20
	.4byte	.LVL39
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL2-1
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL14-1
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL18
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL18
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL34
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL29
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL1
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL26
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL39
	.4byte	.LFE4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x3
	.byte	0x79
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x6
	.byte	0x78
	.byte	0
	.byte	0x79
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x6
	.byte	0x78
	.byte	0
	.byte	0x79
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x8
	.byte	0x78
	.byte	0
	.byte	0x79
	.byte	0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	0
	.4byte	0
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF31:
	.string	"calloc"
.LASF25:
	.string	"aos_cli_printf"
.LASF6:
	.string	"short unsigned int"
.LASF36:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/utils"
.LASF40:
	.string	"cmd_encode"
.LASF16:
	.string	"SUCCESS_RETURN"
.LASF5:
	.string	"unsigned char"
.LASF28:
	.string	"bl_printk"
.LASF35:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/src/test/test_utils_base64.c"
.LASF21:
	.string	"output_len"
.LASF9:
	.string	"long unsigned int"
.LASF22:
	.string	"inbuf"
.LASF24:
	.string	"addr"
.LASF13:
	.string	"help"
.LASF37:
	.string	"cli_command"
.LASF39:
	.string	"base64_cli_init"
.LASF32:
	.string	"utils_base64encode"
.LASF0:
	.string	"unsigned int"
.LASF20:
	.string	"input_len"
.LASF10:
	.string	"long long unsigned int"
.LASF7:
	.string	"uint8_t"
.LASF26:
	.string	"xPortIsInsideInterrupt"
.LASF38:
	.string	"iotx_err"
.LASF14:
	.string	"function"
.LASF17:
	.string	"argc"
.LASF33:
	.string	"free"
.LASF4:
	.string	"long long int"
.LASF19:
	.string	"cmds_user"
.LASF34:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF11:
	.string	"char"
.LASF27:
	.string	"xTaskGetTickCountFromISR"
.LASF29:
	.string	"xTaskGetTickCount"
.LASF2:
	.string	"short int"
.LASF18:
	.string	"argv"
.LASF23:
	.string	"outbuf"
.LASF8:
	.string	"uint32_t"
.LASF3:
	.string	"long int"
.LASF15:
	.string	"FAIL_RETURN"
.LASF1:
	.string	"signed char"
.LASF30:
	.string	"strtol"
.LASF12:
	.string	"name"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
