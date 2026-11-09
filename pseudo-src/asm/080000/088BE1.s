push bp, bp to [sp]                                 DA88
sp -= 09                                            2049
bp = sp + 0001                                      0B08 0001

r4 = 00                                             9840
[bp+00] = r4                                        D800
r4 = 00                                             9840
[bp+01] = r4                                        D801

sp -= 01                                            2041
r3 = 00                                             9640
r4 = sp + 0001                                      0908 0001
[r4] = r3                                           D6C4
call 0878c1 ; param: 0
sp += 01                                            0041

cmp r1, 2a                                          426A
je 88bf6                                            5E03
r1 = 00                                             9240
sp += 09                                            0049
pop bp, pc from [sp]                                9898

088BF6:
sp -= 01
r3 = 01                                             9641
r4 = sp + 0001                                      0908 0001
[r4] = r3                                           D6C4
call 0878c1 ; param: 1
sp += 01

cmp r1, 2a                                          426A
je 88c03                                            5E03
r1 = 00                                             9240
sp += 09                                            0049
pop bp, pc from [sp]                                9898

088C03:
sp -= 01
r3 = 02                                             9642
r4 = sp + 0001                                      0908 0001
[r4] = r3                                           D6C4
call 0878c1 ; param: 2
sp += 01                                            0041

ds = 04                                             FE04
r4 = 6c03                                           990C 6C03
ds:[r4] = r1                                        D2E4
r4 = -4555                                          690C 4555
[bp+01] = r4                                        D801

ds = 04                                             FE04
r4 = 6c03                                           990C 6C03
r3 = ds:[r4]                                        96E4

ds = 04                                             FE04
r4 = 6c02                                           990C 6C02
r4 = ds:[r4]                                        98E4
r4 = r4 lsl 1                                       9944
r4 += 04                                            0844
MR = r3*r4, uu                                      E60C
r4 = r3                                             9903
r4 += 03                                            0843
[bp+00] = r4                                        D800

ds = 04                                             FE04
r4 = 6c00                                           990C 6C00
r3 = ds:[r4++]                                      96F4
r4 = ds:[r4]                                        98E4
[bp+02] = r3                                        D602
[bp+03] = r4                                        D803
r4 = 00                                             9840
[bp+04] = r4                                        D804

088C29:
r3 = [bp+04]
ds = 04                                             FE04
r4 = 6c02                                           990C 6C02
r4 = ds:[r4]                                        98E4
cmp r3, r4                                          4704
jae 88c5f                                           1E2F

r3 = [bp+00]                                        9600
r4 = r3 + 0001                                      090B 0001
[bp+00] = r4                                        D800
sp -= 01                                            2041
r4 = sp + 0001                                      0908 0001
[r4] = r3                                           D6C4
call 0878c1                                         F048 78C1
[bp+05] = r1                                        D205

r3 = [bp+00]                                        9600
r4 = r3 + 0001                                      090B 0001
[bp+00] = r4                                        D800
r4 = sp + 0001                                      0908 0001
[r4] = r3                                           D6C4
call 0878c1                                         F048 78C1
sp += 01                                            0041

[bp+06] = r1                                        D206
r4 = [bp+06]                                        9806
r4 = r4 lsl 4                                       995C
r4 = r4 lsl 4                                       995C
r4 |= [bp+05]                                       A805
[bp+07] = r4                                        D807
r3 = [bp+02]                                        9602
r4 = [bp+03]                                        9803
r2 = [bp+07]                                        9407
ds = r4                                             F02C
ds:[r3] = r2                                        D4E3
r3 += 01                                            0641
r4 += 00, carry                                     1840
[bp+02] = r3                                        D602
[bp+03] = r4                                        D803
r3 = [bp+01]                                        9601
r4 = 0d                                             984D
MR = r3*r4, uu                                      E60C
r4 = r3                                             9903
r4 += [bp+07]                                       0807
r4 += 0d                                            084D
[bp+01] = r4                                        D801
r4 = [bp+04]                                        9804
r4 += 01                                            0841
[bp+04] = r4                                        D804
jmp 88c29                                           EE76

088C5F:
r3 = [bp+00]
r4 = r3 + 0001                                      090B 0001
[bp+00] = r4                                        D800
sp -= 01                                            2041
r4 = sp + 0001                                      0908 0001
[r4] = r3                                           D6C4
call 0878c1                                         F048 78C1
[bp+08] = r1                                        D208

r3 = [bp+00]                                        9600
r4 = r3 + 0001                                      090B 0001
[bp+00] = r4                                        D800
r4 = sp + 0001                                      0908 0001
[r4] = r3                                           D6C4
call 0878c1                                         F048 78C1
sp += 01                                            0041

