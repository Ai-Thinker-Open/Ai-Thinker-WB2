# Automatically generated build file. Do not edit.
COMPONENT_INCLUDES += $(BL60X_SDK_PATH)/components/security/wpa_supplicant $(BL60X_SDK_PATH)/components/security/wpa_supplicant/include $(BL60X_SDK_PATH)/components/security/wpa_supplicant/include/bl_supplicant
COMPONENT_LDFLAGS +=  -L$(BUILD_DIR_BASE)/wpa_supplicant  -lwpa_supplicant 
COMPONENT_LINKER_DEPS += 
COMPONENT_SUBMODULES += 
COMPONENT_LIBRARIES += wpa_supplicant
component-wpa_supplicant-build: 
