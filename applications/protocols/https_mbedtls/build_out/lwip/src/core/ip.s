	.file	"ip.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.comm	ip_data,24,4
.Letext0:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/arch.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/ip4_addr.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/ip_addr.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/err.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/pbuf.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/netif.h"
	.file 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/prot/ip4.h"
	.file 10 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/ip.h"
	.file 11 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/memp.h"
	.file 12 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/core/ip.c"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x5ed
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF98
	.byte	0xc
	.4byte	.LASF99
	.4byte	.LASF100
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF1
	.byte	0x1
	.byte	0x29
	.byte	0x15
	.4byte	0x30
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF2
	.byte	0x1
	.byte	0x2b
	.byte	0x17
	.4byte	0x43
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.byte	0x3
	.4byte	.LASF5
	.byte	0x1
	.byte	0x39
	.byte	0x1c
	.4byte	0x5d
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.byte	0x3
	.4byte	.LASF8
	.byte	0x1
	.byte	0x4f
	.byte	0x1b
	.4byte	0x77
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.byte	0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.byte	0x5
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.byte	0x6
	.4byte	0x95
	.byte	0x7
	.byte	0x4
	.4byte	0x9c
	.byte	0x3
	.4byte	.LASF14
	.byte	0x2
	.byte	0x14
	.byte	0x12
	.4byte	0x24
	.byte	0x3
	.4byte	.LASF15
	.byte	0x2
	.byte	0x18
	.byte	0x13
	.4byte	0x37
	.byte	0x3
	.4byte	.LASF16
	.byte	0x2
	.byte	0x24
	.byte	0x14
	.4byte	0x51
	.byte	0x3
	.4byte	.LASF17
	.byte	0x2
	.byte	0x30
	.byte	0x14
	.4byte	0x6b
	.byte	0x3
	.4byte	.LASF18
	.byte	0x3
	.byte	0x7d
	.byte	0x11
	.4byte	0xb3
	.byte	0x3
	.4byte	.LASF19
	.byte	0x3
	.byte	0x7e
	.byte	0x10
	.4byte	0xa7
	.byte	0x3
	.4byte	.LASF20
	.byte	0x3
	.byte	0x7f
	.byte	0x12
	.4byte	0xbf
	.byte	0x3
	.4byte	.LASF21
	.byte	0x3
	.byte	0x81
	.byte	0x12
	.4byte	0xcb
	.byte	0x8
	.4byte	.LASF25
	.byte	0x4
	.byte	0x4
	.byte	0x33
	.byte	0x8
	.4byte	0x122
	.byte	0x9
	.4byte	.LASF27
	.byte	0x4
	.byte	0x34
	.byte	0x9
	.4byte	0xfb
	.byte	0
	.byte	0
	.byte	0x3
	.4byte	.LASF22
	.byte	0x4
	.byte	0x39
	.byte	0x19
	.4byte	0x107
	.byte	0x6
	.4byte	0x122
	.byte	0xa
	.4byte	.LASF23
	.byte	0x5
	.2byte	0x10e
	.byte	0x14
	.4byte	0x122
	.byte	0x3
	.4byte	.LASF24
	.byte	0x6
	.byte	0x60
	.byte	0xe
	.4byte	0xe3
	.byte	0x8
	.4byte	.LASF26
	.byte	0x10
	.byte	0x7
	.byte	0xba
	.byte	0x8
	.4byte	0x1c2
	.byte	0x9
	.4byte	.LASF28
	.byte	0x7
	.byte	0xbc
	.byte	0x10
	.4byte	0x1c2
	.byte	0
	.byte	0x9
	.4byte	.LASF29
	.byte	0x7
	.byte	0xbf
	.byte	0x9
	.4byte	0x93
	.byte	0x4
	.byte	0x9
	.4byte	.LASF30
	.byte	0x7
	.byte	0xc8
	.byte	0x9
	.4byte	0xef
	.byte	0x8
	.byte	0xb
	.string	"len"
	.byte	0x7
	.byte	0xcb
	.byte	0x9
	.4byte	0xef
	.byte	0xa
	.byte	0x9
	.4byte	.LASF31
	.byte	0x7
	.byte	0xd0
	.byte	0x8
	.4byte	0xd7
	.byte	0xc
	.byte	0x9
	.4byte	.LASF32
	.byte	0x7
	.byte	0xd3
	.byte	0x8
	.4byte	0xd7
	.byte	0xd
	.byte	0xb
	.string	"ref"
	.byte	0x7
	.byte	0xda
	.byte	0x8
	.4byte	0xd7
	.byte	0xe
	.byte	0x9
	.4byte	.LASF33
	.byte	0x7
	.byte	0xdd
	.byte	0x8
	.4byte	0xd7
	.byte	0xf
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x14c
	.byte	0xc
	.byte	0x7
	.byte	0x4
	.4byte	0x8c
	.byte	0xb
	.byte	0x34
	.byte	0xe
	.4byte	0x237
	.byte	0xd
	.4byte	.LASF34
	.byte	0
	.byte	0xd
	.4byte	.LASF35
	.byte	0x1
	.byte	0xd
	.4byte	.LASF36
	.byte	0x2
	.byte	0xd
	.4byte	.LASF37
	.byte	0x3
	.byte	0xd
	.4byte	.LASF38
	.byte	0x4
	.byte	0xd
	.4byte	.LASF39
	.byte	0x5
	.byte	0xd
	.4byte	.LASF40
	.byte	0x6
	.byte	0xd
	.4byte	.LASF41
	.byte	0x7
	.byte	0xd
	.4byte	.LASF42
	.byte	0x8
	.byte	0xd
	.4byte	.LASF43
	.byte	0x9
	.byte	0xd
	.4byte	.LASF44
	.byte	0xa
	.byte	0xd
	.4byte	.LASF45
	.byte	0xb
	.byte	0xd
	.4byte	.LASF46
	.byte	0xc
	.byte	0xd
	.4byte	.LASF47
	.byte	0xd
	.byte	0xd
	.4byte	.LASF48
	.byte	0xe
	.byte	0xd
	.4byte	.LASF49
	.byte	0xf
	.byte	0
	.byte	0xe
	.4byte	.LASF53
	.byte	0x7
	.byte	0x4
	.4byte	0x8c
	.byte	0x8
	.byte	0x71
	.byte	0x6
	.4byte	0x25c
	.byte	0xd
	.4byte	.LASF50
	.byte	0
	.byte	0xd
	.4byte	.LASF51
	.byte	0x1
	.byte	0xd
	.4byte	.LASF52
	.byte	0x2
	.byte	0
	.byte	0xe
	.4byte	.LASF54
	.byte	0x7
	.byte	0x4
	.4byte	0x8c
	.byte	0x8
	.byte	0x9c
	.byte	0x6
	.4byte	0x27b
	.byte	0xd
	.4byte	.LASF55
	.byte	0
	.byte	0xd
	.4byte	.LASF56
	.byte	0x1
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x281
	.byte	0xf
	.4byte	.LASF57
	.byte	0x54
	.byte	0x8
	.2byte	0x104
	.byte	0x8
	.4byte	0x3c3
	.byte	0x10
	.4byte	.LASF28
	.byte	0x8
	.2byte	0x107
	.byte	0x11
	.4byte	0x27b
	.byte	0
	.byte	0x10
	.4byte	.LASF58
	.byte	0x8
	.2byte	0x10c
	.byte	0xd
	.4byte	0x133
	.byte	0x4
	.byte	0x10
	.4byte	.LASF59
	.byte	0x8
	.2byte	0x10d
	.byte	0xd
	.4byte	0x133
	.byte	0x8
	.byte	0x11
	.string	"gw"
	.byte	0x8
	.2byte	0x10e
	.byte	0xd
	.4byte	0x133
	.byte	0xc
	.byte	0x10
	.4byte	.LASF60
	.byte	0x8
	.2byte	0x120
	.byte	0x12
	.4byte	0x3c3
	.byte	0x10
	.byte	0x10
	.4byte	.LASF61
	.byte	0x8
	.2byte	0x126
	.byte	0x13
	.4byte	0x3e9
	.byte	0x14
	.byte	0x10
	.4byte	.LASF62
	.byte	0x8
	.2byte	0x12b
	.byte	0x17
	.4byte	0x41a
	.byte	0x18
	.byte	0x10
	.4byte	.LASF63
	.byte	0x8
	.2byte	0x136
	.byte	0x1c
	.4byte	0x440
	.byte	0x1c
	.byte	0x10
	.4byte	.LASF64
	.byte	0x8
	.2byte	0x13b
	.byte	0x1c
	.4byte	0x440
	.byte	0x20
	.byte	0x10
	.4byte	.LASF65
	.byte	0x8
	.2byte	0x143
	.byte	0x9
	.4byte	0x93
	.byte	0x24
	.byte	0x10
	.4byte	.LASF66
	.byte	0x8
	.2byte	0x145
	.byte	0x9
	.4byte	0x488
	.byte	0x28
	.byte	0x10
	.4byte	.LASF67
	.byte	0x8
	.2byte	0x149
	.byte	0xf
	.4byte	0xa1
	.byte	0x34
	.byte	0x11
	.string	"mtu"
	.byte	0x8
	.2byte	0x14f
	.byte	0x9
	.4byte	0xef
	.byte	0x38
	.byte	0x10
	.4byte	.LASF68
	.byte	0x8
	.2byte	0x155
	.byte	0x8
	.4byte	0x498
	.byte	0x3a
	.byte	0x10
	.4byte	.LASF69
	.byte	0x8
	.2byte	0x157
	.byte	0x8
	.4byte	0xd7
	.byte	0x40
	.byte	0x10
	.4byte	.LASF32
	.byte	0x8
	.2byte	0x159
	.byte	0x8
	.4byte	0xd7
	.byte	0x41
	.byte	0x10
	.4byte	.LASF70
	.byte	0x8
	.2byte	0x15b
	.byte	0x8
	.4byte	0x4a8
	.byte	0x42
	.byte	0x11
	.string	"num"
	.byte	0x8
	.2byte	0x15e
	.byte	0x8
	.4byte	0xd7
	.byte	0x44
	.byte	0x10
	.4byte	.LASF71
	.byte	0x8
	.2byte	0x165
	.byte	0x8
	.4byte	0xd7
	.byte	0x45
	.byte	0x10
	.4byte	.LASF72
	.byte	0x8
	.2byte	0x174
	.byte	0x1c
	.4byte	0x45d
	.byte	0x48
	.byte	0x10
	.4byte	.LASF73
	.byte	0x8
	.2byte	0x180
	.byte	0x10
	.4byte	0x1c2
	.byte	0x4c
	.byte	0x10
	.4byte	.LASF74
	.byte	0x8
	.2byte	0x181
	.byte	0x10
	.4byte	0x1c2
	.byte	0x50
	.byte	0
	.byte	0x3
	.4byte	.LASF75
	.byte	0x8
	.byte	0xb2
	.byte	0x11
	.4byte	0x3cf
	.byte	0x7
	.byte	0x4
	.4byte	0x3d5
	.byte	0x12
	.4byte	0x140
	.4byte	0x3e9
	.byte	0x13
	.4byte	0x1c2
	.byte	0x13
	.4byte	0x27b
	.byte	0
	.byte	0x3
	.4byte	.LASF76
	.byte	0x8
	.byte	0xbd
	.byte	0x11
	.4byte	0x3f5
	.byte	0x7
	.byte	0x4
	.4byte	0x3fb
	.byte	0x12
	.4byte	0x140
	.4byte	0x414
	.byte	0x13
	.4byte	0x27b
	.byte	0x13
	.4byte	0x1c2
	.byte	0x13
	.4byte	0x414
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x12e
	.byte	0x3
	.4byte	.LASF77
	.byte	0x8
	.byte	0xd4
	.byte	0x11
	.4byte	0x426
	.byte	0x7
	.byte	0x4
	.4byte	0x42c
	.byte	0x12
	.4byte	0x140
	.4byte	0x440
	.byte	0x13
	.4byte	0x27b
	.byte	0x13
	.4byte	0x1c2
	.byte	0
	.byte	0x3
	.4byte	.LASF78
	.byte	0x8
	.byte	0xd6
	.byte	0x10
	.4byte	0x44c
	.byte	0x7
	.byte	0x4
	.4byte	0x452
	.byte	0x14
	.4byte	0x45d
	.byte	0x13
	.4byte	0x27b
	.byte	0
	.byte	0x3
	.4byte	.LASF79
	.byte	0x8
	.byte	0xd9
	.byte	0x11
	.4byte	0x469
	.byte	0x7
	.byte	0x4
	.4byte	0x46f
	.byte	0x12
	.4byte	0x140
	.4byte	0x488
	.byte	0x13
	.4byte	0x27b
	.byte	0x13
	.4byte	0x414
	.byte	0x13
	.4byte	0x25c
	.byte	0
	.byte	0x15
	.4byte	0x93
	.4byte	0x498
	.byte	0x16
	.4byte	0x8c
	.byte	0x2
	.byte	0
	.byte	0x15
	.4byte	0xd7
	.4byte	0x4a8
	.byte	0x16
	.4byte	0x8c
	.byte	0x5
	.byte	0
	.byte	0x15
	.4byte	0x95
	.4byte	0x4b8
	.byte	0x16
	.4byte	0x8c
	.byte	0x1
	.byte	0
	.byte	0x8
	.4byte	.LASF80
	.byte	0x4
	.byte	0x9
	.byte	0x35
	.byte	0x8
	.4byte	0x4d3
	.byte	0x9
	.4byte	.LASF27
	.byte	0x9
	.byte	0x36
	.byte	0x9
	.4byte	0xfb
	.byte	0
	.byte	0
	.byte	0x3
	.4byte	.LASF81
	.byte	0x9
	.byte	0x3d
	.byte	0x20
	.4byte	0x4b8
	.byte	0x8
	.4byte	.LASF82
	.byte	0x14
	.byte	0x9
	.byte	0x49
	.byte	0x8
	.4byte	0x56f
	.byte	0x9
	.4byte	.LASF83
	.byte	0x9
	.byte	0x4b
	.byte	0x8
	.4byte	0xd7
	.byte	0
	.byte	0x9
	.4byte	.LASF84
	.byte	0x9
	.byte	0x4d
	.byte	0x8
	.4byte	0xd7
	.byte	0x1
	.byte	0x9
	.4byte	.LASF85
	.byte	0x9
	.byte	0x4f
	.byte	0x9
	.4byte	0xef
	.byte	0x2
	.byte	0xb
	.string	"_id"
	.byte	0x9
	.byte	0x51
	.byte	0x9
	.4byte	0xef
	.byte	0x4
	.byte	0x9
	.4byte	.LASF86
	.byte	0x9
	.byte	0x53
	.byte	0x9
	.4byte	0xef
	.byte	0x6
	.byte	0x9
	.4byte	.LASF87
	.byte	0x9
	.byte	0x59
	.byte	0x8
	.4byte	0xd7
	.byte	0x8
	.byte	0x9
	.4byte	.LASF88
	.byte	0x9
	.byte	0x5b
	.byte	0x8
	.4byte	0xd7
	.byte	0x9
	.byte	0x9
	.4byte	.LASF89
	.byte	0x9
	.byte	0x5d
	.byte	0x9
	.4byte	0xef
	.byte	0xa
	.byte	0xb
	.string	"src"
	.byte	0x9
	.byte	0x5f
	.byte	0x10
	.4byte	0x4d3
	.byte	0xc
	.byte	0x9
	.4byte	.LASF90
	.byte	0x9
	.byte	0x60
	.byte	0x10
	.4byte	0x4d3
	.byte	0x10
	.byte	0
	.byte	0x6
	.4byte	0x4df
	.byte	0x8
	.4byte	.LASF91
	.byte	0x18
	.byte	0xa
	.byte	0x6b
	.byte	0x8
	.4byte	0x5d0
	.byte	0x9
	.4byte	.LASF92
	.byte	0xa
	.byte	0x6e
	.byte	0x11
	.4byte	0x27b
	.byte	0
	.byte	0x9
	.4byte	.LASF93
	.byte	0xa
	.byte	0x70
	.byte	0x11
	.4byte	0x27b
	.byte	0x4
	.byte	0x9
	.4byte	.LASF94
	.byte	0xa
	.byte	0x73
	.byte	0x18
	.4byte	0x5d0
	.byte	0x8
	.byte	0x9
	.4byte	.LASF95
	.byte	0xa
	.byte	0x7a
	.byte	0x9
	.4byte	0xef
	.byte	0xc
	.byte	0x9
	.4byte	.LASF96
	.byte	0xa
	.byte	0x7c
	.byte	0xd
	.4byte	0x133
	.byte	0x10
	.byte	0x9
	.4byte	.LASF97
	.byte	0xa
	.byte	0x7e
	.byte	0xd
	.4byte	0x133
	.byte	0x14
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x56f
	.byte	0x17
	.4byte	.LASF101
	.byte	0xa
	.byte	0x80
	.byte	0x1a
	.4byte	0x574
	.byte	0x18
	.4byte	0x5d6
	.byte	0xc
	.byte	0x40
	.byte	0x13
	.byte	0x5
	.byte	0x3
	.4byte	ip_data
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
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
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
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
	.byte	0xf
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0xd
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
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x17
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
	.byte	0x18
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
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x14
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF39:
	.string	"MEMP_ALTCP_PCB"
