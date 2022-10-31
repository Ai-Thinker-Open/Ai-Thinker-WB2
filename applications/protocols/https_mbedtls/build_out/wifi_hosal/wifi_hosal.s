	.file	"wifi_hosal.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.wifi_hosal_efuse_read_mac,"ax",@progbits
	.align	1
	.globl	wifi_hosal_efuse_read_mac
	.type	wifi_hosal_efuse_read_mac, @function
wifi_hosal_efuse_read_mac:
.LFB27:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_hosal/wifi_hosal.c"
	.loc 1 56 1
	.cfi_startproc
.LVL0:
	.loc 1 57 3
	.loc 1 57 10 is_stmt 0
	lui	a5,%hi(g_wifi_hosal_funcs)
	lw	a5,%lo(g_wifi_hosal_funcs)(a5)
	jr	a5
.LVL1:
	.cfi_endproc
.LFE27:
	.size	wifi_hosal_efuse_read_mac, .-wifi_hosal_efuse_read_mac
	.section	.text.wifi_hosal_rf_turn_on,"ax",@progbits
	.align	1
	.globl	wifi_hosal_rf_turn_on
	.type	wifi_hosal_rf_turn_on, @function
wifi_hosal_rf_turn_on:
.LFB28:
	.loc 1 73 1 is_stmt 1
	.cfi_startproc
.LVL2:
	.loc 1 74 3
	.loc 1 74 28 is_stmt 0
	lui	a5,%hi(g_wifi_hosal_funcs+4)
	.loc 1 74 10
	lw	a5,%lo(g_wifi_hosal_funcs+4)(a5)
	jr	a5
.LVL3:
	.cfi_endproc
.LFE28:
	.size	wifi_hosal_rf_turn_on, .-wifi_hosal_rf_turn_on
	.section	.text.wifi_hosal_rf_turn_off,"ax",@progbits
	.align	1
	.globl	wifi_hosal_rf_turn_off
	.type	wifi_hosal_rf_turn_off, @function
wifi_hosal_rf_turn_off:
.LFB29:
	.loc 1 90 1 is_stmt 1
	.cfi_startproc
.LVL4:
	.loc 1 91 3
	.loc 1 91 28 is_stmt 0
	lui	a5,%hi(g_wifi_hosal_funcs+8)
	.loc 1 91 10
	lw	a5,%lo(g_wifi_hosal_funcs+8)(a5)
	jr	a5
.LVL5:
	.cfi_endproc
.LFE29:
	.size	wifi_hosal_rf_turn_off, .-wifi_hosal_rf_turn_off
	.section	.text.wifi_hosal_adc_device_get,"ax",@progbits
	.align	1
	.globl	wifi_hosal_adc_device_get
	.type	wifi_hosal_adc_device_get, @function
wifi_hosal_adc_device_get:
.LFB30:
	.loc 1 107 1 is_stmt 1
	.cfi_startproc
	.loc 1 108 3
	.loc 1 108 28 is_stmt 0
	lui	a5,%hi(g_wifi_hosal_funcs+12)
	.loc 1 108 10
	lw	a5,%lo(g_wifi_hosal_funcs+12)(a5)
	jr	a5
.LVL6:
	.cfi_endproc
.LFE30:
	.size	wifi_hosal_adc_device_get, .-wifi_hosal_adc_device_get
	.section	.text.wifi_hosal_adc_tsen_value_get,"ax",@progbits
	.align	1
	.globl	wifi_hosal_adc_tsen_value_get
	.type	wifi_hosal_adc_tsen_value_get, @function
wifi_hosal_adc_tsen_value_get:
.LFB31:
	.loc 1 125 1 is_stmt 1
	.cfi_startproc
.LVL7:
	.loc 1 126 3
	.loc 1 126 28 is_stmt 0
	lui	a5,%hi(g_wifi_hosal_funcs+16)
	.loc 1 126 10
	lw	a5,%lo(g_wifi_hosal_funcs+16)(a5)
	jr	a5
.LVL8:
	.cfi_endproc
.LFE31:
	.size	wifi_hosal_adc_tsen_value_get, .-wifi_hosal_adc_tsen_value_get
	.section	.text.wifi_hosal_pm_init,"ax",@progbits
	.align	1
	.globl	wifi_hosal_pm_init
	.type	wifi_hosal_pm_init, @function
