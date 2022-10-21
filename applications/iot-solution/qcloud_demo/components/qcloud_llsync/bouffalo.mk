#
## These include paths would be exported to project level
COMPONENT_ADD_INCLUDEDIRS += config \
							 inc \
							 src/internal_inc \
							 data_template

qcloud_llsync :=  config \
				  src/core \
				  src/utils \
				  data_template
## not be exported to project level
COMPONENT_PRIV_INCLUDEDIRS :=

## This component's src
COMPONENT_SRCS :=  src/core/ble_qiot_llsync_data.c \
                  src/core/ble_qiot_llsync_device.c \
				  src/core/ble_qiot_llsync_event.c \
				  src/core/ble_qiot_llsync_ota.c \
				  src/core/ble_qiot_llsync_utils.c \
				  src/core/ble_qiot_service.c \
				  src/utils/ble_qiot_utils_aes.c \
				  src/utils/ble_qiot_utils_base64.c \
				  src/utils/ble_qiot_utils_crc.c \
				  src/utils/ble_qiot_utils_hmac.c \
				  src/utils/ble_qiot_utils_log.c \
				  src/utils/ble_qiot_utils_md5.c \
				  src/utils/ble_qiot_utils_sha1.c \
				  data_template/ble_qiot_template.c \
				#   config/ble_qiot_ble_device.c \
				#   config/ble_qiot_ble_service.c \
				  
COMPONENT_OBJS := $(patsubst %.c,%.o, $(COMPONENT_SRCS))

COMPONENT_SRCDIRS :=  $(qcloud_llsync)