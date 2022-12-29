#include "radar_data_parse.h"

uint8_t frame_head[] = {0xf4, 0xf3, 0xf2, 0xf1};
uint8_t frame_end[] = {0xf8, 0xf7, 0xf6, 0xf5};

bool radar_data_parse(radar_status_t *radar_status, uint8_t *buffer)
{
    printf("\r\n--------frame start----------\r\n");
    for (int i = 0; i < FRAME_LENGTH; i++)
    {
        printf("%02X ", buffer[i]);
    }
    printf("\r\n----------frame end----------\r\n");
    if (memcmp(buffer, frame_head, 4) == 0)
    {
        int data_len = buffer[5];
        data_len = data_len << 8 | buffer[4];
        if ((data_len + 4 + 2 + 4) != FRAME_LENGTH)
        {
            return false;
        }
        if (memcmp(&buffer[data_len + 4 + 2], frame_end, 4) != 0)
        {
            return false;
        }
        radar_status->data_type = buffer[6];
        radar_status->target_status = buffer[8];
        printf("\r\nradar target status: %d\r\n", radar_status->target_status);
    }
    else
    {
        printf("\r\nframe header match error\r\n");
        return false;
    }
    return true;
}
