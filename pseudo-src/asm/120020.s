int off
fir_mov off
sp = 2fe0
ds = 12
r1 = 0076
r2 = ds:[r1++]
jmp 12004b

120029:
push sr, sr to [sp]
push r2, r2 to [sp]
r3 = ds:[r1++]
r4 = ds:[r1++]
r2 = ds:[r1++]
bp = ds:[r1++]
push r1, r1 to [sp]
r1 = ds:[r1]
cmp r1, 00
je 120046
r2 = r2 lsl 4
r2 = r2 lsl 4
r2 = r2 lsl 2
r3 = r3 lsl 4
r3 = r3 lsl 4
r3 = r3 lsl 2
sr &= 3f
sr |= r2

12003b:
r2 = ds:[bp++]
push sr, sr to [sp]
sr &= 3f
sr |= r3
ds:[r4++] = r2
r3 = sr & fc00
r1 -= 01
pop sr, sr from [sp]
cmp r1, 00
jne 12003b

120046:
pop r1, r1 from [sp]
r1 += 01
pop r2, r2 from [sp]
pop sr, sr from [sp]
r2 -= 01

12004b:
cmp r2, 00
jne 120029
ds = 12
r1 = 0060
r2 = 2fea
r3 = 0016

120054:
r4 = ds:[r1++]
[r2++] = r4
r3 -= 01
jne 120054
call 126807

infinite:
jmp infinite
