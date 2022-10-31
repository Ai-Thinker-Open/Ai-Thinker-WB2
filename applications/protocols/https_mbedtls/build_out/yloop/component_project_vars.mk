# Automatically generated build file. Do not edit.
COMPONENT_INCLUDES += $(BL60X_SDK_PATH)/components/stage/yloop $(BL60X_SDK_PATH)/components/stage/yloop/include $(BL60X_SDK_PATH)/components/stage/yloop/include
COMPONENT_LDFLAGS +=  -L$(BUILD_DIR_BASE)/yloop  -lyloop 
COMPONENT_LINKER_DEPS += 
COMPONENT_SUBMODULES += 
COMPONENT_LIBRARIES += yloop
component-yloop-build: 
