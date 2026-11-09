push bp, bp to [sp]                                 DA88
bp = sp + 0001                                      0B08 0001

r2 = [bp+03]                                        9403
r3 = [bp+04]                                        9604

ds = 04                                             FE04
r4 = 6c00                                           990C 6C00
ds:[r4++] = r2                                      D4F4
ds:[r4] = r3                                        D6E4
r3 = [bp+05]                                        9605

ds = 04                                             FE04
r4 = 6c02                                           990C 6C02
ds:[r4] = r3                                        D6E4

call 087607                                         F048 7607

r4 = [bp+05]                                        9805
r4 = r4 lsl 1                                       9944
r4 += 05                                            0845
cmp r4, 03ff                                        490C 03FF
ja 88b06                                            9E01
jmp 88b1c                                           EE16

088B06:
sp -= 05

r2 = ff61                                           950A FF61
r3 = 06                                             9646
r4 = sp + 0001                                      0908 0001
[r4++] = r2                                         D4D4
[r4] = r3                                           D6C4
r3 = 23                                             9663
r4 = sp + 0003                                      0908 0003
[r4] = r3                                           D6C4
r2 = ffb2                                           950A FFB2
r3 = 06                                             9646
r4 = sp + 0004                                      0908 0004
[r4++] = r2                                         D4D4
[r4] = r3                                           D6C4

call 0897c1                                         F048 97C1

sp += 05

088B1C:
call 088be1

cmp r1, 00                                          4240
jne 88b34                                           4E14
r3 = 00                                             9640
ds = 04                                             FE04
r4 = 6c03                                           990C 6C03
ds:[r4] = r3                                        D6E4
ds = 04                                             FE04
r4 = 2b00                                           990C 2B00
r4 = ds:[r4]                                        98E4
r4 |= 08                                            A848
ds = 04                                             FE04
r3 = 2b00                                           970B 2B00
ds:[r3] = r4                                        D8E3

call 07aa95                                         F047 AA95
call 088b35                                         F048 8B35
call 088b35                                         F048 8B35

088B34:
pop bp, pc from [sp]
