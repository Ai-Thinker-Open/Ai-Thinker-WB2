#ifndef __SMARTCONFIG_H__
#define __SMARTCONFIG_H__

#include <stdint.h>

/*
 * ┌───────────────────────────┐
 * │    Frame Control Field    │  ── 2 Bytes
 * ├───────────────────────────┤
 * │          Duration         │  ── 2 Bytes
 * ├───────────────────────────┤
 * │          Address 1        │  ── 6 Bytes
 * ├───────────────────────────┤
 * │          Address 2        │  ── 6 Bytes
 * ├───────────────────────────┤
 * │          Address 3        │  ── 6 Bytes
 * ├───────────────────────────┤
 * │      Sequence Control     │  ── 2 Bytes
 * └───────────────────────────┘
 */
struct libwifi_frame_ctrl_flags {
    unsigned int to_ds : 1;
    unsigned int from_ds : 1;
    unsigned int more_frags : 1;
    unsigned int retry : 1;
    unsigned int power_mgmt : 1;
    unsigned int more_data : 1;
    unsigned int protect : 1;
    unsigned int ordered : 1;
} __attribute__((packed));
struct libwifi_frame_ctrl {
    unsigned int version : 2;
    unsigned int type : 2;
    unsigned int subtype : 4;
    struct libwifi_frame_ctrl_flags flags;
} __attribute__((packed));
struct libwifi_seq_control {
    unsigned int fragment_number : 4;
    unsigned int sequence_number : 12;
} __attribute__((packed));
struct libwifi_frame {
    struct libwifi_frame_ctrl frame_control;
    uint16_t duration;
    uint8_t addr1[6];
    uint8_t addr2[6];
    uint8_t addr3[6];
    struct libwifi_seq_control seq_control;
} __attribute__((packed));

int wifi_smartconfig_v1_start(void);
int wifi_smartconfig_v1_stop(void);

#endif
