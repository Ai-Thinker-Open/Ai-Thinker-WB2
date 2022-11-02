# Component Makefile
#
## These include paths would be exported to project level
COMPONENT_ADD_INCLUDEDIRS += include

## not be exported to project level
COMPONENT_PRIV_INCLUDEDIRS := include

## This component's src 
COMPONENT_SRCS := bl_spiffs.c \
				  spiffs_cache.c \
				  spiffs_check.c \
				  spiffs_gc.c \
				  spiffs_hydrogen.c \
				  spiffs_nucleus.c

COMPONENT_OBJS := $(patsubst %.c,%.o, $(COMPONENT_SRCS))

COMPONENT_SRCDIRS := .

##
#CPPFLAGS += 
