 087674  push bp, bp to [sp]                                 DA88
 087675  bp = sp + 0001                                      0B08 0001

; enable bit 4 in IOD_Buffer
 087677  r3 = 7879                                           970B 7879
 087679  r4 = 00                                             9840
 08767A  ds = r4                                             F02C
 08767B  r4 = ds:[r3]                                        98E3
 08767C  r4 |= 08                                            A848
 08767D  r2 = 7879                                           950A 7879
 08767F  r3 = 00                                             9640
 087680  ds = r3                                             F02B
 087681  ds:[r2] = r4                                        D8E2

 087682  sp -= 01                                            2041
 087683  r3 = 01                                             9641
 087684  r4 = sp + 0001                                      0908 0001
 087686  [r4] = r3                                           D6C4
 087687  call 08765a ; arbitrary wait

; enable bit 5 in IOD_Buffer
 087689  r3 = 7879                                           970B 7879
 08768B  r4 = 00                                             9840
 08768C  ds = r4                                             F02C
 08768D  r4 = ds:[r3]                                        98E3
 08768E  r4 |= 10                                            A850
 08768F  r2 = 7879                                           950A 7879
 087691  r3 = 00                                             9640
 087692  ds = r3                                             F02B
 087693  ds:[r2] = r4                                        D8E2

 087694  r3 = 01                                             9641
 087695  r4 = sp + 0001                                      0908 0001
 087697  [r4] = r3                                           D6C4
 087698  call 08765a ; arbitrary wait

; zero out bit 5 in IOD_Buffer
 08769A  r3 = 7879                                           970B 7879
 08769C  r4 = 00                                             9840
 08769D  ds = r4                                             F02C
 08769E  r4 = ds:[r3]                                        98E3
 08769F  r2 = r4 & ffef                                      B50C FFEF
 0876A1  r3 = 7879                                           970B 7879
 0876A3  r4 = 00                                             9840
 0876A4  ds = r4                                             F02C
 0876A5  ds:[r3] = r2                                        D4E3

 0876A6  r3 = 01                                             9641
 0876A7  r4 = sp + 0001                                      0908 0001
 0876A9  [r4] = r3                                           D6C4
 0876AA  call 08765a ; arbitrary wait

; zero out bit 4 in IOD_Buffer
 0876AC  r3 = 7879                                           970B 7879
 0876AE  r4 = 00                                             9840
 0876AF  ds = r4                                             F02C
 0876B0  r4 = ds:[r3]                                        98E3
 0876B1  r2 = r4 & fff7                                      B50C FFF7
 0876B3  r3 = 7879                                           970B 7879
 0876B5  r4 = 00                                             9840
 0876B6  ds = r4                                             F02C
 0876B7  ds:[r3] = r2                                        D4E3

 0876B8  r3 = 01                                             9641
 0876B9  r4 = sp + 0001                                      0908 0001
 0876BB  [r4] = r3                                           D6C4
 0876BC  call 08765a ; arbitrary wait

 0876BE  sp += 01                                            0041
 0876BF  pop bp, pc from [sp]                                9898
