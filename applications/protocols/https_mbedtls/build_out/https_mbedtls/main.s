	.file	"main.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.proc_main_entry,"ax",@progbits
	.align	1
	.type	proc_main_entry, @function
proc_main_entry:
.LFB31:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/https_mbedtls/main.c"
	.loc 1 170 1
	.cfi_startproc
.LVL0:
	.loc 1 172 5
	lui	a1,%hi(event_cb_wifi_event)
	.loc 1 170 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 172 5
	li	a2,0
	addi	a1,a1,%lo(event_cb_wifi_event)
	li	a0,2
.LVL1:
	.loc 1 170 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 172 5
	call	aos_register_event_filter
.LVL2:
	.loc 1 173 5 is_stmt 1
	call	hal_wifi_start_firmware_task
.LVL3:
	.loc 1 174 5
	li	a2,0
	li	a1,1
	li	a0,2
	call	aos_post_event
.LVL4:
	.loc 1 176 5
	.loc 1 177 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 176 5
	li	a0,0
	.loc 1 177 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 176 5
	tail	vTaskDelete
.LVL5:
	.cfi_endproc
.LFE31:
	.size	proc_main_entry, .-proc_main_entry
	.section	.text.wifi_sta_connect,"ax",@progbits
	.align	1
	.type	wifi_sta_connect, @function
wifi_sta_connect:
.LFB29:
	.loc 1 40 1 is_stmt 1
	.cfi_startproc
.LVL6:
	.loc 1 41 5
	.loc 1 43 5
	.loc 1 40 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 40 1
	mv	s0,a0
	sw	a1,12(sp)
	.loc 1 43 22
	call	wifi_mgmr_sta_enable
.LVL7:
	.loc 1 44 5 is_stmt 1
	mv	a1,s0
	.loc 1 45 1 is_stmt 0
	lw	s0,24(sp)
	.cfi_restore 8
.LVL8:
	.loc 1 44 5
	lw	a2,12(sp)
	.loc 1 45 1
	lw	ra,28(sp)
	.cfi_restore 1
	.loc 1 44 5
	li	a6,0
	.loc 1 45 1
	.loc 1 44 5
	li	a5,0
	li	a4,0
	li	a3,0
	.loc 1 45 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL9:
	.loc 1 44 5
	tail	wifi_mgmr_sta_connect
.LVL10:
	.cfi_endproc
.LFE29:
	.size	wifi_sta_connect, .-wifi_sta_connect
	.section	.rodata.event_cb_wifi_event.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"UNKNOWN"
	.align	2
.LC1:
	.string	"[APP] [EVT] INIT DONE %lld\r\n"
	.align	2
.LC2:
	.string	"[APP] [EVT] MGMR DONE %lld\r\n"
	.align	2
.LC3:
	.string	"fae12345678"
	.align	2
.LC4:
	.string	"AIOT@FAE"
	.align	2
.LC5:
	.string	"[APP] [EVT] SCAN Done %lld\r\n"
	.align	2
.LC6:
	.string	"[APP] [EVT] disconnect %lld\r\n"
	.align	2
.LC7:
	.string	"[APP] [EVT] Connecting %lld\r\n"
	.align	2
.LC8:
	.string	"[APP] [EVT] Reconnect %lld\r\n"
	.align	2
.LC9:
	.string	"[APP] [EVT] connected %lld\r\n"
	.align	2
.LC10:
	.string	"[APP] [EVT] GOT IP %lld\r\n"
	.align	2
.LC11:
	.string	"[SYS] Memory left is %d Bytes\r\n"
	.align	2
.LC12:
	.string	"https_get_task"
	.align	2
.LC13:
	.string	"[APP] [EVT] [PROV] [SSID] %lld: %s\r\n"
	.align	2
.LC14:
	.string	"[APP] [EVT] [PROV] [BSSID] %lld: %s\r\n"
	.align	2
.LC15:
	.string	"[APP] [EVT] [PROV] [PASSWD] %lld: %s\r\n"
	.align	2
.LC16:
	.string	"[APP] [EVT] [PROV] [CONNECT] %lld\r\n"
	.align	2
.LC17:
	.string	"connecting to %s:%s...\r\n"
	.align	2
.LC18:
	.string	"[APP] [EVT] [PROV] [DISCONNECT] %lld\r\n"
	.align	2
.LC19:
	.string	"[APP] [EVT] Unknown code %u, %lld\r\n"
	.section	.text.event_cb_wifi_event,"ax",@progbits
	.align	1
	.type	event_cb_wifi_event, @function
event_cb_wifi_event:
.LFB30:
	.loc 1 54 1 is_stmt 1
	.cfi_startproc
.LVL11:
	.loc 1 55 5
	.loc 1 56 5
	.loc 1 58 5
	.loc 1 54 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.loc 1 58 18
	lhu	s1,6(a0)
	li	a4,16
	addi	a5,s1,-1
	slli	a5,a5,16
	srli	a5,a5,16
	bgtu	a5,a4,.L6
	lui	a4,%hi(.L8)
	slli	a5,a5,2
	addi	a4,a4,%lo(.L8)
	add	a5,a5,a4
	lw	a5,0(a5)
	mv	s0,a0
	jr	a5
	.section	.rodata.event_cb_wifi_event,"a",@progbits
	.align	2
	.align	2
