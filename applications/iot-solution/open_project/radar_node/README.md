# Example: Ai-WB2 Series SoC Module Reads SHT30 Temperature and Humidity Sensor via I²C Bus

## Hardware Setup and Wiring

| Ai-WB2 Series SoC Module Pinout | Rd-01 Pinout |
| ------------------------------- | ------------ |
| IO4                             | RXD          |
| IO3                             | TXD          |
| 3V3                             | VCC          |
| GND                             | GND          |

## Build and Flash

```shell
make -j
make flash
```

## NOTE

| Rd-01 Status           | Value |
| ---------------------- | ----- |
| NOT TARGET             | 0x00  |
| ACTIVE TARGET          | 0x01  |
| STATIC TARGET          | 0x02  |
| ACTIVE & STATIC TARGET | 0x03  |

- LOCAL UDP LISTEN PORT `7878`


