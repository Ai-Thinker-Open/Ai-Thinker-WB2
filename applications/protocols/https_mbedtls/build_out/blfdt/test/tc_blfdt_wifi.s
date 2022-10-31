	.file	"tc_blfdt_wifi.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.tc_fdt_wifi_module.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"wifi"
	.align	2
.LC1:
	.string	"tc_blfdt_wifi.c"
	.align	2
.LC2:
	.string	"ERROR "
	.align	2
.LC3:
	.string	"[%10u][%s: %s:%4d] wifi NULL.\r\n"
	.align	2
.LC4:
	.string	"region"
	.align	2
.LC5:
	.string	"country_code"
	.align	2
.LC6:
	.string	"INFO  "
	.align	2
.LC7:
	.string	"[%10u][%s: %s:%4d] value = %ld, lentmp = %d\r\n"
	.align	2
.LC8:
	.string	"[%10u][%s: %s:%4d] country_code NULL.\r\n"
	.align	2
.LC9:
	.string	"mac"
	.align	2
.LC10:
	.string	"sta_mac_addr"
	.align	2
.LC11:
	.string	"[%10u][%s: %s:%4d] sta_mac :\r\n"
	.align	2
.LC12:
	.string	"ap_mac_addr"
	.align	2
.LC13:
	.string	"[%10u][%s: %s:%4d] sta_mac_addr NULL.\r\n"
	.align	2
.LC14:
	.string	"[%10u][%s: %s:%4d] ap_mac :\r\n"
	.align	2
.LC15:
	.string	"ap"
	.align	2
.LC16:
	.string	"ssid"
	.align	2
.LC17:
	.string	"[%10u][%s: %s:%4d] ap string[%d] = %s, lentmp = %d\r\n"
	.align	2
.LC18:
	.string	"[%10u][%s: %s:%4d] ap NULL.\r\n"
	.align	2
.LC19:
	.string	"pwd"
	.align	2
.LC20:
	.string	"[%10u][%s: %s:%4d] pwd string[%d] = %s, lentmp = %d\r\n"
	.align	2
.LC21:
	.string	"[%10u][%s: %s:%4d] pwd NULL.\r\n"
	.align	2
.LC22:
	.string	"ap_channel"
	.align	2
.LC23:
	.string	"[%10u][%s: %s:%4d] ap_channel = %ld\r\n"
	.align	2
.LC24:
	.string	"auto_chan_detect"
	.align	2
.LC25:
	.string	"[%10u][%s: %s:%4d] ap_channel NULL.\r\n"
	.align	2
.LC26:
	.string	"[%10u][%s: %s:%4d] auto_chan_detect string[%d] = %s, lentmp = %d\r\n"
	.align	2
.LC27:
	.string	"[%10u][%s: %s:%4d] auto_chan_detect NULL.\r\n"
	.align	2
.LC28:
	.string	"brd_rf"
	.align	2
.LC29:
	.string	"xtal"
	.align	2
.LC30:
	.string	"[%10u][%s: %s:%4d] xtal :\r\n"
	.align	2
.LC31:
	.string	"pwr_table"
	.align	2
.LC32:
	.string	"[%10u][%s: %s:%4d] xtal NULL."
	.align	2
.LC33:
	.string	"[%10u][%s: %s:%4d] pwr_table :\r\n"
	.align	2
.LC34:
	.string	"channel_div_table"
	.align	2
.LC35:
	.string	"[%10u][%s: %s:%4d] pwr_table NULL. lentmp = %d.\r\n"
	.align	2
.LC36:
	.string	"[%10u][%s: %s:%4d] channel_div_table :\r\n"
	.align	2
.LC37:
	.string	"channel_cnt_table"
	.align	2
.LC38:
	.string	"[%10u][%s: %s:%4d] channel_div_table NULL.\r\n"
	.align	2
.LC39:
	.string	"[%10u][%s: %s:%4d] channel_cnt_table :\r\n"
	.align	2
.LC40:
	.string	"lo_fcal_div"
	.align	2
.LC41:
	.string	"[%10u][%s: %s:%4d] channel_cnt_table NULL.\r\n"
	.align	2
.LC42:
	.string	"[%10u][%s: %s:%4d] lo_fcal_div :\r\n"
	.align	2
.LC43:
	.string	"[%10u][%s: %s:%4d] lo_fcal_div NULL.\r\n"
	.align	2
.LC44:
	.string	"[%10u][%s: %s:%4d] brd_rf NULL.\r\n"
	.section	.text.tc_fdt_wifi_module,"ax",@progbits
	.align	1
	.type	tc_fdt_wifi_module, @function
tc_fdt_wifi_module:
.LFB39:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blfdt/test/tc_blfdt_wifi.c"
	.loc 1 10 1
	.cfi_startproc
	.loc 1 11 5
.LVL0:
	.loc 1 13 5
	.loc 1 14 5
	.loc 1 16 5
	.loc 1 17 5
	.loc 1 18 5
	.loc 1 10 1 is_stmt 0
	addi	sp,sp,-320
	.cfi_def_cfa_offset 320
	sw	s0,312(sp)
	.loc 1 23 19
	lui	a2,%hi(.LC0)
	.cfi_offset 8, -8
	lui	s0,%hi(tc_wifi_dtb)
	addi	a2,a2,%lo(.LC0)
	li	a1,0
	addi	a0,s0,%lo(tc_wifi_dtb)
	.loc 1 10 1
	sw	ra,316(sp)
	sw	s1,308(sp)
	sw	s2,304(sp)
	sw	s3,300(sp)
	sw	s4,296(sp)
	sw	s5,292(sp)
	sw	s6,288(sp)
	sw	s7,284(sp)
	sw	s8,280(sp)
	sw	s9,276(sp)
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.loc 1 18 9
	sw	zero,12(sp)
	.loc 1 19 5 is_stmt 1
.LVL1:
	.loc 1 20 5
	.loc 1 23 5
	.loc 1 23 19 is_stmt 0
	call	fdt_subnode_offset
.LVL2:
	.loc 1 25 5 is_stmt 1
	.loc 1 25 8 is_stmt 0
	bgt	a0,zero,.L2
	.loc 1 26 9 is_stmt 1
	.loc 1 26 14
	.loc 1 26 16
	.loc 1 26 67 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL3:
	.loc 1 26 16
	beq	a0,zero,.L3
	.loc 1 26 94 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL4:
.L101:
	.loc 1 26 123 discriminator 2
	mv	a1,a0
	.loc 1 26 16 discriminator 2
	lui	a3,%hi(.LC1)
	lui	a2,%hi(.LC2)
	lui	a0,%hi(.LC3)
	li	a4,26
	addi	a3,a3,%lo(.LC1)
	addi	a2,a2,%lo(.LC2)
	addi	a0,a0,%lo(.LC3)
.LVL5:
.L127:
	.loc 1 191 16 discriminator 4
	call	bl_printk
.LVL6:
	j	.L128
.LVL7:
.L3:
	.loc 1 26 123 discriminator 2
	call	xTaskGetTickCount
.LVL8:
	j	.L101
.LVL9:
.L2:
	.loc 1 31 15
	lui	a2,%hi(.LC4)
	mv	a1,a0
	mv	s3,a0
	.loc 1 31 5 is_stmt 1
	.loc 1 31 15 is_stmt 0
	addi	a2,a2,%lo(.LC4)
	addi	a0,s0,%lo(tc_wifi_dtb)
.LVL10:
	call	fdt_subnode_offset
.LVL11:
	mv	a1,a0
.LVL12:
	.loc 1 32 5 is_stmt 1
	.loc 1 32 8 is_stmt 0
	ble	a0,zero,.L6
	.loc 1 33 9 is_stmt 1
	.loc 1 33 21 is_stmt 0
	lui	a2,%hi(.LC5)
	addi	a3,sp,12
	addi	a2,a2,%lo(.LC5)
	addi	a0,s0,%lo(tc_wifi_dtb)
.LVL13:
	call	fdt_getprop
.LVL14:
	mv	s2,a0
.LVL15:
	.loc 1 34 9 is_stmt 1
	lui	s1,%hi(.LC1)
	.loc 1 34 12 is_stmt 0
	beq	a0,zero,.L7
	.loc 1 35 13 is_stmt 1
	.loc 1 35 18
	.loc 1 35 20
	.loc 1 35 85 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL16:
	.loc 1 35 20
	beq	a0,zero,.L8
	.loc 1 35 112 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL17:
.L102:
	.loc 1 35 20 discriminator 2
	lw	a4,0(s2)
.LVL18:
.LBB13:
.LBB14:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blfdt/inc/libfdt_env.h"
	.loc 2 93 5 is_stmt 1 discriminator 2
.LBE14:
.LBE13:
	.loc 1 35 20 is_stmt 0 discriminator 2
	lw	a6,12(sp)
	.loc 1 35 141 discriminator 2
	mv	a1,a0
.LBB16:
.LBB15:
	.loc 2 93 212 discriminator 2
	srli	a3,a4,24
	.loc 2 93 12 discriminator 2
	slli	a5,a4,24
	or	a5,a5,a3
	.loc 2 93 112 discriminator 2
	srli	a3,a4,8
	andi	a3,a3,0xff
	.loc 2 93 163 discriminator 2
	srli	a4,a4,16
	.loc 2 93 117 discriminator 2
	slli	a3,a3,16
	.loc 2 93 163 discriminator 2
	andi	a4,a4,0xff
	.loc 2 93 12 discriminator 2
	or	a5,a5,a3
	.loc 2 93 168 discriminator 2
	slli	a4,a4,8
