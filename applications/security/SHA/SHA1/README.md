# SHA1 Example
This routine shows the `SHA1` verification process and the overall verification results,used to verify the correctness of process verification and overall verification.
## Example Output
```shell
...(other log)

[OS] Starting aos_loop_proc task...
[OS] Starting OS Scheduler...
INFO (5)[main.c:  36] Update process:hello
INFO (7)[main.c:  40] Update process:-
INFO (11)[main.c:  44] Update process:Ai-WB2-Kit
INFO:(17)[main.c:  48] sha1 Segmentation check:0000-0013: 17 0A 41 14 37 81 C9 59  C4 86 63 62 4A 39 B6 89  32 1B C8 4A   ..A.7..Y..cbJ9..2..J
INFO:(31)[main.c:  54] sha1 Overall verification:0000-0013: 17 0A 41 14 37 81 C9 59  C4 86 63 62 4A 39 B6 89  32 1B C8 4A   ..A.7..Y..cbJ9..2..J
```
## Troubleshooting

For any technical queries, please open an [issue](https://github.com/Ai-Thinker-Open/Ai-Thinker-WB2/issues) on GitHub. We will get back to you soon.