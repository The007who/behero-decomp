push bp, bp to [sp]                                 DA88
bp = sp + 0001                                      0B08 0001
sp -= 01                                            2041

r3 = 01                                             9641
r4 = sp + 0001                                      0908 0001
[r4] = r3                                           D6C4
call 08765a ; arbitrary wait

; zero out bit 5 in IOD_Buffer
r3 = 7879                                           970B 7879
r4 = 00                                             9840
ds = r4                                             F02C
r4 = ds:[r3]                                        98E3
r2 = r4 & ffef                                      B50C FFEF
r3 = 7879                                           970B 7879
r4 = 00                                             9840
ds = r4                                             F02C
ds:[r3] = r2                                        D4E3

r3 = 01                                             9641
r4 = sp + 0001                                      0908 0001
[r4] = r3                                           D6C4
call 08765a ; arbitrary wait

; enable bit 4 in IOD_Buffer
r3 = 7879                                           970B 7879
r4 = 00                                             9840
ds = r4                                             F02C
r4 = ds:[r3]                                        98E3
r4 |= 08                                            A848
r2 = 7879                                           950A 7879
r3 = 00                                             9640
ds = r3                                             F02B
ds:[r2] = r4                                        D8E2

r3 = 01                                             9641
r4 = sp + 0001                                      0908 0001
[r4] = r3                                           D6C4
call 08765a ; arbitrary wait

; enable bit 5 in IOD_Buffer
r3 = 7879                                           970B 7879
r4 = 00                                             9840
ds = r4                                             F02C
r4 = ds:[r3]                                        98E3
r4 |= 10                                            A850
r2 = 7879                                           950A 7879
r3 = 00                                             9640
ds = r3                                             F02B
ds:[r2] = r4                                        D8E2

r3 = 01                                             9641
r4 = sp + 0001                                      0908 0001
[r4] = r3                                           D6C4
call 08765a ; arbitrary wait

; zero out bit 4 in IOD_Buffer
r3 = 7879                                           970B 7879
r4 = 00                                             9840
ds = r4                                             F02C
r4 = ds:[r3]                                        98E3
r2 = r4 & fff7                                      B50C FFF7
r3 = 7879                                           970B 7879
r4 = 00                                             9840
ds = r4                                             F02C
ds:[r3] = r2                                        D4E3

r3 = 0064                                           970B 0064
r4 = sp + 0001                                      0908 0001
[r4] = r3                                           D6C4
call 08765a ; arbitrary wait

sp += 01                                            0041
pop bp, pc from [sp]                                9898
