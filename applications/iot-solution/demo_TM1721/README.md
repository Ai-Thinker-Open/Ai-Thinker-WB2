# Example: Ai-WB2 Series SoC Module Driver TM1721 chip

## Hardware Setup and Wiring

| Ai-WB2 Series SoC Module Pinout | MPU6050 Pinout |
|---|---|
| IO17 | CLKPIN |
| IO3 | DATAPIN |
| IO14 | CSPIN |
| 3V3 | VCC |
| GND | GND |

## Build and Flash

```shell
make -j
make flash
```
