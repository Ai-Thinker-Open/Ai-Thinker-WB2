# SPIFFS Example

## Example Output

Starts a FreeRTOS task to print "spiffs write/read demo". As you run the example, you will see the log :

```
INFO (5)[main.c:  94] --> spiffs write/read demo <--
INFO (25)[main.c:  71] spiffs mount success
INFO (33)[main.c:  88] --> Hello world <--

```

## How to use?

```cpp
//Add Configuration
spiffs_config cfg = {
    .phys_size = 0x00047000,                 // use spi flash size
    .phys_addr = DEMO_HOSAL_FLASH_TEST_ADDR, // start spiffs at start of flash
    .phys_erase_block = 4096,                // physical sector size
    .log_block_size = 4096,                  // logical sector size (Must be an integer multiple of physical sectors)
    .log_page_size = LOG_PAGE_SIZE,          // logical page size
    .hal_read_f = spiffs_read_flash,         // flash read function
    .hal_write_f = spiffs_write_flash,       // flash write function
    .hal_erase_f = spiffs_erase_flash,       // flash erase function
};
```

```cpp
//SPIFFS Mount
int res = SPIFFS_mount(&fs,
                        &cfg,
                        spiffs_work_buf,
                        spiffs_fds,
                        sizeof(spiffs_fds),
                        spiffs_cache_buf,
                        sizeof(spiffs_cache_buf),
                        0);
```

## API

[SPIFFS API - Weki](https://github.com/pellepl/spiffs/wiki/Using-spiffs)

## Troubleshooting

For any technical queries, please open an [issue](https://github.com/Ai-Thinker-Open/Ai-Thinker-WB2/issues) on GitHub. We will get back to you soon.
