# Component Makefile
#
## These include paths would be exported to project level


COMPONENT_ADD_INCLUDEDIRS += ./ ssd1306 st7796s
## not be exported to project level
COMPONENT_PRIV_INCLUDEDIRS :=./ ssd1306 st7796s

## This component's src
COMPONENT_SRCS := $(shell find -L ./ -name \*.c)

COMPONENT_OBJS := $(patsubst %.c,%.o, $(COMPONENT_SRCS))

COMPONENT_SRCDIRS := $(COMPONENT_PRIV_INCLUDEDIRS)


##
#CPPFLAGS +=
