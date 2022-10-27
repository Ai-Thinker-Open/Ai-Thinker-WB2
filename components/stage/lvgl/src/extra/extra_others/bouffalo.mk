# Component Makefile
#
## These include paths would be exported to project level


COMPONENT_ADD_INCLUDEDIRS += ./ fragment gridnav ime imgfont monkey msg snapshot

## not be exported to project level
COMPONENT_PRIV_INCLUDEDIRS :=./ fragment gridnav ime imgfont monkey msg snapshot
## This component's src
COMPONENT_SRCS :=$(shell find -L ./ -name \*.c)

COMPONENT_OBJS := $(patsubst %.c,%.o, $(COMPONENT_SRCS))

COMPONENT_SRCDIRS := ./ fragment gridnav ime imgfont monkey msg snapshot

##
#CPPFLAGS +=
