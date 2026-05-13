#include <string.h>
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <strings.h>
#include <sys/select.h>

#include <FreeRTOS.h>
#include <task.h>
#include <timers.h>
#include <portmacro.h>

#include <blog.h>
#include <hosal_uart.h>
#include <bl_uart.h>

#include <wifi_mgmr_ext.h>
#include <lwip/netdb.h>
#include <lwip/ip4_addr.h>
#include <lwip/sockets.h>
#include <lwip/errno.h>

#include "wc_pt_ringbuff.h"
#include "web_config_app.h"

/*
 * 为什么是 UART1，而不是 UART0(GPIO3/4)？
 *
 * SDK 默认 blog/printf：`HOSAL_UART_DEV_DECL(uart_stdio, 0, 16, 7, ...)`，
 * `uart_id=0` 即 UART0 硬件，MUX 到 IO16(TX)/IO7(RX)。
 *
 * 若透传继续使用 `uart_id=0`，再次 `hosal_uart_init(..., tx=4, rx=3)` 会把**同一 UART0**
 * 的引脚重映射到 IO4/IO3，blog 仍会往 `uart_stdio` 那套寄存器灌数据，但实际引脚已不再
 * 是 16/7，所以会表现为「log 跑到了 IO4」——不是两个控制器混叠，而是**同一控制器被抢了 MUX**。
 *
 * 透传改用 UART1：`uart_id=1`，UART0(blog IO16/7)与 UART1(透传 IO4/IO3)完全独立。
 */
#define WC_PT_UART_ID      1
#define WC_PT_UART_TX_PIN  4
#define WC_PT_UART_RX_PIN  3
#define WC_PT_UART_BAUD    115200

/** TCP / UART→TCP 块缓冲；与 ring 4k 对齐，大块分片流式 send */
#define WC_PT_SOCK_BUF     4096

#define WC_PT_TASK_STACK   6144

#define WC_PT_CONNECT_MS   12000

/**
 * UART 静默 ≥ 该时间且无新字节进 ring → 本轮串口帧结束，排空 ring→TCP。
 * 实际粒度受 FreeRTOS tick 限制：pdMS_TO_TICKS 至少唤醒 1 个 tick。
 */
#define WC_PT_UART_IDLE_MS           3

/** ring 占用 ≥ 此时提前唤醒 TCP Drain，防止长期流占满 ring 却永不触发 idle */
#define WC_PT_RING_SOFT_WATERMARK    3200u

/** 无上行时才靠此超时醒一次处理 TCP下行 read */
#define WC_PT_SOCK_POLL_MS           20

/** 单次任务唤醒内 UART→TCP 最多推进的字节数，避免单次 drain 霸占过久 */
#define WC_PT_DRAIN_BUDGET 16384u

static TaskHandle_t s_wc_pt_task;
static TimerHandle_t s_pt_idle_tmr;
static void wc_pt_uart_idle_flush_cb(TimerHandle_t t);

/** lwIP lwip_connect() errno vs newlib — 同上 */
static int wc_sock_tcp_connect_errno_pending(int conerr)
{
    if (conerr == EAGAIN) {
        return 1;
    }
    if (conerr == 114 || conerr == 115) {
        return 1;
    }
    if (conerr == 119 || conerr == 120) {
        return 1;
    }
#if defined(EWOULDBLOCK) && EWOULDBLOCK != EAGAIN
    if (conerr == EWOULDBLOCK) {
        return 1;
    }
#endif
#ifdef EALREADY
    if (conerr == EALREADY || conerr == EINPROGRESS) {
        return 1;
    }
#endif
    return 0;
}

static hosal_uart_dev_t s_pt_uart;
static int s_pt_uart_inited;

static void wc_pt_normalize_host(const char *raw, char *host, size_t hostsz, int *inout_port)
{
    const char *p = raw;

    while (*p == ' ' || *p == '\t') {
        ++p;
    }
    strncpy(host, p, hostsz - 1);
    host[hostsz - 1] = '\0';

    for (size_t i = strlen(host); i > 0 && (host[i - 1] == ' ' || host[i - 1] == '\t');) {
        host[--i] = '\0';
    }

    if (strncasecmp(host, "http://", 7) == 0) {
        memmove(host, host + 7, strlen(host + 7) + 1);
    } else if (strncasecmp(host, "https://", 8) == 0) {
        memmove(host, host + 8, strlen(host + 8) + 1);
    }

    char *slash = strchr(host, '/');
    if (slash) {
        *slash = '\0';
    }

    char *colon = strrchr(host, ':');
    if (colon && colon > host) {
        char *end = NULL;
        long prt = strtol(colon + 1, &end, 10);
        if (end != colon + 1 && *end == '\0' && prt > 0 && prt <= 65535) {
            *colon = '\0';
            if (inout_port) {
                *inout_port = (int)prt;
            }
        }
    }
}

