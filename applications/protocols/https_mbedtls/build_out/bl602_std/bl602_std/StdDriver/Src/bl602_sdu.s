	.file	"bl602_sdu.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.sdio_GEN_CARD2HOST_INT,"ax",@progbits
	.align	1
	.globl	sdio_GEN_CARD2HOST_INT
	.type	sdio_GEN_CARD2HOST_INT, @function
sdio_GEN_CARD2HOST_INT:
.LFB8:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_sdu.c"
	.loc 1 28 1
	.cfi_startproc
.LVL0:
	.loc 1 47 5
	.loc 1 47 16 is_stmt 0
	slli	a5,a0,2
	lui	a0,%hi(.LANCHOR0)
.LVL1:
	addi	a0,a0,%lo(.LANCHOR0)
	add	a0,a0,a5
	lw	a5,0(a0)
	.loc 1 47 43
	sb	a1,48(a5)
	.loc 1 48 1
	ret
	.cfi_endproc
.LFE8:
	.size	sdio_GEN_CARD2HOST_INT, .-sdio_GEN_CARD2HOST_INT
	.section	.text.sdio_ioctl,"ax",@progbits
	.align	1
	.globl	sdio_ioctl
	.type	sdio_ioctl, @function
sdio_ioctl:
.LFB9:
	.loc 1 52 1 is_stmt 1
	.cfi_startproc
.LVL2:
	.loc 1 53 5
	li	a4,1
	.loc 1 52 1 is_stmt 0
	mv	a5,a0
	.loc 1 75 12
	li	a0,0
.LVL3:
	.loc 1 53 5
	bne	a1,a4,.L2
	.loc 1 57 9 is_stmt 1
	.loc 1 57 12 is_stmt 0
	bne	a5,zero,.L2
.LBB2:
	.loc 1 59 13 is_stmt 1
	.loc 1 59 35 is_stmt 0
	li	a4,1073795072
	lbu	a0,40(a4)
	andi	a5,a0,0xff
.LVL4:
	.loc 1 61 13 is_stmt 1
	.loc 1 61 29 is_stmt 0
	lbu	a0,41(a4)
	.loc 1 62 35
	slli	a0,a0,8
	andi	a0,a0,256
	.loc 1 61 23
	or	a0,a0,a5
.LVL5:
	.loc 1 64 13 is_stmt 1
	.loc 1 64 15 is_stmt 0
	bne	a0,zero,.L2
	.loc 1 66 27
	li	a0,512
.LVL6:
	ret
.L2:
.LBE2:
	.loc 1 76 1
	ret
	.cfi_endproc
.LFE9:
	.size	sdio_ioctl, .-sdio_ioctl
	.globl	flag_mport
	.globl	SdioFuncReg
	.section	.sbss.flag_mport,"aw",@nobits
	.align	2
	.type	flag_mport, @object
	.size	flag_mport, 1
flag_mport:
	.zero	1
	.section	.sdata.SdioFuncReg,"aw"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	SdioFuncReg, @object
	.size	SdioFuncReg, 4
