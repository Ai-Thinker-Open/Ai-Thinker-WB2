# Automatically generated build file. Do not edit.
COMPONENT_INCLUDES += $(BL60X_SDK_PATH)/components/network/wifi_manager $(BL60X_SDK_PATH)/components/network/wifi_manager/include $(BL60X_SDK_PATH)/components/network/wifi_manager/bl60x_wifi_driver/include
COMPONENT_LDFLAGS +=  -L$(BUILD_DIR_BASE)/wifi_manager  -lwifi_manager 
COMPONENT_LINKER_DEPS += 
COMPONENT_SUBMODULES += 
COMPONENT_LIBRARIES += wifi_manager
component-wifi_manager-build: 
