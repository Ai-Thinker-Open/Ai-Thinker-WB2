# Ai-WB2 Blufi Example

This demo shows how to use the *Blufi* to configurate the Wi-Fi connection to AP.

The BluFi for Ai-WB2 is a Wi-Fi network configuration function via Bluetooth channel. It provides a secure protocol to pass Wi-Fi configuration and credentials to the Ai-WB2.

## How to Use Example

Before project configuration and build, be sure to set the correct chip target using:

```bash
make flash
```

To test this demo, you need to prepare a mobile phone with blufi application installed. You can download the blufi application from [Android version](https://github.com/EspressifApp/EspBlufi) and [iOS version](https://itunes.apple.com/cn/app/espblufi/id1450614082?mt=8).

Blufi is completely open source, here is the download link:

* [Blufi source code](https://github.com/espressif/esp-idf/tree/master/examples/bluetooth/blufi)
* [BluFi protocol](https://docs.espressif.com/projects/esp-idf/en/latest/api-guides/blufi.html?highlight=blufi#the-frame-formats-defined-in-blufi)
* [iOS source code](https://github.com/EspressifApp/EspBlufiForiOS)
* [Android source code](https://github.com/EspressifApp/EspBlufi)

### Hardware Required

* A development board with Ai-WB2 SoC (e.g., Ai-WB2-12F-Kit, etc.)
* A USB cable for Power supply and programming

### Build and Flash

Run `make flash p=/dev/ttyUSB0 b=921600` to build, flash the project.

## Example Output

```
[version] lmac 5.4.0.0
[version] version_machw_1 000055FB
[version] version_machw_2 000001B3
[version] version_phy_1 00822111
[version] version_phy_2 00000000
[version] features 001089DF
[ME] HT supp 1, VHT supp 0
[WF] country code CN used, num of channel 13
[WF][SM] reload tsen 
[WF][SM] Exiting ifaceDown state
[WF][SM] State Action ###ifaceDown### --->>> ###idle###
[WF][SM] Entering idle state
[WIFI] [EVT] CODE_WIFI_ON_INIT_DONE
[WIFI] [EVT] CODE_WIFI_ON_MGMR_DONE
[BL] [SEC] TRNG Handler
[BL] [SEC] TRNG Handler
BD_ADDR:(MSB)7c:b9:4c:1d:d1:dc(LSB) 
[blufi]btc_transfer_context msg 0 0 0x00000000
[blufi] btc_thread_handler msg 0 0 0x00000000
BLUFI example_event_callback event= ]0] 
BLUFI init finish
[BLE] set adv
[BLE] en adv
[BL] [SEC] TRNG Handler
[BL] [SEC] TRNG Handler
[blufi]btc_transfer_context msg 1 3 0x420328dc
[blufi] btc_thread_handler msg 1 3 0x4201c640
BLUFI example_event_callback event= ]3] 
BLUFI ble connect
blufi_security_init ok 
blufi_security_init mbedtls_aes_init ok 
[BLE] connected 
[BLE] conn param request: int 0x0006-0x0006 lat 0 to 500 
[BLE] conn param updated: int 0x0006 lat 0 to 500 
[BLE] conn param request: int 0x0024-0x0024 lat 0 to 500 
[BLE] conn param updated: int 0x0024 lat 0 to 500 
[BLE] conn param updated: int 0x0028 lat 0 to 400 

```

## Troubleshooting

For any technical queries, please open an [issue](https://github.com/Ai-Thinker-Open/Ai-Thinker-WB2/issues) on GitHub. We will get back to you soon.
