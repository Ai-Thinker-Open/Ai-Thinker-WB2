#include "sfud.h"
#include "blog.h"

static uint8_t data[512];

void main()
{
    sfud_init();
    sfud_flash* flash = sfud_get_device(0);

    memset(data, 0x66, sizeof data);

    sfud_erase(flash, 0, 64);
    sfud_write(flash, 0, 32, data);

    memset(data, 0, sizeof data);
    sfud_read(flash, 0, 64, data);
    blog_info_hexdump("data", data, 64);
}
