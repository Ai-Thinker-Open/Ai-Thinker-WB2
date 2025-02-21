#include <FreeRTOS.h>
#include <blog.h>
#include <hosal_rng.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <task.h>

#define TAG "RNG"

#define BUFSIZE 40

void get_rng(void) {
  int status;
  int buf[BUFSIZE];

  status = hosal_random_num_read(&buf, BUFSIZE);
  if (!status) {
    for (int index = 0; index < BUFSIZE / 4; index++) {
      printf("range[%d]:%d\r\n", index, buf[index]);
    }
  }
}

int hosal_ranodm_num_get(int range_min, int range_max) { // 获取指定范围的随机数
  int status;
  int buf;
  status = hosal_random_num_read(&buf, 4);
  if (!status) {
    buf = (buf % (range_max - range_min + 1) + range_min);
    if (buf < range_min) {
      return abs(buf);
    }
    return buf;
  }
  return -1;
}

void main(void) {

  int err;
  err = hosal_rng_init();
  if (err) {
    printf("[RNG]:init error\r\n");
    return;
  }
  get_rng();
  int random;
  while (1) {
    random = hosal_ranodm_num_get(0, 100);
    printf("random = %d\r\n", random);
    vTaskDelay(portTICK_RATE_MS * 5000);
  }
}