.LBE15:
.LBE16:
	.loc 1 35 20 discriminator 2
	lui	a2,%hi(.LC6)
	lui	a0,%hi(.LC7)
	or	a5,a5,a4
	addi	a3,s1,%lo(.LC1)
	li	a4,35
	addi	a2,a2,%lo(.LC6)
	addi	a0,a0,%lo(.LC7)
	call	bl_printk
.LVL19:
	.loc 1 35 231 is_stmt 1 discriminator 2
	.loc 1 35 240 discriminator 2
.L6:
	.loc 1 42 5
	.loc 1 42 15 is_stmt 0
	lui	a2,%hi(.LC9)
	addi	a2,a2,%lo(.LC9)
	mv	a1,s3
	addi	a0,s0,%lo(tc_wifi_dtb)
	call	fdt_subnode_offset
.LVL20:
	mv	s2,a0
.LVL21:
	.loc 1 43 5 is_stmt 1
	.loc 1 43 8 is_stmt 0
	ble	a0,zero,.L13
	.loc 1 45 9 is_stmt 1
	.loc 1 45 21 is_stmt 0
	lui	a2,%hi(.LC10)
	mv	a1,a0
	addi	a3,sp,12
	addi	a2,a2,%lo(.LC10)
	addi	a0,s0,%lo(tc_wifi_dtb)
.LVL22:
	call	fdt_getprop
.LVL23:
	.loc 1 46 12
	lw	a4,12(sp)
	li	a5,6
	.loc 1 45 21
	mv	a1,a0
.LVL24:
	.loc 1 46 9 is_stmt 1
	lui	s1,%hi(.LC1)
	.loc 1 46 12 is_stmt 0
	bne	a4,a5,.L14
.LBB17:
	.loc 1 47 13 is_stmt 1
	.loc 1 49 13
	li	a2,6
	addi	a0,sp,16
.LVL25:
	call	memcpy
.LVL26:
	.loc 1 50 13
	.loc 1 50 18
	.loc 1 50 20
	.loc 1 50 70 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL27:
	.loc 1 50 20
	beq	a0,zero,.L15
	.loc 1 50 97 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL28:
.L104:
	.loc 1 50 126 discriminator 2
	mv	a1,a0
	.loc 1 50 20 discriminator 2
	lui	s4,%hi(.LC6)
	lui	a0,%hi(.LC11)
	li	a4,50
	addi	a3,s1,%lo(.LC1)
	addi	a2,s4,%lo(.LC6)
	addi	a0,a0,%lo(.LC11)
	call	bl_printk
.LVL29:
	.loc 1 50 182 is_stmt 1 discriminator 2
	.loc 1 50 191 discriminator 2
	.loc 1 51 13 discriminator 2
	li	a4,0
	li	a3,6
	addi	a2,sp,16
	li	a1,51
	addi	a0,s1,%lo(.LC1)
	call	log_buf_out
.LVL30:
.LBE17:
	.loc 1 58 9 discriminator 2
	.loc 1 58 21 is_stmt 0 discriminator 2
	lui	a2,%hi(.LC12)
	mv	a1,s2
	addi	a3,sp,12
	addi	a2,a2,%lo(.LC12)
	addi	a0,s0,%lo(tc_wifi_dtb)
	call	fdt_getprop
.LVL31:
	.loc 1 59 12 discriminator 2
	lw	a4,12(sp)
	li	a5,6
	.loc 1 58 21 discriminator 2
	mv	a1,a0
.LVL32:
	.loc 1 59 9 is_stmt 1 discriminator 2
	.loc 1 59 12 is_stmt 0 discriminator 2
	bne	a4,a5,.L13
.LBB18:
	.loc 1 60 13 is_stmt 1
	.loc 1 62 13
	li	a2,6
	addi	a0,sp,16
.LVL33:
	call	memcpy
.LVL34:
	.loc 1 63 13
	.loc 1 63 18
	.loc 1 63 20
	.loc 1 63 69 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL35:
	.loc 1 63 20
	beq	a0,zero,.L21
	.loc 1 63 96 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL36:
.L106:
	.loc 1 63 125 discriminator 2
	mv	a1,a0
	.loc 1 63 20 discriminator 2
	lui	a0,%hi(.LC14)
	li	a4,63
	addi	a3,s1,%lo(.LC1)
	addi	a2,s4,%lo(.LC6)
	addi	a0,a0,%lo(.LC14)
	call	bl_printk
.LVL37:
	.loc 1 63 181 is_stmt 1 discriminator 2
	.loc 1 63 190 discriminator 2
	.loc 1 64 13 discriminator 2
	li	a4,0
	li	a3,6
	addi	a2,sp,16
	li	a1,64
	addi	a0,s1,%lo(.LC1)
	call	log_buf_out
.LVL38:
.L13:
.LBE18:
	.loc 1 69 5
	.loc 1 69 15 is_stmt 0
	lui	a2,%hi(.LC15)
	addi	a2,a2,%lo(.LC15)
	mv	a1,s3
	addi	a0,s0,%lo(tc_wifi_dtb)
	call	fdt_subnode_offset
.LVL39:
	mv	s2,a0
.LVL40:
	.loc 1 70 5 is_stmt 1
	.loc 1 70 8 is_stmt 0
	ble	a0,zero,.L23
	.loc 1 72 9 is_stmt 1
	.loc 1 72 22 is_stmt 0
	lui	s5,%hi(.LC16)
	mv	a1,a0
	addi	a2,s5,%lo(.LC16)
	addi	a0,s0,%lo(tc_wifi_dtb)
.LVL41:
	call	fdt_stringlist_count
.LVL42:
	mv	s4,a0
.LVL43:
	.loc 1 73 9 is_stmt 1
	.loc 1 73 12 is_stmt 0
	ble	a0,zero,.L24
	.loc 1 74 20
	li	s1,0
	.loc 1 77 28
	lui	s7,%hi(.LC1)
	lui	s8,%hi(.LC6)
	lui	s9,%hi(.LC17)
.LVL44:
.L28:
	.loc 1 75 17 is_stmt 1
	.loc 1 75 26 is_stmt 0
	addi	a4,sp,12
	mv	a3,s1
	addi	a2,s5,%lo(.LC16)
	mv	a1,s2
	addi	a0,s0,%lo(tc_wifi_dtb)
	call	fdt_stringlist_get
.LVL45:
	.loc 1 76 20
	lw	a5,12(sp)
	.loc 1 75 26
	mv	s6,a0
.LVL46:
	.loc 1 76 17 is_stmt 1
	.loc 1 76 20 is_stmt 0
	ble	a5,zero,.L25
	.loc 1 77 21 is_stmt 1
	.loc 1 77 26
	.loc 1 77 28
	.loc 1 77 100 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL47:
	.loc 1 77 28
	beq	a0,zero,.L26
	.loc 1 77 127 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL48:
.L107:
	.loc 1 77 28 discriminator 2
	lw	a7,12(sp)
	.loc 1 77 156 discriminator 2
	mv	a1,a0
	.loc 1 77 28 discriminator 2
	mv	a6,s6
	mv	a5,s1
	li	a4,77
	addi	a3,s7,%lo(.LC1)
	addi	a2,s8,%lo(.LC6)
	addi	a0,s9,%lo(.LC17)
	call	bl_printk
.LVL49:
.L25:
	.loc 1 77 231 is_stmt 1 discriminator 5
	.loc 1 77 240 discriminator 5
	.loc 1 74 41 discriminator 5
	.loc 1 74 42 is_stmt 0 discriminator 5
	addi	s1,s1,1
.LVL50:
	.loc 1 74 25 is_stmt 1 discriminator 5
	.loc 1 74 13 is_stmt 0 discriminator 5
	bne	s4,s1,.L28
	.loc 1 86 9 is_stmt 1
	.loc 1 86 22 is_stmt 0
	lui	s5,%hi(.LC19)
	addi	a2,s5,%lo(.LC19)
	mv	a1,s2
	addi	a0,s0,%lo(tc_wifi_dtb)
	call	fdt_stringlist_count
.LVL51:
	mv	s4,a0
.LVL52:
	.loc 1 87 9 is_stmt 1
	.loc 1 87 12 is_stmt 0
	ble	a0,zero,.L32
	.loc 1 88 20
	li	s1,0
.LVL53:
	.loc 1 92 28
	lui	s7,%hi(.LC1)
	lui	s8,%hi(.LC6)
	lui	s9,%hi(.LC20)
.LVL54:
.L36:
	.loc 1 89 17 is_stmt 1
	.loc 1 89 26 is_stmt 0
	addi	a4,sp,12
	mv	a3,s1
	addi	a2,s5,%lo(.LC19)
	mv	a1,s2
	addi	a0,s0,%lo(tc_wifi_dtb)
	call	fdt_stringlist_get
.LVL55:
	.loc 1 90 20
	lw	a5,12(sp)
	.loc 1 89 26
	mv	s6,a0
.LVL56:
	.loc 1 90 17 is_stmt 1
	.loc 1 90 20 is_stmt 0
	ble	a5,zero,.L33
	.loc 1 92 21 is_stmt 1
	.loc 1 92 26
	.loc 1 92 28
	.loc 1 92 101 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL57:
	.loc 1 92 28
	beq	a0,zero,.L34
	.loc 1 92 128 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL58:
.L109:
	.loc 1 92 28 discriminator 2
	lw	a7,12(sp)
	.loc 1 92 157 discriminator 2
	mv	a1,a0
	.loc 1 92 28 discriminator 2
	mv	a6,s6
	mv	a5,s1
	li	a4,92
	addi	a3,s7,%lo(.LC1)
	addi	a2,s8,%lo(.LC6)
	addi	a0,s9,%lo(.LC20)
	call	bl_printk
