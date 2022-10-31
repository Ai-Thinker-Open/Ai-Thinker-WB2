# Automatically generated build file. Do not edit.
COMPONENT_INCLUDES += $(BL60X_SDK_PATH)/components/security/mbedtls_lts $(BL60X_SDK_PATH)/components/security/mbedtls_lts/include $(BL60X_SDK_PATH)/components/security/mbedtls_lts/mbedtls/include $(BL60X_SDK_PATH)/components/security/mbedtls_lts/port
COMPONENT_LDFLAGS +=  -L$(BUILD_DIR_BASE)/mbedtls_lts  -lmbedtls_lts 
COMPONENT_LINKER_DEPS += 
COMPONENT_SUBMODULES += 
COMPONENT_LIBRARIES += mbedtls_lts
component-mbedtls_lts-build: 
