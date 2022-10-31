	.file	"easyflash.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.easyflash_init.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"4.0.99"
	.align	2
.LC1:
	.string	"EasyFlash V%s is initialize success.\r\n"
	.align	2
.LC2:
	.string	"EasyFlash V%s is initialize fail.\r\n"
	.align	2
.LC3:
	.string	"You can get the latest version on https://github.com/armink/EasyFlash .\r\n"
	.section	.text.easyflash_init,"ax",@progbits
	.align	1
	.globl	easyflash_init
	.type	easyflash_init, @function
easyflash_init:
.LFB0:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/easyflash4/src/easyflash.c"
	.loc 1 65 32
	.cfi_startproc
	.loc 1 66 5
	.loc 1 67 5
	.loc 1 68 5
	.loc 1 69 5
	.loc 1 71 5
	.loc 1 65 32 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 75 14
	addi	a1,sp,8
	addi	a0,sp,12
	.loc 1 65 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.loc 1 71 12
	sw	zero,8(sp)
	.loc 1 72 5 is_stmt 1
	.loc 1 73 5
.LVL0:
	.loc 1 75 5
	.loc 1 75 14 is_stmt 0
	call	ef_port_init
.LVL1:
	.loc 1 78 5 is_stmt 1
	lui	s1,%hi(.LC0)
	mv	s0,a0
	.loc 1 78 8 is_stmt 0
	bne	a0,zero,.L2
	.loc 1 79 9 is_stmt 1
	.loc 1 79 18 is_stmt 0
	lw	a1,8(sp)
	lw	a0,12(sp)
.LVL2:
	call	ef_env_init
.LVL3:
	mv	s0,a0
.LVL4:
	.loc 1 95 5 is_stmt 1
	.loc 1 95 8 is_stmt 0
	bne	a0,zero,.L2
	.loc 1 96 9 is_stmt 1
	lui	a0,%hi(.LC1)
	addi	a1,s1,%lo(.LC0)
	addi	a0,a0,%lo(.LC1)
.L6:
	.loc 1 98 9 is_stmt 0
	call	ef_log_info
.LVL5:
	.loc 1 100 5 is_stmt 1
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	call	ef_log_info
.LVL6:
	.loc 1 102 5
	.loc 1 103 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,s0
	lw	s0,24(sp)
	.cfi_restore 8
.LVL7:
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL8:
.L2:
	.cfi_restore_state
	.loc 1 98 9 is_stmt 1
	lui	a0,%hi(.LC2)
	addi	a1,s1,%lo(.LC0)
	addi	a0,a0,%lo(.LC2)
	j	.L6
	.cfi_endproc
