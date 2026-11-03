 0876C0  push bp, bp to [sp]                                 DA88
 0876C1  bp = sp + 0001                                      0B08 0001
 0876C3  sp -= 01                                            2041
 0876C4  r3 = 01                                             9641
 0876C5  r4 = sp + 0001                                      0908 0001
 0876C7  [r4] = r3                                           D6C4
 0876C8  call 08765a ; arbitrary wait
 0876CA  r3 = 7879                                           970B 7879
 0876CC  r4 = 00                                             9840
 0876CD  ds = r4                                             F02C
 0876CE  r4 = ds:[r3]                                        98E3
 0876CF  r2 = r4 & ffef                                      B50C FFEF
 0876D1  r3 = 7879                                           970B 7879
 0876D3  r4 = 00                                             9840
 0876D4  ds = r4                                             F02C
 0876D5  ds:[r3] = r2                                        D4E3
 0876D6  r3 = 01                                             9641
 0876D7  r4 = sp + 0001                                      0908 0001
 0876D9  [r4] = r3                                           D6C4
 0876DA  call 08765a ; arbitrary wait
 0876DC  r3 = 7879                                           970B 7879
 0876DE  r4 = 00                                             9840
 0876DF  ds = r4                                             F02C
 0876E0  r4 = ds:[r3]                                        98E3
 0876E1  r4 |= 08                                            A848
 0876E2  r2 = 7879                                           950A 7879
 0876E4  r3 = 00                                             9640
 0876E5  ds = r3                                             F02B
 0876E6  ds:[r2] = r4                                        D8E2
 0876E7  r3 = 01                                             9641
 0876E8  r4 = sp + 0001                                      0908 0001
 0876EA  [r4] = r3                                           D6C4
 0876EB  call 08765a ; arbitrary wait
 0876ED  r3 = 7879                                           970B 7879
 0876EF  r4 = 00                                             9840
 0876F0  ds = r4                                             F02C
 0876F1  r4 = ds:[r3]                                        98E3
 0876F2  r4 |= 10                                            A850
 0876F3  r2 = 7879                                           950A 7879
 0876F5  r3 = 00                                             9640
 0876F6  ds = r3                                             F02B
 0876F7  ds:[r2] = r4                                        D8E2
 0876F8  r3 = 01                                             9641
 0876F9  r4 = sp + 0001                                      0908 0001
 0876FB  [r4] = r3                                           D6C4
 0876FC  call 08765a ; arbitrary wait
 0876FE  r3 = 7879                                           970B 7879
 087700  r4 = 00                                             9840
 087701  ds = r4                                             F02C
 087702  r4 = ds:[r3]                                        98E3
 087703  r2 = r4 & fff7                                      B50C FFF7
 087705  r3 = 7879                                           970B 7879
 087707  r4 = 00                                             9840
 087708  ds = r4                                             F02C
 087709  ds:[r3] = r2                                        D4E3
 08770A  r3 = 0064                                           970B 0064
 08770C  r4 = sp + 0001                                      0908 0001
 08770E  [r4] = r3                                           D6C4
 08770F  call 08765a ; arbitrary wait
 087711  sp += 01                                            0041
 087712  pop bp, pc from [sp]                                9898