.L8:
	.word	.L20
	.word	.L19
	.word	.L18
	.word	.L16
	.word	.L17
	.word	.L16
	.word	.L15
	.word	.L14
	.word	.L13
	.word	.L6
	.word	.L6
	.word	.L6
	.word	.L12
	.word	.L11
	.word	.L10
	.word	.L9
	.word	.L7
	.section	.text.event_cb_wifi_event
.L20:
	.loc 1 62 9 is_stmt 1
	call	aos_now_ms
.LVL12:
	mv	a2,a0
	lui	a0,%hi(.LC1)
	mv	a3,a1
	addi	a0,a0,%lo(.LC1)
	call	printf
.LVL13:
	.loc 1 63 9
	.loc 1 167 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL14:
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
	.loc 1 63 9
	lui	a0,%hi(.LANCHOR0)
	.loc 1 167 1
	.loc 1 63 9
	addi	a0,a0,%lo(.LANCHOR0)
	.loc 1 167 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 63 9
	tail	wifi_mgmr_start_background
.LVL15:
.L19:
	.cfi_restore_state
	.loc 1 68 9 is_stmt 1
	call	aos_now_ms
.LVL16:
	mv	a2,a0
	lui	a0,%hi(.LC2)
	mv	a3,a1
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL17:
	.loc 1 71 9
	lui	a1,%hi(.LC3)
	lui	a0,%hi(.LC4)
	addi	a1,a1,%lo(.LC3)
	addi	a0,a0,%lo(.LC4)
.LVL18:
.L40:
	.loc 1 167 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 153 9
	tail	wifi_sta_connect
.LVL19:
.L13:
	.cfi_restore_state
	.loc 1 76 9 is_stmt 1
	call	aos_now_ms
.LVL20:
	mv	a2,a0
	lui	a0,%hi(.LC5)
	mv	a3,a1
	addi	a0,a0,%lo(.LC5)
.L41:
	.loc 1 167 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL21:
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 82 9
	tail	printf
.LVL22:
.L17:
	.cfi_restore_state
	.loc 1 82 9 is_stmt 1
	call	aos_now_ms
.LVL23:
	mv	a2,a0
	lui	a0,%hi(.LC6)
	mv	a3,a1
	addi	a0,a0,%lo(.LC6)
	j	.L41
.LVL24:
.L14:
	.loc 1 87 9
	call	aos_now_ms
.LVL25:
	mv	a2,a0
	lui	a0,%hi(.LC7)
	mv	a3,a1
	addi	a0,a0,%lo(.LC7)
	j	.L41
.LVL26:
.L18:
	.loc 1 92 9
	call	aos_now_ms
.LVL27:
	mv	a2,a0
	lui	a0,%hi(.LC8)
	mv	a3,a1
	addi	a0,a0,%lo(.LC8)
	j	.L41
.LVL28:
.L16:
	.loc 1 97 9
	call	aos_now_ms
.LVL29:
	mv	a2,a0
	lui	a0,%hi(.LC9)
	mv	a3,a1
	addi	a0,a0,%lo(.LC9)
	j	.L41
.LVL30:
.L15:
	.loc 1 107 9
	call	aos_now_ms
.LVL31:
	mv	a2,a0
	lui	a0,%hi(.LC10)
	mv	a3,a1
	addi	a0,a0,%lo(.LC10)
	call	printf
.LVL32:
	.loc 1 108 9
	call	xPortGetFreeHeapSize
.LVL33:
	mv	a1,a0
	lui	a0,%hi(.LC11)
	addi	a0,a0,%lo(.LC11)
	call	printf
.LVL34:
	.loc 1 110 9
	.loc 1 167 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL35:
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
	.loc 1 110 9
	li	a2,12288
	lui	a1,%hi(.LC12)
	lui	a0,%hi(https_get_task)
	.loc 1 167 1
	.loc 1 110 9
	li	a5,0
	li	a4,5
	li	a3,0
	addi	a2,a2,-2048
	addi	a1,a1,%lo(.LC12)
	addi	a0,a0,%lo(https_get_task)
	.loc 1 167 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 110 9
	tail	xTaskCreate
.LVL36:
.L12:
	.cfi_restore_state
	.loc 1 115 9 is_stmt 1
	call	aos_now_ms
.LVL37:
	.loc 1 117 21 is_stmt 0
	lw	a4,8(s0)
	.loc 1 115 9
	mv	a2,a0
	mv	a3,a1
	bne	a4,zero,.L21
	lui	a4,%hi(.LC0)
	addi	a4,a4,%lo(.LC0)
.L21:
	.loc 1 115 9 discriminator 4
	lui	a0,%hi(.LC13)
	addi	a0,a0,%lo(.LC13)
	call	printf
