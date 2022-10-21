/* Hello World Example

   This example code is in the Public Domain (or CC0 licensed, at your option.)

   Unless required by applicable law or agreed to in writing, this
   software is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
   CONDITIONS OF ANY KIND, either express or implied.
*/
#include <stdbool.h>
#include <stdio.h>
#include <string.h>
#include <netdb.h>
#include <sys/socket.h>
#include "FreeRTOS.h"
#include "task.h"
#include "mbedtls/platform.h"
#include "mbedtls/net_sockets.h"
#include "mbedtls/ssl.h"
#include "mbedtls/entropy.h"
#include "mbedtls/ctr_drbg.h"
#include "mbedtls/error.h"
#include "mbedtls/md5.h"
#include "mbedtls/debug.h"
#include "ota_hal.h"
#include "ota_parse.h"
#include "ota_config.h"
#include "ai_ota.h"

// #include "axk_ota_export.h"

#define BUF_SIZE    1024

#if defined(MBEDTLS_RANDOM_CONFIG) 
extern int ai_random(void *p_rng, unsigned char *output, long unsigned int output_len);
#endif

//将int类型数据转换位字符串
static char *https_itoa(int value)
{
    char *val_str;
    int tmp = value, len = 1;
    while((tmp /= 10)>0)
        len++;

    val_str = (char *)malloc(len+1);
    sprintf(val_str, "%d", value);
    return val_str;
}


static void ai_mbedtls_debug( void *ctx, int level,
                      const char *file, int line,
                      const char *str )
{
    ((void) level);
    printf("%s:%04d: %s\n", file, line, str);
    fflush(  (FILE *) ctx  );
}

static int is_valid_ip_address(const char *ipAddress)
{
    struct sockaddr_in sa;
    int result = inet_pton(AF_INET, ipAddress, &(sa.sin_addr));

    return result != 0;
}

