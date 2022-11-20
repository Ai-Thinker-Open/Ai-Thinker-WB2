# SHA512 Example
This routine shows two encryption algorithms, `SHA384` and `SHA512`.The results of the segmented and the overall checks are also shown.
## Example Output
```shell
...(other log)
[OS] Starting aos_loop_proc task...
[OS] Starting OS Scheduler...
INFO (5)[main.c:  70] Update process:hello
INFO (7)[main.c:  74] Update process:-
INFO (11)[main.c:  78] Update process:Ai-WB2-Kit
INFO:(17)[main.c:  82] sha384 Segmentation check:0000-002F: 0C 4F A1 A0 5B 20 A7 9E  B7 B2 40 7C EE DE FE 11  64 44 50 C7 A1 27 DC BD  48 13 C4 2F F9 7B BD DB  B7 E7 A3 60 AF B2 04 67  8F B9 CC 55 F5 B6 48 A4    .O..[ ....@|....dDP..'..H../.{.....`...g...U..H.
INFO:(41)[main.c:  88] sha384 Overall verification:0000-002F: 0C 4F A1 A0 5B 20 A7 9E  B7 B2 40 7C EE DE FE 11  64 44 50 C7 A1 27 DC BD  48 13 C4 2F F9 7B BD DB  B7 E7 A3 60 AF B2 04 67  8F B9 CC 55 F5 B6 48 A4    .O..[ ....@|....dDP..'..H../.{.....`...g...U..H.
INFO (65)[main.c:  36] Update process:hello
INFO (70)[main.c:  40] Update process:-
INFO (74)[main.c:  44] Update process:Ai-WB2-Kit
INFO:(80)[main.c:  48] sha512 Segmentation check:0000-003F: EE 9F 34 7F 3D 0D 36 B7  BF 89 72 86 FC D3 99 48  C3 16 C2 C1 FE 2F B7 8C  DA 10 0C 7D 4C 0C EB 34  1F 96 3F 22 93 3E A9 77  5D 22 AA 43 87 0B E1 59  80 AB 64 B2 39 51 4D 34  41 D1 CB 8D C4 E5 C5 94    ..4.=.6...r....H...../.....}L..4
INFO:(107)[main.c:  55] sha512 Overall verification:0000-003F: EE 9F 34 7F 3D 0D 36 B7  BF 89 72 86 FC D3 99 48  C3 16 C2 C1 FE 2F B7 8C  DA 10 0C 7D 4C 0C EB 34  1F 96 3F 22 93 3E A9 77  5D 22 AA 43 87 0B E1 59  80 AB 64 B2 39 51 4D 34  41 D1 CB 8D C4 E5 C5 94    ..4.=.6...r....H...../.....}L..4
```
## Troubleshooting

For any technical queries, please open an [issue](https://github.com/Ai-Thinker-Open/Ai-Thinker-WB2/issues) on GitHub. We will get back to you soon.