.LVL38:
	.loc 1 118 9 is_stmt 1 discriminator 4
	.loc 1 118 13 is_stmt 0 discriminator 4
	lui	a5,%hi(.LANCHOR1)
	lw	a0,%lo(.LANCHOR1)(a5)
	addi	s1,a5,%lo(.LANCHOR1)
.L44:
	.loc 1 141 12 discriminator 4
	beq	a0,zero,.L26
	.loc 1 143 13 is_stmt 1
	call	vPortFree
.LVL39:
	.loc 1 144 13
.L26:
	.loc 1 146 9
	.loc 1 146 18 is_stmt 0
	lw	a5,8(s0)
	sw	a5,0(s1)
	.loc 1 148 5 is_stmt 1
.L5:
	.loc 1 167 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL40:
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL41:
.L11:
	.cfi_restore_state
	.loc 1 128 9 is_stmt 1
	call	aos_now_ms
.LVL42:
	.loc 1 130 21 is_stmt 0
	lw	a4,8(s0)
	.loc 1 128 9
	mv	a2,a0
	mv	a3,a1
	bne	a4,zero,.L24
	lui	a4,%hi(.LC0)
	addi	a4,a4,%lo(.LC0)
.L24:
	.loc 1 128 9 discriminator 4
	lui	a0,%hi(.LC14)
	addi	a0,a0,%lo(.LC14)
	call	printf
.LVL43:
	.loc 1 131 9 is_stmt 1 discriminator 4
	.loc 1 131 18 is_stmt 0 discriminator 4
	lw	a0,8(s0)
	.loc 1 131 12 discriminator 4
	beq	a0,zero,.L5
	.loc 1 133 13 is_stmt 1
	.loc 1 167 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL44:
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 133 13
	tail	vPortFree
.LVL45:
.L10:
	.cfi_restore_state
	.loc 1 139 9 is_stmt 1
	call	aos_now_ms
.LVL46:
	.loc 1 140 21 is_stmt 0
	lw	a4,8(s0)
	.loc 1 139 9
	mv	a2,a0
	mv	a3,a1
	bne	a4,zero,.L25
	lui	a4,%hi(.LC0)
	addi	a4,a4,%lo(.LC0)
.L25:
	.loc 1 139 9 discriminator 4
	lui	a0,%hi(.LC15)
	addi	a0,a0,%lo(.LC15)
	call	printf
.LVL47:
	.loc 1 141 9 is_stmt 1 discriminator 4
	.loc 1 141 13 is_stmt 0 discriminator 4
	lui	a5,%hi(.LANCHOR2)
	lw	a0,%lo(.LANCHOR2)(a5)
	addi	s1,a5,%lo(.LANCHOR2)
	j	.L44
.LVL48:
.L9:
	.loc 1 151 9 is_stmt 1
	call	aos_now_ms
.LVL49:
	mv	a2,a0
	lui	a0,%hi(.LC16)
	mv	a3,a1
	addi	a0,a0,%lo(.LC16)
	.loc 1 152 9 is_stmt 0
	lui	s1,%hi(.LANCHOR2)
	lui	s0,%hi(.LANCHOR1)
.LVL50:
	.loc 1 151 9
	call	printf
.LVL51:
	.loc 1 152 9 is_stmt 1
	addi	s1,s1,%lo(.LANCHOR2)
	addi	s0,s0,%lo(.LANCHOR1)
	lw	a1,0(s0)
	lw	a2,0(s1)
	lui	a0,%hi(.LC17)
	addi	a0,a0,%lo(.LC17)
	call	printf
.LVL52:
	.loc 1 153 9
	lw	a1,0(s1)
	lw	a0,0(s0)
	j	.L40
.LVL53:
.L7:
	.loc 1 158 9
	call	aos_now_ms
.LVL54:
	mv	a2,a0
	lui	a0,%hi(.LC18)
	mv	a3,a1
	addi	a0,a0,%lo(.LC18)
	j	.L41
.LVL55:
.L6:
	.loc 1 163 9
	call	aos_now_ms
.LVL56:
	.loc 1 167 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 163 9
	mv	a3,a1
	mv	a1,s1
	.loc 1 167 1
	lw	s1,4(sp)
	.cfi_restore 9
	.loc 1 163 9
	mv	a2,a0
	lui	a0,%hi(.LC19)
	.loc 1 167 1
	.loc 1 163 9
	addi	a0,a0,%lo(.LC19)
	.loc 1 167 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 163 9
	tail	printf
.LVL57:
	.cfi_endproc
.LFE30:
	.size	event_cb_wifi_event, .-event_cb_wifi_event
	.section	.rodata.main.str1.4,"aMS",@progbits,1
	.align	2
.LC20:
	.string	"[OS] Starting TCP/IP Stack...\r\n"
	.align	2
.LC21:
	.string	"[OS] proc_main_entry task...\r\n"
	.align	2
