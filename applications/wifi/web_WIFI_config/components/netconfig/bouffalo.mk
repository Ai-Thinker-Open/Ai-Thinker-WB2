#
# WiFi 配网、HTTP、captive portal、cJSON/EasyFlash 配置存取
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

COMPONENT_SRCDIRS := ./
COMPONENT_ADD_INCLUDEDIRS := ./
COMPONENT_SRCS := web_config_wifi.c web_config_http.c captive_portal.c web_popup.c
COMPONENT_OBJS := $(patsubst %.c,%.o,$(COMPONENT_SRCS))
