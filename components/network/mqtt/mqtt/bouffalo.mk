# Component Makefile
#
## These include paths would be exported to project level
COMPONENT_ADD_INCLUDEDIRS += mqtt/include

## not be exported to project level
COMPONENT_PRIV_INCLUDEDIRS := mqtt/include

## This component's src 
COMPONENT_SRCS := mqtt/MQTTConnectClient.c \
				  mqtt/MQTTConnectServer.c \
				  mqtt/MQTTDeserializePublish.c \
				  mqtt/MQTTFormat.c \
				  mqtt/MQTTPacket.c \
				  mqtt/MQTTSerializePublish.c \
				  mqtt/MQTTSubscribeClient.c \
				  mqtt/MQTTSubscribeServer.c \
				  mqtt/MQTTUnsubscribeClient.c \
				  mqtt/MQTTUnsubscribeServer.c\

COMPONENT_OBJS := $(patsubst %.c,%.o, $(COMPONENT_SRCS))

COMPONENT_SRCDIRS := mqtt

##
#CPPFLAGS += 
