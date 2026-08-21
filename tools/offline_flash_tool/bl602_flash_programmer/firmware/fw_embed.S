/**
 * Embed BL602 eflash_loader into STM32 flash (.rodata).
 * The application image is programmed from the SD card at runtime.
 * Path is relative to this file (firmware/...).
 */
    .syntax unified
    .cpu cortex-m3
    .thumb

    .section .rodata.bl602_eflash_loader, "a"
    .align 2
    .global bl602_eflash_loader
    .global bl602_eflash_loader_end
bl602_eflash_loader:
    .incbin "bl602_eflash_loader.bin"
bl602_eflash_loader_end:
