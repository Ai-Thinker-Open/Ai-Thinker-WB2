# Uart Example

## Example Output

Starts a FreeRTOS task to run UART Example . Ple connect  communication uart tx pin GPIO16 and rx pin GPIO7 , the  log uart rx pin is GPIO3 and the tx pin is GPIO4.

Ai-WB2  WiFi&BLE  Module  has  2  group UART（UART0 and UART1）.

## Remember

- the blog_info(); funtion log output always by the uart0 .
- if you want to set no log output after reboot , Ple set project_config.mk CONFIG_SYS_REBOOT_LOG_DISENABLE:=1

## Troubleshooting

For any technical queries, please open an [issue](https://github.com/Ai-Thinker-Open/Ai-Thinker-WB2/issues) on GitHub. We will get back to you soon.
