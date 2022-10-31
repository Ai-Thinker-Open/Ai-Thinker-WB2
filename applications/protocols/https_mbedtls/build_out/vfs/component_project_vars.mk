# Automatically generated build file. Do not edit.
COMPONENT_INCLUDES += $(BL60X_SDK_PATH)/components/fs/vfs $(BL60X_SDK_PATH)/components/fs/vfs/include $(BL60X_SDK_PATH)/components/fs/vfs/posix/include
COMPONENT_LDFLAGS +=  -L$(BUILD_DIR_BASE)/vfs  -lvfs 
COMPONENT_LINKER_DEPS += 
COMPONENT_SUBMODULES += 
COMPONENT_LIBRARIES += vfs
component-vfs-build: 
