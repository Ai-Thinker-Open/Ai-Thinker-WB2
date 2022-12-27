# Component Makefile
#
## These include paths would be exported to project level
COMPONENT_ADD_INCLUDEDIRS += include

## not be exported to project level
# COMPONENT_PRIV_INCLUDEDIRS := lib/include

## This component's src
# COMPONENT_SRCS += mqtt_client.c     \
#                   mqtt_msg.c    \
#                   mqtt_outbox.c \
#                   platform_bl.c \


# COMPONENT_OBJS := $(patsubst %.c,%.o, $(COMPONENT_SRCS))

COMPONENT_LIB_ONLY := 1
COMPONENT_ADD_INCLUDEDIRS += include
LIBS ?= axk_mqtt
COMPONENT_ADD_LDFLAGS += -L$(COMPONENT_PATH) $(addprefix -l,$(LIBS))
ALL_LIB_FILES := $(patsubst %,$(COMPONENT_PATH)/lib%.a,$(LIBS))
COMPONENT_ADD_LINKER_DEPS := $(ALL_LIB_FILES)

# COMPONENT_SRCDIRS := . \
#                      lib

##
#CPPFLAGS +=
