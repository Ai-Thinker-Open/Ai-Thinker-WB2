	.file	"init.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.lwip_init,"ax",@progbits
	.align	1
	.globl	lwip_init
	.type	lwip_init, @function
lwip_init:
.LFB5:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/core/init.c"
	.loc 1 333 1
	.cfi_startproc
	.loc 1 335 3
.LVL0:
	.loc 1 336 3
	.loc 1 337 3
	.loc 1 337 8
	.loc 1 337 50
	.loc 1 337 60
	.loc 1 340 3
	.loc 1 340 8
	.loc 1 340 57
	.loc 1 340 67
	.loc 1 344 3
	.loc 1 333 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 344 3
	call	stats_init
.LVL1:
	.loc 1 346 3 is_stmt 1
	call	sys_init
.LVL2:
	.loc 1 348 3
	call	mem_init
.LVL3:
	.loc 1 349 3
	call	memp_init
.LVL4:
	.loc 1 350 3
	.loc 1 351 3
	call	netif_init
.LVL5:
	.loc 1 353 3
	.loc 1 355 3
	.loc 1 359 3
	.loc 1 362 3
	call	udp_init
.LVL6:
	.loc 1 365 3
	call	tcp_init
.LVL7:
	.loc 1 368 3
	call	igmp_init
.LVL8:
	.loc 1 371 3
	call	dns_init
.LVL9:
	.loc 1 378 3
	.loc 1 380 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 378 3
	tail	sys_timeouts_init
.LVL10:
	.cfi_endproc
.LFE5:
	.size	lwip_init, .-lwip_init
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/stats.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/sys.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/mem.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/memp.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/netif.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/udp.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/priv/tcp_priv.h"
	.file 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/igmp.h"
	.file 10 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/dns.h"
	.file 11 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/timeouts.h"
	.file 12 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x174
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF20
	.byte	0xc
	.4byte	.LASF21
	.4byte	.LASF22
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x4
	.4byte	.LASF23
	.byte	0xc
	.byte	0x8f
	.byte	0xd
	.4byte	0x25
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x5
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x14c
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0xfc
	.byte	0x6
	.string	"a"
	.byte	0x1
	.2byte	0x14f
	.byte	0x7
	.4byte	0x25
	.byte	0
	.byte	0x7
	.4byte	.LVL1
	.4byte	0xfc
	.byte	0x7
	.4byte	.LVL2
	.4byte	0x109
	.byte	0x7
	.4byte	.LVL3
	.4byte	0x116
	.byte	0x7
	.4byte	.LVL4
	.4byte	0x122
	.byte	0x7
	.4byte	.LVL5
	.4byte	0x12e
	.byte	0x7
	.4byte	.LVL6
	.4byte	0x13b
	.byte	0x7
	.4byte	.LVL7
	.4byte	0x147
	.byte	0x7
	.4byte	.LVL8
	.4byte	0x153
	.byte	0x7
	.4byte	.LVL9
	.4byte	0x15f
	.byte	0x8
	.4byte	.LVL10
	.4byte	0x16b
	.byte	0
	.byte	0x9
	.4byte	.LASF10
	.4byte	.LASF10
	.byte	0x2
	.2byte	0x133
	.byte	0x6
	.byte	0x9
	.4byte	.LASF11
	.4byte	.LASF11
	.byte	0x3
	.2byte	0x1ad
	.byte	0x6
	.byte	0xa
	.4byte	.LASF12
	.4byte	.LASF12
	.byte	0x4
	.byte	0x48
	.byte	0x6
	.byte	0xa
	.4byte	.LASF13
	.4byte	.LASF13
	.byte	0x5
	.byte	0x8d
	.byte	0x6
	.byte	0x9
	.4byte	.LASF14
	.4byte	.LASF14
	.byte	0x6
	.2byte	0x19b
	.byte	0x6
	.byte	0xa
	.4byte	.LASF15
	.4byte	.LASF15
	.byte	0x7
	.byte	0xa5
	.byte	0x6
	.byte	0xa
	.4byte	.LASF16
	.4byte	.LASF16
	.byte	0x8
	.byte	0x3d
	.byte	0x6
	.byte	0xa
	.4byte	.LASF17
	.4byte	.LASF17
	.byte	0x9
	.byte	0x5a
	.byte	0x6
	.byte	0xa
	.4byte	.LASF18
	.4byte	.LASF18
	.byte	0xa
	.byte	0x69
	.byte	0x6
	.byte	0xa
	.4byte	.LASF19
	.4byte	.LASF19
	.byte	0xb
	.byte	0x67
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
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
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
	.byte	0x6
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
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
	.byte	0x9
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
	.byte	0xa
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
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF6:
	.string	"long long int"
.LASF13:
	.string	"memp_init"
.LASF8:
	.string	"unsigned int"
.LASF23:
	.string	"ptrdiff_t"
.LASF5:
	.string	"long unsigned int"
.LASF7:
	.string	"long long unsigned int"
.LASF12:
	.string	"mem_init"
.LASF21:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/core/init.c"
.LASF24:
	.string	"lwip_init"
.LASF10:
	.string	"stats_init"
.LASF19:
	.string	"sys_timeouts_init"
.LASF1:
	.string	"unsigned char"
.LASF9:
	.string	"char"
.LASF14:
	.string	"netif_init"
.LASF20:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF4:
	.string	"long int"
.LASF18:
	.string	"dns_init"
.LASF2:
	.string	"short int"
.LASF22:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/lwip"
.LASF3:
	.string	"short unsigned int"
.LASF0:
	.string	"signed char"
.LASF15:
	.string	"udp_init"
.LASF11:
	.string	"sys_init"
.LASF16:
	.string	"tcp_init"
.LASF17:
	.string	"igmp_init"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
