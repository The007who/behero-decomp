; seems to do some initialisation for some data in 48100
; sets the following parameters
; 0x048102 = [1, 1, ?, 0, 0, 0, 0, 0, 0, 0, 0, 0]
push bp, bp to [sp]                                 DA88
bp = sp + 0001                                      0B08 0001

r3 =- 01                                            6641
ds = 04                                             FE04
r4 = 8104                                           990C 8104
ds:[r4] = r3 ; 48104 = -1(FFFF) this get modified later anyway

r2 = 00                                             9440
r3 = 00                                             9640
ds = 04                                             FE04
r4 = 8105                                           990C 8105
ds:[r4++] = r2 ; 48105 = 0
ds:[r4] = r3 ; 48106 = 0

r2 = 00                                             9440
r3 = 00                                             9640
ds = 04                                             FE04
r4 = 8107                                           990C 8107
ds:[r4++] = r2 ; 48107 = 0
ds:[r4] = r3 ; 48108 = 0

r2 = 00                                             9440
r3 = 00                                             9640
ds = 04                                             FE04
r4 = 8109                                           990C 8109
ds:[r4++] = r2 ; 48109 = 0
ds:[r4] = r3 ; 4810A = 0

r2 = 00                                             9440
r3 = 00                                             9640
ds = 04                                             FE04
r4 = 810d                                           990C 810D
ds:[r4++] = r2 ; 4810D = 0
ds:[r4] = r3 ; 4810E = 0

r2 = 00                                             9440
r3 = 00                                             9640
ds = 04                                             FE04
r4 = 810b                                           990C 810B
ds:[r4++] = r2 ; 4810B = 0
ds:[r4] = r3 ; 4810C = 0

r3 = 01                                             9641
ds = 04                                             FE04
r4 = 8102                                           990C 8102
ds:[r4] = r3 ; 48102 = 1

sp -= 01                                            2041
ds = 04                                             FE04
r4 = 1ffd                                           990C 1FFD
r3 = ds:[r4]                                        96E4
r4 = sp + 0001                                      0908 0001
[r4] = r3                                           D6C4

; modify 48103 and 48103
call 0893cf                                         F048 93CF
sp += 01                                            0041

pop bp, pc from [sp]                                9898
push bp, bp to [sp]                                 DA88
