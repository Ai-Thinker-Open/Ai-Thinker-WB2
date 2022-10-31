	.file	"test_utils_bitmap_window.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.cmd_bitmap_window_test.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"Set Seq 1 2 3 4 5 6 7...\r\n"
	.align	2
.LC1:
	.string	"  Got ssn %d(0) Bitmap %llx(0), ret %x\r\n"
	.align	2
.LC2:
	.string	"Set Seq 0 ...\r\n"
	.align	2
.LC3:
	.string	"  Got ssn %d(8) Bitmap %llx(0), ret %x\r\n"
	.align	2
.LC4:
	.string	"Set Seq 9 ...\r\n"
	.align	2
.LC5:
	.string	"  Got ssn %d(8) Bitmap %llx(2), ret %x\r\n"
	.align	2
.LC6:
	.string	"  Got ssn %d(8) Bitmap %llx(2), ret %d\r\n"
	.section	.text.cmd_bitmap_window_test,"ax",@progbits
	.align	1
	.type	cmd_bitmap_window_test, @function
cmd_bitmap_window_test:
.LFB3:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/src/test/test_utils_bitmap_window.c"
	.loc 1 36 1
	.cfi_startproc
.LVL0:
	.loc 1 37 5
	.loc 1 38 5
	.loc 1 40 5
	.loc 1 36 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	.loc 1 40 5
	li	a2,4096
.LVL1:
	addi	a2,a2,-1
	li	a1,0
.LVL2:
	addi	a0,sp,16
.LVL3:
	.loc 1 36 1
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.loc 1 40 5
	call	utils_bitmap_window_init
.LVL4:
	.loc 1 42 5 is_stmt 1
	lui	a0,%hi(.LC0)
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL5:
	.loc 1 43 5
	li	a1,1
	addi	a0,sp,16
	call	utils_bitmap_window_bit_set
.LVL6:
	.loc 1 44 5
	li	a1,2
	addi	a0,sp,16
	call	utils_bitmap_window_bit_set
.LVL7:
	.loc 1 45 5
	li	a1,3
	addi	a0,sp,16
	call	utils_bitmap_window_bit_set
.LVL8:
	.loc 1 46 5
	li	a1,4
	addi	a0,sp,16
	call	utils_bitmap_window_bit_set
.LVL9:
	.loc 1 47 5
	li	a1,5
	addi	a0,sp,16
	call	utils_bitmap_window_bit_set
.LVL10:
	.loc 1 48 5
	li	a1,6
	addi	a0,sp,16
	call	utils_bitmap_window_bit_set
.LVL11:
	.loc 1 49 5
	.loc 1 49 11 is_stmt 0
	li	a1,7
	addi	a0,sp,16
	call	utils_bitmap_window_bit_set
.LVL12:
	sw	a0,12(sp)
.LVL13:
	.loc 1 50 5 is_stmt 1
	addi	a0,sp,16
.LVL14:
	call	utils_bitmap_window_ssn_get
.LVL15:
	mv	s0,a0
	addi	a0,sp,16
	call	utils_bitmap_window_map_get
.LVL16:
	lw	a4,12(sp)
	mv	a2,a0
	lui	a0,%hi(.LC1)
	mv	a3,a1
	addi	a0,a0,%lo(.LC1)
	mv	a1,s0
	call	printf
.LVL17:
	.loc 1 56 5
	lui	s2,%hi(.LC2)
	addi	a0,s2,%lo(.LC2)
	call	printf
.LVL18:
	.loc 1 57 5
	.loc 1 57 11 is_stmt 0
	li	a1,0
	addi	a0,sp,16
	call	utils_bitmap_window_bit_set
.LVL19:
	sw	a0,12(sp)
.LVL20:
	.loc 1 58 5 is_stmt 1
	addi	a0,sp,16
.LVL21:
	call	utils_bitmap_window_ssn_get
.LVL22:
	mv	s0,a0
	addi	a0,sp,16
	call	utils_bitmap_window_map_get
.LVL23:
	lw	a4,12(sp)
	lui	s1,%hi(.LC3)
	mv	a2,a0
	mv	a3,a1
	addi	a0,s1,%lo(.LC3)
	mv	a1,s0
	call	printf
.LVL24:
	.loc 1 64 5
	addi	a0,s2,%lo(.LC2)
	call	printf
.LVL25:
	.loc 1 65 5
	.loc 1 65 11 is_stmt 0
	li	a1,0
	addi	a0,sp,16
	call	utils_bitmap_window_bit_set
.LVL26:
	sw	a0,12(sp)
.LVL27:
	.loc 1 66 5 is_stmt 1
	addi	a0,sp,16
.LVL28:
	call	utils_bitmap_window_ssn_get
