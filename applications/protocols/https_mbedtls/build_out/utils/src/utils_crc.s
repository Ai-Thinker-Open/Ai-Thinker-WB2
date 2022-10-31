	.file	"utils_crc.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.utils_crc16,"ax",@progbits
	.align	1
	.globl	utils_crc16
	.type	utils_crc16, @function
utils_crc16:
.LFB4:
	.file 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/src/utils_crc.c"
	.loc 1 65 1
	.cfi_startproc
.LVL0:
	.loc 1 66 2
	.loc 1 67 2
	.loc 1 68 2
	.loc 1 69 3
	.loc 1 71 2
	.loc 1 74 34 is_stmt 0
	lui	a2,%hi(.LANCHOR0)
	.loc 1 75 11
	lui	a6,%hi(.LANCHOR1)
	add	a1,a0,a1
.LVL1:
	.loc 1 67 10
	li	a4,255
	.loc 1 66 10
	li	a3,255
	.loc 1 74 34
	addi	a2,a2,%lo(.LANCHOR0)
	.loc 1 75 11
	addi	a6,a6,%lo(.LANCHOR1)
.LVL2:
.L2:
	.loc 1 71 8 is_stmt 1
	bne	a0,a1,.L3
	.loc 1 78 2
	.loc 1 78 25 is_stmt 0
	slli	a0,a3,8
.LVL3:
	.loc 1 79 1
	or	a0,a0,a4
	ret
.LVL4:
.L3:
	.loc 1 73 3 is_stmt 1
	.loc 1 73 10 is_stmt 0
	lbu	a5,0(a0)
	.loc 1 73 27
	addi	a0,a0,1
.LVL5:
	.loc 1 74 3 is_stmt 1
	.loc 1 74 34 is_stmt 0
	xor	a5,a4,a5
	add	a4,a2,a5
.LVL6:
	.loc 1 74 11
	lbu	a4,0(a4)
	.loc 1 75 11
	add	a5,a6,a5
	.loc 1 74 11
	xor	a4,a3,a4
.LVL7:
	.loc 1 75 3 is_stmt 1
	.loc 1 75 11 is_stmt 0
	lbu	a3,0(a5)
.LVL8:
	j	.L2
	.cfi_endproc
.LFE4:
	.size	utils_crc16, .-utils_crc16
	.section	.text.utils_crc32,"ax",@progbits
	.align	1
	.globl	utils_crc32
	.type	utils_crc32, @function
utils_crc32:
.LFB5:
	.loc 1 131 1 is_stmt 1
	.cfi_startproc
.LVL9:
	.loc 1 132 2
	.loc 1 133 3
	.loc 1 135 2
	.loc 1 137 2
	.loc 1 138 17 is_stmt 0
	lui	a3,%hi(.LANCHOR2)
	add	a1,a0,a1
.LVL10:
	.loc 1 135 6
	li	a4,-1
	.loc 1 138 17
	addi	a3,a3,%lo(.LANCHOR2)
.LVL11:
.L5:
	.loc 1 137 8 is_stmt 1
	bne	a0,a1,.L6
	.loc 1 140 2
	.loc 1 141 1 is_stmt 0
	not	a0,a4
.LVL12:
	ret
.LVL13:
.L6:
	.loc 1 138 3 is_stmt 1
	.loc 1 138 25 is_stmt 0
	lbu	a5,0(a0)
	.loc 1 138 30
	addi	a0,a0,1
.LVL14:
	.loc 1 138 23
	xor	a5,a5,a4
	.loc 1 138 34
	andi	a5,a5,255
	.loc 1 138 17
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	.loc 1 138 49
	srli	a4,a4,8
.LVL15:
	.loc 1 138 7
	xor	a4,a5,a4
.LVL16:
	j	.L5
	.cfi_endproc
.LFE5:
	.size	utils_crc32, .-utils_crc32
	.section	.text.utils_crc32_stream_init,"ax",@progbits
	.align	1
	.globl	utils_crc32_stream_init
	.type	utils_crc32_stream_init, @function
utils_crc32_stream_init:
.LFB6:
	.loc 1 144 1 is_stmt 1
	.cfi_startproc
