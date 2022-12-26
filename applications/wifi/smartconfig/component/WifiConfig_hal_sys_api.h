#ifndef __WIFI_CONFIG_HAL_SYS_API_H__
#define __WIFI_CONFIG_HAL_SYS_API_H__
#include<stdint.h>
#include<stdbool.h>

typedef void (*wifi_evt_cb)(int code, int value);

typedef enum
{
    AT_ERR_SUCCESS = 0,
    AT_ERR_FAILURE = -1,
    AT_ERR_FAILURE_WITH_ENTER = -4,
    AT_INVALID_PARAMETER = -2,
    AT_ERR_NAME_OR_FUNC_REPEAT_REGISTERED3 = -3,
    AT_ERR_RECVING = 2,
    AT_ERR_BUSY = 3,
    AT_ERR_TRANSPARENT = 4
} AXK_ERRNO;

typedef enum
{
    AT_WIFI_STATE_NOT_STARTUP = 0,      /**< BL602 station has not started any Wi-Fi connection. */
    AT_WIFI_STATE_CONNECTED_NOT_GET_IP, /**< BL602 station has connected to an AP, but does not get an IPv4 address yet */
    AT_WIFI_STATE_CONNECTED_GOT_IP,     /**< BL602 station has connected to an AP, and got an IPv4 address. */
    AT_WIFI_STATE_CONNECTING,           /**< BL602 station is in Wi-Fi connecting or reconnecting state. */
    AT_WIFI_STATE_DISCONNECTED,         /**< BL602 station is in Wi-Fi disconnected state. */
} at_wifi_state_t;

typedef void (*ThreadRunFunc)(void *arg);

typedef struct
{
    char *thread_name;
    uint32_t thread_id;
    ThreadRunFunc thread_func;
    void *user_arg;
    uint16_t priority;
    uint32_t stack_size;
    void *user_arg_ex; //Extended parameters,
    bool is_active;
} at_hal_threadParams_t;



//连接状态(适用于wifi，tcp，mqtt等连接状态的描述)
typedef enum __AI_ConnectStatus{
	AI_CONNECT_STATUS_DISCONNECT=0,	//没有连接，或者已经断开
	AI_CONNECT_STATUS_CONNECTING=1,	//正在连接或者重连中
	AI_WIFI_STATUS_CONNECT_NO_IP=2,	//wifi连接成功，但是没有获取IP(这个是wifi专有的状态)
	AI_CONNECT_STATUS_CONNECTED=3,	//连接成功(表示wifi sta状态的时候表示同时获取IP(DHCP)成功，或者使用静态IP)
	AI_CONNECT_STATUS_CONNECT_FAIL=4,	//连接失败（超过了重连次数还没有连接成功的状态）
	AI_CONNECT_STATUS_CONNECT_TIMEOUT=5,	//连接超时
	AI_CONNECT_STATUS_CONNECT_PW_ERROR=6,	//密码错误
	AI_CONNECT_STATUS_CONNECT_NOT_FOUND_AP=7,	//没有发现AP
	//上面的状态仅在saveConfigInRam中(运行中)有意义，下面的状态仅在saveConfigInFlash中(保存到flash的状态)有意义
	AI_CONNECT_STATUS_AUTO_CON_ON=128,	//开机自动连接wifi(sta或自动开启AP)
	AI_CONNECT_STATUS_AUTO_CON_OFF=129,	//禁用开机自动连接wifi或AP
}AI_ConnectStatus;

char ak_wifi_connetct(const char *ssid, const char *pwd);
void axk_at_wifi_sc_get_info_export(const char *ssid, const char *pwd);
at_wifi_state_t WifiConfigGetWifiStatus();
int axk_hal_thread_create(at_hal_threadParams_t *params);
void axk_at_wifi_sc_connect_ap_success_export(const char *ssid, const char *pwd);
void wifi_event_register(wifi_evt_cb cb);
int axk_hal_thread_destroy(at_hal_threadParams_t *params);
void wifi_sta_connect_sc(const char *ssid, const char *pwd, int channel);
int axk_hal_wifi_mode_set(uint8_t mode, uint8_t auto_conn);

#endif //end of __WIFI_CONFIG_HAL_SYS_API_H__