.LVL29:
	mv	s0,a0
	addi	a0,sp,16
	call	utils_bitmap_window_map_get
.LVL30:
	lw	a4,12(sp)
	mv	a2,a0
	mv	a3,a1
	addi	a0,s1,%lo(.LC3)
	mv	a1,s0
	call	printf
.LVL31:
	.loc 1 72 5
	lui	s1,%hi(.LC4)
	addi	a0,s1,%lo(.LC4)
	call	printf
.LVL32:
	.loc 1 73 5
	.loc 1 73 11 is_stmt 0
	li	a1,9
	addi	a0,sp,16
	call	utils_bitmap_window_bit_set
.LVL33:
	sw	a0,12(sp)
.LVL34:
	.loc 1 74 5 is_stmt 1
	addi	a0,sp,16
.LVL35:
	call	utils_bitmap_window_ssn_get
.LVL36:
	mv	s0,a0
	addi	a0,sp,16
	call	utils_bitmap_window_map_get
.LVL37:
	lw	a4,12(sp)
	mv	a2,a0
	lui	a0,%hi(.LC5)
	mv	a3,a1
	addi	a0,a0,%lo(.LC5)
	mv	a1,s0
	call	printf
.LVL38:
	.loc 1 80 5
	addi	a0,s1,%lo(.LC4)
	call	printf
.LVL39:
	.loc 1 81 5
	.loc 1 81 11 is_stmt 0
	li	a1,9
	addi	a0,sp,16
	call	utils_bitmap_window_bit_set
.LVL40:
	sw	a0,12(sp)
.LVL41:
	.loc 1 82 5 is_stmt 1
	addi	a0,sp,16
.LVL42:
	call	utils_bitmap_window_ssn_get
.LVL43:
	mv	s0,a0
	addi	a0,sp,16
	call	utils_bitmap_window_map_get
.LVL44:
	lw	a4,12(sp)
	mv	a2,a0
	lui	a0,%hi(.LC6)
	mv	a3,a1
	addi	a0,a0,%lo(.LC6)
	mv	a1,s0
	call	printf
.LVL45:
	.loc 1 88 1 is_stmt 0
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
.LVL46:
	jr	ra
	.cfi_endproc
.LFE3:
	.size	cmd_bitmap_window_test, .-cmd_bitmap_window_test
	.section	.text.utils_bitmap_window_cli_init,"ax",@progbits
	.align	1
	.globl	utils_bitmap_window_cli_init
	.type	utils_bitmap_window_cli_init, @function
utils_bitmap_window_cli_init:
.LFB4:
	.loc 1 95 1 is_stmt 1
	.cfi_startproc
	.loc 1 100 5
	.loc 1 101 1 is_stmt 0
	li	a0,0
	ret
	.cfi_endproc
.LFE4:
	.size	utils_bitmap_window_cli_init, .-utils_bitmap_window_cli_init
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC7:
	.string	"utils_bitmap_widow_test"
	.align	2
.LC8:
	.string	"bitmap window test"
	.section	.static_cli_cmds,"a"
	.align	2
	.type	cmds_user, @object
	.size	cmds_user, 12
