# Automatically generated build file. Do not edit.
COMPONENT_INCLUDES += $(BL60X_SDK_PATH)/components/libc/newlibc $(BL60X_SDK_PATH)/components/libc/newlibc/include $(BL60X_SDK_PATH)/components/libc/newlibc
COMPONENT_LDFLAGS +=  -L$(BUILD_DIR_BASE)/newlibc  -lnewlibc 
COMPONENT_LINKER_DEPS += 
COMPONENT_SUBMODULES += 
COMPONENT_LIBRARIES += newlibc
component-newlibc-build: 
