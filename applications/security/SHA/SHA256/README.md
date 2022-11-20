# SHA256 Example
This routine shows two encryption algorithms, `SHA224` and `SHA256`.The results of the segmented and the overall checks are also shown.
## Example Output
```shell
...(other log)
INFO (6)[main.c:  68] Update process:hello
INFO (8)[main.c:  72] Update process:-
INFO (12)[main.c:  76] Update process:Ai-WB2-Kit
INFO:(17)[main.c:  80] sha224 Segmentation check:0000-001B: BC C8 73 57 27 57 75 D4  40 46 0C A3 29 51 EC EF  8D CA 25 74 A5 F2 85 C0  F3 86 85 3A   ..sW'Wu.@F..)Q....%t.......:
INFO:(34)[main.c:  86] sha224 Overall verification:0000-001B: BC C8 73 57 27 57 75 D4  40 46 0C A3 29 51 EC EF  8D CA 25 74 A5 F2 85 C0  F3 86 85 3A   ..sW'Wu.@F..)Q....%t.......:
INFO (51)[main.c:  36] Update process:hello
INFO (56)[main.c:  40] Update process:-
INFO (60)[main.c:  44] Update process:Ai-WB2-Kit
INFO:(66)[main.c:  48] sha256 Segmentation check:0000-001F: ED D8 A1 AF 00 A1 CA 20  53 39 67 65 04 64 A0 30  CF 9B 9B 3B D3 28 23 B5  28 90 7B 76 89 E7 CD 25    ....... S9ge.d.0...;.(#.(.{v...%
INFO:(84)[main.c:  54] sha256 Overall verification:0000-001F: ED D8 A1 AF 00 A1 CA 20  53 39 67 65 04 64 A0 30  CF 9B 9B 3B D3 28 23 B5  28 90 7B 76 89 E7 CD 25    ....... S9ge.d.0...;.(#.(.{v...%
```
## Troubleshooting

For any technical queries, please open an [issue](https://github.com/Ai-Thinker-Open/Ai-Thinker-WB2/issues) on GitHub. We will get back to you soon.