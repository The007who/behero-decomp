push bp, bp to [sp]
sp -= 05
bp = sp + 0001
r4 = 00
[bp+00] = r4

call 000de4
call 000dee

call 0012ff ; returns r1 value
[bp+01] = r1

r4 = [bp+01]

cmp r4, 00
je 0afc

jmp 0afb
ds = 00
r4 = 0002
r4 = ds:[r4]
cmp r4, 00
je 0b19
sp -= 05
r2 = 28
r3 = 00
r4 = sp + 0001
[r4++] = r2
[r4] = r3
r3 = 0080
r4 = sp + 0003
[r4] = r3
r2 = 00
r3 = 12
r4 = sp + 0004
[r4++] = r2
[r4] = r3
call 001625
sp += 05
goto 000be4
ds = 00
r4 = 0016
r3 = ds:[r4++]
r4 = ds:[r4]
r3 += 02
r4 += 00, carry
ds = r4
r4 = ds:[r3]
cmp r4, fff3
jne 0b28
r4 = 03
[bp+02] = r4
jmp 0b2a
