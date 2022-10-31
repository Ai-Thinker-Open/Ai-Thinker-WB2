	.file	"netstat.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.cmd_netstat,"ax",@progbits
	.align	1
	.type	cmd_netstat, @function
cmd_netstat:
.LFB5:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/netutils/netstat/netstat.c"
	.loc 1 13 1
	.cfi_startproc
.LVL0:
	.loc 1 14 3
	lui	a0,%hi(stats_netstat)
.LVL1:
	li	a1,0
.LVL2:
	addi	a0,a0,%lo(stats_netstat)
	tail	tcpip_callback
.LVL3:
	.cfi_endproc
.LFE5:
	.size	cmd_netstat, .-cmd_netstat
	.section	.text.network_netutils_netstat_cli_register,"ax",@progbits
	.align	1
	.globl	network_netutils_netstat_cli_register
	.type	network_netutils_netstat_cli_register, @function
network_netutils_netstat_cli_register:
.LFB6:
	.loc 1 25 1
	.cfi_startproc
	.loc 1 30 5
	.loc 1 31 1 is_stmt 0
	li	a0,0
	ret
	.cfi_endproc
.LFE6:
	.size	network_netutils_netstat_cli_register, .-network_netutils_netstat_cli_register
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"netstat"
	.align	2
.LC1:
	.string	"show current net states"
	.section	.static_cli_cmds,"a"
	.align	2
	.type	cmds_user, @object
	.size	cmds_user, 12
cmds_user:
	.word	.LC0
	.word	.LC1
	.word	cmd_netstat
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/cli/cli/include/cli.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/memp.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/netif.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/tcpip.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x223
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF34
	.byte	0xc
	.4byte	.LASF35
	.4byte	.LASF36
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.byte	0x2
	.byte	0x8
	.byte	0x5
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
	.byte	0x4
	.4byte	0x71
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x5
	.4byte	0x71
	.byte	0x4
	.byte	0x4
	.4byte	0x78
	.byte	0x6
	.4byte	.LASF37
	.byte	0xc
	.byte	0x2
	.byte	0x32
	.byte	0x8
	.4byte	0xb8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x2
	.byte	0x33
	.byte	0x11
	.4byte	0x7d
	.byte	0
	.byte	0x7
	.4byte	.LASF11
	.byte	0x2
	.byte	0x34
	.byte	0x11
	.4byte	0x7d
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.byte	0x2
	.byte	0x36
	.byte	0xc
	.4byte	0xdd
	.byte	0x8
	.byte	0
	.byte	0x5
	.4byte	0x83
	.byte	0x8
	.4byte	0xd7
	.byte	0x9
	.4byte	0x6b
	.byte	0x9
	.4byte	0x5d
	.byte	0x9
	.4byte	0x5d
	.byte	0x9
	.4byte	0xd7
	.byte	0
	.byte	0x4
	.byte	0x4
	.4byte	0x6b
	.byte	0x4
	.byte	0x4
	.4byte	0xbd
	.byte	0xa
	.byte	0x7
	.byte	0x4
	.4byte	0x64
	.byte	0x3
	.byte	0x34
	.byte	0xe
	.4byte	0x152
	.byte	0xb
	.4byte	.LASF13
	.byte	0
	.byte	0xb
	.4byte	.LASF14
	.byte	0x1
	.byte	0xb
	.4byte	.LASF15
	.byte	0x2
	.byte	0xb
	.4byte	.LASF16
	.byte	0x3
	.byte	0xb
	.4byte	.LASF17
	.byte	0x4
	.byte	0xb
	.4byte	.LASF18
	.byte	0x5
	.byte	0xb
	.4byte	.LASF19
	.byte	0x6
	.byte	0xb
	.4byte	.LASF20
	.byte	0x7
	.byte	0xb
	.4byte	.LASF21
	.byte	0x8
	.byte	0xb
	.4byte	.LASF22
	.byte	0x9
	.byte	0xb
	.4byte	.LASF23
	.byte	0xa
	.byte	0xb
	.4byte	.LASF24
	.byte	0xb
	.byte	0xb
	.4byte	.LASF25
	.byte	0xc
	.byte	0xb
	.4byte	.LASF26
	.byte	0xd
	.byte	0xb
	.4byte	.LASF27
	.byte	0xe
	.byte	0xb
	.4byte	.LASF28
	.byte	0xf
	.byte	0
	.byte	0xc
	.4byte	.LASF38
	.byte	0x7
	.byte	0x4
	.4byte	0x64
	.byte	0x4
	.byte	0x71
	.byte	0x6
	.4byte	0x177
	.byte	0xb
	.4byte	.LASF29
	.byte	0
	.byte	0xb
	.4byte	.LASF30
	.byte	0x1
	.byte	0xb
	.4byte	.LASF31
	.byte	0x2
	.byte	0
	.byte	0xd
	.4byte	0xb8
	.4byte	0x187
	.byte	0xe
	.4byte	0x64
	.byte	0
	.byte	0
	.byte	0x5
	.4byte	0x177
	.byte	0xf
	.4byte	.LASF39
	.byte	0x1
	.byte	0x12
	.byte	0x21
	.4byte	0x187
	.byte	0x5
	.byte	0x3
	.4byte	cmds_user
	.byte	0x10
	.4byte	.LASF40
	.byte	0x1
	.byte	0x18
	.byte	0x5
	.4byte	0x5d
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.byte	0x11
	.4byte	.LASF41
	.byte	0x1
	.byte	0xc
	.byte	0xd
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x21a
	.byte	0x12
	.string	"buf"
	.byte	0x1
	.byte	0xc
	.byte	0x1f
	.4byte	0x6b
	.4byte	.LLST0
	.byte	0x12
	.string	"len"
	.byte	0x1
	.byte	0xc
	.byte	0x28
	.4byte	0x5d
	.4byte	.LLST1
	.byte	0x13
	.4byte	.LASF32
	.byte	0x1
	.byte	0xc
	.byte	0x31
	.4byte	0x5d
	.4byte	.LLST2
	.byte	0x13
	.4byte	.LASF33
	.byte	0x1
	.byte	0xc
	.byte	0x3e
	.4byte	0xd7
	.4byte	.LLST3
	.byte	0x14
	.4byte	.LVL3
	.4byte	0x21a
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x5
	.byte	0x53
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
	.byte	0x49
	.byte	0x13
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
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
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
	.byte	0xb
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xc
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
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x16
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
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
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
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL3-1
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL3-1
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
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
.LASF18:
	.string	"MEMP_ALTCP_PCB"
