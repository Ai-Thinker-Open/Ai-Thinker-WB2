/**
 * @file https_code.c
 * @author Seahi-Mo (seahi-mo@foxmail.com)
 * @brief
 * @version 0.1
 * @date 2025-09-22
 *
 * @copyright Ai-Thinker co.,ltd (c) 2025
 *
 */
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <lwip/sockets.h>
#include <lwip/netdb.h>
#include <lwip/tcp.h>
#include <lwip/err.h>
#include <http_client.h>
#include "mbedtls/platform.h"
#include "mbedtls/net_sockets.h"
#include "mbedtls/ssl.h"
#include "mbedtls/entropy.h"
#include "mbedtls/ctr_drbg.h"
#include "mbedtls/error.h"
#include "mbedtls/md5.h"
#include "mbedtls/debug.h"
#include <blog.h>
#include "https_code.h"
#define HTTP_RESPONSE_BUFFER_SIZE 1024 * 16 // 根据实际需求调整
/* Constants that aren't configurable in menuconfig */
#define WEB_SERVER_BILIBILI "api.bilibili.com"
#define WEB_URL_BILIBILI "https://api.bilibili.com/x/relation/stat?vmid=%s"

#define WEB_SERVER_JLC "oshwhub.com"
#define WEB_URL_JLC "https://oshwhub.com/api/project/%s"
#define WEB_PORT "443"
static const char *REQUEST_BILIBILI = "GET " WEB_URL_BILIBILI " HTTP/1.1\r\n"
									  "Host: " WEB_SERVER_BILIBILI "\r\n"
									  "User-Agent: Ai-WB2 HoloCore \r\n"
									  "\r\n";

static const char *REQUEST_JLC = "GET " WEB_URL_JLC " HTTP/1.1\r\n"
								 "Host: " WEB_SERVER_JLC "\r\n"
								 "User-Agent: Ai-WB2 HoloCore \r\n"
								 "Accept: */* \r\n"
								 "Connection: keep-alive \r\n"
								 "Accept-Encoding: \"\" \r\n"
								 "\r\n";
