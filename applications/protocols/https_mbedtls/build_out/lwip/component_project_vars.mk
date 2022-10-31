# Automatically generated build file. Do not edit.
COMPONENT_INCLUDES += $(BL60X_SDK_PATH)/components/network/lwip $(BL60X_SDK_PATH)/components/network/lwip/include $(BL60X_SDK_PATH)/components/network/lwip/src/include $(BL60X_SDK_PATH)/components/network/lwip/src/include/compat/posix $(BL60X_SDK_PATH)/components/network/lwip/lwip-port $(BL60X_SDK_PATH)/components/network/lwip/lwip-port/config $(BL60X_SDK_PATH)/components/network/lwip/lwip-port/FreeRTOS $(BL60X_SDK_PATH)/components/network/lwip/lwip-port/arch
COMPONENT_LDFLAGS +=  -L$(BUILD_DIR_BASE)/lwip  -llwip 
COMPONENT_LINKER_DEPS += 
COMPONENT_SUBMODULES += 
COMPONENT_LIBRARIES += lwip
component-lwip-build: 
