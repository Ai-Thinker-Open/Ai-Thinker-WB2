	.file	"altcp_alloc.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.altcp_tls_new,"ax",@progbits
	.align	1
	.globl	altcp_tls_new
	.type	altcp_tls_new, @function
altcp_tls_new:
.LFB5:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/core/altcp_alloc.c"
	.loc 1 62 1
	.cfi_startproc
.LVL0:
	.loc 1 63 3
	.loc 1 64 3
	.loc 1 66 3
	.loc 1 62 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	mv	s0,a0
	.loc 1 66 16
	mv	a0,a1
.LVL1:
	.loc 1 62 1
	sw	ra,12(sp)
	sw	s1,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.loc 1 66 16
	call	altcp_tcp_new_ip_type
.LVL2:
	.loc 1 67 3 is_stmt 1
	.loc 1 67 6 is_stmt 0
	beq	a0,zero,.L3
	.loc 1 70 9
	mv	a1,a0
	mv	s1,a0
	.loc 1 70 3 is_stmt 1
	.loc 1 70 9 is_stmt 0
	mv	a0,s0
.LVL3:
	call	altcp_tls_wrap
.LVL4:
	mv	s0,a0
.LVL5:
	.loc 1 71 3 is_stmt 1
	.loc 1 71 6 is_stmt 0
	bne	a0,zero,.L1
	.loc 1 72 5 is_stmt 1
	mv	a0,s1
	call	altcp_close
.LVL6:
.L1:
	.loc 1 75 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,s0
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL7:
.L3:
	.cfi_restore_state
	.loc 1 68 11
	li	s0,0
.LVL8:
	j	.L1
	.cfi_endproc
.LFE5:
	.size	altcp_tls_new, .-altcp_tls_new
	.section	.text.altcp_tls_alloc,"ax",@progbits
	.align	1
	.globl	altcp_tls_alloc
	.type	altcp_tls_alloc, @function
altcp_tls_alloc:
.LFB6:
	.loc 1 81 1 is_stmt 1
	.cfi_startproc
.LVL9:
	.loc 1 82 3
	.loc 1 82 10 is_stmt 0
	tail	altcp_tls_new
.LVL10:
	.cfi_endproc