/**
 * RX：FIFO→ring；重置「空闲」单次定时器，静音 WC_PT_UART_IDLE_MS 后置位任务通知排空。
 * ring 逼近满或有丢字节时立即通知 Drain，防止永不出现 3ms 间隙的长期流饿死发送。
 */
static int wc_pt_uart_rx_cb(void *arg)
{
    hosal_uart_dev_t *u = (hosal_uart_dev_t *)arg;
    BaseType_t xhpw = pdFALSE;
    int ch;
    int pushed = 0;
    int dropped = 0;

    while ((ch = bl_uart_data_recv(u->port)) >= 0) {
        if (wc_pt_ring_push_byte_isr((uint8_t)ch) != 0) {
            dropped = 1;
            break;
        }
        pushed = 1;
    }

    if (pushed != 0 && s_pt_idle_tmr != NULL) {
        xTimerResetFromISR(s_pt_idle_tmr, &xhpw);
    }

    if ((dropped != 0
         || (pushed != 0 && wc_pt_ring_used_approx_isr() >= WC_PT_RING_SOFT_WATERMARK))
        && s_wc_pt_task != NULL) {
        vTaskNotifyGiveFromISR(s_wc_pt_task, &xhpw);
    }

    if (xhpw != pdFALSE) {
        portYIELD_FROM_ISR(xhpw);
    }
    return 0;
}

static int wc_pt_uart_setup(void)
{
    memset(&s_pt_uart, 0, sizeof(s_pt_uart));
    s_pt_uart.config.uart_id        = WC_PT_UART_ID;
    s_pt_uart.config.tx_pin         = WC_PT_UART_TX_PIN;
    s_pt_uart.config.rx_pin         = WC_PT_UART_RX_PIN;
    s_pt_uart.config.cts_pin        = 255;
    s_pt_uart.config.rts_pin        = 255;
    s_pt_uart.config.baud_rate      = WC_PT_UART_BAUD;
    s_pt_uart.config.data_width     = HOSAL_DATA_WIDTH_8BIT;
    s_pt_uart.config.parity       = HOSAL_NO_PARITY;
    s_pt_uart.config.stop_bits     = HOSAL_STOP_BITS_1;
    s_pt_uart.config.flow_control = HOSAL_FLOW_CONTROL_DISABLED;
    s_pt_uart.config.mode          = HOSAL_UART_MODE_INT;

    wc_pt_ring_init();

    if (hosal_uart_callback_set(&s_pt_uart, HOSAL_UART_RX_CALLBACK,
                                wc_pt_uart_rx_cb, &s_pt_uart) != 0) {
        blog_error("[pt] uart RX callback register failed");
        return -1;
    }

    if (hosal_uart_init(&s_pt_uart) != 0) {
        blog_error("[pt] uart%d init failed", WC_PT_UART_ID);
        return -1;
    }
    blog_info("[pt] uart%d INT %u baud tx=GPIO%u rx=GPIO%u (blog stays UART0 16/7)",
              WC_PT_UART_ID, WC_PT_UART_BAUD, (unsigned)WC_PT_UART_TX_PIN,
              (unsigned)WC_PT_UART_RX_PIN);
    return 0;
}

static int wc_pt_ensure_uart(void)
{
    if (s_pt_uart_inited) {
        return 0;
    }
    if (wc_pt_uart_setup() != 0) {
        return -1;
    }
    s_pt_uart_inited = 1;
    return 0;
}

static void wc_pt_uart_idle_flush_cb(TimerHandle_t t)
{
    (void)t;
    if (s_wc_pt_task != NULL) {
        xTaskNotifyGive(s_wc_pt_task);
    }
}

/** TCP 发送窗口可写时再试，避免 EAGAIN 时占满 CPU 空转 */
static void wc_pt_wait_tcp_writable(int sock, int timeout_ms)
{
    fd_set wfds;
    struct timeval tv;
    int ms = timeout_ms;

    if (ms < 0) {
        ms = 0;
    }
    if (ms > 200) {
        ms = 200;
    }
    FD_ZERO(&wfds);
    FD_SET(sock, &wfds);
    tv.tv_sec = ms / 1000;
    tv.tv_usec = (ms % 1000) * 1000;
    (void)select(sock + 1, NULL, &wfds, NULL, &tv);
}

static int wc_pt_send_tcp_nonblock(int sock, const uint8_t *buf, unsigned len,
                                   unsigned *sent_out)
{
    unsigned off = 0;

    if (sent_out) {
        *sent_out = 0;
    }
    while (off < len) {
        int w = send(sock, buf + off, len - off, MSG_DONTWAIT | MSG_NOSIGNAL);
        if (w > 0) {
            off += (unsigned)w;
            continue;
        }
        if (w < 0 && (errno == EAGAIN || errno == EINTR || errno == EWOULDBLOCK)) {
            wc_pt_wait_tcp_writable(sock, 100);
            taskYIELD();
            continue;
        }
        if (sent_out) {
            *sent_out = off;
        }
        return -1;
    }
    if (sent_out) {
        *sent_out = off;
    }
    return 0;
}

static int wc_pt_wait_tcp_connected(int sock, int timeout_ms)
{
    fd_set wfds;
    struct timeval tv;
    int sel;
    int soerr;
    socklen_t slen = sizeof(soerr);

    FD_ZERO(&wfds);
    FD_SET(sock, &wfds);
    tv.tv_sec = timeout_ms / 1000;
    tv.tv_usec = (timeout_ms % 1000) * 1000;

    sel = select(sock + 1, NULL, &wfds, NULL, &tv);
    if (sel == 0) {
        errno = ETIMEDOUT;
        return -1;
    }
    if (sel < 0) {
        return -1;
    }
    soerr = 0;
    if (getsockopt(sock, SOL_SOCKET, SO_ERROR, &soerr, &slen) < 0) {
        return -1;
    }
    if (soerr != 0) {
        errno = soerr;
        return -1;
    }
    return 0;
}

static int wc_pt_tcp_connect(const char *host, int port)
{
    ip4_addr_t ip4;
    struct sockaddr_in sin;
    int sock = -1;
    unsigned long nb = 1;
    int cr;

    memset(&sin, 0, sizeof(sin));
    sin.sin_family = AF_INET;
    sin.sin_port = htons((u16_t)port);

    if (ip4addr_aton(host, &ip4)) {
        sin.sin_addr.s_addr = ip4.addr;
        sock = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
        if (sock < 0) {
            blog_warn("[pt] socket() errno=%d", errno);
            return -1;
        }
        ioctl(sock, FIONBIO, &nb);
        cr = connect(sock, (struct sockaddr *)&sin, sizeof(sin));
        if (cr == 0) {
            return sock;
        }
        {
            const int cr_err = errno;
            if (!wc_sock_tcp_connect_errno_pending(cr_err) && cr_err != 0) {
                blog_warn("[pt] connect %s:%d errno=%d", host, port, cr_err);
                close(sock);
                return -1;
            }
        }
        if (wc_pt_wait_tcp_connected(sock, WC_PT_CONNECT_MS) != 0) {
            blog_warn("[pt] connect %s:%d timeout err errno=%d", host, port, errno);
            close(sock);
            return -1;
        }
        return sock;
    }

    {
        struct addrinfo hints, *res = NULL, *rp;
        char srv[16];
        int gai;

        snprintf(srv, sizeof(srv), "%d", port);
        memset(&hints, 0, sizeof(hints));
        hints.ai_socktype = SOCK_STREAM;
        hints.ai_family = AF_INET;

        gai = getaddrinfo(host, srv, &hints, &res);
        if (gai != 0 || !res) {
            blog_warn("[pt] getaddrinfo(\"%s\") -> %d (check DNS or use IPv4)", host, gai);
            return -1;
        }

        for (rp = res; rp != NULL; rp = rp->ai_next) {
            sock = socket(rp->ai_family, rp->ai_socktype, rp->ai_protocol);
            if (sock < 0) {
                continue;
            }
            ioctl(sock, FIONBIO, &nb);
            cr = connect(sock, rp->ai_addr, rp->ai_addrlen);
            if (cr == 0) {
                break;
            }
            {
                const int cr_err = errno;
                int okpending = wc_sock_tcp_connect_errno_pending(cr_err) || cr_err == 0;
                if (okpending && wc_pt_wait_tcp_connected(sock, WC_PT_CONNECT_MS) == 0) {
                    break;
                }
                blog_warn("[pt] connect %s:%d errno=%d", host, port, okpending ? errno : cr_err);
            }
            close(sock);
            sock = -1;
        }
        freeaddrinfo(res);
    }

    return sock >= 0 ? sock : -1;
}

