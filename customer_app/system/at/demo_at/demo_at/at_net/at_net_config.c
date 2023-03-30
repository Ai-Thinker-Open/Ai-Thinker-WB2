/**
  ******************************************************************************
  * @file    at_net_config.c
  * @version V1.0
  * @date
  * @brief   This file is part of AT command framework
  ******************************************************************************
  */

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <FreeRTOS.h>
#ifdef EASYFLASH_ENABLE
#include <easyflash.h>
#endif
#include "at_config.h"
#include "at_net_main.h"
#include "at_net_config.h"

net_config *at_net_config = NULL;

int at_net_config_init(void)
{
    int i;

    at_net_config = (net_config *)pvPortMalloc(sizeof(net_config));
    if (at_net_config == NULL) {
        return -1;
    }

    memset(at_net_config, 0, sizeof(net_config));
    at_net_config->mux_mode = NET_LINK_SINGLE;
    at_net_config->work_mode = NET_MODE_NORMAL;
    if (!at_config_read(AT_CONFIG_KEY_NET_TCP_OPT, &at_net_config->tcp_opt, sizeof(at_net_config->tcp_opt))) {
        for (i = 0; i < sizeof(at_net_config->tcp_opt)/sizeof(net_tcp_opt); i++) {
            at_net_config->tcp_opt[i].so_linger = -1;
            at_net_config->tcp_opt[i].tcp_nodelay = 0;
            at_net_config->tcp_opt[i].so_sndtimeo = 0;
        }
    }
    at_net_config->server_maxconn = AT_NET_CLIENT_HANDLE_MAX;
    at_net_config->server_timeout = 0;
    memset(&at_net_config->sntp_cfg, 0, sizeof(net_sntp_cfg));
    at_net_config->sntp_intv.interval = 300;
    at_net_config->ipd_info = NET_IPDINFO_DISABLE_IPPORT;
    if (!at_config_read(AT_CONFIG_KEY_NET_RECONN_INTV, &at_net_config->reconn_intv, sizeof(at_net_config->reconn_intv)))
        at_net_config->reconn_intv = 1;
    at_net_config->recv_mode = NET_RECV_MODE_ACTIVE;
    if (!at_config_read(AT_CONFIG_KEY_NET_TRANS_LINK, &at_net_config->trans_link, sizeof(at_net_config->trans_link))) {
        at_net_config->trans_link.enable = 0;
    }
    at_net_config->sendl_cfg.report_size = 1024;
    at_net_config->sendl_cfg.transmit_size = 2920;

    return 0;
}

int at_net_config_save(const char *key)
{
    if (strcmp(key, AT_CONFIG_KEY_NET_TCP_OPT) == 0)
        return at_config_write(key, &at_net_config->tcp_opt, sizeof(at_net_config->tcp_opt));
    else if (strcmp(key, AT_CONFIG_KEY_NET_RECONN_INTV) == 0)
        return at_config_write(key, &at_net_config->reconn_intv, sizeof(at_net_config->reconn_intv));
    else if (strcmp(key, AT_CONFIG_KEY_NET_TRANS_LINK) == 0)
        return at_config_write(key, &at_net_config->trans_link, sizeof(at_net_config->trans_link));
    else
        return -1;
}

int at_net_config_default(void)
{
    ef_del_env(AT_CONFIG_KEY_NET_TCP_OPT);
    ef_del_env(AT_CONFIG_KEY_NET_RECONN_INTV);
    ef_del_env(AT_CONFIG_KEY_NET_TRANS_LINK);
    return 0;
}

