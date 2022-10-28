# Component Makefile
#
## These include paths would be exported to project level


COMPONENT_ADD_INCLUDEDIRS += ./\
arm2d\
nxp\
sdl\
stm32_dma2d\
sw\
swm341_dma2d\

## not be exported to project level
COMPONENT_PRIV_INCLUDEDIRS :=./\
arm2d\
nxp\
sdl\
stm32_dma2d\
sw\
swm341_dma2d\

## This component's src
COMPONENT_SRCS :=$(shell find -L ./ -name \*.c)
# $(shell find -L core -name \*.c)\
# $(shell find -L draw -name \*.c)\
# $(shell find -L extra -name \*.c)\
# $(shell find -L font -name \*.c)\
# $(shell find -L hal -name \*.c)\
# $(shell find -L misc -name \*.c)\
# $(shell find -L widgets -name \*.c)

COMPONENT_OBJS := $(patsubst %.c,%.o, $(COMPONENT_SRCS))

COMPONENT_SRCDIRS := ./\
arm2d\
nxp\
sdl\
stm32_dma2d\
sw\
swm341_dma2d\


##
#CPPFLAGS +=
