#
# WebSocket (WSS) UART 透传 — applications/protocols/websocket_tp
#

PROJECT_NAME := websocket_tp_demo
PROJECT_PATH := $(abspath .)
PROJECT_BOARD := evb
export PROJECT_PATH PROJECT_BOARD

-include ./proj_config.mk

# 本工程位于：<SDKROOT>/applications/protocols/websocket_tp → 默认向上三层即 SDK 根。
# mqtt/wss 等多一层子目录的工程使用 /../../../..；本项目只需 /../../..
ifeq ($(origin BL60X_SDK_PATH), undefined)
BL60X_SDK_PATH ?= $(abspath $(CURDIR)/../../..)
$(info ****** BL60X_SDK_PATH undefined; using guessed SDK root [$(BL60X_SDK_PATH)])
endif

COMPONENTS_NET_STACK := axk_common tcp_transport http-parser axk_tls

INCLUDE_COMPONENTS += freertos_riscv_ram bl602 bl602_std newlibc wifi wifi_manager wpa_supplicant bl602_os_adapter wifi_hosal hosal mbedtls_lts lwip lwip_dhcpd vfs yloop utils cli netutils bl_os_adapter blog blog_testc blcrypto_suite
INCLUDE_COMPONENTS += easyflash4 coredump
INCLUDE_COMPONENTS += rfparam_adapter_tmp
INCLUDE_COMPONENTS += sntp dns_server
INCLUDE_COMPONENTS += bltime blfdt blmtd blota bloop loopadc looprt loopset
INCLUDE_COMPONENTS += romfs
INCLUDE_COMPONENTS += $(COMPONENTS_NET_STACK)
INCLUDE_COMPONENTS += $(PROJECT_NAME)

include $(BL60X_SDK_PATH)/make_scripts_riscv/project.mk