void ai_https_update_ota(void *param)
{
    unsigned char md5[33] = {0};
    mbedtls_md5_context md5_ctx;
    mbedtls_net_context server_fd;
    
    mbedtls_ssl_context ssl;
    mbedtls_ssl_config conf;
    unsigned char *request = NULL;
    unsigned char recv_buf[1024] = {0};
    char *port_str = NULL;
    int ret = -1, len;
    int read_bytes = 0;
    ai_http_response_result rsp_result = {0};
    int writelen = 0;
    unsigned int start_pos = 0;
    uint32_t idx = 0;
    ai_pack_head pack_head_t = {0};

    ota_parame *ota_parame_t = (ota_parame*)malloc(sizeof(ota_parame));
    if(ota_parame_t == NULL) 
    {
        goto exit;
    }
    memcpy(ota_parame_t, (ota_parame *)param, sizeof(ota_parame));

    if (is_valid_ip_address(ota_parame_t->host)) {
    }
    
    ai_paltform_set_calloc_free();
    //设置调试日志等级
    mbedtls_debug_set_threshold(MBEDTLS_DEBUG_LEVEL);

    mbedtls_net_init(&server_fd);
    mbedtls_ssl_init(&ssl);
    
    mbedtls_ssl_config_init(&conf);
    mbedtls_md5_init(&md5_ctx);
    mbedtls_md5_starts(&md5_ctx);
    
#if !defined(MBEDTLS_RANDOM_CONFIG)
    mbedtls_ctr_drbg_context ctr_drbg;
    mbedtls_entropy_context entropy;    
    mbedtls_ctr_drbg_init(&ctr_drbg);
    mbedtls_entropy_init(&entropy);
    printf("mbedtls_entropy_init\r\n");
    if((ret = mbedtls_ctr_drbg_seed(&ctr_drbg, mbedtls_entropy_func, &entropy,
                                    NULL, 0)) != 0)
    {
        printf("mbedtls_ctr_drbg_seed returned %d\r\n", ret);
        goto exit;
    }
    printf("mbedtls_ctr_drbg_seed success\r\n");
#endif

    port_str = https_itoa(ota_parame_t->port);

    if((ret = mbedtls_ssl_config_defaults(&conf,
                                          MBEDTLS_SSL_IS_CLIENT,
                                          MBEDTLS_SSL_TRANSPORT_STREAM,
                                          MBEDTLS_SSL_PRESET_DEFAULT)) != 0)
    {
        printf("mbedtls_ssl_config_defaults returned %d\r\n", ret);
        goto exit;
    }

    //不认证服务器证书
    mbedtls_ssl_conf_authmode(&conf, MBEDTLS_SSL_VERIFY_NONE);

#if !defined(MBEDTLS_RANDOM_CONFIG) 
    mbedtls_ssl_conf_rng(&conf, mbedtls_ctr_drbg_random, &ctr_drbg);
#else
    mbedtls_ssl_conf_rng(&conf, ai_random, NULL);
#endif

    //调试日志
    mbedtls_ssl_conf_dbg(&conf, ai_mbedtls_debug, stdout);

    if ((ret = mbedtls_ssl_setup(&ssl, &conf)) != 0)
    {
        printf("mbedtls_ssl_setup returned -0x%x\n\n", -ret);
        goto exit;
    }
    printf("mbedtls_ssl_setup sucess\r\n");

    if((ret = mbedtls_net_connect(&server_fd, ota_parame_t->host, port_str,
            MBEDTLS_NET_PROTO_TCP)) != 0)
    {
        printf("mbedtls_net_connect returned -%x\r\n", -ret);
        goto exit;
    }
    printf("mbedtls_net_connect sucess\r\n");
    // axk_at_ota_export(AT_OTA_STATE_FOUND_SERVER);
    // axk_at_ota_export(AT_OTA_STATE_CONNECTED);
    
    mbedtls_ssl_set_bio(&ssl, &server_fd, mbedtls_net_send, mbedtls_net_recv, NULL);
    
    
    while((ret = mbedtls_ssl_handshake(&ssl)) != 0)
    {
        if (ret != MBEDTLS_ERR_SSL_WANT_READ && ret != MBEDTLS_ERR_SSL_WANT_WRITE)
        {
            printf("mbedtls_ssl_handshake returned -0x%x\r\n", -ret);
            goto exit;
        }
    }
    printf("mbedtls_ssl_handshake sucess\r\n");
    
    printf("SSL ciphersuite %s\n", mbedtls_ssl_get_ciphersuite(&ssl));

    request = malloc(strlen("GET ") + strlen(ota_parame_t->resoure) + strlen(" HTTP/1.1\r\nHost: ")
        + strlen(ota_parame_t->host) + strlen("\r\n\r\n") + 1);
    sprintf((char*)request, "GET %s HTTP/1.1\r\nHost: %s\r\n\r\n", ota_parame_t->resoure, ota_parame_t->host);

    ret = mbedtls_ssl_write(&ssl, request, strlen((char *)request));
    if(ret < 0){
        printf("mbedtls_ssl_write returned -0x%x\r\n", -ret);
        goto exit;
    }
    printf("mbedtls_ssl_write success\r\n");

    /* 解析https响应*/
    while(3 >= rsp_result.parse_status)
    {
        if(0 == rsp_result.parse_status){//didn't get the http response
			memset(recv_buf, 0, BUF_SIZE);
			read_bytes = mbedtls_ssl_read(&ssl, recv_buf, BUF_SIZE);
			if(read_bytes <= 0){
				printf("mbedtls_ssl_read returned -0x%x\r\n", -read_bytes);
				goto exit;
			}
            idx = read_bytes;
			memset(&rsp_result, 0, sizeof(rsp_result));
			if(ai_parse_http_response(recv_buf, read_bytes, &rsp_result) == -1){
				goto exit;
			}
		} else if ((1 == rsp_result.parse_status) || (3 == rsp_result.parse_status)){//just get the status code
            memset(recv_buf, 0, BUF_SIZE);
			memcpy(recv_buf, rsp_result.header_bak, HEADER_BAK_LEN);
            free(rsp_result.header_bak);
			rsp_result.header_bak = NULL;
			read_bytes = mbedtls_ssl_read(&ssl, recv_buf + HEADER_BAK_LEN, (BUF_SIZE - HEADER_BAK_LEN));
			if(read_bytes <= 0){
				printf("mbedtls_ssl_read returned -0x%x\r\n", -read_bytes);
				goto exit;
			}
            idx = read_bytes + HEADER_BAK_LEN;
			if (ai_parse_http_response(recv_buf, read_bytes + HEADER_BAK_LEN, &rsp_result) == -1){
				goto exit;
			}
		}
    }

    if(0 == rsp_result.body_len)
    {
        printf("New firmware size = 0\r\n");
        goto exit;
    }else{
        printf("\r\nDownload new firmware begin, total size : %d\n", (int)rsp_result.body_len);
    }
    
    printf("MBEDTLS_SSL_MAX_CONTENT_LEN = %d\r\n", MBEDTLS_SSL_MAX_CONTENT_LEN);
    writelen = idx - rsp_result.header_len;
    printf("head_len = %d writelen=%d index = %d\r\n", (int)rsp_result.header_len, writelen, (int)idx);


    if(writelen == 0){  //第一包数据只有head信息
        memset(recv_buf, 0, sizeof(recv_buf));
        ret = mbedtls_ssl_read(&ssl, recv_buf, BUF_SIZE);
        if(ret == MBEDTLS_ERR_SSL_PEER_CLOSE_NOTIFY) {
            ret = 0;
        }
        if(ret < 0)
        {
            printf("mbedtls_ssl_read returned -0x%x\r\n", -ret);
            goto exit;
        }
        if(ret == 0)
        {
            printf("connection closd\r\n");
        }
        len = ret;
    }else{  //第一包数据除了head信息还有body信息，需要将body信息单独保存起来处理
        memset(recv_buf, 0, rsp_result.header_len);
        memcpy(recv_buf, recv_buf+rsp_result.header_len, writelen);
        memset(recv_buf+writelen, 0, rsp_result.header_len);
        len = writelen;
    }

    // axk_at_ota_export(AT_OTA_STATE_GET_VERSION);

    //off固件头部偏移地址
    int off = parse_ai_pack_head(recv_buf, ret, &pack_head_t);
    memset(recv_buf, 0, off);
    len -= off;
    if (len < 0) {
        printf("invalid len\r\n");
        goto exit;
    }
    memcpy(recv_buf, recv_buf+off, len);
    mbedtls_md5_update(&md5_ctx, recv_buf, len);

    //擦除flash,4kb对齐
    if(-1 == ota_parame_t->erase_cb(0, (rsp_result.body_len/4096+1)*4096)){
        goto exit;
    }
    //写flash
    if(-1 == ota_parame_t->write_cb(start_pos, recv_buf, len)){
        goto exit;
    }
    
    int writeTopos = start_pos + len;
    do
    {
        len = sizeof(recv_buf) - 1;
        bzero(recv_buf, sizeof(recv_buf));

        // printf("%d bytes read %d\r\n", len, strlen((char *)recv_buf));
       
        ret = mbedtls_ssl_read(&ssl, (unsigned char *)recv_buf, len);

        if(ret == MBEDTLS_ERR_SSL_WANT_READ || ret == MBEDTLS_ERR_SSL_WANT_WRITE)
            continue;

        if(ret == MBEDTLS_ERR_SSL_PEER_CLOSE_NOTIFY) {
            ret = 0;
            break;
        }

        if(ret < 0)
        {
            printf("mbedtls_ssl_read returned -0x%x", -ret);
            break;
        }

        if(ret == 0)
        {
            printf("connection closed");
            break;
        }

        len = ret;
        mbedtls_md5_update(&md5_ctx, recv_buf, len);
        
        if(-1 == ota_parame_t->write_cb(writeTopos, recv_buf, len)){
            goto exit;
        }
        writeTopos += len;
    } while (writeTopos < (rsp_result.body_len - AI_PACK_HEAD_LEN));

    printf("\r\n\r\nend\r\n\r\n");
    
    mbedtls_md5_finish(&md5_ctx, md5);
    if(0 == memcmp(md5, pack_head_t.md5, sizeof(&pack_head_t.md5))){
        //MD5校验成功
        printf("MD5 verify success\r\n");
        for(int i=0; i<16; i++)
            printf("%02X", md5[i]);
        printf("\r\n");
        ota_parame_t->set_boot_partition_cb();
    }else{
        printf("MD5 verify failed\r\n");
        goto exit;
    }
    // mbedtls_ssl_close_notify(&ssl);
    printf("OTA Success\r\n");
    // axk_at_ota_export(AT_OTA_STATE_FINISH);
    ota_parame_t->rebooot_cb(true);

exit:
    printf("OTA Failed\r\n");
    mbedtls_ssl_free(&ssl);
    mbedtls_net_free(&server_fd);
    mbedtls_ssl_config_free(&conf);
    mbedtls_md5_free(&md5_ctx);
    // ota_parame_t->rebooot_cb(false);
    // axk_at_ota_export(AT_OTA_STATE_FAIL);
    vTaskDelete(NULL);
}


