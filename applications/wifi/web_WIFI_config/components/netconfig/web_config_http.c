#include <FreeRTOS.h>
#include <task.h>
#include <stdio.h>
#include <string.h>
#include <strings.h>
#include <stdlib.h>

#include "lwip/err.h"
#include "lwip/api.h"
#include <blog.h>
#include "cJSON.h"

#include <vfs.h>

#include "web_config_app.h"

#define WC_HTTP_PORT 80
#define REQ_BUF_SZ   8192
#define WC_HTML_ROMFS "/romfs/Web_Config.html"
#define WC_HTTP_RECV_TIMEOUT_MS 15000

static const char hdr_badreq[] =
    "HTTP/1.1 400 Bad Request\r\n"
    "Content-Type: application/json; charset=utf-8\r\n"
    "Connection: close\r\n"
    "\r\n"
    "{\"error\":\"bad request\"}";

static int path_is_captive_probe(const char *path)
{
    if (!path || path[0] != '/') {
        return 0;
    }
    if (!strcmp(path, "/")) {
        return 1;
    }
    if (!strcasecmp(path, "/Web_Config.html")) {
        return 1;
    }
    if (!strcmp(path, "/hotspot-detect.html")) {
        return 1;
    }
    if (!strcmp(path, "/generate_204")) {
        return 1;
    }
    if (!strcmp(path, "/connecttest.txt")) {
        return 1;
    }
    if (!strcmp(path, "/redirect")) {
        return 1;
    }
    if (!strcmp(path, "/success.txt")) {
        return 1;
    }
    if (!strcmp(path, "/ncsi.txt")) {
        return 1;
    }
    if (!strcmp(path, "/library/test/success.html")) {
        return 1;
    }
    return 0;
}

static const char hdr_json[] =
    "HTTP/1.1 200 OK\r\n"
    "Content-Type: application/json; charset=utf-8\r\n"
    "Connection: close\r\n"
    "\r\n";

static const char hdr_html[] =
    "HTTP/1.1 200 OK\r\n"
    "Content-Type: text/html; charset=utf-8\r\n"
    "Connection: close\r\n"
    "\r\n";

static const char hdr_404[] =
    "HTTP/1.1 404 Not Found\r\n"
    "Content-Type: text/plain\r\n"
    "Connection: close\r\n"
    "\r\n";

static void wc_strip_query(char *path)
{
    char *q = strchr(path, '?');
    if (q) {
        *q = '\0';
    }
}

/* origin-form: /saveInfo  absolute-form: http://host/saveInfo — match path suffix */
static void wc_normalize_request_path(char *path)
{
    char *slash;

    if (!path || path[0] == '/') {
        return;
    }
    if (strncasecmp(path, "http://", 7) == 0) {
        slash = strchr(path + 7, '/');
        if (!slash || slash[1] == '\0') {
            path[0] = '/';
            path[1] = '\0';
            return;
        }
        memmove(path, slash, strlen(slash) + 1);
        return;
    }
    if (strncasecmp(path, "https://", 8) == 0) {
        slash = strchr(path + 8, '/');
        if (slash && slash[1]) {
            memmove(path, slash, strlen(slash) + 1);
            return;
        }
    }
}

static int read_content_length(const char *hdr)
{
    char *hend = strstr(hdr, "\r\n\r\n");
    const char *hdr_lim = hend ? hend : hdr + strlen(hdr);
    const char *line = hdr;

    while (line < hdr_lim) {
        const char *eol = strstr(line, "\r\n");
        const char *line_end = (eol && eol < hdr_lim) ? eol : hdr_lim;
        size_t linelen = (size_t)(line_end - line);

        if (linelen >= 15 && strncasecmp(line, "content-length:", 15) == 0) {
            const char *p = line + 15;
            while (p < line_end && (*p == ' ' || *p == '\t')) {
                p++;
            }
            return atoi(p);
        }
        if (!eol || eol >= hdr_lim) {
            break;
        }
        line = eol + 2;
    }
    return -1;
}

