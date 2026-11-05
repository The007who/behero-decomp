; arbitrary wait(?)
push bp, bp to [sp]
sp -= 01
bp = sp + 0001

r4 = [bp+04]
r4 = r4 lsl 4
r4 = r4 lsl 4 ; * 256
[bp+04] = r4
r4 = 00
[bp+00] = r4

loop:
r3 = [bp+04]
r4 = [bp+00]
cmp r3, r4
jbe exit

nop
nop
nop
nop
nop
nop

r4 = [bp+00]
r4 += 01
[bp+00] = r4
jmp loop

exit:
sp += 01
pop bp, pc from [sp]
