# Automatically generated build file. Do not edit.
COMPONENT_INCLUDES += $(BL60X_SDK_PATH)/components/network/wifi $(BL60X_SDK_PATH)/components/network/wifi/include $(BL60X_SDK_PATH)/components/network/wifi/include $(BL60X_SDK_PATH)/components/network/wifi/modules/bugkiller/inc $(BL60X_SDK_PATH)/components/network/wifi/plf/refip/src/driver/phy/bl602_phy_rf
COMPONENT_LDFLAGS +=    -L$(BL60X_SDK_PATH)/components/network/wifi/lib -lwifi 
COMPONENT_LINKER_DEPS += $(BL60X_SDK_PATH)/components/network/wifi/lib/libwifi.a
component-wifi-build: 
