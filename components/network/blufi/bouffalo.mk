#
# "main" pseudo-component makefile.
#
# (Uses default behaviour of compiling all source files in directory, adding 'include' to include path.)

COMPONENT_ADD_INCLUDEDIRS += ./include

COMPONENT_PRIV_INCLUDEDIRS := . ./include

# COMPONENT_SRCS := $(shell find -L ./ -name \*.a)

# COMPONENT_OBJS := $(patsubst %.a,%.o, $(COMPONENT_SRCS))
COMPONENT_LDFLAGS +=  -L ./blufi  -lblufi
COMPONENT_LIBRARIES +=blufi

COMPONENT_SRCDIRS := $(COMPONENT_PRIV_INCLUDEDIRS)