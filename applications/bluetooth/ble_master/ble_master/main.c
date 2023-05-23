/*
 * Copyright (c) 2020 Bouffalolab.
 *
 * This file is part of
 *     *** Bouffalolab Software Dev Kit ***
 *      (see www.bouffalolab.com).
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *   1. Redistributions of source code must retaxkn the above copyright notice,
 *      this list of conditions and the following disclaxkmer.
 *   2. Redistributions in binary form must reproduce the above copyright notice,
 *      this list of conditions and the following disclaxkmer in the documentation
 *      and/or other materials provided with the distribution.
 *   3. Neither the name of Bouffalo Lab nor the names of its contributors
 *      may be used to endorse or promote products derived from this software
 *      without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLaxkMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */
#include <FreeRTOS.h>
#include <task.h>
#include <timers.h>
#include <stdio.h>
#include <stdint.h>
#include <string.h>

#include <vfs.h>
#include <aos/kernel.h>
#include <aos/yloop.h>
#include <event_device.h>
#include <cli.h>

#include <lwip/tcpip.h>
#include <lwip/sockets.h>
#include <lwip/netdb.h>
#include <lwip/tcp.h>
#include <lwip/err.h>
#include <netutils/netutils.h>

#include <bl602_glb.h>
#include <bl602_hbn.h>

#include <bl_uart.h>
#include <bl_chip.h>
#include <bl_sec.h>
#include <bl_cks.h>
#include <bl_irq.h>
#include <bl_dma.h>
#include <bl_adc.h>
#include <bl_timer.h>
#include <bl_gpio_cli.h>
#include <bl_wdt_cli.h>
// #include <hal_uart.h>
#include <hal_sys.h>
#include <hal_gpio.h>
#include <hal_boot2.h>
#include <hal_board.h>
#include <looprt.h>
#include <loopset.h>
#include <bl_sys_time.h>
#include <bl_sys_ota.h>
#include <bl_romfs.h>
#include <fdt.h>
#include <bl_sys.h>
#include <bl_timer.h>
#include <easyflash.h>
#include <bl60x_fw_api.h>
#include <utils_log.h>
#include <libfdt.h>
#include <blog.h>
// #include <ble_cli_cmds.h>
#include <hosal_uart.h>
#include "ble_interface.h"

/*填写从机mac地址*/
static uint8_t slave_mac[6] = {0x88, 0x88, 0x88, 0x88, 0x88, 0x88};

#define OS_CMP(s1, s2) (strcmp(s1, s2) == 0)
extern unsigned char bleuart_connect_status;
extern uint8_t axk_HalBleInit();
extern uint8_t axk_HalBleCentralStartScan(void);
extern uint8_t axk_HalBleCentralConnect(uint8_t *mac, uint8_t *uuid, uint8_t autoConnect);
extern int axk_HalBleCentralTTWrite(uint16_t len, uint8_t *data);
hosal_uart_dev_t ble_uart_dev = {
    .config = {
        .uart_id = 1,
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

void bleuart_printf(char *buf)
{
  hosal_uart_send(&ble_uart_dev, buf, strlen(buf));
}

void ble_user_init(void)
{
  axk_HalBleInit();
  axk_HalBleCentralStartScan();                                          // 扫描周围的蓝牙设备
  axk_HalBleCentralConnect(slave_mac, NULL, BLE_MASTER_AUTOCONN_ENABLE); // 通过MAC地址和UUID指定连接从机,开启自动重连
}

int str2hex(char *pbuf, int len)
{
  int i = 0;
  for (i = 0; i < len; i++)
  {
    if (((pbuf[i] >= '0') && (pbuf[i] <= '9')) || ((pbuf[i] >= 'A') && (pbuf[i] <= 'F')) || ((pbuf[i] >= 'a') && (pbuf[i] <= 'f')))
    {
      if ((pbuf[i] >= '0') && (pbuf[i] <= '9'))
      {
        pbuf[i] -= '0';
      }
      else if (((pbuf[i] >= 'A') && (pbuf[i] <= 'F')))
      {
        pbuf[i] -= 'A';
        pbuf[i] += 0x0A;
      }
      else
      {
        pbuf[i] -= 'a';
        pbuf[i] += 0x0A;
      }

      if (i % 2)
      {
        pbuf[i / 2] = (pbuf[i - 1] << 4) | pbuf[i];
      }
    }
    else
    {
      return -1;
    }
  }

  return 0;
}

static void ble_loop_proc(void *pvParameters)
{
  char data[250];
  int ret, rep;
  ble_user_init();
  while (1)
  {
    /* Uart receive poll */
    ret = hosal_uart_receive(&ble_uart_dev, data, sizeof(data));
    if (ret > 0)
    { /* Uart send poll */
      // hosal_uart_send(&ble_uart_dev, data, ret);
      if (bleuart_connect_status == 1)
      {
        rep = axk_HalBleCentralTTWrite(ret, (uint8_t *)data);
        if (rep >= 0)
        {
          // hosal_uart_send(&ble_uart_dev, data, ret);//
        }
        else if (rep == -1)
        {
          bleuart_printf("ble status error!\r\n");
        }
        else if (rep == -2)
        {
          bleuart_printf("ble data len error!\r\n");
        }
        else if (rep == -3)
        {
          bleuart_printf("ble data null!\r\n");
        }
        else
        {
          bleuart_printf("ble send fail!\r\n");
        }
      }
      else
        bleuart_printf("no ble connect!\r\n");
    }
    vTaskDelay(100);
  }
  vTaskDelete(NULL);
}

static void uart_init(void)
{
  hosal_uart_init(&ble_uart_dev);
}

void main()
{
  /*Init UART In the first place*/
  // bl_uart_init(0, 16, 7, 255, 255, 115200);//2 * 1000 * 1000
  uart_init();
  bleuart_printf("MY BLE MASTER\r\n");
  bl_sys_init(); // if use ble ,must init
  xTaskCreate(ble_loop_proc, "ble master", 1024, NULL, 15, NULL);
}