SdioFuncReg:
	.word	1073795328
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sdu.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x443
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF61
	.byte	0xc
	.4byte	.LASF62
	.4byte	.LASF63
	.4byte	.Ldebug_ranges0+0
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
	.4byte	.LASF6
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x54
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.byte	0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x67
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.byte	0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x7a
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x5
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0x6
	.byte	0x7b
	.byte	0x3
	.byte	0x1e
	.byte	0x9
	.4byte	0x2aa
	.byte	0x7
	.4byte	.LASF13
	.byte	0x3
	.byte	0x20
	.byte	0xd
	.4byte	0x48
	.byte	0
	.byte	0x7
	.4byte	.LASF14
	.byte	0x3
	.byte	0x21
	.byte	0xd
	.4byte	0x48
	.byte	0x1
	.byte	0x7
	.4byte	.LASF15
	.byte	0x3
	.byte	0x22
	.byte	0xd
	.4byte	0x48
	.byte	0x2
	.byte	0x7
	.4byte	.LASF16
	.byte	0x3
	.byte	0x23
	.byte	0xd
	.4byte	0x48
	.byte	0x3
	.byte	0x7
	.4byte	.LASF17
	.byte	0x3
	.byte	0x24
	.byte	0xe
	.4byte	0x5b
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
	.byte	0x3
	.byte	0x25
	.byte	0xe
	.4byte	0x5b
	.byte	0x6
	.byte	0x7
	.4byte	.LASF19
	.byte	0x3
	.byte	0x26
	.byte	0xe
	.4byte	0x2aa
	.byte	0x8
	.byte	0x7
	.4byte	.LASF20
	.byte	0x3
	.byte	0x27
	.byte	0xd
	.4byte	0x48
	.byte	0x28
	.byte	0x7
	.4byte	.LASF21
	.byte	0x3
	.byte	0x28
	.byte	0xd
	.4byte	0x2ba
	.byte	0x29
	.byte	0x7
	.4byte	.LASF22
	.byte	0x3
	.byte	0x29
	.byte	0xd
	.4byte	0x48
	.byte	0x30
	.byte	0x7
	.4byte	.LASF23
	.byte	0x3
	.byte	0x2a
	.byte	0xd
	.4byte	0x2ca
	.byte	0x31
	.byte	0x7
	.4byte	.LASF24
	.byte	0x3
	.byte	0x2b
	.byte	0xd
	.4byte	0x48
	.byte	0x34
	.byte	0x7
	.4byte	.LASF25
	.byte	0x3
	.byte	0x2c
	.byte	0xd
	.4byte	0x2ca
	.byte	0x35
	.byte	0x7
	.4byte	.LASF26
	.byte	0x3
	.byte	0x2d
	.byte	0xd
	.4byte	0x48
	.byte	0x38
	.byte	0x7
	.4byte	.LASF27
	.byte	0x3
	.byte	0x2e
	.byte	0xd
	.4byte	0x2ca
	.byte	0x39
	.byte	0x7
	.4byte	.LASF28
	.byte	0x3
	.byte	0x2f
	.byte	0xd
	.4byte	0x48
	.byte	0x3c
	.byte	0x7
	.4byte	.LASF29
	.byte	0x3
	.byte	0x30
	.byte	0xd
	.4byte	0x2ca
	.byte	0x3d
	.byte	0x7
	.4byte	.LASF30
	.byte	0x3
	.byte	0x31
	.byte	0xe
	.4byte	0x6e
	.byte	0x40
	.byte	0x7
	.4byte	.LASF31
	.byte	0x3
	.byte	0x32
	.byte	0xe
	.4byte	0x6e
	.byte	0x44
	.byte	0x7
	.4byte	.LASF32
	.byte	0x3
	.byte	0x33
	.byte	0xd
	.4byte	0x48
	.byte	0x48
	.byte	0x7
	.4byte	.LASF33
	.byte	0x3
	.byte	0x34
	.byte	0xd
	.4byte	0x48
	.byte	0x49
	.byte	0x7
	.4byte	.LASF34
	.byte	0x3
	.byte	0x35
	.byte	0xd
	.4byte	0x48
	.byte	0x4a
	.byte	0x7
	.4byte	.LASF35
	.byte	0x3
	.byte	0x36
	.byte	0xd
	.4byte	0x48
	.byte	0x4b
	.byte	0x7
	.4byte	.LASF36
	.byte	0x3
	.byte	0x37
	.byte	0xd
	.4byte	0x2da
	.byte	0x4c
	.byte	0x7
	.4byte	.LASF37
	.byte	0x3
	.byte	0x38
	.byte	0xd
	.4byte	0x2da
	.byte	0x54
	.byte	0x7
	.4byte	.LASF38
	.byte	0x3
	.byte	0x39
	.byte	0xd
	.4byte	0x48
	.byte	0x5c
	.byte	0x7
	.4byte	.LASF39
	.byte	0x3
	.byte	0x3a
	.byte	0xd
	.4byte	0x48
	.byte	0x5d
	.byte	0x7
	.4byte	.LASF40
	.byte	0x3
	.byte	0x3b
	.byte	0xd
	.4byte	0x48
	.byte	0x5e
	.byte	0x7
	.4byte	.LASF41
	.byte	0x3
	.byte	0x3c
	.byte	0xd
	.4byte	0x48
	.byte	0x5f
	.byte	0x7
	.4byte	.LASF42
	.byte	0x3
	.byte	0x3d
	.byte	0xd
	.4byte	0x2ea
	.byte	0x60
	.byte	0x7
	.4byte	.LASF43
	.byte	0x3
	.byte	0x3e
	.byte	0xe
	.4byte	0x5b
	.byte	0x64
	.byte	0x7
	.4byte	.LASF44
	.byte	0x3
	.byte	0x3f
	.byte	0xe
	.4byte	0x5b
	.byte	0x66
	.byte	0x7
	.4byte	.LASF45
	.byte	0x3
	.byte	0x40
	.byte	0xd
	.4byte	0x48
	.byte	0x68
	.byte	0x7
	.4byte	.LASF46
	.byte	0x3
	.byte	0x41
	.byte	0xd
	.4byte	0x48
	.byte	0x69
	.byte	0x7
	.4byte	.LASF47
	.byte	0x3
	.byte	0x42
	.byte	0xd
	.4byte	0x48
	.byte	0x6a
	.byte	0x7
	.4byte	.LASF48
	.byte	0x3
	.byte	0x43
	.byte	0xd
	.4byte	0x48
	.byte	0x6b
	.byte	0x7
	.4byte	.LASF49
	.byte	0x3
	.byte	0x44
	.byte	0xe
	.4byte	0x6e
	.byte	0x6c
	.byte	0x7
	.4byte	.LASF50
	.byte	0x3
	.byte	0x45
	.byte	0xe
	.4byte	0x6e
	.byte	0x70
	.byte	0x7
	.4byte	.LASF51
	.byte	0x3
	.byte	0x46
	.byte	0xe
	.4byte	0x6e
	.byte	0x74
	.byte	0x7
	.4byte	.LASF52
	.byte	0x3
	.byte	0x47
	.byte	0xd
	.4byte	0x2ca
	.byte	0x78
	.byte	0
	.byte	0x8
	.4byte	0x5b
	.4byte	0x2ba
	.byte	0x9
	.4byte	0x25
	.byte	0xf
	.byte	0
	.byte	0x8
	.4byte	0x48
	.4byte	0x2ca
	.byte	0x9
	.4byte	0x25
	.byte	0x6
	.byte	0
	.byte	0x8
	.4byte	0x48
	.4byte	0x2da
	.byte	0x9
	.4byte	0x25
	.byte	0x2
	.byte	0
	.byte	0x8
	.4byte	0x48
	.4byte	0x2ea
	.byte	0x9
	.4byte	0x25
	.byte	0x7
	.byte	0
	.byte	0x8
	.4byte	0x48
	.4byte	0x2fa
	.byte	0x9
	.4byte	0x25
	.byte	0x3
	.byte	0
	.byte	0x3
	.4byte	.LASF53
	.byte	0x3
	.byte	0x48
	.byte	0x2e
	.4byte	0x30b
	.byte	0xa
	.4byte	0x2fa
	.byte	0xb
	.byte	0x4
	.4byte	0x98
	.byte	0xc
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x3
	.byte	0xad
	.byte	0x1
	.4byte	0x32c
	.byte	0xd
	.4byte	.LASF54
	.byte	0
	.byte	0xd
	.4byte	.LASF55
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF56
	.byte	0x3
	.byte	0xb4
	.byte	0x3
	.4byte	0x311
	.byte	0x8
	.4byte	0x306
	.4byte	0x343
	.byte	0xe
	.byte	0
	.byte	0xa
	.4byte	0x338
	.byte	0xf
	.4byte	.LASF57
	.byte	0x3
	.byte	0xbf
	.byte	0x23
	.4byte	0x343
	.byte	0x8
	.4byte	0x48
	.4byte	0x35f
	.byte	0xe
	.byte	0
	.byte	0xf
	.4byte	.LASF58
	.byte	0x3
	.byte	0xc0
	.byte	0x10
	.4byte	0x354
	.byte	0x8
	.4byte	0x306
	.4byte	0x37b
	.byte	0x9
	.4byte	0x25
	.byte	0
	.byte	0
	.byte	0xa
	.4byte	0x36b
	.byte	0x10
	.4byte	0x348
	.byte	0x1
	.byte	0x3
	.byte	0x1c
	.4byte	0x37b
	.byte	0x5
	.byte	0x3
	.4byte	SdioFuncReg
	.byte	0x8
	.4byte	0x48
	.4byte	0x3a2
	.byte	0x9
	.4byte	0x25
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	0x35f
	.byte	0x1
	.byte	0x11
	.byte	0x9
	.4byte	0x392
	.byte	0x5
	.byte	0x3
	.4byte	flag_mport
	.byte	0x11
	.4byte	.LASF64
	.byte	0x1
	.byte	0x33
	.byte	0xa
	.4byte	0x6e
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x415
	.byte	0x12
	.4byte	.LASF59
	.byte	0x1
	.byte	0x33
	.byte	0x1e
	.4byte	0x6e
	.4byte	.LLST1
	.byte	0x13
	.string	"cmd"
	.byte	0x1
	.byte	0x33
	.byte	0x35
	.4byte	0x32c
	.byte	0x1
	.byte	0x5b
	.byte	0x13
	.string	"arg"
	.byte	0x1
	.byte	0x33
	.byte	0x40
	.4byte	0x8f
	.byte	0x1
	.byte	0x5c
	.byte	0x14
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.byte	0x15
	.4byte	.LASF65
	.byte	0x1
	.byte	0x3b
	.byte	0x16
	.4byte	0x6e
	.4byte	.LLST2
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LASF66
	.byte	0x1
	.byte	0x1b
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.byte	0x12
	.4byte	.LASF59
	.byte	0x1
	.byte	0x1b
	.byte	0x26
	.4byte	0x6e
	.4byte	.LLST0
	.byte	0x17
	.4byte	.LASF60
	.byte	0x1
	.byte	0x1b
	.byte	0x38
	.4byte	0x5b
	.byte	0x1
	.byte	0x5b
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
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x35
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
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
	.byte	0xd
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x21
	.byte	0
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
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
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
	.byte	0x12
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
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
	.byte	0x17
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL4
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL5
	.4byte	.LVL6
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
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
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
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF30:
	.string	"SqReadBase"
