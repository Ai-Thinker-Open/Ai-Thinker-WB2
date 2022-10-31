	.file	"wifi_hosal_bl602.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.hosal_wifi_ret_zero,"ax",@progbits
	.align	1
	.type	hosal_wifi_ret_zero, @function
hosal_wifi_ret_zero:
.LFB25:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_hosal/include/wifi_hosal.h"
	.loc 1 77 1
	.cfi_startproc
.LVL0:
	.loc 1 78 3
	.loc 1 79 1 is_stmt 0
	li	a0,0
.LVL1:
	ret
	.cfi_endproc
.LFE25:
	.size	hosal_wifi_ret_zero, .-hosal_wifi_ret_zero
	.globl	g_wifi_hosal_funcs
	.section	.data.g_wifi_hosal_funcs,"aw"
	.align	2
	.type	g_wifi_hosal_funcs, @object
	.size	g_wifi_hosal_funcs, 48
g_wifi_hosal_funcs:
	.word	bl_efuse_read_mac
	.word	bl_pds_rf_turnon
	.word	bl_pds_rf_turnoff
	.word	hosal_adc_device_get
	.word	hosal_wifi_ret_zero
	.word	bl_pm_init
	.word	bl_pm_event_register
	.word	bl_pm_deinit
	.word	bl_pm_state_run
	.word	bl_pm_capacity_set
	.word	pm_post_event
	.word	bl_pm_event_switch
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/include/hosal_dma.h"
	.file 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/include/hosal_adc.h"
	.file 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_pm.h"
	.file 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_hosal/port/wifi_hosal_bl602.c"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x445
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF65
	.byte	0xc
	.4byte	.LASF66
	.4byte	.LASF67
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
	.4byte	.LASF68
	.byte	0x30
	.byte	0x1
	.byte	0x2f
	.byte	0x8
	.4byte	0x323
	.byte	0xb
	.4byte	.LASF52
	.byte	0x1
	.byte	0x31
	.byte	0x9
	.4byte	0x338
	.byte	0
	.byte	0xb
	.4byte	.LASF53
	.byte	0x1
	.byte	0x32
	.byte	0x9
	.4byte	0x273
	.byte	0x4
	.byte	0xb
	.4byte	.LASF54
	.byte	0x1
	.byte	0x33
	.byte	0x9
	.4byte	0x273
	.byte	0x8
	.byte	0xb
	.4byte	.LASF55
	.byte	0x1
	.byte	0x34
	.byte	0x16
	.4byte	0x349
	.byte	0xc
	.byte	0xb
	.4byte	.LASF56
	.byte	0x1
	.byte	0x35
	.byte	0x9
	.4byte	0x35e
	.byte	0x10
	.byte	0xb
	.4byte	.LASF57
	.byte	0x1
	.byte	0x36
	.byte	0x9
	.4byte	0x369
	.byte	0x14
	.byte	0xb
	.4byte	.LASF58
	.byte	0x1
	.byte	0x37
	.byte	0x9
	.4byte	0x39c
	.byte	0x18
	.byte	0xb
	.4byte	.LASF59
	.byte	0x1
	.byte	0x38
	.byte	0x9
	.4byte	0x369
	.byte	0x1c
	.byte	0xb
	.4byte	.LASF60
	.byte	0x1
	.byte	0x39
	.byte	0x9
	.4byte	0x369
	.byte	0x20
	.byte	0xb
	.4byte	.LASF61
	.byte	0x1
	.byte	0x3a
	.byte	0x9
	.4byte	0x3b1
	.byte	0x24
	.byte	0xb
	.4byte	.LASF62
	.byte	0x1
	.byte	0x3b
	.byte	0x9
	.4byte	0x3d6
	.byte	0x28
	.byte	0xb
	.4byte	.LASF63
	.byte	0x1
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
	.byte	0x1
	.byte	0x3f
	.byte	0x21
	.4byte	0x279
	.byte	0x12
	.4byte	.LASF69
	.byte	0x1
	.byte	0x45
	.byte	0x1b
	.4byte	0x3fb
	.byte	0x13
	.4byte	0x407
	.byte	0x7
	.byte	0x2a
	.byte	0x14
	.byte	0x5
	.byte	0x3
	.4byte	g_wifi_hosal_funcs
	.byte	0x14
	.4byte	.LASF70
	.byte	0x1
	.byte	0x4c
	.byte	0x13
	.4byte	0x81
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x1
	.byte	0x9c
	.byte	0x15
	.string	"arg"
	.byte	0x1
	.byte	0x4c
	.byte	0x2d
	.4byte	0xb3
	.4byte	.LLST0
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
	.byte	0x14
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
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
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
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF29:
	.string	"priv"
.LASF20:
	.string	"sampling_freq"
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
.LASF66:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_hosal/port/wifi_hosal_bl602.c"
.LASF18:
	.string	"HOSAL_ADC_CONTINUE"
.LASF21:
	.string	"mode"
.LASF4:
	.string	"__uint16_t"
.LASF44:
	.string	"WLAN_PM_EVENT_CONTROL"
.LASF26:
	.string	"config"
.LASF42:
	.string	"PM_MODE_MAX"
.LASF12:
	.string	"uint8_t"
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
.LASF6:
	.string	"long int"
.LASF24:
	.string	"hosal_adc_irq_t"
.LASF3:
	.string	"__uint8_t"
.LASF41:
	.string	"PM_MODE_AP_IDLE"
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
.LASF58:
	.string	"pm_event_register"
.LASF51:
	.string	"bl_pm_cb_t"
.LASF70:
	.string	"hosal_wifi_ret_zero"
.LASF5:
	.string	"short unsigned int"
.LASF15:
	.string	"char"
.LASF13:
	.string	"uint16_t"
.LASF32:
	.string	"PM_ENABLE"
.LASF61:
	.string	"pm_capacity_set"
.LASF38:
	.string	"PM_MODE_STA_DOZE"
.LASF43:
	.string	"PM_EVEMT"
.LASF67:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/wifi_hosal"
.LASF30:
	.string	"hosal_adc_dev_t"
.LASF68:
	.string	"wifi_hosal_funcs"
.LASF45:
	.string	"WLAN_PM_EVENT_ENTER_SLEEP"
.LASF69:
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
.LASF56:
	.string	"adc_tsen_value_get"
.LASF33:
	.string	"PM_EVENT_ABLE"
.LASF47:
	.string	"WLAN_PM_EVENT_BEACON_LOSS"
.LASF36:
	.string	"PM_MODE_STA_IDLE"
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
.LASF65:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