.LVL59:
.L33:
	.loc 1 92 232 is_stmt 1 discriminator 5
	.loc 1 92 241 discriminator 5
	.loc 1 88 41 discriminator 5
	.loc 1 88 42 is_stmt 0 discriminator 5
	addi	s1,s1,1
.LVL60:
	.loc 1 88 25 is_stmt 1 discriminator 5
	.loc 1 88 13 is_stmt 0 discriminator 5
	bne	s4,s1,.L36
	.loc 1 101 9 is_stmt 1
	.loc 1 101 21 is_stmt 0
	lui	a2,%hi(.LC22)
	addi	a3,sp,12
	addi	a2,a2,%lo(.LC22)
	mv	a1,s2
	addi	a0,s0,%lo(tc_wifi_dtb)
	call	fdt_getprop
.LVL61:
	mv	s4,a0
.LVL62:
	.loc 1 102 9 is_stmt 1
	lui	s1,%hi(.LC1)
.LVL63:
	.loc 1 102 12 is_stmt 0
	beq	a0,zero,.L40
	.loc 1 103 13 is_stmt 1
	.loc 1 103 18
	.loc 1 103 20
	.loc 1 103 77 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL64:
	.loc 1 103 20
	beq	a0,zero,.L41
	.loc 1 103 104 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL65:
.L111:
	.loc 1 103 20 discriminator 2
	lw	a4,0(s4)
.LVL66:
.LBB19:
.LBB20:
	.loc 2 93 5 is_stmt 1 discriminator 2
.LBE20:
.LBE19:
	.loc 1 103 133 is_stmt 0 discriminator 2
	mv	a1,a0
	.loc 1 103 20 discriminator 2
	lui	s4,%hi(.LC6)
.LVL67:
.LBB22:
.LBB21:
	.loc 2 93 212 discriminator 2
	srli	a3,a4,24
	.loc 2 93 12 discriminator 2
	slli	a5,a4,24
	or	a5,a5,a3
	.loc 2 93 112 discriminator 2
	srli	a3,a4,8
	andi	a3,a3,0xff
	.loc 2 93 163 discriminator 2
	srli	a4,a4,16
	.loc 2 93 117 discriminator 2
	slli	a3,a3,16
	.loc 2 93 163 discriminator 2
	andi	a4,a4,0xff
	.loc 2 93 12 discriminator 2
	or	a5,a5,a3
	.loc 2 93 168 discriminator 2
	slli	a4,a4,8
.LBE21:
.LBE22:
	.loc 1 103 20 discriminator 2
	lui	a0,%hi(.LC23)
	or	a5,a5,a4
	addi	a3,s1,%lo(.LC1)
	li	a4,103
	addi	a2,s4,%lo(.LC6)
	addi	a0,a0,%lo(.LC23)
	call	bl_printk
.LVL68:
	.loc 1 103 216 is_stmt 1 discriminator 2
	.loc 1 103 225 discriminator 2
	.loc 1 110 9 discriminator 2
	.loc 1 110 22 is_stmt 0 discriminator 2
	lui	s7,%hi(.LC24)
	addi	a2,s7,%lo(.LC24)
	mv	a1,s2
	addi	a0,s0,%lo(tc_wifi_dtb)
	call	fdt_stringlist_count
.LVL69:
	mv	s6,a0
.LVL70:
	.loc 1 111 9 is_stmt 1 discriminator 2
	.loc 1 112 20 is_stmt 0 discriminator 2
	li	s5,0
	.loc 1 111 12 discriminator 2
	ble	a0,zero,.L94
	.loc 1 115 28
	lui	s9,%hi(.LC26)
.LVL71:
.L43:
	.loc 1 113 17 is_stmt 1
	.loc 1 113 26 is_stmt 0
	addi	a4,sp,12
	mv	a3,s5
	addi	a2,s7,%lo(.LC24)
	mv	a1,s2
	addi	a0,s0,%lo(tc_wifi_dtb)
	call	fdt_stringlist_get
.LVL72:
	.loc 1 114 20
	lw	a5,12(sp)
	.loc 1 113 26
	mv	s8,a0
.LVL73:
	.loc 1 114 17 is_stmt 1
	.loc 1 114 20 is_stmt 0
	ble	a5,zero,.L47
	.loc 1 115 21 is_stmt 1
	.loc 1 115 26
	.loc 1 115 28
	.loc 1 115 114 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL74:
	.loc 1 115 28
	beq	a0,zero,.L48
	.loc 1 115 141 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL75:
.L113:
	.loc 1 115 28 discriminator 2
	lw	a7,12(sp)
	.loc 1 115 170 discriminator 2
	mv	a1,a0
	.loc 1 115 28 discriminator 2
	mv	a6,s8
	mv	a5,s5
	li	a4,115
	addi	a3,s1,%lo(.LC1)
	addi	a2,s4,%lo(.LC6)
	addi	a0,s9,%lo(.LC26)
	call	bl_printk
.LVL76:
.L47:
	.loc 1 115 246 is_stmt 1 discriminator 5
	.loc 1 115 255 discriminator 5
	.loc 1 112 41 discriminator 5
	.loc 1 112 42 is_stmt 0 discriminator 5
	addi	s5,s5,1
.LVL77:
	.loc 1 112 25 is_stmt 1 discriminator 5
	.loc 1 112 13 is_stmt 0 discriminator 5
	bne	s6,s5,.L43
	.loc 1 128 5 is_stmt 1
	.loc 1 128 15 is_stmt 0
	lui	a2,%hi(.LC28)
	addi	a2,a2,%lo(.LC28)
	mv	a1,s3
	addi	a0,s0,%lo(tc_wifi_dtb)
	call	fdt_subnode_offset
.LVL78:
	mv	s2,a0
.LVL79:
	.loc 1 129 5 is_stmt 1
	.loc 1 129 8 is_stmt 0
	ble	a0,zero,.L55
	.loc 1 131 9 is_stmt 1
	.loc 1 131 21 is_stmt 0
	lui	a2,%hi(.LC29)
	mv	a1,a0
	addi	a3,sp,12
	addi	a2,a2,%lo(.LC29)
	addi	a0,s0,%lo(tc_wifi_dtb)
.LVL80:
	call	fdt_getprop
.LVL81:
	.loc 1 132 12
	lw	a4,12(sp)
	li	a5,20
	.loc 1 131 21
	mv	a1,a0
.LVL82:
	.loc 1 132 9 is_stmt 1
	.loc 1 132 12 is_stmt 0
	bne	a4,a5,.L56
.LBB23:
	.loc 1 133 13 is_stmt 1
	.loc 1 135 13
	li	a2,20
	addi	a0,sp,16
.LVL83:
	call	memcpy
.LVL84:
	.loc 1 136 13
	.loc 1 136 18
	.loc 1 136 20
	.loc 1 136 67 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL85:
	.loc 1 136 20
	beq	a0,zero,.L57
	.loc 1 136 94 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL86:
.L116:
	.loc 1 136 123 discriminator 2
	mv	a1,a0
	.loc 1 136 20 discriminator 2
	lui	a0,%hi(.LC30)
	li	a4,136
	addi	a3,s1,%lo(.LC1)
	addi	a2,s4,%lo(.LC6)
	addi	a0,a0,%lo(.LC30)
	call	bl_printk
.LVL87:
	.loc 1 136 180 is_stmt 1 discriminator 2
	.loc 1 136 189 discriminator 2
	.loc 1 137 13 discriminator 2
	li	a4,0
	li	a3,20
	addi	a2,sp,16
	li	a1,137
	addi	a0,s1,%lo(.LC1)
	call	log_buf_out
.LVL88:
.LBE23:
	.loc 1 143 9 discriminator 2
	.loc 1 143 21 is_stmt 0 discriminator 2
	lui	a2,%hi(.LC31)
	mv	a1,s2
	addi	a3,sp,12
	addi	a2,a2,%lo(.LC31)
	addi	a0,s0,%lo(tc_wifi_dtb)
	call	fdt_getprop
.LVL89:
	.loc 1 144 12 discriminator 2
	lw	a4,12(sp)
	li	a5,256
	.loc 1 143 21 discriminator 2
	mv	a1,a0
.LVL90:
	.loc 1 144 9 is_stmt 1 discriminator 2
	.loc 1 144 12 is_stmt 0 discriminator 2
	beq	a4,a5,.L59
	.loc 1 151 13 is_stmt 1
	.loc 1 151 18
	.loc 1 151 20
	.loc 1 151 89 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL91:
	.loc 1 151 20
	beq	a0,zero,.L67
	.loc 1 151 116 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL92:
.L119:
	.loc 1 151 20 discriminator 2
	lw	a5,12(sp)
	.loc 1 151 145 discriminator 2
	mv	a1,a0
	.loc 1 151 20 discriminator 2
	lui	a2,%hi(.LC2)
	lui	a0,%hi(.LC35)
	li	a4,151
	addi	a3,s1,%lo(.LC1)
	addi	a2,a2,%lo(.LC2)
	addi	a0,a0,%lo(.LC35)
	call	bl_printk
.LVL93:
	.loc 1 151 210 is_stmt 1 discriminator 2
	.loc 1 151 219 discriminator 2
	.loc 1 152 13 discriminator 2
.L128:
	.loc 1 191 182 discriminator 4
	.loc 1 191 191 discriminator 4
	.loc 1 192 9 discriminator 4
	.loc 1 192 16 is_stmt 0 discriminator 4
	li	a0,-1
	j	.L1
.LVL94:
.L8:
	.loc 1 35 141 discriminator 2
	call	xTaskGetTickCount
