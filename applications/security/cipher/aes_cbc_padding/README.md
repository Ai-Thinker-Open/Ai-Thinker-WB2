# AES PKCS7 PADDING Example

This routine shows how to perform encryption and decryption in `AES/128/192/256-CBC` mode and `PKCS7` padding.

## Example Output

```shell
...(other log)
[OS] Starting aos_loop_proc task...
[OS] Starting OS Scheduler...
INFO (5)[main.c:  39] AES-128-CBC PKCS7 padding 
INFO (8)[main.c:  78] aes_cbc:0000-001F: 40 90 9C 66 77 EF 24 80  8C 01 68 0F 5E B7 2F 20  5B 00 39 5F EB 1C CB 41  C3 FF A1 DA 7B 4C 3E 4D    @..fw.$...h.^./ [.9_...A....{L>M 
INFO (25)[main.c:  88] decrypt value:0000-000F: 68 65 6C 6C 6F 2D 41 69  2D 57 42 32 2D 4B 69 74    hello-Ai-WB2-Kit 
INFO (37)[main.c:  90] padding value:0000-000F: 10 10 10 10 10 10 10 10  10 10 10 10 10 10 10 10    ................ 
INFO (49)[main.c:  49] AES-192-CBC PKCS7 padding 
INFO (54)[main.c:  78] aes_cbc:0000-001F: A4 D2 45 F1 EA AE 48 7F  F0 51 AA 22 A2 3A 0F 65  60 1C 52 41 38 7F 13 D3  A9 93 8E 8D 8D E0 B6 BA    ..E...H..Q.".:.e`.RA8........... 
INFO (71)[main.c:  88] decrypt value:0000-000F: 68 65 6C 6C 6F 2D 41 69  2D 57 42 32 2D 4B 69 74    hello-Ai-WB2-Kit 
INFO (83)[main.c:  90] padding value:0000-000F: 10 10 10 10 10 10 10 10  10 10 10 10 10 10 10 10    ................ 
INFO (95)[main.c:  58] AES-256-CBC PKCS7 padding 
INFO (100)[main.c:  78] aes_cbc:0000-001F: 08 C3 94 00 51 B0 EE 85  CB FE CA 21 9B 9F AA DE  BF E4 14 3E A4 B8 2C D3  2A AC 9F 77 D2 4B 96 B8    ....Q......!.......>..,.*..w.K.. 
INFO (117)[main.c:  88] decrypt value:0000-000F: 68 65 6C 6C 6F 2D 41 69  2D 57 42 32 2D 4B 69 74    hello-Ai-WB2-Kit 
INFO (129)[main.c:  90] padding value:0000-000F: 10 10 10 10 10 10 10 10  10 10 10 10 10 10 10 10    ................
```

## Troubleshooting

For any technical queries, please open an [issue](https://github.com/Ai-Thinker-Open/Ai-Thinker-WB2/issues) on GitHub. We will get back to you soon.
