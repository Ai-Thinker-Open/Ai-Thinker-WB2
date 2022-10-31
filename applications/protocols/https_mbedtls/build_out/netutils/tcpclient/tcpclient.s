	.file	"tcpclient.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.tcpc_entry.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"[TCPC] [THREAD] [%d] host is %s, counter is %d\r\n"
	.align	2
.LC1:
	.string	"[TCPC] [THREAD] [%d] [%d] NO mem for holding data\r\n"
	.align	2
.LC2:
	.string	"[TCPC] [THREAD] [%d] [%d] create socket failed, ret is sock %d!\r\n"
	.align	2
.LC3:
	.string	"[TCPC] [THREAD] [%d] [%d] Connect failed!\n"
	.align	2
.LC4:
	.string	"[TCPC] [THREAD] [%d] [%d] Connect to iperf server successful!\n"
	.align	2
.LC5:
	.string	"Data Seq %d"
	.align	2
.LC6:
	.string	"[TCPC] [THREAD] [%d] [%d] send failed with ret %d\r\n"
	.align	2
.LC7:
	.string	"[TCPC] [THREAD] [%d] [%d] send success with ret %d, %s\r\n"
	.align	2
.LC8:
	.string	"[TCPC] [THREAD] [%d] [%d] recv failed with ret %d\r\n"
	.align	2
.LC9:
	.string	"[TCPC] [THREAD] [%d] [%d] recv success with ret %d, %s\r\n"
	.section	.text.tcpc_entry,"ax",@progbits
	.align	1
	.type	tcpc_entry, @function
tcpc_entry:
.LFB5:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/netutils/tcpclient/tcpclient.c"
	.loc 1 17 1
	.cfi_startproc
.LVL0:
	.loc 1 18 5
	.loc 1 20 5
	.loc 1 21 5
	.loc 1 22 5
	.loc 1 23 5
	.loc 1 24 5
	.loc 1 26 5
	.loc 1 17 1 is_stmt 0
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	s3,60(sp)
	.cfi_offset 19, -20
	.loc 1 26 29
	lui	s3,%hi(.LANCHOR0)
	.loc 1 17 1
	sw	s4,56(sp)
	sw	s5,52(sp)
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s1,68(sp)
	sw	s2,64(sp)
	sw	s6,48(sp)
	sw	s7,44(sp)
	sw	s8,40(sp)
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.loc 1 26 29
	addi	s5,s3,%lo(.LANCHOR0)
	lw	s0,0(s5)
	.loc 1 27 5
	mv	a2,a0
	.loc 1 17 1
	mv	s4,a0
	.loc 1 27 5
	lui	a0,%hi(.LC0)
.LVL1:
	.loc 1 26 29
	addi	a5,s0,1
	.loc 1 27 5
	mv	a3,s0
	mv	a1,s0
	addi	a0,a0,%lo(.LC0)
	.loc 1 26 29
	sw	a5,0(s5)
.LVL2:
	.loc 1 27 5 is_stmt 1
	call	printf
.LVL3:
	.loc 1 28 5
	.loc 1 28 27 is_stmt 0
	li	a0,1024
	call	pvPortMalloc
.LVL4:
	.loc 1 29 5 is_stmt 1
	.loc 1 29 8 is_stmt 0
	bne	a0,zero,.L2
	.loc 1 30 9 is_stmt 1
	lw	a2,0(s5)
	lui	a0,%hi(.LC1)
.LVL5:
	mv	a1,s0
	addi	a0,a0,%lo(.LC1)
	call	printf
.LVL6:
	.loc 1 31 9
.L3:
	.loc 1 87 5
	mv	a0,s4
	call	vPortFree