.LFE6:
	.size	altcp_tls_alloc, .-altcp_tls_alloc
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/arch.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/err.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/pbuf.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/ip4_addr.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/ip_addr.h"
	.file 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/altcp.h"
	.file 10 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/priv/altcp_priv.h"
	.file 11 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/altcp_tcp.h"
	.file 12 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/altcp_tls.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x806
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF98
	.byte	0xc
	.4byte	.LASF99
	.4byte	.LASF100
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
	.byte	0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x65
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
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x7f
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
	.byte	0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x14
	.byte	0x12
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x3f
	.byte	0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x59
	.byte	0x3
	.4byte	.LASF17
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x73
	.byte	0x6
	.byte	0x4
	.4byte	0xda
	.byte	0x7
	.byte	0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x7d
	.byte	0x11
	.4byte	0xb0
	.byte	0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x7e
	.byte	0x10
	.4byte	0xa4
	.byte	0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x7f
	.byte	0x12
	.4byte	0xbc
	.byte	0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0x81
	.byte	0x12
	.4byte	0xc8
	.byte	0x3
	.4byte	.LASF22
	.byte	0x5
	.byte	0x60
	.byte	0xe
	.4byte	0xe7
	.byte	0x8
	.4byte	.LASF29
	.byte	0x10
	.byte	0x6
	.byte	0xba
	.byte	0x8
	.4byte	0x18d
	.byte	0x9
	.4byte	.LASF23
	.byte	0x6
	.byte	0xbc
	.byte	0x10
	.4byte	0x18d
	.byte	0
	.byte	0x9
	.4byte	.LASF24
	.byte	0x6
	.byte	0xbf
	.byte	0x9
	.4byte	0x9b
	.byte	0x4
	.byte	0x9
	.4byte	.LASF25
	.byte	0x6
	.byte	0xc8
	.byte	0x9
	.4byte	0xf3
	.byte	0x8
	.byte	0xa
	.string	"len"
	.byte	0x6
	.byte	0xcb
	.byte	0x9
	.4byte	0xf3
	.byte	0xa
	.byte	0x9
	.4byte	.LASF26
	.byte	0x6
	.byte	0xd0
	.byte	0x8
	.4byte	0xdb
	.byte	0xc
	.byte	0x9
	.4byte	.LASF27
	.byte	0x6
	.byte	0xd3
	.byte	0x8
	.4byte	0xdb
	.byte	0xd
	.byte	0xa
	.string	"ref"
	.byte	0x6
	.byte	0xda
	.byte	0x8
	.4byte	0xdb
	.byte	0xe
	.byte	0x9
	.4byte	.LASF28
	.byte	0x6
	.byte	0xdd
	.byte	0x8
	.4byte	0xdb
	.byte	0xf
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x117
	.byte	0x8
	.4byte	.LASF30
	.byte	0x4
	.byte	0x7
	.byte	0x33
	.byte	0x8
	.4byte	0x1ae
	.byte	0x9
	.4byte	.LASF31
	.byte	0x7
	.byte	0x34
	.byte	0x9
	.4byte	0xff
	.byte	0
	.byte	0
	.byte	0x3
	.4byte	.LASF32
	.byte	0x7
	.byte	0x39
	.byte	0x19
	.4byte	0x193
	.byte	0xb
	.4byte	.LASF33
	.byte	0x8
	.2byte	0x10e
	.byte	0x14
	.4byte	0x1ae
	.byte	0xc
	.4byte	0x1ba
	.byte	0x3
	.4byte	.LASF34
	.byte	0x9
	.byte	0x3b
	.byte	0x11
	.4byte	0x1d8
	.byte	0x6
	.byte	0x4
	.4byte	0x1de
	.byte	0xd
	.4byte	0x10b
	.4byte	0x1f7
	.byte	0xe
	.4byte	0x9b
	.byte	0xe
	.4byte	0x1f7
	.byte	0xe
	.4byte	0x10b
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x1fd
	.byte	0x8
	.4byte	.LASF35
	.byte	0x2c
	.byte	0x9
	.byte	0x44
	.byte	0x8
	.4byte	0x29a
	.byte	0xa
	.string	"fns"
	.byte	0x9
	.byte	0x45
	.byte	0x21
	.4byte	0x46d
	.byte	0
	.byte	0x9
	.4byte	.LASF36
	.byte	0x9
	.byte	0x46
	.byte	0x15
	.4byte	0x1f7
	.byte	0x4
	.byte	0xa
	.string	"arg"
	.byte	0x9
	.byte	0x47
	.byte	0x9
	.4byte	0x9b
	.byte	0x8
	.byte	0x9
	.4byte	.LASF37
	.byte	0x9
	.byte	0x48
	.byte	0x9
	.4byte	0x9b
	.byte	0xc
	.byte	0x9
	.4byte	.LASF38
	.byte	0x9
	.byte	0x4a
	.byte	0x13
	.4byte	0x1cc
	.byte	0x10
	.byte	0x9
	.4byte	.LASF39
	.byte	0x9
	.byte	0x4b
	.byte	0x16
	.4byte	0x29a
	.byte	0x14
	.byte	0x9
	.4byte	.LASF40
	.byte	0x9
	.byte	0x4c
	.byte	0x11
	.4byte	0x2a6
	.byte	0x18
	.byte	0x9
	.4byte	.LASF41
	.byte	0x9
	.byte	0x4d
	.byte	0x11
	.4byte	0x2d6
	.byte	0x1c
	.byte	0x9
	.4byte	.LASF42
	.byte	0x9
	.byte	0x4e
	.byte	0x11
	.4byte	0x301
	.byte	0x20
	.byte	0xa
	.string	"err"
	.byte	0x9
	.byte	0x4f
	.byte	0x10
	.4byte	0x327
	.byte	0x24
	.byte	0x9
	.4byte	.LASF43
	.byte	0x9
	.byte	0x50
	.byte	0x8
	.4byte	0xdb
	.byte	0x28
	.byte	0
	.byte	0x3
	.4byte	.LASF44
	.byte	0x9
	.byte	0x3c
	.byte	0x11
	.4byte	0x1d8
	.byte	0x3
	.4byte	.LASF45
	.byte	0x9
	.byte	0x3d
	.byte	0x11
	.4byte	0x2b2
	.byte	0x6
	.byte	0x4
	.4byte	0x2b8
	.byte	0xd
	.4byte	0x10b
	.4byte	0x2d6
	.byte	0xe
	.4byte	0x9b
	.byte	0xe
	.4byte	0x1f7
	.byte	0xe
	.4byte	0x18d
	.byte	0xe
	.4byte	0x10b
	.byte	0
	.byte	0x3
	.4byte	.LASF46
	.byte	0x9
	.byte	0x3e
	.byte	0x11
	.4byte	0x2e2
	.byte	0x6
	.byte	0x4
	.4byte	0x2e8
	.byte	0xd
	.4byte	0x10b
	.4byte	0x301
	.byte	0xe
	.4byte	0x9b
	.byte	0xe
	.4byte	0x1f7
	.byte	0xe
	.4byte	0xf3
	.byte	0
	.byte	0x3
	.4byte	.LASF47
	.byte	0x9
	.byte	0x3f
	.byte	0x11
	.4byte	0x30d
	.byte	0x6
	.byte	0x4
	.4byte	0x313
	.byte	0xd
	.4byte	0x10b
	.4byte	0x327
	.byte	0xe
	.4byte	0x9b
	.byte	0xe
	.4byte	0x1f7
	.byte	0
	.byte	0x3
	.4byte	.LASF48
	.byte	0x9
	.byte	0x40
	.byte	0x10
	.4byte	0x333
	.byte	0x6
	.byte	0x4
	.4byte	0x339
	.byte	0xf
	.4byte	0x349
	.byte	0xe
	.4byte	0x9b
	.byte	0xe
	.4byte	0x10b
	.byte	0
	.byte	0x8
	.4byte	.LASF49
	.byte	0x54
	.byte	0xa
	.byte	0x5c
	.byte	0x8
	.4byte	0x468
	.byte	0x9
	.4byte	.LASF50
	.byte	0xa
	.byte	0x5d
	.byte	0x15
	.4byte	0x473
	.byte	0
	.byte	0x9
	.4byte	.LASF51
	.byte	0xa
	.byte	0x5e
	.byte	0x13
	.4byte	0x495
	.byte	0x4
	.byte	0x9
	.4byte	.LASF52
	.byte	0xa
	.byte	0x5f
	.byte	0x11
	.4byte	0x4b7
	.byte	0x8
	.byte	0x9
	.4byte	.LASF53
	.byte	0xa
	.byte	0x60
	.byte	0x14
	.4byte	0x4e8
	.byte	0xc
	.byte	0x9
	.4byte	.LASF54
	.byte	0xa
	.byte	0x61
	.byte	0x13
	.4byte	0x518
	.byte	0x10
	.byte	0x9
	.4byte	.LASF55
	.byte	0xa
	.byte	0x62
	.byte	0x12
	.4byte	0x549
	.byte	0x14
	.byte	0x9
	.4byte	.LASF56
	.byte	0xa
	.byte	0x63
	.byte	0x12
	.4byte	0x566
	.byte	0x18
	.byte	0x9
	.4byte	.LASF57
	.byte	0xa
	.byte	0x64
	.byte	0x15
	.4byte	0x587
	.byte	0x1c
	.byte	0x9
	.4byte	.LASF58
	.byte	0xa
	.byte	0x65
	.byte	0x12
	.4byte	0x5b2
	.byte	0x20
	.byte	0x9
	.4byte	.LASF59
	.byte	0xa
	.byte	0x66
	.byte	0x13
	.4byte	0x5e2
	.byte	0x24
	.byte	0xa
	.string	"mss"
	.byte	0xa
	.byte	0x67
	.byte	0x10
	.4byte	0x5ee
	.byte	0x28
	.byte	0x9
	.4byte	.LASF60
	.byte	0xa
	.byte	0x68
	.byte	0x13
	.4byte	0x60f
	.byte	0x2c
	.byte	0x9
	.4byte	.LASF61
	.byte	0xa
	.byte	0x69
	.byte	0x18
	.4byte	0x61b
	.byte	0x30
	.byte	0x9
	.4byte	.LASF62
	.byte	0xa
	.byte	0x6a
	.byte	0x1a
	.4byte	0x627
	.byte	0x34
	.byte	0x9
	.4byte	.LASF63
	.byte	0xa
	.byte	0x6b
	.byte	0x19
	.4byte	0x633
	.byte	0x38
	.byte	0x9
	.4byte	.LASF64
	.byte	0xa
	.byte	0x6c
	.byte	0x1b
	.4byte	0x63f
	.byte	0x3c
	.byte	0x9
	.4byte	.LASF65
	.byte	0xa
	.byte	0x6d
	.byte	0x14
	.4byte	0x660
	.byte	0x40
	.byte	0x9
	.4byte	.LASF66
	.byte	0xa
	.byte	0x6e
	.byte	0x14
	.4byte	0x66c
	.byte	0x44
	.byte	0x9
	.4byte	.LASF67
	.byte	0xa
	.byte	0x6f
	.byte	0x1d
	.4byte	0x678
	.byte	0x48
	.byte	0x9
	.4byte	.LASF68
	.byte	0xa
	.byte	0x70
	.byte	0x13
	.4byte	0x6b4
	.byte	0x4c
	.byte	0x9
	.4byte	.LASF69
	.byte	0xa
	.byte	0x71
	.byte	0x15
	.4byte	0x6da
	.byte	0x50
	.byte	0
	.byte	0xc
	.4byte	0x349
	.byte	0x6
	.byte	0x4
	.4byte	0x468
	.byte	0x3
	.4byte	.LASF70
	.byte	0xa
	.byte	0x3b
	.byte	0x10
	.4byte	0x47f
	.byte	0x6
	.byte	0x4
	.4byte	0x485
	.byte	0xf
	.4byte	0x495
	.byte	0xe
	.4byte	0x1f7
	.byte	0xe
	.4byte	0xdb
	.byte	0
	.byte	0x3
	.4byte	.LASF71
	.byte	0xa
	.byte	0x3c
	.byte	0x10
	.4byte	0x4a1
	.byte	0x6
	.byte	0x4
	.4byte	0x4a7
	.byte	0xf
	.4byte	0x4b7
	.byte	0xe
	.4byte	0x1f7
	.byte	0xe
	.4byte	0xf3
	.byte	0
	.byte	0x3
	.4byte	.LASF72
	.byte	0xa
	.byte	0x3d
	.byte	0x11
	.4byte	0x4c3
	.byte	0x6
	.byte	0x4
	.4byte	0x4c9
	.byte	0xd
	.4byte	0x10b
	.4byte	0x4e2
	.byte	0xe
	.4byte	0x1f7
	.byte	0xe
	.4byte	0x4e2
	.byte	0xe
	.4byte	0xf3
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x1c7
	.byte	0x3
	.4byte	.LASF73
	.byte	0xa
	.byte	0x3e
	.byte	0x11
	.4byte	0x4f4
	.byte	0x6
	.byte	0x4
	.4byte	0x4fa
	.byte	0xd
	.4byte	0x10b
	.4byte	0x518
	.byte	0xe
	.4byte	0x1f7
	.byte	0xe
	.4byte	0x4e2
	.byte	0xe
	.4byte	0xf3
	.byte	0xe
	.4byte	0x29a
	.byte	0
	.byte	0x3
	.4byte	.LASF74
	.byte	0xa
	.byte	0x40
	.byte	0x1d
	.4byte	0x524
	.byte	0x6
	.byte	0x4
	.4byte	0x52a
	.byte	0xd
	.4byte	0x1f7
	.4byte	0x543
	.byte	0xe
	.4byte	0x1f7
	.byte	0xe
	.4byte	0xdb
	.byte	0xe
	.4byte	0x543
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x10b
	.byte	0x3
	.4byte	.LASF75
	.byte	0xa
	.byte	0x42
	.byte	0x10
	.4byte	0x555
	.byte	0x6
	.byte	0x4
	.4byte	0x55b
	.byte	0xf
	.4byte	0x566
	.byte	0xe
	.4byte	0x1f7
	.byte	0
	.byte	0x3
	.4byte	.LASF76
	.byte	0xa
	.byte	0x43
	.byte	0x11
	.4byte	0x572
	.byte	0x6
	.byte	0x4
	.4byte	0x578
	.byte	0xd
	.4byte	0x10b
	.4byte	0x587
	.byte	0xe
	.4byte	0x1f7
	.byte	0
	.byte	0x3
	.4byte	.LASF77
	.byte	0xa
	.byte	0x44
	.byte	0x11
	.4byte	0x593
	.byte	0x6
	.byte	0x4
	.4byte	0x599
	.byte	0xd
	.4byte	0x10b
	.4byte	0x5b2
	.byte	0xe
	.4byte	0x1f7
	.byte	0xe
	.4byte	0x25
	.byte	0xe
	.4byte	0x25
	.byte	0
	.byte	0x3
	.4byte	.LASF78
	.byte	0xa
	.byte	0x46
	.byte	0x11
	.4byte	0x5be
	.byte	0x6
	.byte	0x4
	.4byte	0x5c4
	.byte	0xd
	.4byte	0x10b
	.4byte	0x5e2
	.byte	0xe
	.4byte	0x1f7
	.byte	0xe
	.4byte	0xd4
	.byte	0xe
	.4byte	0xf3
	.byte	0xe
	.4byte	0xdb
	.byte	0
	.byte	0x3
	.4byte	.LASF79
	.byte	0xa
	.byte	0x47
	.byte	0x11
	.4byte	0x572
	.byte	0x3
	.4byte	.LASF80
	.byte	0xa
	.byte	0x49
	.byte	0x11
	.4byte	0x5fa
	.byte	0x6
	.byte	0x4
	.4byte	0x600
	.byte	0xd
	.4byte	0xf3
	.4byte	0x60f
	.byte	0xe
	.4byte	0x1f7
	.byte	0
	.byte	0x3
	.4byte	.LASF81
	.byte	0xa
	.byte	0x4a
	.byte	0x11
	.4byte	0x5fa
	.byte	0x3
	.4byte	.LASF82
	.byte	0xa
	.byte	0x4b
	.byte	0x11
	.4byte	0x5fa
	.byte	0x3
	.4byte	.LASF83
	.byte	0xa
	.byte	0x4c
	.byte	0x10
	.4byte	0x555
	.byte	0x3
	.4byte	.LASF84
	.byte	0xa
	.byte	0x4d
	.byte	0x10
	.4byte	0x555
	.byte	0x3
	.4byte	.LASF85
	.byte	0xa
	.byte	0x4e
	.byte	0xf
	.4byte	0x64b
	.byte	0x6
	.byte	0x4
	.4byte	0x651
	.byte	0xd
	.4byte	0x25
	.4byte	0x660
	.byte	0xe
	.4byte	0x1f7
	.byte	0
	.byte	0x3
	.4byte	.LASF86
	.byte	0xa
	.byte	0x50
	.byte	0x10
	.4byte	0x47f
	.byte	0x3
	.4byte	.LASF87
	.byte	0xa
	.byte	0x52
	.byte	0x10
	.4byte	0x555
	.byte	0x3
	.4byte	.LASF88
	.byte	0xa
	.byte	0x54
	.byte	0x11
	.4byte	0x684
	.byte	0x6
	.byte	0x4
	.4byte	0x68a
	.byte	0xd
	.4byte	0x10b
	.4byte	0x6a8
	.byte	0xe
	.4byte	0x1f7
	.byte	0xe
	.4byte	0x25
	.byte	0xe
	.4byte	0x6a8
	.byte	0xe
	.4byte	0x6ae
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x1ba
	.byte	0x6
	.byte	0x4
	.4byte	0xf3
	.byte	0x3
	.4byte	.LASF89
	.byte	0xa
	.byte	0x55
	.byte	0x16
	.4byte	0x6c0
	.byte	0x6
	.byte	0x4
	.4byte	0x6c6
	.byte	0xd
	.4byte	0x6a8
	.4byte	0x6da
	.byte	0xe
	.4byte	0x1f7
	.byte	0xe
	.4byte	0x25
	.byte	0
	.byte	0x3
	.4byte	.LASF90
	.byte	0xa
	.byte	0x56
	.byte	0x11
	.4byte	0x6e6
	.byte	0x6
	.byte	0x4
	.4byte	0x6ec
	.byte	0xd
	.4byte	0xf3
	.4byte	0x700
	.byte	0xe
	.4byte	0x1f7
	.byte	0xe
	.4byte	0x25
	.byte	0
	.byte	0x10
	.4byte	.LASF92
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.4byte	0x1f7
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x74c
	.byte	0x11
	.string	"arg"
	.byte	0x1
	.byte	0x50
	.byte	0x17
	.4byte	0x9b
	.4byte	.LLST4
	.byte	0x12
	.4byte	.LASF91
	.byte	0x1
	.byte	0x50
	.byte	0x21
	.4byte	0xdb
	.4byte	.LLST5
	.byte	0x13
	.4byte	.LVL10
	.4byte	0x74c
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LASF93
	.byte	0x1
	.byte	0x3d
	.byte	0x1
	.4byte	0x1f7
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x7da
	.byte	0x12
	.4byte	.LASF94
	.byte	0x1
	.byte	0x3d
	.byte	0x28
	.4byte	0x7df
	.4byte	.LLST0
	.byte	0x12
	.4byte	.LASF91
	.byte	0x1
	.byte	0x3d
	.byte	0x35
	.4byte	0xdb
	.4byte	.LLST1
	.byte	0x15
	.4byte	.LASF36
	.byte	0x1
	.byte	0x3f
	.byte	0x15
	.4byte	0x1f7
	.4byte	.LLST2
	.byte	0x16
	.string	"ret"
	.byte	0x1
	.byte	0x3f
	.byte	0x22
	.4byte	0x1f7
	.4byte	.LLST3
	.byte	0x17
	.4byte	.LVL2
	.4byte	0x7e5
	.byte	0x18
	.4byte	.LVL4
	.4byte	0x7f1
	.4byte	0x7c9
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LVL6
	.4byte	0x7fd
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LASF101
	.byte	0x6
	.byte	0x4
	.4byte	0x7da
	.byte	0x1b
	.4byte	.LASF95
	.4byte	.LASF95
	.byte	0xb
	.byte	0x38
	.byte	0x13
	.byte	0x1b
	.4byte	.LASF96
	.4byte	.LASF96
	.byte	0xc
	.byte	0x5a
	.byte	0x13
	.byte	0x1b
	.4byte	.LASF97
	.4byte	.LASF97
	.byte	0x9
	.byte	0x71
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
	.byte	0xc
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
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
	.byte	0xe
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x11
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
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
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
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
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
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL10-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL8
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
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2-1
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL7
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL6
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
.LASF56:
	.string	"close"