/* Accumulate one HTTP request into buf; returns body offset or -1 */
static int recv_http_request(struct netconn *conn, char *buf, size_t buf_sz, size_t *out_total)
{
    struct netbuf *inbuf = NULL;
    size_t total = 0;
    err_t err;

    *out_total = 0;
    for (;;) {
        err = netconn_recv(conn, &inbuf);
        if (err != ERR_OK || inbuf == NULL) {
            return -1;
        }
        char *data;
        u16_t len;
        netbuf_data(inbuf, (void **)&data, &len);
        if (total + len >= buf_sz - 1) {
            netbuf_delete(inbuf);
            return -1;
        }
        memcpy(buf + total, data, len);
        total += len;
        buf[total] = '\0';
        netbuf_delete(inbuf);
        inbuf = NULL;

        char *hend = strstr(buf, "\r\n\r\n");
        if (!hend) {
            continue;
        }
        if (strncasecmp(buf, "POST ", 5) == 0) {
            int cl = read_content_length(buf);
            size_t hlen = (size_t)(hend + 4 - buf);
            if (cl < 0 || (size_t)cl + hlen > buf_sz - 1) {
                return -1;
            }
            if (total < hlen + (size_t)cl) {
                continue;
            }
        }
        *out_total = total;
        return (int)(hend + 4 - buf);
    }
}

static void send_raw(struct netconn *conn, const void *data, size_t len)
{
    netconn_write(conn, data, len, NETCONN_COPY);
}

static void reply_json(struct netconn *conn, cJSON *root)
{
    char *printed = cJSON_PrintUnformatted(root);
    cJSON_Delete(root);
    if (!printed) {
        send_raw(conn, hdr_404, sizeof(hdr_404) - 1);
        return;
    }
    send_raw(conn, hdr_json, sizeof(hdr_json) - 1);
    send_raw(conn, printed, strlen(printed));
    free(printed);
}

static void handle_get_network_info(struct netconn *conn)
{
    wc_saved_cfg_t cfg;
    wc_cfg_load(&cfg);

    cJSON *root = cJSON_CreateObject();
    cJSON *nwk = cJSON_CreateObject();
    cJSON_AddStringToObject(nwk, "Network", cfg.net_ssid);
    cJSON_AddStringToObject(nwk, "Password", cfg.net_pass);
    cJSON_AddItemToObject(root, "NEWORK", nwk);

    cJSON *plat = cJSON_CreateObject();
    cJSON *tcp = cJSON_CreateObject();
    cJSON_AddStringToObject(tcp, "URL", cfg.tcp_url);
    cJSON_AddNumberToObject(tcp, "port", cfg.tcp_port);
    cJSON_AddItemToObject(plat, "TCPParam", tcp);
    cJSON_AddItemToObject(root, "PLATFORM", plat);

    reply_json(conn, root);
}

static void handle_get_network_list(struct netconn *conn)
{
    cJSON *root = cJSON_CreateObject();
    cJSON *arr = cJSON_CreateArray();
    int i;

    for (i = 0; i < g_scan_ctx.count; i++) {
        cJSON_AddItemToArray(arr, cJSON_CreateString(g_scan_ctx.ssids[i]));
    }
    cJSON_AddNumberToObject(root, "code", 1);
    cJSON_AddItemToObject(root, "data", arr);
    reply_json(conn, root);
}

static void handle_save(struct netconn *conn, const char *body)
{
    cJSON *root = cJSON_Parse(body);
    if (!root) {
        cJSON *err = cJSON_CreateObject();
        cJSON_AddStringToObject(err, "error", "bad json");
        reply_json(conn, err);
        return;
    }

    cJSON *nwk = cJSON_GetObjectItem(root, "NEWORK");
    if (!nwk) {
        nwk = cJSON_GetObjectItem(root, "NETWORK");
    }
    const char *ssid = "";
    const char *pass = "";
    if (nwk) {
        cJSON *jnet = cJSON_GetObjectItem(nwk, "Network");
        cJSON *jpw = cJSON_GetObjectItem(nwk, "Password");
        if (jnet && (jnet->type & 0xFF) == cJSON_String && jnet->valuestring) {
            ssid = jnet->valuestring;
        }
        if (jpw && (jpw->type & 0xFF) == cJSON_String && jpw->valuestring) {
            pass = jpw->valuestring;
        }
    }

    wc_saved_cfg_t cfg;
    wc_cfg_load(&cfg);

    cJSON *plat = cJSON_GetObjectItem(root, "PLATFORM");
    if (plat) {
        cJSON *tcp = cJSON_GetObjectItem(plat, "TCPParam");
        if (tcp) {
            cJSON *url = cJSON_GetObjectItem(tcp, "URL");
            cJSON *port = cJSON_GetObjectItem(tcp, "port");
            if (url && (url->type & 0xFF) == cJSON_String && url->valuestring) {
                strncpy(cfg.tcp_url, url->valuestring, sizeof(cfg.tcp_url) - 1);
            }
            if (port && (port->type & 0xFF) == cJSON_Number) {
                cfg.tcp_port = port->valueint;
            }
        }
    }

    cJSON_Delete(root);

    blog_info("[wc] saveInfo SSID=\"%.*s\"", 32, ssid);

    web_config_save_tcp_only(&cfg);
    web_config_apply_sta_from_json(ssid[0] ? ssid : NULL, pass[0] ? pass : NULL);

    cJSON *ok = cJSON_CreateObject();
    cJSON_AddStringToObject(ok, "status", "ok");
    reply_json(conn, ok);
}

