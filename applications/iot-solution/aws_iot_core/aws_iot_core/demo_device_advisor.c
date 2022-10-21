
#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <unistd.h>
#include <string.h>
#include <limits.h>

#include <FreeRTOS.h>
#include <task.h>

#include <vfs.h>
#include <fs/vfs_romfs.h>

#include "aws_iot_config.h"
#include "aws_iot_log.h"
#include "aws_iot_version.h"
#include "aws_iot_mqtt_client_interface.h"
#include "aws_iot_shadow_interface.h"
#include "aws_test_cert.h"

#define USR_AWS_IOT_CONFIG_FILE        "/romfs/aws/config" ///< Device private key filename 
#define AWS_IOT_MQTT_PORT_TEST         443 ///< default port for MQTT/S
#define AWS_IOT_MQTT_CLIENT_ID_TEST    "myiotthing" 
#define AWS_IOT_MY_THING_NAME_TEST     "myiotthing" 
#define TEST_STEP_RETRY_COUNT          2


#define MYPUBTOPIC   "$aws/things/AiThinker-Kat/shadow/get"
#define MYSUBTOPIC   "/alex/myiotthing/sub"

#define TESTJSON     "{\"state\":{\"reported\":{\"temperature\":25.500000,\"windowOpen\":false}}, \"clientToken\":\"bl60xDevRjwang-1\"}"

typedef enum {
	TEST_STEP_TLS_CONNECT,
	TEST_STEP_TLS_UNSECURE_SERVER_CERT,
	TEST_STEP_TLS_INCORRECT_SUBJECT_NAME_SERVER_CERT,
	TEST_STEP_MQTT_CONNECT,
	TEST_STEP_MQTT_SUBSCRIBE,
	TEST_STEP_MQTT_PUBLISH,
	TEST_STEP_WAIT_MQTT_DISCONNECT,
	TEST_STEP_SEND_MQTT_PUBLISH,
	TEST_STEP_SEND_MQTT_SUBSCRIBE,
	TEST_STEP_IDLE,
}TestStep;

typedef enum {
	TEST_MQTT_CONNECT,
	TEST_MQTT_SUBSCRIBE,
	TEST_MQTT_PUBLISH,
	TEST_MQTT_IDLE,
}MqttStep;



void windowActuate_Callback(const char *pJsonString, uint32_t JsonStringDataLen, jsonStruct_t *pContext) {
    IOT_UNUSED(pJsonString);
    IOT_UNUSED(JsonStringDataLen);

    if(pContext != NULL) {
        printf("Delta - Window state changed to %d\r\n", *(bool *) (pContext->pData));
    }
}

static int _update_mqtt_config_default(ShadowInitParameters_t *sp, ShadowConnectParameters_t *scp)
{
    sp->pHost = TEST_MQTT_HOST;
    printf(" URL:%s\r\n", sp->pHost);

    sp->port = AWS_IOT_MQTT_PORT_TEST;
    printf(", port is %d\r\n", sp->port); 

    sp->pClientCRT = TEST_CERTIFICATE_FILENAME;
    sp->pClientKey = TEST_PRIVATE_KEY_FILENAME;
    sp->pRootCA = TEST_ROOT_CA_FILENAME;
    sp->enableAutoReconnect = false;
    sp->disconnectHandler = NULL;

    scp->pMqttClientId = AWS_IOT_MQTT_CLIENT_ID_TEST;
    printf(", THING ID is %s\r\n", scp->pMqttClientId);
    scp->mqttClientIdLen = strlen(scp->pMqttClientId);

    printf("thing name len is %d", strlen(AWS_IOT_MY_THING_NAME_TEST));
    scp->pMyThingName = AWS_IOT_MY_THING_NAME_TEST;
    printf(", THING name is %s\r\n", scp->pMyThingName);

    return 0;
}


static void shadow_delta_callback(AWS_IoT_Client *pClient, char *topicName,
								  uint16_t topicNameLen, IoT_Publish_Message_Params *params, void *pData) 
{
	printf("shadow_delta_callback\r\n");
}