wifi_hosal_pm_init:
.LFB32:
	.loc 1 141 1 is_stmt 1
	.cfi_startproc
	.loc 1 142 3
	.loc 1 142 28 is_stmt 0
	lui	a5,%hi(g_wifi_hosal_funcs+20)
	.loc 1 142 10
	lw	a5,%lo(g_wifi_hosal_funcs+20)(a5)
	jr	a5
.LVL9:
	.cfi_endproc
.LFE32:
	.size	wifi_hosal_pm_init, .-wifi_hosal_pm_init
	.section	.text.wifi_hosal_pm_event_register,"ax",@progbits
	.align	1
	.globl	wifi_hosal_pm_event_register
	.type	wifi_hosal_pm_event_register, @function
wifi_hosal_pm_event_register:
.LFB33:
	.loc 1 157 1 is_stmt 1
	.cfi_startproc
.LVL10:
	.loc 1 158 3
	.loc 1 158 28 is_stmt 0
	lui	a7,%hi(g_wifi_hosal_funcs+24)
	.loc 1 158 10
	lw	a7,%lo(g_wifi_hosal_funcs+24)(a7)
	jr	a7
.LVL11:
	.cfi_endproc
.LFE33:
	.size	wifi_hosal_pm_event_register, .-wifi_hosal_pm_event_register
	.section	.text.wifi_hosal_pm_deinit,"ax",@progbits
	.align	1
	.globl	wifi_hosal_pm_deinit
	.type	wifi_hosal_pm_deinit, @function
wifi_hosal_pm_deinit:
.LFB34:
	.loc 1 173 1 is_stmt 1
	.cfi_startproc
	.loc 1 174 3
	.loc 1 174 28 is_stmt 0
	lui	a5,%hi(g_wifi_hosal_funcs+28)
	.loc 1 174 10
	lw	a5,%lo(g_wifi_hosal_funcs+28)(a5)
	jr	a5
.LVL12:
	.cfi_endproc
.LFE34:
	.size	wifi_hosal_pm_deinit, .-wifi_hosal_pm_deinit
	.section	.text.wifi_hosal_pm_state_run,"ax",@progbits
	.align	1
	.globl	wifi_hosal_pm_state_run
	.type	wifi_hosal_pm_state_run, @function
wifi_hosal_pm_state_run:
.LFB35:
	.loc 1 189 1 is_stmt 1
	.cfi_startproc
	.loc 1 190 3
	.loc 1 190 28 is_stmt 0
	lui	a5,%hi(g_wifi_hosal_funcs+32)
	.loc 1 190 10
	lw	a5,%lo(g_wifi_hosal_funcs+32)(a5)
	jr	a5
.LVL13:
	.cfi_endproc
.LFE35:
	.size	wifi_hosal_pm_state_run, .-wifi_hosal_pm_state_run
	.section	.text.wifi_hosal_pm_capacity_set,"ax",@progbits
	.align	1
	.globl	wifi_hosal_pm_capacity_set
	.type	wifi_hosal_pm_capacity_set, @function
wifi_hosal_pm_capacity_set:
.LFB36:
	.loc 1 205 1 is_stmt 1
	.cfi_startproc
.LVL14:
	.loc 1 206 3
	.loc 1 206 28 is_stmt 0
	lui	a5,%hi(g_wifi_hosal_funcs+36)
	.loc 1 206 10
	lw	a5,%lo(g_wifi_hosal_funcs+36)(a5)
	jr	a5
.LVL15:
	.cfi_endproc
.LFE36:
	.size	wifi_hosal_pm_capacity_set, .-wifi_hosal_pm_capacity_set
	.section	.text.wifi_hosal_pm_post_event,"ax",@progbits
	.align	1
	.globl	wifi_hosal_pm_post_event
	.type	wifi_hosal_pm_post_event, @function
wifi_hosal_pm_post_event:
.LFB37:
	.loc 1 221 1 is_stmt 1
	.cfi_startproc
.LVL16:
	.loc 1 222 3
	.loc 1 222 28 is_stmt 0
	lui	a5,%hi(g_wifi_hosal_funcs+40)
	.loc 1 222 10
	lw	a5,%lo(g_wifi_hosal_funcs+40)(a5)
	jr	a5
.LVL17:
	.cfi_endproc
.LFE37:
	.size	wifi_hosal_pm_post_event, .-wifi_hosal_pm_post_event
	.section	.text.wifi_hosal_pm_event_switch,"ax",@progbits
	.align	1
	.globl	wifi_hosal_pm_event_switch
	.type	wifi_hosal_pm_event_switch, @function
