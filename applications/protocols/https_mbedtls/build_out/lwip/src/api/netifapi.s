	.file	"netifapi.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.netifapi_do_netif_add,"ax",@progbits
	.align	1
	.type	netifapi_do_netif_add, @function
netifapi_do_netif_add:
.LFB5:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/api/netifapi.c"
	.loc 1 62 1
	.cfi_startproc
.LVL0:
	.loc 1 65 3
	.loc 1 67 3
	.loc 1 62 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 67 8
	lw	a6,32(a0)
	lw	a5,28(a0)
	lw	a4,24(a0)
	lw	a3,20(a0)
	lw	a2,16(a0)
	lw	a1,12(a0)
	lw	a0,8(a0)
.LVL1:
	call	netif_add
.LVL2:
	.loc 1 67 6
	beq	a0,zero,.L3
	.loc 1 78 12
	li	a0,0
.L2:
	.loc 1 80 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L3:
	.cfi_restore_state
	.loc 1 76 12
	li	a0,-12
	j	.L2
	.cfi_endproc
.LFE5:
	.size	netifapi_do_netif_add, .-netifapi_do_netif_add
	.section	.text.netifapi_do_netif_set_addr,"ax",@progbits
	.align	1
	.type	netifapi_do_netif_set_addr, @function
netifapi_do_netif_set_addr:
.LFB6:
	.loc 1 88 1 is_stmt 1
	.cfi_startproc
.LVL3:
	.loc 1 91 3
	.loc 1 93 3
	.loc 1 88 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 93 3
	lw	a3,20(a0)
	lw	a2,16(a0)
	lw	a1,12(a0)
	lw	a0,8(a0)
.LVL4:
	call	netif_set_addr
.LVL5:
	.loc 1 97 3 is_stmt 1
	.loc 1 98 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	netifapi_do_netif_set_addr, .-netifapi_do_netif_set_addr
	.section	.text.netifapi_do_name_to_index,"ax",@progbits
	.align	1
	.type	netifapi_do_name_to_index, @function
netifapi_do_name_to_index:
.LFB7:
	.loc 1 106 1 is_stmt 1
	.cfi_startproc
.LVL6:
	.loc 1 109 3
	.loc 1 111 3
	.loc 1 106 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 106 1
	mv	s0,a0
	.loc 1 111 24
	lw	a0,12(a0)
.LVL7:
	call	netif_name_to_index
.LVL8:
	.loc 1 111 22
	sb	a0,16(s0)
	.loc 1 112 3 is_stmt 1
	.loc 1 113 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL9:
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	netifapi_do_name_to_index, .-netifapi_do_name_to_index
	.section	.text.netifapi_do_index_to_name,"ax",@progbits
	.align	1
	.type	netifapi_do_index_to_name, @function
netifapi_do_index_to_name:
.LFB8:
	.loc 1 120 1 is_stmt 1
	.cfi_startproc
.LVL10:
	.loc 1 123 3
	.loc 1 125 3
	.loc 1 120 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 125 8
	lw	a1,12(a0)
	.loc 1 120 1
	mv	s0,a0
	.loc 1 125 8
	lbu	a0,16(a0)
.LVL11:
	call	netif_index_to_name
.LVL12:
	.loc 1 125 6
	bne	a0,zero,.L10
	.loc 1 127 5 is_stmt 1
	.loc 1 127 17 is_stmt 0
	lw	a5,12(s0)
	.loc 1 127 26
	sb	zero,0(a5)
.L10:
	.loc 1 129 3 is_stmt 1
	.loc 1 130 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL13:
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	netifapi_do_index_to_name, .-netifapi_do_index_to_name
	.section	.text.netifapi_do_netif_common,"ax",@progbits
	.align	1
	.type	netifapi_do_netif_common, @function
netifapi_do_netif_common:
.LFB9:
	.loc 1 138 1 is_stmt 1
	.cfi_startproc
.LVL14:
	.loc 1 141 3
	.loc 1 143 3
	.loc 1 143 22 is_stmt 0
	lw	a4,16(a0)
	.loc 1 138 1
	mv	a5,a0
	.loc 1 144 12
	lw	a0,8(a0)
.LVL15:
	.loc 1 143 6
	beq	a4,zero,.L13
	.loc 1 144 5 is_stmt 1
	.loc 1 144 12 is_stmt 0
	jr	a4
.LVL16:
.L13:
.LBB4:
.LBB5:
	.loc 1 146 5 is_stmt 1
.LBE5:
.LBE4:
	.loc 1 138 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LBB7:
.LBB6:
	.loc 1 146 5
	lw	a5,12(a5)
.LVL17:
	jalr	a5
.LVL18:
	.loc 1 147 5 is_stmt 1
.LBE6:
.LBE7:
	.loc 1 149 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	netifapi_do_netif_common, .-netifapi_do_netif_common
	.section	.text.netifapi_arp_add,"ax",@progbits
	.align	1
	.globl	netifapi_arp_add
	.type	netifapi_arp_add, @function
netifapi_arp_add:
.LFB10:
	.loc 1 164 1 is_stmt 1
	.cfi_startproc
.LVL19:
	.loc 1 165 3
	.loc 1 168 3
	.loc 1 176 3
	.loc 1 177 3
	.loc 1 178 3
	.loc 1 181 3
	.loc 1 182 1 is_stmt 0
	li	a0,-6
.LVL20:
	ret
	.cfi_endproc
.LFE10:
	.size	netifapi_arp_add, .-netifapi_arp_add
	.section	.text.netifapi_arp_remove,"ax",@progbits
	.align	1
	.globl	netifapi_arp_remove
	.type	netifapi_arp_remove, @function
netifapi_arp_remove:
.LFB11:
	.loc 1 194 1 is_stmt 1
	.cfi_startproc
.LVL21:
	.loc 1 195 3
	.loc 1 198 3
	.loc 1 206 3
	.loc 1 207 3
	.loc 1 210 3
	.loc 1 211 1 is_stmt 0
	li	a0,-6
.LVL22:
	ret
	.cfi_endproc
.LFE11:
	.size	netifapi_arp_remove, .-netifapi_arp_remove
	.section	.text.netifapi_netif_add,"ax",@progbits
	.align	1
	.globl	netifapi_netif_add
	.type	netifapi_netif_add, @function
netifapi_netif_add:
.LFB12:
	.loc 1 227 1 is_stmt 1
	.cfi_startproc
.LVL23:
	.loc 1 228 3
	.loc 1 229 3
	.loc 1 230 3
	.loc 1 233 3
	.loc 1 227 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	.cfi_offset 1, -4
	.loc 1 233 6
	bne	a1,zero,.L19
	.loc 1 234 12
	lui	a1,%hi(ip_addr_any)
.LVL24:
	addi	a1,a1,%lo(ip_addr_any)
