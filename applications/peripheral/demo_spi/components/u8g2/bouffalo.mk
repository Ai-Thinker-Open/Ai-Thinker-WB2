
# Component Makefile
#
COMPONENT_ADD_INCLUDEDIRS := u8g2/csrc

COMPONENT_OBJS := $(patsubst %.c,%.o, $(COMPONENT_SRCS))

COMPONENT_SRCDIRS := u8g2/csrc

# Check the submodule is initialised
COMPONENT_SUBMODULES := u8g2