wifi_hosal_pm_event_switch:
.LFB38:
	.loc 1 237 1 is_stmt 1
	.cfi_startproc
.LVL18:
	.loc 1 238 3
	.loc 1 238 28 is_stmt 0
	lui	a5,%hi(g_wifi_hosal_funcs+44)
	.loc 1 238 10
	lw	a5,%lo(g_wifi_hosal_funcs+44)(a5)
	jr	a5
.LVL19:
	.cfi_endproc
.LFE38:
	.size	wifi_hosal_pm_event_switch, .-wifi_hosal_pm_event_switch
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/include/hosal_dma.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/include/hosal_adc.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_pm.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_hosal/include/wifi_hosal.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x703
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF83
	.byte	0xc
	.4byte	.LASF84
	.4byte	.LASF85
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x38
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x52
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.byte	0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x6c
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x46
	.byte	0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x60
	.byte	0x5
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.byte	0x6
	.4byte	0x81
	.4byte	0xcb
	.byte	0x7
	.4byte	0xb3
	.byte	0
	.byte	0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x38
	.byte	0xd
	.4byte	0x81
	.byte	0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x88
	.byte	0x5
	.byte	0x30
	.byte	0xe
	.4byte	0xf2
	.byte	0x9
	.4byte	.LASF17
	.byte	0
	.byte	0x9
	.4byte	.LASF18
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x33
	.byte	0x3
	.4byte	0xd7
	.byte	0xa
	.byte	0x10
	.byte	0x5
	.byte	0x38
	.byte	0x9
	.4byte	0x13c
	.byte	0xb
	.4byte	.LASF20
	.byte	0x5
	.byte	0x39
	.byte	0xe
	.4byte	0xa7
	.byte	0
	.byte	0xc
	.string	"pin"
	.byte	0x5
	.byte	0x3a
	.byte	0xe
	.4byte	0xa7
	.byte	0x4
	.byte	0xb
	.4byte	.LASF21
	.byte	0x5
	.byte	0x3b
	.byte	0x1d
	.4byte	0xf2
	.byte	0x8
	.byte	0xb
	.4byte	.LASF22
	.byte	0x5
	.byte	0x3c
	.byte	0xd
	.4byte	0x8f
	.byte	0xc
	.byte	0
	.byte	0x3
	.4byte	.LASF23
	.byte	0x5
	.byte	0x3d
	.byte	0x3
	.4byte	0xfe
	.byte	0x3
	.4byte	.LASF24
	.byte	0x5
	.byte	0x45
	.byte	0x10
	.4byte	0x154
	.byte	0xd
	.byte	0x4
	.4byte	0x15a
	.byte	0xe
	.4byte	0x165
	.byte	0x7
	.4byte	0xb3
	.byte	0
	.byte	0xa
	.byte	0x24
	.byte	0x5
	.byte	0x4a
	.byte	0x9
	.4byte	0x1bc
	.byte	0xb
	.4byte	.LASF25
	.byte	0x5
	.byte	0x4b
	.byte	0xd
	.4byte	0x8f
	.byte	0
	.byte	0xb
	.4byte	.LASF26
	.byte	0x5
	.byte	0x4c
	.byte	0x18
	.4byte	0x13c
	.byte	0x4
	.byte	0xb
	.4byte	.LASF27
	.byte	0x5
	.byte	0x4d
	.byte	0x16
	.4byte	0xcb
	.byte	0x14
	.byte	0xc
	.string	"cb"
	.byte	0x5
	.byte	0x4e
	.byte	0x15
	.4byte	0x148
	.byte	0x18
	.byte	0xb
	.4byte	.LASF28
	.byte	0x5
	.byte	0x4f
	.byte	0xb
	.4byte	0xb3
	.byte	0x1c
	.byte	0xb
	.4byte	.LASF29
	.byte	0x5
	.byte	0x50
	.byte	0xb
	.4byte	0xb3
	.byte	0x20
	.byte	0
	.byte	0x3
	.4byte	.LASF30
	.byte	0x5
	.byte	0x51
	.byte	0x3
	.4byte	0x165
	.byte	0xf
	.4byte	.LASF33
	.byte	0x7
	.byte	0x4
	.4byte	0x88
	.byte	0x6
	.byte	0xe
	.byte	0x6
	.4byte	0x1e7
	.byte	0x9
	.4byte	.LASF31
	.byte	0
	.byte	0x9
	.4byte	.LASF32
	.byte	0x1
	.byte	0
	.byte	0xf
	.4byte	.LASF34
	.byte	0x7
	.byte	0x4
	.4byte	0x88
	.byte	0x6
	.byte	0x34
	.byte	0x6
	.4byte	0x22a
	.byte	0x9
	.4byte	.LASF35
	.byte	0
	.byte	0x9
	.4byte	.LASF36
	.byte	0x1
	.byte	0x9
	.4byte	.LASF37
	.byte	0x2
	.byte	0x9
	.4byte	.LASF38
	.byte	0x3
	.byte	0x9
	.4byte	.LASF39
	.byte	0x4
	.byte	0x9
	.4byte	.LASF40
	.byte	0x5
	.byte	0x9
	.4byte	.LASF41
	.byte	0x6
	.byte	0x9
	.4byte	.LASF42
	.byte	0x7
	.byte	0
	.byte	0xf
	.4byte	.LASF43
	.byte	0x7
	.byte	0x4
	.4byte	0x88
	.byte	0x6
	.byte	0x3f
	.byte	0x6
	.4byte	0x267
	.byte	0x9
	.4byte	.LASF44
	.byte	0
	.byte	0x9
	.4byte	.LASF45
	.byte	0x1
	.byte	0x9
	.4byte	.LASF46
	.byte	0x2
	.byte	0x9
	.4byte	.LASF47
	.byte	0x3
	.byte	0x9
	.4byte	.LASF48
	.byte	0x4
	.byte	0x9
	.4byte	.LASF49
	.byte	0x5
	.byte	0x9
	.4byte	.LASF50
	.byte	0x6
	.byte	0
	.byte	0x3
	.4byte	.LASF51
	.byte	0x6
	.byte	0x49
	.byte	0xf
	.4byte	0x273
	.byte	0xd
	.byte	0x4
	.4byte	0xbc
	.byte	0x10
	.4byte	.LASF86
	.byte	0x30
	.byte	0x7
	.byte	0x2f
	.byte	0x8
	.4byte	0x323
	.byte	0xb
	.4byte	.LASF52
	.byte	0x7
	.byte	0x31
	.byte	0x9
	.4byte	0x338
	.byte	0
	.byte	0xb
	.4byte	.LASF53
	.byte	0x7
	.byte	0x32
	.byte	0x9
	.4byte	0x273
	.byte	0x4
	.byte	0xb
	.4byte	.LASF54
	.byte	0x7
	.byte	0x33
	.byte	0x9
	.4byte	0x273
	.byte	0x8
	.byte	0xb
	.4byte	.LASF55
	.byte	0x7
	.byte	0x34
	.byte	0x16
	.4byte	0x349
	.byte	0xc
	.byte	0xb
	.4byte	.LASF56
	.byte	0x7
	.byte	0x35
	.byte	0x9
	.4byte	0x35e
	.byte	0x10
	.byte	0xb
	.4byte	.LASF57
	.byte	0x7
	.byte	0x36
	.byte	0x9
	.4byte	0x369
	.byte	0x14
	.byte	0xb
	.4byte	.LASF58
	.byte	0x7
	.byte	0x37
	.byte	0x9
	.4byte	0x39c
	.byte	0x18
	.byte	0xb
	.4byte	.LASF59
	.byte	0x7
	.byte	0x38
	.byte	0x9
	.4byte	0x369
	.byte	0x1c
	.byte	0xb
	.4byte	.LASF60
	.byte	0x7
	.byte	0x39
	.byte	0x9
	.4byte	0x369
	.byte	0x20
	.byte	0xb
	.4byte	.LASF61
	.byte	0x7
	.byte	0x3a
	.byte	0x9
	.4byte	0x3b1
	.byte	0x24
	.byte	0xb
	.4byte	.LASF62
	.byte	0x7
	.byte	0x3b
	.byte	0x9
	.4byte	0x3d6
	.byte	0x28
	.byte	0xb
	.4byte	.LASF63
	.byte	0x7
	.byte	0x3c
	.byte	0x9
	.4byte	0x3f5
	.byte	0x2c
	.byte	0
	.byte	0x6
	.4byte	0x81
	.4byte	0x332
	.byte	0x7
	.4byte	0x332
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x8f
	.byte	0xd
	.byte	0x4
	.4byte	0x323
	.byte	0x11
	.4byte	0x343
	.byte	0xd
	.byte	0x4
	.4byte	0x1bc
	.byte	0xd
	.byte	0x4
	.4byte	0x33e
	.byte	0x6
	.4byte	0x81
	.4byte	0x35e
	.byte	0x7
	.4byte	0x343
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x34f
	.byte	0x11
	.4byte	0x81
	.byte	0xd
	.byte	0x4
	.4byte	0x364
	.byte	0x6
	.4byte	0x81
	.4byte	0x39c
	.byte	0x7
	.4byte	0x22a
	.byte	0x7
	.4byte	0xa7
	.byte	0x7
	.4byte	0xa7
	.byte	0x7
	.4byte	0x9b
	.byte	0x7
	.4byte	0x267
	.byte	0x7
	.4byte	0xb3
	.byte	0x7
	.4byte	0x1c8
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x36f
	.byte	0x6
	.4byte	0x81
	.4byte	0x3b1
	.byte	0x7
	.4byte	0x1e7
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x3a2
	.byte	0x6
	.4byte	0x81
	.4byte	0x3d0
	.byte	0x7
	.4byte	0x22a
	.byte	0x7
	.4byte	0xa7
	.byte	0x7
	.4byte	0x3d0
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0xa7
	.byte	0xd
	.byte	0x4
	.4byte	0x3b7
	.byte	0x6
	.4byte	0x81
	.4byte	0x3f5
	.byte	0x7
	.4byte	0x22a
	.byte	0x7
	.4byte	0xa7
	.byte	0x7
	.4byte	0x1c8
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x3dc
	.byte	0x3
	.4byte	.LASF64
	.byte	0x7
	.byte	0x3f
	.byte	0x21
	.4byte	0x279
	.byte	0x12
	.4byte	.LASF87
	.byte	0x7
	.byte	0x45
	.byte	0x1b
	.4byte	0x3fb
	.byte	0x13
	.4byte	.LASF68
	.byte	0x1
	.byte	0xec
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x1
	.byte	0x9c
	.4byte	0x479
	.byte	0x14
	.4byte	.LASF65
	.byte	0x1
	.byte	0xec
	.byte	0x2e
	.4byte	0x22a
	.4byte	.LLST15
	.byte	0x14
	.4byte	.LASF66
	.byte	0x1
	.byte	0xec
	.byte	0x3e
	.4byte	0xa7
	.4byte	.LLST16
	.byte	0x14
	.4byte	.LASF67
	.byte	0x1
	.byte	0xec
	.byte	0x57
	.4byte	0x1c8
	.4byte	.LLST17
	.byte	0x15
	.4byte	.LVL19
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LASF69
	.byte	0x1
	.byte	0xdc
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x1
	.byte	0x9c
	.4byte	0x4df
	.byte	0x14
	.4byte	.LASF65
	.byte	0x1
	.byte	0xdc
	.byte	0x2c
	.4byte	0x22a
	.4byte	.LLST12
	.byte	0x14
	.4byte	.LASF66
	.byte	0x1
	.byte	0xdc
	.byte	0x3c
	.4byte	0xa7
	.4byte	.LLST13
	.byte	0x14
	.4byte	.LASF70
	.byte	0x1
	.byte	0xdc
	.byte	0x4c
	.4byte	0x3d0
	.4byte	.LLST14
	.byte	0x15
	.4byte	.LVL17
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LASF71
	.byte	0x1
	.byte	0xcc
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x1
	.byte	0x9c
	.4byte	0x517
	.byte	0x14
	.4byte	.LASF72
	.byte	0x1
	.byte	0xcc
	.byte	0x2e
	.4byte	0x1e7
	.4byte	.LLST11
	.byte	0x15
	.4byte	.LVL15
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	.LASF73
	.byte	0x1
	.byte	0xbc
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x1
	.byte	0x9c
	.byte	0x17
	.4byte	.LASF74
	.byte	0x1
	.byte	0xac
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x1
	.byte	0x9c
	.byte	0x13
	.4byte	.LASF75
	.byte	0x1
	.byte	0x9c
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x1
	.byte	0x9c
	.4byte	0x5fe
	.byte	0x14
	.4byte	.LASF65
	.byte	0x1
	.byte	0x9c
	.byte	0x30
	.4byte	0x22a
	.4byte	.LLST4
	.byte	0x14
	.4byte	.LASF66
	.byte	0x1
	.byte	0x9c
	.byte	0x40
	.4byte	0xa7
	.4byte	.LLST5
	.byte	0x14
	.4byte	.LASF76
	.byte	0x1
	.byte	0x9c
	.byte	0x4f
	.4byte	0xa7
	.4byte	.LLST6
	.byte	0x14
	.4byte	.LASF77
	.byte	0x1
	.byte	0x9c
	.byte	0x61
	.4byte	0x9b
	.4byte	.LLST7
	.byte	0x18
	.string	"ops"
	.byte	0x1
	.byte	0x9c
	.byte	0x76
	.4byte	0x267
	.4byte	.LLST8
	.byte	0x18
	.string	"arg"
	.byte	0x1
	.byte	0x9c
	.byte	0x81
	.4byte	0xb3
	.4byte	.LLST9
	.byte	0x14
	.4byte	.LASF67
	.byte	0x1
	.byte	0x9c
	.byte	0x99
	.4byte	0x1c8
	.4byte	.LLST10
	.byte	0x15
	.4byte	.LVL11
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x16
	.byte	0x1
	.byte	0x5f
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x16
	.byte	0x1
	.byte	0x60
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x60
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	.LASF78
	.byte	0x1
	.byte	0x8c
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x1
	.byte	0x9c
	.byte	0x13
	.4byte	.LASF79
	.byte	0x1
	.byte	0x7c
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x1
	.byte	0x9c
	.4byte	0x64c
	.byte	0x18
	.string	"adc"
	.byte	0x1
	.byte	0x7c
	.byte	0x34
	.4byte	0x343
	.4byte	.LLST3
	.byte	0x15
	.4byte	.LVL8
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	.LASF80
	.byte	0x1
	.byte	0x6a
	.byte	0x12
	.4byte	0x343
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x1
	.byte	0x9c
	.byte	0x13
	.4byte	.LASF81
	.byte	0x1
	.byte	0x59
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x1
	.byte	0x9c
	.4byte	0x69a
	.byte	0x18
	.string	"arg"
	.byte	0x1
	.byte	0x59
	.byte	0x22
	.4byte	0xb3
	.4byte	.LLST2
	.byte	0x15
	.4byte	.LVL5
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LASF82
	.byte	0x1
	.byte	0x48
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x1
	.byte	0x9c
	.4byte	0x6d2
	.byte	0x18
	.string	"arg"
	.byte	0x1
	.byte	0x48
	.byte	0x21
	.4byte	0xb3
	.4byte	.LLST1
	.byte	0x15
	.4byte	.LVL3
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LASF88
	.byte	0x1
	.byte	0x37
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x1
	.byte	0x9c
	.byte	0x18
	.string	"mac"
	.byte	0x1
	.byte	0x37
	.byte	0x27
	.4byte	0x332
	.4byte	.LLST0
	.byte	0x15
	.4byte	.LVL1
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
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
	.byte	0x8
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
	.byte	0x7
	.byte	0x5
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
	.byte	0xd
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x11
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
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
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
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
	.byte	0x14
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
	.byte	0x15
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST15:
	.4byte	.LVL18
	.4byte	.LVL19-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19-1
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL18
	.4byte	.LVL19-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL19-1
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL18
	.4byte	.LVL19-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL19-1
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL16
	.4byte	.LVL17-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17-1
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL16
	.4byte	.LVL17-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL17-1
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL16
	.4byte	.LVL17-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL17-1
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL14
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15-1
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL10
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11-1
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL11-1
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL10
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL11-1
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL10
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL11-1
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL10
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL11-1
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL10
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL11-1
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL10
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL11-1
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x60
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8-1
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5-1
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3-1
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1-1
	.4byte	.LFE27
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
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF29:
	.string	"priv"
