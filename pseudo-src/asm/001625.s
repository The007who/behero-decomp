push bp, bp to [sp]
bp = sp + 0001
push r1, r4 to [sp]
r1 = [bp+03]
r2 = [bp+04]
r1 = r1 lsl 4
r2 = r2 rol 4
r1 = r1 lsl 4
r2 = r2 rol 4
r3 = [bp+06]
r4 = [bp+07]
bp = [bp+05]

loop:
call 001640
r3 = r3 + 0100
r4 += 00, carry
r1 = r1 + 0100
r2 += 00, carry
bp -= 01
jne loop

pop r1, r4 from [sp]
pop bp, bp from [sp]
r1 = 00
retf