.LVL95:
	j	.L102
.LVL96:
.L7:
	.loc 1 37 13 is_stmt 1
	.loc 1 37 18
	.loc 1 37 20
	.loc 1 37 79 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL97:
	.loc 1 37 20
	beq	a0,zero,.L10
	.loc 1 37 106 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL98:
.L103:
	.loc 1 37 135 discriminator 2
	mv	a1,a0
	.loc 1 37 20 discriminator 2
	lui	a2,%hi(.LC2)
	lui	a0,%hi(.LC8)
	li	a4,37
	addi	a3,s1,%lo(.LC1)
	addi	a2,a2,%lo(.LC2)
	addi	a0,a0,%lo(.LC8)
	j	.L127
.L10:
	.loc 1 37 135 discriminator 2
	call	xTaskGetTickCount
.LVL99:
	j	.L103
.LVL100:
.L15:
.LBB24:
	.loc 1 50 126 discriminator 2
	call	xTaskGetTickCount
.LVL101:
	j	.L104
.LVL102:
.L14:
.LBE24:
	.loc 1 53 13 is_stmt 1
	.loc 1 53 18
	.loc 1 53 20
	.loc 1 53 79 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL103:
	.loc 1 53 20
	beq	a0,zero,.L19
	.loc 1 53 106 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL104:
.L105:
	.loc 1 53 135 discriminator 2
	mv	a1,a0
	.loc 1 53 20 discriminator 2
	lui	a2,%hi(.LC2)
	lui	a0,%hi(.LC13)
	li	a4,53
	addi	a3,s1,%lo(.LC1)
	addi	a2,a2,%lo(.LC2)
	addi	a0,a0,%lo(.LC13)
	j	.L127
.L19:
	.loc 1 53 135 discriminator 2
	call	xTaskGetTickCount
.LVL105:
	j	.L105
.L21:
.LBB25:
	.loc 1 63 125 discriminator 2
	call	xTaskGetTickCount
.LVL106:
	j	.L106
.LVL107:
.L26:
.LBE25:
	.loc 1 77 156 discriminator 2
	call	xTaskGetTickCount
.LVL108:
	j	.L107
.LVL109:
.L24:
	.loc 1 81 13 is_stmt 1
	.loc 1 81 18
	.loc 1 81 20
	.loc 1 81 69 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL110:
	.loc 1 81 20
	beq	a0,zero,.L30
	.loc 1 81 96 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL111:
.L108:
	.loc 1 81 125 discriminator 2
	mv	a1,a0
	.loc 1 81 20 discriminator 2
	li	a4,81
.LVL112:
.L129:
	.loc 1 123 16 discriminator 2
	lui	a3,%hi(.LC1)
	lui	a2,%hi(.LC2)
	lui	a0,%hi(.LC18)
	addi	a3,a3,%lo(.LC1)
	addi	a2,a2,%lo(.LC2)
	addi	a0,a0,%lo(.LC18)
	j	.L127
.LVL113:
.L30:
	.loc 1 81 125 discriminator 2
	call	xTaskGetTickCount
.LVL114:
	j	.L108
.LVL115:
.L34:
	.loc 1 92 157 discriminator 2
	call	xTaskGetTickCount
.LVL116:
	j	.L109
.LVL117:
.L32:
	.loc 1 96 13 is_stmt 1
	.loc 1 96 18
	.loc 1 96 20
	.loc 1 96 70 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL118:
	.loc 1 96 20
	beq	a0,zero,.L38
	.loc 1 96 97 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL119:
.L110:
	.loc 1 96 126 discriminator 2
	mv	a1,a0
	.loc 1 96 20 discriminator 2
	lui	a3,%hi(.LC1)
	lui	a2,%hi(.LC2)
	lui	a0,%hi(.LC21)
	li	a4,96
	addi	a3,a3,%lo(.LC1)
	addi	a2,a2,%lo(.LC2)
	addi	a0,a0,%lo(.LC21)
	j	.L127
.L38:
	.loc 1 96 126 discriminator 2
	call	xTaskGetTickCount
.LVL120:
	j	.L110
.LVL121:
.L41:
	.loc 1 103 133 discriminator 2
	call	xTaskGetTickCount
.LVL122:
	j	.L111
.LVL123:
.L40:
	.loc 1 105 13 is_stmt 1
	.loc 1 105 18
	.loc 1 105 20
	.loc 1 105 77 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL124:
	.loc 1 105 20
	beq	a0,zero,.L45
	.loc 1 105 104 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL125:
.L112:
	.loc 1 105 133 discriminator 2
	mv	a1,a0
	.loc 1 105 20 discriminator 2
	lui	a2,%hi(.LC2)
	lui	a0,%hi(.LC25)
	li	a4,105
	addi	a3,s1,%lo(.LC1)
	addi	a2,a2,%lo(.LC2)
	addi	a0,a0,%lo(.LC25)
	j	.L127
.L45:
	.loc 1 105 133 discriminator 2
	call	xTaskGetTickCount
.LVL126:
	j	.L112
.LVL127:
.L48:
	.loc 1 115 170 discriminator 2
	call	xTaskGetTickCount
.LVL128:
	j	.L113
.LVL129:
.L94:
	.loc 1 119 13 is_stmt 1
	.loc 1 119 18
	.loc 1 119 20
	.loc 1 119 83 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL130:
	.loc 1 119 20
	beq	a0,zero,.L51
	.loc 1 119 110 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL131:
.L114:
	.loc 1 119 139 discriminator 2
	mv	a1,a0
	.loc 1 119 20 discriminator 2
	lui	a2,%hi(.LC2)
	lui	a0,%hi(.LC27)
	li	a4,119
	addi	a3,s1,%lo(.LC1)
	addi	a2,a2,%lo(.LC2)
	addi	a0,a0,%lo(.LC27)
	j	.L127
.L51:
	.loc 1 119 139 discriminator 2
	call	xTaskGetTickCount
.LVL132:
	j	.L114
.LVL133:
.L23:
	.loc 1 123 9 is_stmt 1
	.loc 1 123 14
	.loc 1 123 16
	.loc 1 123 65 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL134:
	.loc 1 123 16
	beq	a0,zero,.L53
	.loc 1 123 92 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL135:
.L115:
	.loc 1 123 121 discriminator 2
	mv	a1,a0
	.loc 1 123 16 discriminator 2
	li	a4,123
	j	.L129
.L53:
	.loc 1 123 121 discriminator 2
	call	xTaskGetTickCount
.LVL136:
	j	.L115
.LVL137:
.L57:
.LBB26:
	.loc 1 136 123 discriminator 2
	call	xTaskGetTickCount
.LVL138:
	j	.L116
.LVL139:
.L56:
.LBE26:
	.loc 1 139 13 is_stmt 1
	.loc 1 139 18
	.loc 1 139 20
	.loc 1 139 67 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL140:
	.loc 1 139 20
	beq	a0,zero,.L61
	.loc 1 139 94 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL141:
.L117:
	.loc 1 139 123 discriminator 2
	mv	a1,a0
	.loc 1 139 20 discriminator 2
	lui	a2,%hi(.LC2)
	lui	a0,%hi(.LC32)
	li	a4,139
	addi	a3,s1,%lo(.LC1)
	addi	a2,a2,%lo(.LC2)
	addi	a0,a0,%lo(.LC32)
	j	.L127
.L61:
	.loc 1 139 123 discriminator 2
	call	xTaskGetTickCount
.LVL142:
	j	.L117
.LVL143:
.L59:
.LBB27:
	.loc 1 145 13 is_stmt 1
	.loc 1 147 13
	li	a2,256
	addi	a0,sp,16
.LVL144:
	call	memcpy
.LVL145:
	.loc 1 148 13
	.loc 1 148 18
	.loc 1 148 20
	.loc 1 148 72 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL146:
	.loc 1 148 20
	beq	a0,zero,.L63
	.loc 1 148 99 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL147:
.L118:
	.loc 1 148 128 discriminator 2
	mv	a1,a0
	.loc 1 148 20 discriminator 2
	lui	a0,%hi(.LC33)
	li	a4,148
	addi	a3,s1,%lo(.LC1)
	addi	a2,s4,%lo(.LC6)
	addi	a0,a0,%lo(.LC33)
	call	bl_printk
.LVL148:
	.loc 1 148 185 is_stmt 1 discriminator 2
	.loc 1 148 194 discriminator 2
	.loc 1 149 13 discriminator 2
	li	a4,0
	li	a3,256
	addi	a2,sp,16
	li	a1,149
	addi	a0,s1,%lo(.LC1)
	call	log_buf_out
.LVL149:
.LBE27:
	.loc 1 155 9 discriminator 2
	.loc 1 155 21 is_stmt 0 discriminator 2
	lui	a2,%hi(.LC34)
	mv	a1,s2
	addi	a3,sp,12
	addi	a2,a2,%lo(.LC34)
	addi	a0,s0,%lo(tc_wifi_dtb)
	call	fdt_getprop
.LVL150:
	.loc 1 156 12 discriminator 2
	lw	a4,12(sp)
	li	a5,60
	.loc 1 155 21 discriminator 2
	mv	a1,a0
.LVL151:
	.loc 1 156 9 is_stmt 1 discriminator 2
	.loc 1 156 12 is_stmt 0 discriminator 2
	beq	a4,a5,.L65
	.loc 1 163 13 is_stmt 1
	.loc 1 163 18
	.loc 1 163 20
	.loc 1 163 84 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL152:
	.loc 1 163 20
	beq	a0,zero,.L73
	.loc 1 163 111 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL153:
.L121:
	.loc 1 163 140 discriminator 2
	mv	a1,a0
	.loc 1 163 20 discriminator 2
	lui	a2,%hi(.LC2)
	lui	a0,%hi(.LC38)
	li	a4,163
	addi	a3,s1,%lo(.LC1)
	addi	a2,a2,%lo(.LC2)
	addi	a0,a0,%lo(.LC38)
	j	.L127
.L63:
.LBB28:
	.loc 1 148 128 discriminator 2
	call	xTaskGetTickCount
.LVL154:
	j	.L118
.L67:
.LBE28:
	.loc 1 151 145 discriminator 2
	call	xTaskGetTickCount
.LVL155:
	j	.L119
.LVL156:
.L65:
.LBB29:
	.loc 1 157 13 is_stmt 1
	.loc 1 159 13
	li	a2,60
	addi	a0,sp,16
.LVL157:
	call	memcpy
.LVL158:
	.loc 1 160 13
	.loc 1 160 18
	.loc 1 160 20
	.loc 1 160 80 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL159:
	.loc 1 160 20
	beq	a0,zero,.L69
	.loc 1 160 107 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL160:
.L120:
	.loc 1 160 136 discriminator 2
	mv	a1,a0
	.loc 1 160 20 discriminator 2
	lui	a0,%hi(.LC36)
	li	a4,160
	addi	a3,s1,%lo(.LC1)
	addi	a2,s4,%lo(.LC6)
	addi	a0,a0,%lo(.LC36)
	call	bl_printk
.LVL161:
	.loc 1 160 193 is_stmt 1 discriminator 2
	.loc 1 160 202 discriminator 2
	.loc 1 161 13 discriminator 2
	li	a4,0
	li	a3,60
	addi	a2,sp,16
	li	a1,161
	addi	a0,s1,%lo(.LC1)
	call	log_buf_out
.LVL162:
.LBE29:
	.loc 1 167 9 discriminator 2
	.loc 1 167 21 is_stmt 0 discriminator 2
	lui	a2,%hi(.LC37)
	mv	a1,s2
	addi	a3,sp,12
	addi	a2,a2,%lo(.LC37)
	addi	a0,s0,%lo(tc_wifi_dtb)
	call	fdt_getprop
.LVL163:
	.loc 1 168 12 discriminator 2
	lw	a4,12(sp)
	li	a5,56
	.loc 1 167 21 discriminator 2
	mv	a1,a0
.LVL164:
	.loc 1 168 9 is_stmt 1 discriminator 2
	.loc 1 168 12 is_stmt 0 discriminator 2
	beq	a4,a5,.L71
	.loc 1 175 13 is_stmt 1
	.loc 1 175 18
	.loc 1 175 20
	.loc 1 175 84 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL165:
	.loc 1 175 20
	beq	a0,zero,.L79
	.loc 1 175 111 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL166:
.L123:
	.loc 1 175 140 discriminator 2
	mv	a1,a0
	.loc 1 175 20 discriminator 2
	lui	a2,%hi(.LC2)
	lui	a0,%hi(.LC41)
	li	a4,175
	addi	a3,s1,%lo(.LC1)
	addi	a2,a2,%lo(.LC2)
	addi	a0,a0,%lo(.LC41)
	j	.L127
.L69:
.LBB30:
	.loc 1 160 136 discriminator 2
	call	xTaskGetTickCount
.LVL167:
	j	.L120
.L73:
.LBE30:
	.loc 1 163 140 discriminator 2
	call	xTaskGetTickCount
.LVL168:
	j	.L121
.LVL169:
.L71:
.LBB31:
	.loc 1 169 13 is_stmt 1
	.loc 1 171 13
	li	a2,56
	addi	a0,sp,16
.LVL170:
	call	memcpy
.LVL171:
	.loc 1 172 13
	.loc 1 172 18
	.loc 1 172 20
	.loc 1 172 80 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL172:
	.loc 1 172 20
	beq	a0,zero,.L75
	.loc 1 172 107 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL173:
.L122:
	.loc 1 172 136 discriminator 2
	mv	a1,a0
	.loc 1 172 20 discriminator 2
	lui	a0,%hi(.LC39)
	li	a4,172
	addi	a3,s1,%lo(.LC1)
	addi	a2,s4,%lo(.LC6)
	addi	a0,a0,%lo(.LC39)
	call	bl_printk
.LVL174:
	.loc 1 172 193 is_stmt 1 discriminator 2
	.loc 1 172 202 discriminator 2
	.loc 1 173 13 discriminator 2
	li	a4,0
	li	a3,56
	addi	a2,sp,16
	li	a1,173
	addi	a0,s1,%lo(.LC1)
	call	log_buf_out
.LVL175:
.LBE31:
	.loc 1 179 9 discriminator 2
	.loc 1 179 21 is_stmt 0 discriminator 2
	lui	a2,%hi(.LC40)
	mv	a1,s2
	addi	a3,sp,12
	addi	a2,a2,%lo(.LC40)
	addi	a0,s0,%lo(tc_wifi_dtb)
	call	fdt_getprop
.LVL176:
	.loc 1 180 12 discriminator 2
	lw	a4,12(sp)
	li	a5,4
	.loc 1 179 21 discriminator 2
	mv	a1,a0
.LVL177:
	.loc 1 180 9 is_stmt 1 discriminator 2
	.loc 1 180 12 is_stmt 0 discriminator 2
	beq	a4,a5,.L77
	.loc 1 187 13 is_stmt 1
	.loc 1 187 18
	.loc 1 187 20
	.loc 1 187 78 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL178:
	.loc 1 187 20
	beq	a0,zero,.L83
	.loc 1 187 105 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL179:
.L125:
	.loc 1 187 134 discriminator 2
	mv	a1,a0
	.loc 1 187 20 discriminator 2
	lui	a2,%hi(.LC2)
	lui	a0,%hi(.LC43)
	li	a4,187
	addi	a3,s1,%lo(.LC1)
	addi	a2,a2,%lo(.LC2)
	addi	a0,a0,%lo(.LC43)
	j	.L127
.L75:
.LBB32:
	.loc 1 172 136 discriminator 2
	call	xTaskGetTickCount
.LVL180:
	j	.L122
.L79:
.LBE32:
	.loc 1 175 140 discriminator 2
	call	xTaskGetTickCount
.LVL181:
	j	.L123
.LVL182:
.L77:
.LBB33:
	.loc 1 181 13 is_stmt 1
	.loc 1 183 13
	li	a2,4
	addi	a0,sp,16
.LVL183:
	call	memcpy
.LVL184:
	.loc 1 184 13
	.loc 1 184 18
	.loc 1 184 20
	.loc 1 184 74 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL185:
	.loc 1 184 20
	beq	a0,zero,.L81
	.loc 1 184 101 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL186:
.L124:
	.loc 1 184 130 discriminator 2
	mv	a1,a0
	.loc 1 184 20 discriminator 2
	lui	a0,%hi(.LC42)
	li	a4,184
	addi	a3,s1,%lo(.LC1)
	addi	a2,s4,%lo(.LC6)
	addi	a0,a0,%lo(.LC42)
	call	bl_printk
.LVL187:
	.loc 1 184 187 is_stmt 1 discriminator 2
	.loc 1 184 196 discriminator 2
	.loc 1 185 13 discriminator 2
	li	a4,0
	li	a3,4
	addi	a2,sp,16
	li	a1,185
	addi	a0,s1,%lo(.LC1)
	call	log_buf_out
.LVL188:
.LBE33:
	.loc 1 195 5 discriminator 2
	.loc 1 195 12 is_stmt 0 discriminator 2
	li	a0,0