.L19:
.LVL25:
	.loc 1 236 3 is_stmt 1
	.loc 1 236 6 is_stmt 0
	bne	a2,zero,.L20
	.loc 1 237 13
	lui	a2,%hi(ip_addr_any)
.LVL26:
	addi	a2,a2,%lo(ip_addr_any)
.L20:
.LVL27:
	.loc 1 239 3 is_stmt 1
	.loc 1 239 6 is_stmt 0
	bne	a3,zero,.L21
	.loc 1 240 8
	lui	a3,%hi(ip_addr_any)
.LVL28:
	addi	a3,a3,%lo(ip_addr_any)
.L21:
.LVL29:
	.loc 1 244 3 is_stmt 1
	.loc 1 244 13 is_stmt 0
	sw	a0,20(sp)
	.loc 1 246 3 is_stmt 1
	.loc 1 253 9 is_stmt 0
	lui	a0,%hi(netifapi_do_netif_add)
.LVL30:
	.loc 1 246 22
	sw	a1,24(sp)
	.loc 1 247 3 is_stmt 1
	.loc 1 253 9 is_stmt 0
	addi	a0,a0,%lo(netifapi_do_netif_add)
	addi	a1,sp,12
.LVL31:
	.loc 1 247 23
	sw	a2,28(sp)
	.loc 1 248 3 is_stmt 1
	.loc 1 248 18 is_stmt 0
	sw	a3,32(sp)
	.loc 1 250 3 is_stmt 1
	.loc 1 250 21 is_stmt 0
	sw	a4,36(sp)
	.loc 1 251 3 is_stmt 1
	.loc 1 251 20 is_stmt 0
	sw	a5,40(sp)
	.loc 1 252 3 is_stmt 1
	.loc 1 252 21 is_stmt 0
	sw	a6,44(sp)
	.loc 1 253 3 is_stmt 1
	.loc 1 253 9 is_stmt 0
	call	tcpip_api_call
.LVL32:
	.loc 1 254 3 is_stmt 1
	.loc 1 255 3
	.loc 1 256 1 is_stmt 0
	lw	ra,60(sp)
	.cfi_restore 1
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE12:
	.size	netifapi_netif_add, .-netifapi_netif_add
	.section	.text.netifapi_netif_set_addr,"ax",@progbits
	.align	1
	.globl	netifapi_netif_set_addr
	.type	netifapi_netif_set_addr, @function
netifapi_netif_set_addr:
.LFB13:
	.loc 1 271 1 is_stmt 1
	.cfi_startproc
.LVL33:
	.loc 1 272 3
	.loc 1 273 3
	.loc 1 274 3
	.loc 1 276 3
	.loc 1 271 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	.cfi_offset 1, -4
	.loc 1 276 6
	bne	a1,zero,.L24
	.loc 1 277 12
	lui	a1,%hi(ip_addr_any)
.LVL34:
	addi	a1,a1,%lo(ip_addr_any)
.L24:
.LVL35:
	.loc 1 279 3 is_stmt 1
	.loc 1 279 6 is_stmt 0
	bne	a2,zero,.L25
	.loc 1 280 13
	lui	a2,%hi(ip_addr_any)
.LVL36:
	addi	a2,a2,%lo(ip_addr_any)
.L25:
.LVL37:
	.loc 1 282 3 is_stmt 1
	.loc 1 282 6 is_stmt 0
	bne	a3,zero,.L26
	.loc 1 283 8
	lui	a3,%hi(ip_addr_any)
.LVL38:
	addi	a3,a3,%lo(ip_addr_any)
.L26:
.LVL39:
	.loc 1 286 3 is_stmt 1
	.loc 1 286 13 is_stmt 0
	sw	a0,20(sp)
	.loc 1 287 3 is_stmt 1
	.loc 1 290 9 is_stmt 0
	lui	a0,%hi(netifapi_do_netif_set_addr)
.LVL40:
	.loc 1 287 22
	sw	a1,24(sp)
	.loc 1 288 3 is_stmt 1
	.loc 1 290 9 is_stmt 0
	addi	a0,a0,%lo(netifapi_do_netif_set_addr)
	addi	a1,sp,12
.LVL41:
	.loc 1 288 23
	sw	a2,28(sp)
	.loc 1 289 3 is_stmt 1
	.loc 1 289 18 is_stmt 0
	sw	a3,32(sp)
	.loc 1 290 3 is_stmt 1
	.loc 1 290 9 is_stmt 0
	call	tcpip_api_call
.LVL42:
	.loc 1 291 3 is_stmt 1
	.loc 1 292 3
	.loc 1 293 1 is_stmt 0
	lw	ra,60(sp)
	.cfi_restore 1
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE13:
	.size	netifapi_netif_set_addr, .-netifapi_netif_set_addr
	.section	.text.netifapi_netif_common,"ax",@progbits
	.align	1
	.globl	netifapi_netif_common
	.type	netifapi_netif_common, @function
netifapi_netif_common:
.LFB14:
	.loc 1 305 1 is_stmt 1
	.cfi_startproc
.LVL43:
	.loc 1 306 3
	.loc 1 307 3
	.loc 1 308 3
	.loc 1 310 3
	.loc 1 305 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	.loc 1 310 13
	sw	a0,20(sp)
	.loc 1 311 3 is_stmt 1
	.loc 1 313 9 is_stmt 0
	lui	a0,%hi(netifapi_do_netif_common)
.LVL44:
	.loc 1 311 27
	sw	a1,24(sp)
	.loc 1 312 3 is_stmt 1
	.loc 1 313 9 is_stmt 0
	addi	a0,a0,%lo(netifapi_do_netif_common)
	addi	a1,sp,12
.LVL45:
	.loc 1 305 1
	sw	ra,60(sp)
	.cfi_offset 1, -4
	.loc 1 312 27
	sw	a2,28(sp)
	.loc 1 313 3 is_stmt 1
	.loc 1 313 9 is_stmt 0
	call	tcpip_api_call
.LVL46:
	.loc 1 314 3 is_stmt 1
	.loc 1 315 3
	.loc 1 316 1 is_stmt 0
	lw	ra,60(sp)
	.cfi_restore 1
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE14:
	.size	netifapi_netif_common, .-netifapi_netif_common
	.section	.text.netifapi_netif_name_to_index,"ax",@progbits
	.align	1
	.globl	netifapi_netif_name_to_index
	.type	netifapi_netif_name_to_index, @function
netifapi_netif_name_to_index:
.LFB15:
	.loc 1 328 1 is_stmt 1
	.cfi_startproc
