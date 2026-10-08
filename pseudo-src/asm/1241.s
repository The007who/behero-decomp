push bp, bp to [sp]
sp -= 0b
bp = sp + 0001
sp -= 02
r2 = bp + 0000
r3 = 00
r4 = sp + 0001
[r4++] = r2
[r4] = r3
call 0004a2
sp += 02
r3 = 00
ds = 00
r4 = 0002
ds:[r4] = r3
r4 = [bp+00]
[bp+02] = r4
r4 = 00
cmp r4, 00
jne 1266
r4 = [bp+02]
cmp r4, 58c2
jne 1266
r3 = 01
ds = 00
r4 = 0002
ds:[r4] = r3
r1 = 00
sp += 0b
pop bp, pc from [sp]
