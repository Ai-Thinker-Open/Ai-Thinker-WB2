
# Component Makefile
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

COMPONENT_ADD_INCLUDEDIRS := ./ ali_mqtt\
								ali_ota\
								ali_ntp\
								ali_csdk/core\
								ali_csdk/core/sysdep\
								ali_csdk/core/utils\
								ali_csdk/portfiles/aiot_port\
								ali_csdk/components/bootstrap\
								ali_csdk/components/compress\
								ali_csdk/components/data-model\
								ali_csdk/components/devinfo\
								ali_csdk/components/diag\
								ali_csdk/components/logpost\
								ali_csdk/components/mqtt_upload\
								ali_csdk/components/ntp\
								ali_csdk/components/ota\
								ali_csdk/components/shadow\
								ali_csdk/components/subdev\
								ali_csdk/components/tasks\
								ali_csdk/external\
								ali_csdk/external/libdeflate\
								ali_csdk/external/libdeflate/lib\
#ali_mqtt

COMPONENT_OBJS := $(patsubst %.c,%.o, $(COMPONENT_SRCS))

COMPONENT_SRCDIRS := ./	ali_mqtt\
						ali_ota\
						ali_ntp\
						ali_csdk/core\
						ali_csdk/core/sysdep\
						ali_csdk/core/utils\
						ali_csdk/portfiles/aiot_port\
						ali_csdk/components/bootstrap\
						ali_csdk/components/compress\
						ali_csdk/components/data-model\
						ali_csdk/components/devinfo\
						ali_csdk/components/diag\
						ali_csdk/components/logpost\
						ali_csdk/components/mqtt_upload\
						ali_csdk/components/ntp\
						ali_csdk/components/ota\
						ali_csdk/components/shadow\
						ali_csdk/components/subdev\
						ali_csdk/components/tasks\
						ali_csdk/external\
						ali_csdk/external/libdeflate\
						ali_csdk/external/libdeflate/lib\

#ali_mqtt