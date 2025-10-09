/**
 * @file user_cli.c
 * @author Seahi-Mo (seahi-mo@foxmail.com)
 * @brief
 * @version 0.1
 * @date 2025-10-05
 *
 * @copyright Ai-Thinker co.,ltd (c) 2025
 *
 */
#include "user_cli.h"
#include "stdio.h"
#include "stdlib.h"
#include "string.h"
#include "blog.h"
#include "easy_flash.h"
#include "device_state.h"
/**
 * @brief 判断字符串是否由字母或数字组成
 *
 * @param str
 * @return int 是返回：0 ，不是为-1；
 */
static int isAlphanumeric(const char *str)
{

	if (str == (const char *)0)
	{
		return -1;
	}

	while (*str != '\0')
	{
		char c = *str;

		if (c >= '0' && c <= '9')
		{
			str++;
			continue;
		}

		if (c >= 'A' && c <= 'Z')
		{
			str++;
			continue;
		}
		if (c >= 'a' && c <= 'z')
		{
			str++;
			continue;
		}
		return -1;
	}
	return 0;
}
static void cmd_cli(char *buf, int len, int argc, char **argv)
{
	printf("hello world\r\n");
}
static void user_clicmd_save_bilibili_uid(char *buf, int len, int argc, char **argv)
{
	if (argc != 2)
	{
		printf("ERROR: bilibili uid is null\r\n");
		return;
	}
	// 识别uid 是否只是字母+数字的组合
	if (isAlphanumeric(argv[1]) != 0)
	{
		printf("ERROR: bilibili uid is not only number and letter\r\n");
		return;
	}

	flash_save_bilibili_uid(argv[1]);
	printf("Save bilibili uid:%s\r\n", argv[1]);
	printf("OK \r\n");
}

static void user_clicmd_get_bilibili_uid(char *buf, int len, int argc, char **argv)
{
	if (argc != 1)
	{
		printf("ERROR: command is error,You should use:\"bilibili_uid?\"\r\n");
		return;
	}
	char *uid = pvPortMalloc(32);
	memset(uid, 0, 32);
	flash_get_bilibili_uid(uid);
	if (strlen(uid) != 0)
	{
		printf("bilibili uid:%s\r\n", uid);
	}
	else
	{
		printf("ERROR:bilibili uid is null,You have not saved any uid.\r\n");
		return;
	}
	printf("OK \r\n");
}

static void user_clicmd_delete_all_uid(char *buf, int len, int argc, char **argv)
{
	if (argc != 1)
	{
		printf("ERROR: command is error,You should use:\"bilibili_uid?\"\r\n");
		return;
	}
	ef_del_key(FLASH_BILIBILI_USER_ID);
	ef_del_key(FLASH_JLC_PUID);
	printf("OK \r\n");
}
static void user_clicmd_save_jlc_project_uid(char *buf, int len, int argc, char **argv)
{
	if (argc != 2)
	{
		printf("ERROR: bilibili uid is null\r\n");
		return;
	}
	// 识别uid 是否只是字母+数字的组合
	if (isAlphanumeric(argv[1]) != 0)
	{
		printf("ERROR: bilibili uid is not only number and letter\r\n");
		return;
	}

	flash_seve_jlc_puid(argv[1]);
	memset(project_uid, 0, 32);
	strcpy(project_uid, argv[1]);
	printf("Save jlc puid:%s\r\n", argv[1]);
	printf("OK \r\n");
}
static void user_clicmd_get_jlc_project_uid(char *buf, int len, int argc, char **argv)
{
	if (argc != 1)
	{
		printf("ERROR: command is error,You should use:\"bilibili_uid?\"\r\n");
		return;
	}
	char *uid = pvPortMalloc(32);
	memset(uid, 0, 32);
	flash_get_jlc_puid(uid);
	if (strlen(uid) != 0)
	{
		printf("jlc puid:%s\r\n", uid);
	}
	else
	{
		printf("ERROR:jlc puid is null,You have not saved any uid.\r\n");
		return;
	}
	printf("OK \r\n");
}

static void user_clicmd_set_blog(char *buf, int len, int argc, char **argv)
{
	if (argc != 2)
	{
		printf("ERROR: blog_enable 1:enable, 0:disable\r\n");
		return;
	}
	if (atoi(argv[1]) == 1)
	{
		blog_set_level_log_component(BLOG_LEVEL_ALL, "components");
		blog_set_level_log_component(BLOG_LEVEL_ALL, "HoloCore");
	}
	else if (atoi(argv[1]) == 0)
	{
		blog_set_level_log_component(BLOG_LEVEL_NEVER, "components");
		blog_set_level_log_component(BLOG_LEVEL_NEVER, "HoloCore");
	}
	flash_set_blog_enable(atoi(argv[1]));
	printf("OK \r\n");
}
static void user_clicmd_set_color_mode(char *buf, int len, int argc, char **argv)
{
	if (argc != 2)
	{
		printf("ERROR: color mode command is \"color_mode 0/1/2/3\"\r\n");
		return;
	}
	if (atoi(argv[1]) >= 0 && atoi(argv[1]) <= 3)
	{
		flash_save_color_mode(atoi(argv[1]));
		printf("OK \r\n");
	}
}

static void user_clicmd_display_msg(char *buf, int len, int argc, char **argv)
{
	if (argc != 2)
	{
		printf("ERROR: display_msg command is \"display_msg jlc/bilibili\"\r\n");
		return;
	}
	if (strcmp(argv[1], "jlc") == 0)
	{
		flash_save_dispaly_msg(0);
		display_msg = 0;
		printf("OK \r\n");
	}
	else if (strcmp(argv[1], "bilibili") == 0)
	{
		flash_save_dispaly_msg(1);
		display_msg = 1;
		printf("OK \r\n");
	}
	else
	{
		printf("ERROR: display_msg command is \"display_msg 0/1\"\r\n");
	}
}

const static struct cli_command cmds_user[] STATIC_CLI_CMD_ATTRIBUTE = {
	{"test", "test cli cmd \"hello world\"", cmd_cli},

	{"blog_enable", "Enable or disable blog, 1:enable, 0:disable", user_clicmd_set_blog},
	{"bilibili_uid", "Save bilibili uid", user_clicmd_save_bilibili_uid},
	{"bilibili_uid?", "Get bilibili uid", user_clicmd_get_bilibili_uid},
	{"jlc_puid", "Save jlc project uid", user_clicmd_save_jlc_project_uid},
	{"jlc_puid?", "Get jlc project uid", user_clicmd_get_jlc_project_uid},
	{"delete_all_uid", "Delete all uid an projectUID", user_clicmd_delete_all_uid},
	{"color_mode", "Set color mode:0 is  purple to blue, 1 is blue to green,2 is green to yellow,3 is purple to pink", user_clicmd_set_color_mode},
	{"display_msg", "Toggle the display of information, \"display_msg jlc\" is the number of JCL project views, \"display_msg bilibili\" is the number of fans of the B station.", user_clicmd_display_msg},
};

int user_cli_init(void)
{
	int blog_enable = flash_get_blog_enable();

	if (blog_enable == 1)
	{
		blog_set_level_log_component(BLOG_LEVEL_ALL, "components");
		blog_set_level_log_component(BLOG_LEVEL_ALL, "HoloCore");
	}
	else if (blog_enable == 0)
	{
		blog_set_level_log_component(BLOG_LEVEL_NEVER, "components");
		blog_set_level_log_component(BLOG_LEVEL_NEVER, "HoloCore");
	}
	return 0;
}