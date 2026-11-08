push bp, bp to [sp]
sp -= 05
bp = sp + 0001
r4 = 00
[bp+00] = r4
; [0, ?, ?, ?, ?]
; bp

call 000de4 ; P_BCH_Control = 0
call 000dee ; NF_CMD = 00ff

call 0012ff ; returns r1 value
[bp+01] = r1

r4 = [bp+01]
cmp r4, 00

je skip:
infinite:
jmp infinite
skip:

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

0b19:
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

0b28:
r4 = 05
[bp+02] = r4

0b2a:
ds = 00
r4 = 0016
r3 = ds:[r4++]
r4 = ds:[r4]
r3 += 0b
r4 += 00, carry
ds = r4
r3 = ds:[r3]
r4 = [bp+02]
cmp r3, r4
ja 0b38
goto 000bd7

0b38:
ds = 00
r4 = 0016
r3 = ds:[r4++]
r4 = ds:[r4]
r3 += 02
r4 += 00, carry
ds = r4
r4 = ds:[r3]
cmp r4, fff3
je 0b79
sp -= 04
r3 = [bp+02]
r4 = sp + 0001
[r4] = r3
ds = 00
r4 = 0016
r3 = ds:[r4++]
r4 = ds:[r4]
r3 += 05
r4 += 00, carry
ds = r4
r2 = ds:[r3]
r3 = 00
r2 = r2 + ffff
r3 += 00, carry
ds = 00
r4 = 0016
r1 = ds:[r4++]
r4 = ds:[r4]
r1 += 05
r4 += 00, carry
ds = r4
r4 = ds:[r1]
r1 = 00
push r1, r1 to [sp]
push r2, r4 to [sp]
call 0016ed
sp += 04
r4 = sp + 0002
[r4] = r1
r2 = 00
r3 = 12
r4 = sp + 0003
[r4++] = r2
[r4] = r3
call 000e96
sp += 04
[bp+01] = r1
r4 = [bp+01]
cmp r4, 00
jne 0b77
goto 000bd7

0b77:
goto 000bd2

0b79:
r4 = 00
[bp+01] = r4
r4 = 00
[bp+03] = r4

0b7d:
r4 = [bp+03]
cmp r4, 007f
jbe 0b83
goto 000bcc

0b83:
sp -= 05
ds = 00
r4 = 0016
r3 = ds:[r4++]
r4 = ds:[r4]
r3 += 05
r4 += 00, carry
ds = r4
r2 = ds:[r3]
r4 = 09
r2 = r2 lsr r4
ds = 00
r4 = 0016
r3 = ds:[r4++]
r4 = ds:[r4]
r3 += 04
r4 += 00, carry
ds = r4
r3 = ds:[r3]
r4 = [bp+02]
MR = r3*r4, uu
MR = r2*r3, uu
r4 = r3
r4 += [bp+03]
r2 = 00
r3 = sp + 0001
[r3++] = r4
[r3] = r2
r3 = 00
r4 = sp + 0003
[r4] = r3
r4 = [bp+03]
r3 = r4 lsl 4
r3 = r3 lsl 4
r4 = 00
r4 += 12
r2 = sp + 0004
[r2++] = r3
[r2] = r4
call 001535
sp += 05
r1 |= [bp+01]
[bp+01] = r1
r4 = [bp+01]
cmp r4, 00
jne 0bc4
r3 = 00
r4 = 12
ds = r4
r4 = ds:[r3++]
[bp+04] = r4
r4 = ds:[r3]
cmp r4, 6e61
jne 0bc4
r4 = [bp+04]
cmp r4, 4750
je 0bc7

0bc4:
r4 = 01
[bp+00] = r4
jmp 0bcc

0bc7:
r4 = [bp+03]
r4 += 01
[bp+03] = r4
goto 000b7d

0bcc:
r4 = [bp+00]
cmp r4, 00
jne 0bd0
jmp 0bd7

0bd0:
r4 = 00
[bp+00] = r4

0bd2:
r4 = [bp+02]
r4 += 01
[bp+02] = r4
goto 000b2a

0bd7:
ds = 00
r4 = 0016
r3 = ds:[r4++]
r4 = ds:[r4]
r3 += 0b
r4 += 00, carry
ds = r4
r3 = ds:[r3]
r4 = [bp+02]
cmp r3, r4
ja 0be4

infinite:
jmp infinite

0be4:
r3 = 20
r4 = 12
goto mr
sp += 05
pop bp, pc from [sp]
