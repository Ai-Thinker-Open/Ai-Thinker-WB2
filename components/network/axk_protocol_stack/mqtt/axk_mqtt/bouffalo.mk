# Component Makefile
#
## These include paths would be exported to project level
COMPONENT_ADD_INCLUDEDIRS += include

## not be exported to project level
COMPONENT_PRIV_INCLUDEDIRS := lib/include

## This component's src
COMPONENT_SRCS += mqtt_client.c     \
                  lib/mqtt_msg.c    \
                  lib/mqtt_outbox.c \
                  lib/platform_bl.c \


COMPONENT_OBJS := $(patsubst %.c,%.o, $(COMPONENT_SRCS))

COMPONENT_SRCDIRS := . \
                     lib

##
#CPPFLAGS +=