.LC22:
	.string	"main_entry"
	.section	.text.startup.main,"ax",@progbits
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB32:
	.loc 1 180 1 is_stmt 1
	.cfi_startproc
	.loc 1 181 5
	lui	a0,%hi(.LC20)
	.loc 1 180 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 181 5
	addi	a0,a0,%lo(.LC20)
	.loc 1 180 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 181 5
	call	puts
.LVL58:
	.loc 1 182 5 is_stmt 1
	li	a1,0
	li	a0,0
	call	tcpip_init
.LVL59:
	.loc 1 183 5
	lui	a0,%hi(.LC21)
	addi	a0,a0,%lo(.LC21)
	call	puts
.LVL60:
	.loc 1 184 5
	.loc 1 185 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 184 5
	lui	a1,%hi(.LC22)
	lui	a0,%hi(proc_main_entry)
	.loc 1 185 1
	.loc 1 184 5
	li	a5,0
	li	a4,15
	li	a3,0
	li	a2,1024
	addi	a1,a1,%lo(.LC22)
	addi	a0,a0,%lo(proc_main_entry)
	.loc 1 185 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 184 5
	tail	xTaskCreate
.LVL61:
	.cfi_endproc
.LFE32:
	.size	main, .-main
	.globl	_fsymf_info_https_mbedtlsmain
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC23:
	.string	"https_mbedtls.main"
	.comm	_fsymf_level_https_mbedtlsmain,4,4
	.align	2
.LC24:
	.string	"https_mbedtls"
	.weak	_fsymc_level_https_mbedtls
	.section	.sbss._fsymc_level_https_mbedtls,"aw",@nobits
	.align	2
	.type	_fsymc_level_https_mbedtls, @object
	.size	_fsymc_level_https_mbedtls, 4
_fsymc_level_https_mbedtls:
	.zero	4
	.section	.sbss.password.0,"aw",@nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	password.0, @object
	.size	password.0, 4
password.0:
	.zero	4
	.section	.sbss.ssid.1,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	ssid.1, @object
	.size	ssid.1, 4
ssid.1:
	.zero	4
	.section	.sdata.conf,"aw"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	conf, @object
	.size	conf, 8
conf:
	.string	"CN"
	.zero	5
	.section	.srodata.BLOG_HARD_DECLARE_DISABLE,"a"
	.align	2
	.type	BLOG_HARD_DECLARE_DISABLE, @object
	.size	BLOG_HARD_DECLARE_DISABLE, 4
BLOG_HARD_DECLARE_DISABLE:
	.zero	4
	.section	.static_blogcomponent_code.https_mbedtls,"a"
	.align	2
	.type	_fsymc_info_https_mbedtls, @object
	.size	_fsymc_info_https_mbedtls, 8
_fsymc_info_https_mbedtls:
	.word	_fsymc_level_https_mbedtls
	.word	.LC24
	.section	.static_blogfile_code.https_mbedtlsmain,"a"
	.align	2
	.type	_fsymf_info_https_mbedtlsmain, @object
	.size	_fsymf_info_https_mbedtlsmain, 8
