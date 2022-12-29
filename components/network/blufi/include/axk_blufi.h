#ifndef __AT_BLUFI_H__
#define __AT_BLUFI_H__
#include "stdint.h"



/* Initialise blufi profile */
uint8_t axk_blufi_init(void);

/* start advertising */
void bleprph_advertise(void);

/* send notifications */
void axk_blufi_send_notify(void* arg);

/* Deinitialise blufi */
void axk_blufi_deinit(void);
/* disconnect */
void axk_blufi_disconnect(void);

/* Stop advertisement */
void axk_blufi_adv_stop(void);

/* Start advertisement */
void axk_blufi_adv_start(void);

void axk_blufi_send_encap(void* arg);

void set_blufi_name(char* node_mane);
#endif