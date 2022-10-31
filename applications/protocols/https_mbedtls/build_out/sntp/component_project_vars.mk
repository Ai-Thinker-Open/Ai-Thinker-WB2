# Automatically generated build file. Do not edit.
COMPONENT_INCLUDES += $(BL60X_SDK_PATH)/components/network/sntp $(BL60X_SDK_PATH)/components/network/sntp/include $(BL60X_SDK_PATH)/components/network/sntp/include
COMPONENT_LDFLAGS +=  -L$(BUILD_DIR_BASE)/sntp  -lsntp 
COMPONENT_LINKER_DEPS += 
COMPONENT_SUBMODULES += 
COMPONENT_LIBRARIES += sntp
component-sntp-build: 