/**
 * UART ring → TCP：多分块 peek 流式送入 TCP；TCP 一时不可写则用 select 缓等。
 *
 * @param hard_err       不可恢复 send 失败时写 1，否则写 0（忽略 NULL）
 * @param ring_cleared   ring 在无错误退出瞬间已排空时写 1（预算截断或错误时为 0；忽略 NULL）
 * @return 本次已 consume 并成功送入 TCP 的字节总数
 */
static unsigned wc_pt_uart_ring_drain_to_tcp(int sock, uint8_t *tmp, unsigned tmpsz,
                                             int *hard_err, int *ring_cleared)
{
    unsigned total = 0;

    if (hard_err) {
        *hard_err = 0;
    }
    if (ring_cleared) {
        *ring_cleared = 0;
    }

    for (;;) {
        unsigned n;
        unsigned chunk;
        unsigned sent;

        if (total >= WC_PT_DRAIN_BUDGET) {
            return total;
        }
        chunk = WC_PT_DRAIN_BUDGET - total;
        if (chunk > tmpsz) {
            chunk = tmpsz;
        }

        n = wc_pt_ring_peek_task(tmp, chunk);
        if (n == 0) {
            if (ring_cleared) {
                *ring_cleared = 1;
            }
            return total;
        }
        if (wc_pt_send_tcp_nonblock(sock, tmp, n, &sent) != 0) {
            wc_pt_ring_consume_task(sent);
            total += sent;
            blog_warn("[pt] TCP send error: committed %u/%u bytes, rest stays in ring", sent, n);
            if (hard_err) {
                *hard_err = 1;
            }
            return total;
        }
        wc_pt_ring_consume_task(n);
        total += n;
    }
}

static void wc_pt_uart_reply_sent_ok(void)
{
    static const char uart_sent_ok[] = "SENT OK\r\n";

    hosal_uart_send(&s_pt_uart, uart_sent_ok, (uint32_t)(sizeof(uart_sent_ok) - 1));
}

