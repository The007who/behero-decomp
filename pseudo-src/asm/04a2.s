push bp, bp to [sp]
bp = sp + 0001
push r1, r4 to [sp]
r1 = 007f
[7850] = r1
r1 = c200
[7855] = r1
r3 = 0090
[7851] = r3
nop
nop
r1 = 00
[7852] = r1
[7853] = r1
call 000bee
r1 = [7854]
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