.LASF27:
	.string	"addr"
.LASF94:
	.string	"current_ip4_header"
.LASF88:
	.string	"_proto"
.LASF68:
	.string	"hwaddr"
.LASF14:
	.string	"int8_t"
.LASF65:
	.string	"state"
.LASF76:
	.string	"netif_output_fn"
.LASF41:
	.string	"MEMP_NETCONN"
.LASF72:
	.string	"igmp_mac_filter"
.LASF40:
	.string	"MEMP_NETBUF"
.LASF60:
	.string	"input"
.LASF82:
	.string	"ip_hdr"
.LASF86:
	.string	"_offset"
.LASF83:
	.string	"_v_hl"
.LASF8:
	.string	"__uint32_t"
.LASF63:
	.string	"status_callback"
.LASF5:
	.string	"__uint16_t"
.LASF66:
	.string	"client_data"
.LASF85:
	.string	"_len"
.LASF4:
	.string	"short int"
.LASF55:
	.string	"NETIF_DEL_MAC_FILTER"
.LASF45:
	.string	"MEMP_SYS_TIMEOUT"
.LASF100:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/lwip"
.LASF81:
	.string	"ip4_addr_p_t"
.LASF15:
	.string	"uint8_t"
.LASF67:
	.string	"hostname"
.LASF37:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF87:
	.string	"_ttl"
