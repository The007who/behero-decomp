 088BE1  push bp, bp to [sp]                                 DA88
 088BE2  sp -= 09                                            2049
 088BE3  bp = sp + 0001                                      0B08 0001
 088BE5  r4 = 00                                             9840
 088BE6  [bp+00] = r4                                        D800
 088BE7  r4 = 00                                             9840
 088BE8  [bp+01] = r4                                        D801
 088BE9  sp -= 01                                            2041
 088BEA  r3 = 00                                             9640
 088BEB  r4 = sp + 0001                                      0908 0001
 088BED  [r4] = r3                                           D6C4
 088BEE  call 0878c1                                         F048 78C1
 088BF0  sp += 01                                            0041
 088BF1  cmp r1, 2a                                          426A
 088BF2  je 88bf6                                            5E03
 088BF3  r1 = 00                                             9240
 088BF4  sp += 09                                            0049
 088BF5  pop bp, pc from [sp]                                9898
 088BF6  sp -= 01                                            2041
 088BF7  r3 = 01                                             9641
 088BF8  r4 = sp + 0001                                      0908 0001
 088BFA  [r4] = r3                                           D6C4
 088BFB  call 0878c1                                         F048 78C1
 088BFD  sp += 01                                            0041
 088BFE  cmp r1, 2a                                          426A
 088BFF  je 88c03                                            5E03
 088C00  r1 = 00                                             9240
 088C01  sp += 09                                            0049
 088C02  pop bp, pc from [sp]                                9898
 088C03  sp -= 01                                            2041
 088C04  r3 = 02                                             9642
 088C05  r4 = sp + 0001                                      0908 0001
 088C07  [r4] = r3                                           D6C4
 088C08  call 0878c1                                         F048 78C1
 088C0A  sp += 01                                            0041
 088C0B  ds = 04                                             FE04
 088C0C  r4 = 6c03                                           990C 6C03
 088C0E  ds:[r4] = r1                                        D2E4
 088C0F  r4 = -4555                                          690C 4555
 088C11  [bp+01] = r4                                        D801
 088C12  ds = 04                                             FE04
 088C13  r4 = 6c03                                           990C 6C03
 088C15  r3 = ds:[r4]                                        96E4
 088C16  ds = 04                                             FE04
 088C17  r4 = 6c02                                           990C 6C02
 088C19  r4 = ds:[r4]                                        98E4
 088C1A  r4 = r4 lsl 1                                       9944
 088C1B  r4 += 04                                            0844
 088C1C  MR = r3*r4, uu                                      E60C
 088C1D  r4 = r3                                             9903
 088C1E  r4 += 03                                            0843
 088C1F  [bp+00] = r4                                        D800
 088C20  ds = 04                                             FE04
 088C21  r4 = 6c00                                           990C 6C00
 088C23  r3 = ds:[r4++]                                      96F4
 088C24  r4 = ds:[r4]                                        98E4
 088C25  [bp+02] = r3                                        D602
 088C26  [bp+03] = r4                                        D803
 088C27  r4 = 00                                             9840
 088C28  [bp+04] = r4                                        D804
 088C29  r3 = [bp+04]                                        9604
 088C2A  ds = 04                                             FE04
 088C2B  r4 = 6c02                                           990C 6C02
 088C2D  r4 = ds:[r4]                                        98E4
 088C2E  cmp r3, r4                                          4704
 088C2F  jae 88c5f                                           1E2F
 088C30  r3 = [bp+00]                                        9600
 088C31  r4 = r3 + 0001                                      090B 0001
 088C33  [bp+00] = r4                                        D800
 088C34  sp -= 01                                            2041
 088C35  r4 = sp + 0001                                      0908 0001
 088C37  [r4] = r3                                           D6C4
 088C38  call 0878c1                                         F048 78C1
 088C3A  [bp+05] = r1                                        D205
 088C3B  r3 = [bp+00]                                        9600
 088C3C  r4 = r3 + 0001                                      090B 0001
 088C3E  [bp+00] = r4                                        D800
 088C3F  r4 = sp + 0001                                      0908 0001
 088C41  [r4] = r3                                           D6C4
 088C42  call 0878c1                                         F048 78C1
 088C44  sp += 01                                            0041
 088C45  [bp+06] = r1                                        D206
 088C46  r4 = [bp+06]                                        9806
 088C47  r4 = r4 lsl 4                                       995C
 088C48  r4 = r4 lsl 4                                       995C
 088C49  r4 |= [bp+05]                                       A805
 088C4A  [bp+07] = r4                                        D807
 088C4B  r3 = [bp+02]                                        9602
 088C4C  r4 = [bp+03]                                        9803
 088C4D  r2 = [bp+07]                                        9407
 088C4E  ds = r4                                             F02C
 088C4F  ds:[r3] = r2                                        D4E3
 088C50  r3 += 01                                            0641
 088C51  r4 += 00, carry                                     1840
 088C52  [bp+02] = r3                                        D602
 088C53  [bp+03] = r4                                        D803
 088C54  r3 = [bp+01]                                        9601
 088C55  r4 = 0d                                             984D
 088C56  MR = r3*r4, uu                                      E60C
 088C57  r4 = r3                                             9903
 088C58  r4 += [bp+07]                                       0807
 088C59  r4 += 0d                                            084D
 088C5A  [bp+01] = r4                                        D801
 088C5B  r4 = [bp+04]                                        9804
 088C5C  r4 += 01                                            0841
 088C5D  [bp+04] = r4                                        D804
 088C5E  jmp 88c29                                           EE76
 088C5F  r3 = [bp+00]                                        9600
 088C60  r4 = r3 + 0001                                      090B 0001
 088C62  [bp+00] = r4                                        D800
 088C63  sp -= 01                                            2041
 088C64  r4 = sp + 0001                                      0908 0001
 088C66  [r4] = r3                                           D6C4
 088C67  call 0878c1                                         F048 78C1
 088C69  [bp+08] = r1                                        D208
 088C6A  r3 = [bp+00]                                        9600
 088C6B  r4 = r3 + 0001                                      090B 0001
 088C6D  [bp+00] = r4                                        D800
 088C6E  r4 = sp + 0001                                      0908 0001
 088C70  [r4] = r3                                           D6C4
 088C71  call 0878c1                                         F048 78C1
 088C73  sp += 01                                            0041
 088C74  r4 = r1 lsl 4                                       9959
 088C75  r4 = r4 lsl 4                                       995C
 088C76  r4 |= [bp+08]                                       A808
 088C77  [bp+08] = r4                                        D808
 088C78  r3 = [bp+01]                                        9601
 088C79  r4 = [bp+08]                                        9808
 088C7A  cmp r3, r4                                          4704
 088C7B  jne 88c7f                                           4E03
 088C7C  r1 = 01                                             9241
 088C7D  sp += 09                                            0049
 088C7E  pop bp, pc from [sp]                                9898
 088C7F  r4 = 01                                             9841
 088C80  ds = 04                                             FE04
 088C81  r3 = 6c03                                           970B 6C03
 088C83  r4 -= ds:[r3]                                       28E3
 088C84  ds = 04                                             FE04
 088C85  r3 = 6c03                                           970B 6C03
 088C87  ds:[r3] = r4                                        D8E3
 088C88  r4 = -4555                                          690C 4555
 088C8A  [bp+01] = r4                                        D801
 088C8B  ds = 04                                             FE04
 088C8C  r4 = 6c03                                           990C 6C03
 088C8E  r3 = ds:[r4]                                        96E4
 088C8F  ds = 04                                             FE04
 088C90  r4 = 6c02                                           990C 6C02
 088C92  r4 = ds:[r4]                                        98E4
 088C93  r4 = r4 lsl 1                                       9944
 088C94  r4 += 04                                            0844
 088C95  MR = r3*r4, uu                                      E60C
 088C96  r4 = r3                                             9903
 088C97  r4 += 03                                            0843
 088C98  [bp+00] = r4                                        D800
 088C99  ds = 04                                             FE04
 088C9A  r4 = 6c00                                           990C 6C00
 088C9C  r3 = ds:[r4++]                                      96F4
 088C9D  r4 = ds:[r4]                                        98E4
 088C9E  [bp+02] = r3                                        D602
 088C9F  [bp+03] = r4                                        D803
 088CA0  r4 = 00                                             9840
 088CA1  [bp+04] = r4                                        D804
 088CA2  r3 = [bp+04]                                        9604
 088CA3  ds = 04                                             FE04
 088CA4  r4 = 6c02                                           990C 6C02
 088CA6  r4 = ds:[r4]                                        98E4
 088CA7  cmp r3, r4                                          4704
 088CA8  jae 88cd8                                           1E2F
 088CA9  r3 = [bp+00]                                        9600
 088CAA  r4 = r3 + 0001                                      090B 0001
 088CAC  [bp+00] = r4                                        D800
 088CAD  sp -= 01                                            2041
 088CAE  r4 = sp + 0001                                      0908 0001
 088CB0  [r4] = r3                                           D6C4
 088CB1  call 0878c1                                         F048 78C1
 088CB3  [bp+05] = r1                                        D205
 088CB4  r3 = [bp+00]                                        9600
 088CB5  r4 = r3 + 0001                                      090B 0001
 088CB7  [bp+00] = r4                                        D800
 088CB8  r4 = sp + 0001                                      0908 0001
 088CBA  [r4] = r3                                           D6C4
 088CBB  call 0878c1                                         F048 78C1
 088CBD  sp += 01                                            0041
 088CBE  [bp+06] = r1                                        D206
 088CBF  r4 = [bp+06]                                        9806
 088CC0  r4 = r4 lsl 4                                       995C
 088CC1  r4 = r4 lsl 4                                       995C
 088CC2  r4 |= [bp+05]                                       A805
 088CC3  [bp+07] = r4                                        D807
 088CC4  r3 = [bp+02]                                        9602
 088CC5  r4 = [bp+03]                                        9803
 088CC6  r2 = [bp+07]                                        9407
 088CC7  ds = r4                                             F02C
 088CC8  ds:[r3] = r2                                        D4E3
 088CC9  r3 += 01                                            0641
 088CCA  r4 += 00, carry                                     1840
 088CCB  [bp+02] = r3                                        D602
 088CCC  [bp+03] = r4                                        D803
 088CCD  r3 = [bp+01]                                        9601
 088CCE  r4 = 0d                                             984D
 088CCF  MR = r3*r4, uu                                      E60C
 088CD0  r4 = r3                                             9903
 088CD1  r4 += [bp+07]                                       0807
 088CD2  r4 += 0d                                            084D
 088CD3  [bp+01] = r4                                        D801
 088CD4  r4 = [bp+04]                                        9804
 088CD5  r4 += 01                                            0841
 088CD6  [bp+04] = r4                                        D804
 088CD7  jmp 88ca2                                           EE76
 088CD8  r3 = [bp+00]                                        9600
 088CD9  r4 = r3 + 0001                                      090B 0001
 088CDB  [bp+00] = r4                                        D800
 088CDC  sp -= 01                                            2041
 088CDD  r4 = sp + 0001                                      0908 0001
 088CDF  [r4] = r3                                           D6C4
 088CE0  call 0878c1                                         F048 78C1
 088CE2  [bp+08] = r1                                        D208
 088CE3  r3 = [bp+00]                                        9600
 088CE4  r4 = r3 + 0001                                      090B 0001
 088CE6  [bp+00] = r4                                        D800
 088CE7  r4 = sp + 0001                                      0908 0001
 088CE9  [r4] = r3                                           D6C4
 088CEA  call 0878c1                                         F048 78C1
 088CEC  sp += 01                                            0041
 088CED  r4 = r1 lsl 4                                       9959
 088CEE  r4 = r4 lsl 4                                       995C
 088CEF  r4 |= [bp+08]                                       A808
 088CF0  [bp+08] = r4                                        D808
 088CF1  r3 = [bp+01]                                        9601
 088CF2  r4 = [bp+08]                                        9808
 088CF3  cmp r3, r4                                          4704
 088CF4  jne 88cf8                                           4E03
 088CF5  r1 = 01                                             9241
 088CF6  sp += 09                                            0049
 088CF7  pop bp, pc from [sp]                                9898
 088CF8  r1 = 00                                             9240
 088CF9  sp += 09                                            0049
 088CFA  pop bp, pc from [sp]                                9898
