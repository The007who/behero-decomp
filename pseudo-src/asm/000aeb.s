push bp, bp to [sp]
sp -= 05
bp = sp + 0001
r4 = 00
[bp+00] = r4

call 000de4
call 000dee

call 0012ff ; returns r1 value
[bp+01] = r1

r4 = [bp+01]
cmp r4, 00

je skip:
infinite:
jmp infinite
skip:

ds = 00
r4 = 0002
r4 = ds:[r4]
cmp r4, 00
je 0b19
sp -= 05
r2 = 28
r3 = 00
r4 = sp + 0001
[r4++] = r2
[r4] = r3
r3 = 0080
r4 = sp + 0003
[r4] = r3
r2 = 00
r3 = 12
r4 = sp + 0004
[r4++] = r2
[r4] = r3
call 001625
sp += 05
goto 000be4
ds = 00
r4 = 0016
r3 = ds:[r4++]
r4 = ds:[r4]
r3 += 02
r4 += 00, carry
ds = r4
r4 = ds:[r3]
cmp r4, fff3
jne 0b28
r4 = 03
[bp+02] = r4
jmp 0b2a
000B29  [bp+02] = r4                                        D802
000B2A  ds = 00                                             FE00
000B2B  r4 = 0016                                           990C 0016
000B2D  r3 = ds:[r4++]                                      96F4
000B2E  r4 = ds:[r4]                                        98E4
000B2F  r3 += 0b                                            064B
000B30  r4 += 00, carry                                     1840
000B31  ds = r4                                             F02C
000B32  r3 = ds:[r3]                                        96E3
000B33  r4 = [bp+02]                                        9802
000B34  cmp r3, r4                                          4704
000B35  ja 0b38                                             9E02
000B36  goto 000bd7                                         FE80 0BD7
000B38  ds = 00                                             FE00
000B39  r4 = 0016                                           990C 0016
000B3B  r3 = ds:[r4++]                                      96F4
000B3C  r4 = ds:[r4]                                        98E4
000B3D  r3 += 02                                            0642
000B3E  r4 += 00, carry                                     1840
000B3F  ds = r4                                             F02C
000B40  r4 = ds:[r3]                                        98E3
000B41  cmp r4, fff3                                        490C FFF3
000B43  je 0b79                                             5E35
000B44  sp -= 04                                            2044
000B45  r3 = [bp+02]                                        9602
000B46  r4 = sp + 0001                                      0908 0001
000B48  [r4] = r3                                           D6C4
000B49  ds = 00                                             FE00
000B4A  r4 = 0016                                           990C 0016
000B4C  r3 = ds:[r4++]                                      96F4
000B4D  r4 = ds:[r4]                                        98E4
000B4E  r3 += 05                                            0645
000B4F  r4 += 00, carry                                     1840
000B50  ds = r4                                             F02C
000B51  r2 = ds:[r3]                                        94E3
000B52  r3 = 00                                             9640
000B53  r2 = r2 + ffff                                      050A FFFF
000B55  r3 += 00, carry                                     1640
000B56  ds = 00                                             FE00
000B57  r4 = 0016                                           990C 0016
000B59  r1 = ds:[r4++]                                      92F4
000B5A  r4 = ds:[r4]                                        98E4
000B5B  r1 += 05                                            0245
000B5C  r4 += 00, carry                                     1840
000B5D  ds = r4                                             F02C
000B5E  r4 = ds:[r1]                                        98E1
000B5F  r1 = 00                                             9240
000B60  push r1, r1 to [sp]                                 D288