_fsymf_info_https_mbedtlsmain:
	.word	_fsymf_level_https_mbedtlsmain
	.word	.LC23
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog_type.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog/blog.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/aos/yloop.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/netif.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_pm.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_manager/bl60x_wifi_driver/include/wifi_mgmr_ext.h"
	.file 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 10 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/tcpip.h"
	.file 11 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 12 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/hal_wifi.h"
	.file 13 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/aos/kernel.h"
	.file 14 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h"
	.file 15 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/memp.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x76b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF94
	.byte	0xc
	.4byte	.LASF95
	.4byte	.LASF96
	.4byte	.Ldebug_ranges0+0
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
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.byte	0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x62
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x7a
	.byte	0x5
	.4byte	0x69
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x6
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x7
	.byte	0x4
	.4byte	0x8a
	.byte	0x8
	.4byte	.LASF50
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x3
	.byte	0x22
	.byte	0xe
	.4byte	0xd4
	.byte	0x9
	.4byte	.LASF12
	.byte	0
	.byte	0x9
	.4byte	.LASF13
	.byte	0x1
	.byte	0x9
	.4byte	.LASF14
	.byte	0x2
	.byte	0x9
	.4byte	.LASF15
	.byte	0x3
	.byte	0x9
	.4byte	.LASF16
	.byte	0x4
	.byte	0x9
	.4byte	.LASF17
	.byte	0x5
	.byte	0x9
	.4byte	.LASF18
	.byte	0x6
	.byte	0
	.byte	0x4
	.4byte	.LASF19
	.byte	0x3
	.byte	0x2a
	.byte	0x3
	.4byte	0x97
	.byte	0xa
	.4byte	.LASF65
	.byte	0x8
	.byte	0x3
	.byte	0x2c
	.byte	0x10
	.4byte	0x108
	.byte	0xb
	.4byte	.LASF20
	.byte	0x3
	.byte	0x2d
	.byte	0x13
	.4byte	0x108
	.byte	0
	.byte	0xb
	.4byte	.LASF21
	.byte	0x3
	.byte	0x2e
	.byte	0xb
	.4byte	0x91
	.byte	0x4
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xd4
	.byte	0x4
	.4byte	.LASF22
	.byte	0x3
	.byte	0x2f
	.byte	0x3
	.4byte	0xe0
	.byte	0x5
	.4byte	0x10e
	.byte	0xc
	.4byte	.LASF23
	.byte	0x4
	.byte	0x38
	.byte	0x1b
	.4byte	0x75
	.byte	0x5
	.byte	0x3
	.4byte	BLOG_HARD_DECLARE_DISABLE
	.byte	0xd
	.4byte	.LASF25
	.byte	0x4
	.byte	0x45
	.byte	0x12
	.4byte	0xd4
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_level_https_mbedtls
	.byte	0xc
	.4byte	.LASF24
	.byte	0x4
	.byte	0x46
	.byte	0x1e
	.4byte	0x11a
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_info_https_mbedtls
	.byte	0xd
	.4byte	.LASF26
	.byte	0x4
	.byte	0x53
	.byte	0x12
	.4byte	0xd4
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_level_https_mbedtlsmain
	.byte	0xd
	.4byte	.LASF27
	.byte	0x4
	.byte	0x54
	.byte	0x17
	.4byte	0x11a
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_info_https_mbedtlsmain
	.byte	0xe
	.byte	0x10
	.byte	0x5
	.byte	0x64
	.byte	0x9
	.4byte	0x1c4
	.byte	0xb
	.4byte	.LASF28
	.byte	0x5
	.byte	0x66
	.byte	0xe
	.4byte	0x69
	.byte	0
	.byte	0xb
	.4byte	.LASF29
	.byte	0x5
	.byte	0x68
	.byte	0xe
	.4byte	0x56
	.byte	0x4
	.byte	0xb
	.4byte	.LASF30
	.byte	0x5
	.byte	0x6a
	.byte	0xe
	.4byte	0x56
	.byte	0x6
	.byte	0xb
	.4byte	.LASF31
	.byte	0x5
	.byte	0x6c
	.byte	0x13
	.4byte	0x7a
	.byte	0x8
	.byte	0xb
	.4byte	.LASF32
	.byte	0x5
	.byte	0x6e
	.byte	0x13
	.4byte	0x7a
	.byte	0xc
	.byte	0
	.byte	0x4
	.4byte	.LASF33
	.byte	0x5
	.byte	0x6f
	.byte	0x3
	.4byte	0x179
	.byte	0x7
	.byte	0x4
	.4byte	0x1c4
	.byte	0xf
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xf
	.byte	0x34
	.byte	0xe
	.4byte	0x245
	.byte	0x9
	.4byte	.LASF34
	.byte	0
	.byte	0x9
	.4byte	.LASF35
	.byte	0x1
	.byte	0x9
	.4byte	.LASF36
	.byte	0x2
	.byte	0x9
	.4byte	.LASF37
	.byte	0x3
	.byte	0x9
	.4byte	.LASF38
	.byte	0x4
	.byte	0x9
	.4byte	.LASF39
	.byte	0x5
	.byte	0x9
	.4byte	.LASF40
	.byte	0x6
	.byte	0x9
	.4byte	.LASF41
	.byte	0x7
	.byte	0x9
	.4byte	.LASF42
	.byte	0x8
	.byte	0x9
	.4byte	.LASF43
	.byte	0x9
	.byte	0x9
	.4byte	.LASF44
	.byte	0xa
	.byte	0x9
	.4byte	.LASF45
	.byte	0xb
	.byte	0x9
	.4byte	.LASF46
	.byte	0xc
	.byte	0x9
	.4byte	.LASF47
	.byte	0xd
	.byte	0x9
	.4byte	.LASF48
	.byte	0xe
	.byte	0x9
	.4byte	.LASF49
	.byte	0xf
	.byte	0
	.byte	0x8
	.4byte	.LASF51
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x6
	.byte	0x71
	.byte	0x6
	.4byte	0x26a
	.byte	0x9
	.4byte	.LASF52
	.byte	0
	.byte	0x9
	.4byte	.LASF53
	.byte	0x1
	.byte	0x9
	.4byte	.LASF54
	.byte	0x2
	.byte	0
	.byte	0x8
	.4byte	.LASF55
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x7
	.byte	0x34
	.byte	0x6
	.4byte	0x2ad
	.byte	0x9
	.4byte	.LASF56
	.byte	0
	.byte	0x9
	.4byte	.LASF57
	.byte	0x1
	.byte	0x9
	.4byte	.LASF58
	.byte	0x2
	.byte	0x9
	.4byte	.LASF59
	.byte	0x3
	.byte	0x9
	.4byte	.LASF60
	.byte	0x4
	.byte	0x9
	.4byte	.LASF61
	.byte	0x5
	.byte	0x9
	.4byte	.LASF62
	.byte	0x6
	.byte	0x9
	.4byte	.LASF63
	.byte	0x7
	.byte	0
	.byte	0x4
	.4byte	.LASF64
	.byte	0x8
	.byte	0x64
	.byte	0xf
	.4byte	0x88
	.byte	0xa
	.4byte	.LASF66
	.byte	0x8
	.byte	0x8
	.byte	0x97
	.byte	0x10
	.4byte	0x2e1
	.byte	0xb
	.4byte	.LASF67
	.byte	0x8
	.byte	0x98
	.byte	0xa
	.4byte	0x2e1
	.byte	0
	.byte	0xb
	.4byte	.LASF68
	.byte	0x8
	.byte	0x99
	.byte	0x9
	.4byte	0x25
	.byte	0x4
	.byte	0
	.byte	0x10
	.4byte	0x8a
	.4byte	0x2f1
	.byte	0x11
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.byte	0x4
	.4byte	.LASF69
	.byte	0x8
	.byte	0x9a
	.byte	0x3
	.4byte	0x2b9
	.byte	0xc
	.4byte	.LASF70
	.byte	0x1
	.byte	0x1d
	.byte	0x14
	.4byte	0x2f1
	.byte	0x5
	.byte	0x3
	.4byte	conf
	.byte	0x12
	.4byte	.LASF97
	.byte	0x1
	.byte	0xb3
	.byte	0x6
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x1
	.byte	0x9c
	.4byte	0x39e
	.byte	0x13
	.4byte	.LVL58
	.4byte	0x6c3
	.4byte	0x33c
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC20
	.byte	0
	.byte	0x13
	.4byte	.LVL59
	.4byte	0x6cf
	.4byte	0x354
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x13
	.4byte	.LVL60
	.4byte	0x6c3
	.4byte	0x36b
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC21
	.byte	0
	.byte	0x15
	.4byte	.LVL61
	.4byte	0x6db
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	proc_main_entry
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC22
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x400
	.byte	0x14
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x14
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x3f
	.byte	0x14
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LASF71
	.byte	0x1
	.byte	0xa9
	.byte	0xd
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x1
	.byte	0x9c
	.4byte	0x41b
	.byte	0x17
	.4byte	.LASF73
	.byte	0x1
	.byte	0xa9
	.byte	0x23
	.4byte	0x88
	.4byte	.LLST0
	.byte	0x13
	.4byte	.LVL2
	.4byte	0x6e8
	.4byte	0x3e5
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	event_cb_wifi_event
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x18
	.4byte	.LVL3
	.4byte	0x6f4
	.byte	0x13
	.4byte	.LVL4
	.4byte	0x700
	.4byte	0x40b
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x15
	.4byte	.LVL5
	.4byte	0x70c
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LASF72
	.byte	0x1
	.byte	0x35
	.byte	0xd
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x1
	.byte	0x9c
	.4byte	0x647
	.byte	0x17
	.4byte	.LASF74
	.byte	0x1
	.byte	0x35
	.byte	0x30
	.4byte	0x1d0
	.4byte	.LLST4
	.byte	0x17
	.4byte	.LASF75
	.byte	0x1
	.byte	0x35
	.byte	0x3d
	.4byte	0x88
	.4byte	.LLST5
	.byte	0xc
	.4byte	.LASF76
	.byte	0x1
	.byte	0x37
	.byte	0x12
	.4byte	0x91
	.byte	0x5
	.byte	0x3
	.4byte	ssid.1
	.byte	0xc
	.4byte	.LASF77
	.byte	0x1
	.byte	0x38
	.byte	0x12
	.4byte	0x91
	.byte	0x5
	.byte	0x3
	.4byte	password.0
	.byte	0x18
	.4byte	.LVL12
	.4byte	0x719
	.byte	0x13
	.4byte	.LVL13
	.4byte	0x726
	.4byte	0x495
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0x19
	.4byte	.LVL15
	.4byte	0x732
	.4byte	0x4ac
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0x18
	.4byte	.LVL16
	.4byte	0x719
	.byte	0x13
	.4byte	.LVL17
	.4byte	0x726
	.4byte	0x4cc
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x1a
	.4byte	.LVL19
	.4byte	0x647
	.byte	0x18
	.4byte	.LVL20
	.4byte	0x719
	.byte	0x1a
	.4byte	.LVL22
	.4byte	0x726
	.byte	0x18
	.4byte	.LVL23
	.4byte	0x719
	.byte	0x18
	.4byte	.LVL25
	.4byte	0x719
	.byte	0x18
	.4byte	.LVL27
	.4byte	0x719
	.byte	0x18
	.4byte	.LVL29
	.4byte	0x719
	.byte	0x18
	.4byte	.LVL31
	.4byte	0x719
	.byte	0x13
	.4byte	.LVL32
	.4byte	0x726
	.4byte	0x52b
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.byte	0x18
	.4byte	.LVL33
	.4byte	0x73e
	.byte	0x13
	.4byte	.LVL34
	.4byte	0x726
	.4byte	0x54b
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.byte	0x19
	.4byte	.LVL36
	.4byte	0x6db
	.4byte	0x578
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x2800
	.byte	0x14
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x14
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x35
	.byte	0x14
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x18
	.4byte	.LVL37
	.4byte	0x719
	.byte	0x13
	.4byte	.LVL38
	.4byte	0x726
	.4byte	0x598
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.byte	0x18
	.4byte	.LVL39
	.4byte	0x74a
	.byte	0x18
	.4byte	.LVL42
	.4byte	0x719
	.byte	0x13
	.4byte	.LVL43
	.4byte	0x726
	.4byte	0x5c1
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.byte	0x1a
	.4byte	.LVL45
	.4byte	0x74a
	.byte	0x18
	.4byte	.LVL46
	.4byte	0x719
	.byte	0x13
	.4byte	.LVL47
	.4byte	0x726
	.4byte	0x5ea
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.byte	0x18
	.4byte	.LVL49
	.4byte	0x719
	.byte	0x13
	.4byte	.LVL51
	.4byte	0x726
	.4byte	0x60a
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0
	.byte	0x13
	.4byte	.LVL52
	.4byte	0x726
	.4byte	0x621
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.byte	0x18
	.4byte	.LVL54
	.4byte	0x719
	.byte	0x18
	.4byte	.LVL56
	.4byte	0x719
	.byte	0x15
	.4byte	.LVL57
	.4byte	0x726
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LASF78
	.byte	0x1
	.byte	0x27
	.byte	0xd
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x1
	.byte	0x9c
	.4byte	0x6c3
	.byte	0x17
	.4byte	.LASF76
	.byte	0x1
	.byte	0x27
	.byte	0x24
	.4byte	0x91
	.4byte	.LLST1
	.byte	0x17
	.4byte	.LASF77
	.byte	0x1
	.byte	0x27
	.byte	0x30
	.4byte	0x91
	.4byte	.LLST2
	.byte	0x1b
	.4byte	.LASF79
	.byte	0x1
	.byte	0x29
	.byte	0x16
	.4byte	0x2ad
	.4byte	.LLST3
	.byte	0x18
	.4byte	.LVL7
	.4byte	0x756
	.byte	0x15
	.4byte	.LVL10
	.4byte	0x762
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x72
	.byte	0x6c
	.byte	0x6
	.byte	0x14
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x14
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x30
	.byte	0x14
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x30
	.byte	0x14
	.byte	0x1
	.byte	0x60
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x9
	.byte	0xdd
	.byte	0x5
	.byte	0x1c
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0xa
	.byte	0x4d
	.byte	0x6
	.byte	0x1d
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0xb
	.2byte	0x14a
	.byte	0xd
	.byte	0x1c
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0x5
	.byte	0x81
	.byte	0x5
	.byte	0x1c
	.4byte	.LASF84
	.4byte	.LASF84
	.byte	0xc
	.byte	0x3
	.byte	0x5
	.byte	0x1c
	.4byte	.LASF85
	.4byte	.LASF85
	.byte	0x5
	.byte	0x97
	.byte	0x5
	.byte	0x1d
	.4byte	.LASF86
	.4byte	.LASF86
	.byte	0xb
	.2byte	0x2c2
	.byte	0x6
	.byte	0x1d
	.4byte	.LASF87
	.4byte	.LASF87
	.byte	0xd
	.2byte	0x1ef
	.byte	0xf
	.byte	0x1c
	.4byte	.LASF88
	.4byte	.LASF88
	.byte	0x9
	.byte	0xc8
	.byte	0x5
	.byte	0x1c
	.4byte	.LASF89
	.4byte	.LASF89
	.byte	0x8
	.byte	0xa1
	.byte	0x6
	.byte	0x1c
	.4byte	.LASF90
	.4byte	.LASF90
	.byte	0xe
	.byte	0x96
	.byte	0x8
	.byte	0x1c
	.4byte	.LASF91
	.4byte	.LASF91
	.byte	0xe
	.byte	0x94
	.byte	0x6
	.byte	0x1c
	.4byte	.LASF92
	.4byte	.LASF92
	.byte	0x8
	.byte	0xa4
	.byte	0x12
	.byte	0x1c
	.4byte	.LASF93
	.4byte	.LASF93
	.byte	0x8
	.byte	0xaf
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
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
	.byte	0xd
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
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x10
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x16
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
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
	.byte	0x1b
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
	.byte	0x1c
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
	.byte	0x1d
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
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL11
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12-1
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL41
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
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL50
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL55
	.4byte	.LVL56-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL56-1
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL11
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL12-1
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL16-1
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL20-1
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL23-1
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL25-1
	.4byte	.LVL26
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL27-1
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL29-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL29-1
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL31-1
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL37-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL37-1
	.4byte	.LVL41
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL42-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL42-1
	.4byte	.LVL45
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL46-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL46-1
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL49-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL49-1
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL54-1
	.4byte	.LVL55
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL56-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL56-1
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL6
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7-1
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL8
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL10-1
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL7-1
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL9
	.4byte	.LFE29
	.2byte	0x2
	.byte	0x72
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF39:
	.string	"MEMP_ALTCP_PCB"
