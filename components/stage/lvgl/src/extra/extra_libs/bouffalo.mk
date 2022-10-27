# Component Makefile
#
## These include paths would be exported to project level


COMPONENT_ADD_INCLUDEDIRS += ./ bmp ffmpeg freetype fsdrv gif png qrcode rlottie sjpg

## not be exported to project level
COMPONENT_PRIV_INCLUDEDIRS :=./ bmp ffmpeg freetype fsdrv gif png qrcode rlottie sjpg
## This component's src
COMPONENT_SRCS :=\
$(shell find -L ./ -name \*.c)\

COMPONENT_OBJS := $(patsubst %.c,%.o, $(COMPONENT_SRCS))

COMPONENT_SRCDIRS := ./ bmp ffmpeg freetype fsdrv gif png qrcode rlottie sjpg

##
#CPPFLAGS +=