.LASF34:
	.string	"DnldQueueWrPtr"
.LASF57:
	.string	"SdioFuncReg"
.LASF16:
	.string	"HostIntStatus"
.LASF52:
	.string	"IoPort"
.LASF14:
	.string	"HostIntCause"
.LASF19:
	.string	"RdLen"
.LASF2:
	.string	"short int"
.LASF51:
	.string	"DmaAddr"
.LASF65:
	.string	"blockSize"
.LASF4:
	.string	"long long int"
.LASF49:
	.string	"Config2"
.LASF15:
	.string	"HostIntMask"
.LASF64:
	.string	"sdio_ioctl"
.LASF44:
	.string	"Scratch1"
.LASF43:
	.string	"Scratch2"
.LASF66:
	.string	"sdio_GEN_CARD2HOST_INT"
.LASF6:
	.string	"uint8_t"
.LASF37:
	.string	"UpldQueue"
.LASF18:
	.string	"WrBitMap"
.LASF45:
	.string	"Ocr0"
.LASF46:
	.string	"Ocr1"
.LASF54:
	.string	"IOCTL_GET_CONFIG"
.LASF20:
	.string	"HostTransferStatus"
.LASF62:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_sdu.c"
.LASF50:
	.string	"Debug"
.LASF21:
	.string	"reserved1"