.LASF65:
	.string	"_blog_info"
.LASF27:
	.string	"_fsymf_info_https_mbedtlsmain"
.LASF26:
	.string	"_fsymf_level_https_mbedtlsmain"
.LASF83:
	.string	"aos_register_event_filter"
.LASF51:
	.string	"lwip_internal_netif_client_data_index"
.LASF56:
	.string	"PM_MODE_STA_NONE"
.LASF84:
	.string	"hal_wifi_start_firmware_task"
.LASF2:
	.string	"short int"
.LASF76:
	.string	"ssid"
.LASF38:
	.string	"MEMP_TCP_SEG"
.LASF55:
	.string	"PM_LEVEL"
.LASF81:
	.string	"tcpip_init"
.LASF97:
	.string	"main"
.LASF77:
	.string	"password"
.LASF74:
	.string	"event"
.LASF89:
	.string	"wifi_mgmr_start_background"
.LASF31:
	.string	"value"
.LASF45:
	.string	"MEMP_SYS_TIMEOUT"
.LASF63:
	.string	"PM_MODE_MAX"
.LASF54:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF68:
	.string	"channel_nums"
.LASF16:
	.string	"BLOG_LEVEL_ERROR"
.LASF30:
	.string	"code"
.LASF70:
	.string	"conf"
