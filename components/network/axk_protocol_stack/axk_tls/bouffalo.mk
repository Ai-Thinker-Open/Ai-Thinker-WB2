# Component Makefile
#
## These include paths would be exported to project level
# COMPONENT_ADD_INCLUDEDIRS += . \
#                              axk-tls-crypto

## not be exported to project level
COMPONENT_PRIV_INCLUDEDIRS := private_include

## This component's src
# COMPONENT_SRCS += axk_tls.c                       \
#                  axk_tls_crypto.c \
#                   axk_tls_error_capture.c         \
#                   axk_tls_mbedtls.c               \


# COMPONENT_OBJS := $(patsubst %.c,%.o, $(COMPONENT_SRCS))

COMPONENT_LIB_ONLY := 1
COMPONENT_ADD_INCLUDEDIRS += include
LIBS ?= axk_tls
COMPONENT_ADD_LDFLAGS += -L$(COMPONENT_PATH) $(addprefix -l,$(LIBS))
ALL_LIB_FILES := $(patsubst %,$(COMPONENT_PATH)/lib%.a,$(LIBS))
COMPONENT_ADD_LINKER_DEPS := $(ALL_LIB_FILES)

# COMPONENT_SRCDIRS := . \
#                      axk-tls-crypto

##
#CPPFLAGS +=