cmds_user:
	.word	.LC7
	.word	.LC8
	.word	cmd_bitmap_window_test
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_bitmap_window.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/cli/cli/include/cli.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x56c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF29
	.byte	0xc
	.4byte	.LASF30
	.4byte	.LASF31
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
	.4byte	.LASF7
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
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.byte	0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x37
	.byte	0x20
	.4byte	0x6e
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x5
	.byte	0x8
	.byte	0x3
	.byte	0x23
	.byte	0x5
	.4byte	0xa5
	.byte	0x6
	.4byte	.LASF11
	.byte	0x3
	.byte	0x24
	.byte	0x11
	.4byte	0xa5
	.byte	0x6
	.4byte	.LASF12
	.byte	0x3
	.byte	0x25
	.byte	0x12
	.4byte	0x62
	.byte	0
	.byte	0x7
	.4byte	0x41
	.4byte	0xb5
	.byte	0x8
	.4byte	0x7c
	.byte	0x7
	.byte	0
	.byte	0x9
	.4byte	.LASF15
	.byte	0x10
	.byte	0x3
	.byte	0x20
	.byte	0x8
	.4byte	0xea
	.byte	0xa
	.string	"ssn"
	.byte	0x3
	.byte	0x21
	.byte	0x9
	.4byte	0x75
	.byte	0
	.byte	0xb
	.4byte	.LASF13
	.byte	0x3
	.byte	0x22
	.byte	0x9
	.4byte	0x75
	.byte	0x4
	.byte	0xb
	.4byte	.LASF14
	.byte	0x3
	.byte	0x26
	.byte	0x7
	.4byte	0x83
	.byte	0x8
	.byte	0
	.byte	0x9
	.4byte	.LASF16
	.byte	0xc
	.byte	0x4
	.byte	0x4c
	.byte	0x8
	.4byte	0x11f
	.byte	0xb
	.4byte	.LASF17
	.byte	0x4
	.byte	0x4d
	.byte	0x11
	.4byte	0x124
	.byte	0
	.byte	0xb
	.4byte	.LASF18
	.byte	0x4
	.byte	0x4e
	.byte	0x11
	.4byte	0x124
	.byte	0x4
	.byte	0xb
	.4byte	.LASF19
	.byte	0x4
	.byte	0x50
	.byte	0xc
	.4byte	0x15c
	.byte	0x8
	.byte	0
	.byte	0xc
	.4byte	0xea
	.byte	0xd
	.byte	0x4
	.4byte	0x131
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF20
	.byte	0xc
	.4byte	0x12a
	.byte	0xe
	.4byte	0x150
	.byte	0xf
	.4byte	0x150
	.byte	0xf
	.4byte	0x75
	.byte	0xf
	.4byte	0x75
	.byte	0xf
	.4byte	0x156
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x12a
	.byte	0xd
	.byte	0x4
	.4byte	0x150
	.byte	0xd
	.byte	0x4
	.4byte	0x136
	.byte	0x7
	.4byte	0x11f
	.4byte	0x172
	.byte	0x8
	.4byte	0x7c
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	0x162
	.byte	0x10
	.4byte	.LASF23
	.byte	0x1
	.byte	0x5a
	.byte	0x21
	.4byte	0x172
	.byte	0x5
	.byte	0x3
	.4byte	cmds_user
	.byte	0x11
	.4byte	.LASF32
	.byte	0x1
	.byte	0x5e
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.byte	0x12
	.4byte	.LASF33
	.byte	0x1
	.byte	0x23
	.byte	0xd
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x533
	.byte	0x13
	.string	"buf"
	.byte	0x1
	.byte	0x23
	.byte	0x2a
	.4byte	0x150
	.4byte	.LLST0
	.byte	0x13
	.string	"len"
	.byte	0x1
	.byte	0x23
	.byte	0x33
	.4byte	0x75
	.4byte	.LLST1
	.byte	0x14
	.4byte	.LASF21
	.byte	0x1
	.byte	0x23
	.byte	0x3c
	.4byte	0x75
	.4byte	.LLST2
	.byte	0x14
	.4byte	.LASF22
	.byte	0x1
	.byte	0x23
	.byte	0x49
	.4byte	0x156
	.4byte	.LLST3
	.byte	0x15
	.string	"ret"
	.byte	0x1
	.byte	0x25
	.byte	0x9
	.4byte	0x75
	.4byte	.LLST4
	.byte	0x16
	.string	"ctx"
	.byte	0x1
	.byte	0x26
	.byte	0x1d
	.4byte	0xb5
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x17
	.4byte	.LVL4
	.4byte	0x533
	.4byte	0x234
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x18
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0xfff
	.byte	0
	.byte	0x17
	.4byte	.LVL5
	.4byte	0x53f
	.4byte	0x24b
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x17
	.4byte	.LVL6
	.4byte	0x54b
	.4byte	0x264
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x17
	.4byte	.LVL7
	.4byte	0x54b
	.4byte	0x27d
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x17
	.4byte	.LVL8
	.4byte	0x54b
	.4byte	0x296
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x17
	.4byte	.LVL9
	.4byte	0x54b
	.4byte	0x2af
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0x17
	.4byte	.LVL10
	.4byte	0x54b
	.4byte	0x2c8
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x35
	.byte	0
	.byte	0x17
	.4byte	.LVL11
	.4byte	0x54b
	.4byte	0x2e1
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x36
	.byte	0
	.byte	0x17
	.4byte	.LVL12
	.4byte	0x54b
	.4byte	0x2fa
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x37
	.byte	0
	.byte	0x17
	.4byte	.LVL15
	.4byte	0x557
	.4byte	0x30e
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0
	.byte	0x17
	.4byte	.LVL16
	.4byte	0x563
	.4byte	0x322
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0
	.byte	0x17
	.4byte	.LVL17
	.4byte	0x53f
	.4byte	0x346
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x18
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0x91
	.byte	0x5c
	.byte	0x6
	.byte	0
	.byte	0x17
	.4byte	.LVL18
	.4byte	0x53f
	.4byte	0x35d
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x17
	.4byte	.LVL19
	.4byte	0x54b
	.4byte	0x376
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x17
	.4byte	.LVL22
	.4byte	0x557
	.4byte	0x38a
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0
	.byte	0x17
	.4byte	.LVL23
	.4byte	0x563
	.4byte	0x39e
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0
	.byte	0x17
	.4byte	.LVL24
	.4byte	0x53f
	.4byte	0x3c2
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x18
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0x91
	.byte	0x5c
	.byte	0x6
	.byte	0
	.byte	0x17
	.4byte	.LVL25
	.4byte	0x53f
	.4byte	0x3d9
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x17
	.4byte	.LVL26
	.4byte	0x54b
	.4byte	0x3f2
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x17
	.4byte	.LVL29
	.4byte	0x557
	.4byte	0x406
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0
	.byte	0x17
	.4byte	.LVL30
	.4byte	0x563
	.4byte	0x41a
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0
	.byte	0x17
	.4byte	.LVL31
	.4byte	0x53f
	.4byte	0x43e
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x18
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0x91
	.byte	0x5c
	.byte	0x6
	.byte	0
	.byte	0x17
	.4byte	.LVL32
	.4byte	0x53f
	.4byte	0x455
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0x17
	.4byte	.LVL33
	.4byte	0x54b
	.4byte	0x46e
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x39
	.byte	0
	.byte	0x17
	.4byte	.LVL36
	.4byte	0x557
	.4byte	0x482
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0
	.byte	0x17
	.4byte	.LVL37
	.4byte	0x563
	.4byte	0x496
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0
	.byte	0x17
	.4byte	.LVL38
	.4byte	0x53f
	.4byte	0x4ba
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x18
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0x91
	.byte	0x5c
	.byte	0x6
	.byte	0
	.byte	0x17
	.4byte	.LVL39
	.4byte	0x53f
	.4byte	0x4d1
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0x17
	.4byte	.LVL40
	.4byte	0x54b
	.4byte	0x4ea
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x39
	.byte	0
	.byte	0x17
	.4byte	.LVL43
	.4byte	0x557
	.4byte	0x4fe
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0
	.byte	0x17
	.4byte	.LVL44
	.4byte	0x563
	.4byte	0x512
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0
	.byte	0x19
	.4byte	.LVL45
	.4byte	0x53f
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x18
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0x91
	.byte	0x5c
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LASF24
	.4byte	.LASF24
	.byte	0x3
	.byte	0x29
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF25
	.4byte	.LASF25
	.byte	0x5
	.byte	0xc8
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x3
	.byte	0x2a
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF27
	.4byte	.LASF27
	.byte	0x3
	.byte	0x2c
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF28
	.4byte	.LASF28
	.byte	0x3
	.byte	0x2b
	.byte	0xa
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
	.byte	0x17
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
	.byte	0x6
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
	.byte	0x7
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x17
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
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
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
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LFE3
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
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL1
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL4-1
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x91
	.byte	0x5c
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x91
	.byte	0x5c
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28
	.4byte	.LVL34
	.2byte	0x2
	.byte	0x91
	.byte	0x5c
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL35
	.4byte	.LVL41
	.2byte	0x2
	.byte	0x91
	.byte	0x5c
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL42
	.4byte	.LVL46
	.2byte	0x2
	.byte	0x91
	.byte	0x5c
	.4byte	.LVL46
	.4byte	.LFE3
	.2byte	0x2
	.byte	0x72
	.byte	0x5c
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF32:
	.string	"utils_bitmap_window_cli_init"
