;
push bp, bp to [sp]                                 DA88
bp = sp + 0001                                      0B08 0001

r3 = [bp+03]                                        9603
ds = 04                                             FE04
r4 = 8104                                           990C 8104
ds:[r4] = r3                                        D6E4

r3 = 01                                             9641
ds = 04                                             FE04
r4 = 8103                                           990C 8103
ds:[r4] = r3                                        D6E4

pop bp, pc from [sp]                                9898
