# Automatically generated build file. Do not edit.
COMPONENT_INCLUDES += $(BL60X_SDK_PATH)/components/platform/soc/bl602/freertos_riscv_ram $(BL60X_SDK_PATH)/components/platform/soc/bl602/freertos_riscv_ram/include $(BL60X_SDK_PATH)/components/platform/soc/bl602/freertos_riscv_ram/config $(BL60X_SDK_PATH)/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V $(BL60X_SDK_PATH)/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/chip_specific_extensions/RV32F_float_abi_single $(BL60X_SDK_PATH)/components/platform/soc/bl602/freertos_riscv_ram/panic
COMPONENT_LDFLAGS +=  -L$(BUILD_DIR_BASE)/freertos_riscv_ram  -lfreertos_riscv_ram 
COMPONENT_LINKER_DEPS += 
COMPONENT_SUBMODULES += 
COMPONENT_LIBRARIES += freertos_riscv_ram
component-freertos_riscv_ram-build: 
