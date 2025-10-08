
-include $(BL60X_SDK_PATH)/components/network/ble/ble_common.mk

COMPONENT_ADD_INCLUDEDIRS +=  device_state flash    wifi  blufi_config blufi ws2812_dev sntp bilibili button user_cmd
COMPONENT_SRCDIRS += device_state flash   wifi  blufi_config blufi ws2812_dev sntp bilibili button user_cmd

COMPONENT_OBJS := $(patsubst %.c,%.o, $(COMPONENT_SRCS))

 