static int connect_server(int server_socket, char *host, int port)
{
    struct sockaddr_in server_addr;
    in_addr_t dst_addr;

    printf("host = %s\r\n", host);

    server_socket = socket(AF_INET, SOCK_STREAM, 0);
	if(server_socket < 0){
		printf("\n\r[%s] Create socket failed", __FUNCTION__);
		return -1;
	}
	printf("[%s] Create socket: %d success!\n", __FUNCTION__, server_socket);
	// server = gethostbyname(host);
	// if(server == NULL){ 
	// 	printf("[ERROR] Get host ip failed\n");
	// 	return -1;
	// }

    if (is_valid_ip_address(host)) {
        dst_addr = inet_addr(host);
    } else {
        struct hostent *host_info;
        host_info = gethostbyname(host);
        if (!host_info) {
            printf("[ERROR] Get host ip failed\n");
            return -1;
        }
        dst_addr = ((struct in_addr *) host_info->h_addr)->s_addr;
        printf("host addr is %08lX\n", *(uint32_t *)&dst_addr);
    }


    // server_addr.sin_addr.s_addr = inet_addr(host);
    printf("gethostbyname ok\r\n");

    memset(&server_addr,0,sizeof(server_addr));
	server_addr.sin_family = AF_INET;
	server_addr.sin_port = htons(port);
    server_addr.sin_addr.s_addr = dst_addr;
	// memcpy((void *)&server_addr.sin_addr,(void *)server->h_addr,4);

	if (connect(server_socket,(struct sockaddr *)&server_addr, sizeof(server_addr)) < 0){
		printf("\n\r[%s] Socket connect failed", __FUNCTION__);
		return -1;
	}

    printf("connect success\r\n");

	return server_socket;
}