.LVL17:
	.loc 1 145 3
	.loc 1 145 12 is_stmt 0
	li	a5,-1
	sw	a5,0(a0)
	.loc 1 146 1
	ret
	.cfi_endproc
.LFE6:
	.size	utils_crc32_stream_init, .-utils_crc32_stream_init
	.section	.text.utils_crc32_stream_feed,"ax",@progbits
	.align	1
	.globl	utils_crc32_stream_feed
	.type	utils_crc32_stream_feed, @function
utils_crc32_stream_feed:
.LFB7:
	.loc 1 149 1 is_stmt 1
	.cfi_startproc
.LVL18:
	.loc 1 150 2
	.loc 1 150 26 is_stmt 0
	lw	a4,0(a0)
	.loc 1 150 21
	lui	a5,%hi(.LANCHOR2)
	addi	a5,a5,%lo(.LANCHOR2)
	.loc 1 150 32
	xor	a1,a1,a4
.LVL19:
	.loc 1 150 40
	andi	a1,a1,255
	.loc 1 150 21
	slli	a1,a1,2
	add	a1,a5,a1
	.loc 1 150 48
	lw	a5,0(a1)
	.loc 1 150 60
	srli	a4,a4,8
	.loc 1 150 48
	xor	a4,a5,a4
	.loc 1 150 11
	sw	a4,0(a0)
	.loc 1 151 1
	ret
	.cfi_endproc
.LFE7:
	.size	utils_crc32_stream_feed, .-utils_crc32_stream_feed
	.section	.text.utils_crc32_stream_feed_block,"ax",@progbits
	.align	1
	.globl	utils_crc32_stream_feed_block
	.type	utils_crc32_stream_feed_block, @function
utils_crc32_stream_feed_block:
.LFB8:
	.loc 1 154 1 is_stmt 1
	.cfi_startproc
.LVL20:
	.loc 1 155 3
	.loc 1 156 23 is_stmt 0
	lui	a3,%hi(.LANCHOR2)
	add	a2,a1,a2
.LVL21:
	addi	a3,a3,%lo(.LANCHOR2)
.LVL22:
.L10:
	.loc 1 155 9 is_stmt 1
	bne	a1,a2,.L11
	.loc 1 157 1 is_stmt 0
	ret
.L11:
	.loc 1 156 4 is_stmt 1
	.loc 1 156 28 is_stmt 0
	lw	a4,0(a0)
	.loc 1 156 36
	lbu	a5,0(a1)
	.loc 1 156 41
	addi	a1,a1,1
.LVL23:
	.loc 1 156 34
	xor	a5,a5,a4
	.loc 1 156 45
	andi	a5,a5,255
	.loc 1 156 23
	slli	a5,a5,2
	add	a5,a3,a5
	.loc 1 156 53
	lw	a5,0(a5)
	.loc 1 156 65
	srli	a4,a4,8
	.loc 1 156 53
	xor	a4,a5,a4
	.loc 1 156 13
	sw	a4,0(a0)
	j	.L10
	.cfi_endproc
.LFE8:
	.size	utils_crc32_stream_feed_block, .-utils_crc32_stream_feed_block
	.section	.text.utils_crc32_stream_results,"ax",@progbits
	.align	1
	.globl	utils_crc32_stream_results
	.type	utils_crc32_stream_results, @function
utils_crc32_stream_results:
.LFB9:
	.loc 1 160 1 is_stmt 1
	.cfi_startproc
.LVL24:
	.loc 1 161 3
	.loc 1 161 19 is_stmt 0
	lw	a0,0(a0)
.LVL25:
	.loc 1 162 1
	not	a0,a0
	ret
	.cfi_endproc
.LFE9:
	.size	utils_crc32_stream_results, .-utils_crc32_stream_results
	.section	.rodata.chCRCHTalbe,"a"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	chCRCHTalbe, @object
	.size	chCRCHTalbe, 256
