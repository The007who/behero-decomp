push bp, bp to [sp]
bp = sp + 0001
push r1, r4 to [sp]

r1 = 007f
[7850] = r1 ; NF_Ctrl
r1 = c200
[7855] = r1 ; NF_INT_Ctrl
r3 = 0090
[7851] = r3 ; NF_CMD

nop
nop

r1 = 00
[7852] = r1 ; NF_AddrL
[7853] = r1 ; NF_AddrH

call 000bee ; wait NAND ready

r1 = [7854] ; NF_Data
r1 = r1 & 00ff
r2 = [7854]
r2 = r2 lsl 4
r1 |= r2 lsl 4
r4 = [7854]
r4 = r4 & 00ff
r2 = [7854]
r2 = r2 lsl 4
r4 |= r2 lsl 4
r3 = [bp+03]
[r3++] = r1
[r3++] = r4
pop r1, r4 from [sp]
pop bp, bp from [sp]
retf
