####
CONFIG_SYS_VFS_ENABLE:=1
CONFIG_SYS_VFS_UART_ENABLE:=1
CONFIG_SYS_AOS_CLI_ENABLE:=1
CONFIG_SYS_AOS_LOOP_ENABLE:=1
CONFIG_SYS_BLOG_ENABLE:=1
CONFIG_SYS_DMA_ENABLE:=1
CONFIG_SYS_USER_VFS_ROMFS_ENABLE:=0
CONFIG_SYS_APP_TASK_STACK_SIZE:=4096
CONFIG_SYS_APP_TASK_PRIORITY:=15

CONFIG_BL602_USE_ROM_DRIVER:=1
CONFIG_LINK_ROM=1
CONFIG_FREERTOS_TICKLESS_MODE:=0
CONFIG_WIFI:=0

LOG_ENABLED_COMPONENTS:= blog_testc hosal demo_sht3x