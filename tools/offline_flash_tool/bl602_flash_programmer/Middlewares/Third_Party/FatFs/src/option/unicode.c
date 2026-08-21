#include "ff.h"

/* Minimal OEM<->Unicode for ASCII (enough for 23.2.1_Combo.bin). */
WCHAR ff_convert(WCHAR chr, UINT dir)
{
    (void)dir;
    if (chr < 0x80) {
        return chr;
    }
    return 0;
}

WCHAR ff_wtoupper(WCHAR chr)
{
    if (chr >= 'a' && chr <= 'z') {
        return (WCHAR)(chr - 0x20);
    }
    return chr;
}
