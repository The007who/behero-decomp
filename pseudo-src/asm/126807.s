push bp, bp to [sp]
sp -= 05
bp = sp + 0001
;    [?, ?, ?, ?, ?]
; sp bp

r3 = 1d
r4 = 12
[bp+00] = r3
[bp+01] = r4
; [1d, 12, ?, ?, ?]

r3 = [bp+00]
r4 = [bp+01]
ds = r4
r3 = ds:[r3] ; r3 = [1201d]

ds = 00
r4 = 0b53
ds:[r4] = r3 ; [0b53] = [1201d]

r3 = [bp+00]
r4 = [bp+01]
r3 += 01 ; = 1e
r4 += 00, carry
ds = r4
r3 = ds:[r3] ; r3 = [1201e]
ds = 00
r4 = 0b54
ds:[r4] = r3 ; [0b54] = [1201e]

r3 = [bp+00]
r4 = [bp+01]
r3 += 02 ; = 1f
r4 += 00, carry
ds = r4
r3 = ds:[r3] ; r3 = [1201f]
ds = 00
r4 = 0b55
ds:[r4] = r3 ; [0b55] = [1201f]

ds = 00
r4 = 0b54
r4 = ds:[r4]
r2 = 00
ds = 00
r3 = 0b56
ds:[r3++] = r4 ; [0b56] = [0b54]
ds:[r3] = r2 ; [0b57] = 00

ds = 00
r4 = 0b56
r4 = ds:[r4++] ; how does this even work
r2 = 00
ds = 00
r3 = 0b56
ds:[r3++] = r2
ds:[r3] = r4

ds = 00
r4 = 0b53
r3 = ds:[r4]
r4 = 00

ds = 00
r2 = 0b56
r3 |= ds:[r2++]
r4 |= ds:[r2]

ds = 00
r2 = 0b56
ds:[r2++] = r3
ds:[r2] = r4

call 12432a

[bp+02] = r1
r4 = [bp+02]
cmp r4, 00
je 126855

infinite:
jmp 126854

126855:
ds = 00
r4 = 0b56
r3 = ds:[r4++]
r4 = ds:[r4]
[bp+03] = r3
[bp+04] = r4
sp -= 05
r2 = 00
r3 = 00
r4 = sp + 0001
[r4++] = r2
[r4] = r3
ds = 00
r4 = 0b55
r3 = ds:[r4]
r4 = sp + 0003
[r4] = r3
r2 = [bp+03]
r3 = [bp+04]
r4 = sp + 0004
[r4++] = r2
[r4] = r3

call 1248dd

sp += 05
[bp+02] = r1
r4 = [bp+02]
cmp r4, 00
je 126878

infinite:
jmp 126877

126878:
r3 = [0b53]
r4 = [0b54]
goto mr
sp += 05
pop bp, pc from [sp]
