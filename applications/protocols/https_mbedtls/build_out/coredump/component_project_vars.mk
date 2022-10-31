# Automatically generated build file. Do not edit.
COMPONENT_INCLUDES += $(BL60X_SDK_PATH)/components/stage/coredump $(BL60X_SDK_PATH)/components/stage/coredump/include $(BL60X_SDK_PATH)/components/stage/coredump/inc
COMPONENT_LDFLAGS +=  -L$(BUILD_DIR_BASE)/coredump  -lcoredump 
COMPONENT_LINKER_DEPS += 
COMPONENT_SUBMODULES += 
COMPONENT_LIBRARIES += coredump
component-coredump-build: 