chCRCHTalbe:
	.string	""
	.string	"\301\201@\001\300\200A\001\300\200A"
	.string	"\301\201@\001\300\200A"
	.string	"\301\201@"
	.string	"\301\201@\001\300\200A\001\300\200A"
	.string	"\301\201@"
	.string	"\301\201@\001\300\200A"
	.string	"\301\201@\001\300\200A\001\300\200A"
	.string	"\301\201@\001\300\200A"
	.string	"\301\201@"
	.string	"\301\201@\001\300\200A"
	.string	"\301\201@\001\300\200A\001\300\200A"
	.string	"\301\201@"
	.string	"\301\201@\001\300\200A\001\300\200A"
	.string	"\301\201@\001\300\200A"
	.string	"\301\201@"
	.string	"\301\201@\001\300\200A\001\300\200A"
	.string	"\301\201@"
	.string	"\301\201@\001\300\200A"
	.string	"\301\201@\001\300\200A\001\300\200A"
	.string	"\301\201@"
	.string	"\301\201@\001\300\200A\001\300\200A"
	.string	"\301\201@\001\300\200A"
	.string	"\301\201@"
	.string	"\301\201@\001\300\200A"
	.string	"\301\201@\001\300\200A\001\300\200A"
	.string	"\301\201@\001\300\200A"
	.string	"\301\201@"
	.string	"\301\201@\001\300\200A\001\300\200A"
	.string	"\301\201@"
	.string	"\301\201@\001\300\200A"
	.string	"\301\201@\001\300\200A\001\300\200A"
	.ascii	"\301\201@"
	.section	.rodata.chCRCLTalbe,"a"
	.align	2
	.set	.LANCHOR1,. + 0
	.type	chCRCLTalbe, @object
	.size	chCRCLTalbe, 256
chCRCLTalbe:
	.string	""
	.ascii	"\300\301\001\303\003\002\302\306\006\007\307\005\305\304\004"
	.ascii	"\314\f\r\315\017\317\316\016\n\312\313\013\311\t\b\310\330\030"
	.ascii	"\031\331\033\333\332\032\036\336\337\037\335\035\034\334\024"
	.ascii	"\324\325\025\327\027\026\326\322\022\023\323\021\321\320\020"
	.ascii	"\36001\3613\363\36226\366\3677\36554\364<\374\375=\377?>\376"
	.ascii	"\372:;\3739\371\3708(\350\351)\353+*\352\356./\357-\355\354,"
	.ascii	"\344$%\345'\347\346&\"\342\343#\341! \340\240`a\241c\243\242"
	.ascii	"bf\246\247g\245ed\244l\254\255m\257on\256\252jk\253i\251\250"
	.ascii	"hx\270\271y\273{z\272\276~\177\277}\275\274|\264tu\265w\267\266"
	.ascii	"vr\262\263s\261qp\260P\220\221Q\223SR\222\226VW\227U\225\224"
	.ascii	"T\234\\]\235_\237\236^Z\232\233[\231YX\230\210HI\211K\213\212"
	.ascii	"JN\216\217O\215ML\214D\204\205E\207GF\206\202BC\203A\201\200"
	.ascii	"@"
	.section	.rodata.crc32Tab,"a"
	.align	2
	.set	.LANCHOR2,. + 0
	.type	crc32Tab, @object
	.size	crc32Tab, 1024
crc32Tab:
	.word	0
	.word	1996959894
	.word	-301047508
	.word	-1727442502
	.word	124634137
	.word	1886057615
	.word	-379345611
	.word	-1637575261
	.word	249268274
	.word	2044508324
	.word	-522852066
	.word	-1747789432
	.word	162941995
	.word	2125561021
	.word	-407360249
	.word	-1866523247
	.word	498536548
	.word	1789927666
	.word	-205950648
	.word	-2067906082
	.word	450548861
	.word	1843258603
	.word	-187386543
	.word	-2083289657
	.word	325883990
	.word	1684777152
	.word	-43845254
	.word	-1973040660
	.word	335633487
	.word	1661365465
	.word	-99664541
	.word	-1928851979
	.word	997073096
	.word	1281953886
	.word	-715111964
	.word	-1570279054
	.word	1006888145
	.word	1258607687
	.word	-770865667
	.word	-1526024853
	.word	901097722
	.word	1119000684
	.word	-608450090
	.word	-1396901568
	.word	853044451
	.word	1172266101
	.word	-589951537
	.word	-1412350631
	.word	651767980
	.word	1373503546
	.word	-925412992
	.word	-1076862698
	.word	565507253
	.word	1454621731
	.word	-809855591
	.word	-1195530993
	.word	671266974
	.word	1594198024
	.word	-972236366
	.word	-1324619484
	.word	795835527
	.word	1483230225
	.word	-1050600021
	.word	-1234817731
	.word	1994146192
	.word	31158534
	.word	-1731059524
	.word	-271249366
	.word	1907459465
	.word	112637215
	.word	-1614814043
	.word	-390540237
	.word	2013776290
	.word	251722036
	.word	-1777751922
	.word	-519137256
	.word	2137656763
	.word	141376813
	.word	-1855689577
	.word	-429695999
	.word	1802195444
	.word	476864866
	.word	-2056965928
	.word	-228458418
	.word	1812370925
	.word	453092731
	.word	-2113342271
	.word	-183516073
	.word	1706088902
	.word	314042704
	.word	-1950435094
	.word	-54949764
	.word	1658658271
	.word	366619977
	.word	-1932296973
	.word	-69972891
	.word	1303535960
	.word	984961486
	.word	-1547960204
	.word	-725929758
	.word	1256170817
	.word	1037604311
	.word	-1529756563
	.word	-740887301
	.word	1131014506
	.word	879679996
	.word	-1385723834
	.word	-631195440
	.word	1141124467
	.word	855842277
	.word	-1442165665
	.word	-586318647
	.word	1342533948
	.word	654459306
	.word	-1106571248
	.word	-921952122
	.word	1466479909
	.word	544179635
	.word	-1184443383
	.word	-832445281
	.word	1591671054
	.word	702138776
	.word	-1328506846
	.word	-942167884
	.word	1504918807
	.word	783551873
	.word	-1212326853
	.word	-1061524307
	.word	-306674912
	.word	-1698712650
	.word	62317068
	.word	1957810842
	.word	-355121351
	.word	-1647151185
	.word	81470997
	.word	1943803523
	.word	-480048366
	.word	-1805370492
	.word	225274430
	.word	2053790376
	.word	-468791541
	.word	-1828061283
	.word	167816743
	.word	2097651377
	.word	-267414716
	.word	-2029476910
	.word	503444072
	.word	1762050814
	.word	-144550051
	.word	-2140837941
	.word	426522225
	.word	1852507879
	.word	-19653770
	.word	-1982649376
	.word	282753626
	.word	1742555852
	.word	-105259153
	.word	-1900089351
	.word	397917763
	.word	1622183637
	.word	-690576408
	.word	-1580100738
	.word	953729732
	.word	1340076626
	.word	-776247311
	.word	-1497606297
	.word	1068828381
	.word	1219638859
	.word	-670225446
	.word	-1358292148
	.word	906185462
	.word	1090812512
	.word	-547295293
	.word	-1469587627
	.word	829329135
	.word	1181335161
	.word	-882789492
	.word	-1134132454
	.word	628085408
	.word	1382605366
	.word	-871598187
	.word	-1156888829
	.word	570562233
	.word	1426400815
	.word	-977650754
	.word	-1296233688
	.word	733239954
	.word	1555261956
	.word	-1026031705
	.word	-1244606671
	.word	752459403
	.word	1541320221
	.word	-1687895376
	.word	-328994266
	.word	1969922972
	.word	40735498
	.word	-1677130071
	.word	-351390145
	.word	1913087877
	.word	83908371
	.word	-1782625662
	.word	-491226604
	.word	2075208622
	.word	213261112
	.word	-1831694693
	.word	-438977011
	.word	2094854071
	.word	198958881
	.word	-2032938284
	.word	-237706686
	.word	1759359992
	.word	534414190
	.word	-2118248755
	.word	-155638181
	.word	1873836001
	.word	414664567
	.word	-2012718362
	.word	-15766928
	.word	1711684554
	.word	285281116
	.word	-1889165569
	.word	-127750551
	.word	1634467795
	.word	376229701
	.word	-1609899400
	.word	-686959890
	.word	1308918612
	.word	956543938
	.word	-1486412191
	.word	-799009033
	.word	1231636301
	.word	1047427035
	.word	-1362007478
	.word	-640263460
	.word	1088359270
	.word	936918000
	.word	-1447252397
	.word	-558129467
	.word	1202900863
	.word	817233897
	.word	-1111625188
	.word	-893730166
	.word	1404277552
	.word	615818150
	.word	-1160759803
	.word	-841546093
	.word	1423857449
	.word	601450431
	.word	-1285129682
	.word	-1000256840
	.word	1567103746
	.word	711928724
	.word	-1274298825
	.word	-1022587231
	.word	1510334235
	.word	755167117
	.text
