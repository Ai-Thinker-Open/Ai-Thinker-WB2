EXTRA_CPPFLAGS  ?=
ifdef CONFIG_CHIP_NAME

ifeq ("$(CONFIG_CHIP_NAME)", "BL602")
EXTRA_CPPFLAGS  += -D BL_SDK_VER=\"release_bl_iot_sdk_1.6.40-11-gf4c8dac01\"
EXTRA_CPPFLAGS  += -D BL_SDK_PHY_VER=\"a0_final-106-g24fc0eb\"
EXTRA_CPPFLAGS  += -D BL_SDK_RF_VER=\"f6ed2e9\"
EXTRA_CPPFLAGS  += -D BL_SDK_STDDRV_VER=\"a67b266\"
endif

ifeq ("$(CONFIG_CHIP_NAME)", "BL702")
EXTRA_CPPFLAGS  += -D BL_SDK_VER=\"release_bl_iot_sdk_1.6.40-11-gf4c8dac01\"
EXTRA_CPPFLAGS  += -D BL_SDK_STDDRV_VER=\"dff9318\"
EXTRA_CPPFLAGS  += -D BL_SDK_STDCOM_VER=\"9fe1995\"
EXTRA_CPPFLAGS  += -D BL_SDK_RF_VER=\"b5662bc\"
endif

else
export CONFIG_CHIP_NAME=BL602
export CONFIG_LINK_ROM=1
EXTRA_CPPFLAGS  += -D BL_SDK_VER=\"release_bl_iot_sdk_1.6.40-11-gf4c8dac01\"
EXTRA_CPPFLAGS  += -D BL_SDK_PHY_VER=\"a0_final-106-g24fc0eb\"
EXTRA_CPPFLAGS  += -D BL_SDK_RF_VER=\"f6ed2e9\"
EXTRA_CPPFLAGS  += -D BL_SDK_STDDRV_VER=\"a67b266\"
endif


ifdef p
export SERIAL_PORT=$(p)
else
export SERIAL_PORT=/dev/ttyUSB0
endif

ifdef b
export SERIAL_BAUDRATE=$(b)
else
export SERIAL_BAUDRATE=921600
endif