.LASF92:
	.string	"altcp_tls_alloc"
.LASF58:
	.string	"write"
.LASF99:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/core/altcp_alloc.c"
.LASF70:
	.string	"altcp_set_poll_fn"
.LASF96:
	.string	"altcp_tls_wrap"
.LASF90:
	.string	"altcp_get_port_fn"
.LASF14:
	.string	"int8_t"
.LASF45:
	.string	"altcp_recv_fn"
.LASF37:
	.string	"state"
.LASF77:
	.string	"altcp_shutdown_fn"
.LASF4:
	.string	"short int"
.LASF42:
	.string	"poll"
.LASF41:
	.string	"sent"
.LASF78:
	.string	"altcp_write_fn"
.LASF8:
	.string	"__uint32_t"
.LASF89:
	.string	"altcp_get_ip_fn"
.LASF71:
	.string	"altcp_recved_fn"
.LASF5:
	.string	"__uint16_t"
.LASF49:
	.string	"altcp_functions"
.LASF94:
	.string	"config"
.LASF67:
	.string	"addrinfo"
.LASF100:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/lwip"
.LASF61:
	.string	"sndqueuelen"
.LASF35:
	.string	"altcp_pcb"
.LASF53:
	.string	"connect"
.LASF39:
	.string	"connected"
