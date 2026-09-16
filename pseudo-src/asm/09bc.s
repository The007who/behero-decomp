; 09bc

push bp, bp to [sp] ; DA88
sp -= 12            ; 2052
bp = sp + 0001      ; 0B08 0001

r4 = 0d             ; 984D
[bp+00] = r4

r4 = 1fff
[bp+01] = r4

r4 = 01
[bp+02] = r4

loop:
r3 = [bp+02]
r4 = [bp+00]
cmp r3, r4
jge exit

r4 = [bp+02]
r3 = r4 asr 4
r3 = r3 asr 4
r3 = r3 asr 4
r3 = r3 asr 4

r1 = bp + 0003
r2 = 00
r4 += r1
r3 += r2, carry
ds = r3

r3 = 0
ds:[r4] = r3

r4 = [bp+02]
r4 += 01
[bp+02] = r4

jmp loop
exit:


r4 = [bp+00]
r3 = r4 asr 4
r3 = r3 asr 4
r3 = r3 asr 4
r3 = r3 asr 4

r1 = bp + 0003
r2 = 00
r4 += r1
r3 += r2, carry
ds = r3
r3 = 01
ds:[r4] = r3

r4 = [bp+00]
r3 = r4 asr 4
r3 = r3 asr 4
r3 = r3 asr 4
r3 = r3 asr 4

r1 = bp + 0003
r2 = 0
r4 += r1
r3 += r2, carry
ds = r3

r4 = ds:[r4]
[bp+03] = r4

r4 = 01
[bp+0d] = r4

r4 = [bp+0d]
[bp+0b] = r4

r4 = [bp+0b]
[bp+0a] = r4

r4 = [bp+0a]
[bp+08] = r4

r4 = [bp+08]
[bp+06] = r4

r4 = [bp+06]
[bp+05] = r4

r4 = [bp+05]
[bp+04] = r4

r4 = 01
[bp+11] = r4

r2 = 0
r3 = [bp+00]

r4 = r3 asr 4
r4 = r4 asr 4
r4 = r4 asr 4
r4 = r4 asr 4

r3 += [bp+15]
r4 += [bp+16], carry

ds = r4
ds:[r3] = r2
r4 = 0
[bp+02] = r4

big_back_jump:
r3 = [bp+02]
r4 = [bp+00]
cmp r3, r4
jl skip
goto big_forward_jump

skip:
r2 = [bp+11]
r3 = [bp+02]
r4 = r3 asr 4
r4 = r4 asr 4
r4 = r4 asr 4
r4 = r4 asr 4

r3 += [bp+15]
r4 += [bp+16], carry
ds = r4
ds:[r3] = r2

r2 = [bp+02]
r3 = [bp+02]
r4 = r3 asr 4
r4 = r4 asr 4
r4 = r4 asr 4
r4 = r4 asr 4

r3 += [bp+15]
r4 += [bp+16], carry
ds = r4
r3 = ds:[r3]
r4 = r3 asr 4
r4 = r4 asr 4
r4 = r4 asr 4
r4 = r4 asr 4

r3 += [bp+17]
r4 += [bp+18], carry
ds = r4
ds:[r3] = r2
r4 = [bp+02]
r3 = r4 asr 4
r3 = r3 asr 4
r3 = r3 asr 4
r3 = r3 asr 4

r1 = bp + 03
r2 = 0
r4 += r1
r3 += r2, carry
ds = r3
r4 = ds:[r4]
cmp r4, 0
je 0a55

r3 = [bp + 00]
r4 = r3 asr 4
r4 = r4 asr 4
r4 = r4 asr 4
r4 = r4 asr 4

r3 += [bp+15]
r4 += [bp+16], carry
ds = r4
r4 = ds:[r3]
r4 ^= [bp+11]
r2 = [bp+00]

r3 = r2 asr 4
r3 = r3 asr 4
r3 = r3 asr 4
r3 = r3 asr 4

r2 += [bp+15]
r3 += [bp+16], carry
ds = r3
ds:[r2] = r4

0a55:
r4 = [bp+11]
r4 = r4 lsl 1
[bp+11] = r4
r4 = [bp+02]
r4 += 01
[bp+02] = r4
goto big_back_jump

big_forward_jump:
