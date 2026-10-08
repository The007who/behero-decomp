 push bp, bp to [sp]
 bp = sp + 0001
 r2 = 00
 r3 = 7856
 r4 = 00
 ds = r4
 ds:[r3] = r2 ; so [7856] = 0
 pop bp, pc from [sp]
