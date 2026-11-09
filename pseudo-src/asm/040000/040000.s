r1 = 00                                             9240
r2 = 004a                                           950A 004A
[r2] = r1 ; [004a] = 0
sp = 6fdf                                           9108 6FDF
ds = 04                                             FE04
r1 = 0062                                           9309 0062
r2 = ds:[r1++]                                      94F1
jmp 4002d                                           EE22

04000B:
push sr, sr to [sp]
push r2, r2 to [sp]                                 D488
r3 = ds:[r1++]                                      96F1
r4 = ds:[r1++]                                      98F1
r2 = ds:[r1++]                                      94F1
bp = ds:[r1++]                                      9AF1
push r1, r1 to [sp]                                 D288
r1 = ds:[r1]                                        92E1
cmp r1, 00                                          4240
je 40028                                            5E13
r2 = r2 lsl 4                                       955A
r2 = r2 lsl 4                                       955A
r2 = r2 lsl 2                                       954A
r3 = r3 lsl 4                                       975B
r3 = r3 lsl 4                                       975B
r3 = r3 lsl 2                                       974B
sr &= 3f                                            BC7F
sr |= r2                                            AD02

04001D:
r2 = ds:[bp++]                                      94F5
push sr, sr to [sp]                                 DC88
sr &= 3f                                            BC7F
sr |= r3                                            AD03
ds:[r4++] = r2                                      D4F4
r3 = sr & fc00                                      B70E FC00
r1 -= 01                                            2241
pop sr, sr from [sp]                                9A88
cmp r1, 00                                          4240
jne 4001d                                           4E4B

040028:
 pop r1, r1 from [sp]                                9088
r1 += 01                                            0241
pop r2, r2 from [sp]                                9288
pop sr, sr from [sp]                                9A88
r2 -= 01                                            2441

04002D:
cmp r2, 00                                          4440
jne 4000b                                           4E64
call 0019fc                                         F040 19FC
ds = 04                                             FE04
r1 = 004c                                           9309 004C
r2 = 6fea                                           950A 6FEA
r3 = 0016                                           970B 0016

040038:
 r4 = ds:[r1++]
[r2++] = r4                                         D8D2
r3 -= 01                                            2641
jne 40038                                           4E44
r1 = [7820]                                         9311 7820
r1 = r1 & 00ff                                      B309 00FF
r1 = r1 | fd00                                      A309 FD00
[05] = r1                                           D3C5
r1 = 4750                                           9309 4750
[00] = r1                                           D3C0
call 040fef                                         F044 0FEF

infinite:
jmp infinite
nop                                                 F165
nop                                                 F165
reti                                                9A98
