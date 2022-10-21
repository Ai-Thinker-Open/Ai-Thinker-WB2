#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "ota_parse.h"
// #include "freertos/FreeRTOS.h"




/*****************************
 * 描述：解析HTTP响应头
 * response：http响应的数据包
 * response_len：http响应数据包的长度
 * result：解析出来的头部信息
 *****************************/
int ai_parse_http_response(uint8_t *response, int response_len, ai_http_response_result *result)
{
    uint32_t i, p, q, m;
	uint32_t header_end = 0;
    if(0 == result->parse_status)
    {
        uint8_t status[4] = {0};
        i = p = q = m = 0;
        for(; i<response_len; ++i){
            if(' ' == response[i])
            {
                ++m;
                if(1 == m){
                    p = i;
                }else if(2 == m){
                    q = i;
                    break;
                }
            }

        }

        if (!p || !q || q-p != 4) {//Didn't get the status code
			return -1;
		}
        memcpy(status, response+p+1, 3);//get the status code
        result->status_code = atoi((char const *)status);
		if(result->status_code == 200)
			result->parse_status = 1;
        else{
            printf("\r\nThe http response status code is %d\r\n", (int)result->status_code);
            return -1;
        }
    }

    //if didn't receive the full http header
	if(3 == result->parse_status){//didn't get the http response
		p = q = 0;
		for (i = 0; i < response_len; ++i) {
			if (response[i] == '\r' && response[i+1] == '\n' &&
				response[i+2] == '\r' && response[i+3] == '\n') {//the end of header
				header_end = i+4;
				result->parse_status = 4;
				result->header_len = header_end;
				result->body = response + header_end;
				break;
			}
		}
		if (3 == result->parse_status) {//Still didn't receive the full header	
			result->header_bak = malloc(HEADER_BAK_LEN + 1);
			memset(result->header_bak, 0, strlen((const char*)result->header_bak));
			memcpy(result->header_bak, response + response_len - HEADER_BAK_LEN, HEADER_BAK_LEN);
		}
	}

    //Get Content-Length
	if(1 == result->parse_status){//didn't get the content length
		const char *content_length_buf1 = "CONTENT-LENGTH";
		const char *content_length_buf2 = "Content-Length";
		const uint32_t content_length_buf_len = strlen((const char*)content_length_buf1);
		p = q = 0;
		
		for (i = 0; i < response_len; ++i) {
			if (response[i] == '\r' && response[i+1] == '\n') {
				q = i;//the end of the line
				if (!memcmp(response+p, content_length_buf1, content_length_buf_len) ||
						!memcmp(response+p, content_length_buf2, content_length_buf_len)) {//get the content length
					unsigned int j1 = p+content_length_buf_len, j2 = q-1;
					while ( j1 < q && (*(response+j1) == ':' || *(response+j1) == ' ') ) ++j1;
					while ( j2 > j1 && *(response+j2) == ' ') --j2;
					uint8_t len_buf[12] = {0};
					memcpy(len_buf, response+j1, j2-j1+1);
					result->body_len = atoi((char *)len_buf);
					result->parse_status = 2;
				}
				p = i+2;
			}
			if (response[i] == '\r' && response[i+1] == '\n' &&
					response[i+2] == '\r' && response[i+3] == '\n') {//Get the end of header
				header_end = i+4;//p is the start of the body
				if(result->parse_status == 2){//get the full header and the content length
					result->parse_status = 4;
					result->header_len = header_end;
					result->body = response + header_end;
				}
				else {//there are no content length in header	
					printf("\n\r[%s] No Content-Length in header", __FUNCTION__);
					return -1;
				}
				break;
			}	
		}


        if (1 == result->parse_status) {//didn't get the content length and the full header
			result->header_bak = malloc(HEADER_BAK_LEN + 1);
			memset(result->header_bak, 0, strlen((char *)result->header_bak));
			memcpy(result->header_bak, response + response_len - HEADER_BAK_LEN, HEADER_BAK_LEN);
		}
		else if (2 == result->parse_status) {//didn't get the full header but get the content length
			result->parse_status = 3;
			result->header_bak = malloc(HEADER_BAK_LEN + 1);
			memset(result->header_bak, 0, strlen((char *)result->header_bak));
			memcpy(result->header_bak, response + response_len - HEADER_BAK_LEN, HEADER_BAK_LEN);
		}
    }
    return result->parse_status;
}



