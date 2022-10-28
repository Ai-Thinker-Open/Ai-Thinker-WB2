# Component Makefile
#
## These include paths would be exported to project level


COMPONENT_ADD_INCLUDEDIRS += ./ animimg calendar chart colorwheel imgbtn keyboard led list menu meter msgbox span spinbox spinner tabview tileview win

## not be exported to project level
COMPONENT_PRIV_INCLUDEDIRS :=./ animimg calendar chart colorwheel imgbtn keyboard led list menu meter msgbox span spinbox spinner tabview tileview win
## This component's src
COMPONENT_SRCS := $(shell find -L ./ -name \*.c)



COMPONENT_OBJS := $(patsubst %.c,%.o, $(COMPONENT_SRCS))

COMPONENT_SRCDIRS := ./ animimg calendar chart colorwheel imgbtn keyboard led list menu meter msgbox span spinbox spinner tabview tileview win

##
#CPPFLAGS +=
