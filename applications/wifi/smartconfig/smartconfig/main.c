
#include <FreeRTOS.h>
#include <task.h>
#include <stdio.h>
#include <string.h>
#include "blog.h"
#include <aos/yloop.h>
#include <aos/kernel.h>
#include <lwip/tcpip.h>
#include <wifi_mgmr_ext.h>
#include <hal_wifi.h>
#include "smartconfig.h"
#include "sc_wifi_mgr.h"
#include "timers.h"
#include "queue.h"
#include <lwip/netdb.h>
#include <utils_log.h>
#include "WifiConfig_hal_sys_api.h"
#include "bl60x_fw_api.h"
#include "at_airkiss.h"

#include "timers.h"

wifi_evt_cb wificonfigTmpCallBack=NULL;

typedef enum{
	smartconfig,
	airkiss,
}wifi_network_configuration_mode;

wifi_network_configuration_mode network_configuration_mode=smartconfig;		//select network configuration mode you need

static wifi_conf_t conf =
{
    .country_code = "CN",
};

static AI_ConnectStatus g_WifiConnectStatus=AI_CONNECT_STATUS_DISCONNECT;	//记录当前模组的STA的连接状态


static void smart_airkiss_stop(void *data)
{
	if(network_configuration_mode==smartconfig)
	{
		printf("stop smartconfig\r\n");
		wifi_smartconfig_v1_stop();
	}
	else if(network_configuration_mode==airkiss)
	{
		printf("stop airkiss\r\n");
		wifi_airkiss_v1_stop();
	}		
}


