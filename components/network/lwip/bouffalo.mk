# Component Makefile

ifeq ($(CONFIG_ETHERNET), 1)
CFLAGS   += -DCFG_ETHERNET_ENABLE
CPPFLAGS += -DCFG_ETHERNET_ENABLE
endif

#
## These include paths would be exported to project level
COMPONENT_ADD_INCLUDEDIRS += src/include src/include/compat/posix lwip-port lwip-port/config lwip-port/FreeRTOS lwip-port/arch
							 
## not be exported to project level
COMPONENT_PRIV_INCLUDEDIRS :=

## This component's src
#COMPONENT_SRCS :=
#COMPONENT_OBJS := $(patsubst %.c,%.o, $(COMPONENT_SRCS))

COMPONENT_SRCDIRS := src/api src/core src/core/ipv4 src/netif lwip-port/FreeRTOS lwip-port src/apps/altcp_tls


##
#CPPFLAGS +=