static const uint8_t TEST_CERTIFICATE_FILENAME[] = {"-----BEGIN CERTIFICATE-----\r\n"
													"MIIEkjCCA3qgAwIBAgIQCgFBQgAAAVOFc2oLheynCDANBgkqhkiG9w0BAQsFADA/\r\n"
													"MSQwIgYDVQQKExtEaWdpdGFsIFNpZ25hdHVyZSBUcnVzdCBDby4xFzAVBgNVBAMT\r\n"
													"DkRTVCBSb290IENBIFgzMB4XDTE2MDMxNzE2NDA0NloXDTIxMDMxNzE2NDA0Nlow\r\n"
													"SjELMAkGA1UEBhMCVVMxFjAUBgNVBAoTDUxldCdzIEVuY3J5cHQxIzAhBgNVBAMT\r\n"
													"GkxldCdzIEVuY3J5cHQgQXV0aG9yaXR5IFgzMIIBIjANBgkqhkiG9w0BAQEFAAOC\r\n"
													"AQ8AMIIBCgKCAQEAnNMM8FrlLke3cl03g7NoYzDq1zUmGSXhvb418XCSL7e4S0EF\r\n"
													"q6meNQhY7LEqxGiHC6PjdeTm86dicbp5gWAf15Gan/PQeGdxyGkOlZHP/uaZ6WA8\r\n"
													"SMx+yk13EiSdRxta67nsHjcAHJyse6cF6s5K671B5TaYucv9bTyWaN8jKkKQDIZ0\r\n"
													"Z8h/pZq4UmEUEz9l6YKHy9v6Dlb2honzhT+Xhq+w3Brvaw2VFn3EK6BlspkENnWA\r\n"
													"a6xK8xuQSXgvopZPKiAlKQTGdMDQMc2PMTiVFrqoM7hD8bEfwzB/onkxEz0tNvjj\r\n"
													"/PIzark5McWvxI0NHWQWM6r6hCm21AvA2H3DkwIDAQABo4IBfTCCAXkwEgYDVR0T\r\n"
													"AQH/BAgwBgEB/wIBADAOBgNVHQ8BAf8EBAMCAYYwfwYIKwYBBQUHAQEEczBxMDIG\r\n"
													"CCsGAQUFBzABhiZodHRwOi8vaXNyZy50cnVzdGlkLm9jc3AuaWRlbnRydXN0LmNv\r\n"
													"bTA7BggrBgEFBQcwAoYvaHR0cDovL2FwcHMuaWRlbnRydXN0LmNvbS9yb290cy9k\r\n"
													"c3Ryb290Y2F4My5wN2MwHwYDVR0jBBgwFoAUxKexpHsscfrb4UuQdf/EFWCFiRAw\r\n"
													"VAYDVR0gBE0wSzAIBgZngQwBAgEwPwYLKwYBBAGC3xMBAQEwMDAuBggrBgEFBQcC\r\n"
													"ARYiaHR0cDovL2Nwcy5yb290LXgxLmxldHNlbmNyeXB0Lm9yZzA8BgNVHR8ENTAz\r\n"
													"MDGgL6AthitodHRwOi8vY3JsLmlkZW50cnVzdC5jb20vRFNUUk9PVENBWDNDUkwu\r\n"
													"Y3JsMB0GA1UdDgQWBBSoSmpjBH3duubRObemRWXv86jsoTANBgkqhkiG9w0BAQsF\r\n"
													"AAOCAQEA3TPXEfNjWDjdGBX7CVW+dla5cEilaUcne8IkCJLxWh9KEik3JHRRHGJo\r\n"
													"uM2VcGfl96S8TihRzZvoroed6ti6WqEBmtzw3Wodatg+VyOeph4EYpr/1wXKtx8/\r\n"
													"wApIvJSwtmVi4MFU5aMqrSDE6ea73Mj2tcMyo5jMd6jmeWUHK8so/joWUoHOUgwu\r\n"
													"X4Po1QYz+3dszkDqMp4fklxBwXRsW10KXzPMTZ+sOPAveyxindmjkW8lGy+QsRlG\r\n"
													"PfZ+G6Z6h7mjem0Y+iWlkYcV4PIWL1iwBi8saCbGS5jN2p8M+X+Q7UNKEkROb3N6\r\n"
													"KOqkqm57TH2H3eDJAkSnh6/DNFu0Qg==\r\n"
													"-----END CERTIFICATE-----\r\n"};
bool is_https_running = false;
static const char *extract_json_from_http_response(const char *response);
static int parse_chunked_response(const char *response, char **json_out);
static void count_extractor_init(CountExtractor *extractor);
static int expand_buffer(CountExtractor *extractor, size_t needed);
static void process_buf_for_count(CountExtractor *extractor, const char *buf, size_t len);
static int is_count_extracted(CountExtractor *extractor);
static const char *get_extracted_count(CountExtractor *extractor);
static void count_extractor_free(CountExtractor *extractor);

