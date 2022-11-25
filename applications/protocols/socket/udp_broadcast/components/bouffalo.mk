#
# "main" pseudo-component makefile.
#
# (Uses default behaviour of compiling all source files in directory, adding 'include' to include path.)


COMPONENT_ADD_INCLUDEDIRS += ./ ./inc
## not be exported to project level
COMPONENT_PRIV_INCLUDEDIRS := ./src 

## This component's src
COMPONENT_SRCS := $(shell find -L ./ -name \*.c)


COMPONENT_OBJS := $(patsubst %.c,%.o, $(COMPONENT_SRCS))

COMPONENT_SRCDIRS := $(COMPONENT_PRIV_INCLUDEDIRS)
