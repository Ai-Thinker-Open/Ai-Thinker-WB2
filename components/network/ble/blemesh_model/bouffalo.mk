include $(COMPONENT_PATH)/../ble_common.mk

# Component Makefile
#
## These include paths would be exported to project level
COMPONENT_ADD_INCLUDEDIRS += ./ \
							 common/include \
							 common/btc/include \
							 bfl_ble_mesh/api \
							 bfl_ble_mesh/api/core/include \
							 bfl_ble_mesh/api/models/include \
							 bfl_ble_mesh/btc/include \
							 bfl_ble_mesh/mesh_common/include \
							 bfl_ble_mesh/mesh_models/include \
							 bfl_ble_mesh/mesh_models/server/include \
							 bfl_ble_mesh/mesh_models/client/include \
							 bfl_ble_mesh/mesh_models/common/include \

## not be exported to project level
COMPONENT_PRIV_INCLUDEDIRS   :=

## This component's src 
#for mesh model source
#common
COMPONENT_SRCS += common/btc/core/btc_manage.c \
				  common/btc/core/btc_task.c \
				  bfl_ble_mesh/mesh_common/mesh_mutex.c \
				  bfl_ble_mesh/mesh_common/mesh_common.c \
				  bfl_ble_mesh/api/core/bfl_ble_mesh_local_data_operation_api.c \
				  bfl_ble_mesh/api/core/bfl_ble_mesh_networking_api.c \
				  bfl_ble_mesh/api/models/bfl_ble_mesh_generic_model_api.c \
				  bfl_ble_mesh/api/models/bfl_ble_mesh_lighting_model_api.c \
				  bfl_ble_mesh/api/models/bfl_ble_mesh_time_scene_model_api.c \
				  bfl_ble_mesh/btc/btc_ble_mesh_generic_model.c \
				  bfl_ble_mesh/btc/btc_ble_mesh_lighting_model.c \
				  bfl_ble_mesh/btc/btc_ble_mesh_prov.c \
				  bfl_ble_mesh/btc/btc_ble_mesh_sensor_model.c \
				  bfl_ble_mesh/btc/btc_ble_mesh_time_scene_model.c
#server
COMPONENT_SRCS += bfl_ble_mesh/mesh_models/server/generic_server.c \
				  bfl_ble_mesh/mesh_models/server/lighting_server.c \
				  bfl_ble_mesh/mesh_models/server/state_transition.c \
				  bfl_ble_mesh/mesh_models/server/state_binding.c \
				  bfl_ble_mesh/mesh_models/server/device_property.c \
				  bfl_ble_mesh/mesh_models/server/server_common.c \
				  bfl_ble_mesh/mesh_models/server/sensor_server.c \
				  bfl_ble_mesh/mesh_models/server/time_scene_server.c
#client
COMPONENT_SRCS += bfl_ble_mesh/mesh_models/client/generic_client.c \
				  bfl_ble_mesh/mesh_models/client/lighting_client.c \
				  bfl_ble_mesh/mesh_models/client/client_common.c \
				  bfl_ble_mesh/mesh_models/client/sensor_client.c \
				  bfl_ble_mesh/mesh_models/client/time_scene_client.c \
#for mesh model source end

COMPONENT_OBJS   := $(patsubst %.c,%.o, $(COMPONENT_SRCS))
#for mesh model source
COMPONENT_SRCDIRS := bfl_ble_mesh/mesh_models/server \
					 bfl_ble_mesh/mesh_models/client \
					 bfl_ble_mesh/mesh_common \
					 bfl_ble_mesh/api/models \
					 bfl_ble_mesh/api/core \
					 bfl_ble_mesh/btc \
					 common/btc/core
#for mesh model source end