.LASF20:
	.string	"sampling_freq"
.LASF36:
	.string	"PM_MODE_STA_IDLE"
.LASF53:
	.string	"rf_turn_on"
.LASF55:
	.string	"adc_device_get"
.LASF35:
	.string	"PM_MODE_STA_NONE"
.LASF54:
	.string	"rf_turn_off"
.LASF60:
	.string	"pm_state_run"
.LASF2:
	.string	"short int"
.LASF34:
	.string	"PM_LEVEL"
.LASF76:
	.string	"cap_bit"
.LASF71:
	.string	"wifi_hosal_pm_capacity_set"
.LASF18:
	.string	"HOSAL_ADC_CONTINUE"
.LASF21:
	.string	"mode"
.LASF65:
	.string	"event"
.LASF4:
	.string	"__uint16_t"
.LASF70:
	.string	"retval"
.LASF44:
	.string	"WLAN_PM_EVENT_CONTROL"
.LASF26:
	.string	"config"
.LASF42:
	.string	"PM_MODE_MAX"
.LASF67:
	.string	"enable"
.LASF80:
	.string	"wifi_hosal_adc_device_get"
.LASF48:
	.string	"WLAN_PM_EVENT_SEND_NULLDATA"
.LASF37:
	.string	"PM_MODE_STA_MESH"