static void send_html_from_romfs(struct netconn *conn)
{
    char buf[512];
    ssize_t n;
    int fd;

    fd = aos_open(WC_HTML_ROMFS, 0);
    if (fd < 0) {
        blog_error("[wc] aos_open %s failed %d", WC_HTML_ROMFS, fd);
        send_raw(conn, hdr_404, sizeof(hdr_404) - 1);
        return;
    }

    send_raw(conn, hdr_html, sizeof(hdr_html) - 1);
    while ((n = aos_read(fd, buf, sizeof(buf))) > 0) {
        send_raw(conn, buf, (size_t)n);
    }
    aos_close(fd);
}

static void wc_log_first_line(const char *req)
{
    char line[120];
    size_t i = 0;
    const char *p;

    for (p = req; *p && *p != '\r' && *p != '\n' && i < sizeof(line) - 1; ++p, ++i) {
        line[i] = *p;
    }
    line[i] = '\0';
    blog_info("[wc] HTTP %s", line);
}

static void handle_client(struct netconn *conn)
{
    char buf[REQ_BUF_SZ];
    size_t total = 0;
    int body_off = recv_http_request(conn, buf, sizeof(buf), &total);

    if (body_off < 0 || total == 0) {
        if (total > 0 && (strncasecmp(buf, "POST ", 5) == 0 || strncasecmp(buf, "post ", 5) == 0)) {
            send_raw(conn, hdr_badreq, sizeof(hdr_badreq) - 1);
            blog_error("[wc] POST parse failed (len=%u)", (unsigned)total);
        }
        netconn_close(conn);
        return;
    }

    char *req = buf;
    char method[8] = { 0 };
    char path[256] = { 0 };

    if (sscanf(req, "%7s %255s", method, path) < 2) {
        send_raw(conn, hdr_404, sizeof(hdr_404) - 1);
        netconn_close(conn);
        return;
    }

    wc_normalize_request_path(path);
    wc_strip_query(path);
    wc_log_first_line(req);

    if (strcasecmp(method, "GET") == 0) {
        if (strcmp(path, "/getNetWorkInfo") == 0) {
            handle_get_network_info(conn);
        } else if (strcmp(path, "/scan") == 0) {
            wc_scan_result_refresh();
            cJSON *o = cJSON_CreateObject();
            cJSON_AddStringToObject(o, "status", "scanning");
            reply_json(conn, o);
        } else if (strcmp(path, "/getNetWork") == 0) {
            handle_get_network_list(conn);
        } else if (path_is_captive_probe(path)) {
            send_html_from_romfs(conn);
        } else {
            send_raw(conn, hdr_404, sizeof(hdr_404) - 1);
        }
    } else if (strcasecmp(method, "POST") == 0) {
        if (strcmp(path, "/saveInfo") == 0) {
            handle_save(conn, req + body_off);
        } else {
            send_raw(conn, hdr_404, sizeof(hdr_404) - 1);
        }
    } else {
        send_raw(conn, hdr_404, sizeof(hdr_404) - 1);
    }

    netconn_close(conn);
}

static void http_server_task(void *arg)
{
    struct netconn *listen = NULL;
    struct netconn *newconn = NULL;
    err_t err;

    (void)arg;
    listen = netconn_new(NETCONN_TCP);
    if (!listen) {
        blog_error("[wc] netconn_new failed");
        vTaskDelete(NULL);
        return;
    }
    netconn_bind(listen, NULL, WC_HTTP_PORT);
    netconn_listen(listen);

    for (;;) {
        err = netconn_accept(listen, &newconn);
        if (err == ERR_OK && newconn) {
            netconn_set_recvtimeout(newconn, WC_HTTP_RECV_TIMEOUT_MS);
            handle_client(newconn);
            netconn_delete(newconn);
            newconn = NULL;
        }
    }
}

void web_config_http_start(void)
{
    static int started;

    if (started) {
        return;
    }
    started = 1;
    xTaskCreate(http_server_task, (char *)"wc_http", 4096, NULL, 12, NULL);
}
