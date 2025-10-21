
# Component Makefile
#

COMPONENT_ADD_INCLUDEDIRS := ./

COMPONENT_OBJS := $(patsubst %.c,%.o, $(COMPONENT_SRCS))

COMPONENT_SRCDIRS := ./