static void wc_pt_runner(void *param)
{
    uint8_t *bufsck;
    uint8_t *uptmp;
    int sock = -1;
    int n;
    unsigned wait_cfg_ticks;
    unsigned wait_ip_ticks;
    (void)param;

    s_wc_pt_task = xTaskGetCurrentTaskHandle();

    bufsck = pvPortMalloc(WC_PT_SOCK_BUF);
    uptmp = pvPortMalloc(WC_PT_SOCK_BUF);
    if (!bufsck || !uptmp) {
        blog_error("[pt] oom buffers");
        vPortFree(bufsck);
        vPortFree(uptmp);
        s_wc_pt_task = NULL;
        vTaskDelete(NULL);
        return;
    }

    wait_cfg_ticks = 0;
    wait_ip_ticks = 0;

    for (;;) {
        wc_saved_cfg_t cfg;

        wc_cfg_load(&cfg);
        if (!cfg.tcp_url[0] || cfg.tcp_port <= 0) {
            if ((wait_cfg_ticks++ % 10U) == 0U) {
                blog_info("[pt] waiting for TCP server URL/port (save via web)");
            }
            vTaskDelay(pdMS_TO_TICKS(3000));
            continue;
        }

        uint32_t sta_ip = 0;
        (void)wifi_sta_ip4_addr_get(&sta_ip, NULL, NULL, NULL);
        if (sta_ip == 0) {
            if ((wait_ip_ticks++ % 10U) == 0U) {
                blog_info("[pt] waiting for STA IPv4 before TCP");
            }
            vTaskDelay(pdMS_TO_TICKS(1500));
            continue;
        }

        wait_cfg_ticks = 0;
        wait_ip_ticks = 0;

        int use_port = cfg.tcp_port;
        char host[sizeof(cfg.tcp_url)];
        wc_pt_normalize_host(cfg.tcp_url, host, sizeof(host), &use_port);
        if (!host[0]) {
            blog_warn("[pt] empty host after normalize");
            vTaskDelay(pdMS_TO_TICKS(4000));
            continue;
        }
        if (use_port <= 0 || use_port > 65535) {
            blog_warn("[pt] invalid port %d", use_port);
            vTaskDelay(pdMS_TO_TICKS(4000));
            continue;
        }

        blog_info("[pt] TCP connect %s:%d (STA 0x%08lx)", host, use_port, (unsigned long)sta_ip);

        sock = wc_pt_tcp_connect(host, use_port);
        if (sock < 0) {
            blog_warn("[pt] connect failed, retry in 4s (errno=%d)", errno);
            vTaskDelay(pdMS_TO_TICKS(4000));
            continue;
        }

        /* TCP 为字节流，对端多次 recv / 单次长度可变是正常现象，应用层需自行组帧。
         * 此处关闭 Nagle，减轻小包延后合并；不能消除 MSS/窗口导致的分段。 */
        {
            const int one = 1;
            socklen_t sl = (socklen_t)sizeof(one);

            if (setsockopt(sock, IPPROTO_TCP, TCP_NODELAY, &one, sl) != 0) {
                blog_warn("[pt] setsockopt TCP_NODELAY failed errno=%d", errno);
            }
        }

        if (wc_pt_ensure_uart() != 0) {
            close(sock);
            sock = -1;
            vTaskDelay(pdMS_TO_TICKS(4000));
            continue;
        }

        wc_pt_ring_flush();

        if (s_pt_idle_tmr == NULL) {
            s_pt_idle_tmr = xTimerCreate("wcpt_idle", pdMS_TO_TICKS(WC_PT_UART_IDLE_MS), pdFALSE,
                                         NULL, wc_pt_uart_idle_flush_cb);
        }
        if (s_pt_idle_tmr != NULL) {
            (void)xTimerStop(s_pt_idle_tmr, pdMS_TO_TICKS(100));
        }

        {
            static const char uart_ready[] = "TCP CONNECT DONE\r\n";
            hosal_uart_send(&s_pt_uart, uart_ready, (uint32_t)(sizeof(uart_ready) - 1));
        }

        blog_info("[pt] UART idle %ums→TCP, soft wm %u, sock poll %ums; ring %u", WC_PT_UART_IDLE_MS,
                  (unsigned)WC_PT_RING_SOFT_WATERMARK, WC_PT_SOCK_POLL_MS, 4096u);

        while (sock >= 0) {
            unsigned u2t;
            int u2terr;
            int ring_cleared_after_u2t;

            (void)ulTaskNotifyTake(pdTRUE, pdMS_TO_TICKS(WC_PT_SOCK_POLL_MS));

            ring_cleared_after_u2t = 0;
            u2t = wc_pt_uart_ring_drain_to_tcp(sock, uptmp, WC_PT_SOCK_BUF, &u2terr,
                                               &ring_cleared_after_u2t);
            if (u2t != 0u && u2terr == 0 && ring_cleared_after_u2t) {
                wc_pt_uart_reply_sent_ok();
            }

            n = read(sock, bufsck, WC_PT_SOCK_BUF);
            if (n > 0) {
                hosal_uart_send(&s_pt_uart, bufsck, (uint32_t)n);
            } else if (n == 0) {
                break;
            } else if (n < 0 && !(errno == EAGAIN || errno == EINTR
#ifdef EWOULDBLOCK
                                  || errno == EWOULDBLOCK
#endif
                                  )) {
                break;
            }

            taskYIELD();
        }

        if (s_pt_idle_tmr != NULL) {
            (void)xTimerStop(s_pt_idle_tmr, pdMS_TO_TICKS(500));
        }

        close(sock);
        sock = -1;
        blog_info("[pt] disconnected, reopen in 3s");
        vTaskDelay(pdMS_TO_TICKS(3000));
    }

    vPortFree(bufsck);
    vPortFree(uptmp);
    s_wc_pt_task = NULL;
    vTaskDelete(NULL);
}

void wc_tcp_bridge_on_sta_got_ip(void)
{
    static int task_started;

    if (task_started) {
        return;
    }

    task_started = 1;
    blog_info("[pt] STA got IP, start TCP bridge task");
    xTaskCreate(wc_pt_runner, (char *)"wc_pt", WC_PT_TASK_STACK, NULL, 11, NULL);
}
