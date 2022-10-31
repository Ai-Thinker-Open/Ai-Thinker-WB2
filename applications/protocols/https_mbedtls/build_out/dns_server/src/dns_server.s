	.file	"dns_server.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.get_dns_request,"ax",@progbits
	.align	1
	.globl	get_dns_request
	.type	get_dns_request, @function
get_dns_request:
.LFB6:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/dns_server/src/dns_server.c"
	.loc 1 147 1
	.cfi_startproc
.LVL0:
	.loc 1 148 5
	.loc 1 149 5
	.loc 1 150 5
	.loc 1 152 5
	.loc 1 147 1 is_stmt 0
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	s0,72(sp)
	sw	s1,68(sp)
	sw	ra,76(sp)
	sw	s2,64(sp)
	sw	s3,60(sp)
	sw	s4,56(sp)
	sw	s5,52(sp)
	sw	s6,48(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.loc 1 152 20
	sw	a3,268(a0)
	.loc 1 153 5 is_stmt 1
	.loc 1 153 20 is_stmt 0
	sh	a4,272(a0)
	.loc 1 155 5 is_stmt 1
	.loc 1 155 8 is_stmt 0
	lhu	a4,8(a2)
.LVL1:
	li	a5,11
	.loc 1 147 1
	mv	s0,a0
	mv	s1,a2
	.loc 1 155 8
	bleu	a4,a5,.L3
	.loc 1 159 9 is_stmt 1
	li	a2,12
.LVL2:
	li	a3,0
.LVL3:
	addi	a1,sp,4
.LVL4:
	mv	a0,s1
.LVL5:
	call	pbuf_copy_partial
.LVL6:
	.loc 1 160 9
	.loc 1 160 25 is_stmt 0
	lhu	a0,4(sp)
	call	lwip_htons
.LVL7:
	.loc 1 160 23
	sh	a0,256(s0)
	.loc 1 161 9 is_stmt 1
	.loc 1 161 31 is_stmt 0
	lhu	a0,8(sp)
	call	lwip_htons
.LVL8:
	.loc 1 161 29
	sh	a0,258(s0)
	.loc 1 162 9 is_stmt 1
	.loc 1 165 86 is_stmt 0
	lhu	a2,8(s1)
	li	a5,255
	slli	a4,a2,16
	srli	a4,a4,16
	bleu	a4,a5,.L4
	li	a2,255
.L4:
	slli	a2,a2,16
	srli	a2,a2,16
	.loc 1 162 9
	mv	a1,s0
	li	a3,12
	mv	a0,s1
	.loc 1 165 86
	sw	a2,0(sp)
	.loc 1 162 9
	call	pbuf_copy_partial
.LVL9:
	.loc 1 168 9 is_stmt 1
	.loc 1 168 18 is_stmt 0
	mv	a2,sp
	mv	a1,s0
	mv	a0,s0
	call	utils_dns_domain_get
.LVL10:
	.loc 1 168 12
	bne	a0,zero,.L3
	.loc 1 169 13 is_stmt 1
	.loc 1 169 21 is_stmt 0
	lw	a5,0(sp)
	.loc 1 169 16
	ble	a5,zero,.L6
	.loc 1 169 53 discriminator 1
	addi	a5,a5,-1
	.loc 1 169 48 discriminator 1
	add	a4,s0,a5
	.loc 1 169 25 discriminator 1
	lbu	a3,0(a4)
	li	a4,46
	bne	a3,a4,.L6
	.loc 1 170 17 is_stmt 1
	.loc 1 170 20 is_stmt 0
	sw	a5,0(sp)
.L6:
	.loc 1 172 13 is_stmt 1
	.loc 1 172 32 is_stmt 0
	lw	a5,0(sp)
	add	a5,s0,a5
	sb	zero,0(a5)
.L3:
	.loc 1 175 5 is_stmt 1
	mv	a0,s1
	call	pbuf_free
.LVL11:
	.loc 1 177 5
.LBB4:
.LBB5:
	.loc 1 77 5
	.loc 1 78 5
	.loc 1 79 5
	.loc 1 80 5
	.loc 1 81 5
	.loc 1 82 5
	.loc 1 83 5
	.loc 1 99 5
	.loc 1 101 5
	.loc 1 101 10 is_stmt 0
	li	a2,640
	li	a1,512
	li	a0,182
	call	pbuf_alloc
.LVL12:
	mv	s1,a0
.LVL13:
	.loc 1 102 5 is_stmt 1
	.loc 1 102 8 is_stmt 0
	beq	a0,zero,.L1
	.loc 1 103 9 is_stmt 1
	li	a2,12
	li	a1,0
	addi	a0,sp,16
	call	memset
.LVL14:
	.loc 1 105 9
	.loc 1 105 18 is_stmt 0
	lhu	a0,256(s0)
	.loc 1 114 9
	addi	s3,s0,-1
	.loc 1 115 19
	li	s2,12
	.loc 1 105 18
	call	lwip_htons
.LVL15:
	.loc 1 105 16
	sh	a0,16(sp)
	.loc 1 106 9 is_stmt 1
	.loc 1 106 20 is_stmt 0
	li	a0,32768
	addi	a0,a0,384
	call	lwip_htons
.LVL16:
	.loc 1 106 18
	sh	a0,18(sp)
	.loc 1 107 9 is_stmt 1
	.loc 1 107 28 is_stmt 0
	li	a0,1
	call	lwip_htons
.LVL17:
	.loc 1 107 26
	sh	a0,20(sp)
	.loc 1 108 9 is_stmt 1
	.loc 1 108 26 is_stmt 0
	li	a0,1
	call	lwip_htons
.LVL18:
	.loc 1 108 24
	sh	a0,22(sp)
	.loc 1 109 9 is_stmt 1
	.loc 1 109 25 is_stmt 0
	li	a0,0
	call	lwip_htons
.LVL19:
	.loc 1 109 23
	sh	a0,24(sp)
	.loc 1 110 9 is_stmt 1
	.loc 1 110 26 is_stmt 0
	li	a0,0
	call	lwip_htons
.LVL20:
	.loc 1 110 24
	sh	a0,26(sp)
	.loc 1 111 9 is_stmt 1
	li	a2,12
	addi	a1,sp,16
	mv	a0,s1
	call	pbuf_take
.LVL21:
	.loc 1 113 9
	.loc 1 114 9
	.loc 1 115 9
	.loc 1 119 13 is_stmt 0
	li	s6,46
.LVL22:
.L10:
	.loc 1 116 9 is_stmt 1
	.loc 1 117 13
	addi	s3,s3,1
.LVL23:
	.loc 1 118 13
	.loc 1 119 13
	.loc 1 117 13 is_stmt 0
	mv	s5,s3
	.loc 1 119 20
	li	s4,0
.LVL24:
.L8:
	.loc 1 119 25 is_stmt 1
	lbu	a5,0(s3)
	.loc 1 119 13 is_stmt 0
	bne	a5,s6,.L9
.L13:
	.loc 1 122 13 is_stmt 1
.LVL25:
	.loc 1 123 13
	mv	a2,s4
	mv	a1,s2
	mv	a0,s1
	call	pbuf_put_at
.LVL26:
	.loc 1 124 13
	addi	a3,s2,1
	.loc 1 122 41 is_stmt 0
	sub	a2,s3,s5
	.loc 1 124 13
	slli	a3,a3,16
	slli	a2,a2,16
	.loc 1 125 23
	add	s2,s2,s4
.LVL27:
	.loc 1 124 13
	srli	a3,a3,16
	srli	a2,a2,16
	mv	a1,s5
	mv	a0,s1
	.loc 1 125 23
	slli	s4,s2,16
.LVL28:
	.loc 1 124 13
	call	pbuf_take_at
.LVL29:
	.loc 1 125 13 is_stmt 1
	.loc 1 125 23 is_stmt 0
	srli	s4,s4,16
	.loc 1 126 9
	lbu	a5,0(s3)
	.loc 1 125 23
	addi	s2,s4,1
	slli	s2,s2,16
	srli	s2,s2,16
.LVL30:
	.loc 1 126 17 is_stmt 1
	.loc 1 126 9 is_stmt 0
	bne	a5,zero,.L10
	.loc 1 127 9 is_stmt 1
	li	a2,0
	mv	a1,s2
	mv	a0,s1
	call	pbuf_put_at
.LVL31:
	.loc 1 128 9
	.loc 1 130 9
	.loc 1 130 19 is_stmt 0
	li	a0,1
	call	lwip_htons
.LVL32:
	.loc 1 130 17
	sh	a0,28(sp)
	.loc 1 131 9 is_stmt 1
	.loc 1 131 19 is_stmt 0
	li	a0,1
	call	lwip_htons
.LVL33:
	.loc 1 131 17
	sh	a0,30(sp)
	.loc 1 132 9 is_stmt 1
	.loc 1 132 21 is_stmt 0
	li	a0,49152
	addi	a0,a0,12
	call	lwip_htons
.LVL34:
	.loc 1 132 19
	sh	a0,32(sp)
	.loc 1 133 9 is_stmt 1
	.loc 1 133 21 is_stmt 0
	li	a0,1
	call	lwip_htons
.LVL35:
	.loc 1 133 19
	sh	a0,34(sp)
	.loc 1 134 9 is_stmt 1
	.loc 1 134 22 is_stmt 0
	li	a0,1
	call	lwip_htons
.LVL36:
	.loc 1 134 20
	sh	a0,36(sp)
	.loc 1 135 9 is_stmt 1
	.loc 1 135 19 is_stmt 0
	li	a0,0
	call	lwip_htons
.LVL37:
	.loc 1 135 17
	sh	a0,38(sp)
	.loc 1 136 9 is_stmt 1
	.loc 1 136 20 is_stmt 0
	li	a0,3932160
	addi	a0,a0,4
	call	lwip_htonl
.LVL38:
	.loc 1 136 18
	sw	a0,40(sp)
	.loc 1 137 9 is_stmt 1
	.loc 1 137 20 is_stmt 0
	li	a0,-1062686720
	addi	a0,a0,-1791
	call	lwip_htonl
.LVL39:
	.loc 1 128 18
	addi	a3,s4,2
	.loc 1 138 9
	slli	a3,a3,16
	srli	a3,a3,16
	li	a2,20
	.loc 1 137 18
	sw	a0,44(sp)
	.loc 1 138 9 is_stmt 1
	addi	a1,sp,28
	mv	a0,s1
	call	pbuf_take_at
.LVL40:
	.loc 1 140 9
	addi	a1,s4,22
	slli	a1,a1,16
	srli	a1,a1,16
	mv	a0,s1
	call	pbuf_realloc
.LVL41:
	.loc 1 141 9
	lhu	a3,272(s0)
	lw	a2,268(s0)
	lw	a0,264(s0)
	mv	a1,s1
	call	udp_sendto
.LVL42:
	.loc 1 142 9
	mv	a0,s1
	call	pbuf_free
.LVL43:
.L1:
.LBE5:
.LBE4:
	.loc 1 178 1 is_stmt 0
	lw	ra,76(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
.LVL44:
	lw	s1,68(sp)
	.cfi_restore 9
	lw	s2,64(sp)
	.cfi_restore 18
	lw	s3,60(sp)
	.cfi_restore 19
	lw	s4,56(sp)
	.cfi_restore 20
	lw	s5,52(sp)
	.cfi_restore 21
	lw	s6,48(sp)
	.cfi_restore 22
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
.LVL45:
.L9:
	.cfi_restore_state
.LBB7:
.LBB6:
	.loc 1 119 42
	beq	a5,zero,.L13
	.loc 1 120 17 is_stmt 1
	addi	s4,s4,1
.LVL46:
	andi	s4,s4,0xff
.LVL47:
	.loc 1 119 61
	addi	s3,s3,1
.LVL48:
	j	.L8
.LBE6:
.LBE7:
	.cfi_endproc
.LFE6:
	.size	get_dns_request, .-get_dns_request
	.section	.text.dns_server_deinit_internal,"ax",@progbits
	.align	1
	.type	dns_server_deinit_internal, @function
dns_server_deinit_internal:
.LFB9:
	.loc 1 222 1
	.cfi_startproc
.LVL49:
	.loc 1 223 5
	.loc 1 224 5
	lw	a0,264(a0)
.LVL50:
	tail	udp_remove
.LVL51:
	.cfi_endproc
.LFE9:
	.size	dns_server_deinit_internal, .-dns_server_deinit_internal
	.section	.text.dns_server_init_internal,"ax",@progbits
	.align	1
	.type	dns_server_init_internal, @function
dns_server_init_internal:
.LFB7:
	.loc 1 181 1
	.cfi_startproc
.LVL52:
	.loc 1 182 5
	.loc 1 183 5
	.loc 1 184 5
	.loc 1 181 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	s2,0(sp)
	sw	ra,12(sp)
	sw	s1,4(sp)
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.loc 1 181 1
	mv	s2,a0
.LVL53:
	.loc 1 186 5 is_stmt 1
	.loc 1 186 12 is_stmt 0
	call	udp_new
.LVL54:
	.loc 1 187 5 is_stmt 1
	.loc 1 188 13 is_stmt 0
	li	s0,-1
	.loc 1 187 8
	beq	a0,zero,.L22
	.loc 1 191 19
	lui	a1,%hi(ip_addr_any)
	li	a2,53
	addi	a1,a1,%lo(ip_addr_any)
	mv	s1,a0
	.loc 1 191 5 is_stmt 1
	.loc 1 191 19 is_stmt 0
	call	udp_bind
.LVL55:
	mv	s0,a0
	.loc 1 191 8
	beq	a0,zero,.L23
	.loc 1 192 9 is_stmt 1
.LVL56:
	.loc 1 193 9
.LDL1:
	.loc 1 200 5
	mv	a0,s1
	call	udp_remove
.LVL57:
	.loc 1 192 13 is_stmt 0
	li	s0,-8
.LVL58:
.L22:
	.loc 1 202 5 is_stmt 1
	.loc 1 203 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,s0
	lw	s0,8(sp)
	.cfi_restore 8
.LVL59:
	lw	s1,4(sp)
	.cfi_restore 9
	lw	s2,0(sp)
	.cfi_restore 18
.LVL60:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL61:
.L23:
	.cfi_restore_state
	.loc 1 195 5 is_stmt 1
	lui	a1,%hi(get_dns_request)
	mv	a2,s2
	addi	a1,a1,%lo(get_dns_request)
	mv	a0,s1
	call	udp_recv
.LVL62:
	.loc 1 196 5
	.loc 1 196 19 is_stmt 0
	sw	s1,264(s2)
	.loc 1 197 5 is_stmt 1
	j	.L22
	.cfi_endproc
.LFE7:
	.size	dns_server_init_internal, .-dns_server_init_internal
	.section	.text.dns_server_init,"ax",@progbits
	.align	1
	.globl	dns_server_init
	.type	dns_server_init, @function
dns_server_init:
.LFB8:
	.loc 1 206 1
	.cfi_startproc
	.loc 1 207 5
	.loc 1 209 5
	.loc 1 206 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 209 14
	li	a0,276
	.loc 1 206 1
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 209 14
	call	pvPortMalloc
.LVL63:
	mv	s0,a0
.LVL64:
	.loc 1 210 5 is_stmt 1
	.loc 1 210 8 is_stmt 0
	beq	a0,zero,.L26
	.loc 1 213 5 is_stmt 1
	.loc 1 213 19 is_stmt 0
	lui	a2,%hi(dns_server_init_internal)
	addi	a2,a2,%lo(dns_server_init_internal)
	li	a1,0
	call	netifapi_netif_common
.LVL65:
	.loc 1 213 8
	beq	a0,zero,.L26
	.loc 1 214 9 is_stmt 1
	mv	a0,s0
	call	vPortFree
.LVL66:
	.loc 1 215 9
	.loc 1 215 16 is_stmt 0
	li	s0,0
	.loc 1 218 5 is_stmt 1
.L27:
.LVL67:
.L26:
	.loc 1 219 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	mv	a0,s0
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	dns_server_init, .-dns_server_init
	.section	.text.dns_server_deinit,"ax",@progbits
	.align	1
	.globl	dns_server_deinit
	.type	dns_server_deinit, @function
dns_server_deinit:
.LFB10:
	.loc 1 228 1 is_stmt 1
	.cfi_startproc
.LVL68:
	.loc 1 229 5
	.loc 1 229 8 is_stmt 0
	beq	a0,zero,.L35
	.loc 1 232 5
	lui	a1,%hi(dns_server_deinit_internal)
	.loc 1 228 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 232 5
	li	a2,0
	addi	a1,a1,%lo(dns_server_deinit_internal)
	.loc 1 228 1
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	mv	s0,a0
	.loc 1 232 5 is_stmt 1
	call	netifapi_netif_common
.LVL69:
	.loc 1 233 5
	mv	a0,s0
	.loc 1 234 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
.LVL70:
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 233 5
	tail	vPortFree
.LVL71:
.L35:
	ret
	.cfi_endproc
.LFE10:
	.size	dns_server_deinit, .-dns_server_deinit
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/arch.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/err.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/pbuf.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/ip4_addr.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/ip_addr.h"
	.file 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/netif.h"
	.file 10 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/udp.h"
	.file 11 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/netifapi.h"
	.file 12 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h"
	.file 13 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 14 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/def.h"
	.file 15 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_dns.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xf60
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF159
	.byte	0xc
	.4byte	.LASF160
	.4byte	.LASF161
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
	.byte	0x29
	.byte	0x15
	.4byte	0x3f
	.byte	0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x4
	.4byte	.LASF3
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x52
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.byte	0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x6c
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.byte	0x4
	.4byte	.LASF9
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x86
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.byte	0x5
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.byte	0x6
	.4byte	0x9d
	.byte	0x7
	.byte	0x4
	.4byte	0xa4
	.byte	0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x14
	.byte	0x12
	.4byte	0x33
	.byte	0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x46
	.byte	0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x60
	.byte	0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x7a
	.byte	0x8
	.4byte	0x9b
	.4byte	0xef
	.byte	0x9
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.byte	0x4
	.4byte	.LASF18
	.byte	0x4
	.byte	0x7d
	.byte	0x11
	.4byte	0xbb
	.byte	0x4
	.4byte	.LASF19
	.byte	0x4
	.byte	0x7e
	.byte	0x10
	.4byte	0xaf
	.byte	0x4
	.4byte	.LASF20
	.byte	0x4
	.byte	0x7f
	.byte	0x12
	.4byte	0xc7
	.byte	0x4
	.4byte	.LASF21
	.byte	0x4
	.byte	0x81
	.byte	0x12
	.4byte	0xd3
	.byte	0xa
	.byte	0x5
	.byte	0x4
	.4byte	0x25
	.byte	0x5
	.byte	0x35
	.byte	0xe
	.4byte	0x194
	.byte	0xb
	.4byte	.LASF22
	.byte	0
	.byte	0xc
	.4byte	.LASF23
	.byte	0x7f
	.byte	0xc
	.4byte	.LASF24
	.byte	0x7e
	.byte	0xc
	.4byte	.LASF25
	.byte	0x7d
	.byte	0xc
	.4byte	.LASF26
	.byte	0x7c
	.byte	0xc
	.4byte	.LASF27
	.byte	0x7b
	.byte	0xc
	.4byte	.LASF28
	.byte	0x7a
	.byte	0xc
	.4byte	.LASF29
	.byte	0x79
	.byte	0xc
	.4byte	.LASF30
	.byte	0x78
	.byte	0xc
	.4byte	.LASF31
	.byte	0x77
	.byte	0xc
	.4byte	.LASF32
	.byte	0x76
	.byte	0xc
	.4byte	.LASF33
	.byte	0x75
	.byte	0xc
	.4byte	.LASF34
	.byte	0x74
	.byte	0xc
	.4byte	.LASF35
	.byte	0x73
	.byte	0xc
	.4byte	.LASF36
	.byte	0x72
	.byte	0xc
	.4byte	.LASF37
	.byte	0x71
	.byte	0xc
	.4byte	.LASF38
	.byte	0x70
	.byte	0
	.byte	0x4
	.4byte	.LASF39
	.byte	0x5
	.byte	0x60
	.byte	0xe
	.4byte	0xfb
	.byte	0xa
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x6
	.byte	0x59
	.byte	0xe
	.4byte	0x1cd
	.byte	0xb
	.4byte	.LASF40
	.byte	0xb6
	.byte	0xb
	.4byte	.LASF41
	.byte	0xa2
	.byte	0xb
	.4byte	.LASF42
	.byte	0x8e
	.byte	0xb
	.4byte	.LASF43
	.byte	0x80
	.byte	0xb
	.4byte	.LASF44
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x6
	.byte	0x91
	.byte	0xe
	.4byte	0x1f6
	.byte	0xd
	.4byte	.LASF45
	.2byte	0x280
	.byte	0xb
	.4byte	.LASF46
	.byte	0x1
	.byte	0xb
	.4byte	.LASF47
	.byte	0x41
	.byte	0xd
	.4byte	.LASF48
	.2byte	0x182
	.byte	0
	.byte	0xe
	.4byte	.LASF55
	.byte	0x10
	.byte	0x6
	.byte	0xba
	.byte	0x8
	.4byte	0x26c
	.byte	0xf
	.4byte	.LASF49
	.byte	0x6
	.byte	0xbc
	.byte	0x10
	.4byte	0x26c
	.byte	0
	.byte	0xf
	.4byte	.LASF50
	.byte	0x6
	.byte	0xbf
	.byte	0x9
	.4byte	0x9b
	.byte	0x4
	.byte	0xf
	.4byte	.LASF51
	.byte	0x6
	.byte	0xc8
	.byte	0x9
	.4byte	0x107
	.byte	0x8
	.byte	0x10
	.string	"len"
	.byte	0x6
	.byte	0xcb
	.byte	0x9
	.4byte	0x107
	.byte	0xa
	.byte	0xf
	.4byte	.LASF52
	.byte	0x6
	.byte	0xd0
	.byte	0x8
	.4byte	0xef
	.byte	0xc
	.byte	0xf
	.4byte	.LASF53
	.byte	0x6
	.byte	0xd3
	.byte	0x8
	.4byte	0xef
	.byte	0xd
	.byte	0x10
	.string	"ref"
	.byte	0x6
	.byte	0xda
	.byte	0x8
	.4byte	0xef
	.byte	0xe
	.byte	0xf
	.4byte	.LASF54
	.byte	0x6
	.byte	0xdd
	.byte	0x8
	.4byte	0xef
	.byte	0xf
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x1f6
	.byte	0xe
	.4byte	.LASF56
	.byte	0x4
	.byte	0x7
	.byte	0x33
	.byte	0x8
	.4byte	0x28d
	.byte	0xf
	.4byte	.LASF57
	.byte	0x7
	.byte	0x34
	.byte	0x9
	.4byte	0x113
	.byte	0
	.byte	0
	.byte	0x4
	.4byte	.LASF58
	.byte	0x7
	.byte	0x39
	.byte	0x19
	.4byte	0x272
	.byte	0x6
	.4byte	0x28d
	.byte	0x11
	.4byte	.LASF59
	.byte	0x8
	.2byte	0x10e
	.byte	0x14
	.4byte	0x28d
	.byte	0x6
	.4byte	0x29e
	.byte	0x12
	.4byte	.LASF162
	.byte	0x8
	.2byte	0x171
	.byte	0x18
	.4byte	0x2ab
	.byte	0x13
	.4byte	.LASF163
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x9
	.byte	0x9c
	.byte	0x6
	.4byte	0x2dc
	.byte	0xb
	.4byte	.LASF60
	.byte	0
	.byte	0xb
	.4byte	.LASF61
	.byte	0x1
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x2e2
	.byte	0x14
	.4byte	.LASF62
	.byte	0x54
	.byte	0x9
	.2byte	0x104
	.byte	0x8
	.4byte	0x424
	.byte	0x15
	.4byte	.LASF49
	.byte	0x9
	.2byte	0x107
	.byte	0x11
	.4byte	0x2dc
	.byte	0
	.byte	0x15
	.4byte	.LASF63
	.byte	0x9
	.2byte	0x10c
	.byte	0xd
	.4byte	0x29e
	.byte	0x4
	.byte	0x15
	.4byte	.LASF64
	.byte	0x9
	.2byte	0x10d
	.byte	0xd
	.4byte	0x29e
	.byte	0x8
	.byte	0x16
	.string	"gw"
	.byte	0x9
	.2byte	0x10e
	.byte	0xd
	.4byte	0x29e
	.byte	0xc
	.byte	0x15
	.4byte	.LASF65
	.byte	0x9
	.2byte	0x120
	.byte	0x12
	.4byte	0x424
	.byte	0x10
	.byte	0x15
	.4byte	.LASF66
	.byte	0x9
	.2byte	0x126
	.byte	0x13
	.4byte	0x44a
	.byte	0x14
	.byte	0x15
	.4byte	.LASF67
	.byte	0x9
	.2byte	0x12b
	.byte	0x17
	.4byte	0x47b
	.byte	0x18
	.byte	0x15
	.4byte	.LASF68
	.byte	0x9
	.2byte	0x136
	.byte	0x1c
	.4byte	0x4a1
	.byte	0x1c
	.byte	0x15
	.4byte	.LASF69
	.byte	0x9
	.2byte	0x13b
	.byte	0x1c
	.4byte	0x4a1
	.byte	0x20
	.byte	0x15
	.4byte	.LASF70
	.byte	0x9
	.2byte	0x143
	.byte	0x9
	.4byte	0x9b
	.byte	0x24
	.byte	0x15
	.4byte	.LASF71
	.byte	0x9
	.2byte	0x145
	.byte	0x9
	.4byte	0xdf
	.byte	0x28
	.byte	0x15
	.4byte	.LASF72
	.byte	0x9
	.2byte	0x149
	.byte	0xf
	.4byte	0xa9
	.byte	0x34
	.byte	0x16
	.string	"mtu"
	.byte	0x9
	.2byte	0x14f
	.byte	0x9
	.4byte	0x107
	.byte	0x38
	.byte	0x15
	.4byte	.LASF73
	.byte	0x9
	.2byte	0x155
	.byte	0x8
	.4byte	0x4e9
	.byte	0x3a
	.byte	0x15
	.4byte	.LASF74
	.byte	0x9
	.2byte	0x157
	.byte	0x8
	.4byte	0xef
	.byte	0x40
	.byte	0x15
	.4byte	.LASF53
	.byte	0x9
	.2byte	0x159
	.byte	0x8
	.4byte	0xef
	.byte	0x41
	.byte	0x15
	.4byte	.LASF75
	.byte	0x9
	.2byte	0x15b
	.byte	0x8
	.4byte	0x4f9
	.byte	0x42
	.byte	0x16
	.string	"num"
	.byte	0x9
	.2byte	0x15e
	.byte	0x8
	.4byte	0xef
	.byte	0x44
	.byte	0x15
	.4byte	.LASF76
	.byte	0x9
	.2byte	0x165
	.byte	0x8
	.4byte	0xef
	.byte	0x45
	.byte	0x15
	.4byte	.LASF77
	.byte	0x9
	.2byte	0x174
	.byte	0x1c
	.4byte	0x4be
	.byte	0x48
	.byte	0x15
	.4byte	.LASF78
	.byte	0x9
	.2byte	0x180
	.byte	0x10
	.4byte	0x26c
	.byte	0x4c
	.byte	0x15
	.4byte	.LASF79
	.byte	0x9
	.2byte	0x181
	.byte	0x10
	.4byte	0x26c
	.byte	0x50
	.byte	0
	.byte	0x4
	.4byte	.LASF80
	.byte	0x9
	.byte	0xb2
	.byte	0x11
	.4byte	0x430
	.byte	0x7
	.byte	0x4
	.4byte	0x436
	.byte	0x17
	.4byte	0x194
	.4byte	0x44a
	.byte	0x18
	.4byte	0x26c
	.byte	0x18
	.4byte	0x2dc
	.byte	0
	.byte	0x4
	.4byte	.LASF81
	.byte	0x9
	.byte	0xbd
	.byte	0x11
	.4byte	0x456
	.byte	0x7
	.byte	0x4
	.4byte	0x45c
	.byte	0x17
	.4byte	0x194
	.4byte	0x475
	.byte	0x18
	.4byte	0x2dc
	.byte	0x18
	.4byte	0x26c
	.byte	0x18
	.4byte	0x475
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x299
	.byte	0x4
	.4byte	.LASF82
	.byte	0x9
	.byte	0xd4
	.byte	0x11
	.4byte	0x487
	.byte	0x7
	.byte	0x4
	.4byte	0x48d
	.byte	0x17
	.4byte	0x194
	.4byte	0x4a1
	.byte	0x18
	.4byte	0x2dc
	.byte	0x18
	.4byte	0x26c
	.byte	0
	.byte	0x4
	.4byte	.LASF83
	.byte	0x9
	.byte	0xd6
	.byte	0x10
	.4byte	0x4ad
	.byte	0x7
	.byte	0x4
	.4byte	0x4b3
	.byte	0x19
	.4byte	0x4be
	.byte	0x18
	.4byte	0x2dc
	.byte	0
	.byte	0x4
	.4byte	.LASF84
	.byte	0x9
	.byte	0xd9
	.byte	0x11
	.4byte	0x4ca
	.byte	0x7
	.byte	0x4
	.4byte	0x4d0
	.byte	0x17
	.4byte	0x194
	.4byte	0x4e9
	.byte	0x18
	.4byte	0x2dc
	.byte	0x18
	.4byte	0x475
	.byte	0x18
	.4byte	0x2bd
	.byte	0
	.byte	0x8
	.4byte	0xef
	.4byte	0x4f9
	.byte	0x9
	.4byte	0x2c
	.byte	0x5
	.byte	0
	.byte	0x8
	.4byte	0x9d
	.4byte	0x509
	.byte	0x9
	.4byte	0x2c
	.byte	0x1
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x2ab
	.byte	0x4
	.4byte	.LASF85
	.byte	0xa
	.byte	0x4d
	.byte	0x10
	.4byte	0x51b
	.byte	0x7
	.byte	0x4
	.4byte	0x521
	.byte	0x19
	.4byte	0x540
	.byte	0x18
	.4byte	0x9b
	.byte	0x18
	.4byte	0x540
	.byte	0x18
	.4byte	0x26c
	.byte	0x18
	.4byte	0x509
	.byte	0x18
	.4byte	0x107
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x546
	.byte	0xe
	.4byte	.LASF86
	.byte	0x28
	.byte	0xa
	.byte	0x51
	.byte	0x8
	.4byte	0x617
	.byte	0xf
	.4byte	.LASF87
	.byte	0xa
	.byte	0x53
	.byte	0xd
	.4byte	0x29e
	.byte	0
	.byte	0xf
	.4byte	.LASF88
	.byte	0xa
	.byte	0x53
	.byte	0x21
	.4byte	0x29e
	.byte	0x4
	.byte	0xf
	.4byte	.LASF89
	.byte	0xa
	.byte	0x53
	.byte	0x31
	.4byte	0xef
	.byte	0x8
	.byte	0xf
	.4byte	.LASF90
	.byte	0xa
	.byte	0x53
	.byte	0x41
	.4byte	0xef
	.byte	0x9
	.byte	0x10
	.string	"tos"
	.byte	0xa
	.byte	0x53
	.byte	0x52
	.4byte	0xef
	.byte	0xa
	.byte	0x10
	.string	"ttl"
	.byte	0xa
	.byte	0x53
	.byte	0x5c
	.4byte	0xef
	.byte	0xb
	.byte	0xf
	.4byte	.LASF49
	.byte	0xa
	.byte	0x57
	.byte	0x13
	.4byte	0x540
	.byte	0xc
	.byte	0xf
	.4byte	.LASF53
	.byte	0xa
	.byte	0x59
	.byte	0x8
	.4byte	0xef
	.byte	0x10
	.byte	0xf
	.4byte	.LASF91
	.byte	0xa
	.byte	0x5b
	.byte	0x9
	.4byte	0x107
	.byte	0x12
	.byte	0xf
	.4byte	.LASF92
	.byte	0xa
	.byte	0x5b
	.byte	0x15
	.4byte	0x107
	.byte	0x14
	.byte	0xf
	.4byte	.LASF93
	.byte	0xa
	.byte	0x60
	.byte	0xe
	.4byte	0x28d
	.byte	0x18
	.byte	0xf
	.4byte	.LASF94
	.byte	0xa
	.byte	0x63
	.byte	0x8
	.4byte	0xef
	.byte	0x1c
	.byte	0xf
	.4byte	.LASF95
	.byte	0xa
	.byte	0x65
	.byte	0x8
	.4byte	0xef
	.byte	0x1d
	.byte	0xf
	.4byte	.LASF96
	.byte	0xa
	.byte	0x6e
	.byte	0xf
	.4byte	0x50f
	.byte	0x20
	.byte	0xf
	.4byte	.LASF97
	.byte	0xa
	.byte	0x70
	.byte	0x9
	.4byte	0x9b
	.byte	0x24
	.byte	0
	.byte	0x1a
	.4byte	.LASF98
	.2byte	0x114
	.byte	0x1
	.byte	0x1c
	.byte	0x8
	.4byte	0x687
	.byte	0xf
	.4byte	.LASF75
	.byte	0x1
	.byte	0x1d
	.byte	0xd
	.4byte	0x687
	.byte	0
	.byte	0x1b
	.4byte	.LASF99
	.byte	0x1
	.byte	0x1e
	.byte	0xe
	.4byte	0xc7
	.2byte	0x100
	.byte	0x1b
	.4byte	.LASF100
	.byte	0x1
	.byte	0x1f
	.byte	0xe
	.4byte	0xc7
	.2byte	0x102
	.byte	0x1b
	.4byte	.LASF101
	.byte	0x1
	.byte	0x20
	.byte	0xe
	.4byte	0xc7
	.2byte	0x104
	.byte	0x1b
	.4byte	.LASF102
	.byte	0x1
	.byte	0x21
	.byte	0x15
	.4byte	0x540
	.2byte	0x108
	.byte	0x1b
	.4byte	.LASF103
	.byte	0x1
	.byte	0x22
	.byte	0x16
	.4byte	0x509
	.2byte	0x10c
	.byte	0x1b
	.4byte	.LASF104
	.byte	0x1
	.byte	0x23
	.byte	0xb
	.4byte	0x107
	.2byte	0x110
	.byte	0
	.byte	0x8
	.4byte	0xbb
	.4byte	0x697
	.byte	0x9
	.4byte	0x2c
	.byte	0xff
	.byte	0
	.byte	0xe
	.4byte	.LASF105
	.byte	0xc
	.byte	0x1
	.byte	0x26
	.byte	0x8
	.4byte	0x6f2
	.byte	0x10
	.string	"id"
	.byte	0x1
	.byte	0x27
	.byte	0xe
	.4byte	0xc7
	.byte	0
	.byte	0xf
	.4byte	.LASF106
	.byte	0x1
	.byte	0x28
	.byte	0xe
	.4byte	0xc7
	.byte	0x2
	.byte	0xf
	.4byte	.LASF107
	.byte	0x1
	.byte	0x29
	.byte	0xe
	.4byte	0xc7
	.byte	0x4
	.byte	0xf
	.4byte	.LASF108
	.byte	0x1
	.byte	0x2a
	.byte	0xe
	.4byte	0xc7
	.byte	0x6
	.byte	0xf
	.4byte	.LASF109
	.byte	0x1
	.byte	0x2b
	.byte	0xe
	.4byte	0xc7
	.byte	0x8
	.byte	0xf
	.4byte	.LASF110
	.byte	0x1
	.byte	0x2c
	.byte	0xe
	.4byte	0xc7
	.byte	0xa
	.byte	0
	.byte	0xe
	.4byte	.LASF111
	.byte	0x14
	.byte	0x1
	.byte	0x2f
	.byte	0x8
	.4byte	0x768
	.byte	0x10
	.string	"typ"
	.byte	0x1
	.byte	0x30
	.byte	0xe
	.4byte	0xc7
	.byte	0
	.byte	0x10
	.string	"cls"
	.byte	0x1
	.byte	0x31
	.byte	0xe
	.4byte	0xc7
	.byte	0x2
	.byte	0xf
	.4byte	.LASF112
	.byte	0x1
	.byte	0x32
	.byte	0xe
	.4byte	0xc7
	.byte	0x4
	.byte	0xf
	.4byte	.LASF113
	.byte	0x1
	.byte	0x33
	.byte	0xe
	.4byte	0xc7
	.byte	0x6
	.byte	0xf
	.4byte	.LASF114
	.byte	0x1
	.byte	0x34
	.byte	0xe
	.4byte	0xc7
	.byte	0x8
	.byte	0x10
	.string	"len"
	.byte	0x1
	.byte	0x35
	.byte	0xe
	.4byte	0xc7
	.byte	0xa
	.byte	0xf
	.4byte	.LASF115
	.byte	0x1
	.byte	0x36
	.byte	0xe
	.4byte	0xd3
	.byte	0xc
	.byte	0xf
	.4byte	.LASF57
	.byte	0x1
	.byte	0x37
	.byte	0xe
	.4byte	0xd3
	.byte	0x10
	.byte	0
	.byte	0xe
	.4byte	.LASF116
	.byte	0x20
	.byte	0x1
	.byte	0x3a
	.byte	0x8
	.4byte	0x82c
	.byte	0xf
	.4byte	.LASF99
	.byte	0x1
	.byte	0x3b
	.byte	0xe
	.4byte	0xc7
	.byte	0
	.byte	0xf
	.4byte	.LASF53
	.byte	0x1
	.byte	0x3c
	.byte	0xe
	.4byte	0xc7
	.byte	0x2
	.byte	0xf
	.4byte	.LASF117
	.byte	0x1
	.byte	0x3d
	.byte	0xe
	.4byte	0xc7
	.byte	0x4
	.byte	0xf
	.4byte	.LASF118
	.byte	0x1
	.byte	0x3e
	.byte	0xe
	.4byte	0xc7
	.byte	0x6
	.byte	0xf
	.4byte	.LASF119
	.byte	0x1
	.byte	0x3f
	.byte	0xe
	.4byte	0xc7
	.byte	0x8
	.byte	0xf
	.4byte	.LASF120
	.byte	0x1
	.byte	0x40
	.byte	0xe
	.4byte	0xc7
	.byte	0xa
	.byte	0xf
	.4byte	.LASF121
	.byte	0x1
	.byte	0x41
	.byte	0xe
	.4byte	0xc7
	.byte	0xc
	.byte	0xf
	.4byte	.LASF122
	.byte	0x1
	.byte	0x42
	.byte	0xe
	.4byte	0xc7
	.byte	0xe
	.byte	0xf
	.4byte	.LASF123
	.byte	0x1
	.byte	0x43
	.byte	0xe
	.4byte	0xc7
	.byte	0x10
	.byte	0xf
	.4byte	.LASF124
	.byte	0x1
	.byte	0x44
	.byte	0xe
	.4byte	0xc7
	.byte	0x12
	.byte	0xf
	.4byte	.LASF125
	.byte	0x1
	.byte	0x45
	.byte	0xe
	.4byte	0xc7
	.byte	0x14
	.byte	0xf
	.4byte	.LASF126
	.byte	0x1
	.byte	0x46
	.byte	0xe
	.4byte	0xc7
	.byte	0x16
	.byte	0xf
	.4byte	.LASF127
	.byte	0x1
	.byte	0x47
	.byte	0xe
	.4byte	0xd3
	.byte	0x18
	.byte	0xf
	.4byte	.LASF128
	.byte	0x1
	.byte	0x48
	.byte	0xe
	.4byte	0xd3
	.byte	0x1c
	.byte	0
	.byte	0x1c
	.4byte	.LASF131
	.byte	0x1
	.byte	0xe3
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x886
	.byte	0x1d
	.4byte	.LASF129
	.byte	0x1
	.byte	0xe3
	.byte	0x1e
	.4byte	0x9b
	.4byte	.LLST19
	.byte	0x1e
	.4byte	.LVL69
	.4byte	0xe78
	.4byte	0x874
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	dns_server_deinit_internal
	.byte	0x1f
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x20
	.4byte	.LVL71
	.4byte	0xe84
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	.LASF164
	.byte	0x1
	.byte	0xdd
	.byte	0xd
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x8c6
	.byte	0x22
	.string	"arg"
	.byte	0x1
	.byte	0xdd
	.byte	0x36
	.4byte	0x2dc
	.4byte	.LLST12
	.byte	0x23
	.4byte	.LASF129
	.byte	0x1
	.byte	0xdf
	.byte	0x1c
	.4byte	0x8c6
	.4byte	.LLST13
	.byte	0x24
	.4byte	.LVL51
	.4byte	0xe90
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x617
	.byte	0x25
	.4byte	.LASF165
	.byte	0x1
	.byte	0xcd
	.byte	0x7
	.4byte	0x9b
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x94a
	.byte	0x23
	.4byte	.LASF129
	.byte	0x1
	.byte	0xcf
	.byte	0x1c
	.4byte	0x8c6
	.4byte	.LLST18
	.byte	0x26
	.string	"out"
	.byte	0x1
	.byte	0xd9
	.byte	0x1
	.4byte	.L27
	.byte	0x1e
	.4byte	.LVL63
	.4byte	0xe9c
	.4byte	0x917
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x114
	.byte	0
	.byte	0x1e
	.4byte	.LVL65
	.4byte	0xe78
	.4byte	0x939
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x1f
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	dns_server_init_internal
	.byte	0
	.byte	0x27
	.4byte	.LVL66
	.4byte	0xe84
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	.LASF166
	.byte	0x1
	.byte	0xb4
	.byte	0xe
	.4byte	0x194
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0xa13
	.byte	0x22
	.string	"arg"
	.byte	0x1
	.byte	0xb4
	.byte	0x35
	.4byte	0x2dc
	.4byte	.LLST14
	.byte	0x29
	.string	"ret"
	.byte	0x1
	.byte	0xb6
	.byte	0xb
	.4byte	0x194
	.4byte	.LLST15
	.byte	0x23
	.4byte	.LASF130
	.byte	0x1
	.byte	0xb7
	.byte	0x15
	.4byte	0x540
	.4byte	.LLST16
	.byte	0x23
	.4byte	.LASF129
	.byte	0x1
	.byte	0xb8
	.byte	0x1c
	.4byte	0x8c6
	.4byte	.LLST17
	.byte	0x26
	.string	"out"
	.byte	0x1
	.byte	0xc9
	.byte	0x1
	.4byte	.L22
	.byte	0x26
	.string	"err"
	.byte	0x1
	.byte	0xc7
	.byte	0x1
	.4byte	.LDL1
	.byte	0x2a
	.4byte	.LVL54
	.4byte	0xea8
	.byte	0x1e
	.4byte	.LVL55
	.4byte	0xeb4
	.4byte	0x9df
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x1f
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x35
	.byte	0
	.byte	0x1e
	.4byte	.LVL57
	.4byte	0xe90
	.4byte	0x9f3
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x27
	.4byte	.LVL62
	.4byte	0xec0
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	get_dns_request
	.byte	0x1f
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LASF132
	.byte	0x1
	.byte	0x92
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0xde3
	.byte	0x22
	.string	"arg"
	.byte	0x1
	.byte	0x92
	.byte	0x1c
	.4byte	0x9b
	.4byte	.LLST0
	.byte	0x1d
	.4byte	.LASF130
	.byte	0x1
	.byte	0x92
	.byte	0x31
	.4byte	0x540
	.4byte	.LLST1
	.byte	0x22
	.string	"p"
	.byte	0x1
	.byte	0x92
	.byte	0x44
	.4byte	0x26c
	.4byte	.LLST2
	.byte	0x1d
	.4byte	.LASF57
	.byte	0x1
	.byte	0x92
	.byte	0x58
	.4byte	0x509
	.4byte	.LLST3
	.byte	0x1d
	.4byte	.LASF133
	.byte	0x1
	.byte	0x92
	.byte	0x64
	.4byte	0x107
	.4byte	.LLST4
	.byte	0x2b
	.string	"hdr"
	.byte	0x1
	.byte	0x94
	.byte	0x18
	.4byte	0x697
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x23
	.4byte	.LASF134
	.byte	0x1
	.byte	0x95
	.byte	0x1c
	.4byte	0x8c6
	.4byte	.LLST5
	.byte	0x2b
	.string	"len"
	.byte	0x1
	.byte	0x96
	.byte	0x9
	.4byte	0x25
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0x2c
	.4byte	0xde3
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xb1
	.byte	0x5
	.4byte	0xd5c
	.byte	0x2d
	.4byte	0xdf0
	.4byte	.LLST6
	.byte	0x2e
	.4byte	.Ldebug_ranges0+0
	.byte	0x2f
	.4byte	0xdfc
	.4byte	.LLST7
	.byte	0x30
	.4byte	0xe07
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0x30
	.4byte	0xe13
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x2f
	.4byte	0xe1f
	.4byte	.LLST8
	.byte	0x2f
	.4byte	0xe29
	.4byte	.LLST9
	.byte	0x2f
	.4byte	0xe35
	.4byte	.LLST10
	.byte	0x2f
	.4byte	0xe41
	.4byte	.LLST11
	.byte	0x31
	.4byte	0xe4d
	.byte	0x31
	.4byte	0xe59
	.byte	0x30
	.4byte	0xe65
	.byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+2827
	.byte	0
	.byte	0x1e
	.4byte	.LVL12
	.4byte	0xecc
	.4byte	0xb3e
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0xb6
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xa
	.2byte	0x200
	.byte	0x1f
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x280
	.byte	0
	.byte	0x1e
	.4byte	.LVL14
	.4byte	0xed9
	.4byte	0xb5c
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x1f
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x2a
	.4byte	.LVL15
	.4byte	0xee5
	.byte	0x1e
	.4byte	.LVL16
	.4byte	0xee5
	.4byte	0xb7a
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xb
	.2byte	0x8180
	.byte	0
	.byte	0x1e
	.4byte	.LVL17
	.4byte	0xee5
	.4byte	0xb8d
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x1e
	.4byte	.LVL18
	.4byte	0xee5
	.4byte	0xba0
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x1e
	.4byte	.LVL19
	.4byte	0xee5
	.4byte	0xbb3
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1e
	.4byte	.LVL20
	.4byte	0xee5
	.4byte	0xbc6
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1e
	.4byte	.LVL21
	.4byte	0xef1
	.4byte	0xbe6
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0x1f
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LVL26
	.4byte	0xefe
	.4byte	0xc06
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x1f
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LVL29
	.4byte	0xf0b
	.4byte	0xc2d
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x1f
	.byte	0x1
	.byte	0x5c
	.byte	0x9
	.byte	0x83
	.byte	0
	.byte	0x85
	.byte	0
	.byte	0x1c
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0
	.byte	0x1e
	.4byte	.LVL31
	.4byte	0xefe
	.4byte	0xc4c
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x1f
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1e
	.4byte	.LVL32
	.4byte	0xee5
	.4byte	0xc5f
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x1e
	.4byte	.LVL33
	.4byte	0xee5
	.4byte	0xc72
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x1e
	.4byte	.LVL34
	.4byte	0xee5
	.4byte	0xc87
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xb
	.2byte	0xc00c
	.byte	0
	.byte	0x1e
	.4byte	.LVL35
	.4byte	0xee5
	.4byte	0xc9a
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x1e
	.4byte	.LVL36
	.4byte	0xee5
	.4byte	0xcad
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x1e
	.4byte	.LVL37
	.4byte	0xee5
	.4byte	0xcc0
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1e
	.4byte	.LVL38
	.4byte	0xf18
	.4byte	0xcd7
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0xc
	.4byte	0x3c0004
	.byte	0
	.byte	0x1e
	.4byte	.LVL39
	.4byte	0xf18
	.4byte	0xcef
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x6
	.byte	0x11
	.byte	0x81,0xd2,0xa2,0x85,0x7c
	.byte	0
	.byte	0x1e
	.4byte	.LVL40
	.4byte	0xf0b
	.4byte	0xd18
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x1f
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x44
	.byte	0x1f
	.byte	0x1
	.byte	0x5d
	.byte	0x6
	.byte	0x84
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0
	.byte	0x1e
	.4byte	.LVL41
	.4byte	0xf24
	.4byte	0xd36
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x6
	.byte	0x84
	.byte	0x16
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0
	.byte	0x1e
	.4byte	.LVL42
	.4byte	0xf31
	.4byte	0xd4a
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x27
	.4byte	.LVL43
	.4byte	0xf3d
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LVL6
	.4byte	0xf4a
	.4byte	0xd81
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x1f
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0x1f
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x2a
	.4byte	.LVL7
	.4byte	0xee5
	.byte	0x2a
	.4byte	.LVL8
	.4byte	0xee5
	.byte	0x1e
	.4byte	.LVL9
	.4byte	0xf4a
	.4byte	0xdb2
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x1f
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x1e
	.4byte	.LVL10
	.4byte	0xf57
	.4byte	0xdd2
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x1f
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0
	.byte	0x27
	.4byte	.LVL11
	.4byte	0xf3d
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x32
	.4byte	.LASF167
	.byte	0x1
	.byte	0x4b
	.byte	0xd
	.byte	0x1
	.4byte	0xe72
	.byte	0x33
	.4byte	.LASF134
	.byte	0x1
	.byte	0x4b
	.byte	0x34
	.4byte	0x8c6
	.byte	0x34
	.string	"rp"
	.byte	0x1
	.byte	0x4d
	.byte	0x12
	.4byte	0x26c
	.byte	0x34
	.string	"hdr"
	.byte	0x1
	.byte	0x4e
	.byte	0x18
	.4byte	0x697
	.byte	0x34
	.string	"qry"
	.byte	0x1
	.byte	0x4f
	.byte	0x18
	.4byte	0x6f2
	.byte	0x34
	.string	"n"
	.byte	0x1
	.byte	0x50
	.byte	0xd
	.4byte	0xbb
	.byte	0x35
	.4byte	.LASF135
	.byte	0x1
	.byte	0x51
	.byte	0xe
	.4byte	0xc7
	.byte	0x35
	.4byte	.LASF136
	.byte	0x1
	.byte	0x51
	.byte	0x19
	.4byte	0xc7
	.byte	0x35
	.4byte	.LASF72
	.byte	0x1
	.byte	0x52
	.byte	0x11
	.4byte	0xa9
	.byte	0x35
	.4byte	.LASF137
	.byte	0x1
	.byte	0x52
	.byte	0x1c
	.4byte	0xa9
	.byte	0x35
	.4byte	.LASF138
	.byte	0x1
	.byte	0x53
	.byte	0x1c
	.4byte	0x768
	.byte	0x35
	.4byte	.LASF139
	.byte	0x1
	.byte	0x63
	.byte	0x1d
	.4byte	0xe72
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x768
	.byte	0x36
	.4byte	.LASF140
	.4byte	.LASF140
	.byte	0xb
	.byte	0x4c
	.byte	0x7
	.byte	0x36
	.4byte	.LASF141
	.4byte	.LASF141
	.byte	0xc
	.byte	0x94
	.byte	0x6
	.byte	0x36
	.4byte	.LASF142
	.4byte	.LASF142
	.byte	0xa
	.byte	0x79
	.byte	0x6
	.byte	0x36
	.4byte	.LASF143
	.4byte	.LASF143
	.byte	0xc
	.byte	0x91
	.byte	0x7
	.byte	0x36
	.4byte	.LASF144
	.4byte	.LASF144
	.byte	0xa
	.byte	0x77
	.byte	0x12
	.byte	0x36
	.4byte	.LASF145
	.4byte	.LASF145
	.byte	0xa
	.byte	0x7a
	.byte	0x7
	.byte	0x36
	.4byte	.LASF146
	.4byte	.LASF146
	.byte	0xa
	.byte	0x80
	.byte	0x6
	.byte	0x37
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0x6
	.2byte	0x110
	.byte	0xe
	.byte	0x36
	.4byte	.LASF148
	.4byte	.LASF148
	.byte	0xd
	.byte	0x21
	.byte	0x8
	.byte	0x36
	.4byte	.LASF149
	.4byte	.LASF149
	.byte	0xe
	.byte	0x60
	.byte	0x7
	.byte	0x37
	.4byte	.LASF150
	.4byte	.LASF150
	.byte	0x6
	.2byte	0x12a
	.byte	0x7
	.byte	0x37
	.4byte	.LASF151
	.4byte	.LASF151
	.byte	0x6
	.2byte	0x139
	.byte	0x6
	.byte	0x37
	.4byte	.LASF152
	.4byte	.LASF152
	.byte	0x6
	.2byte	0x12b
	.byte	0x7
	.byte	0x36
	.4byte	.LASF153
	.4byte	.LASF153
	.byte	0xe
	.byte	0x65
	.byte	0x7
	.byte	0x37
	.4byte	.LASF154
	.4byte	.LASF154
	.byte	0x6
	.2byte	0x117
	.byte	0x6
	.byte	0x36
	.4byte	.LASF155
	.4byte	.LASF155
	.byte	0xa
	.byte	0x88
	.byte	0x7
	.byte	0x37
	.4byte	.LASF156
	.4byte	.LASF156
	.byte	0x6
	.2byte	0x122
	.byte	0x6
	.byte	0x37
	.4byte	.LASF157
	.4byte	.LASF157
	.byte	0x6
	.2byte	0x128
	.byte	0x7
	.byte	0x36
	.4byte	.LASF158
	.4byte	.LASF158
	.byte	0xf
	.byte	0x4
	.byte	0x5
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
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xd
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x14
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
	.byte	0x15
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
	.byte	0x16
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
	.byte	0x17
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
	.byte	0x18
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0x5
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
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x1c
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
	.byte	0x1d
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
	.byte	0x1e
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
	.byte	0x1f
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x20
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
	.byte	0x21
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
	.byte	0x22
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
	.byte	0x23
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
	.byte	0x24
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
	.byte	0xa
	.byte	0
	.byte	0x3
	.byte	0x8
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
	.byte	0x27
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x28
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
	.byte	0x29
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
	.byte	0x2a
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2b
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
	.byte	0x2c
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
	.byte	0x2d
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2e
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2f
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x30
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x31
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x32
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
	.byte	0x33
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
	.byte	0x34
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
	.byte	0x35
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
	.byte	0x36
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST19:
	.4byte	.LVL68
	.4byte	.LVL69-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL69-1
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL70
	.4byte	.LVL71-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL71-1
	.4byte	.LVL71
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL50
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL50
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL64
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL52
	.4byte	.LVL54-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL54-1
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL52
	.4byte	.LVL56
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x3
	.byte	0x9
	.byte	0xf8
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL61
	.4byte	.LFE7
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL54
	.4byte	.LVL55-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL55-1
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL61
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL53
	.4byte	.LVL54-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL54-1
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL4
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL2
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL13
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x3
	.byte	0x7a
	.byte	0x8c,0x2
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x3
	.byte	0x78
	.byte	0x8c,0x2
	.4byte	.LVL6-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL1
	.4byte	.LVL5
	.2byte	0x3
	.byte	0x7a
	.byte	0x90,0x2
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x3
	.byte	0x78
	.byte	0x90,0x2
	.4byte	.LVL6-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL11
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL45
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL45
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL47
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL31
	.4byte	.LVL43
	.2byte	0x3
	.byte	0x84
	.byte	0x2
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL25
	.4byte	.LVL43
	.2byte	0x6
	.byte	0x83
	.byte	0
	.byte	0x85
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL24
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL45
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
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
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF84:
	.string	"netif_igmp_mac_filter_fn"
.LASF55:
	.string	"pbuf"
.LASF76:
	.string	"rs_count"
.LASF61:
	.string	"NETIF_ADD_MAC_FILTER"
.LASF22:
	.string	"ERR_OK"
.LASF42:
	.string	"PBUF_LINK"
.LASF145:
	.string	"udp_bind"
.LASF105:
	.string	"dns_ans_hdr"
.LASF120:
	.string	"addrrs"
.LASF160:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/dns_server/src/dns_server.c"
.LASF3:
	.string	"__uint8_t"
.LASF102:
	.string	"upcb1"
.LASF54:
	.string	"if_idx"
.LASF121:
	.string	"type"
.LASF98:
	.string	"dns_server_ctx"
.LASF118:
	.string	"ansrrs"
.LASF139:
	.string	"entry"
.LASF12:
	.string	"long long unsigned int"
.LASF57:
	.string	"addr"
.LASF129:
	.string	"server"
.LASF2:
	.string	"__int8_t"
.LASF124:
	.string	"anstype"
.LASF79:
	.string	"loop_last"
.LASF49:
	.string	"next"
.LASF60:
	.string	"NETIF_DEL_MAC_FILTER"
.LASF11:
	.string	"long long int"
.LASF1:
	.string	"signed char"
.LASF40:
	.string	"PBUF_TRANSPORT"
.LASF91:
	.string	"local_port"
.LASF18:
	.string	"u8_t"
.LASF30:
	.string	"ERR_USE"
.LASF73:
	.string	"hwaddr"
.LASF25:
	.string	"ERR_TIMEOUT"
.LASF108:
	.string	"numanswers"
.LASF70:
	.string	"state"
.LASF72:
	.string	"hostname"
.LASF8:
	.string	"long int"
.LASF41:
	.string	"PBUF_IP"
.LASF48:
	.string	"PBUF_POOL"
.LASF56:
	.string	"ip4_addr"
.LASF47:
	.string	"PBUF_REF"
.LASF96:
	.string	"recv"
.LASF34:
	.string	"ERR_IF"
.LASF16:
	.string	"uint16_t"
.LASF74:
	.string	"hwaddr_len"
.LASF64:
	.string	"netmask"
.LASF9:
	.string	"__uint32_t"
.LASF143:
	.string	"pvPortMalloc"
.LASF101:
	.string	"nanswers"
.LASF52:
	.string	"type_internal"
.LASF133:
	.string	"port"
.LASF0:
	.string	"unsigned int"
.LASF85:
	.string	"udp_recv_fn"
.LASF112:
	.string	"point"
.LASF66:
	.string	"output"
.LASF89:
	.string	"netif_idx"
.LASF31:
	.string	"ERR_ALREADY"
.LASF21:
	.string	"u32_t"
.LASF161:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/dns_server"
.LASF75:
	.string	"name"
.LASF119:
	.string	"autrrs"
.LASF104:
	.string	"port1"
.LASF162:
	.string	"ip_addr_any"
.LASF128:
	.string	"adress"
.LASF164:
	.string	"dns_server_deinit_internal"
.LASF58:
	.string	"ip4_addr_t"
.LASF69:
	.string	"link_callback"
.LASF152:
	.string	"pbuf_take_at"
.LASF156:
	.string	"pbuf_free"
.LASF103:
	.string	"addr1"
.LASF136:
	.string	"copy_len"
.LASF159:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF97:
	.string	"recv_arg"
.LASF153:
	.string	"lwip_htonl"
.LASF141:
	.string	"vPortFree"
.LASF95:
	.string	"mcast_ttl"
.LASF149:
	.string	"lwip_htons"
.LASF163:
	.string	"netif_mac_filter_action"
.LASF113:
	.string	"antyp"
.LASF138:
	.string	"dns_server_table"
.LASF59:
	.string	"ip_addr_t"
.LASF135:
	.string	"query_idx"
.LASF39:
	.string	"err_t"
.LASF82:
	.string	"netif_linkoutput_fn"
.LASF126:
	.string	"datalen"
.LASF62:
	.string	"netif"
.LASF125:
	.string	"anstypee"
.LASF142:
	.string	"udp_remove"
.LASF77:
	.string	"igmp_mac_filter"
.LASF50:
	.string	"payload"
.LASF63:
	.string	"ip_addr"
.LASF46:
	.string	"PBUF_ROM"
.LASF154:
	.string	"pbuf_realloc"
.LASF115:
	.string	"time"
.LASF110:
	.string	"numextrarr"
.LASF155:
	.string	"udp_sendto"
.LASF100:
	.string	"nquestions"
.LASF146:
	.string	"udp_recv"
.LASF80:
	.string	"netif_input_fn"
.LASF27:
	.string	"ERR_INPROGRESS"
.LASF122:
	.string	"class"
.LASF127:
	.string	"anstime"
.LASF134:
	.string	"dns_ctx"
.LASF28:
	.string	"ERR_VAL"
.LASF111:
	.string	"dns_ans_ans"
.LASF140:
	.string	"netifapi_netif_common"
.LASF4:
	.string	"unsigned char"
.LASF38:
	.string	"ERR_ARG"
.LASF33:
	.string	"ERR_CONN"
.LASF87:
	.string	"local_ip"
.LASF5:
	.string	"short int"
.LASF148:
	.string	"memset"
.LASF81:
	.string	"netif_output_fn"
.LASF116:
	.string	"dns_table_entry"
.LASF166:
	.string	"dns_server_init_internal"
.LASF83:
	.string	"netif_status_callback_fn"
.LASF106:
	.string	"flag"
.LASF68:
	.string	"status_callback"
.LASF131:
	.string	"dns_server_deinit"
.LASF165:
	.string	"dns_server_init"
.LASF65:
	.string	"input"
.LASF45:
	.string	"PBUF_RAM"
.LASF19:
	.string	"s8_t"
.LASF158:
	.string	"utils_dns_domain_get"
.LASF35:
	.string	"ERR_ABRT"
.LASF150:
	.string	"pbuf_take"
.LASF157:
	.string	"pbuf_copy_partial"
.LASF36:
	.string	"ERR_RST"
.LASF17:
	.string	"uint32_t"
.LASF92:
	.string	"remote_port"
.LASF44:
	.string	"PBUF_RAW"
.LASF10:
	.string	"long unsigned int"
.LASF13:
	.string	"char"
.LASF151:
	.string	"pbuf_put_at"
.LASF109:
	.string	"numauthrr"
.LASF6:
	.string	"__uint16_t"
.LASF23:
	.string	"ERR_MEM"
.LASF117:
	.string	"numque"
.LASF93:
	.string	"mcast_ip4"
.LASF78:
	.string	"loop_first"
.LASF123:
	.string	"poiname"
.LASF7:
	.string	"short unsigned int"
.LASF37:
	.string	"ERR_CLSD"
.LASF26:
	.string	"ERR_RTE"
.LASF14:
	.string	"int8_t"
.LASF51:
	.string	"tot_len"
.LASF20:
	.string	"u16_t"
.LASF24:
	.string	"ERR_BUF"
.LASF167:
	.string	"dns_server_send"
.LASF130:
	.string	"upcb"
.LASF32:
	.string	"ERR_ISCONN"
.LASF132:
	.string	"get_dns_request"
.LASF107:
	.string	"numquestions"
.LASF99:
	.string	"txid"
.LASF90:
	.string	"so_options"
.LASF15:
	.string	"uint8_t"
.LASF88:
	.string	"remote_ip"
.LASF53:
	.string	"flags"
.LASF137:
	.string	"hostname_part"
.LASF86:
	.string	"udp_pcb"
.LASF29:
	.string	"ERR_WOULDBLOCK"
.LASF43:
	.string	"PBUF_RAW_TX"
.LASF71:
	.string	"client_data"
.LASF67:
	.string	"linkoutput"
.LASF94:
	.string	"mcast_ifindex"
.LASF147:
	.string	"pbuf_alloc"
.LASF114:
	.string	"antypp"
.LASF144:
	.string	"udp_new"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
