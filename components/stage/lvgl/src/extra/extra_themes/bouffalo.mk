# Component Makefile
#
## These include paths would be exported to project level


COMPONENT_ADD_INCLUDEDIRS += ./ basic default mono

## not be exported to project level
COMPONENT_PRIV_INCLUDEDIRS :=./ basic default mono
## This component's src
COMPONENT_SRCS := $(shell find -L ./ -name \*.c)



COMPONENT_OBJS := $(patsubst %.c,%.o, $(COMPONENT_SRCS))

COMPONENT_SRCDIRS := ./ basic default mono

##
#CPPFLAGS +=
