push bp, bp to [sp]
sp -= 0b
bp = sp + 0001
; ? [?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?]
; sp bp
sp -= 02
; ? [!?, !?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?]
; sp         bp

r2 = bp + 0000
r3 = 00
r4 = sp + 0001
[r4++] = r2
[r4] = r3
; ? [&bp, 0, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?]
; sp        bp

call 0004a2

sp += 02
; ? [?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?]
; sp bp

r3 = 00
ds = 00
r4 = 0002
ds:[r4] = r3 ; [0002] = 0

r4 = [bp+00]
[bp+02] = r4
r4 = 00
cmp r4, 00
jne skip ; never jumps

r4 = [bp+02]
cmp r4, 58c2
jne skip

r3 = 01
ds = 00
r4 = 0002
ds:[r4] = r3 ; [0002] = 1
r1 = 00
sp += 0b
pop bp, pc from [sp]

skip:
r4 = [bp+00]                                        9800
[bp+03] = r4                                        D803
r4 = 00                                             9840
cmp r4, 00                                          4840
jne 126f                                            4E04
r4 = [bp+03]                                        9803
cmp r4, 5ac2                                        490C 5AC2
je 1281                                             5E12

126f:
r4 = [bp+00]                                        9800
[bp+04] = r4                                        D804
r4 = 00                                             9840
cmp r4, 00                                          4840
jne 1278                                            4E04
r4 = [bp+04]                                        9804
cmp r4, 76c2                                        490C 76C2
je 1281                                             5E09

1278:
r4 = [bp+00]                                        9800
[bp+05] = r4                                        D805
r4 = 00                                             9840
cmp r4, 00                                          4840
jne 1289                                            4E0C
r4 = [bp+05]                                        9805
cmp r4, 79c2                                        490C 79C2
jne 1289                                            4E08

1281:
r3 = 02                                             9642
ds = 00                                             FE00
r4 = 0002                                           990C 0002
ds:[r4] = r3                                        D6E4
r1 = 00                                             9240
sp += 0b                                            004B
pop bp, pc from [sp]                                9898

1289:
r4 = [bp+00]                                        9800
[bp+06] = r4                                        D806
r4 = 00                                             9840
cmp r4, 00                                          4840
jne 1292                                            4E04
r4 = [bp+06]                                        9806
cmp r4, 7398                                        490C 7398
je 129b                                             5E09

1292:
r4 = [bp+00]                                        9800
[bp+07] = r4                                        D807
r4 = 00                                             9840
cmp r4, 00                                          4840
jne 12a3                                            4E0C
r4 = [bp+07]                                        9807
cmp r4, 7598                                        490C 7598
jne 12a3                                            4E08

129b:
r3 = 01                                             9641
ds = 00                                             FE00
r4 = 0002                                           990C 0002
ds:[r4] = r3                                        D6E4
r1 = 00                                             9240
sp += 0b                                            004B
pop bp, pc from [sp]                                9898

12a3:
r4 = [bp+00]                                        9800
[bp+08] = r4                                        D808
r4 = 00                                             9840
cmp r4, 00                                          4840
jne 12ac                                            4E04
r4 = [bp+08]                                        9808
cmp r4, 7698                                        490C 7698
je 12b5                                             5E09

12ac:
r4 = [bp+00]                                        9800
[bp+09] = r4                                        D809
r4 = 00                                             9840
cmp r4, 00                                          4840
jne 12bd                                            4E0C
r4 = [bp+09]                                        9809
cmp r4, 7998                                        490C 7998
jne 12bd                                            4E08

12b5:
r3 = 02                                             9642
ds = 00                                             FE00
r4 = 0002                                           990C 0002
ds:[r4] = r3                                        D6E4
r1 = 00                                             9240
sp += 0b                                            004B
pop bp, pc from [sp]                                9898

12bd:
sp -= 02                                            2042
r2 = [bp+00]                                        9400
r3 = [bp+01]                                        9601
r4 = sp + 0001                                      0908 0001
[r4++] = r2                                         D4D4
[r4] = r3                                           D6C4
call 000f05                                         F040 0F05
sp += 02                                            0042
[bp+0a] = r1                                        D20A
cmp r2, 00                                          4440
jne 12cd                                            4E03
r4 = [bp+0a]                                        980A
cmp r4, 00                                          4840
je 12d1                                             5E04

12cd:
r1 = -00e1                                          6309 00E1
sp += 0b                                            004B
pop bp, pc from [sp]                                9898

12d1:
r1 = [bp+00]                                        9200
r2 = [bp+01]                                        9401

ds = 00                                             FE00
r4 = 0016                                           990C 0016
r3 = ds:[r4++]                                      96F4
r4 = ds:[r4]                                        98E4
ds = r4                                             F02C
ds:[r3++] = r1                                      D2F3
ds:[r3] = r2                                        D4E3
r2 = 5aa5                                           950A 5AA5
ds = 00                                             FE00
r4 = 0016                                           990C 0016
r3 = ds:[r4++]                                      96F4
r4 = ds:[r4]                                        98E4
r3 += 10                                            0650
r4 += 00, carry                                     1840
ds = r4                                             F02C
ds:[r3] = r2                                        D4E3
r2 = 5aa5                                           950A 5AA5
ds = 00                                             FE00
r4 = 0016                                           990C 0016
r3 = ds:[r4++]                                      96F4
r4 = ds:[r4]                                        98E4
r3 += 11                                            0651
r4 += 00, carry                                     1840
ds = r4                                             F02C
ds:[r3] = r2                                        D4E3
r2 = -5aa6                                          650A 5AA6
ds = 00                                             FE00
r4 = 0016                                           990C 0016
r3 = ds:[r4++]                                      96F4
r4 = ds:[r4]                                        98E4
r3 += 12                                            0652
r4 += 00, carry                                     1840
ds = r4                                             F02C
ds:[r3] = r2                                        D4E3
r1 = 00                                             9240

sp += 0b                                            004B
pop bp, pc from [sp]                                9898
