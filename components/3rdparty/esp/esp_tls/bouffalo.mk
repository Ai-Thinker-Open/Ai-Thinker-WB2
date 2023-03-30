# Component Makefile
#
## These include paths would be exported to project level
COMPONENT_ADD_INCLUDEDIRS += . \
                             esp-tls-crypto

## not be exported to project level
COMPONENT_PRIV_INCLUDEDIRS := private_include

## This component's src
COMPONENT_SRCS += esp_tls.c                       \
                  esp-tls-crypto/esp_tls_crypto.c \
                  esp_tls_error_capture.c         \
                  esp_tls_mbedtls.c               \


COMPONENT_OBJS := $(patsubst %.c,%.o, $(COMPONENT_SRCS))

COMPONENT_SRCDIRS := . \
                     esp-tls-crypto

##
#CPPFLAGS +=
