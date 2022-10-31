# Automatically generated build file. Do not edit.
COMPONENT_INCLUDES += $(BL60X_SDK_PATH)/components/platform/hosal $(BL60X_SDK_PATH)/components/platform/hosal/include $(BL60X_SDK_PATH)/components/platform/hosal/bl602_hal $(BL60X_SDK_PATH)/components/platform/hosal/platform_hal $(BL60X_SDK_PATH)/components/platform/hosal/include
COMPONENT_LDFLAGS +=  -L$(BUILD_DIR_BASE)/hosal  -lhosal 
COMPONENT_LINKER_DEPS += 
COMPONENT_SUBMODULES += 
COMPONENT_LIBRARIES += hosal
component-hosal-build: 
