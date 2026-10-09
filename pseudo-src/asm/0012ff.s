// return value either 00 or -e1
push bp, bp to [sp]
sp -= 0b
bp = sp + 0001
r2 = 0003
r3 = 00
ds = 00
r4 = 0016
ds:[r4++] = r2
ds:[r4] = r3
call 001241
[bp+00] = r1

loop:
r4 = [bp+00]
cmp r4, 00
je skip

r1 = -00e1
sp += 0b
pop bp, pc from [sp]

skip:
ds = 00
r4 = 0002
r4 = ds:[r4]
cmp r4, 00
je loop

r1 = 00
sp += 0b
pop bp, pc from [sp]