.LASF96:
	.string	"current_iphdr_src"
.LASF46:
	.string	"MEMP_NETDB"
.LASF0:
	.string	"signed char"
.LASF62:
	.string	"linkoutput"
.LASF19:
	.string	"s8_t"
.LASF10:
	.string	"long long int"
.LASF11:
	.string	"long long unsigned int"
.LASF53:
	.string	"lwip_internal_netif_client_data_index"
.LASF30:
	.string	"tot_len"
.LASF7:
	.string	"long int"
.LASF54:
	.string	"netif_mac_filter_action"
.LASF23:
	.string	"ip_addr_t"
.LASF52:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF31:
	.string	"type_internal"
.LASF93:
	.string	"current_input_netif"
.LASF90:
	.string	"dest"
.LASF79:
	.string	"netif_igmp_mac_filter_fn"
.LASF89:
	.string	"_chksum"
.LASF70:
	.string	"name"
.LASF50:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF75:
	.string	"netif_input_fn"
.LASF3:
	.string	"unsigned char"
.LASF78:
	.string	"netif_status_callback_fn"
.LASF49:
	.string	"MEMP_MAX"
.LASF33:
	.string	"if_idx"
.LASF77:
	.string	"netif_linkoutput_fn"
.LASF32:
	.string	"flags"
