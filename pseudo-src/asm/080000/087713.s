push bp, bp to [sp]                                 DA88
sp -= 01                                            2041
bp = sp + 0001                                      0B08 0001

r4 = 0080                                           990C 0080
[bp+00] = r4                                        D800

08771A:
r4 = [bp+00]
cmp r4, 00                                          4840
jne 8771f                                           4E02
goto 08776d                                         FE88 776D

08771F:
sp -= 01
r3 = 01                                             9641
r4 = sp + 0001                                      0908 0001
[r4] = r3                                           D6C4
call 08765a ; arbitrary wait
sp += 01                                            0041

r4 = [bp+04]                                        9804
r4 &= [bp+00]                                       B800
cmp r4, 00                                          4840
je 87737                                            5E0C

; enable bit 5 in IOD_Buffer
r3 = 7879
r4 = 00
ds = r4
r4 = ds:[r3]
r4 |= 10
r2 = 7879
r3 = 00
ds = r3
ds:[r2] = r4

jmp 87743                                           EE0C

; zero out bit 5 in IOD_Buffer
087737:
r3 = 7879
r4 = 00                                             9840
ds = r4                                             F02C
r4 = ds:[r3]                                        98E3
r2 = r4 & ffef                                      B50C FFEF
r3 = 7879                                           970B 7879
r4 = 00                                             9840
ds = r4                                             F02C
ds:[r3] = r2                                        D4E3

087743:
sp -= 01
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
sp += 01                                            0041

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

r4 = [bp+00]                                        9800
r4 = r4 lsr 1                                       9964
[bp+00] = r4                                        D800
goto 08771a                                         FE88 771A

; zero out bit 5 in IOD_Dir
08776D:
r3 = 787a
r4 = 00                                             9840
ds = r4                                             F02C
r4 = ds:[r3]                                        98E3
r2 = r4 & ffef                                      B50C FFEF
r3 = 787a                                           970B 787A
r4 = 00                                             9840
ds = r4                                             F02C
ds:[r3] = r2                                        D4E3

sp -= 01                                            2041
r3 = 01                                             9641
r4 = sp + 0001                                      0908 0001
[r4] = r3                                           D6C4
call 08765a ; arbitrary wait
sp += 01                                            0041

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
[bp+00] = r4                                        D800

08778F:
r4 = [bp+00]                                        9800
r4 -= 01                                            2841
[bp+00] = r4                                        D800
r4 = [bp+00]                                        9800
cmp r4, ffff                                        490C FFFF
je 877a0                                            5E0A

; check if bit 5 of IOD_Data is unset
r3 = 7878                                           970B 7878
r4 = 00                                             9840
ds = r4                                             F02C
r4 = ds:[r3]                                        98E3
r4 &= 10                                            B850
cmp r4, 00                                          4840
jne 8779f                                           4E01
jmp 877a0 ; equal to 0, meaning bit 5 = 0

08779F:
jmp 8778f ; not equal to 0, meaning bit 5 = 1

; zero out bit 4 in IOD_Buffer
0877A0:
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

r1 = [bp+00]                                        9200
sp += 01                                            0041
pop bp, pc from [sp]                                9898