/*************************************************
Function: 		string2hex
Description: 	字符串转换成hex,要求str只能是大写字母ABCDEF和数字
Input: 			str:要转换的字符串
Output: 		hex:转换后的hex字符数组
Return: 		0 成功
                1 不符合规则，失败
*************************************************/
static int string2hex(char* str,char* hex)
{
    int i = 0;
    int j = 0;
    unsigned char temp = 0;
    int str_len = 0;
    char str_cpy[100] = {'0'};
    strcpy(str_cpy,str);
    str_len = strlen(str_cpy);
    if(str_len==0)
    {
        return 1;
    }
    while(i < str_len)
    {
        if(str_cpy[i]>='0' && str_cpy[i]<='F') 
        {
            if((str_cpy[i]>='0' && str_cpy[i]<='9'))
            {
                temp = (str_cpy[i] & 0x0f)<<4;
            }
            else if(str_cpy[i]>='A' && str_cpy[i]<='F')
            {
                temp = ((str_cpy[i] + 0x09) & 0x0f)<<4;
            }
            else
            {
                return 1;
            }
        }
        else
        {
            return 1;
        }   
        i++;
        if(str_cpy[i]>='0' && str_cpy[i]<='F') 
        {
            if(str_cpy[i]>='0' && str_cpy[i]<='9')
            {
                temp |= (str_cpy[i] & 0x0f);
            }
            else if(str_cpy[i]>='A' && str_cpy[i]<='F')
            {
                temp |= ((str_cpy[i] + 0x09) & 0x0f);
            }
            else
            {
                return 1;
            }
        }
        else
        {
            return 1;
        } 
        i++;
        hex[j] = temp;
        //printf("%02x",temp);
        j++;
    }
    //printf("\n");
    return 0 ;
}




/*******************************************
*描述：解析安信可OTA Config Tool工具封装的固件头部信息
* 	  固件头部信息包括：version、chip_type、MD5、URL
*********************************************/
int parse_ai_pack_head(uint8_t *resource, int resource_len, ai_pack_head *pack_head_t)
{
    // for(int i=0; i<100; i++)
    //     printf("%02X ", resource[i]);
    // printf("\r\n");

    uint32_t off = 0;
    memcpy(pack_head_t->version, resource+off, VERSION_LEN);
    off += VERSION_LEN;
    printf("version = %s\r\n", pack_head_t->version);

    char chip_type[5] = {0};
    memcpy(chip_type, resource+off, CHIP_TYPE_LEN);
    off += CHIP_TYPE_LEN;
    printf("chip_type = %s\r\n", chip_type);
	if(strcmp(chip_type, "0001")){
		pack_head_t->chip_type = ESP;
	}else if(strcmp(chip_type, "0002")){
		pack_head_t->chip_type = RTL;
	}else if(strcmp(chip_type, "0003")){
		pack_head_t->chip_type = XW;
	}else if(strcmp(chip_type, "0004")){
        pack_head_t->chip_type = TG;
    }else if(strcmp(chip_type, "0005")){
        pack_head_t->chip_type = HI;
    }else{
		pack_head_t->chip_type = UNKNOW;
	}

	char md5[33] = {0};
	memcpy(md5, resource+off, MD5_LEN);
	off += MD5_LEN;
	string2hex(md5, &pack_head_t->md5);
    printf("http head md5:");
	for(int i=0; i<16; i++)
        printf("%02X", pack_head_t->md5[i]);
    printf("\r\n");

	memcpy(pack_head_t->url, resource+off, URL_LEN);
	off += URL_LEN;
	// printf("url = %s\r\n", pack_head_t->url);

	return off;
}