.LASF14:
	.string	"bitmap"
.LASF8:
	.string	"uint64_t"
.LASF31:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/utils"
.LASF26:
	.string	"utils_bitmap_window_bit_set"
.LASF27:
	.string	"utils_bitmap_window_ssn_get"
.LASF13:
	.string	"ssn_duration"
.LASF4:
	.string	"unsigned char"
.LASF33:
	.string	"cmd_bitmap_window_test"
.LASF6:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF18:
	.string	"help"
.LASF16:
	.string	"cli_command"
.LASF15:
	.string	"utils_bitmap_ctx"
.LASF30:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/src/test/test_utils_bitmap_window.c"
.LASF10:
	.string	"unsigned int"
.LASF9:
	.string	"long long unsigned int"
.LASF7:
	.string	"uint8_t"
.LASF21:
	.string	"argc"
.LASF3:
	.string	"long long int"
.LASF23:
	.string	"cmds_user"
.LASF29:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF17:
	.string	"name"
.LASF25:
	.string	"printf"
.LASF12:
	.string	"map64"
.LASF1:
	.string	"short int"
.LASF22:
	.string	"argv"
.LASF24:
	.string	"utils_bitmap_window_init"
.LASF2:
	.string	"long int"
.LASF20:
	.string	"char"
.LASF11:
	.string	"bytes"
.LASF0:
	.string	"signed char"
.LASF19:
	.string	"function"
.LASF28:
	.string	"utils_bitmap_window_map_get"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
