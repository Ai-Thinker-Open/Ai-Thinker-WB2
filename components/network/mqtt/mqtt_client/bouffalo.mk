# Component Makefile
#
## These include paths would be exported to project level

COMPONENT_ADD_INCLUDEDIRS += mqtt_client/include

## not be exported to project level
COMPONENT_PRIV_INCLUDEDIRS := mqtt_client/include

## This component's src 
COMPONENT_SRCS := mqtt_client/mqtt_client.c \
				  

COMPONENT_OBJS := $(patsubst %.c,%.o, $(COMPONENT_SRCS))

COMPONENT_SRCDIRS := mqtt_client

##
#CPPFLAGS += 
