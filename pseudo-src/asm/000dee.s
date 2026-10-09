push bp, bp to [sp]
bp = sp + 0001
r2 = 00ff
r3 = 7851
r4 = 00
ds = r4
ds:[r3] = r2 ; NF_CMD = 00ff
call 000bee ; wait NAND ready
pop bp, pc from [sp]