char *https_get_code(char *user_id, unsigned char uid_type)
{
	is_https_running = true;
	if (user_id == NULL)
	{
		blog_error("user_id is NULL");
		is_https_running = false;
		return NULL;
	}

	int ret = 0, flags, len;
	char buf[1024] = {0};
	const char *json_data = NULL;
	char *http_data = NULL;
	// 初始化上下文结构 - 按释放顺序的逆序初始化
	mbedtls_entropy_context entropy;
	mbedtls_ctr_drbg_context ctr_drbg;
	mbedtls_x509_crt cacert;
	mbedtls_ssl_config conf;
	mbedtls_net_context server_fd;
	mbedtls_ssl_context ssl;
	mbedtls_ssl_session session; // 24字节泄漏的核心对象

	// 初始化所有资源时立即设置清理标记
	int session_inited = 0;
	int ssl_inited = 0;
	int cacert_inited = 0;
	int ctr_drbg_inited = 0;
	int conf_inited = 0;
	int entropy_inited = 0;
	int server_fd_inited = 0;

	// 会话初始化 - 增加状态标记
	mbedtls_ssl_session_init(&session);
	session_inited = 1;

	mbedtls_ssl_init(&ssl);

	ssl_inited = 1;

	mbedtls_x509_crt_init(&cacert);
	cacert_inited = 1;

	mbedtls_ctr_drbg_init(&ctr_drbg);

	ctr_drbg_inited = 1;

	mbedtls_ssl_config_init(&conf);

	conf_inited = 1;

	mbedtls_entropy_init(&entropy);

	entropy_inited = 1;

	mbedtls_net_init(&server_fd);

	server_fd_inited = 1;

	// 会话获取逻辑 - 移至ssl配置之后（原位置过早）
	blog_info("Checking for existing SSL session...");

	blog_info("Seeding the random number generator");
	if ((ret = mbedtls_ctr_drbg_seed(&ctr_drbg, mbedtls_entropy_func, &entropy,
									 (const unsigned char *)"Ai-WB2 HoloCore", strlen("Ai-WB2 HoloCore"))) != 0)
	{
		blog_error("mbedtls_ctr_drbg_seed returned %d", ret);
		ret = -1;
		goto exit;
	}

	blog_info("Loading the CA root certificate...");
	ret = mbedtls_x509_crt_parse(&cacert,
								 TEST_CERTIFICATE_FILENAME,
								 strlen((char *)TEST_CERTIFICATE_FILENAME) + 1);

	if (ret < 0)
	{
		blog_error("mbedtls_x509_crt_parse returned -0x%x\n\n", -ret);
		ret = -1;
		goto exit;
	}

	blog_info("Setting hostname for TLS session...");
	if ((ret = mbedtls_ssl_set_hostname(&ssl, uid_type ? WEB_SERVER_BILIBILI : WEB_SERVER_JLC)) != 0)
	{
		blog_error("mbedtls_ssl_set_hostname returned -0x%x", -ret);
		ret = -1;
		goto exit;
	}

	blog_info("Setting up the SSL/TLS structure...");
	if ((ret = mbedtls_ssl_config_defaults(&conf,
										   MBEDTLS_SSL_IS_CLIENT,
										   MBEDTLS_SSL_TRANSPORT_STREAM,
										   MBEDTLS_SSL_PRESET_DEFAULT)) != 0)
	{
		blog_error("mbedtls_ssl_config_defaults returned %d", ret);
		goto exit;
	}
	mbedtls_ssl_conf_authmode(&conf, MBEDTLS_SSL_VERIFY_NONE);
	mbedtls_ssl_conf_ca_chain(&conf, &cacert, NULL);
	mbedtls_ssl_conf_rng(&conf, mbedtls_ctr_drbg_random, &ctr_drbg);

	if ((ret = mbedtls_ssl_setup(&ssl, &conf)) != 0)
	{
		blog_error("mbedtls_ssl_setup returned -0x%x\n\n", -ret);
		goto exit;
	}

	// 此时ssl已初始化完成，再尝试获取会话
	ret = mbedtls_ssl_get_session(&ssl, &session);
	if (ret == 0)
	{
		blog_info("Session acquired");
	}
	else
	{
		blog_info("No existing session");
	}

	blog_info("Connecting to %s:%s...", uid_type ? WEB_SERVER_BILIBILI : WEB_SERVER_JLC, WEB_PORT);

	if ((ret = mbedtls_net_connect(&server_fd, uid_type ? WEB_SERVER_BILIBILI : WEB_SERVER_JLC,
								   WEB_PORT, MBEDTLS_NET_PROTO_TCP)) != 0)
	{
		blog_error("mbedtls_net_connect returned -%x", -ret);
		goto exit;
	}

	blog_info("Connected.");
	mbedtls_ssl_set_bio(&ssl, &server_fd, mbedtls_net_send, mbedtls_net_recv, NULL);

	blog_info("Performing the SSL/TLS handshake...");
	while ((ret = mbedtls_ssl_handshake(&ssl)) != 0)
	{
		if (ret != MBEDTLS_ERR_SSL_WANT_READ && ret != MBEDTLS_ERR_SSL_WANT_WRITE)
		{
			blog_error("mbedtls_ssl_handshake returned -0x%x", -ret);
			goto exit;
		}
	}

	// 其余代码保持不变...
	blog_info("Verifying peer X.509 certificate...");
	if ((flags = mbedtls_ssl_get_verify_result(&ssl)) != 0)
	{
		blog_warn("Failed to verify peer certificate!");
		bzero(buf, sizeof(buf));
		mbedtls_x509_crt_verify_info(buf, sizeof(buf), "  ! ", flags);
		blog_warn("verification info: %s", buf);
	}
	else
	{
		blog_info("Certificate verified.");
	}

	blog_info("Cipher suite is %s", mbedtls_ssl_get_ciphersuite(&ssl));

	blog_info("Writing HTTP request %s...", uid_type ? "Bilibili" : "JLC");
	char request_buf[512];
	memset(request_buf, 0, 512);
	snprintf(request_buf, sizeof(request_buf), uid_type ? REQUEST_BILIBILI : REQUEST_JLC, user_id);

	blog_info("Request:\n%s", request_buf);
	size_t written_bytes = 0;
	do
	{
		ret = mbedtls_ssl_write(&ssl,
								(const unsigned char *)request_buf + written_bytes,
								strlen(request_buf) - written_bytes);
		if (ret >= 0)
		{
			blog_info("%d bytes written", ret);
			written_bytes += ret;
		}
		else if (ret != MBEDTLS_ERR_SSL_WANT_WRITE && ret != MBEDTLS_ERR_SSL_WANT_READ)
		{
			blog_error("mbedtls_ssl_write returned -0x%x", -ret);
			goto exit;
		}
	} while (written_bytes < strlen(request_buf));

	blog_info("Reading HTTP response...");
	char *http_response = malloc(HTTP_RESPONSE_BUFFER_SIZE);
	if (!http_response)
	{
		blog_error("Failed to allocate memory for http_response");
		ret = -1;
		goto exit;
	}
	memset(http_response, 0, HTTP_RESPONSE_BUFFER_SIZE);
	http_response[0] = '\0'; // 初始化空字符串
	int json_extracted = 0;	 // 标记JSON是否已提取
							 // 第一阶段：读取完整的HTTP响应

	// 创建一个临时缓冲区来存储每次读取的数据，用于获取JLC工程浏览量
	CountExtractor count_extractor;
	count_extractor_init(&count_extractor);
	ResponseState resp_state = RESPONSE_STATE_HEADER;
	size_t content_length = 0; // 从Content-Length获取的总长度
	size_t body_read = 0;	   // 已读取的响应体长度
	int is_chunked = 0;		   // 是否为分块传输
	char *header_end = NULL;   // 响应头结束标记("\r\n\r\n")的位置
	do
	{
		len = sizeof(buf) - 1;
		bzero(buf, sizeof(buf));
		if (!is_https_running)
			goto exit;

		ret = mbedtls_ssl_read(&ssl, (unsigned char *)buf, len);
		if (!is_https_running)
			goto exit;

		// 处理mbedtls的读写等待
		if (ret == MBEDTLS_ERR_SSL_WANT_READ || ret == MBEDTLS_ERR_SSL_WANT_WRITE)
			continue;

		// 处理连接关闭或错误
		if (ret == MBEDTLS_ERR_SSL_PEER_CLOSE_NOTIFY)
		{
			ret = 0;
			break;
		}
		else if (ret < 0)
		{
			blog_error("mbedtls_ssl_read returned -0x%x", -ret);
			break;
		}
		else if (ret == 0)
		{
			blog_info("connection closed");
			break;
		}

		// 追加数据到完整响应缓冲区（保持原逻辑）
		size_t current_len = strlen(http_response);
		if (current_len + ret < HTTP_RESPONSE_BUFFER_SIZE - 1)
		{
			memcpy(http_response + current_len, buf, ret);
			http_response[current_len + ret] = '\0';
		}
		else
		{
			blog_error("HTTP response too large, buffer overflow prevented");
			ret = -1;
			goto exit;
		}

		// 1. 解析响应头（仅在未解析完成时执行）
		if (resp_state == RESPONSE_STATE_HEADER)
		{
			// 查找响应头结束标记("\r\n\r\n")
			header_end = strstr(http_response, "\r\n\r\n");
			if (header_end != NULL)
			{
				resp_state = RESPONSE_STATE_BODY;
				// 计算响应头长度和响应体起始位置
				size_t header_len = header_end - http_response + 4; // 包含"\r\n\r\n"
				const char *body_start = http_response + header_len;
				size_t initial_body_len = strlen(body_start);

				// 解析Content-Length
				const char *cl_header = strstr(http_response, "Content-Length: ");
				if (cl_header != NULL)
				{
					content_length = atoi(cl_header + 16); // "Content-Length: "长度为16
					is_chunked = 0;
					// 初始化已读响应体长度
					body_read = initial_body_len;
				}
				// 解析分块传输（简化处理，实际需处理分块格式）
				else if (strstr(http_response, "Transfer-Encoding: chunked") != NULL)
				{
					is_chunked = 1;
					// 分块传输需逐块解析，此处简化为标记状态
				}
				// 既无Content-Length也非分块：响应体在连接关闭时结束（依赖ret==0退出）
			}
		}

		// 2. 判断响应体是否读取完成（非分块模式）
		if (resp_state == RESPONSE_STATE_BODY && !is_chunked && content_length > 0)
		{
			body_read = strlen(http_response) - (header_end - http_response + 4); // 更新已读长度
			if (body_read >= content_length)
			{
				blog_info("Response completed (Content-Length reached)");
				resp_state = RESPONSE_STATE_DONE;
				break; // 读取完成，退出循环
			}
		}

		// 3. 分块传输处理（简化版：检测到0长度块时结束）
		if (resp_state == RESPONSE_STATE_BODY && is_chunked)
		{
			// 实际需解析每块的长度（十六进制），此处简化为检测"0\r\n\r\n"结束标记
			if (strstr(http_response, "\r\n0\r\n\r\n") != NULL)
			{
				blog_info("Response completed (chunked transfer ended)");
				resp_state = RESPONSE_STATE_DONE;
				break; // 读取完成，退出循环
			}
		}

	} while (is_https_running && resp_state != RESPONSE_STATE_DONE); // 增加响应完成的退出条件

	// 第二阶段：提取JSON（仅在成功读取响应后）

	// const char *json_start = NULL;
	int _ret = parse_chunked_response(http_response, &http_data);

	puts(http_data);
	if (http_data != NULL && _ret == 0)
	{
		json_extracted = 1; // 标记JSON提取成功
		ret = 0;
	}
	else
	{
		blog_error("Failed to extract JSON from complete response");
		ret = -1;
	}
	// 释放临时缓冲区（无论是否成功都释放）
	count_extractor_free(&count_extractor);
	free(http_response);
	http_response = NULL;
exit:
	// 关键修复：按初始化的逆序释放资源，只释放已初始化的部分
	if (server_fd_inited)
		mbedtls_net_free(&server_fd);
	if (ssl_inited)
	{
		mbedtls_ssl_close_notify(&ssl);
		mbedtls_ssl_session_reset(&ssl);
		mbedtls_ssl_free(&ssl);
	}
	if (conf_inited)
		mbedtls_ssl_config_free(&conf);
	if (cacert_inited)
		mbedtls_x509_crt_free(&cacert);
	if (ctr_drbg_inited)
		mbedtls_ctr_drbg_free(&ctr_drbg);
	if (entropy_inited)
		mbedtls_entropy_free(&entropy);
	// 最后释放session，确保前面的资源释放不会影响它
	if (session_inited)
	{
		mbedtls_ssl_session_free(&session);
		memset(&session, 0, sizeof(mbedtls_ssl_session));
	}

	// 仅在出错时释放已分配的http_data
	if (ret != 0 && http_data != NULL)
	{
		free(http_data);
		http_data = NULL;
	}
	if (ret != 0)
	{
		mbedtls_strerror(ret, buf, sizeof(buf) - 1);
		blog_error("Last error was: -0x%x - %s", -ret, buf);
	}
	is_https_running = false;

	return http_data;
}
// 辅助函数：判断字符是否为空白字符（跳过 JSON 前后的空白）
static int hex_to_int(const char *hex, int len)
{
	int result = 0;
	for (int i = 0; i < len; i++)
	{
		char c = hex[i];
		if (c >= '0' && c <= '9')
		{
			result = result * 16 + (c - '0');
		}
		else if (c >= 'a' && c <= 'f')
		{
			result = result * 16 + (c - 'a' + 10);
		}
		else if (c >= 'A' && c <= 'F')
		{
			result = result * 16 + (c - 'A' + 10);
		}
		else
		{
			return -1; // 无效字符
		}
	}
	return result;
}
static const char *extract_json_from_http_response(const char *response)
{
	const char *separator = "\r\n\r\n";
	const char *json_start = strstr(response, separator);

	if (json_start == NULL)
	{
		separator = "\n\n";
		json_start = strstr(response, separator);
		if (json_start == NULL)
		{
			return NULL;
		}
	}

	json_start += strlen(separator);
	// 跳过最外层的左大括号 '{'
	while (*json_start != '{')
	{
		json_start++;
	}
	// 跳过最外层的右大括号
	char *str_temp = (char *)json_start;
	int i = 0;
	while (str_temp[i] != '\r' && str_temp[i + 1] != '\n')
	{
		i++;
	}
	str_temp[i + 1] = '\0';
	return json_start;
}