.LASF20:
	.string	"MEMP_NETCONN"
.LASF31:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF41:
	.string	"cmd_netstat"
.LASF26:
	.string	"MEMP_PBUF"
.LASF21:
	.string	"MEMP_TCPIP_MSG_API"
.LASF24:
	.string	"MEMP_SYS_TIMEOUT"
.LASF3:
	.string	"short unsigned int"
.LASF27:
	.string	"MEMP_PBUF_POOL"
.LASF13:
	.string	"MEMP_RAW_PCB"
.LASF15:
	.string	"MEMP_TCP_PCB"
.LASF5:
	.string	"long unsigned int"
.LASF12:
	.string	"function"
.LASF16:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF11:
	.string	"help"
.LASF1:
	.string	"unsigned char"
.LASF17:
	.string	"MEMP_TCP_SEG"
.LASF37:
	.string	"cli_command"
.LASF2:
	.string	"short int"
.LASF38:
	.string	"lwip_internal_netif_client_data_index"
.LASF42:
	.string	"tcpip_callback"
.LASF40:
	.string	"network_netutils_netstat_cli_register"
.LASF8:
	.string	"unsigned int"
.LASF35:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/netutils/netstat/netstat.c"
.LASF7:
	.string	"long long unsigned int"
.LASF23:
	.string	"MEMP_IGMP_GROUP"
.LASF30:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF29:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF19:
	.string	"MEMP_NETBUF"
.LASF32:
	.string	"argc"
.LASF6:
	.string	"long long int"
.LASF39:
	.string	"cmds_user"
.LASF34:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF9:
	.string	"char"
.LASF14:
	.string	"MEMP_UDP_PCB"
.LASF36:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/netutils"
.LASF33:
	.string	"argv"
.LASF28:
	.string	"MEMP_MAX"
.LASF4:
	.string	"long int"
.LASF25:
	.string	"MEMP_NETDB"
.LASF0:
	.string	"signed char"
.LASF10:
	.string	"name"
.LASF22:
	.string	"MEMP_TCPIP_MSG_INPKT"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
