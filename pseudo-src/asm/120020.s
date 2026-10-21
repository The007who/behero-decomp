 120020  int off                                             F140
 120021  fir_mov off                                         F145
 120022  sp = 2fe0                                           9108 2FE0
 120024  ds = 12                                             FE12
 120025  r1 = 0076                                           9309 0076
 120027  r2 = ds:[r1++]                                      94F1
 120028  jmp 12004b                                          EE22

120029:
 120029  push sr, sr to [sp]                                 DC88
 12002A  push r2, r2 to [sp]                                 D488
 12002B  r3 = ds:[r1++]                                      96F1
 12002C  r4 = ds:[r1++]                                      98F1
 12002D  r2 = ds:[r1++]                                      94F1
 12002E  bp = ds:[r1++]                                      9AF1
 12002F  push r1, r1 to [sp]                                 D288
 120030  r1 = ds:[r1]                                        92E1
 120031  cmp r1, 00                                          4240
 120032  je 120046                                           5E13
 120033  r2 = r2 lsl 4                                       955A
 120034  r2 = r2 lsl 4                                       955A
 120035  r2 = r2 lsl 2                                       954A
 120036  r3 = r3 lsl 4                                       975B
 120037  r3 = r3 lsl 4                                       975B
 120038  r3 = r3 lsl 2                                       974B
 120039  sr &= 3f                                            BC7F
 12003A  sr |= r2                                            AD02

12003b:
 12003B  r2 = ds:[bp++]                                      94F5
 12003C  push sr, sr to [sp]                                 DC88
 12003D  sr &= 3f                                            BC7F
 12003E  sr |= r3                                            AD03
 12003F  ds:[r4++] = r2                                      D4F4
 120040  r3 = sr & fc00                                      B70E FC00
 120042  r1 -= 01                                            2241
 120043  pop sr, sr from [sp]                                9A88
 120044  cmp r1, 00                                          4240
 120045  jne 12003b                                          4E4B

120046:
 120046  pop r1, r1 from [sp]                                9088
 120047  r1 += 01                                            0241
 120048  pop r2, r2 from [sp]                                9288
 120049  pop sr, sr from [sp]                                9A88
 12004A  r2 -= 01                                            2441

12004b:
 12004B  cmp r2, 00                                          4440
 12004C  jne 120029                                          4E64
 12004D  ds = 12                                             FE12
 12004E  r1 = 0060                                           9309 0060
 120050  r2 = 2fea                                           950A 2FEA
 120052  r3 = 0016                                           970B 0016

120054:
 120054  r4 = ds:[r1++]                                      98F1
 120055  [r2++] = r4                                         D8D2
 120056  r3 -= 01                                            2641
 120057  jne 120054                                          4E44
 120058  call 126807                                         F052 6807

infinite:
 12005A  jmp infinite                                          EE41