static int parse_chunked_response(const char *response, char **json_out)
{
	if (!response || !json_out)
	{
		return -1;
	}

	// 分离 HTTP 头部和 body
	const char *header_end = strstr(response, "\r\n\r\n");
	if (!header_end)
	{
		return -1; // 找不到头部结束标记
	}
	const char *body_start = header_end + 4; // 跳过 "\r\n\r\n"

	// 初始化缓冲区
	size_t total_size = 0;
	char *json_data = malloc(1); // 初始分配1字节
	if (!json_data)
	{
		return -1;
	}
	json_data[0] = '\0';

	const char *current = body_start;

	while (1)
	{
		// 查找块大小行的结束
		const char *chunk_size_end = strstr(current, "\r\n");
		if (!chunk_size_end)
		{
			free(json_data);
			return -1;
		}

		// 计算块大小的十六进制字符串长度
		size_t hex_len = chunk_size_end - current;
		if (hex_len <= 0)
		{
			free(json_data);
			return -1;
		}

		// 解析块大小
		int chunk_size = hex_to_int(current, hex_len);
		if (chunk_size < 0)
		{
			free(json_data);
			return -1;
		}

		// 如果块大小为0，表示结束
		if (chunk_size == 0)
		{
			break;
		}

		// 移动到块数据的起始位置
		const char *chunk_data = chunk_size_end + 2; // 跳过 "\r\n"

		// 检查块数据是否足够
		if (strlen(chunk_data) < (size_t)chunk_size)
		{
			free(json_data);
			return -1;
		}

		// 扩展缓冲区并复制块数据
		char *new_data = realloc(json_data, total_size + chunk_size + 1);
		if (!new_data)
		{
			free(json_data);
			return -1;
		}
		json_data = new_data;

		memcpy(json_data + total_size, chunk_data, chunk_size);
		total_size += chunk_size;
		json_data[total_size] = '\0';

		// 移动到下一个块的起始位置
		current = chunk_data + chunk_size + 2; // 跳过块数据和后面的 "\r\n"
	}

	*json_out = json_data;
	return 0;
}

