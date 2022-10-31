# Automatically generated build file. Do not edit.
COMPONENT_INCLUDES += $(BL60X_SDK_PATH)/components/network/dns_server $(BL60X_SDK_PATH)/components/network/dns_server/include $(BL60X_SDK_PATH)/components/network/dns_server/include
COMPONENT_LDFLAGS +=  -L$(BUILD_DIR_BASE)/dns_server  -ldns_server 
COMPONENT_LINKER_DEPS += 
COMPONENT_SUBMODULES += 
COMPONENT_LIBRARIES += dns_server
component-dns_server-build: 