void aws_device_advisor_entry(void *arg) 
{
    IoT_Error_t rc = FAILURE;
    ShadowInitParameters_t sp = ShadowInitParametersDefault;
    ShadowConnectParameters_t scp = ShadowConnectParametersDefault;
    
    printf("AWS IoT SDK Version %d.%d.%d-%s\r\n", VERSION_MAJOR, VERSION_MINOR, VERSION_PATCH, VERSION_TAG);
    // initialize the mqtt client
    AWS_IoT_Client mqttClient;

    _update_mqtt_config_default(&sp, &scp);
	
    printf("Shadow Init\r\n");
    rc = aws_iot_shadow_init(&mqttClient, &sp);
    if(SUCCESS != rc) {
        printf("aws_iot_shadow_init returned error %d, aborting...\r\n", rc);
        while (1) {
            vTaskDelay(1000);
        }
    }
	TestStep teststep = TEST_STEP_MQTT_CONNECT;
    MqttStep mqttstep = TEST_MQTT_CONNECT;
	AWS_IoT_Client*pClient = &mqttClient;
	int count = 0;
	while(1)
	{
		switch(teststep)
		{
			case TEST_STEP_TLS_CONNECT:
			case TEST_STEP_TLS_UNSECURE_SERVER_CERT:
			case TEST_STEP_TLS_INCORRECT_SUBJECT_NAME_SERVER_CERT:
			case TEST_STEP_MQTT_CONNECT:
			case TEST_STEP_MQTT_SUBSCRIBE:
			case TEST_STEP_MQTT_PUBLISH:
			{
				printf("teststep = %d\r\n", teststep);
				if ((teststep == TEST_STEP_TLS_CONNECT)||(teststep == TEST_STEP_MQTT_CONNECT)
					||(teststep == TEST_STEP_MQTT_SUBSCRIBE)||(teststep == TEST_STEP_MQTT_PUBLISH))
				{
					rc = aws_iot_shadow_connect(&mqttClient, &scp);
				}
				else
				{
					rc = pClient->networkStack.connect(&(pClient->networkStack), NULL);
				}
			    if(SUCCESS != rc) 
				{
			        printf("connect returned error = %d\r\n", rc);
					if ((teststep == TEST_STEP_MQTT_CONNECT)||(teststep == TEST_STEP_MQTT_SUBSCRIBE)
						||(teststep == TEST_STEP_MQTT_PUBLISH))
					{
						aws_iot_shadow_disconnect(&mqttClient);
						count++;
						if (count >= TEST_STEP_RETRY_COUNT)
						{
							count = 0;
							teststep = TEST_STEP_IDLE;
							mqttstep = TEST_MQTT_IDLE;
						}
						break;
					}
					if ((teststep == TEST_STEP_TLS_CONNECT)&&(rc == NETWORK_SSL_READ_ERROR))
					{
						aws_iot_shadow_disconnect(&mqttClient); 
						vTaskDelay(2000);
						teststep = TEST_STEP_TLS_UNSECURE_SERVER_CERT;
						break;
					}
					pClient->networkStack.disconnect(&(pClient->networkStack));
					rc = pClient->networkStack.destroy(&(pClient->networkStack));
				    if(SUCCESS != rc) {
				        printf("Disconnect error %d\r\n", rc);
				    }
					printf("disconnect sucess\r\n");
					vTaskDelay(3000);
					teststep++;
					if (teststep >= TEST_STEP_MQTT_CONNECT)
					{
						teststep = TEST_STEP_IDLE;
					}
			    } 
				else
				{
					printf("Connect sucess\r\n"); 
					count = 0;
					if (mqttstep == TEST_MQTT_CONNECT)
					{
						teststep = TEST_STEP_WAIT_MQTT_DISCONNECT;
					}
					else if (mqttstep == TEST_MQTT_SUBSCRIBE)
					{
						teststep = TEST_STEP_SEND_MQTT_SUBSCRIBE;
					}
					else if (mqttstep == TEST_MQTT_PUBLISH)
					{
						teststep = TEST_STEP_SEND_MQTT_PUBLISH;
					}
					
					if (teststep == TEST_STEP_TLS_CONNECT)
					{
						aws_iot_shadow_disconnect(&mqttClient); 
						teststep = TEST_STEP_TLS_UNSECURE_SERVER_CERT;
					}
				}
			}
			break;
			case TEST_STEP_WAIT_MQTT_DISCONNECT:
			{
				if (mqttstep == TEST_MQTT_CONNECT)
				{
					vTaskDelay(1000);
					aws_iot_shadow_disconnect(&mqttClient); 
				    teststep = TEST_STEP_MQTT_SUBSCRIBE;
				    mqttstep = TEST_MQTT_SUBSCRIBE;
				}
				else if (mqttstep == TEST_MQTT_SUBSCRIBE)
				{
					teststep = TEST_STEP_MQTT_PUBLISH;
					mqttstep = TEST_MQTT_PUBLISH;
					if (aws_iot_mqtt_is_client_connected(&mqttClient))
					{
						aws_iot_shadow_disconnect(&mqttClient); 
						vTaskDelay(1000);
					}
				}
				else if (mqttstep == TEST_MQTT_PUBLISH)
				{
					teststep = TEST_STEP_TLS_CONNECT;
					mqttstep = TEST_MQTT_IDLE;
					if (aws_iot_mqtt_is_client_connected(&mqttClient))
					{
						aws_iot_shadow_disconnect(&mqttClient); 
						vTaskDelay(1000); 
					}
				}
			}
			break;
			case TEST_STEP_SEND_MQTT_PUBLISH:
			{
				printf("TEST_STEP_SEND_MQTT_PUBLISH\r\n");
				IoT_Publish_Message_Params msgParams;
				msgParams.qos = QOS0;
				msgParams.isRetained = 0;
				msgParams.payloadLen = strlen(TESTJSON);
				msgParams.payload = (char *)TESTJSON;
				rc = aws_iot_mqtt_publish(&mqttClient, MYPUBTOPIC, (uint16_t) strlen(MYPUBTOPIC), &msgParams);
                if (rc != SUCCESS)  
                {
                    printf("MQTT_PUBLISH fail\r\n");
					count++;
					if (count >= TEST_STEP_RETRY_COUNT)
					{
						count = 0;
						teststep = TEST_STEP_WAIT_MQTT_DISCONNECT;
						break;
					}
					teststep = TEST_STEP_SEND_MQTT_PUBLISH;
					break;
                }
				else
				{
					printf("MQTT_PUBLISH sucess\r\n");
				}
				teststep = TEST_STEP_WAIT_MQTT_DISCONNECT;
			}
			break;

			case TEST_STEP_SEND_MQTT_SUBSCRIBE:
			{
				printf("TEST_STEP_SEND_MQTT_SUBSCRIBE\r\n");
				rc = aws_iot_mqtt_subscribe(&mqttClient, MYSUBTOPIC, (uint16_t) strlen(MYSUBTOPIC), QOS0,
									             shadow_delta_callback, NULL);
				if (rc != SUCCESS)  
                {
                    printf("MQTT_SUBSCRIBE fail\r\n");
					count++;
					if (count >= TEST_STEP_RETRY_COUNT)
					{
						count = 0;
						teststep = TEST_STEP_WAIT_MQTT_DISCONNECT;
						break;
					}
					teststep = TEST_STEP_SEND_MQTT_SUBSCRIBE;
					break;
                }
				else
				{
					printf("MQTT_SUBSCRIBE sucess\r\n");
				}
				teststep = TEST_STEP_WAIT_MQTT_DISCONNECT;
			}
			break;

			case TEST_STEP_IDLE:
			{
				printf("test idle\r\n");
				vTaskDelay(1000); 
			}
			break;
			
			default:
				teststep = TEST_STEP_IDLE;
				break;
		}
		
		vTaskDelay(1000);
	}

	vTaskDelete(NULL);
}