void ai_http_update_ota(void *param)
{
    int fd = -1;
    int ret = -1, len = 0, start_pos = 0;
    int writelen = 0;
    int read_bytes = 0;
    uint32_t idx = 0;
    char *port_str = NULL;
    unsigned char *request = NULL;
    unsigned char recv_buf[BUF_SIZE] = {0};
    ai_http_response_result rsp_result = {0};
    mbedtls_md5_context md5_ctx;
    unsigned char md5[33] = {0};
    ai_pack_head pack_head_t = {0};

    int port = ((ota_parame*)param)->port;
    ota_parame *ota_parame_t = (ota_parame*)malloc(sizeof(ota_parame));
    if(ota_parame_t == NULL) 
    {
        goto exit;
    }
    memcpy(ota_parame_t, (ota_parame *)param, sizeof(ota_parame));
    port_str = https_itoa(ota_parame_t->port);

    mbedtls_md5_init(&md5_ctx);
    mbedtls_md5_starts(&md5_ctx);

    fd = connect_server(fd, ota_parame_t->host, ota_parame_t->port);
    if(fd == -1){
        goto exit;
    }
    printf("connect server success\r\n");

    request = malloc(strlen("GET /") + strlen(ota_parame_t->resoure) + strlen(" HTTP/1.1\r\nHost: ")
        + strlen(ota_parame_t->host) + strlen("\r\n\r\n") + 1);
    sprintf((char*)request, "GET /%s HTTP/1.1\r\nHost: %s\r\n\r\n", ota_parame_t->resoure, ota_parame_t->host);

    ret = write(fd, request, strlen((char *)request));
    if(ret < 0){
        printf("send http requst failed\r\n");
        goto exit;
    }

    /* 解析https响应*/
    while(3 >= rsp_result.parse_status)
    {
        if(0 == rsp_result.parse_status){//didn't get the http response
			memset(recv_buf, 0, BUF_SIZE);
			read_bytes = read(fd, recv_buf, BUF_SIZE);
			if(read_bytes <= 0){
				printf("read socket failed\r\n");
				goto exit;
			}
            // for(int i=0; i<read_bytes; i++){
            //     printf("%02X ", recv_buf[i]);
            // }
            // printf("\r\n");
            printf("len = %d\r\n", read_bytes);
            printf("http head = %s\r\n", recv_buf);
            idx = read_bytes;
			memset(&rsp_result, 0, sizeof(rsp_result));
			if(ai_parse_http_response(recv_buf, read_bytes, &rsp_result) == -1){
				goto exit;
			}
		} 
        else if ((1 == rsp_result.parse_status) || (3 == rsp_result.parse_status)){//just get the status code
            memset(recv_buf, 0, BUF_SIZE);
			memcpy(recv_buf, rsp_result.header_bak, HEADER_BAK_LEN);
            free(rsp_result.header_bak);
			rsp_result.header_bak = NULL;
			read_bytes = read(fd, recv_buf + HEADER_BAK_LEN, (BUF_SIZE - HEADER_BAK_LEN));
			if(read_bytes <= 0){
				printf("read socket failed\r\n");
				goto exit;
			}
            idx = read_bytes + HEADER_BAK_LEN;
			if (ai_parse_http_response(recv_buf, read_bytes + HEADER_BAK_LEN, &rsp_result) == -1){
				goto exit;
			}
		}
    }

    if(0 == rsp_result.body_len)
    {
        printf("New firmware size = 0\r\n");
        goto exit;
    }else{
        printf("Download new firmware begin, total size : %d\n", (int)rsp_result.body_len);
    }

    writelen = idx - rsp_result.header_len;
    printf("head_len = %d writelen=%d index = %d\r\n", (int)rsp_result.header_len, writelen, (int)idx);
    if(writelen != 0){
        memset(recv_buf, 0, rsp_result.header_len);
        memcpy(recv_buf, recv_buf+rsp_result.header_len, writelen);
        memset(recv_buf+writelen, 0, rsp_result.header_len);
        len = writelen;
    }else{
        memset(recv_buf, 0, BUF_SIZE);
        read_bytes = recv(fd, recv_buf, BUF_SIZE, 0);
        if(read_bytes <= 0){
            printf("recv ota data failed\r\n");
            goto exit;
        }
        len = read_bytes;
    }

    //off固件头部偏移地址
    int off = parse_ai_pack_head(recv_buf, ret, &pack_head_t);
    memset(recv_buf, 0, off);
    len -= off;
    memcpy(recv_buf, recv_buf+off, len);
    mbedtls_md5_update(&md5_ctx, recv_buf, len);
    // for(int i=0; i<len; i++){
    //     printf("%02X ", recv_buf[i]);
    // }
    // printf("\r\n");

    //擦除flash,4kb对齐
    if(-1 == ota_parame_t->erase_cb(0, (rsp_result.body_len/4096+1)*4096)){
        goto exit;
    }
    //写flash
    if(-1 == ota_parame_t->write_cb(start_pos, recv_buf, len)){
        goto exit;
    }
    int writeTopos = start_pos + len;
    do
    {
        len = sizeof(recv_buf) - 1;
        memset(recv_buf, 0, BUF_SIZE);
        read_bytes = recv(fd, recv_buf, BUF_SIZE, 0);
        if(read_bytes == 0) break;
        if(read_bytes < 0){
            printf("read socket failed\r\n");
            goto exit;
        }
        len = read_bytes;
        mbedtls_md5_update(&md5_ctx, recv_buf, len);
        ota_parame_t->write_cb(writeTopos, recv_buf, len);
        writeTopos += len;
    } while (writeTopos < (rsp_result.body_len - AI_PACK_HEAD_LEN));
    printf("\r\n\r\nend\r\n\r\n");
    mbedtls_md5_finish(&md5_ctx, md5);
    if(0 == memcmp(md5, pack_head_t.md5, sizeof(&pack_head_t.md5))){
        //MD5校验成功
        printf("MD5 verify success\r\n");
        for(int i=0; i<16; i++)
            printf("%02X", md5[i]);
        printf("\r\n");
        ota_parame_t->set_boot_partition_cb();
    }else{
        printf("MD5 verify failed\r\n");
        goto exit;
    }
    printf("OTA Success\r\n");
    ota_parame_t->rebooot_cb(true);
exit:
    printf("OTA Failed\r\n");
    if(fd >= 0)
        close(fd);
    // ota_parame_t->rebooot_cb(false);
    vTaskDelete(NULL);
}




ota_parame ai_ota_parame_init(char *host, int port, char *resource)
{
    ota_parame ota_parame_t;
    ota_parame_t.host = host;
    ota_parame_t.port = port;
    ota_parame_t.resoure = resource;
    ota_parame_t.write_cb = partition_write_ota_farmware;
    ota_parame_t.erase_cb = partition_erase;
    ota_parame_t.set_boot_partition_cb = set_boot_partition;
    ota_parame_t.rebooot_cb = set_reboot;

    return ota_parame_t;
}