.LASF57:
	.string	"pm_init"
.LASF9:
	.string	"long long int"
.LASF59:
	.string	"pm_deinit"
.LASF68:
	.string	"wifi_hosal_pm_event_switch"
.LASF6:
	.string	"long int"
.LASF73:
	.string	"wifi_hosal_pm_state_run"
.LASF69:
	.string	"wifi_hosal_pm_post_event"
.LASF24:
	.string	"hosal_adc_irq_t"
.LASF3:
	.string	"__uint8_t"
.LASF41:
	.string	"PM_MODE_AP_IDLE"
.LASF75:
	.string	"wifi_hosal_pm_event_register"
.LASF22:
	.string	"sample_resolution"
.LASF62:
	.string	"pm_post_event"
.LASF1:
	.string	"unsigned char"
.LASF31:
	.string	"PM_DISABLE"
.LASF49:
	.string	"BLE_PM_EVENT_CONTROL"
.LASF0:
	.string	"signed char"
.LASF10:
	.string	"long long unsigned int"
.LASF14:
	.string	"uint32_t"
.LASF11:
	.string	"unsigned int"
.LASF28:
	.string	"p_arg"
.LASF50:
	.string	"PM_EVENT_MAX"
.LASF66:
	.string	"code"
.LASF58:
	.string	"pm_event_register"
