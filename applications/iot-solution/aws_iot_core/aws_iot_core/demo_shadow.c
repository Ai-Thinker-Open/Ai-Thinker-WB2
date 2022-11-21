
#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <unistd.h>
#include <string.h>
#include <limits.h> 

#include <FreeRTOS.h>
#include <task.h>
#include <blog.h>
#include "aws_iot_config.h"
#include "aws_iot_log.h"
#include "aws_iot_version.h"
#include "aws_iot_mqtt_client_interface.h"
#include "aws_iot_shadow_interface.h"
#include "aws_test_cert.h"


static void ShadowUpdateStatusCallback(const char* pThingName, ShadowActions_t action, Shadow_Ack_Status_t status,
								const char* pReceivedJsonDocument, void* pContextData) {

	if (SHADOW_ACK_TIMEOUT == status) {
		blog_info("Update Timeout--");
	}
	else if (SHADOW_ACK_REJECTED == status) {
		blog_info("Update RejectedXX");
	}
	else if (SHADOW_ACK_ACCEPTED == status) {
		blog_info("Update Accepted !!");
	}
}

static int _update_mqtt_config_default(ShadowInitParameters_t* sp, ShadowConnectParameters_t* scp)
{
	sp->pHost = TEST_MQTT_HOST;
	blog_info(" URL:%s", sp->pHost);

	sp->port = TEST_MQTT_PORT;
	blog_info(", port is %d", sp->port);

	sp->pClientCRT = TEST_CERTIFICATE_FILENAME;
	sp->pClientKey = TEST_PRIVATE_KEY_FILENAME;
	sp->pRootCA = TEST_ROOT_CA_FILENAME;
	sp->enableAutoReconnect = false;
	sp->disconnectHandler = NULL;

	scp->pMqttClientId = TEST_MQTT_CLIENT_ID;
	blog_info(", THING ID is %s", scp->pMqttClientId);
	scp->mqttClientIdLen = strlen(scp->pMqttClientId);

	blog_info("thing name len is %d", strlen(TEST_MY_THING_NAME));
	scp->pMyThingName = TEST_MY_THING_NAME;
	blog_info(", THING name is %s", scp->pMyThingName);

	return 0;
}

void aws_iot_demo_shadow(void* arg)
{
	IoT_Error_t rc = FAILURE;
	int testflag = 0;
	ShadowInitParameters_t sp = ShadowInitParametersDefault;
	ShadowConnectParameters_t scp = ShadowConnectParametersDefault;

	char JsonDocumentBuffer[200];
	size_t sizeOfJsonDocumentBuffer = sizeof(JsonDocumentBuffer) / sizeof(JsonDocumentBuffer[0]);
	char LightStatus[10];
	memset(LightStatus, 0, 10);
	memcpy(LightStatus, "OFF", strlen("OFF"));
	jsonStruct_t lightstatus;
	lightstatus.cb = NULL;
	lightstatus.pData = LightStatus;
	lightstatus.dataLength = strlen(LightStatus);
	lightstatus.pKey = "lightstatus";
	lightstatus.type = SHADOW_JSON_STRING;

	// initialize the mqtt client
	AWS_IoT_Client mqttClient;
	_update_mqtt_config_default(&sp, &scp);

	blog_info("Shadow Init");
	rc = aws_iot_shadow_init(&mqttClient, &sp);
	if (SUCCESS != rc) {
		blog_error("Shadow Connection Error");
		goto exit;
	}

	blog_info("Shadow Connect");
	rc = aws_iot_shadow_connect(&mqttClient, &scp);
	if (SUCCESS != rc) {
		blog_error("Shadow Connection Error");
		goto exit;
	}

	/*
	 * Enable Auto Reconnect functionality. Minimum and Maximum time of Exponential backoff are set in aws_iot_config.h
	 *  #AWS_IOT_MQTT_MIN_RECONNECT_WAIT_INTERVAL
	 *  #AWS_IOT_MQTT_MAX_RECONNECT_WAIT_INTERVAL
	 */
	rc = aws_iot_shadow_set_autoreconnect_status(&mqttClient, true);
	if (SUCCESS != rc) {
		blog_error("Unable to set Auto Reconnect to true - %d ", rc);
		goto exit;
	}

	rc = aws_iot_shadow_register_delta(&mqttClient, &lightstatus);
	if (SUCCESS != rc) {
		blog_error("Shadow Register Delta Error");
		goto exit;
	}

	// loop and publish a change in temperature
	while (NETWORK_ATTEMPTING_RECONNECT == rc || NETWORK_RECONNECTED == rc || SUCCESS == rc) {
		rc = aws_iot_shadow_yield(&mqttClient, 200);
		if (NETWORK_ATTEMPTING_RECONNECT == rc) {
			vTaskDelay(1000);
			// If the client is attempting to reconnect we will skip the rest of the loop.
			continue;
		}
		if (!testflag) {
			testflag = 1;
			memset(LightStatus, 0, 10);
			memcpy(LightStatus, "ON", strlen("ON"));
		}
		else {
			testflag = 0;
			memset(LightStatus, 0, 10);
			memcpy(LightStatus, "OFF", strlen("OFF"));
		}
		lightstatus.pData = LightStatus;
		lightstatus.dataLength = strlen(LightStatus);
		rc = aws_iot_shadow_init_json_document(JsonDocumentBuffer, sizeOfJsonDocumentBuffer);
		if (SUCCESS == rc) {
			rc = aws_iot_shadow_add_reported(JsonDocumentBuffer, sizeOfJsonDocumentBuffer, 1, &lightstatus);
			if (SUCCESS == rc) {
				rc = aws_iot_finalize_json_document(JsonDocumentBuffer, sizeOfJsonDocumentBuffer);
				if (SUCCESS == rc) {
					blog_info("Update Shadow: %s", JsonDocumentBuffer);
					rc = aws_iot_shadow_update(&mqttClient, TEST_MY_THING_NAME, JsonDocumentBuffer,
											   ShadowUpdateStatusCallback, NULL, 4, true);
				}
			}
		}

		vTaskDelay(1000);
	}
exit:
	blog_info("\ntest task exit ");
	if (SUCCESS != rc) {
		blog_error("An error occurred in the loop %d", rc);
	}
	aws_iot_shadow_yield(&mqttClient, 100);
	aws_iot_shadow_disconnect(&mqttClient);
	aws_iot_shadow_free(&mqttClient);
	vTaskDelete(NULL);
}