.LVL7:
	.loc 1 149 1 is_stmt 0
	lw	ra,76(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
.LVL8:
	lw	s1,68(sp)
	.cfi_restore 9
	lw	s2,64(sp)
	.cfi_restore 18
	lw	s3,60(sp)
	.cfi_restore 19
	lw	s4,56(sp)
	.cfi_restore 20
.LVL9:
	lw	s5,52(sp)
	.cfi_restore 21
	lw	s6,48(sp)
	.cfi_restore 22
	lw	s7,44(sp)
	.cfi_restore 23
	lw	s8,40(sp)
	.cfi_restore 24
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
.LVL10:
.L2:
	.cfi_restore_state
	mv	s1,a0
	.loc 1 34 5 is_stmt 1
	.loc 1 34 12 is_stmt 0
	li	a2,6
	li	a1,1
	li	a0,2
.LVL11:
	call	lwip_socket
.LVL12:
	mv	s2,a0
.LVL13:
	.loc 1 35 5 is_stmt 1
	.loc 1 35 8 is_stmt 0
	bge	a0,zero,.L4
	.loc 1 36 9 is_stmt 1
	lw	a2,0(s5)
	mv	a3,a0
	lui	a0,%hi(.LC2)
.LVL14:
	mv	a1,s0
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL15:
	.loc 1 37 9
.L5:
	.loc 1 85 5
	mv	a0,s1
	call	vPortFree
.LVL16:
	j	.L3
.LVL17:
.L4:
	.loc 1 39 5
	.loc 1 40 21 is_stmt 0
	li	a0,8192
.LVL18:
	.loc 1 39 21
	li	a5,2
	.loc 1 40 21
	addi	a0,a0,-1192
	.loc 1 39 21
	sb	a5,17(sp)
	.loc 1 40 5 is_stmt 1
	.loc 1 40 21 is_stmt 0
	call	lwip_htons
.LVL19:
	.loc 1 40 19
	sh	a0,18(sp)
	.loc 1 41 5 is_stmt 1
	.loc 1 41 28 is_stmt 0
	mv	a0,s4
	call	ipaddr_addr
.LVL20:
	.loc 1 41 26
	sw	a0,20(sp)
	.loc 1 43 5 is_stmt 1
	.loc 1 43 11 is_stmt 0
	li	a2,16
	addi	a1,sp,16
	mv	a0,s2
	call	lwip_connect
.LVL21:
	.loc 1 44 5 is_stmt 1
	lw	a2,0(s5)
	.loc 1 44 8 is_stmt 0
	bge	a0,zero,.L6
	.loc 1 45 9 is_stmt 1
	lui	a0,%hi(.LC3)
.LVL22:
	mv	a1,s0
	addi	a0,a0,%lo(.LC3)
	call	printf
.LVL23:
	.loc 1 46 9
.L8:
	.loc 1 81 5
	mv	a0,s2
	call	lwip_close
.LVL24:
	j	.L5
.LVL25:
.L6:
	.loc 1 49 5 is_stmt 0
	lui	a0,%hi(.LC4)
.LVL26:
	mv	a1,s0
	addi	a0,a0,%lo(.LC4)
	call	printf
.LVL27:
.LBB2:
	.loc 1 52 13
	li	a5,1
	.loc 1 54 9
	addi	a3,sp,12
	li	a4,4
	li	a2,1
	li	a1,6
	mv	a0,s2
	.loc 1 52 13
	sw	a5,12(sp)
	.loc 1 54 9
	call	lwip_setsockopt
.LVL28:
.LBE2:
	.loc 1 61 5
	li	a2,1024
	li	a1,0
	mv	a0,s1
	call	memset
.LVL29:
	addi	s3,s3,%lo(.LANCHOR0)
	.loc 1 49 5 is_stmt 1
.LBB3:
	.loc 1 52 9
	.loc 1 54 9
.LBE3:
	.loc 1 61 5
	.loc 1 62 5
.LVL30:
	.loc 1 62 18 is_stmt 0
	li	a3,0
	.loc 1 64 9
	lui	s7,%hi(.LC5)
	.loc 1 70 13
	lui	s8,%hi(.LC7)
	.loc 1 77 13
	lui	s6,%hi(.LC9)
.LVL31:
.L10:
	.loc 1 63 5 is_stmt 1
	.loc 1 64 9
	addi	a2,s7,%lo(.LC5)
	li	a1,1024
	mv	a0,s1
	addi	s5,a3,1
.LVL32:
	call	snprintf
.LVL33:
	.loc 1 65 9
	.loc 1 65 15 is_stmt 0
	li	a2,1024
	mv	a1,s1
	mv	a0,s2
	call	lwip_write
.LVL34:
	mv	a3,a0
.LVL35:
	.loc 1 66 9 is_stmt 1
	.loc 1 66 12 is_stmt 0
	bge	a0,zero,.L7
	.loc 1 67 13 is_stmt 1
	lw	a2,0(s3)
	lui	a0,%hi(.LC6)
.LVL36:
	mv	a1,s0
	addi	a0,a0,%lo(.LC6)
.L12:
	.loc 1 74 13 is_stmt 0
	call	printf
.LVL37:
	.loc 1 75 13 is_stmt 1
	j	.L8
.LVL38:
.L7:
	.loc 1 70 13
	lw	a2,0(s3)
	mv	a4,s1
	mv	a1,s0
	addi	a0,s8,%lo(.LC7)
.LVL39:
	call	printf
.LVL40:
	.loc 1 72 9
	.loc 1 72 15 is_stmt 0
	li	a2,1024
	mv	a1,s1
	mv	a0,s2
	call	lwip_read
.LVL41:
	lw	a2,0(s3)
	mv	a3,a0
.LVL42:
	.loc 1 73 9 is_stmt 1
	.loc 1 73 12 is_stmt 0
	bge	a0,zero,.L9
	.loc 1 74 13 is_stmt 1
	lui	a0,%hi(.LC8)
.LVL43:
	mv	a1,s0
	addi	a0,a0,%lo(.LC8)
	j	.L12
.LVL44:
.L9:
	.loc 1 77 13
	mv	a4,s1
	mv	a1,s0
	addi	a0,s6,%lo(.LC9)
.LVL45:
	call	printf
.LVL46:
	.loc 1 79 9
	li	a0,1000
	call	vTaskDelay
.LVL47:
	.loc 1 63 11
	.loc 1 64 9 is_stmt 0
	mv	a3,s5
	j	.L10
	.cfi_endproc
.LFE5:
	.size	tcpc_entry, .-tcpc_entry
	.section	.rodata.tcpclient_cmd.str1.4,"aMS",@progbits,1
	.align	2
.LC10:
	.string	"[TCPC] host IP address is required. Ex. 192.168.1.1\r\n"
	.align	2
.LC11:
	.string	"[TCPC] run out of mem for host alloc\r\n"
	.align	2
.LC12:
	.string	"tcp%u"
	.section	.text.tcpclient_cmd,"ax",@progbits
	.align	1
	.globl	tcpclient_cmd
	.type	tcpclient_cmd, @function
tcpclient_cmd:
.LFB6:
	.loc 1 152 1 is_stmt 1
	.cfi_startproc
.LVL48:
	.loc 1 153 5
	.loc 1 154 5
	.loc 1 155 5
	.loc 1 156 5
	.loc 1 158 5
	.loc 1 158 8 is_stmt 0
	li	a5,2
	beq	a2,a5,.L14
	.loc 1 159 9 is_stmt 1
	lui	a0,%hi(.LC10)
.LVL49:
	addi	a0,a0,%lo(.LC10)
	tail	printf
.LVL50:
.L14:
	.loc 1 152 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
.LBB6:
.LBB7:
	.loc 1 162 16
	lw	a0,4(a3)
.LVL51:
	mv	s1,a3
.LVL52:
	.loc 1 162 5 is_stmt 1
	.loc 1 162 16 is_stmt 0
	call	strlen
.LVL53:
	.loc 1 163 5 is_stmt 1
	.loc 1 163 12 is_stmt 0
	addi	a0,a0,4
.LVL54:
	call	pvPortMalloc
.LVL55:
	mv	s0,a0
.LVL56:
	.loc 1 164 5 is_stmt 1
	.loc 1 164 8 is_stmt 0
	bne	a0,zero,.L15
	.loc 1 165 9 is_stmt 1
	lui	a0,%hi(.LC11)
	addi	a0,a0,%lo(.LC11)
	call	printf
.LVL57:
.L15:
	.loc 1 167 5
	lw	a1,4(s1)
	mv	a0,s0
	call	strcpy
.LVL58:
	.loc 1 168 5
	.loc 1 168 52 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	addi	a5,a5,%lo(.LANCHOR1)
	lbu	a3,0(a5)
	.loc 1 168 5
	lui	a2,%hi(.LC12)
	addi	a2,a2,%lo(.LC12)
	.loc 1 168 52
	addi	a4,a3,1
	.loc 1 168 5
	li	a1,32
	mv	a0,sp
	.loc 1 168 52
	sb	a4,0(a5)
	.loc 1 168 5
	call	snprintf
.LVL59:
	.loc 1 169 5 is_stmt 1
	li	a3,4096
	lui	a1,%hi(tcpc_entry)
	mv	a2,s0
	mv	a0,sp
	addi	a3,a3,-2048
	addi	a1,a1,%lo(tcpc_entry)
	call	aos_task_new
.LVL60:
.LBE7:
.LBE6:
	.loc 1 170 1 is_stmt 0
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s1,36(sp)
	.cfi_restore 9
.LVL61:
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	tcpclient_cmd, .-tcpclient_cmd
	.section	.text.network_netutils_tcpclinet_cli_register,"ax",@progbits
	.align	1
	.globl	network_netutils_tcpclinet_cli_register
	.type	network_netutils_tcpclinet_cli_register, @function
network_netutils_tcpclinet_cli_register:
.LFB7:
	.loc 1 178 1 is_stmt 1
	.cfi_startproc
	.loc 1 183 5
	.loc 1 184 1 is_stmt 0
	li	a0,0
	ret
	.cfi_endproc
.LFE7:
	.size	network_netutils_tcpclinet_cli_register, .-network_netutils_tcpclinet_cli_register
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC13:
	.string	"tcpc"
	.align	2
.LC14:
	.string	"create a tcpc for in a new task"
	.section	.sbss.counter.1,"aw",@nobits
	.set	.LANCHOR1,. + 0
	.type	counter.1, @object
	.size	counter.1, 1
counter.1:
	.zero	1
	.section	.sbss.counter_shared.0,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	counter_shared.0, @object
	.size	counter_shared.0, 4
counter_shared.0:
	.zero	4
	.section	.static_cli_cmds,"a"
	.align	2
	.type	cmds_user, @object
	.size	cmds_user, 12
cmds_user:
	.word	.LC13
	.word	.LC14
	.word	tcpclient_cmd
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/cli/cli/include/cli.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/arch.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/inet.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/sockets.h"
	.file 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 10 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h"
	.file 11 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/def.h"
	.file 12 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/ip4_addr.h"
	.file 13 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 14 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 15 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/aos/kernel.h"
	.file 16 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/memp.h"
	.file 17 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/netif.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x89c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF84
	.byte	0xc
	.4byte	.LASF85
	.4byte	.LASF86
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
	.byte	0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF3
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF4
	.byte	0x4
	.4byte	.LASF10
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x5b
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.byte	0x5
	.byte	0x4
	.byte	0x6
	.byte	0x4
	.4byte	0x4f
	.byte	0x6
	.byte	0x4
	.4byte	0x8c
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x7
	.4byte	0x85
	.byte	0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x39
	.byte	0x1c
	.4byte	0x62
	.byte	0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0x4f
	.byte	0x1b
	.4byte	0x69
	.byte	0x6
	.byte	0x4
	.4byte	0x85
	.byte	0x8
	.4byte	0x85
	.4byte	0xbf
	.byte	0x9
	.4byte	0x2c
	.byte	0x7
	.byte	0
	.byte	0x4
	.4byte	.LASF13
	.byte	0x4
	.byte	0x37
	.byte	0x14
	.4byte	0x9d
	.byte	0x4
	.4byte	.LASF14
	.byte	0x4
	.byte	0x3c
	.byte	0x14
	.4byte	0x91
	.byte	0xa
	.4byte	.LASF38
	.byte	0xc
	.byte	0x5
	.byte	0x32
	.byte	0x8
	.4byte	0x10c
	.byte	0xb
	.4byte	.LASF15
	.byte	0x5
	.byte	0x33
	.byte	0x11
	.4byte	0x7f
	.byte	0
	.byte	0xb
	.4byte	.LASF16
	.byte	0x5
	.byte	0x34
	.byte	0x11
	.4byte	0x7f
	.byte	0x4
	.byte	0xb
	.4byte	.LASF17
	.byte	0x5
	.byte	0x36
	.byte	0xc
	.4byte	0x131
	.byte	0x8
	.byte	0
	.byte	0x7
	.4byte	0xd7
	.byte	0xc
	.4byte	0x12b
	.byte	0xd
	.4byte	0xa9
	.byte	0xd
	.4byte	0x25
	.byte	0xd
	.4byte	0x25
	.byte	0xd
	.4byte	0x12b
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xa9
	.byte	0x6
	.byte	0x4
	.4byte	0x111
	.byte	0x4
	.4byte	.LASF18
	.byte	0x6
	.byte	0x7d
	.byte	0x11
	.4byte	0x4f
	.byte	0xe
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x10
	.byte	0x34
	.byte	0xe
	.4byte	0x1b2
	.byte	0xf
	.4byte	.LASF19
	.byte	0
	.byte	0xf
	.4byte	.LASF20
	.byte	0x1
	.byte	0xf
	.4byte	.LASF21
	.byte	0x2
	.byte	0xf
	.4byte	.LASF22
	.byte	0x3
	.byte	0xf
	.4byte	.LASF23
	.byte	0x4
	.byte	0xf
	.4byte	.LASF24
	.byte	0x5
	.byte	0xf
	.4byte	.LASF25
	.byte	0x6
	.byte	0xf
	.4byte	.LASF26
	.byte	0x7
	.byte	0xf
	.4byte	.LASF27
	.byte	0x8
	.byte	0xf
	.4byte	.LASF28
	.byte	0x9
	.byte	0xf
	.4byte	.LASF29
	.byte	0xa
	.byte	0xf
	.4byte	.LASF30
	.byte	0xb
	.byte	0xf
	.4byte	.LASF31
	.byte	0xc
	.byte	0xf
	.4byte	.LASF32
	.byte	0xd
	.byte	0xf
	.4byte	.LASF33
	.byte	0xe
	.byte	0xf
	.4byte	.LASF34
	.byte	0xf
	.byte	0
	.byte	0x10
	.4byte	.LASF87
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x11
	.byte	0x71
	.byte	0x6
	.4byte	0x1d7
	.byte	0xf
	.4byte	.LASF35
	.byte	0
	.byte	0xf
	.4byte	.LASF36
	.byte	0x1
	.byte	0xf
	.4byte	.LASF37
	.byte	0x2
	.byte	0
	.byte	0xa
	.4byte	.LASF39
	.byte	0x4
	.byte	0x7
	.byte	0x3a
	.byte	0x8
	.4byte	0x1f2
	.byte	0xb
	.4byte	.LASF40
	.byte	0x7
	.byte	0x3b
	.byte	0xd
	.4byte	0xbf
	.byte	0
	.byte	0
	.byte	0x4
	.4byte	.LASF41
	.byte	0x8
	.byte	0x3d
	.byte	0xe
	.4byte	0x137
	.byte	0xa
	.4byte	.LASF42
	.byte	0x10
	.byte	0x8
	.byte	0x47
	.byte	0x8
	.4byte	0x24d
	.byte	0xb
	.4byte	.LASF43
	.byte	0x8
	.byte	0x48
	.byte	0x8
	.4byte	0x137
	.byte	0
	.byte	0xb
	.4byte	.LASF44
	.byte	0x8
	.byte	0x49
	.byte	0xf
	.4byte	0x1f2
	.byte	0x1
	.byte	0xb
	.4byte	.LASF45
	.byte	0x8
	.byte	0x4a
	.byte	0xd
	.4byte	0xcb
	.byte	0x2
	.byte	0xb
	.4byte	.LASF46
	.byte	0x8
	.byte	0x4b
	.byte	0x12
	.4byte	0x1d7
	.byte	0x4
	.byte	0xb
	.4byte	.LASF47
	.byte	0x8
	.byte	0x4d
	.byte	0x8
	.4byte	0xaf
	.byte	0x8
	.byte	0
	.byte	0xa
	.4byte	.LASF48
	.byte	0x10
	.byte	0x8
	.byte	0x5c
	.byte	0x8
	.4byte	0x282
	.byte	0xb
	.4byte	.LASF49
	.byte	0x8
	.byte	0x5d
	.byte	0x8
	.4byte	0x137
	.byte	0
	.byte	0xb
	.4byte	.LASF50
	.byte	0x8
	.byte	0x5e
	.byte	0xf
	.4byte	0x1f2
	.byte	0x1
	.byte	0xb
	.4byte	.LASF51
	.byte	0x8
	.byte	0x5f
	.byte	0x8
	.4byte	0x282
	.byte	0x2
	.byte	0
	.byte	0x8
	.4byte	0x85
	.4byte	0x292
	.byte	0x9
	.4byte	0x2c
	.byte	0xd
	.byte	0
	.byte	0x8
	.4byte	0x10c
	.4byte	0x2a2
	.byte	0x9
	.4byte	0x2c
	.byte	0
	.byte	0
	.byte	0x7
	.4byte	0x292
	.byte	0x11
	.4byte	.LASF54
	.byte	0x1
	.byte	0xad
	.byte	0x21
	.4byte	0x2a2
	.byte	0x5
	.byte	0x3
	.4byte	cmds_user
	.byte	0x12
	.4byte	.LASF88
	.byte	0x1
	.byte	0xb1
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.byte	0x13
	.4byte	.LASF89
	.byte	0x1
	.byte	0x97
	.byte	0x6
	.byte	0x1
	.4byte	0x343
	.byte	0x14
	.string	"buf"
	.byte	0x1
	.byte	0x97
	.byte	0x1a
	.4byte	0xa9
	.byte	0x14
	.string	"len"
	.byte	0x1
	.byte	0x97
	.byte	0x23
	.4byte	0x25
	.byte	0x15
	.4byte	.LASF52
	.byte	0x1
	.byte	0x97
	.byte	0x2c
	.4byte	0x25
	.byte	0x15
	.4byte	.LASF53
	.byte	0x1
	.byte	0x97
	.byte	0x39
	.4byte	0x12b
	.byte	0x11
	.4byte	.LASF55
	.byte	0x1
	.byte	0x99
	.byte	0x14
	.4byte	0x4f
	.byte	0x5
	.byte	0x3
	.4byte	counter.1
	.byte	0x16
	.4byte	.LASF56
	.byte	0x1
	.byte	0x9a
	.byte	0x9
	.4byte	0x25
	.byte	0x16
	.4byte	.LASF57
	.byte	0x1
	.byte	0x9b
	.byte	0xa
	.4byte	0x343
	.byte	0x16
	.4byte	.LASF58
	.byte	0x1
	.byte	0x9c
	.byte	0xb
	.4byte	0xa9
	.byte	0
	.byte	0x8
	.4byte	0x85
	.4byte	0x353
	.byte	0x9
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.byte	0x17
	.4byte	.LASF90
	.byte	0x1
	.byte	0x10
	.byte	0xd
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x698
	.byte	0x18
	.string	"arg"
	.byte	0x1
	.byte	0x10
	.byte	0x1e
	.4byte	0x77
	.4byte	.LLST0
	.byte	0x11
	.4byte	.LASF59
	.byte	0x1
	.byte	0x12
	.byte	0x10
	.4byte	0x25
	.byte	0x5
	.byte	0x3
	.4byte	counter_shared.0
	.byte	0x19
	.4byte	.LASF58
	.byte	0x1
	.byte	0x14
	.byte	0xb
	.4byte	0xa9
	.4byte	.LLST1
	.byte	0x19
	.4byte	.LASF55
	.byte	0x1
	.byte	0x15
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST2
	.byte	0x19
	.4byte	.LASF60
	.byte	0x1
	.byte	0x15
	.byte	0x12
	.4byte	0x25
	.4byte	.LLST3
	.byte	0x19
	.4byte	.LASF61
	.byte	0x1
	.byte	0x16
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST4
	.byte	0x1a
	.string	"ret"
	.byte	0x1
	.byte	0x16
	.byte	0xf
	.4byte	0x25
	.4byte	.LLST5
	.byte	0x19
	.4byte	.LASF62
	.byte	0x1
	.byte	0x17
	.byte	0xe
	.4byte	0x79
	.4byte	.LLST6
	.byte	0x11
	.4byte	.LASF63
	.byte	0x1
	.byte	0x18
	.byte	0x18
	.4byte	0x1fe
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0x1b
	.4byte	.LASF64
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.4byte	.L3
	.byte	0x1b
	.4byte	.LASF65
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.4byte	.L5
	.byte	0x1c
	.4byte	.Ldebug_ranges0+0
	.4byte	0x452
	.byte	0x11
	.4byte	.LASF66
	.byte	0x1
	.byte	0x34
	.byte	0xd
	.4byte	0x25
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0x1d
	.4byte	.LVL28
	.4byte	0x7cb
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x36
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0x1e
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0x1e
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL3
	.4byte	0x7d8
	.4byte	0x47b
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x1e
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL4
	.4byte	0x7e4
	.4byte	0x490
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x400
	.byte	0
	.byte	0x1f
	.4byte	.LVL6
	.4byte	0x7d8
	.4byte	0x4ad
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL7
	.4byte	0x7f0
	.4byte	0x4c1
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL12
	.4byte	0x7fc
	.4byte	0x4de
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x36
	.byte	0
	.byte	0x1f
	.4byte	.LVL15
	.4byte	0x7d8
	.4byte	0x501
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x1e
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL16
	.4byte	0x7f0
	.4byte	0x515
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL19
	.4byte	0x809
	.4byte	0x52a
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x1b58
	.byte	0
	.byte	0x1f
	.4byte	.LVL20
	.4byte	0x815
	.4byte	0x53e
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL21
	.4byte	0x821
	.4byte	0x55d
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x1f
	.4byte	.LVL23
	.4byte	0x7d8
	.4byte	0x57a
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL24
	.4byte	0x82e
	.4byte	0x58e
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL27
	.4byte	0x7d8
	.4byte	0x5ab
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL29
	.4byte	0x83b
	.4byte	0x5cb
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x400
	.byte	0
	.byte	0x1f
	.4byte	.LVL33
	.4byte	0x847
	.4byte	0x5f5
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xa
	.2byte	0x400
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x1e
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x85
	.byte	0x7f
	.byte	0
	.byte	0x1f
	.4byte	.LVL34
	.4byte	0x854
	.4byte	0x616
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x400
	.byte	0
	.byte	0x20
	.4byte	.LVL37
	.4byte	0x7d8
	.byte	0x1f
	.4byte	.LVL40
	.4byte	0x7d8
	.4byte	0x642
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x1e
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL41
	.4byte	0x861
	.4byte	0x663
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x400
	.byte	0
	.byte	0x1f
	.4byte	.LVL46
	.4byte	0x7d8
	.4byte	0x686
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x1e
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LVL47
	.4byte	0x86e
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	0x2cf
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x7cb
	.byte	0x22
	.4byte	0x2dc
	.4byte	.LLST7
	.byte	0x22
	.4byte	0x2e8
	.4byte	.LLST8
	.byte	0x22
	.4byte	0x2f4
	.4byte	.LLST9
	.byte	0x22
	.4byte	0x300
	.4byte	.LLST10
	.byte	0x23
	.4byte	0x31e
	.byte	0x23
	.4byte	0x32a
	.byte	0x23
	.4byte	0x336
	.byte	0x24
	.4byte	0x2cf
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0x1
	.byte	0x97
	.byte	0x6
	.4byte	0x7b7
	.byte	0x22
	.4byte	0x2dc
	.4byte	.LLST11
	.byte	0x22
	.4byte	0x2e8
	.4byte	.LLST12
	.byte	0x22
	.4byte	0x2f4
	.4byte	.LLST13
	.byte	0x22
	.4byte	0x300
	.4byte	.LLST14
	.byte	0x25
	.4byte	0x31e
	.4byte	.LLST15
	.byte	0x26
	.4byte	0x32a
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x25
	.4byte	0x336
	.4byte	.LLST16
	.byte	0x20
	.4byte	.LVL53
	.4byte	0x87b
	.byte	0x20
	.4byte	.LVL55
	.4byte	0x7e4
	.byte	0x1f
	.4byte	.LVL57
	.4byte	0x7d8
	.4byte	0x759
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.byte	0x1f
	.4byte	.LVL58
	.4byte	0x887
	.4byte	0x76d
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL59
	.4byte	0x847
	.4byte	0x790
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.byte	0x1d
	.4byte	.LVL60
	.4byte	0x893
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	tcpc_entry
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x1e
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xa
	.2byte	0x800
	.byte	0
	.byte	0
	.byte	0x27
	.4byte	.LVL50
	.4byte	0x7d8
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	.LASF67
	.4byte	.LASF67
	.byte	0x8
	.2byte	0x246
	.byte	0x5
	.byte	0x29
	.4byte	.LASF68
	.4byte	.LASF68
	.byte	0x9
	.byte	0xc8
	.byte	0x5
	.byte	0x29
	.4byte	.LASF69
	.4byte	.LASF69
	.byte	0xa
	.byte	0x91
	.byte	0x7
	.byte	0x29
	.4byte	.LASF70
	.4byte	.LASF70
	.byte	0xa
	.byte	0x94
	.byte	0x6
	.byte	0x28
	.4byte	.LASF71
	.4byte	.LASF71
	.byte	0x8
	.2byte	0x254
	.byte	0x5
	.byte	0x29
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0xb
	.byte	0x60
	.byte	0x7
	.byte	0x29
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0xc
	.byte	0xcc
	.byte	0x7
	.byte	0x28
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0x8
	.2byte	0x248
	.byte	0x5
	.byte	0x28
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0x8
	.2byte	0x247
	.byte	0x6
	.byte	0x29
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0xd
	.byte	0x21
	.byte	0x8
	.byte	0x28
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0x9
	.2byte	0x10a
	.byte	0x5
	.byte	0x28
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0x8
	.2byte	0x255
	.byte	0x9
	.byte	0x28
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0x8
	.2byte	0x24b
	.byte	0x9
	.byte	0x28
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0xe
	.2byte	0x2f6
	.byte	0x6
	.byte	0x29
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0xd
	.byte	0x29
	.byte	0x8
	.byte	0x29
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0xd
	.byte	0x26
	.byte	0x7
	.byte	0x29
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0xf
	.byte	0x47
	.byte	0x9
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
	.byte	0x49
	.byte	0x13
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
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0xf
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
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
	.byte	0x13
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
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
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x16
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
	.byte	0x17
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
	.byte	0x18
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
	.byte	0x19
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
	.byte	0x1a
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
	.byte	0x1b
	.byte	0xa
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x11
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1d
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1e
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1f
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
	.byte	0x20
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x21
	.byte	0x2e
	.byte	0x1
	.byte	0x31
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
	.byte	0x22
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x23
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x24
	.byte	0x1d
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
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
	.byte	0x25
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x26
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x27
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
	.byte	0x28
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
	.byte	0x29
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
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL3-1
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL3-1
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL10
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL32
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL15-1
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL36
	.4byte	.LVL37-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL39
	.4byte	.LVL40-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL45
	.4byte	.LVL46-1
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL51
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL48
	.4byte	.LVL50-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL50-1
	.4byte	.LVL50
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL53-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL53-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL48
	.4byte	.LVL50-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL50-1
	.4byte	.LVL50
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL53-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL53-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL48
	.4byte	.LVL50-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL50-1
	.4byte	.LVL50
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL53-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL53-1
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL61
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL52
	.4byte	.LVL60
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL52
	.4byte	.LVL53-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL53-1
	.4byte	.LVL60
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL52
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL52
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x3
	.byte	0x7a
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL55-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL56
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
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
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	0
	.4byte	0
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF24:
	.string	"MEMP_ALTCP_PCB"
.LASF63:
	.string	"addr"
.LASF75:
	.string	"lwip_close"
.LASF87:
	.string	"lwip_internal_netif_client_data_index"
.LASF88:
	.string	"network_netutils_tcpclinet_cli_register"
.LASF49:
	.string	"sa_len"
.LASF59:
	.string	"counter_shared"
.LASF2:
	.string	"short int"
.LASF25:
	.string	"MEMP_NETBUF"
.LASF23:
	.string	"MEMP_TCP_SEG"
.LASF71:
	.string	"lwip_socket"
.LASF12:
	.string	"__uint32_t"
.LASF28:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF11:
	.string	"__uint16_t"
.LASF16:
	.string	"help"
.LASF30:
	.string	"MEMP_SYS_TIMEOUT"
.LASF14:
	.string	"in_port_t"
.LASF62:
	.string	"send_buf"
.LASF10:
	.string	"uint8_t"
.LASF22:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF64:
	.string	"failed_nothing"
.LASF44:
	.string	"sin_family"
.LASF43:
	.string	"sin_len"
.LASF31:
	.string	"MEMP_NETDB"
.LASF77:
	.string	"snprintf"
.LASF4:
	.string	"long long int"
.LASF8:
	.string	"long long unsigned int"
.LASF65:
	.string	"failed_buffer"
.LASF90:
	.string	"tcpc_entry"
.LASF3:
	.string	"long int"
.LASF29:
	.string	"MEMP_IGMP_GROUP"
.LASF37:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF68:
	.string	"printf"
.LASF40:
	.string	"s_addr"
.LASF67:
	.string	"lwip_setsockopt"
.LASF46:
	.string	"sin_addr"
.LASF15:
	.string	"name"
.LASF35:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF41:
	.string	"sa_family_t"
.LASF5:
	.string	"unsigned char"
.LASF55:
	.string	"counter"
.LASF52:
	.string	"argc"
.LASF34:
	.string	"MEMP_MAX"
.LASF86:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/netutils"
.LASF1:
	.string	"signed char"
.LASF47:
	.string	"sin_zero"
.LASF36:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF80:
	.string	"vTaskDelay"
.LASF83:
	.string	"aos_task_new"
.LASF0:
	.string	"unsigned int"
.LASF79:
	.string	"lwip_read"
.LASF74:
	.string	"lwip_connect"
.LASF57:
	.string	"names"
.LASF78:
	.string	"lwip_write"
.LASF53:
	.string	"argv"
.LASF72:
	.string	"lwip_htons"
.LASF51:
	.string	"sa_data"
.LASF6:
	.string	"short unsigned int"
.LASF60:
	.string	"counter_data"
.LASF9:
	.string	"char"
.LASF17:
	.string	"function"
.LASF81:
	.string	"strlen"
.LASF27:
	.string	"MEMP_TCPIP_MSG_API"
.LASF82:
	.string	"strcpy"
.LASF13:
	.string	"in_addr_t"
.LASF32:
	.string	"MEMP_PBUF"
.LASF7:
	.string	"long unsigned int"
.LASF39:
	.string	"in_addr"
.LASF89:
	.string	"tcpclient_cmd"
.LASF19:
	.string	"MEMP_RAW_PCB"
.LASF70:
	.string	"vPortFree"
.LASF85:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/netutils/tcpclient/tcpclient.c"
.LASF45:
	.string	"sin_port"
.LASF76:
	.string	"memset"
.LASF18:
	.string	"u8_t"
.LASF38:
	.string	"cli_command"
.LASF73:
	.string	"ipaddr_addr"
.LASF54:
	.string	"cmds_user"
.LASF50:
	.string	"sa_family"
.LASF33:
	.string	"MEMP_PBUF_POOL"
.LASF26:
	.string	"MEMP_NETCONN"
.LASF21:
	.string	"MEMP_TCP_PCB"
.LASF66:
	.string	"flag"
.LASF20:
	.string	"MEMP_UDP_PCB"
.LASF58:
	.string	"host"
.LASF69:
	.string	"pvPortMalloc"
.LASF56:
	.string	"host_len"
.LASF42:
	.string	"sockaddr_in"
.LASF48:
	.string	"sockaddr"
.LASF61:
	.string	"sock"
.LASF84:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
