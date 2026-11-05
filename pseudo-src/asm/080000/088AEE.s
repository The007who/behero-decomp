 088AEE  push bp, bp to [sp]                                 DA88
 088AEF  bp = sp + 0001                                      0B08 0001
 088AF1  r2 = [bp+03]                                        9403
 088AF2  r3 = [bp+04]                                        9604
 088AF3  ds = 04                                             FE04
 088AF4  r4 = 6c00                                           990C 6C00
 088AF6  ds:[r4++] = r2                                      D4F4
 088AF7  ds:[r4] = r3                                        D6E4
 088AF8  r3 = [bp+05]                                        9605
 088AF9  ds = 04                                             FE04
 088AFA  r4 = 6c02                                           990C 6C02
 088AFC  ds:[r4] = r3                                        D6E4
 088AFD  call 087607                                         F048 7607
 088AFF  r4 = [bp+05]                                        9805
 088B00  r4 = r4 lsl 1                                       9944
 088B01  r4 += 05                                            0845
 088B02  cmp r4, 03ff                                        490C 03FF
 088B04  ja 88b06                                            9E01
 088B05  jmp 88b1c                                           EE16
 088B06  sp -= 05                                            2045
 088B07  r2 = ff61                                           950A FF61
 088B09  r3 = 06                                             9646
 088B0A  r4 = sp + 0001                                      0908 0001
 088B0C  [r4++] = r2                                         D4D4
 088B0D  [r4] = r3                                           D6C4
 088B0E  r3 = 23                                             9663
 088B0F  r4 = sp + 0003                                      0908 0003
 088B11  [r4] = r3                                           D6C4
 088B12  r2 = ffb2                                           950A FFB2
 088B14  r3 = 06                                             9646
 088B15  r4 = sp + 0004                                      0908 0004
 088B17  [r4++] = r2                                         D4D4
 088B18  [r4] = r3                                           D6C4
 088B19  call 0897c1                                         F048 97C1
 088B1B  sp += 05                                            0045
 088B1C  call 088be1                                         F048 8BE1
 088B1E  cmp r1, 00                                          4240
 088B1F  jne 88b34                                           4E14
 088B20  r3 = 00                                             9640
 088B21  ds = 04                                             FE04
 088B22  r4 = 6c03                                           990C 6C03
 088B24  ds:[r4] = r3                                        D6E4
 088B25  ds = 04                                             FE04
 088B26  r4 = 2b00                                           990C 2B00
 088B28  r4 = ds:[r4]                                        98E4
 088B29  r4 |= 08                                            A848
 088B2A  ds = 04                                             FE04
 088B2B  r3 = 2b00                                           970B 2B00
 088B2D  ds:[r3] = r4                                        D8E3
 088B2E  call 07aa95                                         F047 AA95
 088B30  call 088b35                                         F048 8B35
 088B32  call 088b35                                         F048 8B35
 088B34  pop bp, pc from [sp]                                9898
