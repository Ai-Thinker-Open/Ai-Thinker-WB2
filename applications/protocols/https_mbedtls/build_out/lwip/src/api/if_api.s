	.file	"if_api.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.lwip_if_indextoname,"ax",@progbits
	.align	1
	.globl	lwip_if_indextoname
	.type	lwip_if_indextoname, @function
lwip_if_indextoname:
.LFB5:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/api/if_api.c"
	.loc 1 62 1
	.cfi_startproc
.LVL0:
	.loc 1 64 3
	.loc 1 62 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 64 6
	li	a5,255
	bleu	a0,a5,.L2
.LVL1:
.L4:
	.loc 1 74 3 is_stmt 1
	.loc 1 74 8
	.loc 1 74 17
	.loc 1 74 23 is_stmt 0
	lui	a5,%hi(errno)
	li	a4,6
	sw	a4,%lo(errno)(a5)
	.loc 1 74 39 is_stmt 1
	.loc 1 75 3
	.loc 1 75 9 is_stmt 0
	li	s0,0
.L3:
	.loc 1 76 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,s0
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL2:
.L2:
	.cfi_restore_state
.LBB2:
	.loc 1 65 17
	andi	a0,a0,0xff
.LVL3:
	mv	s0,a1
	.loc 1 65 5 is_stmt 1
	.loc 1 65 17 is_stmt 0
	call	netifapi_netif_index_to_name
.LVL4:
	.loc 1 66 5 is_stmt 1
	.loc 1 66 8 is_stmt 0
	bne	a0,zero,.L4
	.loc 1 66 14 discriminator 1
	lbu	a5,0(s0)
	bne	a5,zero,.L3
	j	.L4
.LBE2:
	.cfi_endproc
.LFE5:
	.size	lwip_if_indextoname, .-lwip_if_indextoname
	.section	.text.lwip_if_nametoindex,"ax",@progbits
	.align	1
	.globl	lwip_if_nametoindex
	.type	lwip_if_nametoindex, @function
lwip_if_nametoindex:
.LFB6:
	.loc 1 87 1 is_stmt 1
	.cfi_startproc
.LVL5:
	.loc 1 89 3
	.loc 1 90 3
	.loc 1 92 3
	.loc 1 87 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 92 9
	addi	a1,sp,15
	.loc 1 87 1
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 92 9
	call	netifapi_netif_name_to_index
.LVL6:
	.loc 1 93 3 is_stmt 1
	.loc 1 93 6 is_stmt 0
	bne	a0,zero,.L11
	.loc 1 94 5 is_stmt 1
	.loc 1 94 12 is_stmt 0
	lbu	a0,15(sp)
.LVL7:
.L9:
	.loc 1 100 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL8:
.L11:
	.cfi_restore_state
	.loc 1 99 10
	li	a0,0
.LVL9:
	j	.L9
	.cfi_endproc
.LFE6:
	.size	lwip_if_nametoindex, .-lwip_if_nametoindex
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/arch.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/err.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/netifapi.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/errno.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1bc
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF23
	.byte	0xc
	.4byte	.LASF24
	.4byte	.LASF25
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF1
	.byte	0x2
	.byte	0x29
	.byte	0x15
	.4byte	0x38
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x4b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.byte	0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.byte	0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x5
	.byte	0x4
	.4byte	0x89
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x6
	.4byte	0x89
	.byte	0x5
	.byte	0x4
	.4byte	0x90
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x14
	.byte	0x12
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x3f
	.byte	0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x7d
	.byte	0x11
	.4byte	0xa7
	.byte	0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x7e
	.byte	0x10
	.4byte	0x9b
	.byte	0x7
	.4byte	.LASF26
	.byte	0x7
	.byte	0xb1
	.byte	0xc
	.4byte	0x25
	.byte	0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0x60
	.byte	0xe
	.4byte	0xbf
	.byte	0x8
	.4byte	.LASF17
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.4byte	0x7c
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x144
	.byte	0x9
	.4byte	.LASF19
	.byte	0x1
	.byte	0x56
	.byte	0x21
	.4byte	0x95
	.4byte	.LLST2
	.byte	0xa
	.string	"err"
	.byte	0x1
	.byte	0x59
	.byte	0x9
	.4byte	0xd7
	.4byte	.LLST3
	.byte	0xb
	.string	"idx"
	.byte	0x1
	.byte	0x5a
	.byte	0x8
	.4byte	0xb3
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0xc
	.4byte	.LVL6
	.4byte	0x1a7
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xd
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0
	.byte	0
	.byte	0x8
	.4byte	.LASF18
	.byte	0x1
	.byte	0x3d
	.byte	0x1
	.4byte	0x83
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x1a7
	.byte	0x9
	.4byte	.LASF20
	.byte	0x1
	.byte	0x3d
	.byte	0x22
	.4byte	0x7c
	.4byte	.LLST0
	.byte	0x9
	.4byte	.LASF19
	.byte	0x1
	.byte	0x3d
	.byte	0x31
	.4byte	0x83
	.4byte	.LLST1
	.byte	0xe
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.byte	0xb
	.string	"err"
	.byte	0x1
	.byte	0x41
	.byte	0xb
	.4byte	0xd7
	.byte	0x1
	.byte	0x5a
	.byte	0xc
	.4byte	.LVL4
	.4byte	0x1b3
	.byte	0xd
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LASF21
	.4byte	.LASF21
	.byte	0x6
	.byte	0x50
	.byte	0x7
	.byte	0xf
	.4byte	.LASF22
	.4byte	.LASF22
	.byte	0x6
	.byte	0x52
	.byte	0x7
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
	.byte	0x8
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
	.byte	0x9
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
	.byte	0xa
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
	.byte	0xb
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
	.byte	0xc
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0xf
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
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LVL9
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
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL4-1
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x58
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF8:
	.string	"long long int"
.LASF15:
	.string	"s8_t"
.LASF10:
	.string	"unsigned int"
.LASF17:
	.string	"lwip_if_nametoindex"
.LASF7:
	.string	"long unsigned int"
.LASF24:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/api/if_api.c"
.LASF9:
	.string	"long long unsigned int"
.LASF2:
	.string	"__uint8_t"
.LASF20:
	.string	"ifindex"
.LASF16:
	.string	"err_t"
.LASF21:
	.string	"netifapi_netif_name_to_index"
.LASF13:
	.string	"uint8_t"
.LASF3:
	.string	"unsigned char"
.LASF11:
	.string	"char"
.LASF12:
	.string	"int8_t"
.LASF6:
	.string	"long int"
.LASF18:
	.string	"lwip_if_indextoname"
.LASF22:
	.string	"netifapi_netif_index_to_name"
.LASF25:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/lwip"
.LASF19:
	.string	"ifname"
.LASF1:
	.string	"__int8_t"
.LASF5:
	.string	"short unsigned int"
.LASF0:
	.string	"signed char"
.LASF26:
	.string	"errno"
.LASF14:
	.string	"u8_t"
.LASF4:
	.string	"short int"
.LASF23:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
