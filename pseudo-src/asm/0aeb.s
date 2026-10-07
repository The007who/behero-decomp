push bp, bp to [sp]                                 DA88
sp -= 05                                            2045
bp = sp + 0001                                      0B08 0001
r4 = 00                                             9840
[bp+00] = r4                                        D800
call 000de4                                         F040 0DE4
call 000dee                                         F040 0DEE
call 0012ff                                         F040 12FF
[bp+01] = r1                                        D201
r4 = [bp+01]                                        9801
cmp r4, 00                                          4840
je 0afc                                             5E01
jmp 0afb                                            EE41
ds = 00                                             FE00
r4 = 0002                                           990C 0002
r4 = ds:[r4]                                        98E4
cmp r4, 00                                          4840
je 0b19                                             5E17
sp -= 05                                            2045
r2 = 28                                             9468
r3 = 00                                             9640
r4 = sp + 0001                                      0908 0001
[r4++] = r2
[r4] = r3
000B09  r3 = 0080                                           970B 0080
000B0B  r4 = sp + 0003                                      0908 0003
000B0D  [r4] = r3                                           D6C4
000B0E  r2 = 00                                             9440
000B0F  r3 = 12                                             9652
000B10  r4 = sp + 0004                                      0908 0004
000B12  [r4++] = r2                                         D4D4
000B13  [r4] = r3                                           D6C4
000B14  call 001625                                         F040 1625
000B16  sp += 05                                            0045
000B17  goto 000be4                                         FE80 0BE4
000B19  ds = 00                                             FE00
000B1A  r4 = 0016                                           990C 0016
000B1C  r3 = ds:[r4++]                                      96F4
000B1D  r4 = ds:[r4]                                        98E4
000B1E  r3 += 02                                            0642
000B1F  r4 += 00, carry                                     1840
000B20  ds = r4                                             F02C
000B21  r4 = ds:[r3]                                        98E3
000B22  cmp r4, fff3                                        490C FFF3
000B24  jne 0b28                                            4E03
000B25  r4 = 03                                             9843
000B26  [bp+02] = r4                                        D802
000B27  jmp 0b2a                                            EE02
