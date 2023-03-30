/**
  ******************************************************************************
  * @file    at_port.c
  * @version V1.0
  * @date
  * @brief   This file is part of AT command framework
  ******************************************************************************
  */

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <vfs.h>
#include <device/vfs_uart.h>
#include <aos/kernel.h>
#include <hosal_uart.h>

#define AT_PORT_DEVICE "/dev/ttyS1"
#define AT_PORT_PRINTF printf

static int at_serial_fd = -1;
static int at_serial_baudrate = 115200;
static uint8_t at_serial_databits = 8;
static uint8_t at_serial_stopbits = 1;
static uint8_t at_serial_parity = 0;
static uint8_t at_serial_flow_control = 0;

int at_port_init(void)
{
    int fd = -1;

    fd = aos_open(AT_PORT_DEVICE, 0);
    if (fd >= 0) {
        at_serial_fd = fd;
        return 0;
    }

    return -1;
}

int at_port_deinit(void)
{
    if (at_serial_fd < 0) {
        AT_PORT_PRINTF("uart is not open!\r\n");
        return -1;
    }

    aos_close(at_serial_fd);
    at_serial_fd = -1;
    return 0;
}

int at_port_read_data(uint8_t*data, int len)
{
    int ret = 0;
    int nBytes = 0;
    long long nTime = 0;

    if (at_serial_fd < 0) {
        AT_PORT_PRINTF("uart is not open!\r\n");
        return -1;
    }

    aos_ioctl(at_serial_fd, IOCTL_UART_IOC_READ_BLOCK, 1000);
    nBytes = aos_read(at_serial_fd, data, 1);
    if (nBytes <= 0)
        return 0;
    aos_ioctl(at_serial_fd, IOCTL_UART_IOC_READ_NOBLOCK, 0);

    nTime = aos_now_ms();
    while(nBytes < len && aos_now_ms()-nTime < 50) {
        ret = aos_read(at_serial_fd, data+nBytes, len-nBytes);
        if (ret > 0) {
            nTime = aos_now_ms();
            nBytes += ret;
        }
    }

    return nBytes;
}

int at_port_write_data(uint8_t *data, int len)
{
    if (at_serial_fd < 0) {
        AT_PORT_PRINTF("uart is not open!\r\n");
        return -1;
    }

    return aos_write(at_serial_fd, data, len);
}

int at_port_para_set(int baudrate, uint8_t databits, uint8_t stopbits, uint8_t parity, uint8_t flow_control)
{
    uint32_t uart_baudrate;
    hosal_uart_data_width_t uart_databits;
    hosal_uart_stop_bits_t uart_stopbits;
    hosal_uart_parity_t uart_parity;
    hosal_uart_flow_control_t uart_flow_control;

    if (at_serial_fd < 0) {
        AT_PORT_PRINTF("uart is not open!\r\n");
        return -1;
    }

    uart_baudrate = (uint32_t)baudrate;
    if (databits == 5)
        uart_databits = HOSAL_DATA_WIDTH_5BIT;
    else if (databits == 6)
        uart_databits = HOSAL_DATA_WIDTH_6BIT;
    else if (databits == 7)
        uart_databits = HOSAL_DATA_WIDTH_7BIT;
    else if (databits == 8)
        uart_databits = HOSAL_DATA_WIDTH_8BIT;
    else
        return -1;
    if (stopbits == 1)
        uart_stopbits = HOSAL_STOP_BITS_1;
    else if (stopbits == 2)
        uart_stopbits = HOSAL_STOP_BITS_1_5;
    else  if (stopbits == 3)
        uart_stopbits = HOSAL_STOP_BITS_2;
    else
        return -1;
    if (parity == 0)
        uart_parity = HOSAL_NO_PARITY;
    else if (parity == 1)
        uart_parity = HOSAL_ODD_PARITY;
    else  if (parity == 2)
        uart_parity = HOSAL_EVEN_PARITY;
    else
        return -1;
    if (flow_control == 0)
        uart_flow_control = HOSAL_FLOW_CONTROL_DISABLED;
    else if (flow_control == 1)
        uart_flow_control = HOSAL_FLOW_CONTROL_RTS;
    else  if (flow_control == 2)
        uart_flow_control = HOSAL_FLOW_CONTROL_CTS;
    else  if (flow_control == 3)
        uart_flow_control = HOSAL_FLOW_CONTROL_CTS_RTS;
    else
        return -1;
    
    if (aos_ioctl(at_serial_fd, IOCTL_UART_IOC_BAUD_MODE, uart_baudrate) != 0) {
        AT_PORT_PRINTF("uart set baudrate failed!\r\n");
        return -1;
    }
    if (aos_ioctl(at_serial_fd, IOCTL_UART_IOC_DATABITS_SET, uart_databits) != 0) {
        AT_PORT_PRINTF("uart set databits failed!\r\n");
        return -1;
    }
    if (aos_ioctl(at_serial_fd, IOCTL_UART_IOC_STOPBITS_SET, uart_stopbits) != 0) {
        AT_PORT_PRINTF("uart set stopbits failed!\r\n");
        return -1;
    }
    if (aos_ioctl(at_serial_fd, IOCTL_UART_IOC_PARITY_SET, uart_parity) != 0) {
        AT_PORT_PRINTF("uart set parity failed!\r\n");
        return -1;
    }
    if (aos_ioctl(at_serial_fd, IOCTL_UART_IOC_HWFC_SET, uart_flow_control) != 0) {
        AT_PORT_PRINTF("uart set flow_control failed!\r\n");
        return -1;
    }

    at_serial_baudrate = baudrate;
    at_serial_databits = databits;
    at_serial_stopbits = stopbits;
    at_serial_parity = parity;
    at_serial_flow_control = flow_control;
    return 0;
}

int at_port_para_get(int *baudrate, uint8_t *databits, uint8_t *stopbits, uint8_t *parity, uint8_t *flow_control)
{
    if (at_serial_fd < 0) {
        AT_PORT_PRINTF("uart is not open!\r\n");
        return -1;
    }

    *baudrate = at_serial_baudrate;
    *databits = at_serial_databits;
    *stopbits = at_serial_stopbits;
    *parity = at_serial_parity;
    *flow_control = at_serial_flow_control;

    return 0;
}