.LASF51:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF17:
	.string	"uint32_t"
.LASF73:
	.string	"loop_first"
.LASF12:
	.string	"unsigned int"
.LASF16:
	.string	"uint16_t"
.LASF101:
	.string	"ip_data"
.LASF44:
	.string	"MEMP_IGMP_GROUP"
.LASF56:
	.string	"NETIF_ADD_MAC_FILTER"
.LASF91:
	.string	"ip_globals"
.LASF6:
	.string	"short unsigned int"
.LASF1:
	.string	"__int8_t"
.LASF64:
	.string	"link_callback"
.LASF24:
	.string	"err_t"
.LASF13:
	.string	"char"
.LASF42:
	.string	"MEMP_TCPIP_MSG_API"
.LASF95:
	.string	"current_ip_header_tot_len"
.LASF25:
	.string	"ip4_addr"
.LASF47:
	.string	"MEMP_PBUF"
.LASF92:
	.string	"current_netif"
.LASF29:
	.string	"payload"
.LASF9:
	.string	"long unsigned int"
.LASF34:
	.string	"MEMP_RAW_PCB"
.LASF99:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/core/ip.c"
.LASF22:
	.string	"ip4_addr_t"
.LASF57:
	.string	"netif"
.LASF59:
	.string	"netmask"
.LASF21:
	.string	"u32_t"
.LASF74:
	.string	"loop_last"
.LASF20:
	.string	"u16_t"
.LASF48:
	.string	"MEMP_PBUF_POOL"
.LASF38:
	.string	"MEMP_TCP_SEG"
.LASF97:
	.string	"current_iphdr_dest"
.LASF71:
	.string	"rs_count"
.LASF43:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF80:
	.string	"ip4_addr_packed"
.LASF61:
	.string	"output"
.LASF36:
	.string	"MEMP_TCP_PCB"
.LASF35:
	.string	"MEMP_UDP_PCB"
.LASF18:
	.string	"u8_t"
.LASF58:
	.string	"ip_addr"
.LASF84:
	.string	"_tos"
.LASF69:
	.string	"hwaddr_len"
.LASF28:
	.string	"next"
.LASF2:
	.string	"__uint8_t"
.LASF26:
	.string	"pbuf"
.LASF98:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