static void event_cb_wifi_event(input_event_t* event, void* private_data)
{
	switch (event->code){
		case CODE_WIFI_ON_INIT_DONE:	//wif初始化完毕
			{
				wifi_mgmr_start_background(&conf);
				g_WifiConnectStatus=AI_CONNECT_STATUS_DISCONNECT;
                printf("[%s()-%d][WIFI] [EVT] CODE_WIFI_ON_INIT_DONE\r\n");
			}
			break;
		case CODE_WIFI_ON_MGMR_DONE:
			{
				/*************start smartconfig or airkiss*************/
				if(network_configuration_mode==smartconfig)
				{	
					printf("start smartconfig\r\n");
					wifi_smartconfig_v1_start();
				}
				else if(network_configuration_mode==airkiss)
				{
					printf("start airkiss\r\n");
					wifi_airkiss_v1_start();
				}

			}
			break;
		case CODE_WIFI_ON_SCAN_DONE:	//wifi扫描完成事件
			{
				printf("[%s()-%d][WIFI] [EVT] CODE_WIFI_ON_SCAN_DONE  SCAN Result: %s\r\n",__func__,__LINE__, WIFI_SCAN_DONE_EVENT_OK == event->value ? "OK" : "Busy now");
			}
			break;
		case CODE_WIFI_ON_DISCONNECT:	//wifi断开事件s
			{
                printf("[%s()-%d][WIFI] [EVT] CODE_WIFI_ON_DISCONNECT Reason: %s\r\n",__func__,__LINE__, wifi_mgmr_status_code_str(event->value), event->value);
				if (event->value == WLAN_FW_4WAY_HANDSHAKE_ERROR_PSK_TIMEOUT_FAILURE ||
						event->value == WLAN_FW_AUTH_OR_ASSOC_RESPONSE_TIMEOUT_FAILURE){
					//连接超时
					g_WifiConnectStatus=AI_CONNECT_STATUS_CONNECT_TIMEOUT;
                    printf("[%s()-%d][WIFI] [EVT] wifi connect timeout\r\n",__func__,__LINE__);
				}else if (event->value == WLAN_FW_4WAY_HANDSHAKE_TX_DEAUTH_FRAME_TRANSMIT_FAILURE ||
						event->value == WLAN_FW_4WAY_HANDSHAKE_TX_DEAUTH_FRAME_ALLOCATE_FAIILURE ||
						event->value == WLAN_FW_DEAUTH_BY_AP_WHEN_NOT_CONNECTION){
					//密码错误
					g_WifiConnectStatus=AI_CONNECT_STATUS_CONNECT_PW_ERROR;
                    printf("[%s()-%d][WIFI] [EVT] password error\r\n",__func__,__LINE__);
				}else if (event->value == WLAN_FW_SCAN_NO_BSSID_AND_CHANNEL){
					//没有发现热点
					g_WifiConnectStatus=AI_CONNECT_STATUS_CONNECT_NOT_FOUND_AP;
                    printf("[%s()-%d][WIFI] [EVT] not found AP\r\n",__func__,__LINE__);
				}else if ((event->value == WLAN_FW_DEAUTH_BY_AP_WHEN_CONNECTION) || (event->value == WLAN_FW_DISCONNECT_BY_USER_WITH_DEAUTH)){
					//WiFi断开
                    printf("[%s()-%d][WIFI] [EVT] wifi disconnect\r\n",__func__,__LINE__);
					g_WifiConnectStatus=AI_CONNECT_STATUS_DISCONNECT;
				}else{
					//连接失败
					g_WifiConnectStatus=AI_CONNECT_STATUS_CONNECT_FAIL;
                    printf("[%s()-%d][WIFI] [EVT]connect error\r\n",__func__,__LINE__);
				}
			}
			break;
		case CODE_WIFI_ON_CONNECTING:	//wifi 连接中
			{
				g_WifiConnectStatus=AI_CONNECT_STATUS_CONNECTING;
                printf("[%s()-%d][WIFI] [EVT] CODE_WIFI_ON_CONNECTING\r\n",__func__,__LINE__);
			}
			break;
		case CODE_WIFI_CMD_RECONNECT:
			{
				printf("[%s()-%d][WIFI] [EVT] CODE_WIFI_CMD_RECONNECT\r\n",__func__,__LINE__);
			}
			break;
		case CODE_WIFI_ON_CONNECTED:	//WIFI连接成功
			{
				g_WifiConnectStatus=AI_CONNECT_STATUS_CONNECTED;
				printf("[%s()-%d][WIFI] [EVT] CODE_WIFI_ON_CONNECTED\r\n",__func__,__LINE__);
			}
			break;


		case CODE_WIFI_ON_GOT_IP:	//STA获取了DHCP IP
			{
				printf("[%s()-%d][WIFI] [EVT] CODE_WIFI_ON_GOT_IP\r\n",__func__,__LINE__);

				/******************************printf wifi info if you need****************************************
				wifi_mgmr_sta_connect_ind_stat_info_t wifi_info;
				wifi_mgmr_sta_connect_ind_stat_get(&wifi_info);
				printf("wifi_info:ssid:%s,password:%s\r\n",wifi_info.ssid,wifi_info.passphr);
				**************************************************************************************************/

				struct timer_adpt *timer=bl_os_timer_create(smart_airkiss_stop,NULL);
    			uint32_t delay_ms=2000;
    			bl_os_timer_start_once(timer,(delay_ms / 1000),((delay_ms % 1000) * 1e6));
			}
			break;
		default:
			{
				printf("[%s()-%d][WIFI] [EVT] Unknown code %u\r\n",__func__,__LINE__,event->code);
				/*nothing*/
			}
			break;
    }
	if(NULL!=wificonfigTmpCallBack){	//WIFI 配网的事件回调函数
		wificonfigTmpCallBack(event->code, event->value);
	}
}

static void proc_main_entry(void* pvParameters)
{
    aos_register_event_filter(EV_WIFI, event_cb_wifi_event, NULL);
    hal_wifi_start_firmware_task();
    aos_post_event(EV_WIFI, CODE_WIFI_ON_INIT_DONE, 0);
    vTaskDelete(NULL);
}


void main()
{
    puts("[OS] Starting TCP/IP Stack...");
    tcpip_init(NULL, NULL);
    puts("[OS] proc_main_entry task...");
    xTaskCreate(proc_main_entry, (char*)"main_entry", 1024, NULL, 15, NULL);
}
