# Component Makefile
#
## These include paths would be exported to project level


COMPONENT_ADD_INCLUDEDIRS += ./\
core\
draw\
extra\
font\
hal\
misc\
widgets
## not be exported to project level
COMPONENT_PRIV_INCLUDEDIRS :=./\
core\
draw\
extra\
font\
hal\
misc\
widgets

## This component's src
COMPONENT_SRCS :=\
$(shell find -L core -name \*.c)\
$(shell find -L draw -name \*.c)\
$(shell find -L extra -name \*.c)\
$(shell find -L font -name \*.c)\
$(shell find -L hal -name \*.c)\
$(shell find -L misc -name \*.c)\
$(shell find -L widgets -name \*.c)

COMPONENT_OBJS := $(patsubst %.c,%.o, $(COMPONENT_SRCS))

COMPONENT_SRCDIRS := ./\
core\
draw\
extra\
font\
hal\
misc\
widgets


##
#CPPFLAGS +=
