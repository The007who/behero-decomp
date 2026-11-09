; summary:
; disable bit 9 in IOB_Dir
; disable bit 9 in IOB_Attrib
; enable bit 9 in IOB_Data
; enable bit 8 in IOB_Dir
; enable bit 8 in IOB_Attrib
; enable bit 8 in IOB_Data
; disable bit 1 in MINT_Ctrl
; disable bit 5 in MINT_Ctrl
; 42a78 = FFFE
; 42a00 = 0
push bp, bp to [sp]                                 DA88
bp = sp + 0001                                      0B08 0001

r3 = 786a ; IOB_Dir
r4 = 00                                             9840
ds = r4                                             F02C
r4 = ds:[r3]                                        98E3
r2 = r4 & feff                                      B50C FEFF
r3 = 786a                                           970B 786A
r4 = 00                                             9840
ds = r4                                             F02C
ds:[r3] = r2 ; disable bit 9 in IOB_Dir

r3 = 786b ; IOB_Attrib
r4 = 00                                             9840
ds = r4                                             F02C
r4 = ds:[r3]                                        98E3
r2 = r4 & feff                                      B50C FEFF
r3 = 786b                                           970B 786B
r4 = 00                                             9840
ds = r4                                             F02C
ds:[r3] = r2 ; disable bit 9 in IOB_Attrib

r3 = 7868 ; IOB_Data
r4 = 00                                             9840
ds = r4                                             F02C
r4 = ds:[r3]                                        98E3
r2 = r4 | 0100                                      A50C 0100
r3 = 7868                                           970B 7868
r4 = 00                                             9840
ds = r4                                             F02C
ds:[r3] = r2 ; enable bit 9 in IOB_Data

r3 = 786a ; IOB_Dir
r4 = 00                                             9840
ds = r4                                             F02C
r4 = ds:[r3]                                        98E3
r2 = r4 | 0080                                      A50C 0080
r3 = 786a                                           970B 786A
r4 = 00                                             9840
ds = r4                                             F02C
ds:[r3] = r2 ; enable bit 8 in IOB_Dir

r3 = 786b ; IOB_Attrib
r4 = 00                                             9840
ds = r4                                             F02C
r4 = ds:[r3]                                        98E3
r2 = r4 | 0080                                      A50C 0080
r3 = 786b                                           970B 786B
r4 = 00                                             9840
ds = r4                                             F02C
ds:[r3] = r2 ; enable bit 8 in IOB_Attrib

r3 = 7868 ; IOB_Data
r4 = 00                                             9840
ds = r4                                             F02C
r4 = ds:[r3]                                        98E3
r2 = r4 | 0080                                      A50C 0080
r3 = 7868                                           970B 7868
r4 = 00                                             9840
ds = r4                                             F02C
ds:[r3] = r2 ; enable bit 8 in IOB_Data

r3 = 78a8 ; MINT_Ctrl
r4 = 00                                             9840
ds = r4                                             F02C
r4 = ds:[r3]                                        98E3
r2 = r4 & fffe                                      B50C FFFE
r3 = 78a8                                           970B 78A8
r4 = 00                                             9840
ds = r4                                             F02C
ds:[r3] = r2 ; disable bit 1 in MINT_Ctrl

r3 = 78a8 ; MINT_Ctrl
r4 = 00                                             9840
ds = r4                                             F02C
r4 = ds:[r3]                                        98E3
r2 = r4 & ffef                                      B50C FFEF
r3 = 78a8                                           970B 78A8
r4 = 00                                             9840
ds = r4                                             F02C
ds:[r3] = r2 ; disable bit 5 in MINT_Ctrl

r3 =- 02 ; FFFE
ds = 04                                             FE04
r4 = 2a78                                           990C 2A78
ds:[r4] = r3 ; 42a78 = FFFE
r3 = 00                                             9640
ds = 04                                             FE04
r4 = 2a00                                           990C 2A00
ds:[r4] = r3 ; 42a00 = 0

r1 = 00                                             9240
pop bp, pc from [sp]                                9898
