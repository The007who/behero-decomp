push bp, bp to [sp]                                 DA88
sp -= 01                                            2041
bp = sp + 0001                                      0B08 0001

r4 =- 01                                            6841
[bp+00] = r4                                        D800
call 087674 ; param: -1

sp -= 01                                            2041
r4 = [bp+04]                                        9804
r4 = r4 lsr 4                                       997C
r4 = r4 lsr 4                                       997C
r4 = r4 lsl 1                                       9944
r3 = r4 | 00a0                                      A70C 00A0
r4 = sp + 0001                                      0908 0001
[r4] = r3                                           D6C4
call 087713                                         F048 7713
sp += 01                                            0041
cmp r1, 00                                          4240
je 87910                                            5E38

sp -= 01                                            2041
r4 = [bp+04]                                        9804
r3 = r4 & 00ff                                      B70C 00FF
r4 = sp + 0001                                      0908 0001
[r4] = r3                                           D6C4
call 087713                                         F048 7713
sp += 01                                            0041
cmp r1, 00                                          4240
je 878f9                                            5E15

call 087674                                         F048 7674
sp -= 01                                            2041
r4 = [bp+04]                                        9804
r4 = r4 lsr 4                                       997C
r4 = r4 lsr 4                                       997C
r4 = r4 lsl 1                                       9944
r3 = r4 | 00a1                                      A70C 00A1
r4 = sp + 0001                                      0908 0001
[r4] = r3                                           D6C4
call 087713                                         F048 7713
sp += 01                                            0041
cmp r1, 00                                          4240
je 878f8                                            5E03

call 0877ba                                         F048 77BA
[bp+00] = r1                                        D200

0878F8:
jmp 87910

0878F9:
sp -= 05
r2 = 5fb1                                           950A 5FB1
r3 = 05                                             9645
r4 = sp + 0001                                      0908 0001
[r4++] = r2                                         D4D4
[r4] = r3                                           D6C4
r3 = 00c7                                           970B 00C7
r4 = sp + 0003                                      0908 0003
[r4] = r3                                           D6C4
r2 = 5ffd                                           950A 5FFD
r3 = 05                                             9645
r4 = sp + 0004                                      0908 0004
[r4++] = r2                                         D4D4
[r4] = r3                                           D6C4
call 0897c1                                         F048 97C1
sp += 05                                            0045

087910:
call 0876c0
r1 = [bp+00]                                        9200
sp += 01                                            0041
pop bp, pc from [sp]                                9898