.LASF37:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF92:
	.string	"wifi_mgmr_sta_enable"
.LASF8:
	.string	"uint32_t"
.LASF46:
	.string	"MEMP_NETDB"
.LASF50:
	.string	"_blog_leve"
.LASF58:
	.string	"PM_MODE_STA_MESH"
.LASF87:
	.string	"aos_now_ms"
.LASF4:
	.string	"long long int"
.LASF10:
	.string	"long long unsigned int"
.LASF23:
	.string	"BLOG_HARD_DECLARE_DISABLE"
.LASF71:
	.string	"proc_main_entry"
.LASF3:
	.string	"long int"
.LASF78:
	.string	"wifi_sta_connect"
.LASF88:
	.string	"printf"
.LASF69:
	.string	"wifi_conf_t"
.LASF62:
	.string	"PM_MODE_AP_IDLE"
.LASF90:
	.string	"xPortGetFreeHeapSize"
.LASF93:
	.string	"wifi_mgmr_sta_connect"
.LASF75:
	.string	"private_data"
.LASF52:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF15:
	.string	"BLOG_LEVEL_WARN"
.LASF43:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF5:
	.string	"unsigned char"
.LASF66:
	.string	"wifi_conf"
.LASF57:
	.string	"PM_MODE_STA_IDLE"
