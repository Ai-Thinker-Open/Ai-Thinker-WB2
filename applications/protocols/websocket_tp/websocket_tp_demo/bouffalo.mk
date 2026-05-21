#
# WebSocket 透传应用：显式指定源文件与 WS 传输层缓冲（须与 websocket_tp_config.h 中一致）
#

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

# 须 >= WEBSOCKET_TP_BUFFER_SIZE（include/websocket_tp_config.h）；默认二者均为 4096
CPPFLAGS += -DCONFIG_WS_BUFFER_SIZE=4096

COMPONENT_SRCDIRS := . src
