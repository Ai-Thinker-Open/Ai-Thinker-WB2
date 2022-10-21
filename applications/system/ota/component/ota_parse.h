#ifndef     _OTA_PARSE_H_
#define     _OTA_PARSE_H_



#define HEADER_BAK_LEN			32

// #define AI_PACK_HEAD_LEN        153      //安信可OTA Config工具配置的Head长度，若更新协议，请修改该变量
#define AI_PACK_HEAD_LEN        169      //安信可OTA Config工具配置的Head长度，若更新协议，请修改该变量
#define VERSION_LEN             5
#define CHIP_TYPE_LEN           4
#define MD5_LEN                 32
#define URL_LEN                 128
typedef int (*f_write)(int dst_offset, const void *src,int size);
// typedef void (*f_read)(void *stream, int len, void *buf);
typedef int (*f_erase)(int start_addr, int size);
typedef void (*f_partition)(void);
typedef void (*f_reboot)(_Bool ota_result);

typedef struct {
	uint32_t	status_code;
    uint32_t	header_len;
	uint8_t		*body;
	uint32_t	    body_len;
	uint8_t		*header_bak;
	uint32_t	parse_status;
} ai_http_response_result;


typedef enum{
    ESP,
    RTL,
    XW,
    TG,
    HI,
    UNKNOW
}chip_type_t;


typedef struct{
    // uint8_t version_len;
    // uint8_t chip_type_len;
    // uint8_t md5_len;
    // uint8_t url_len;
    uint8_t version[6];           //协议版本
    chip_type_t chip_type;      //厂商类型
    uint8_t md5[16];               
    uint8_t url[129];                
}ai_pack_head;



// typedef struct{
//     f_write write_cb;
//     // f_read read;
// }flash_stream;


typedef struct{
    char *host;
    int port;
    char *resoure;
    f_write write_cb;                           //写flash回调
    f_erase erase_cb;                           //擦除flash回调
    f_partition set_boot_partition_cb;          //设置boot启动分区回调
    f_reboot rebooot_cb;                        //重启回调
}ota_parame;


int ai_parse_http_response(uint8_t *response, int response_len, ai_http_response_result *result);
int parse_ai_pack_head(uint8_t *resource, int resource_len, ai_pack_head *pack_head_t);


#endif