.LVL189:
.L1:
	.loc 1 196 1
	lw	ra,316(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,312(sp)
	.cfi_restore 8
	lw	s1,308(sp)
	.cfi_restore 9
	lw	s2,304(sp)
	.cfi_restore 18
	lw	s3,300(sp)
	.cfi_restore 19
	lw	s4,296(sp)
	.cfi_restore 20
	lw	s5,292(sp)
	.cfi_restore 21
	lw	s6,288(sp)
	.cfi_restore 22
	lw	s7,284(sp)
	.cfi_restore 23
	lw	s8,280(sp)
	.cfi_restore 24
	lw	s9,276(sp)
	.cfi_restore 25
	addi	sp,sp,320
	.cfi_def_cfa_offset 0
	jr	ra
.LVL190:
.L81:
	.cfi_restore_state
.LBB34:
	.loc 1 184 130 discriminator 2
	call	xTaskGetTickCount
.LVL191:
	j	.L124
.L83:
.LBE34:
	.loc 1 187 134 discriminator 2
	call	xTaskGetTickCount
.LVL192:
	j	.L125
.LVL193:
.L55:
	.loc 1 191 9 is_stmt 1
	.loc 1 191 14
	.loc 1 191 16
	.loc 1 191 69 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL194:
	.loc 1 191 16
	beq	a0,zero,.L85
	.loc 1 191 96 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL195:
.L126:
	.loc 1 191 125 discriminator 2
	mv	a1,a0
	.loc 1 191 16 discriminator 2
	lui	a2,%hi(.LC2)
	lui	a0,%hi(.LC44)
	li	a4,191
	addi	a3,s1,%lo(.LC1)
	addi	a2,a2,%lo(.LC2)
	addi	a0,a0,%lo(.LC44)
	j	.L127
.L85:
	.loc 1 191 125 discriminator 2
	call	xTaskGetTickCount
.LVL196:
	j	.L126
	.cfi_endproc
.LFE39:
	.size	tc_fdt_wifi_module, .-tc_fdt_wifi_module
	.section	.rodata.tc_fdt_wifi.str1.4,"aMS",@progbits,1
	.align	2
.LC45:
	.string	"fdt wifi module failed\r\n"
	.align	2
.LC46:
	.string	"fdt wifi module successed\r\n"
	.section	.text.tc_fdt_wifi,"ax",@progbits
	.align	1
	.globl	tc_fdt_wifi
	.type	tc_fdt_wifi, @function
tc_fdt_wifi:
.LFB40:
	.loc 1 199 1 is_stmt 1
	.cfi_startproc
	.loc 1 200 5
	.loc 1 201 5
	.loc 1 199 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 201 14
	call	tc_fdt_wifi_module
.LVL197:
	mv	s0,a0
.LVL198:
	.loc 1 203 5 is_stmt 1
	.loc 1 203 8 is_stmt 0
	beq	a0,zero,.L131
	.loc 1 204 9 is_stmt 1
	lui	a0,%hi(.LC45)
	addi	a0,a0,%lo(.LC45)
.L134:
	.loc 1 206 9 is_stmt 0
	call	printf
.LVL199:
	.loc 1 209 5 is_stmt 1
	.loc 1 210 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,s0
	lw	s0,8(sp)
	.cfi_restore 8
.LVL200:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL201:
.L131:
	.cfi_restore_state
	.loc 1 206 9 is_stmt 1
	lui	a0,%hi(.LC46)
	addi	a0,a0,%lo(.LC46)
	j	.L134
	.cfi_endproc
.LFE40:
	.size	tc_fdt_wifi, .-tc_fdt_wifi
	.text
.Letext0:
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_log.h"
	.file 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blfdt/inc/libfdt.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xda9
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF40
	.byte	0xc
	.4byte	.LASF41
	.4byte	.LASF42
	.4byte	.Ldebug_ranges0+0xd8
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
	.4byte	.LASF7
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x60
	.byte	0x5
	.4byte	0x4f
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0x4
	.4byte	.LASF8
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x7f
	.byte	0x5
	.4byte	0x6e
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x5
	.4byte	0x8d
	.byte	0x6
	.byte	0x4
	.4byte	0x94
	.byte	0x6
	.byte	0x4
	.4byte	0xa5
	.byte	0x7
	.byte	0x4
	.4byte	.LASF12
	.byte	0x2
	.byte	0x46
	.byte	0x12
	.4byte	0x6e
	.byte	0x8
	.4byte	.LASF43
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x8
	.byte	0x38
	.byte	0xe
	.4byte	0xd7
	.byte	0x9
	.4byte	.LASF13
	.byte	0
	.byte	0x9
	.4byte	.LASF14
	.byte	0x1
	.byte	0x9
	.4byte	.LASF15
	.byte	0x2
	.byte	0
	.byte	0xa
	.4byte	0x5b
	.4byte	0xe2
	.byte	0xb
	.byte	0
	.byte	0x5
	.4byte	0xd7
	.byte	0xc
	.4byte	.LASF44
	.byte	0x1
	.byte	0x7
	.byte	0x16
	.4byte	0xe2
	.byte	0xd
	.4byte	.LASF45
	.byte	0x1
	.byte	0xc6
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x1
	.byte	0x9c
	.4byte	0x130
	.byte	0xe
	.4byte	.LASF16
	.byte	0x1
	.byte	0xc8
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST6
	.byte	0xf
	.4byte	.LVL197
	.4byte	0x130
	.byte	0xf
	.4byte	.LVL199
	.4byte	0xd22
	.byte	0
	.byte	0x10
	.4byte	.LASF46
	.byte	0x1
	.byte	0x9
	.byte	0xc
	.4byte	0x25
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x1
	.byte	0x9c
	.4byte	0xca0
	.byte	0x11
	.string	"fdt"
	.byte	0x1
	.byte	0xb
	.byte	0x11
	.4byte	0x9f
	.byte	0xe
	.4byte	.LASF17
	.byte	0x1
	.byte	0xd
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST0
	.byte	0xe
	.4byte	.LASF18
	.byte	0x1
	.byte	0xe
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST1
	.byte	0xe
	.4byte	.LASF19
	.byte	0x1
	.byte	0x10
	.byte	0x15
	.4byte	0xca0
	.4byte	.LLST2
	.byte	0xe
	.4byte	.LASF16
	.byte	0x1
	.byte	0x11
	.byte	0x11
	.4byte	0x99
	.4byte	.LLST3
	.byte	0x12
	.4byte	.LASF20
	.byte	0x1
	.byte	0x12
	.byte	0x9
	.4byte	0x25
	.byte	0x3
	.byte	0x91
	.byte	0xcc,0x7d
	.byte	0xe
	.4byte	.LASF21
	.byte	0x1
	.byte	0x13
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST4
	.byte	0x13
	.string	"i"
	.byte	0x1
	.byte	0x14
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST5
	.byte	0x14
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x270
	.byte	0x12
	.4byte	.LASF22
	.byte	0x1
	.byte	0x2f
	.byte	0x15
	.4byte	0xca6
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7d
	.byte	0x15
	.4byte	.LVL26
	.4byte	0xd2e
	.4byte	0x1f7
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7d
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x36
	.byte	0
	.byte	0xf
	.4byte	.LVL27
	.4byte	0xd3a
	.byte	0xf
	.4byte	.LVL28
	.4byte	0xd46
	.byte	0x15
	.4byte	.LVL29
	.4byte	0xd53
	.4byte	0x238
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.byte	0x15
	.4byte	.LVL30
	.4byte	0xd5f
	.4byte	0x266
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x33
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7d
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x36
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0xf
	.4byte	.LVL101
	.4byte	0xd6b
	.byte	0
	.byte	0x14
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0x31c
	.byte	0x12
	.4byte	.LASF23
	.byte	0x1
	.byte	0x3c
	.byte	0x15
	.4byte	0xca6
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7d
	.byte	0x15
	.4byte	.LVL34
	.4byte	0xd2e
	.4byte	0x2a3
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7d
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x36
	.byte	0
	.byte	0xf
	.4byte	.LVL35
	.4byte	0xd3a
	.byte	0xf
	.4byte	.LVL36
	.4byte	0xd46
	.byte	0x15
	.4byte	.LVL37
	.4byte	0xd53
	.4byte	0x2e4
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x3f
	.byte	0
	.byte	0x15
	.4byte	.LVL38
	.4byte	0xd5f
	.4byte	0x312
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7d
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x36
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0xf
	.4byte	.LVL106
	.4byte	0xd6b
	.byte	0
	.byte	0x14
	.4byte	.Ldebug_ranges0+0x60
	.4byte	0x3c8
	.byte	0x12
	.4byte	.LASF24
	.byte	0x1
	.byte	0x85
	.byte	0x15
	.4byte	0xcb6
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7d
	.byte	0x15
	.4byte	.LVL84
	.4byte	0xd2e
	.4byte	0x34f
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7d
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x44
	.byte	0
	.byte	0xf
	.4byte	.LVL85
	.4byte	0xd3a
	.byte	0xf
	.4byte	.LVL86
	.4byte	0xd46
	.byte	0x15
	.4byte	.LVL87
	.4byte	0xd53
	.4byte	0x390
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC30
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x88
	.byte	0
	.byte	0x15
	.4byte	.LVL88
	.4byte	0xd5f
	.4byte	0x3be
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x89
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7d
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x44
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0xf
	.4byte	.LVL138
	.4byte	0xd6b
	.byte	0
	.byte	0x14
	.4byte	.Ldebug_ranges0+0x78
	.4byte	0x478
	.byte	0x12
	.4byte	.LASF25
	.byte	0x1
	.byte	0x91
	.byte	0x15
	.4byte	0xcc6
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7d
	.byte	0x15
	.4byte	.LVL145
	.4byte	0xd2e
	.4byte	0x3fd
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7d
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.byte	0xf
	.4byte	.LVL146
	.4byte	0xd3a
	.byte	0xf
	.4byte	.LVL147
	.4byte	0xd46
	.byte	0x15
	.4byte	.LVL148
	.4byte	0xd53
	.4byte	0x43e
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC33
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x94
	.byte	0
	.byte	0x15
	.4byte	.LVL149
	.4byte	0xd5f
	.4byte	0x46e
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x95
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7d
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xa
	.2byte	0x100
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0xf
	.4byte	.LVL154
	.4byte	0xd6b
	.byte	0
	.byte	0x14
	.4byte	.Ldebug_ranges0+0x90
	.4byte	0x526
	.byte	0x12
	.4byte	.LASF26
	.byte	0x1
	.byte	0x9d
	.byte	0x15
	.4byte	0xcd6
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7d
	.byte	0x15
	.4byte	.LVL158
	.4byte	0xd2e
	.4byte	0x4ac
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7d
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.byte	0xf
	.4byte	.LVL159
	.4byte	0xd3a
	.byte	0xf
	.4byte	.LVL160
	.4byte	0xd46
	.byte	0x15
	.4byte	.LVL161
	.4byte	0xd53
	.4byte	0x4ed
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC36
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0xa0
	.byte	0
	.byte	0x15
	.4byte	.LVL162
	.4byte	0xd5f
	.4byte	0x51c
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0xa1
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7d
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0xf
	.4byte	.LVL167
	.4byte	0xd6b
	.byte	0
	.byte	0x14
	.4byte	.Ldebug_ranges0+0xa8
	.4byte	0x5d4
	.byte	0x12
	.4byte	.LASF27
	.byte	0x1
	.byte	0xa9
	.byte	0x15
	.4byte	0xce6
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7d
	.byte	0x15
	.4byte	.LVL171
	.4byte	0xd2e
	.4byte	0x55a
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7d
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x38
	.byte	0
	.byte	0xf
	.4byte	.LVL172
	.4byte	0xd3a
	.byte	0xf
	.4byte	.LVL173
	.4byte	0xd46
	.byte	0x15
	.4byte	.LVL174
	.4byte	0xd53
	.4byte	0x59b
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC39
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0xac
	.byte	0
	.byte	0x15
	.4byte	.LVL175
	.4byte	0xd5f
	.4byte	0x5ca
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0xad
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7d
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x8
	.byte	0x38
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0xf
	.4byte	.LVL180
	.4byte	0xd6b
	.byte	0
	.byte	0x14
	.4byte	.Ldebug_ranges0+0xc0
	.4byte	0x680
	.byte	0x12
	.4byte	.LASF28
	.byte	0x1
	.byte	0xb5
	.byte	0x15
	.4byte	0xcf6
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7d
	.byte	0x15
	.4byte	.LVL184
	.4byte	0xd2e
	.4byte	0x607
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7d
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0xf
	.4byte	.LVL185
	.4byte	0xd3a
	.byte	0xf
	.4byte	.LVL186
	.4byte	0xd46
	.byte	0x15
	.4byte	.LVL187
	.4byte	0xd53
	.4byte	0x648
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC42
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0xb8
	.byte	0
	.byte	0x15
	.4byte	.LVL188
	.4byte	0xd5f
	.4byte	0x676
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0xb9
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7d
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x34
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0xf
	.4byte	.LVL191
	.4byte	0xd6b
	.byte	0
	.byte	0x17
	.4byte	0xd06
	.4byte	.LBB13
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x23
	.byte	0x14
	.4byte	0x69a
	.byte	0x18
	.4byte	0xd17
	.byte	0
	.byte	0x17
	.4byte	0xd06
	.4byte	.LBB19
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0x67
	.byte	0x14
	.4byte	0x6b4
	.byte	0x18
	.4byte	0xd17
	.byte	0
	.byte	0x15
	.4byte	.LVL2
	.4byte	0xd78
	.4byte	0x6d0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0xf
	.4byte	.LVL3
	.4byte	0xd3a
	.byte	0xf
	.4byte	.LVL4
	.4byte	0xd46
	.byte	0xf
	.4byte	.LVL6
	.4byte	0xd53
	.byte	0xf
	.4byte	.LVL8
	.4byte	0xd6b
	.byte	0x15
	.4byte	.LVL11
	.4byte	0xd78
	.4byte	0x711
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0x15
	.4byte	.LVL14
	.4byte	0xd85
	.4byte	0x72f
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x91
	.byte	0xcc,0x7d
	.byte	0
	.byte	0xf
	.4byte	.LVL16
	.4byte	0xd3a
	.byte	0xf
	.4byte	.LVL17
	.4byte	0xd46
	.byte	0x15
	.4byte	.LVL19
	.4byte	0xd53
	.4byte	0x770
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x23
	.byte	0
	.byte	0x15
	.4byte	.LVL20
	.4byte	0xd78
	.4byte	0x78d
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0x15
	.4byte	.LVL23
	.4byte	0xd85
	.4byte	0x7b1
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x91
	.byte	0xcc,0x7d
	.byte	0
	.byte	0x15
	.4byte	.LVL31
	.4byte	0xd85
	.4byte	0x7d5
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x91
	.byte	0xcc,0x7d
	.byte	0
	.byte	0x15
	.4byte	.LVL39
	.4byte	0xd78
	.4byte	0x7f2
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.byte	0x15
	.4byte	.LVL42
	.4byte	0xd92
	.4byte	0x80f
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0
	.byte	0x15
	.4byte	.LVL45
	.4byte	0xd9f
	.4byte	0x839
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0x91
	.byte	0xcc,0x7d
	.byte	0
	.byte	0xf
	.4byte	.LVL47
	.4byte	0xd3a
	.byte	0xf
	.4byte	.LVL48
	.4byte	0xd46
	.byte	0x15
	.4byte	.LVL49
	.4byte	0xd53
	.4byte	0x886
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x4d
	.byte	0x16
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x60
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL51
	.4byte	0xd92
	.4byte	0x8a3
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0
	.byte	0x15
	.4byte	.LVL55
	.4byte	0xd9f
	.4byte	0x8cd
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0x91
	.byte	0xcc,0x7d
	.byte	0
	.byte	0xf
	.4byte	.LVL57
	.4byte	0xd3a
	.byte	0xf
	.4byte	.LVL58
	.4byte	0xd46
	.byte	0x15
	.4byte	.LVL59
	.4byte	0xd53
	.4byte	0x91a
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC20
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x5c
	.byte	0x16
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x60
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL61
	.4byte	0xd85
	.4byte	0x93e
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC22
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x91
	.byte	0xcc,0x7d
	.byte	0
	.byte	0xf
	.4byte	.LVL64
	.4byte	0xd3a
	.byte	0xf
	.4byte	.LVL65
	.4byte	0xd46
	.byte	0x15
	.4byte	.LVL68
	.4byte	0xd53
	.4byte	0x97f
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x67
	.byte	0
	.byte	0x15
	.4byte	.LVL69
	.4byte	0xd92
	.4byte	0x99c
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC24
	.byte	0
	.byte	0x15
	.4byte	.LVL72
	.4byte	0xd9f
	.4byte	0x9c6
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC24
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0x91
	.byte	0xcc,0x7d
	.byte	0
	.byte	0xf
	.4byte	.LVL74
	.4byte	0xd3a
	.byte	0xf
	.4byte	.LVL75
	.4byte	0xd46
	.byte	0x15
	.4byte	.LVL76
	.4byte	0xd53
	.4byte	0xa13
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC26
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x73
	.byte	0x16
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x60
	.byte	0x2
	.byte	0x88
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL78
	.4byte	0xd78
	.4byte	0xa30
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC28
	.byte	0
	.byte	0x15
	.4byte	.LVL81
	.4byte	0xd85
	.4byte	0xa54
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC29
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x91
	.byte	0xcc,0x7d
	.byte	0
	.byte	0x15
	.4byte	.LVL89
	.4byte	0xd85
	.4byte	0xa78
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC31
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x91
	.byte	0xcc,0x7d
	.byte	0
	.byte	0xf
	.4byte	.LVL91
	.4byte	0xd3a
	.byte	0xf
	.4byte	.LVL92
	.4byte	0xd46
	.byte	0x15
	.4byte	.LVL93
	.4byte	0xd53
	.4byte	0xab9
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC35
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x97
	.byte	0
	.byte	0xf
	.4byte	.LVL95
	.4byte	0xd6b
	.byte	0xf
	.4byte	.LVL97
	.4byte	0xd3a
	.byte	0xf
	.4byte	.LVL98
	.4byte	0xd46
	.byte	0xf
	.4byte	.LVL99
	.4byte	0xd6b
	.byte	0xf
	.4byte	.LVL103
	.4byte	0xd3a
	.byte	0xf
	.4byte	.LVL104
	.4byte	0xd46
	.byte	0xf
	.4byte	.LVL105
	.4byte	0xd6b
	.byte	0xf
	.4byte	.LVL108
	.4byte	0xd6b
	.byte	0xf
	.4byte	.LVL110
	.4byte	0xd3a
	.byte	0xf
	.4byte	.LVL111
	.4byte	0xd46
	.byte	0xf
	.4byte	.LVL114
	.4byte	0xd6b
	.byte	0xf
	.4byte	.LVL116
	.4byte	0xd6b
	.byte	0xf
	.4byte	.LVL118
	.4byte	0xd3a
	.byte	0xf
	.4byte	.LVL119
	.4byte	0xd46
	.byte	0xf
	.4byte	.LVL120
	.4byte	0xd6b
	.byte	0xf
	.4byte	.LVL122
	.4byte	0xd6b
	.byte	0xf
	.4byte	.LVL124
	.4byte	0xd3a
	.byte	0xf
	.4byte	.LVL125
	.4byte	0xd46
	.byte	0xf
	.4byte	.LVL126
	.4byte	0xd6b
	.byte	0xf
	.4byte	.LVL128
	.4byte	0xd6b
	.byte	0xf
	.4byte	.LVL130
	.4byte	0xd3a
	.byte	0xf
	.4byte	.LVL131
	.4byte	0xd46
	.byte	0xf
	.4byte	.LVL132
	.4byte	0xd6b
	.byte	0xf
	.4byte	.LVL134
	.4byte	0xd3a
	.byte	0xf
	.4byte	.LVL135
	.4byte	0xd46
	.byte	0xf
	.4byte	.LVL136
	.4byte	0xd6b
	.byte	0xf
	.4byte	.LVL140
	.4byte	0xd3a
	.byte	0xf
	.4byte	.LVL141
	.4byte	0xd46
	.byte	0xf
	.4byte	.LVL142
	.4byte	0xd6b
	.byte	0x15
	.4byte	.LVL150
	.4byte	0xd85
	.4byte	0xbe2
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC34
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x91
	.byte	0xcc,0x7d
	.byte	0
	.byte	0xf
	.4byte	.LVL152
	.4byte	0xd3a
	.byte	0xf
	.4byte	.LVL153
	.4byte	0xd46
	.byte	0xf
	.4byte	.LVL155
	.4byte	0xd6b
	.byte	0x15
	.4byte	.LVL163
	.4byte	0xd85
	.4byte	0xc21
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC37
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x91
	.byte	0xcc,0x7d
	.byte	0
	.byte	0xf
	.4byte	.LVL165
	.4byte	0xd3a
	.byte	0xf
	.4byte	.LVL166
	.4byte	0xd46
	.byte	0xf
	.4byte	.LVL168
	.4byte	0xd6b
	.byte	0x15
	.4byte	.LVL176
	.4byte	0xd85
	.4byte	0xc60
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC40
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x91
	.byte	0xcc,0x7d
	.byte	0
	.byte	0xf
	.4byte	.LVL178
	.4byte	0xd3a
	.byte	0xf
	.4byte	.LVL179
	.4byte	0xd46
	.byte	0xf
	.4byte	.LVL181
	.4byte	0xd6b
	.byte	0xf
	.4byte	.LVL192
	.4byte	0xd6b
	.byte	0xf
	.4byte	.LVL194
	.4byte	0xd3a
	.byte	0xf
	.4byte	.LVL195
	.4byte	0xd46
	.byte	0xf
	.4byte	.LVL196
	.4byte	0xd6b
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x7a
	.byte	0xa
	.4byte	0x4f
	.4byte	0xcb6
	.byte	0x19
	.4byte	0x2c
	.byte	0x5
	.byte	0
	.byte	0xa
	.4byte	0x4f
	.4byte	0xcc6
	.byte	0x19
	.4byte	0x2c
	.byte	0x13
	.byte	0
	.byte	0xa
	.4byte	0x4f
	.4byte	0xcd6
	.byte	0x19
	.4byte	0x2c
	.byte	0xff
	.byte	0
	.byte	0xa
	.4byte	0x4f
	.4byte	0xce6
	.byte	0x19
	.4byte	0x2c
	.byte	0x3b
	.byte	0
	.byte	0xa
	.4byte	0x4f
	.4byte	0xcf6
	.byte	0x19
	.4byte	0x2c
	.byte	0x37
	.byte	0
	.byte	0xa
	.4byte	0x4f
	.4byte	0xd06
	.byte	0x19
	.4byte	0x2c
	.byte	0x3
	.byte	0
	.byte	0x1a
	.4byte	.LASF47
	.byte	0x2
	.byte	0x5b
	.byte	0x18
	.4byte	0x6e
	.byte	0x3
	.4byte	0xd22
	.byte	0x1b
	.string	"x"
	.byte	0x2
	.byte	0x5b
	.byte	0x2d
	.4byte	0xa6
	.byte	0
	.byte	0x1c
	.4byte	.LASF29
	.4byte	.LASF29
	.byte	0x4
	.byte	0xc8
	.byte	0x5
	.byte	0x1c
	.4byte	.LASF30
	.4byte	.LASF30
	.byte	0x5
	.byte	0x1f
	.byte	0x8
	.byte	0x1c
	.4byte	.LASF31
	.4byte	.LASF31
	.byte	0x6
	.byte	0x98
	.byte	0xc
	.byte	0x1d
	.4byte	.LASF32
	.4byte	.LASF32
	.byte	0x7
	.2byte	0x558
	.byte	0xc
	.byte	0x1c
	.4byte	.LASF33
	.4byte	.LASF33
	.byte	0x8
	.byte	0x81
	.byte	0x6
	.byte	0x1c
	.4byte	.LASF34
	.4byte	.LASF34
	.byte	0x8
	.byte	0x7f
	.byte	0x5
	.byte	0x1d
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x7
	.2byte	0x547
	.byte	0xc
	.byte	0x1d
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x9
	.2byte	0x1c1
	.byte	0x5
	.byte	0x1d
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x9
	.2byte	0x2f4
	.byte	0xd
	.byte	0x1d
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x9
	.2byte	0x423
	.byte	0x5
	.byte	0x1d
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x9
	.2byte	0x453
	.byte	0xd
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
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x21
	.byte	0
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
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0xd
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
	.byte	0xe
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
	.byte	0xf
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x14
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x16
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x17
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
	.byte	0x18
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x1a
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
	.byte	0x1b
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
.LLST6:
	.4byte	.LVL198
	.4byte	.LVL200
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL200
	.4byte	.LVL201
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL201
	.4byte	.LFE40
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL11-1
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL94
	.4byte	.LVL189
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL190
	.4byte	.LFE39
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL22
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL23-1
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL41
	.4byte	.LVL42-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL42-1
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL80
	.4byte	.LVL81-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL81-1
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL100
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL133
	.4byte	.LVL134-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL134-1
	.4byte	.LVL189
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL190
	.4byte	.LVL193
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL193
	.4byte	.LVL194-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL194-1
	.4byte	.LFE39
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16-1
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LVL26-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL33
	.4byte	.LVL34-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL62
	.4byte	.LVL64-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL64-1
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL83
	.4byte	.LVL84-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL90
	.4byte	.LVL91-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL94
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL96
	.4byte	.LVL97-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL97-1
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL102
	.4byte	.LVL103-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL121
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL123
	.4byte	.LVL124-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL124-1
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL139
	.4byte	.LVL140-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL143
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL144
	.4byte	.LVL145-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL151
	.4byte	.LVL152-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL156
	.4byte	.LVL157
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL157
	.4byte	.LVL158-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL164
	.4byte	.LVL165-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL169
	.4byte	.LVL170
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL170
	.4byte	.LVL171-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL177
	.4byte	.LVL178-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL182
	.4byte	.LVL183
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL183
	.4byte	.LVL184-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL44
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL47-1
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL56
	.4byte	.LVL57-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL57-1
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL73
	.4byte	.LVL74-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL74-1
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL94
	.4byte	.LVL107
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL109
	.4byte	.LVL115
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL115
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL127
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL133
	.4byte	.LVL137
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL137
	.4byte	.LVL189
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL190
	.4byte	.LFE39
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL1
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL44
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL54
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL71
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL94
	.4byte	.LVL107
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL109
	.4byte	.LVL110-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL110-1
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL113
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL117
	.4byte	.LVL118-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL118-1
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL127
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL129
	.4byte	.LVL130-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL130-1
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL133
	.4byte	.LVL137
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL137
	.4byte	.LVL189
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL190
	.4byte	.LFE39
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL44
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL54
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL71
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL107
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL115
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL127
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL137
	.4byte	.LVL189
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL190
	.4byte	.LFE39
	.2byte	0x1
	.byte	0x65
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
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	0
	.4byte	0
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	.LBB24
	.4byte	.LBE24
	.4byte	0
	.4byte	0
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	.LBB25
	.4byte	.LBE25
	.4byte	0
	.4byte	0
	.4byte	.LBB19
	.4byte	.LBE19
	.4byte	.LBB22
	.4byte	.LBE22
	.4byte	0
	.4byte	0
	.4byte	.LBB23
	.4byte	.LBE23
	.4byte	.LBB26
	.4byte	.LBE26
	.4byte	0
	.4byte	0
	.4byte	.LBB27
	.4byte	.LBE27
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	0
	.4byte	0
	.4byte	.LBB29
	.4byte	.LBE29
	.4byte	.LBB30
	.4byte	.LBE30
	.4byte	0
	.4byte	0
	.4byte	.LBB31
	.4byte	.LBE31
	.4byte	.LBB32
	.4byte	.LBE32
	.4byte	0
	.4byte	0
	.4byte	.LBB33
	.4byte	.LBE33
	.4byte	.LBB34
	.4byte	.LBE34
	.4byte	0
	.4byte	0
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF28:
	.string	"lo_fcal_div"
.LASF24:
	.string	"xtal"
.LASF38:
	.string	"fdt_stringlist_count"
.LASF44:
	.string	"tc_wifi_dtb"
.LASF41:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blfdt/test/tc_blfdt_wifi.c"
.LASF18:
	.string	"offset1"
.LASF3:
	.string	"long int"
.LASF12:
	.string	"fdt32_t"
.LASF19:
	.string	"addr_prop"
.LASF14:
	.string	"LOG_BUF_OUT_DATA_TYPE_INT8"
.LASF5:
	.string	"unsigned char"
.LASF33:
	.string	"bl_printk"
.LASF25:
	.string	"pwr_table"
.LASF34:
	.string	"log_buf_out"
.LASF26:
	.string	"channel_div_table"
.LASF9:
	.string	"long unsigned int"
.LASF6:
	.string	"short unsigned int"
.LASF47:
	.string	"fdt32_to_cpu"
.LASF23:
	.string	"ap_mac"
.LASF0:
	.string	"unsigned int"
.LASF22:
	.string	"sta_mac"
.LASF10:
	.string	"long long unsigned int"
.LASF7:
	.string	"uint8_t"
.LASF42:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/blfdt"
.LASF16:
	.string	"result"
.LASF37:
	.string	"fdt_getprop"
.LASF4:
	.string	"long long int"
.LASF13:
	.string	"LOG_BUF_OUT_DATA_TYPE_HEX"
.LASF40:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF11:
	.string	"char"
.LASF32:
	.string	"xTaskGetTickCountFromISR"
.LASF43:
	.string	"LOG_BUF_OUT_DATA_TYPE"
.LASF29:
	.string	"printf"
.LASF39:
	.string	"fdt_stringlist_get"
.LASF21:
	.string	"countindex"
.LASF2:
	.string	"short int"
.LASF17:
	.string	"wifi_offset"
.LASF15:
	.string	"LOG_BUF_OUT_DATA_TYPE_UNT8"
.LASF20:
	.string	"lentmp"
.LASF46:
	.string	"tc_fdt_wifi_module"
.LASF8:
	.string	"uint32_t"
.LASF31:
	.string	"xPortIsInsideInterrupt"
.LASF36:
	.string	"fdt_subnode_offset"
.LASF27:
	.string	"channel_cnt_table"
.LASF45:
	.string	"tc_fdt_wifi"
.LASF1:
	.string	"signed char"
.LASF30:
	.string	"memcpy"
.LASF35:
	.string	"xTaskGetTickCount"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