// 初始化提取器
static void count_extractor_init(CountExtractor *extractor)
{
	memset(extractor, 0, sizeof(CountExtractor));
	extractor->state = COUNT_STATE_NONE;
	extractor->buf_capacity = 1024;
	extractor->buffer = malloc(extractor->buf_capacity);
	if (extractor->buffer)
	{
		extractor->buffer[0] = '\0';
	}
}

// 扩展缓冲区
static int expand_buffer(CountExtractor *extractor, size_t needed)
{
	if (!extractor->buffer)
		return -1;

	size_t new_capacity = extractor->buf_capacity;
	while (extractor->buf_size + needed >= new_capacity)
	{
		new_capacity *= 2;
		if (new_capacity > 1024 * 1024)
		{ // 限制最大1MB，防止内存溢出
			return -1;
		}
	}

	char *new_buf = realloc(extractor->buffer, new_capacity);
	if (!new_buf)
		return -1;

	extractor->buffer = new_buf;
	extractor->buf_capacity = new_capacity;
	return 0;
}

// 处理缓冲区数据，提取count对象
static void process_buf_for_count(CountExtractor *extractor, const char *buf, size_t len)
{
	if (extractor->state == COUNT_STATE_COMPLETE || !extractor->buffer)
	{
		return;
	}

	for (size_t i = 0; i < len; i++)
	{
		if (extractor->state == COUNT_STATE_NONE)
		{
			// 先寻找最外层的左大括号 '{'
			if (buf[i] == '{')
			{
				// 记录最外层左大括号
				if (expand_buffer(extractor, 1) != 0)
				{
					return;
				}
				extractor->buffer[extractor->buf_size++] = '{';
				extractor->brace_balance = 1;
				extractor->state = COUNT_STATE_INSIDE;
			}
		}
		else if (extractor->state == COUNT_STATE_INSIDE)
		{
			// 处理内部字符，先找"count"关键字
			if (!extractor->found_count)
			{
				// 查找"count":的位置
				if (i + 6 < len &&
					buf[i] == '"' && buf[i + 1] == 'c' && buf[i + 2] == 'o' &&
					buf[i + 3] == 'u' && buf[i + 4] == 'n' && buf[i + 5] == 't' &&
					buf[i + 6] == '"')
				{

					// 跳过冒号前的空白
					size_t colon_pos = i + 7;
					while (colon_pos < len && (buf[colon_pos] == ' ' || buf[colon_pos] == '\t' ||
											   buf[colon_pos] == '\r' || buf[colon_pos] == '\n'))
					{
						colon_pos++;
					}

					// 确认有冒号
					if (colon_pos < len && buf[colon_pos] == ':')
					{
						// 计算需要复制的长度（从"count"到冒号）
						size_t keyword_len = colon_pos - i + 1;
						if (expand_buffer(extractor, keyword_len) != 0)
						{
							return;
						}

						// 复制"count":部分
						memcpy(extractor->buffer + extractor->buf_size, &buf[i], keyword_len);
						extractor->buf_size += keyword_len;

						// 标记已找到count关键字
						extractor->found_count = 1;
						i = colon_pos; // 移动索引到已处理位置
						continue;
					}
				}
			}

			// 复制当前字符并更新大括号平衡
			if (expand_buffer(extractor, 1) != 0)
			{
				return;
			}
			extractor->buffer[extractor->buf_size++] = buf[i];

			// 更新大括号平衡
			if (buf[i] == '{')
			{
				extractor->brace_balance++;
			}
			else if (buf[i] == '}')
			{
				extractor->brace_balance--;

				// 当大括号平衡为0且已找到count时，说明完整JSON结束
				if (extractor->brace_balance == 0 && extractor->found_count)
				{
					extractor->state = COUNT_STATE_COMPLETE;
					extractor->buffer[extractor->buf_size] = '\0'; // 确保字符串结束
					break;
				}
			}
		}
	}
}

// 检查是否提取完成
static int is_count_extracted(CountExtractor *extractor)
{
	return (extractor->state == COUNT_STATE_COMPLETE) ? 1 : 0;
}

// 获取提取的count对象
static const char *get_extracted_count(CountExtractor *extractor)
{
	if (extractor->state == COUNT_STATE_COMPLETE && extractor->buffer)
	{
		return extractor->buffer;
	}
	return NULL;
}

// 释放提取器资源
static void count_extractor_free(CountExtractor *extractor)
{
	if (extractor->buffer)
	{
		free(extractor->buffer);
		extractor->buffer = NULL;
	}
	memset(extractor, 0, sizeof(CountExtractor));
}