.LASF51:
	.string	"bl_pm_cb_t"
.LASF5:
	.string	"short unsigned int"
.LASF77:
	.string	"pirority"
.LASF15:
	.string	"char"
.LASF13:
	.string	"uint16_t"
.LASF32:
	.string	"PM_ENABLE"
.LASF79:
	.string	"wifi_hosal_adc_tsen_value_get"
.LASF61:
	.string	"pm_capacity_set"
.LASF38:
	.string	"PM_MODE_STA_DOZE"
.LASF43:
	.string	"PM_EVEMT"
.LASF85:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/wifi_hosal"
.LASF30:
	.string	"hosal_adc_dev_t"
.LASF86:
	.string	"wifi_hosal_funcs"
.LASF81:
	.string	"wifi_hosal_rf_turn_off"
.LASF45:
	.string	"WLAN_PM_EVENT_ENTER_SLEEP"
.LASF87:
	.string	"g_wifi_hosal_funcs"
.LASF25:
	.string	"port"
.LASF8:
	.string	"long unsigned int"
.LASF52:
	.string	"efuse_read_mac"
.LASF64:
	.string	"wifi_hosal_funcs_t"
.LASF27:
	.string	"dma_chan"
.LASF7:
	.string	"__uint32_t"
.LASF78:
	.string	"wifi_hosal_pm_init"
.LASF56:
	.string	"adc_tsen_value_get"
.LASF33:
	.string	"PM_EVENT_ABLE"
.LASF47:
	.string	"WLAN_PM_EVENT_BEACON_LOSS"
.LASF72:
	.string	"level"
.LASF74:
	.string	"wifi_hosal_pm_deinit"
.LASF12:
	.string	"uint8_t"
.LASF88:
	.string	"wifi_hosal_efuse_read_mac"
.LASF84:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_hosal/wifi_hosal.c"
.LASF63:
	.string	"pm_event_switch"
.LASF39:
	.string	"PM_MODE_STA_COEX"
.LASF23:
	.string	"hosal_adc_config_t"
.LASF17:
	.string	"HOSAL_ADC_ONE_SHOT"
.LASF40:
	.string	"PM_MODE_STA_DOWN"
.LASF16:
	.string	"hosal_dma_chan_t"
.LASF19:
	.string	"hosal_adc_sample_mode_t"
.LASF46:
	.string	"WLAN_PM_EVENT_EXIT_SLEEP"
.LASF82:
	.string	"wifi_hosal_rf_turn_on"
.LASF83:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