.LASF67:
	.string	"country_code"
.LASF49:
	.string	"MEMP_MAX"
.LASF17:
	.string	"BLOG_LEVEL_ASSERT"
.LASF1:
	.string	"signed char"
.LASF53:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF29:
	.string	"type"
.LASF0:
	.string	"unsigned int"
.LASF7:
	.string	"uint16_t"
.LASF14:
	.string	"BLOG_LEVEL_INFO"
.LASF96:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/https_mbedtls"
.LASF80:
	.string	"puts"
.LASF44:
	.string	"MEMP_IGMP_GROUP"
.LASF28:
	.string	"time"
.LASF25:
	.string	"_fsymc_level_https_mbedtls"
.LASF6:
	.string	"short unsigned int"
.LASF24:
	.string	"_fsymc_info_https_mbedtls"
.LASF79:
	.string	"wifi_interface"
.LASF11:
	.string	"char"
.LASF42:
	.string	"MEMP_TCPIP_MSG_API"
.LASF86:
	.string	"vTaskDelete"
.LASF59:
	.string	"PM_MODE_STA_DOZE"
.LASF82:
	.string	"xTaskCreate"
.LASF47:
	.string	"MEMP_PBUF"
.LASF33:
	.string	"input_event_t"
.LASF12:
	.string	"BLOG_LEVEL_ALL"
.LASF85:
	.string	"aos_post_event"
.LASF22:
	.string	"blog_info_t"
.LASF9:
	.string	"long unsigned int"
.LASF34:
	.string	"MEMP_RAW_PCB"
.LASF91:
	.string	"vPortFree"
.LASF72:
	.string	"event_cb_wifi_event"
.LASF20:
	.string	"level"
.LASF48:
	.string	"MEMP_PBUF_POOL"
.LASF21:
	.string	"name"
.LASF41:
	.string	"MEMP_NETCONN"
.LASF64:
	.string	"wifi_interface_t"
.LASF60:
	.string	"PM_MODE_STA_COEX"
.LASF73:
	.string	"pvParameters"
.LASF36:
	.string	"MEMP_TCP_PCB"
.LASF18:
	.string	"BLOG_LEVEL_NEVER"
.LASF61:
	.string	"PM_MODE_STA_DOWN"
.LASF19:
	.string	"blog_level_t"
.LASF35:
	.string	"MEMP_UDP_PCB"
.LASF13:
	.string	"BLOG_LEVEL_DEBUG"
.LASF95:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/https_mbedtls/main.c"
.LASF32:
	.string	"extra"
.LASF40:
	.string	"MEMP_NETBUF"
.LASF94:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
