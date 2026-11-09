push bp, bp to [sp]                                 DA88
sp -= 02                                            2042
bp = sp + 0001                                      0B08 0001

r4 = 00                                             9840
[bp+00] = r4                                        D800

; disable bit 5 in IOD_Dir
r3 = 787a                                           970B 787A
r4 = 00                                             9840
ds = r4                                             F02C
r4 = ds:[r3]                                        98E3
r2 = r4 & ffef                                      B50C FFEF
r3 = 787a                                           970B 787A
r4 = 00                                             9840
ds = r4                                             F02C
ds:[r3] = r2                                        D4E3

r4 = 00                                             9840
[bp+01] = r4                                        D801

877ce:
r4 = [bp+01]                                        9801
cmp r4, 07                                          4847
ja 8780a                                            9E39

r4 = [bp+00]                                        9800
r4 = r4 lsl 1                                       9944
[bp+00] = r4                                        D800

; enable bit 4 of IOD_Buffer
r3 = 7879                                           970B 7879
r4 = 00                                             9840
ds = r4                                             F02C
r4 = ds:[r3]                                        98E3
r4 |= 08                                            A848
r2 = 7879                                           950A 7879
r3 = 00                                             9640
ds = r3                                             F02B
ds:[r2] = r4                                        D8E2

sp -= 01                                            2041
r3 = 01                                             9641
r4 = sp + 0001                                      0908 0001
[r4] = r3                                           D6C4
call 08765a ; arbitrary wait
sp += 01                                            0041

; check bit 5 in IOD_Data
r3 = 7878                                           970B 7878
r4 = 00                                             9840
ds = r4                                             F02C
r4 = ds:[r3]                                        98E3
r4 &= 10                                            B850
cmp r4, 00                                          4840
je 877f2                                            5E03

r4 = [bp+00]                                        9800
r4 |= 01                                            A841
[bp+00] = r4                                        D800

877f2:
; disable bit 4 in IOD_Buffer
r3 = 7879                                           970B 7879
r4 = 00                                             9840
ds = r4                                             F02C
r4 = ds:[r3]                                        98E3
r2 = r4 & fff7                                      B50C FFF7
r3 = 7879                                           970B 7879
r4 = 00                                             9840
ds = r4                                             F02C
ds:[r3] = r2                                        D4E3

sp -= 01                                            2041
r3 = 01                                             9641
r4 = sp + 0001                                      0908 0001
[r4] = r3                                           D6C4
call 08765a ; arbitrary wait
sp += 01                                            0041

r4 = [bp+01]                                        9801
r4 += 01                                            0841
[bp+01] = r4                                        D801
jmp 877ce                                           EE7C

8780a:
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

r4 = 03e8                                           990C 03E8
[bp+01] = r4                                        D801

87818:
r4 = [bp+01]                                        9801
r4 -= 01                                            2841
[bp+01] = r4                                        D801
r4 = [bp+01]                                        9801
cmp r4, ffff                                        490C FFFF
je 87822                                            5E03
jmp 87821                                           EE01
jmp 87822                                           EE01

087821:
jmp 87818                                           EE4A

; disable bit 4 in IOD_Buffer
087822:
r3 = 7879                                           970B 7879
r4 = 00                                             9840
ds = r4                                             F02C
r4 = ds:[r3]                                        98E3
r2 = r4 & fff7                                      B50C FFF7
r3 = 7879                                           970B 7879
r4 = 00                                             9840
ds = r4                                             F02C
ds:[r3] = r2                                        D4E3

; enable bit 5 in IOD_Dir
r3 = 787a                                           970B 787A
r4 = 00                                             9840
ds = r4                                             F02C
r4 = ds:[r3]                                        98E3
r4 |= 10                                            A850
r2 = 787a                                           950A 787A
r3 = 00                                             9640
ds = r3                                             F02B
ds:[r2] = r4                                        D8E2

; disable bit 5 in IOD_Buffer
r3 = 7879                                           970B 7879
r4 = 00                                             9840
ds = r4                                             F02C
r4 = ds:[r3]                                        98E3
r2 = r4 & ffef                                      B50C FFEF
r3 = 7879                                           970B 7879
r4 = 00                                             9840
ds = r4                                             F02C
ds:[r3] = r2                                        D4E3

sp -= 01                                            2041
r3 = 01                                             9641
r4 = sp + 0001                                      0908 0001
[r4] = r3                                           D6C4
call 08765a ; arbitrary wait

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

r3 = 7879                                           970B 7879
r4 = 00                                             9840
ds = r4                                             F02C
r4 = ds:[r3]                                        98E3
r2 = r4 & fff7                                      B50C FFF7
r3 = 7879                                           970B 7879
r4 = 00                                             9840
ds = r4                                             F02C
ds:[r3] = r2                                        D4E3

r3 = 01                                             9641
r4 = sp + 0001                                      0908 0001
[r4] = r3                                           D6C4
call 08765a ; arbitrary wait
sp += 01                                            0041

r3 = 7879                                           970B 7879
r4 = 00                                             9840
ds = r4                                             F02C
r4 = ds:[r3]                                        98E3
r4 |= 10                                            A850
r2 = 7879                                           950A 7879
r3 = 00                                             9640
ds = r3                                             F02B
ds:[r2] = r4                                        D8E2

r1 = [bp+00]                                        9200
sp += 02                                            0042
pop bp, pc from [sp]                                9898
