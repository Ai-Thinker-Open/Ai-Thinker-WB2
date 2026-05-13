#include <blog.h>

#include "web_popup.h"

void web_popup_dns_ready(void)
{
    blog_info("[popup] DNS captive server bound (port 53)");
}

void web_popup_on_portal_active(void)
{
    blog_info("[popup] Captive portal: connect Wi-Fi then open http://192.168.169.1/");
}
