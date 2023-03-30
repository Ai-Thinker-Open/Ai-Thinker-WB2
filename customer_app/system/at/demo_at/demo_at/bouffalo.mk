#
# "main" pseudo-component makefile.
#
# (Uses default behaviour of compiling all source files in directory, adding 'include' to include path.)

include $(BL60X_SDK_PATH)/components/network/ble/ble_common.mk

ifeq ($(CONFIG_ENABLE_PSM_RAM),1)
CPPFLAGS += -DCONF_USER_ENABLE_PSRAM
endif

ifeq ($(CONFIG_ENABLE_CAMERA),1)
CPPFLAGS += -DCONF_USER_ENABLE_CAMERA
endif

ifeq ($(CONFIG_ENABLE_BLSYNC),1)
CPPFLAGS += -DCONF_USER_ENABLE_BLSYNC
endif

ifeq ($(CONFIG_ENABLE_VFS_SPI),1)
CPPFLAGS += -DCONF_USER_ENABLE_VFS_SPI
endif

ifeq ($(CONFIG_ENABLE_VFS_ROMFS),1)
CPPFLAGS += -DCONF_USER_ENABLE_VFS_ROMFS
endif

## not be exported to project level
COMPONENT_PRIV_INCLUDEDIRS := at_base at_user at_wifi at_net at_mqtt at_http at_ble

## This component's src
COMPONENT_SRCS += at_base/at_base_cmd.c
COMPONENT_SRCS += at_base/at_ble_cmd.c
COMPONENT_SRCS += at_user/at_user_cmd.c
COMPONENT_SRCS += at_wifi/at_wifi_cmd.c
COMPONENT_SRCS += at_wifi/at_wifi_main.c
COMPONENT_SRCS += at_net/at_net_cmd.c
COMPONENT_SRCS += at_net/at_net_config.c
COMPONENT_SRCS += at_net/at_net_main.c
COMPONENT_SRCS += at_mqtt/at_mqtt_cmd.c
COMPONENT_SRCS += at_http/at_http_cmd.c
COMPONENT_SRCS += at_ble/at_ble_cmd.c

COMPONENT_SRCDIRS := . at_base at_user at_wifi at_net at_mqtt at_http at_ble
