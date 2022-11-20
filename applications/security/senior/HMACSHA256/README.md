# HMACSHA256 Example
This routine shows the `HMACSHA256` verification process and the overall verification results,used to verify the correctness of process verification and overall verification.
## Example Output
```shell
...(other log)
[OS] Starting aos_loop_proc task...
[OS] Starting OS Scheduler...
INFO (5)[main.c:  41] Update process:hello
INFO (8)[main.c:  43] Update process:-
INFO (12)[main.c:  45] Update process:Ai-WB2-Kit
INFO:(17)[main.c:  48] Segmental encryption:0000-001F: 6B 28 50 9A 09 55 E6 53  4E 00 7B BA BC 19 B4 4C  E5 0F 16 A4 3D EB DA 3A  3A B4 69 EC 1A EF 0E A7    k(P..U.SN.{....L....=..::.i.....
INFO:(35)[main.c:  53] Overall encryption:0000-001F: 6B 28 50 9A 09 55 E6 53  4E 00 7B BA BC 19 B4 4C  E5 0F 16 A4 3D EB DA 3A  3A B4 69 EC 1A EF 0E A7    k(P..U.SN.{....L....=..::.i.....
```
## Troubleshooting

For any technical queries, please open an [issue](https://github.com/Ai-Thinker-Open/Ai-Thinker-WB2/issues) on GitHub. We will get back to you soon.