.LASF23:
	.string	"reserved2"
.LASF25:
	.string	"reserved3"
.LASF27:
	.string	"reserved4"
.LASF29:
	.string	"reserved5"
.LASF39:
	.string	"reserved6"
.LASF42:
	.string	"reserved7"
.LASF48:
	.string	"Config"
.LASF32:
	.string	"RdIdx"
.LASF58:
	.string	"flag_mport"
.LASF41:
	.string	"IPRev1"
.LASF5:
	.string	"unsigned char"
.LASF24:
	.string	"CardIntMask"
.LASF59:
	.string	"port_id"
.LASF1:
	.string	"signed char"
.LASF11:
	.string	"long long unsigned int"
.LASF9:
	.string	"uint32_t"
.LASF47:
	.string	"Ocr2"
.LASF0:
	.string	"unsigned int"
.LASF63:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/bl602_std"
.LASF7:
	.string	"uint16_t"
.LASF35:
	.string	"UpldQueueWrPtr"
.LASF8:
	.string	"short unsigned int"
.LASF40:
	.string	"IPRev0"
.LASF12:
	.string	"char"
.LASF3:
	.string	"long int"
.LASF60:
	.string	"value"
.LASF13:
	.string	"HostToCardEvent"
.LASF10:
	.string	"long unsigned int"
.LASF22:
	.string	"CardToHostEvent"
.LASF33:
	.string	"WrIdx"
.LASF28:
	.string	"CardIntMode"
.LASF26:
	.string	"CardIntStatus"
.LASF31:
	.string	"SqWriteBase"
.LASF55:
	.string	"IOCTL_HID_GET_BLOCK_SIZE"
.LASF38:
	.string	"ChipRev"
.LASF53:
	.string	"pHidSdio_RegMap_t"
.LASF36:
	.string	"DnldQueue"
.LASF17:
	.string	"RdBitMap"
.LASF56:
	.string	"SDIO_CMD_TYPE"
.LASF61:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