.Letext0:
	.file 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_crc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2e6
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF30
	.byte	0xc
	.4byte	.LASF31
	.4byte	.LASF32
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
	.byte	0x5
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x6
	.4byte	0x98
	.byte	0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x46
	.byte	0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x60
	.byte	0x6
	.4byte	0xb5
	.byte	0x7
	.4byte	.LASF33
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.4byte	0xe1
	.byte	0x8
	.string	"crc"
	.byte	0x4
	.byte	0x9
	.byte	0xc
	.4byte	0xb5
	.byte	0
	.byte	0
	.byte	0x9
	.4byte	0xa4
	.4byte	0xf1
	.byte	0xa
	.4byte	0x88
	.byte	0xff
	.byte	0
	.byte	0x6
	.4byte	0xe1
	.byte	0xb
	.4byte	.LASF16
	.byte	0x1
	.byte	0xc
	.byte	0x16
	.4byte	0xf1
	.byte	0x5
	.byte	0x3
	.4byte	chCRCHTalbe
	.byte	0xb
	.4byte	.LASF17
	.byte	0x1
	.byte	0x26
	.byte	0x16
	.4byte	0xf1
	.byte	0x5
	.byte	0x3
	.4byte	chCRCLTalbe
	.byte	0x9
	.4byte	0xc1
	.4byte	0x12a
	.byte	0xa
	.4byte	0x88
	.byte	0xff
	.byte	0
	.byte	0x6
	.4byte	0x11a
	.byte	0xb
	.4byte	.LASF18
	.byte	0x1
	.byte	0x54
	.byte	0x17
	.4byte	0x12a
	.byte	0x5
	.byte	0x3
	.4byte	crc32Tab
	.byte	0xc
	.4byte	.LASF23
	.byte	0x1
	.byte	0x9f
	.byte	0xa
	.4byte	0xb5
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x16c
	.byte	0xd
	.string	"ctx"
	.byte	0x1
	.byte	0x9f
	.byte	0x3e
	.4byte	0x16c
	.4byte	.LLST13
	.byte	0
	.byte	0xe
	.byte	0x4
	.4byte	0xc6
	.byte	0xf
	.4byte	.LASF20
	.byte	0x1
	.byte	0x99
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x1b7
	.byte	0x10
	.string	"ctx"
	.byte	0x1
	.byte	0x99
	.byte	0x3d
	.4byte	0x16c
	.byte	0x1
	.byte	0x5a
	.byte	0x11
	.4byte	.LASF19
	.byte	0x1
	.byte	0x99
	.byte	0x4b
	.4byte	0x1b7
	.4byte	.LLST11
	.byte	0xd
	.string	"len"
	.byte	0x1
	.byte	0x99
	.byte	0x5a
	.4byte	0xb5
	.4byte	.LLST12
	.byte	0
	.byte	0xe
	.byte	0x4
	.4byte	0x98
	.byte	0xf
	.4byte	.LASF21
	.byte	0x1
	.byte	0x94
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x1f2
	.byte	0x10
	.string	"ctx"
	.byte	0x1
	.byte	0x94
	.byte	0x37
	.4byte	0x16c
	.byte	0x1
	.byte	0x5a
	.byte	0x11
	.4byte	.LASF19
	.byte	0x1
	.byte	0x94
	.byte	0x44
	.4byte	0x98
	.4byte	.LLST10
	.byte	0
	.byte	0xf
	.4byte	.LASF22
	.byte	0x1
	.byte	0x8f
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x217
	.byte	0x10
	.string	"ctx"
	.byte	0x1
	.byte	0x8f
	.byte	0x37
	.4byte	0x16c
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0xc
	.4byte	.LASF24
	.byte	0x1
	.byte	0x82
	.byte	0xa
	.4byte	0xb5
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x272
	.byte	0x11
	.4byte	.LASF25
	.byte	0x1
	.byte	0x82
	.byte	0x1c
	.4byte	0x8f
	.4byte	.LLST6
	.byte	0xd
	.string	"len"
	.byte	0x1
	.byte	0x82
	.byte	0x2d
	.4byte	0xb5
	.4byte	.LLST7
	.byte	0x12
	.string	"crc"
	.byte	0x1
	.byte	0x84
	.byte	0xb
	.4byte	0xb5
	.4byte	.LLST8
	.byte	0x13
	.4byte	.LASF19
	.byte	0x1
	.byte	0x85
	.byte	0xc
	.4byte	0x1b7
	.4byte	.LLST9
	.byte	0
	.byte	0x14
	.4byte	.LASF26
	.byte	0x1
	.byte	0x40
	.byte	0xa
	.4byte	0xa9
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.byte	0x11
	.4byte	.LASF25
	.byte	0x1
	.byte	0x40
	.byte	0x1d
	.4byte	0x8f
	.4byte	.LLST0
	.byte	0xd
	.string	"len"
	.byte	0x1
	.byte	0x40
	.byte	0x2e
	.4byte	0xb5
	.4byte	.LLST1
	.byte	0x13
	.4byte	.LASF27
	.byte	0x1
	.byte	0x42
	.byte	0xa
	.4byte	0x98
	.4byte	.LLST2
	.byte	0x13
	.4byte	.LASF28
	.byte	0x1
	.byte	0x43
	.byte	0xa
	.4byte	0x98
	.4byte	.LLST3
	.byte	0x13
	.4byte	.LASF29
	.byte	0x1
	.byte	0x44
	.byte	0xb
	.4byte	0xa9
	.4byte	.LLST4
	.byte	0x13
	.4byte	.LASF19
	.byte	0x1
	.byte	0x45
	.byte	0xc
	.4byte	0x1b7
	.4byte	.LLST5
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
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
	.byte	0x8
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
	.byte	0x9
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xb
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
	.byte	0xc
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
	.byte	0xd
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
	.byte	0xe
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x14
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
.LLST13:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL20
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL23
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LFE8
	.2byte	0x6
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL19
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LFE5
	.2byte	0x6
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL16
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL9
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LFE4
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
	.byte	0x5b
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LFE4
	.2byte	0x6
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL7
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0xb
	.byte	0x7a
	.byte	0x7f
	.byte	0x94
	.byte	0x1
	.byte	0x7e
	.byte	0
	.byte	0x27
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x44
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB4
	.4byte	.LFE4
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF3:
	.string	"__uint8_t"