.LASF57:
	.string	"shutdown"
.LASF87:
	.string	"altcp_dealloc_fn"
.LASF93:
	.string	"altcp_tls_new"
.LASF19:
	.string	"s8_t"
.LASF60:
	.string	"sndbuf"
.LASF84:
	.string	"altcp_nagle_enable_fn"
.LASF10:
	.string	"long long int"
.LASF11:
	.string	"long long unsigned int"
.LASF48:
	.string	"altcp_err_fn"
.LASF7:
	.string	"long int"
.LASF86:
	.string	"altcp_setprio_fn"
.LASF31:
	.string	"addr"
.LASF82:
	.string	"altcp_sndqueuelen_fn"
.LASF68:
	.string	"getip"
.LASF26:
	.string	"type_internal"
.LASF97:
	.string	"altcp_close"
.LASF74:
	.string	"altcp_listen_fn"
.LASF69:
	.string	"getport"
.LASF3:
	.string	"unsigned char"
.LASF101:
	.string	"altcp_tls_config"
.LASF30:
	.string	"ip4_addr"
.LASF55:
	.string	"abort"
.LASF28:
	.string	"if_idx"
.LASF0:
	.string	"signed char"
.LASF27:
	.string	"flags"
.LASF23:
	.string	"next"
.LASF75:
	.string	"altcp_abort_fn"
