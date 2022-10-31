	.file	"web_server.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.web_server2.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"the received data:\n%s\n"
	.section	.text.web_server2,"ax",@progbits
	.align	1
	.globl	web_server2
	.type	web_server2, @function
web_server2:
.LFB6:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/dns_server/src/web_server.c"
	.loc 1 74 1
	.cfi_startproc
.LVL0:
	.loc 1 75 3
	.loc 1 76 3
	.loc 1 77 3
	.loc 1 74 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	.loc 1 77 10
	li	a2,0
	li	a1,0
	li	a0,16
.LVL1:
	.loc 1 74 1
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	sw	s1,36(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 9, -12
	.loc 1 77 10
	call	netconn_new_with_proto_and_callback
.LVL2:
	.loc 1 78 3
	li	a2,80
	li	a1,0
	.loc 1 77 10
	mv	s0,a0
.LVL3:
	.loc 1 78 3 is_stmt 1
	call	netconn_bind
.LVL4:
	.loc 1 79 3
	li	a1,255
	mv	a0,s0
	call	netconn_listen_with_backlog
.LVL5:
.LBB4:
.LBB5:
	.loc 1 49 5 is_stmt 0
	lui	s3,%hi(.LC0)
	.loc 1 51 8
	li	s4,4
	.loc 1 52 7
	lui	s5,%hi(.LANCHOR0)
	lui	s2,%hi(.LANCHOR1)
.L8:
.LBE5:
.LBE4:
	.loc 1 80 3 is_stmt 1
	.loc 1 81 5
	.loc 1 81 11 is_stmt 0
	addi	a1,sp,4
	mv	a0,s0
	call	netconn_accept
.LVL6:
	.loc 1 82 5 is_stmt 1
	.loc 1 82 8 is_stmt 0
	bne	a0,zero,.L2
	.loc 1 83 7 is_stmt 1
	lw	s1,4(sp)
.LVL7:
.LBB7:
.LBB6:
	.loc 1 41 3
	.loc 1 42 3
	.loc 1 43 3
	.loc 1 44 3
	.loc 1 46 3
	.loc 1 46 9 is_stmt 0
	addi	a1,sp,8
	mv	a0,s1
.LVL8:
	call	netconn_recv
.LVL9:
	.loc 1 47 3 is_stmt 1
	.loc 1 47 6 is_stmt 0
	bne	a0,zero,.L4
	.loc 1 48 5 is_stmt 1
	lw	a0,8(sp)
.LVL10:
	addi	a2,sp,2
	addi	a1,sp,12
	call	netbuf_data
.LVL11:
	.loc 1 49 5
	lw	a1,12(sp)
	addi	a0,s3,%lo(.LC0)
	call	printf
.LVL12:
	.loc 1 51 5
	.loc 1 51 8 is_stmt 0
	lhu	a5,2(sp)
	bleu	a5,s4,.L4
	.loc 1 51 27
	lw	a5,12(sp)
	.loc 1 51 21
	li	a4,71
	lbu	a3,0(a5)
	bne	a3,a4,.L4
	.loc 1 51 38
	lbu	a3,1(a5)
	li	a4,69
	bne	a3,a4,.L4
	.loc 1 51 55
	lbu	a3,2(a5)
	li	a4,84
	bne	a3,a4,.L4
	.loc 1 51 72
	lbu	a3,3(a5)
	li	a4,32
	bne	a3,a4,.L4
	.loc 1 51 89
	lbu	a4,4(a5)
	li	a5,47
	bne	a4,a5,.L4
	.loc 1 52 7 is_stmt 1
	li	a4,0
	li	a3,0
	li	a2,44
	addi	a1,s5,%lo(.LANCHOR0)
	mv	a0,s1
	call	netconn_write_partly
.LVL13:
	.loc 1 54 7
	.loc 1 64 11
	li	a4,0
	li	a3,0
	li	a2,351
	addi	a1,s2,%lo(.LANCHOR1)
	mv	a0,s1
	call	netconn_write_partly
.LVL14:
.L4:
	.loc 1 68 3
	mv	a0,s1
	call	netconn_close
.LVL15:
	.loc 1 69 3
	lw	a0,8(sp)
	call	netbuf_delete
.LVL16:
.LBE6:
.LBE7:
	.loc 1 84 7
	lw	a0,4(sp)
	call	netconn_delete
.LVL17:
	.loc 1 80 9
	.loc 1 81 9 is_stmt 0
	j	.L8
.LVL18:
.L2:
	.loc 1 87 7 is_stmt 1
	mv	a0,s0
.LVL19:
	call	netconn_close
.LVL20:
	.loc 1 88 7
	mv	a0,s0
	call	netconn_delete
.LVL21:
	.loc 1 89 7
	.loc 1 92 1 is_stmt 0
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
.LVL22:
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
	lw	s3,28(sp)
	.cfi_restore 19
	lw	s4,24(sp)
	.cfi_restore 20
	lw	s5,20(sp)
	.cfi_restore 21
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	web_server2, .-web_server2
	.section	.rodata.http_html_hdr,"a"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	http_html_hdr, @object
	.size	http_html_hdr, 45
http_html_hdr:
	.string	"HTTP/1.1 200 OK\r\nContent-type: text/html\r\n\r\n"
	.section	.rodata.http_index_hml,"a"
	.align	2
	.set	.LANCHOR1,. + 0
	.type	http_index_hml, @object
	.size	http_index_hml, 352
http_index_hml:
	.ascii	"<!DOCTYPE html><html>\n<head>\n  <meta name=\"viewport\" con"
	.ascii	"tent=\"width=device-width, initial-scale"
	.string	"=1\">\n  <style type=\"text/css\">\n    html, body, iframe { margin: 0; padding: 0; height: 100%; }\n    iframe { display: block; width: 100%; border: none; }\n  </style>\n<title>HELLO BL602</title>\n</head>\n<body>\n<h1>Hello World, from BL602!</h1>\n</body>\n</html>\n"
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/arch.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/err.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/semphr.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/lwip-port/arch/sys_arch.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/ip4_addr.h"
	.file 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/ip_addr.h"
	.file 10 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/pbuf.h"
	.file 11 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/memp.h"
	.file 12 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/netbuf.h"
	.file 13 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/netif.h"
	.file 14 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/api.h"
	.file 15 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x8a8
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF136
	.byte	0xc
	.4byte	.LASF137
	.4byte	.LASF138
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x4
	.4byte	.LASF2
	.byte	0x2
	.byte	0x22
	.byte	0x15
	.4byte	0x3f
	.byte	0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x4
	.4byte	.LASF3
	.byte	0x2
	.byte	0x25
	.byte	0x13
	.4byte	0x52
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.byte	0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x28
	.byte	0x12
	.4byte	0x65
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.byte	0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x7f
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x4
	.4byte	.LASF10
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x92
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF11
	.byte	0x4
	.4byte	.LASF12
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0xa5
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF14
	.byte	0x5
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.byte	0x6
	.4byte	0xb5
	.byte	0x7
	.byte	0x4
	.4byte	0xb5
	.byte	0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x7d
	.byte	0x11
	.4byte	0x73
	.byte	0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x7e
	.byte	0x10
	.4byte	0x33
	.byte	0x4
	.4byte	.LASF18
	.byte	0x3
	.byte	0x7f
	.byte	0x12
	.4byte	0x86
	.byte	0x4
	.4byte	.LASF19
	.byte	0x3
	.byte	0x80
	.byte	0x11
	.4byte	0x46
	.byte	0x4
	.4byte	.LASF20
	.byte	0x3
	.byte	0x81
	.byte	0x12
	.4byte	0x99
	.byte	0x4
	.4byte	.LASF21
	.byte	0x3
	.byte	0x82
	.byte	0x11
	.4byte	0x59
	.byte	0x8
	.byte	0x5
	.byte	0x4
	.4byte	0x25
	.byte	0x4
	.byte	0x35
	.byte	0xe
	.4byte	0x184
	.byte	0x9
	.4byte	.LASF22
	.byte	0
	.byte	0xa
	.4byte	.LASF23
	.byte	0x7f
	.byte	0xa
	.4byte	.LASF24
	.byte	0x7e
	.byte	0xa
	.4byte	.LASF25
	.byte	0x7d
	.byte	0xa
	.4byte	.LASF26
	.byte	0x7c
	.byte	0xa
	.4byte	.LASF27
	.byte	0x7b
	.byte	0xa
	.4byte	.LASF28
	.byte	0x7a
	.byte	0xa
	.4byte	.LASF29
	.byte	0x79
	.byte	0xa
	.4byte	.LASF30
	.byte	0x78
	.byte	0xa
	.4byte	.LASF31
	.byte	0x77
	.byte	0xa
	.4byte	.LASF32
	.byte	0x76
	.byte	0xa
	.4byte	.LASF33
	.byte	0x75
	.byte	0xa
	.4byte	.LASF34
	.byte	0x74
	.byte	0xa
	.4byte	.LASF35
	.byte	0x73
	.byte	0xa
	.4byte	.LASF36
	.byte	0x72
	.byte	0xa
	.4byte	.LASF37
	.byte	0x71
	.byte	0xa
	.4byte	.LASF38
	.byte	0x70
	.byte	0
	.byte	0x4
	.4byte	.LASF39
	.byte	0x4
	.byte	0x60
	.byte	0xe
	.4byte	0xd3
	.byte	0x4
	.4byte	.LASF40
	.byte	0x5
	.byte	0x30
	.byte	0x22
	.4byte	0x19c
	.byte	0x7
	.byte	0x4
	.4byte	0x1a2
	.byte	0xb
	.4byte	.LASF113
	.byte	0x4
	.4byte	.LASF41
	.byte	0x6
	.byte	0x25
	.byte	0x17
	.4byte	0x190
	.byte	0x4
	.4byte	.LASF42
	.byte	0x7
	.byte	0x2c
	.byte	0x1b
	.4byte	0x1a7
	.byte	0x4
	.4byte	.LASF43
	.byte	0x7
	.byte	0x2e
	.byte	0x17
	.4byte	0x190
	.byte	0xc
	.4byte	.LASF46
	.byte	0x4
	.byte	0x8
	.byte	0x33
	.byte	0x8
	.4byte	0x1e6
	.byte	0xd
	.4byte	.LASF48
	.byte	0x8
	.byte	0x34
	.byte	0x9
	.4byte	0xf7
	.byte	0
	.byte	0
	.byte	0x4
	.4byte	.LASF44
	.byte	0x8
	.byte	0x39
	.byte	0x19
	.4byte	0x1cb
	.byte	0xe
	.4byte	.LASF45
	.byte	0x9
	.2byte	0x10e
	.byte	0x14
	.4byte	0x1e6
	.byte	0xc
	.4byte	.LASF47
	.byte	0x10
	.byte	0xa
	.byte	0xba
	.byte	0x8
	.4byte	0x275
	.byte	0xd
	.4byte	.LASF49
	.byte	0xa
	.byte	0xbc
	.byte	0x10
	.4byte	0x275
	.byte	0
	.byte	0xd
	.4byte	.LASF50
	.byte	0xa
	.byte	0xbf
	.byte	0x9
	.4byte	0xb3
	.byte	0x4
	.byte	0xd
	.4byte	.LASF51
	.byte	0xa
	.byte	0xc8
	.byte	0x9
	.4byte	0xdf
	.byte	0x8
	.byte	0xf
	.string	"len"
	.byte	0xa
	.byte	0xcb
	.byte	0x9
	.4byte	0xdf
	.byte	0xa
	.byte	0xd
	.4byte	.LASF52
	.byte	0xa
	.byte	0xd0
	.byte	0x8
	.4byte	0xc7
	.byte	0xc
	.byte	0xd
	.4byte	.LASF53
	.byte	0xa
	.byte	0xd3
	.byte	0x8
	.4byte	0xc7
	.byte	0xd
	.byte	0xf
	.string	"ref"
	.byte	0xa
	.byte	0xda
	.byte	0x8
	.4byte	0xc7
	.byte	0xe
	.byte	0xd
	.4byte	.LASF54
	.byte	0xa
	.byte	0xdd
	.byte	0x8
	.4byte	0xc7
	.byte	0xf
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x1ff
	.byte	0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xb
	.byte	0x34
	.byte	0xe
	.4byte	0x2ea
	.byte	0x9
	.4byte	.LASF55
	.byte	0
	.byte	0x9
	.4byte	.LASF56
	.byte	0x1
	.byte	0x9
	.4byte	.LASF57
	.byte	0x2
	.byte	0x9
	.4byte	.LASF58
	.byte	0x3
	.byte	0x9
	.4byte	.LASF59
	.byte	0x4
	.byte	0x9
	.4byte	.LASF60
	.byte	0x5
	.byte	0x9
	.4byte	.LASF61
	.byte	0x6
	.byte	0x9
	.4byte	.LASF62
	.byte	0x7
	.byte	0x9
	.4byte	.LASF63
	.byte	0x8
	.byte	0x9
	.4byte	.LASF64
	.byte	0x9
	.byte	0x9
	.4byte	.LASF65
	.byte	0xa
	.byte	0x9
	.4byte	.LASF66
	.byte	0xb
	.byte	0x9
	.4byte	.LASF67
	.byte	0xc
	.byte	0x9
	.4byte	.LASF68
	.byte	0xd
	.byte	0x9
	.4byte	.LASF69
	.byte	0xe
	.byte	0x9
	.4byte	.LASF70
	.byte	0xf
	.byte	0
	.byte	0x10
	.4byte	.LASF77
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xd
	.byte	0x71
	.byte	0x6
	.4byte	0x30f
	.byte	0x9
	.4byte	.LASF71
	.byte	0
	.byte	0x9
	.4byte	.LASF72
	.byte	0x1
	.byte	0x9
	.4byte	.LASF73
	.byte	0x2
	.byte	0
	.byte	0xc
	.4byte	.LASF74
	.byte	0x14
	.byte	0xc
	.byte	0x3c
	.byte	0x8
	.4byte	0x369
	.byte	0xf
	.string	"p"
	.byte	0xc
	.byte	0x3d
	.byte	0x10
	.4byte	0x275
	.byte	0
	.byte	0xf
	.string	"ptr"
	.byte	0xc
	.byte	0x3d
	.byte	0x14
	.4byte	0x275
	.byte	0x4
	.byte	0xd
	.4byte	.LASF48
	.byte	0xc
	.byte	0x3e
	.byte	0xd
	.4byte	0x1f2
	.byte	0x8
	.byte	0xd
	.4byte	.LASF75
	.byte	0xc
	.byte	0x3f
	.byte	0x9
	.4byte	0xdf
	.byte	0xc
	.byte	0xd
	.4byte	.LASF53
	.byte	0xc
	.byte	0x41
	.byte	0x8
	.4byte	0xc7
	.byte	0xe
	.byte	0xd
	.4byte	.LASF76
	.byte	0xc
	.byte	0x42
	.byte	0x9
	.4byte	0xdf
	.byte	0x10
	.byte	0
	.byte	0x10
	.4byte	.LASF78
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xe
	.byte	0x71
	.byte	0x6
	.4byte	0x3a0
	.byte	0x9
	.4byte	.LASF79
	.byte	0
	.byte	0x9
	.4byte	.LASF80
	.byte	0x10
	.byte	0x9
	.4byte	.LASF81
	.byte	0x20
	.byte	0x9
	.4byte	.LASF82
	.byte	0x21
	.byte	0x9
	.4byte	.LASF83
	.byte	0x22
	.byte	0x9
	.4byte	.LASF84
	.byte	0x40
	.byte	0
	.byte	0x10
	.4byte	.LASF85
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xe
	.byte	0x93
	.byte	0x6
	.4byte	0x3d1
	.byte	0x9
	.4byte	.LASF86
	.byte	0
	.byte	0x9
	.4byte	.LASF87
	.byte	0x1
	.byte	0x9
	.4byte	.LASF88
	.byte	0x2
	.byte	0x9
	.4byte	.LASF89
	.byte	0x3
	.byte	0x9
	.4byte	.LASF90
	.byte	0x4
	.byte	0
	.byte	0x10
	.4byte	.LASF91
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xe
	.byte	0xb5
	.byte	0x6
	.4byte	0x402
	.byte	0x9
	.4byte	.LASF92
	.byte	0
	.byte	0x9
	.4byte	.LASF93
	.byte	0x1
	.byte	0x9
	.4byte	.LASF94
	.byte	0x2
	.byte	0x9
	.4byte	.LASF95
	.byte	0x3
	.byte	0x9
	.4byte	.LASF96
	.byte	0x4
	.byte	0
	.byte	0x4
	.4byte	.LASF97
	.byte	0xe
	.byte	0xd7
	.byte	0x11
	.4byte	0x40e
	.byte	0x7
	.byte	0x4
	.4byte	0x414
	.byte	0x11
	.4byte	0x429
	.byte	0x12
	.4byte	0x429
	.byte	0x12
	.4byte	0x3d1
	.byte	0x12
	.4byte	0xdf
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x42f
	.byte	0xc
	.4byte	.LASF98
	.byte	0x3c
	.byte	0xe
	.byte	0xda
	.byte	0x8
	.4byte	0x515
	.byte	0xd
	.4byte	.LASF99
	.byte	0xe
	.byte	0xdc
	.byte	0x15
	.4byte	0x369
	.byte	0
	.byte	0xd
	.4byte	.LASF100
	.byte	0xe
	.byte	0xde
	.byte	0x16
	.4byte	0x3a0
	.byte	0x4
	.byte	0xf
	.string	"pcb"
	.byte	0xe
	.byte	0xe5
	.byte	0x5
	.4byte	0x515
	.byte	0x8
	.byte	0xd
	.4byte	.LASF101
	.byte	0xe
	.byte	0xe7
	.byte	0x9
	.4byte	0x184
	.byte	0xc
	.byte	0xd
	.4byte	.LASF102
	.byte	0xe
	.byte	0xea
	.byte	0xd
	.4byte	0x1b3
	.byte	0x10
	.byte	0xd
	.4byte	.LASF103
	.byte	0xe
	.byte	0xee
	.byte	0xe
	.4byte	0x1bf
	.byte	0x14
	.byte	0xd
	.4byte	.LASF104
	.byte	0xe
	.byte	0xf2
	.byte	0xe
	.4byte	0x1bf
	.byte	0x18
	.byte	0xd
	.4byte	.LASF105
	.byte	0xe
	.byte	0xfb
	.byte	0x7
	.4byte	0x25
	.byte	0x1c
	.byte	0x13
	.4byte	.LASF106
	.byte	0xe
	.2byte	0x100
	.byte	0x9
	.4byte	0x103
	.byte	0x20
	.byte	0x13
	.4byte	.LASF107
	.byte	0xe
	.2byte	0x105
	.byte	0x9
	.4byte	0xf7
	.byte	0x24
	.byte	0x13
	.4byte	.LASF108
	.byte	0xe
	.2byte	0x10a
	.byte	0x7
	.4byte	0x25
	.byte	0x28
	.byte	0x13
	.4byte	.LASF109
	.byte	0xe
	.2byte	0x10e
	.byte	0x7
	.4byte	0x25
	.byte	0x2c
	.byte	0x13
	.4byte	.LASF110
	.byte	0xe
	.2byte	0x112
	.byte	0x9
	.4byte	0xeb
	.byte	0x30
	.byte	0x13
	.4byte	.LASF53
	.byte	0xe
	.2byte	0x115
	.byte	0x8
	.4byte	0xc7
	.byte	0x32
	.byte	0x13
	.4byte	.LASF111
	.byte	0xe
	.2byte	0x11a
	.byte	0x13
	.4byte	0x57f
	.byte	0x34
	.byte	0x13
	.4byte	.LASF112
	.byte	0xe
	.2byte	0x11d
	.byte	0x14
	.4byte	0x402
	.byte	0x38
	.byte	0
	.byte	0x14
	.byte	0x4
	.byte	0xe
	.byte	0xe0
	.byte	0x3
	.4byte	0x54e
	.byte	0x15
	.string	"ip"
	.byte	0xe
	.byte	0xe1
	.byte	0x14
	.4byte	0x553
	.byte	0x15
	.string	"tcp"
	.byte	0xe
	.byte	0xe2
	.byte	0x15
	.4byte	0x55e
	.byte	0x15
	.string	"udp"
	.byte	0xe
	.byte	0xe3
	.byte	0x15
	.4byte	0x569
	.byte	0x15
	.string	"raw"
	.byte	0xe
	.byte	0xe4
	.byte	0x15
	.4byte	0x574
	.byte	0
	.byte	0xb
	.4byte	.LASF114
	.byte	0x7
	.byte	0x4
	.4byte	0x54e
	.byte	0xb
	.4byte	.LASF115
	.byte	0x7
	.byte	0x4
	.4byte	0x559
	.byte	0xb
	.4byte	.LASF116
	.byte	0x7
	.byte	0x4
	.4byte	0x564
	.byte	0xb
	.4byte	.LASF117
	.byte	0x7
	.byte	0x4
	.4byte	0x56f
	.byte	0xb
	.4byte	.LASF118
	.byte	0x7
	.byte	0x4
	.4byte	0x57a
	.byte	0x16
	.4byte	0xbc
	.4byte	0x595
	.byte	0x17
	.4byte	0x2c
	.byte	0x2c
	.byte	0
	.byte	0x6
	.4byte	0x585
	.byte	0x18
	.4byte	.LASF119
	.byte	0x1
	.byte	0x16
	.byte	0x13
	.4byte	0x595
	.byte	0x5
	.byte	0x3
	.4byte	http_html_hdr
	.byte	0x16
	.4byte	0xbc
	.4byte	0x5bd
	.byte	0x19
	.4byte	0x2c
	.2byte	0x15f
	.byte	0
	.byte	0x6
	.4byte	0x5ac
	.byte	0x18
	.4byte	.LASF120
	.byte	0x1
	.byte	0x18
	.byte	0x13
	.4byte	0x5bd
	.byte	0x5
	.byte	0x3
	.4byte	http_index_hml
	.byte	0x1a
	.4byte	.LASF139
	.byte	0x1
	.byte	0x49
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x7cf
	.byte	0x1b
	.4byte	.LASF140
	.byte	0x1
	.byte	0x49
	.byte	0x18
	.4byte	0xb3
	.4byte	.LLST0
	.byte	0x1c
	.4byte	.LASF121
	.byte	0x1
	.byte	0x4b
	.byte	0x13
	.4byte	0x429
	.4byte	.LLST1
	.byte	0x18
	.4byte	.LASF122
	.byte	0x1
	.byte	0x4b
	.byte	0x1a
	.4byte	0x429
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x1d
	.string	"err"
	.byte	0x1
	.byte	0x4c
	.byte	0x9
	.4byte	0x184
	.4byte	.LLST2
	.byte	0x1e
	.4byte	0x7cf
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x53
	.byte	0x7
	.4byte	0x731
	.byte	0x1f
	.4byte	0x7dc
	.4byte	.LLST3
	.byte	0x20
	.4byte	.Ldebug_ranges0+0
	.byte	0x21
	.4byte	0x7e8
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x21
	.4byte	0x7f4
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x21
	.4byte	0x800
	.byte	0x2
	.byte	0x91
	.byte	0x52
	.byte	0x22
	.4byte	0x80c
	.4byte	.LLST4
	.byte	0x23
	.4byte	.LVL9
	.4byte	0x81f
	.4byte	0x686
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x24
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0
	.byte	0x23
	.4byte	.LVL11
	.4byte	0x82c
	.4byte	0x6a0
	.byte	0x24
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x24
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x52
	.byte	0
	.byte	0x23
	.4byte	.LVL12
	.4byte	0x838
	.4byte	0x6b7
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x23
	.4byte	.LVL13
	.4byte	0x844
	.4byte	0x6e4
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x24
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x24
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x2c
	.byte	0x24
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x24
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x23
	.4byte	.LVL14
	.4byte	0x844
	.4byte	0x712
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x24
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0x24
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x15f
	.byte	0x24
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x24
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x23
	.4byte	.LVL15
	.4byte	0x851
	.4byte	0x726
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x25
	.4byte	.LVL16
	.4byte	0x85e
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	.LVL2
	.4byte	0x86a
	.4byte	0x74e
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x40
	.byte	0x24
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x24
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x23
	.4byte	.LVL4
	.4byte	0x877
	.4byte	0x76d
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x24
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x24
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x50
	.byte	0
	.byte	0x23
	.4byte	.LVL5
	.4byte	0x884
	.4byte	0x787
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x24
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0x23
	.4byte	.LVL6
	.4byte	0x891
	.4byte	0x7a1
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x24
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0
	.byte	0x25
	.4byte	.LVL17
	.4byte	0x89e
	.byte	0x23
	.4byte	.LVL20
	.4byte	0x851
	.4byte	0x7be
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	.LVL21
	.4byte	0x89e
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x27
	.4byte	.LASF141
	.byte	0x1
	.byte	0x27
	.byte	0xd
	.byte	0x1
	.4byte	0x819
	.byte	0x28
	.4byte	.LASF121
	.byte	0x1
	.byte	0x27
	.byte	0x2d
	.4byte	0x429
	.byte	0x29
	.4byte	.LASF123
	.byte	0x1
	.byte	0x29
	.byte	0x12
	.4byte	0x819
	.byte	0x2a
	.string	"buf"
	.byte	0x1
	.byte	0x2a
	.byte	0x9
	.4byte	0xc1
	.byte	0x29
	.4byte	.LASF124
	.byte	0x1
	.byte	0x2b
	.byte	0x9
	.4byte	0xdf
	.byte	0x2a
	.string	"err"
	.byte	0x1
	.byte	0x2c
	.byte	0x9
	.4byte	0x184
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x30f
	.byte	0x2b
	.4byte	.LASF125
	.4byte	.LASF125
	.byte	0xe
	.2byte	0x14e
	.byte	0x7
	.byte	0x2c
	.4byte	.LASF126
	.4byte	.LASF126
	.byte	0xc
	.byte	0x52
	.byte	0x7
	.byte	0x2c
	.4byte	.LASF127
	.4byte	.LASF127
	.byte	0xf
	.byte	0xc8
	.byte	0x5
	.byte	0x2b
	.4byte	.LASF128
	.4byte	.LASF128
	.byte	0xe
	.2byte	0x157
	.byte	0x7
	.byte	0x2b
	.4byte	.LASF129
	.4byte	.LASF129
	.byte	0xe
	.2byte	0x15e
	.byte	0x7
	.byte	0x2c
	.4byte	.LASF130
	.4byte	.LASF130
	.byte	0xc
	.byte	0x4b
	.byte	0x6
	.byte	0x2b
	.4byte	.LASF131
	.4byte	.LASF131
	.byte	0xe
	.2byte	0x138
	.byte	0x11
	.byte	0x2b
	.4byte	.LASF132
	.4byte	.LASF132
	.byte	0xe
	.2byte	0x146
	.byte	0x7
	.byte	0x2b
	.4byte	.LASF133
	.4byte	.LASF133
	.byte	0xe
	.2byte	0x14a
	.byte	0x7
	.byte	0x2b
	.4byte	.LASF134
	.4byte	.LASF134
	.byte	0xe
	.2byte	0x14d
	.byte	0x7
	.byte	0x2b
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0xe
	.2byte	0x13b
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
	.byte	0x9
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xd
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0xc
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
	.byte	0xd
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
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x11
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
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
	.byte	0x14
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
	.byte	0x15
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
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x18
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
	.byte	0x19
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x1a
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
	.byte	0x1b
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
	.byte	0x1c
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
	.byte	0x1d
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
	.byte	0x1e
	.byte	0x1d
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x52
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x58
	.byte	0xb
	.byte	0x59
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1f
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x21
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x22
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x23
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
	.byte	0x24
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x25
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x26
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x27
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x28
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
	.byte	0
	.byte	0
	.byte	0x29
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
	.byte	0
	.byte	0
	.byte	0x2a
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
	.byte	0
	.byte	0
	.byte	0x2b
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
	.byte	0x2c
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
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0
	.4byte	0
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF89:
	.string	"NETCONN_CONNECT"
.LASF106:
	.string	"send_timeout"
.LASF56:
	.string	"MEMP_UDP_PCB"
.LASF66:
	.string	"MEMP_SYS_TIMEOUT"
.LASF32:
	.string	"ERR_ISCONN"
.LASF47:
	.string	"pbuf"
.LASF22:
	.string	"ERR_OK"
.LASF105:
	.string	"socket"
.LASF67:
	.string	"MEMP_NETDB"
.LASF130:
	.string	"netbuf_delete"
.LASF122:
	.string	"newconn"
.LASF99:
	.string	"type"
.LASF127:
	.string	"printf"
.LASF14:
	.string	"long long unsigned int"
.LASF43:
	.string	"sys_mbox_t"
.LASF21:
	.string	"s32_t"
.LASF59:
	.string	"MEMP_TCP_SEG"
.LASF102:
	.string	"op_completed"
.LASF49:
	.string	"next"
.LASF120:
	.string	"http_index_hml"
.LASF42:
	.string	"sys_sem_t"
.LASF7:
	.string	"long long int"
.LASF1:
	.string	"signed char"
.LASF81:
	.string	"NETCONN_UDP"
.LASF30:
	.string	"ERR_USE"
.LASF98:
	.string	"netconn"
.LASF25:
	.string	"ERR_TIMEOUT"
.LASF100:
	.string	"state"
.LASF6:
	.string	"long int"
.LASF121:
	.string	"conn"
.LASF55:
	.string	"MEMP_RAW_PCB"
.LASF80:
	.string	"NETCONN_TCP"
.LASF46:
	.string	"ip4_addr"
.LASF73:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF34:
	.string	"ERR_IF"
.LASF10:
	.string	"uint16_t"
.LASF117:
	.string	"raw_pcb"
.LASF58:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF90:
	.string	"NETCONN_CLOSE"
.LASF52:
	.string	"type_internal"
.LASF75:
	.string	"port"
.LASF54:
	.string	"if_idx"
.LASF85:
	.string	"netconn_state"
.LASF0:
	.string	"unsigned int"
.LASF16:
	.string	"u8_t"
.LASF65:
	.string	"MEMP_IGMP_GROUP"
.LASF84:
	.string	"NETCONN_RAW"
.LASF103:
	.string	"recvmbox"
.LASF13:
	.string	"long unsigned int"
.LASF31:
	.string	"ERR_ALREADY"
.LASF20:
	.string	"u32_t"
.LASF138:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/dns_server"
.LASF140:
	.string	"pvParameters"
.LASF57:
	.string	"MEMP_TCP_PCB"
.LASF137:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/dns_server/src/web_server.c"
.LASF78:
	.string	"netconn_type"
.LASF11:
	.string	"short unsigned int"
.LASF44:
	.string	"ip4_addr_t"
.LASF36:
	.string	"ERR_RST"
.LASF112:
	.string	"callback"
.LASF87:
	.string	"NETCONN_WRITE"
.LASF129:
	.string	"netconn_close"
.LASF70:
	.string	"MEMP_MAX"
.LASF45:
	.string	"ip_addr_t"
.LASF39:
	.string	"err_t"
.LASF51:
	.string	"tot_len"
.LASF50:
	.string	"payload"
.LASF125:
	.string	"netconn_recv"
.LASF119:
	.string	"http_html_hdr"
.LASF123:
	.string	"inputbuf"
.LASF97:
	.string	"netconn_callback"
.LASF88:
	.string	"NETCONN_LISTEN"
.LASF27:
	.string	"ERR_INPROGRESS"
.LASF101:
	.string	"pending_err"
.LASF19:
	.string	"s16_t"
.LASF28:
	.string	"ERR_VAL"
.LASF109:
	.string	"recv_avail"
.LASF128:
	.string	"netconn_write_partly"
.LASF113:
	.string	"QueueDefinition"
.LASF110:
	.string	"linger"
.LASF5:
	.string	"int32_t"
.LASF9:
	.string	"unsigned char"
.LASF38:
	.string	"ERR_ARG"
.LASF33:
	.string	"ERR_CONN"
.LASF72:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF4:
	.string	"short int"
.LASF96:
	.string	"NETCONN_EVT_ERROR"
.LASF74:
	.string	"netbuf"
.LASF93:
	.string	"NETCONN_EVT_RCVMINUS"
.LASF124:
	.string	"buflen"
.LASF48:
	.string	"addr"
.LASF83:
	.string	"NETCONN_UDPNOCHKSUM"
.LASF71:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF17:
	.string	"s8_t"
.LASF131:
	.string	"netconn_new_with_proto_and_callback"
.LASF116:
	.string	"udp_pcb"
.LASF40:
	.string	"QueueHandle_t"
.LASF12:
	.string	"uint32_t"
.LASF35:
	.string	"ERR_ABRT"
.LASF82:
	.string	"NETCONN_UDPLITE"
.LASF63:
	.string	"MEMP_TCPIP_MSG_API"
.LASF41:
	.string	"SemaphoreHandle_t"
.LASF15:
	.string	"char"
.LASF139:
	.string	"web_server2"
.LASF111:
	.string	"current_msg"
.LASF94:
	.string	"NETCONN_EVT_SENDPLUS"
.LASF61:
	.string	"MEMP_NETBUF"
.LASF76:
	.string	"toport_chksum"
.LASF114:
	.string	"ip_pcb"
.LASF62:
	.string	"MEMP_NETCONN"
.LASF60:
	.string	"MEMP_ALTCP_PCB"
.LASF69:
	.string	"MEMP_PBUF_POOL"
.LASF134:
	.string	"netconn_accept"
.LASF141:
	.string	"web_http_server"
.LASF37:
	.string	"ERR_CLSD"
.LASF26:
	.string	"ERR_RTE"
.LASF2:
	.string	"int8_t"
.LASF108:
	.string	"recv_bufsize"
.LASF18:
	.string	"u16_t"
.LASF24:
	.string	"ERR_BUF"
.LASF126:
	.string	"netbuf_data"
.LASF77:
	.string	"lwip_internal_netif_client_data_index"
.LASF133:
	.string	"netconn_listen_with_backlog"
.LASF136:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF8:
	.string	"uint8_t"
.LASF53:
	.string	"flags"
.LASF91:
	.string	"netconn_evt"
.LASF79:
	.string	"NETCONN_INVALID"
.LASF135:
	.string	"netconn_delete"
.LASF92:
	.string	"NETCONN_EVT_RCVPLUS"
.LASF29:
	.string	"ERR_WOULDBLOCK"
.LASF86:
	.string	"NETCONN_NONE"
.LASF118:
	.string	"api_msg"
.LASF104:
	.string	"acceptmbox"
.LASF95:
	.string	"NETCONN_EVT_SENDMINUS"
.LASF3:
	.string	"int16_t"
.LASF107:
	.string	"recv_timeout"
.LASF68:
	.string	"MEMP_PBUF"
.LASF23:
	.string	"ERR_MEM"
.LASF115:
	.string	"tcp_pcb"
.LASF64:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF132:
	.string	"netconn_bind"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
