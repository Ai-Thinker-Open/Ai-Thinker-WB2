# Automatically generated build file. Do not edit.
COMPONENT_INCLUDES += $(BL60X_SDK_PATH)/components/stage/blfdt $(BL60X_SDK_PATH)/components/stage/blfdt/include $(BL60X_SDK_PATH)/components/stage/blfdt/inc
COMPONENT_LDFLAGS +=  -L$(BUILD_DIR_BASE)/blfdt  -lblfdt 
COMPONENT_LINKER_DEPS += 
COMPONENT_SUBMODULES += 
COMPONENT_LIBRARIES += blfdt
component-blfdt-build: 
