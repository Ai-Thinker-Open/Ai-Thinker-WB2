# Example: Ai-WB2 Series SoC Module Reads SHT30 Temperature and Humidity Sensor via I²C Bus

## Hardware Setup and Wiring

| Ai-WB2 Series SoC Module Pinout | SHT30 Pinout |
|---|---|
| IO12 | SCL |
| IO3 | SDA |
| 3V3 | VCC |
| GND | GND |

## Build and Flash

```shell
make -j
make flash
```

## Run

![img](img/demo.jpg)

## Logic Analyzer Output

![img](img/logic_analyzer.jpg)
