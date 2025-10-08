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
#define HTTP_RESPONSE_BUFFER_SIZE 4096 // 根据实际需求调整
/* Constants that aren't configurable in menuconfig */
#define WEB_SERVER "api.bilibili.com"
#define WEB_PORT "443"
#define WEB_URL "https://api.bilibili.com/x/relation/stat?vmid=%s"

static const char *REQUEST = "GET " WEB_URL " HTTP/1.1\r\n"
							 "Host: " WEB_SERVER "\r\n"
							 "User-Agent: Ai-WB2 HoloCore \r\n"
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
char *https_get_code(char *user_id)
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
									 NULL, 0)) != 0)
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
	if ((ret = mbedtls_ssl_set_hostname(&ssl, WEB_SERVER)) != 0)
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

	blog_info("Connecting to %s:%s...", WEB_SERVER, WEB_PORT);
	if ((ret = mbedtls_net_connect(&server_fd, WEB_SERVER,
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

	blog_info("Writing HTTP request...");
	char request_buf[512];
	memset(request_buf, 0, 512);
	snprintf(request_buf, sizeof(request_buf), REQUEST, user_id);
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
	http_response[0] = '\0'; // 初始化空字符串
	int json_extracted = 0;	 // 标记JSON是否已提取
							 // 第一阶段：读取完整的HTTP响应
	do
	{
		len = sizeof(buf) - 1;
		bzero(buf, sizeof(buf));
		if (!is_https_running)
			goto exit;
		ret = mbedtls_ssl_read(&ssl, (unsigned char *)buf, len);
		if (!is_https_running)
			goto exit;
		if (ret == MBEDTLS_ERR_SSL_WANT_READ || ret == MBEDTLS_ERR_SSL_WANT_WRITE)
			continue;

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

		// 追加数据到完整响应缓冲区
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
	} while (is_https_running);

	// 第二阶段：提取JSON（仅在成功读取响应后）
	if (ret == 0)
	{
		const char *json_start = extract_json_from_http_response(http_response);
		if (json_start)
		{
			size_t json_len = strlen(json_start);
			http_data = malloc(json_len + 1);
			if (http_data)
			{
				memcpy(http_data, json_start, json_len);
				http_data[json_len] = '\0';
				json_extracted = 1; // 标记JSON提取成功
			}
			else
			{
				blog_error("Failed to allocate memory for http_data");
				ret = -1;
			}
		}
		else
		{
			blog_error("Failed to extract JSON from complete response");
			ret = -1;
		}
	}

	// 释放临时缓冲区（无论是否成功都释放）
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
	static int request_count;
	blog_info("Completed %d requests", ++request_count);
	is_https_running = false;
	return http_data;
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
	return json_start;
}