.LASF25:
	.string	"dataIn"
.LASF18:
	.string	"crc32Tab"
.LASF23:
	.string	"utils_crc32_stream_results"
.LASF4:
	.string	"__uint16_t"
.LASF32:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/utils"
.LASF19:
	.string	"data"
.LASF1:
	.string	"unsigned char"
.LASF33:
	.string	"crc32_stream_ctx"
.LASF8:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF27:
	.string	"chCRCHi"
.LASF24:
	.string	"utils_crc32"
.LASF22:
	.string	"utils_crc32_stream_init"
.LASF21:
	.string	"utils_crc32_stream_feed"
.LASF7:
	.string	"__uint32_t"
.LASF26:
	.string	"utils_crc16"
.LASF11:
	.string	"unsigned int"
.LASF10:
	.string	"long long unsigned int"
.LASF13:
	.string	"uint8_t"
.LASF20:
	.string	"utils_crc32_stream_feed_block"
.LASF16:
	.string	"chCRCHTalbe"
.LASF28:
	.string	"chCRCLo"
.LASF9:
	.string	"long long int"
.LASF30:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF12:
	.string	"char"
.LASF2:
	.string	"short int"
.LASF17:
	.string	"chCRCLTalbe"
.LASF29:
	.string	"wIndex"
.LASF14:
	.string	"uint16_t"
.LASF31:
	.string	"/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/src/utils_crc.c"
.LASF15:
	.string	"uint32_t"
.LASF6:
	.string	"long int"
.LASF0:
	.string	"signed char"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