.LFE0:
	.size	easyflash_init, .-easyflash_init
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/easyflash4/inc/ef_def.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/easyflash4/inc/easyflash.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x22d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF33
	.byte	0xc
	.4byte	.LASF34
	.4byte	.LASF35
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
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0xd1
	.byte	0x16
	.4byte	0x64
	.byte	0x5
	.4byte	.LASF36
	.byte	0xc
	.byte	0x2
	.byte	0x49
	.byte	0x10
	.4byte	0xac
	.byte	0x6
	.string	"key"
	.byte	0x2
	.byte	0x4a
	.byte	0xb
	.4byte	0xac
	.byte	0
	.byte	0x7
	.4byte	.LASF9
	.byte	0x2
	.byte	0x4b
	.byte	0xb
	.4byte	0xb9
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x2
	.byte	0x4c
	.byte	0xc
	.4byte	0x6b
	.byte	0x8
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0xb2
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x9
	.byte	0x4
	.byte	0x4
	.4byte	.LASF13
	.byte	0x2
	.byte	0x4d
	.byte	0x3
	.4byte	0x77
	.byte	0xa
	.4byte	0xbb
	.byte	0xb
	.byte	0x7
	.byte	0x4
	.4byte	0x64
	.byte	0x2
	.byte	0x50
	.byte	0xe
	.4byte	0x111
	.byte	0xc
	.4byte	.LASF14
	.byte	0
	.byte	0xc
	.4byte	.LASF15
	.byte	0x1
	.byte	0xc
	.4byte	.LASF16
	.byte	0x2
	.byte	0xc
	.4byte	.LASF17
	.byte	0x3
	.byte	0xc
	.4byte	.LASF18
	.byte	0x4
	.byte	0xc
	.4byte	.LASF19
	.byte	0x5
	.byte	0xc
	.4byte	.LASF20
	.byte	0x6
	.byte	0xc
	.4byte	.LASF21
	.byte	0x7
	.byte	0xc
	.4byte	.LASF22
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LASF23
	.byte	0x2
	.byte	0x5a
	.byte	0x3
	.4byte	0xcc
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF24
	.byte	0xd
	.4byte	.LASF37
	.byte	0x1
	.byte	0x41
	.byte	0xb
	.4byte	0x111
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.4byte	0x1fa
	.byte	0xe
	.4byte	.LASF25
	.byte	0x1
	.byte	0x42
	.byte	0x16
	.4byte	0x111
	.4byte	0x159
	.byte	0xf
	.4byte	0x1fa
	.byte	0xf
	.4byte	0x206
	.byte	0
	.byte	0xe
	.4byte	.LASF26
	.byte	0x1
	.byte	0x43
	.byte	0x16
	.4byte	0x111
	.4byte	0x174
	.byte	0xf
	.4byte	0x200
	.byte	0xf
	.4byte	0x6b
	.byte	0
	.byte	0x10
	.4byte	.LASF27
	.byte	0x1
	.byte	0x44
	.byte	0x16
	.4byte	0x111
	.byte	0x10
	.4byte	.LASF28
	.byte	0x1
	.byte	0x45
	.byte	0x16
	.4byte	0x111
	.byte	0x11
	.4byte	.LASF29
	.byte	0x1
	.byte	0x47
	.byte	0xc
	.4byte	0x6b
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x11
	.4byte	.LASF30
	.byte	0x1
	.byte	0x48
	.byte	0x13
	.4byte	0x200
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x12
	.4byte	.LASF31
	.byte	0x1
	.byte	0x49
	.byte	0xf
	.4byte	0x111
	.4byte	.LLST0
	.byte	0x13
	.4byte	.LVL1
	.4byte	0x20c
	.4byte	0x1d4
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x15
	.4byte	.LVL3
	.4byte	0x218
	.byte	0x15
	.4byte	.LVL5
	.4byte	0x224
	.byte	0x16
	.4byte	.LVL6
	.4byte	0x224
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x200
	.byte	0x8
	.byte	0x4
	.4byte	0xc7
	.byte	0x8
	.byte	0x4
	.4byte	0x6b
	.byte	0x17
	.4byte	.LASF25
	.4byte	.LASF25
	.byte	0x1
	.byte	0x42
	.byte	0x16
	.byte	0x17
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x1
	.byte	0x43
	.byte	0x16
	.byte	0x17
	.4byte	.LASF32
	.4byte	.LASF32
	.byte	0x4
	.byte	0x6d
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
	.byte	0x5
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
	.byte	0x6
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
	.byte	0x7
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0x3c
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
	.byte	0x3c
	.byte	0x19
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
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x14
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
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
	.4byte	.LVL1
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF35:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/easyflash4"
.LASF12:
	.string	"size_t"
.LASF10:
	.string	"value_len"
.LASF28:
	.string	"ef_log_init"
.LASF9:
	.string	"value"
.LASF17:
	.string	"EF_WRITE_ERR"
.LASF15:
	.string	"EF_ERASE_ERR"
.LASF13:
	.string	"ef_env"
.LASF20:
	.string	"EF_ENV_FULL"
.LASF18:
	.string	"EF_ENV_NAME_ERR"
.LASF25:
	.string	"ef_port_init"
.LASF4:
	.string	"unsigned char"
.LASF6:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF21:
	.string	"EF_ENV_INIT_FAILED"
.LASF23:
	.string	"EfErrCode"
.LASF36:
	.string	"_ef_env"
.LASF34:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/easyflash4/src/easyflash.c"
.LASF29:
	.string	"default_env_set_size"
.LASF26:
	.string	"ef_env_init"
.LASF8:
	.string	"unsigned int"
.LASF7:
	.string	"long long unsigned int"
.LASF19:
	.string	"EF_ENV_NAME_EXIST"
.LASF31:
	.string	"result"
.LASF14:
	.string	"EF_NO_ERR"
.LASF3:
	.string	"long long int"
.LASF33:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF11:
	.string	"char"
.LASF22:
	.string	"EF_ENV_ARG_ERR"
.LASF30:
	.string	"default_env_set"
.LASF1:
	.string	"short int"
.LASF37:
	.string	"easyflash_init"
.LASF16:
	.string	"EF_READ_ERR"
.LASF27:
	.string	"ef_iap_init"
.LASF2:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF24:
	.string	"_Bool"
.LASF32:
	.string	"ef_log_info"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
