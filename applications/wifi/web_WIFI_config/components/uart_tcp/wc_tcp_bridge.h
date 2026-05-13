#pragma once

/** Call from Wi-Fi GOT_IP handler when STA has DHCP; starts bridge task once if TCP config valid. */
void wc_tcp_bridge_on_sta_got_ip(void);