r4 = r1 lsl 4                                       9959
r4 = r4 lsl 4                                       995C
r4 |= [bp+08]                                       A808
[bp+08] = r4                                        D808
r3 = [bp+01]                                        9601
r4 = [bp+08]                                        9808
cmp r3, r4                                          4704
jne 88c7f                                           4E03
r1 = 01                                             9241
sp += 09                                            0049
pop bp, pc from [sp]                                9898

088C7F:
r4 = 01
ds = 04                                             FE04
r3 = 6c03                                           970B 6C03
r4 -= ds:[r3]                                       28E3
ds = 04                                             FE04
r3 = 6c03                                           970B 6C03
ds:[r3] = r4                                        D8E3
r4 = -4555                                          690C 4555
[bp+01] = r4                                        D801
ds = 04                                             FE04
r4 = 6c03                                           990C 6C03
r3 = ds:[r4]                                        96E4
ds = 04                                             FE04
r4 = 6c02                                           990C 6C02
r4 = ds:[r4]                                        98E4
r4 = r4 lsl 1                                       9944
r4 += 04                                            0844
MR = r3*r4, uu                                      E60C
r4 = r3                                             9903
r4 += 03                                            0843
[bp+00] = r4                                        D800
ds = 04                                             FE04
r4 = 6c00                                           990C 6C00
r3 = ds:[r4++]                                      96F4
r4 = ds:[r4]                                        98E4
[bp+02] = r3                                        D602
[bp+03] = r4                                        D803
r4 = 00                                             9840
[bp+04] = r4                                        D804

088CA2:
r3 = [bp+04]
ds = 04                                             FE04
r4 = 6c02                                           990C 6C02
r4 = ds:[r4]                                        98E4
cmp r3, r4                                          4704
jae 88cd8                                           1E2F

r3 = [bp+00]                                        9600
r4 = r3 + 0001                                      090B 0001
[bp+00] = r4                                        D800
sp -= 01                                            2041
r4 = sp + 0001                                      0908 0001
[r4] = r3                                           D6C4
call 0878c1                                         F048 78C1
[bp+05] = r1                                        D205

r3 = [bp+00]                                        9600
r4 = r3 + 0001                                      090B 0001
[bp+00] = r4                                        D800
r4 = sp + 0001                                      0908 0001
[r4] = r3                                           D6C4
call 0878c1                                         F048 78C1

sp += 01                                            0041
[bp+06] = r1                                        D206
r4 = [bp+06]                                        9806
r4 = r4 lsl 4                                       995C
r4 = r4 lsl 4                                       995C
r4 |= [bp+05]                                       A805
[bp+07] = r4                                        D807
r3 = [bp+02]                                        9602
r4 = [bp+03]                                        9803
r2 = [bp+07]                                        9407
ds = r4                                             F02C
ds:[r3] = r2                                        D4E3
r3 += 01                                            0641
r4 += 00, carry                                     1840
[bp+02] = r3                                        D602
[bp+03] = r4                                        D803
r3 = [bp+01]                                        9601
r4 = 0d                                             984D
MR = r3*r4, uu                                      E60C
r4 = r3                                             9903
r4 += [bp+07]                                       0807
r4 += 0d                                            084D
[bp+01] = r4                                        D801
r4 = [bp+04]                                        9804
r4 += 01                                            0841
[bp+04] = r4                                        D804
jmp 88ca2                                           EE76

088CD8:
r3 = [bp+00]
r4 = r3 + 0001                                      090B 0001
[bp+00] = r4                                        D800
sp -= 01                                            2041
r4 = sp + 0001                                      0908 0001
[r4] = r3                                           D6C4
call 0878c1                                         F048 78C1
[bp+08] = r1                                        D208

r3 = [bp+00]                                        9600
r4 = r3 + 0001                                      090B 0001
[bp+00] = r4                                        D800
r4 = sp + 0001                                      0908 0001
[r4] = r3                                           D6C4
call 0878c1                                         F048 78C1

sp += 01                                            0041
r4 = r1 lsl 4                                       9959
r4 = r4 lsl 4                                       995C
r4 |= [bp+08]                                       A808
[bp+08] = r4                                        D808
r3 = [bp+01]                                        9601
r4 = [bp+08]                                        9808
cmp r3, r4                                          4704
jne 88cf8                                           4E03

r1 = 01                                             9241
sp += 09                                            0049
pop bp, pc from [sp]                                9898

088CF8:
r1 = 00
sp += 09
pop bp, pc from [sp]
