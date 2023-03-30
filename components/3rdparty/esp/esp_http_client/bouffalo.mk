# Component Makefile
#
## These include paths would be exported to project level
COMPONENT_ADD_INCLUDEDIRS += include

## not be exported to project level
COMPONENT_PRIV_INCLUDEDIRS := lib/include

## This component's src
COMPONENT_SRCS += esp_http_client.c \
                  lib/http_auth.c   \
                  lib/http_header.c \
                  lib/http_utils.c  \


COMPONENT_OBJS := $(patsubst %.c,%.o, $(COMPONENT_SRCS))

COMPONENT_SRCDIRS := . lib

##
#CPPFLAGS +=
CFLAGS += -Wno-implicit-fallthrough