.LVL47:
	.loc 1 329 3
	.loc 1 330 3
	.loc 1 331 3
	.loc 1 333 3
	.loc 1 328 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s0,56(sp)
	sw	ra,60(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 339 20
	sw	a0,24(sp)
	.loc 1 341 9
	lui	a0,%hi(netifapi_do_name_to_index)
.LVL48:
	.loc 1 328 1
	mv	s0,a1
	.loc 1 333 8
	sb	zero,0(a1)
	.loc 1 339 3 is_stmt 1
	.loc 1 341 3
	.loc 1 341 9 is_stmt 0
	addi	a0,a0,%lo(netifapi_do_name_to_index)
	addi	a1,sp,12
.LVL49:
	call	tcpip_api_call
.LVL50:
	.loc 1 342 3 is_stmt 1
	.loc 1 342 6 is_stmt 0
	bne	a0,zero,.L31
	.loc 1 343 5 is_stmt 1
	.loc 1 343 10 is_stmt 0
	lbu	a5,28(sp)
	sb	a5,0(s0)
.L31:
	.loc 1 345 3 is_stmt 1
	.loc 1 346 3
	.loc 1 347 1 is_stmt 0
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
.LVL51:
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE15:
	.size	netifapi_netif_name_to_index, .-netifapi_netif_name_to_index
	.section	.text.netifapi_netif_index_to_name,"ax",@progbits
	.align	1
	.globl	netifapi_netif_index_to_name
	.type	netifapi_netif_index_to_name, @function
netifapi_netif_index_to_name:
.LFB16:
	.loc 1 360 1 is_stmt 1
	.cfi_startproc
.LVL52:
	.loc 1 361 3
	.loc 1 362 3
	.loc 1 363 3
	.loc 1 365 3
	.loc 1 360 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	.loc 1 365 21
	sb	a0,28(sp)
	.loc 1 367 3 is_stmt 1
	.loc 1 369 9 is_stmt 0
	lui	a0,%hi(netifapi_do_index_to_name)
.LVL53:
	.loc 1 367 20
	sw	a1,24(sp)
	.loc 1 369 3 is_stmt 1
	.loc 1 369 9 is_stmt 0
	addi	a0,a0,%lo(netifapi_do_index_to_name)
	addi	a1,sp,12
.LVL54:
	.loc 1 360 1
	sw	ra,60(sp)
	.cfi_offset 1, -4
	.loc 1 369 9
	call	tcpip_api_call
.LVL55:
	.loc 1 376 3 is_stmt 1
	.loc 1 377 3
	.loc 1 378 1 is_stmt 0
	lw	ra,60(sp)
	.cfi_restore 1
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE16:
	.size	netifapi_netif_index_to_name, .-netifapi_netif_index_to_name
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/arch.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/err.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/pbuf.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/ip4_addr.h"
	.file 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/ip_addr.h"
	.file 10 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/netif.h"
	.file 11 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/prot/ethernet.h"
	.file 12 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
	.file 13 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/semphr.h"
	.file 14 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/lwip-port/arch/sys_arch.h"
	.file 15 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/priv/tcpip_priv.h"
	.file 16 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/priv/api_msg.h"
	.file 17 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/netifapi.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xbc3
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF114
	.byte	0xc
	.4byte	.LASF115
	.4byte	.LASF116
	.4byte	.Ldebug_ranges0+0x18
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
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x8f
	.byte	0xd
	.4byte	0x25
	.byte	0x5
	.byte	0x4
	.byte	0x6
	.byte	0x4
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0x7
	.4byte	0xaf
	.byte	0x6
	.byte	0x4
	.4byte	0xb6
	.byte	0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x14
	.byte	0x12
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x3f
	.byte	0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x24
	.byte	0x14
	.4byte	0x59
	.byte	0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x73
	.byte	0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x7d
	.byte	0x11
	.4byte	0xcd
	.byte	0x3
	.4byte	.LASF20
	.byte	0x5
	.byte	0x7e
	.byte	0x10
	.4byte	0xc1
	.byte	0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0x7f
	.byte	0x12
	.4byte	0xd9
	.byte	0x3
	.4byte	.LASF22
	.byte	0x5
	.byte	0x81
	.byte	0x12
	.4byte	0xe5
	.byte	0x8
	.byte	0x5
	.byte	0x4
	.4byte	0x25
	.byte	0x6
	.byte	0x35
	.byte	0xe
	.4byte	0x196
	.byte	0x9
	.4byte	.LASF23
	.byte	0
	.byte	0xa
	.4byte	.LASF24
	.byte	0x7f
	.byte	0xa
	.4byte	.LASF25
	.byte	0x7e
	.byte	0xa
	.4byte	.LASF26
	.byte	0x7d
	.byte	0xa
	.4byte	.LASF27
	.byte	0x7c
	.byte	0xa
	.4byte	.LASF28
	.byte	0x7b
	.byte	0xa
	.4byte	.LASF29
	.byte	0x7a
	.byte	0xa
	.4byte	.LASF30
	.byte	0x79
	.byte	0xa
	.4byte	.LASF31
	.byte	0x78
	.byte	0xa
	.4byte	.LASF32
	.byte	0x77
	.byte	0xa
	.4byte	.LASF33
	.byte	0x76
	.byte	0xa
	.4byte	.LASF34
	.byte	0x75
	.byte	0xa
	.4byte	.LASF35
	.byte	0x74
	.byte	0xa
	.4byte	.LASF36
	.byte	0x73
	.byte	0xa
	.4byte	.LASF37
	.byte	0x72
	.byte	0xa
	.4byte	.LASF38
	.byte	0x71
	.byte	0xa
	.4byte	.LASF39
	.byte	0x70
	.byte	0
	.byte	0x3
	.4byte	.LASF40
	.byte	0x6
	.byte	0x60
	.byte	0xe
	.4byte	0xfd
	.byte	0xb
	.4byte	.LASF47
	.byte	0x10
	.byte	0x7
	.byte	0xba
	.byte	0x8
	.4byte	0x218
	.byte	0xc
	.4byte	.LASF41
	.byte	0x7
	.byte	0xbc
	.byte	0x10
	.4byte	0x218
	.byte	0
	.byte	0xc
	.4byte	.LASF42
	.byte	0x7
	.byte	0xbf
	.byte	0x9
	.4byte	0xa7
	.byte	0x4
	.byte	0xc
	.4byte	.LASF43
	.byte	0x7
	.byte	0xc8
	.byte	0x9
	.4byte	0x109
	.byte	0x8
	.byte	0xd
	.string	"len"
	.byte	0x7
	.byte	0xcb
	.byte	0x9
	.4byte	0x109
	.byte	0xa
	.byte	0xc
	.4byte	.LASF44
	.byte	0x7
	.byte	0xd0
	.byte	0x8
	.4byte	0xf1
	.byte	0xc
	.byte	0xc
	.4byte	.LASF45
	.byte	0x7
	.byte	0xd3
	.byte	0x8
	.4byte	0xf1
	.byte	0xd
	.byte	0xd
	.string	"ref"
	.byte	0x7
	.byte	0xda
	.byte	0x8
	.4byte	0xf1
	.byte	0xe
	.byte	0xc
	.4byte	.LASF46
	.byte	0x7
	.byte	0xdd
	.byte	0x8
	.4byte	0xf1
	.byte	0xf
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x1a2
	.byte	0xb
	.4byte	.LASF48
	.byte	0x4
	.byte	0x8
	.byte	0x33
	.byte	0x8
	.4byte	0x239
	.byte	0xc
	.4byte	.LASF49
	.byte	0x8
	.byte	0x34
	.byte	0x9
	.4byte	0x115
	.byte	0
	.byte	0
	.byte	0x3
	.4byte	.LASF50
	.byte	0x8
	.byte	0x39
	.byte	0x19
	.4byte	0x21e
	.byte	0x7
	.4byte	0x239
	.byte	0xe
	.4byte	.LASF51
	.byte	0x9
	.2byte	0x10e
	.byte	0x14
	.4byte	0x239
	.byte	0x7
	.4byte	0x24a
	.byte	0xf
	.4byte	.LASF117
	.byte	0x9
	.2byte	0x171
	.byte	0x18
	.4byte	0x257
	.byte	0x6
	.byte	0x4
	.4byte	0xf1
	.byte	0x10
	.4byte	.LASF93
	.byte	0x7
	.byte	0x4
	.4byte	0x94
	.byte	0xa
	.byte	0x9c
	.byte	0x6
	.4byte	0x28e
	.byte	0x9
	.4byte	.LASF52
	.byte	0
	.byte	0x9
	.4byte	.LASF53
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF54
	.byte	0xa
	.byte	0xa8
	.byte	0x11
	.4byte	0x29a
	.byte	0x6
	.byte	0x4
	.4byte	0x2a0
	.byte	0x11
	.4byte	0x196
	.4byte	0x2af
	.byte	0x12
	.4byte	0x2af
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x2b5
	.byte	0x13
	.4byte	.LASF55
	.byte	0x54
	.byte	0xa
	.2byte	0x104
	.byte	0x8
	.4byte	0x3f7
	.byte	0x14
	.4byte	.LASF41
	.byte	0xa
	.2byte	0x107
	.byte	0x11
	.4byte	0x2af
	.byte	0
	.byte	0x14
	.4byte	.LASF56
	.byte	0xa
	.2byte	0x10c
	.byte	0xd
	.4byte	0x24a
	.byte	0x4
	.byte	0x14
	.4byte	.LASF57
	.byte	0xa
	.2byte	0x10d
	.byte	0xd
	.4byte	0x24a
	.byte	0x8
	.byte	0x15
	.string	"gw"
	.byte	0xa
	.2byte	0x10e
	.byte	0xd
	.4byte	0x24a
	.byte	0xc
	.byte	0x14
	.4byte	.LASF58
	.byte	0xa
	.2byte	0x120
	.byte	0x12
	.4byte	0x3f7
	.byte	0x10
	.byte	0x14
	.4byte	.LASF59
	.byte	0xa
	.2byte	0x126
	.byte	0x13
	.4byte	0x41d
	.byte	0x14
	.byte	0x14
	.4byte	.LASF60
	.byte	0xa
	.2byte	0x12b
	.byte	0x17
	.4byte	0x44e
	.byte	0x18
	.byte	0x14
	.4byte	.LASF61
	.byte	0xa
	.2byte	0x136
	.byte	0x1c
	.4byte	0x474
	.byte	0x1c
	.byte	0x14
	.4byte	.LASF62
	.byte	0xa
	.2byte	0x13b
	.byte	0x1c
	.4byte	0x474
	.byte	0x20
	.byte	0x14
	.4byte	.LASF63
	.byte	0xa
	.2byte	0x143
	.byte	0x9
	.4byte	0xa7
	.byte	0x24
	.byte	0x14
	.4byte	.LASF64
	.byte	0xa
	.2byte	0x145
	.byte	0x9
	.4byte	0x4bc
	.byte	0x28
	.byte	0x14
	.4byte	.LASF65
	.byte	0xa
	.2byte	0x149
	.byte	0xf
	.4byte	0xbb
	.byte	0x34
	.byte	0x15
	.string	"mtu"
	.byte	0xa
	.2byte	0x14f
	.byte	0x9
	.4byte	0x109
	.byte	0x38
	.byte	0x14
	.4byte	.LASF66
	.byte	0xa
	.2byte	0x155
	.byte	0x8
	.4byte	0x4cc
	.byte	0x3a
	.byte	0x14
	.4byte	.LASF67
	.byte	0xa
	.2byte	0x157
	.byte	0x8
	.4byte	0xf1
	.byte	0x40
	.byte	0x14
	.4byte	.LASF45
	.byte	0xa
	.2byte	0x159
	.byte	0x8
	.4byte	0xf1
	.byte	0x41
	.byte	0x14
	.4byte	.LASF68
	.byte	0xa
	.2byte	0x15b
	.byte	0x8
	.4byte	0x4dc
	.byte	0x42
	.byte	0x15
	.string	"num"
	.byte	0xa
	.2byte	0x15e
	.byte	0x8
	.4byte	0xf1
	.byte	0x44
	.byte	0x14
	.4byte	.LASF69
	.byte	0xa
	.2byte	0x165
	.byte	0x8
	.4byte	0xf1
	.byte	0x45
	.byte	0x14
	.4byte	.LASF70
	.byte	0xa
	.2byte	0x174
	.byte	0x1c
	.4byte	0x491
	.byte	0x48
	.byte	0x14
	.4byte	.LASF71
	.byte	0xa
	.2byte	0x180
	.byte	0x10
	.4byte	0x218
	.byte	0x4c
	.byte	0x14
	.4byte	.LASF72
	.byte	0xa
	.2byte	0x181
	.byte	0x10
	.4byte	0x218
	.byte	0x50
	.byte	0
	.byte	0x3
	.4byte	.LASF73
	.byte	0xa
	.byte	0xb2
	.byte	0x11
	.4byte	0x403
	.byte	0x6
	.byte	0x4
	.4byte	0x409
	.byte	0x11
	.4byte	0x196
	.4byte	0x41d
	.byte	0x12
	.4byte	0x218
	.byte	0x12
	.4byte	0x2af
	.byte	0
	.byte	0x3
	.4byte	.LASF74
	.byte	0xa
	.byte	0xbd
	.byte	0x11
	.4byte	0x429
	.byte	0x6
	.byte	0x4
	.4byte	0x42f
	.byte	0x11
	.4byte	0x196
	.4byte	0x448
	.byte	0x12
	.4byte	0x2af
	.byte	0x12
	.4byte	0x218
	.byte	0x12
	.4byte	0x448
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x245
	.byte	0x3
	.4byte	.LASF75
	.byte	0xa
	.byte	0xd4
	.byte	0x11
	.4byte	0x45a
	.byte	0x6
	.byte	0x4
	.4byte	0x460
	.byte	0x11
	.4byte	0x196
	.4byte	0x474
	.byte	0x12
	.4byte	0x2af
	.byte	0x12
	.4byte	0x218
	.byte	0
	.byte	0x3
	.4byte	.LASF76
	.byte	0xa
	.byte	0xd6
	.byte	0x10
	.4byte	0x480
	.byte	0x6
	.byte	0x4
	.4byte	0x486
	.byte	0x16
	.4byte	0x491
	.byte	0x12
	.4byte	0x2af
	.byte	0
	.byte	0x3
	.4byte	.LASF77
	.byte	0xa
	.byte	0xd9
	.byte	0x11
	.4byte	0x49d
	.byte	0x6
	.byte	0x4
	.4byte	0x4a3
	.byte	0x11
	.4byte	0x196
	.4byte	0x4bc
	.byte	0x12
	.4byte	0x2af
	.byte	0x12
	.4byte	0x448
	.byte	0x12
	.4byte	0x26f
	.byte	0
	.byte	0x17
	.4byte	0xa7
	.4byte	0x4cc
	.byte	0x18
	.4byte	0x94
	.byte	0x2
	.byte	0
	.byte	0x17
	.4byte	0xf1
	.4byte	0x4dc
	.byte	0x18
	.4byte	0x94
	.byte	0x5
	.byte	0
	.byte	0x17
	.4byte	0xaf
	.4byte	0x4ec
	.byte	0x18
	.4byte	0x94
	.byte	0x1
	.byte	0
	.byte	0xb
	.4byte	.LASF78
	.byte	0x6
	.byte	0xb
	.byte	0x3c
	.byte	0x8
	.4byte	0x507
	.byte	0xc
	.4byte	.LASF49
	.byte	0xb
	.byte	0x3d
	.byte	0x8
	.4byte	0x4cc
	.byte	0
	.byte	0
	.byte	0x3
	.4byte	.LASF79
	.byte	0xc
	.byte	0x30
	.byte	0x22
	.4byte	0x513
	.byte	0x6
	.byte	0x4
	.4byte	0x519
	.byte	0x19
	.4byte	.LASF118
	.byte	0x3
	.4byte	.LASF80
	.byte	0xd
	.byte	0x25
	.byte	0x17
	.4byte	0x507
	.byte	0x3
	.4byte	.LASF81
	.byte	0xe
	.byte	0x2c
	.byte	0x1b
	.4byte	0x51e
	.byte	0xb
	.4byte	.LASF82
	.byte	0x8
	.byte	0xf
	.byte	0x63
	.byte	0x8
	.4byte	0x55e
	.byte	0xd
	.string	"err"
	.byte	0xf
	.byte	0x66
	.byte	0x9
	.4byte	0x196
	.byte	0
	.byte	0xd
	.string	"sem"
	.byte	0xf
	.byte	0x68
	.byte	0xd
	.4byte	0x52a
	.byte	0x4
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x536
	.byte	0x3
	.4byte	.LASF83
	.byte	0x10
	.byte	0xea
	.byte	0x10
	.4byte	0x480
	.byte	0x3
	.4byte	.LASF84
	.byte	0x10
	.byte	0xeb
	.byte	0x11
	.4byte	0x29a
	.byte	0x1a
	.byte	0x18
	.byte	0x10
	.byte	0xf1
	.byte	0x5
	.4byte	0x5d3
	.byte	0xc
	.4byte	.LASF85
	.byte	0x10
	.byte	0xf3
	.byte	0x1a
	.4byte	0x448
	.byte	0
	.byte	0xc
	.4byte	.LASF57
	.byte	0x10
	.byte	0xf4
	.byte	0x1a
	.4byte	0x448
	.byte	0x4
	.byte	0xd
	.string	"gw"
	.byte	0x10
	.byte	0xf5
	.byte	0x1a
	.4byte	0x448
	.byte	0x8
	.byte	0xc
	.4byte	.LASF63
	.byte	0x10
	.byte	0xf7
	.byte	0xd
	.4byte	0xa7
	.byte	0xc
	.byte	0xc
	.4byte	.LASF86
	.byte	0x10
	.byte	0xf8
	.byte	0x15
	.4byte	0x28e
	.byte	0x10
	.byte	0xc
	.4byte	.LASF58
	.byte	0x10
	.byte	0xf9
	.byte	0x16
	.4byte	0x3f7
	.byte	0x14
	.byte	0
	.byte	0x1a
	.byte	0x8
	.byte	0x10
	.byte	0xfb
	.byte	0x5
	.4byte	0x5f7
	.byte	0xc
	.4byte	.LASF87
	.byte	0x10
	.byte	0xfc
	.byte	0x18
	.4byte	0x564
	.byte	0
	.byte	0xc
	.4byte	.LASF88
	.byte	0x10
	.byte	0xfd
	.byte	0x18
	.4byte	0x570
	.byte	0x4
	.byte	0
	.byte	0x1a
	.byte	0x8
	.byte	0x10
	.byte	0xff
	.byte	0x5
	.4byte	0x61d
	.byte	0x14
	.4byte	.LASF68
	.byte	0x10
	.2byte	0x103
	.byte	0xd
	.4byte	0xa9
	.byte	0
	.byte	0x14
	.4byte	.LASF89
	.byte	0x10
	.2byte	0x105
	.byte	0xc
	.4byte	0xf1
	.byte	0x4
	.byte	0
	.byte	0x1b
	.byte	0x18
	.byte	0x10
	.byte	0xf0
	.byte	0x3
	.4byte	0x64c
	.byte	0x1c
	.string	"add"
	.byte	0x10
	.byte	0xfa
	.byte	0x7
	.4byte	0x57c
	.byte	0x1d
	.4byte	.LASF90
	.byte	0x10
	.byte	0xfe
	.byte	0x7
	.4byte	0x5d3
	.byte	0x1e
	.string	"ifs"
	.byte	0x10
	.2byte	0x106
	.byte	0x7
	.4byte	0x5f7
	.byte	0
	.byte	0xb
	.4byte	.LASF91
	.byte	0x24
	.byte	0x10
	.byte	0xed
	.byte	0x8
	.4byte	0x682
	.byte	0xc
	.4byte	.LASF92
	.byte	0x10
	.byte	0xee
	.byte	0x1e
	.4byte	0x536
	.byte	0
	.byte	0xc
	.4byte	.LASF55
	.byte	0x10
	.byte	0xef
	.byte	0x11
	.4byte	0x2af
	.byte	0x8
	.byte	0x15
	.string	"msg"
	.byte	0x10
	.2byte	0x107
	.byte	0x5
	.4byte	0x61d
	.byte	0xc
	.byte	0
	.byte	0x10
	.4byte	.LASF94
	.byte	0x7
	.byte	0x4
	.4byte	0x94
	.byte	0x11
	.byte	0x36
	.byte	0x6
	.4byte	0x69b
	.byte	0x9
	.4byte	.LASF95
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x167
	.byte	0x1
	.4byte	0x196
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0x711
	.byte	0x20
	.string	"idx"
	.byte	0x1
	.2byte	0x167
	.byte	0x23
	.4byte	0xf1
	.4byte	.LLST29
	.byte	0x21
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x167
	.byte	0x2e
	.4byte	0xa9
	.4byte	.LLST30
	.byte	0x22
	.string	"err"
	.byte	0x1
	.2byte	0x169
	.byte	0x9
	.4byte	0x196
	.byte	0x1
	.byte	0x5a
	.byte	0x22
	.string	"msg"
	.byte	0x1
	.2byte	0x16a
	.byte	0x17
	.4byte	0x64c
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x23
	.4byte	.LVL55
	.4byte	0xb86
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	netifapi_do_index_to_name
	.byte	0x24
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x147
	.byte	0x1
	.4byte	0x196
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x787
	.byte	0x21
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x147
	.byte	0x2a
	.4byte	0xbb
	.4byte	.LLST27
	.byte	0x20
	.string	"idx"
	.byte	0x1
	.2byte	0x147
	.byte	0x36
	.4byte	0x269
	.4byte	.LLST28
	.byte	0x22
	.string	"err"
	.byte	0x1
	.2byte	0x149
	.byte	0x9
	.4byte	0x196
	.byte	0x1
	.byte	0x5a
	.byte	0x22
	.string	"msg"
	.byte	0x1
	.2byte	0x14a
	.byte	0x17
	.4byte	0x64c
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x23
	.4byte	.LVL50
	.4byte	0xb86
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	netifapi_do_name_to_index
	.byte	0x24
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x12f
	.byte	0x1
	.4byte	0x196
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x80e
	.byte	0x21
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x12f
	.byte	0x25
	.4byte	0x2af
	.4byte	.LLST24
	.byte	0x21
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x12f
	.byte	0x3d
	.4byte	0x564
	.4byte	.LLST25
	.byte	0x21
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x130
	.byte	0x28
	.4byte	0x570
	.4byte	.LLST26
	.byte	0x22
	.string	"err"
	.byte	0x1
	.2byte	0x132
	.byte	0x9
	.4byte	0x196
	.byte	0x1
	.byte	0x5a
	.byte	0x22
	.string	"msg"
	.byte	0x1
	.2byte	0x133
	.byte	0x17
	.4byte	0x64c
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x23
	.4byte	.LVL46
	.4byte	0xb86
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	netifapi_do_netif_common
	.byte	0x24
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x10b
	.byte	0x1
	.4byte	0x196
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x8a5
	.byte	0x21
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x10b
	.byte	0x27
	.4byte	0x2af
	.4byte	.LLST20
	.byte	0x21
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x10c
	.byte	0x2b
	.4byte	0x448
	.4byte	.LLST21
	.byte	0x21
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x10d
	.byte	0x2b
	.4byte	0x448
	.4byte	.LLST22
	.byte	0x20
	.string	"gw"
	.byte	0x1
	.2byte	0x10e
	.byte	0x2b
	.4byte	0x448
	.4byte	.LLST23
	.byte	0x22
	.string	"err"
	.byte	0x1
	.2byte	0x110
	.byte	0x9
	.4byte	0x196
	.byte	0x1
	.byte	0x5a
	.byte	0x22
	.string	"msg"
	.byte	0x1
	.2byte	0x111
	.byte	0x17
	.4byte	0x64c
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x23
	.4byte	.LVL42
	.4byte	0xb86
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	netifapi_do_netif_set_addr
	.byte	0x24
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0
	.byte	0
	.byte	0x25
	.4byte	.LASF100
	.byte	0x1
	.byte	0xde
	.byte	0x1
	.4byte	0x196
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x965
	.byte	0x26
	.4byte	.LASF55
	.byte	0x1
	.byte	0xde
	.byte	0x22
	.4byte	0x2af
	.4byte	.LLST13
	.byte	0x26
	.4byte	.LASF85
	.byte	0x1
	.byte	0xe0
	.byte	0x26
	.4byte	0x448
	.4byte	.LLST14
	.byte	0x26
	.4byte	.LASF57
	.byte	0x1
	.byte	0xe0
	.byte	0x40
	.4byte	0x448
	.4byte	.LLST15
	.byte	0x27
	.string	"gw"
	.byte	0x1
	.byte	0xe0
	.byte	0x5b
	.4byte	0x448
	.4byte	.LLST16
	.byte	0x26
	.4byte	.LASF63
	.byte	0x1
	.byte	0xe2
	.byte	0x1a
	.4byte	0xa7
	.4byte	.LLST17
	.byte	0x26
	.4byte	.LASF86
	.byte	0x1
	.byte	0xe2
	.byte	0x2f
	.4byte	0x28e
	.4byte	.LLST18
	.byte	0x26
	.4byte	.LASF58
	.byte	0x1
	.byte	0xe2
	.byte	0x44
	.4byte	0x3f7
	.4byte	.LLST19
	.byte	0x28
	.string	"err"
	.byte	0x1
	.byte	0xe4
	.byte	0x9
	.4byte	0x196
	.byte	0x1
	.byte	0x5a
	.byte	0x28
	.string	"msg"
	.byte	0x1
	.byte	0xe5
	.byte	0x17
	.4byte	0x64c
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x23
	.4byte	.LVL32
	.4byte	0xb86
	.byte	0x24
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	netifapi_do_netif_add
	.byte	0x24
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0
	.byte	0
	.byte	0x25
	.4byte	.LASF101
	.byte	0x1
	.byte	0xc1
	.byte	0x1
	.4byte	0x196
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x9ab
	.byte	0x26
	.4byte	.LASF85
	.byte	0x1
	.byte	0xc1
	.byte	0x27
	.4byte	0x448
	.4byte	.LLST12
	.byte	0x29
	.4byte	.LASF102
	.byte	0x1
	.byte	0xc1
	.byte	0x47
	.4byte	0x682
	.byte	0x1
	.byte	0x5b
	.byte	0x2a
	.string	"err"
	.byte	0x1
	.byte	0xc3
	.byte	0x9
	.4byte	0x196
	.byte	0x7a
	.byte	0
	.byte	0x25
	.4byte	.LASF103
	.byte	0x1
	.byte	0xa3
	.byte	0x1
	.4byte	0x196
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x9ff
	.byte	0x26
	.4byte	.LASF85
	.byte	0x1
	.byte	0xa3
	.byte	0x24
	.4byte	0x448
	.4byte	.LLST11
	.byte	0x29
	.4byte	.LASF104
	.byte	0x1
	.byte	0xa3
	.byte	0x3d
	.4byte	0x9ff
	.byte	0x1
	.byte	0x5b
	.byte	0x29
	.4byte	.LASF102
	.byte	0x1
	.byte	0xa3
	.byte	0x5e
	.4byte	0x682
	.byte	0x1
	.byte	0x5c
	.byte	0x2a
	.string	"err"
	.byte	0x1
	.byte	0xa5
	.byte	0x9
	.4byte	0x196
	.byte	0x7a
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x4ec
	.byte	0x2b
	.4byte	.LASF119
	.byte	0x1
	.byte	0x89
	.byte	0x1
	.4byte	0x196
	.byte	0x1
	.4byte	0xa2d
	.byte	0x2c
	.string	"m"
	.byte	0x1
	.byte	0x89
	.byte	0x36
	.4byte	0x55e
	.byte	0x2d
	.string	"msg"
	.byte	0x1
	.byte	0x8d
	.byte	0x18
	.4byte	0xa2d
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x64c
	.byte	0x2e
	.4byte	.LASF105
	.byte	0x1
	.byte	0x77
	.byte	0x1
	.4byte	0x196
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0xa75
	.byte	0x27
	.string	"m"
	.byte	0x1
	.byte	0x77
	.byte	0x37
	.4byte	0x55e
	.4byte	.LLST6
	.byte	0x2f
	.string	"msg"
	.byte	0x1
	.byte	0x7b
	.byte	0x18
	.4byte	0xa2d
	.4byte	.LLST7
	.byte	0x30
	.4byte	.LVL12
	.4byte	0xb92
	.byte	0
	.byte	0x2e
	.4byte	.LASF106
	.byte	0x1
	.byte	0x69
	.byte	0x1
	.4byte	0x196
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0xab7
	.byte	0x27
	.string	"m"
	.byte	0x1
	.byte	0x69
	.byte	0x37
	.4byte	0x55e
	.4byte	.LLST4
	.byte	0x2f
	.string	"msg"
	.byte	0x1
	.byte	0x6d
	.byte	0x18
	.4byte	0xa2d
	.4byte	.LLST5
	.byte	0x30
	.4byte	.LVL8
	.4byte	0xb9f
	.byte	0
	.byte	0x2e
	.4byte	.LASF107
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.4byte	0x196
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0xaf9
	.byte	0x27
	.string	"m"
	.byte	0x1
	.byte	0x57
	.byte	0x38
	.4byte	0x55e
	.4byte	.LLST2
	.byte	0x2f
	.string	"msg"
	.byte	0x1
	.byte	0x5b
	.byte	0x18
	.4byte	0xa2d
	.4byte	.LLST3
	.byte	0x30
	.4byte	.LVL5
	.4byte	0xbac
	.byte	0
	.byte	0x2e
	.4byte	.LASF108
	.byte	0x1
	.byte	0x3d
	.byte	0x1
	.4byte	0x196
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0xb3b
	.byte	0x27
	.string	"m"
	.byte	0x1
	.byte	0x3d
	.byte	0x33
	.4byte	0x55e
	.4byte	.LLST0
	.byte	0x2f
	.string	"msg"
	.byte	0x1
	.byte	0x41
	.byte	0x18
	.4byte	0xa2d
	.4byte	.LLST1
	.byte	0x30
	.4byte	.LVL2
	.4byte	0xbb9
	.byte	0
	.byte	0x31
	.4byte	0xa05
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0xb86
	.byte	0x32
	.4byte	0xa16
	.4byte	.LLST8
	.byte	0x33
	.4byte	0xa20
	.4byte	.LLST9
	.byte	0x34
	.4byte	0xa05
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x89
	.byte	0x1
	.byte	0x32
	.4byte	0xa16
	.4byte	.LLST10
	.byte	0x35
	.4byte	.Ldebug_ranges0+0
	.byte	0x36
	.4byte	0xa20
	.byte	0
	.byte	0
	.byte	0
	.byte	0x37
	.4byte	.LASF109
	.4byte	.LASF109
	.byte	0xf
	.byte	0x6f
	.byte	0x7
	.byte	0x38
	.4byte	.LASF110
	.4byte	.LASF110
	.byte	0xa
	.2byte	0x228
	.byte	0x8
	.byte	0x38
	.4byte	.LASF111
	.4byte	.LASF111
	.byte	0xa
	.2byte	0x227
	.byte	0x6
	.byte	0x38
	.4byte	.LASF112
	.4byte	.LASF112
	.byte	0xa
	.2byte	0x1a3
	.byte	0x6
	.byte	0x38
	.4byte	.LASF113
	.4byte	.LASF113
	.byte	0xa
	.2byte	0x1a0
	.byte	0xf
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
	.byte	0xc
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
	.byte	0xd
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
	.byte	0x34
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
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
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
	.byte	0x49
	.byte	0x13
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
	.byte	0x14
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
	.byte	0x15
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
	.byte	0x16
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x1a
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
	.byte	0x1b
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
	.byte	0x1c
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
	.byte	0x1d
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
	.byte	0x1e
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
	.byte	0
	.byte	0
	.byte	0x1f
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
	.byte	0x20
	.byte	0x5
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x21
	.byte	0x5
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x22
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
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x23
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
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
	.byte	0x26
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
	.byte	0x27
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
	.byte	0x28
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
	.byte	0x29
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
	.byte	0x1c
	.byte	0xd
	.byte	0
	.byte	0
	.byte	0x2b
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
	.byte	0x49
	.byte	0x13
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2c
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
	.byte	0x2d
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
	.byte	0x2e
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
	.byte	0x2f
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
	.byte	0x30
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x31
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x32
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x33
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x34
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
	.byte	0
	.byte	0
	.byte	0x35
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x36
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x37
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
	.byte	0x38
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST29:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL53
	.4byte	.LVL55-1
	.2byte	0x2
	.byte	0x91
	.byte	0x5c
	.4byte	.LVL55-1
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL54
	.4byte	.LVL55-1
	.2byte	0x2
	.byte	0x91
	.byte	0x58
	.4byte	.LVL55-1
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL48
	.4byte	.LVL50-1
	.2byte	0x2
	.byte	0x91
	.byte	0x58
	.4byte	.LVL50-1
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL51
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL44
	.4byte	.LVL46-1
	.2byte	0x2
	.byte	0x91
	.byte	0x54
	.4byte	.LVL46-1
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL45
	.4byte	.LVL46-1
	.2byte	0x2
	.byte	0x91
	.byte	0x58
	.4byte	.LVL46-1
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL43
	.4byte	.LVL46-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL46-1
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL33
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL40
	.4byte	.LVL42-1
	.2byte	0x2
	.byte	0x91
	.byte	0x54
	.4byte	.LVL42-1
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL41
	.4byte	.LVL42-1
	.2byte	0x2
	.byte	0x91
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL33
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL42-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL33
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL42-1
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL23
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL30
	.4byte	.LVL32-1
	.2byte	0x2
	.byte	0x91
	.byte	0x54
	.4byte	.LVL32-1
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL31
	.4byte	.LVL32-1
	.2byte	0x2
	.byte	0x91
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL32-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL23
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL32-1
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL23
	.4byte	.LVL32-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL32-1
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL23
	.4byte	.LVL32-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL32-1
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL23
	.4byte	.LVL32-1
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL32-1
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x60
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL22
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL13
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL13
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL9
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL9
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
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
.LLST8:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LVL16-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL16-1
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL17
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LVL16-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL16-1
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL17
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x74
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
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
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
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF77:
	.string	"netif_igmp_mac_filter_fn"
.LASF47:
	.string	"pbuf"
.LASF69:
	.string	"rs_count"
.LASF23:
	.string	"ERR_OK"
.LASF41:
	.string	"next"
.LASF2:
	.string	"__uint8_t"
.LASF46:
	.string	"if_idx"
.LASF102:
	.string	"type"
.LASF86:
	.string	"init"
.LASF11:
	.string	"long long unsigned int"
.LASF49:
	.string	"addr"
.LASF1:
	.string	"__int8_t"
.LASF91:
	.string	"netifapi_msg"
.LASF95:
	.string	"NETIFAPI_ARP_PERM"
.LASF112:
	.string	"netif_set_addr"
.LASF52:
	.string	"NETIF_DEL_MAC_FILTER"
.LASF81:
	.string	"sys_sem_t"
.LASF10:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF31:
	.string	"ERR_USE"
.LASF66:
	.string	"hwaddr"
.LASF26:
	.string	"ERR_TIMEOUT"
.LASF63:
	.string	"state"
.LASF65:
	.string	"hostname"
.LASF7:
	.string	"long int"
.LASF48:
	.string	"ip4_addr"
.LASF101:
	.string	"netifapi_arp_remove"
.LASF80:
	.string	"SemaphoreHandle_t"
.LASF35:
	.string	"ERR_IF"
.LASF17:
	.string	"uint16_t"
.LASF83:
	.string	"netifapi_void_fn"
.LASF67:
	.string	"hwaddr_len"
.LASF57:
	.string	"netmask"
.LASF30:
	.string	"ERR_WOULDBLOCK"
.LASF108:
	.string	"netifapi_do_netif_add"
.LASF8:
	.string	"__uint32_t"
.LASF94:
	.string	"netifapi_arp_entry"
.LASF100:
	.string	"netifapi_netif_add"
.LASF109:
	.string	"tcpip_api_call"
.LASF44:
	.string	"type_internal"
.LASF12:
	.string	"unsigned int"
.LASF19:
	.string	"u8_t"
.LASF59:
	.string	"output"
.LASF105:
	.string	"netifapi_do_index_to_name"
.LASF32:
	.string	"ERR_ALREADY"
.LASF22:
	.string	"u32_t"
.LASF68:
	.string	"name"
.LASF117:
	.string	"ip_addr_any"
.LASF6:
	.string	"short unsigned int"
.LASF50:
	.string	"ip4_addr_t"
.LASF62:
	.string	"link_callback"
.LASF37:
	.string	"ERR_RST"
.LASF90:
	.string	"common"
.LASF114:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF97:
	.string	"netifapi_netif_name_to_index"
.LASF93:
	.string	"netif_mac_filter_action"
.LASF92:
	.string	"call"
.LASF87:
	.string	"voidfunc"
.LASF13:
	.string	"ptrdiff_t"
.LASF51:
	.string	"ip_addr_t"
.LASF40:
	.string	"err_t"
.LASF75:
	.string	"netif_linkoutput_fn"
.LASF106:
	.string	"netifapi_do_name_to_index"
.LASF55:
	.string	"netif"
.LASF70:
	.string	"igmp_mac_filter"
.LASF42:
	.string	"payload"
.LASF98:
	.string	"netifapi_netif_common"
.LASF56:
	.string	"ip_addr"
.LASF82:
	.string	"tcpip_api_call_data"
.LASF73:
	.string	"netif_input_fn"
.LASF28:
	.string	"ERR_INPROGRESS"
.LASF96:
	.string	"netifapi_netif_index_to_name"
.LASF88:
	.string	"errtfunc"
.LASF29:
	.string	"ERR_VAL"
.LASF118:
	.string	"QueueDefinition"
.LASF34:
	.string	"ERR_CONN"
.LASF54:
	.string	"netif_init_fn"
.LASF3:
	.string	"unsigned char"
.LASF39:
	.string	"ERR_ARG"
.LASF78:
	.string	"eth_addr"
.LASF4:
	.string	"short int"
.LASF74:
	.string	"netif_output_fn"
.LASF76:
	.string	"netif_status_callback_fn"
.LASF61:
	.string	"status_callback"
.LASF99:
	.string	"netifapi_netif_set_addr"
.LASF58:
	.string	"input"
.LASF20:
	.string	"s8_t"
.LASF53:
	.string	"NETIF_ADD_MAC_FILTER"
.LASF79:
	.string	"QueueHandle_t"
.LASF119:
	.string	"netifapi_do_netif_common"
.LASF18:
	.string	"uint32_t"
.LASF36:
	.string	"ERR_ABRT"
.LASF84:
	.string	"netifapi_errt_fn"
.LASF9:
	.string	"long unsigned int"
.LASF14:
	.string	"char"
.LASF113:
	.string	"netif_add"
.LASF111:
	.string	"netif_name_to_index"
.LASF5:
	.string	"__uint16_t"
.LASF24:
	.string	"ERR_MEM"
.LASF89:
	.string	"index"
.LASF115:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/api/netifapi.c"
.LASF103:
	.string	"netifapi_arp_add"
.LASF72:
	.string	"loop_last"
.LASF71:
	.string	"loop_first"
.LASF107:
	.string	"netifapi_do_netif_set_addr"
.LASF64:
	.string	"client_data"
.LASF38:
	.string	"ERR_CLSD"
.LASF27:
	.string	"ERR_RTE"
.LASF15:
	.string	"int8_t"
.LASF43:
	.string	"tot_len"
.LASF21:
	.string	"u16_t"
.LASF25:
	.string	"ERR_BUF"
.LASF116:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/lwip"
.LASF33:
	.string	"ERR_ISCONN"
.LASF85:
	.string	"ipaddr"
.LASF16:
	.string	"uint8_t"
.LASF45:
	.string	"flags"
.LASF110:
	.string	"netif_index_to_name"
.LASF104:
	.string	"ethaddr"
.LASF60:
	.string	"linkoutput"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
