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

r4 = 











