# Uart Example

## Example Output

Starts a FreeRTOS task to run UART Example . Ple connect  communication uart tx pin GPIO16 and rx pin GPIO7 , the  log uart rx pin is GPIO3 and the tx pin is GPIO4.

Ai-WB2  WiFi&BLE  Module  has  2  group UART（UART0 and UART1）, the init code as :

 hosal_uart_dev_t uart_dev_echo = {
        .config = {
            .uart_id = 0,
            .tx_pin = 4, // TXD GPIO
            .rx_pin = 3, // RXD GPIO
            .cts_pin = 255,
            .rts_pin = 255,
            .baud_rate = 9600,
            .data_width = HOSAL_DATA_WIDTH_8BIT,
            .parity = HOSAL_NO_PARITY,
            .stop_bits = HOSAL_STOP_BITS_1,
            .mode = HOSAL_UART_MODE_POLL,
        },
    };

    hosal_uart_dev_t uart_dev_log = {
        .config = {
            .uart_id = 10,
            .tx_pin = 16, // TXD GPIO
            .rx_pin = 7,  // RXD GPIO
            .cts_pin = 255,
            .rts_pin = 255,
            .baud_rate = 115200,
            .data_width = HOSAL_DATA_WIDTH_8BIT,
            .parity = HOSAL_NO_PARITY,
            .stop_bits = HOSAL_STOP_BITS_1,
            .mode = HOSAL_UART_MODE_POLL,
        },
    };

    /* Uart init device */
    hosal_uart_init(&uart_dev_log);
    /* Uart init device */
    hosal_uart_init(&uart_dev_echo);


## Remember

- the blog_info(); funtion log output always by the uart0 .
- if you want to set no log output after reboot , Ple set project_config.mk CONFIG_SYS_REBOOT_LOG_DISENABLE:=1

## Troubleshooting

For any technical queries, please open an [issue](https://github.com/Ai-Thinker-Open/Ai-Thinker-WB2/issues) on GitHub. We will get back to you soon.
