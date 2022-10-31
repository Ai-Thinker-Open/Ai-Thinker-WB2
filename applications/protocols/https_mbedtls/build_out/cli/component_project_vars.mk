# Automatically generated build file. Do not edit.
COMPONENT_INCLUDES += $(BL60X_SDK_PATH)/components/stage/cli $(BL60X_SDK_PATH)/components/stage/cli/include $(BL60X_SDK_PATH)/components/stage/cli/cli/include
COMPONENT_LDFLAGS +=  -L$(BUILD_DIR_BASE)/cli  -lcli 
COMPONENT_LINKER_DEPS += 
COMPONENT_SUBMODULES += 
COMPONENT_LIBRARIES += cli
component-cli-build: 
