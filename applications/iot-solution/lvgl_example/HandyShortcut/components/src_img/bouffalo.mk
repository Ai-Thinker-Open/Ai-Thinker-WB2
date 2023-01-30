# # Component Makefile
# #
# ## These include paths would be exported to project level


COMPONENT_ADD_INCLUDEDIRS += inc/ src/
## not be exported to project level
COMPONENT_PRIV_INCLUDEDIRS :=

## This component's src
COMPONENT_SRCS :=$(shell find -L ./ -name \*.c)

COMPONENT_OBJS := $(patsubst %.c,%.o, $(COMPONENT_SRCS))

COMPONENT_SRCDIRS := src

# ##
# #CPPFLAGS +=
# include $(BL60X_SDK_PATH)/components/network/ble/ble_common.mk

# ifeq ($(CONFIG_ENABLE_PSM_RAM),1)
# CPPFLAGS += -DCONF_USER_ENABLE_PSRAM
# endif

# ifeq ($(CONFIG_ENABLE_CAMERA),1)
# CPPFLAGS += -DCONF_USER_ENABLE_CAMERA
# endif

# ifeq ($(CONFIG_ENABLE_BLSYNC),1)
# CPPFLAGS += -DCONF_USER_ENABLE_BLSYNC
# endif

# ifeq ($(CONFIG_ENABLE_VFS_SPI),1)
# CPPFLAGS += -DCONF_USER_ENABLE_VFS_SPI
# endif

# ifeq ($(CONFIG_ENABLE_VFS_ROMFS),1)
# CPPFLAGS += -DCONF_USER_ENABLE_VFS_ROMFS
# endif