.LASF17:
	.string	"uint32_t"
.LASF73:
	.string	"altcp_connect_fn"
.LASF12:
	.string	"unsigned int"
.LASF72:
	.string	"altcp_bind_fn"
.LASF16:
	.string	"uint16_t"
.LASF88:
	.string	"altcp_get_tcp_addrinfo_fn"
.LASF63:
	.string	"nagle_enable"
.LASF36:
	.string	"inner_conn"
.LASF81:
	.string	"altcp_sndbuf_fn"
.LASF76:
	.string	"altcp_close_fn"
.LASF1:
	.string	"__int8_t"
.LASF22:
	.string	"err_t"
.LASF13:
	.string	"char"
.LASF6:
	.string	"short unsigned int"
.LASF52:
	.string	"bind"
.LASF54:
	.string	"listen"
.LASF65:
	.string	"setprio"
.LASF43:
	.string	"pollinterval"
.LASF9:
	.string	"long unsigned int"
.LASF95:
	.string	"altcp_tcp_new_ip_type"
.LASF34:
	.string	"altcp_accept_fn"
.LASF32:
	.string	"ip4_addr_t"
.LASF66:
	.string	"dealloc"
.LASF51:
	.string	"recved"
.LASF18:
	.string	"u8_t"
.LASF21:
	.string	"u32_t"
.LASF85:
	.string	"altcp_nagle_disabled_fn"
.LASF15:
	.string	"uint8_t"
.LASF64:
	.string	"nagle_disabled"
.LASF20:
	.string	"u16_t"
.LASF33:
	.string	"ip_addr_t"
.LASF44:
	.string	"altcp_connected_fn"
.LASF38:
	.string	"accept"
.LASF59:
	.string	"output"
.LASF25:
	.string	"tot_len"
.LASF91:
	.string	"ip_type"
.LASF80:
	.string	"altcp_mss_fn"
.LASF62:
	.string	"nagle_disable"
.LASF79:
	.string	"altcp_output_fn"
.LASF40:
	.string	"recv"
.LASF46:
	.string	"altcp_sent_fn"
.LASF50:
	.string	"set_poll"
.LASF83:
	.string	"altcp_nagle_disable_fn"
.LASF24:
	.string	"payload"
.LASF47:
	.string	"altcp_poll_fn"
.LASF2:
	.string	"__uint8_t"
.LASF29:
	.string	"pbuf"
.LASF98:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
