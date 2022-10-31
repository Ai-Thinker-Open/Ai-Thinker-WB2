# Automatically generated build file. Do not edit.
COMPONENT_INCLUDES += $(BL60X_SDK_PATH)/components/fs/romfs $(BL60X_SDK_PATH)/components/fs/romfs/include
COMPONENT_LDFLAGS +=  -L$(BUILD_DIR_BASE)/romfs  -lromfs 
COMPONENT_LINKER_DEPS += 
COMPONENT_SUBMODULES += 
COMPONENT_LIBRARIES += romfs
component-romfs-build: 
