# Automatically generated build file. Do not edit.
COMPONENT_INCLUDES += $(BL60X_SDK_PATH)/components/network/lwip_dhcpd $(BL60X_SDK_PATH)/components/network/lwip_dhcpd/include $(BL60X_SDK_PATH)/components/network/lwip_dhcpd
COMPONENT_LDFLAGS +=  -L$(BUILD_DIR_BASE)/lwip_dhcpd  -llwip_dhcpd 
COMPONENT_LINKER_DEPS += 
COMPONENT_SUBMODULES += 
COMPONENT_LIBRARIES += lwip_dhcpd
component-lwip_dhcpd-build: 
