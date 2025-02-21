# Example: Ai-WB2 Series SoC Module GPIO usage

## Hardware Setup and Wiring

| Ai-WB2 Series SoC Module Pinout | Peripheral Pinout |
|---|---|
| IO3 | LED |
| IO4 | 中断触发引脚 |
| 3V3 | VCC |
| GND | GND |

## Build and Flash

```shell
make -j 16
make flash
```

## Run

