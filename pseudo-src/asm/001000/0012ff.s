// return value either 00 or -e1
push bp, bp to [sp]
sp -= 0b
bp = sp + 0001

;   [ ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?]
; sp bp

r2 = 0003
r3 = 00
ds = 00
r4 = 0016

ds:[r4++] = r2 ; [0016] = 3
ds:[r4] = r3 ; [0017] = 0

call 001241

[bp+00] = r1
; ? [r1, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?]
; sp bp

r4 = [bp+00]
cmp r4, 00
je skip1

r1 = -00e1 ; ff1f
sp += 0b
pop bp, pc from [sp]

skip1:
ds = 00
r4 = 0002
r4 = ds:[r4]
cmp r4, 00
je skip2 ; [0002] == 0

r1 = 00
sp += 0b
pop bp, pc from [sp]

skip2:
ds = 00
r4 = 0016
r3 = ds:[r4++]
r4 = ds:[r4]
r3 += 03
r4 += 00, carry
ds = r4
r3 = ds:[r3]

r1 = 00
ds = 00
r4 = 0016
r2 = ds:[r4++]
r4 = ds:[r4]
r2 += 04
r4 += 00, carry
ds = r4
r4 = ds:[r2]

r2 = 00
push r2, r2 to [sp]
push r4, r4 to [sp]
push r1, r1 to [sp]
push r3, r3 to [sp]
call 001508 ; [?, ?, ?, 0]
sp += 04

[bp+01] = r1
[bp+02] = r2
r4 = [bp+01]
r3 = [bp+02]
r4 -= 01
r3 -= 00, carry
[bp+01] = r4
[bp+02] = r3
r4 = [bp+01]
[bp+05] = r4
r4 = [bp+02]
[bp+06] = r4
cmp r4, 00ff
jb 1357

r4 = [bp+06]
cmp r4, 00ff
jne 1350

r4 = [bp+05]
cmp r4, ffff
jbe 1357

1350:
r3 = -3200
ds = 00
r4 = 0019
ds:[r4] = r3 ; [0019] = -3200
jmp 1385

1357:
r4 = [bp+01]
[bp+07] = r4
r4 = [bp+02]
[bp+08] = r4
cmp r4, 00
jb 136b
r4 = [bp+08]
cmp r4, 00
jne 1364
r4 = [bp+07]
cmp r4, ffff
jbe 136b

1364:
r3 = -3a00
ds = 00
r4 = 0019
ds:[r4] = r3
jmp 1385

136b:
r4 = [bp+01]
[bp+09] = r4
r4 = [bp+02]
[bp+0a] = r4
cmp r4, 00
jb 137f
r4 = [bp+0a]
cmp r4, 00
jne 1378
r4 = [bp+09]
cmp r4, 00ff
jbe 137f

1378:
r3 = -3e00
ds = 00
r4 = 0019
ds:[r4] = r3
jmp 1385

137f:
r3 = -4000
ds = 00
r4 = 0019
ds:[r4] = r3

1385:
ds = 00
r4 = 0016
r3 = ds:[r4++]
r4 = ds:[r4]
r3 += 05
r4 += 00, carry
ds = r4
r4 = ds:[r3]
ds = 00
r3 = 0016
r2 = ds:[r3++]
r3 = ds:[r3]
r2 += 06
r3 += 00, carry
ds = r3
r3 = ds:[r2]
r4 += r3
cmp r4, 0210
je 13c8
ds = 00
r4 = 0016
r3 = ds:[r4++]
r4 = ds:[r4]
r3 += 05
r4 += 00, carry
ds = r4
r4 = ds:[r3]
ds = 00
r3 = 0016
r2 = ds:[r3++]
r3 = ds:[r3]
r2 += 06
r3 += 00, carry
ds = r3
r3 = ds:[r2]
r4 += r3
cmp r4, 0840
je 13d9
ds = 00
r4 = 0016
r3 = ds:[r4++]
r4 = ds:[r4]
r3 += 05
r4 += 00, carry
ds = r4
r4 = ds:[r3]
ds = 00
r3 = 0016
r2 = ds:[r3++]
r3 = ds:[r3]
r2 += 06
r3 += 00, carry
ds = r3
r3 = ds:[r2]
r4 += r3
cmp r4, 1080
je 13ea
jmp 13fb

13c8:
r3 = 006f
ds = 00
r4 = 0018
ds:[r4] = r3
r3 = 21
ds = 00
r4 = 001a
ds:[r4] = r3
r3 = 31
ds = 00
r4 = 001b
ds:[r4] = r3
jmp 13fb

13d9:
r3 = 006f
ds = 00
r4 = 0018
ds:[r4] = r3
r3 = 27
ds = 00
r4 = 001a
ds:[r4] = r3
r3 = 37
ds = 00
r4 = 001b
ds:[r4] = r3
jmp 13fb

13ea:
r3 = 006f
ds = 00
r4 = 0018
ds:[r4] = r3
r3 = 2b
ds = 00
r4 = 001a
ds:[r4] = r3
r3 = 3b
ds = 00
r4 = 001b
ds:[r4] = r3
jmp 13fb ; ???

13fb:
ds = 00
r4 = 0016
r3 = ds:[r4++]
r4 = ds:[r4]
r3 += 07
r4 += 00, carry
ds = r4
r2 = ds:[r3]
ds = 00
r4 = 0016
r3 = ds:[r4++]
r4 = ds:[r4]
r3 += 0a
r4 += 00, carry
ds = r4
r4 = ds:[r3]
cmp r2, r4
je 141e
ds = 00
r4 = 0016
r3 = ds:[r4++]
r4 = ds:[r4]
r3 += 0a
r4 += 00, carry
ds = r4
r4 = ds:[r3]
cmp r4, 01
je 141e
r1 = -00d1
sp += 0b
pop bp, pc from [sp]

141e:
ds = 00
r4 = 0016
r3 = ds:[r4++]
r4 = ds:[r4]
r3 += 02
r4 += 00, carry
ds = r4
r4 = ds:[r3]
cmp r4, fff1
je 1444
ds = 00
r4 = 0016
r3 = ds:[r4++]
r4 = ds:[r4]
r3 += 02
r4 += 00, carry
ds = r4
r4 = ds:[r3]
cmp r4, fff2
je 146a
ds = 00
r4 = 0016
r3 = ds:[r4++]
r4 = ds:[r4]
r3 += 02
r4 += 00, carry
ds = r4
r4 = ds:[r3]
cmp r4, fff3
je 147e
goto 001492

1444:
r3 = 00
ds = 00
r4 = 001c
ds:[r4] = r3
ds = 00
r4 = 0016
r3 = ds:[r4++]
r4 = ds:[r4]
r3 += 04
r4 += 00, carry
ds = r4
r4 = ds:[r3]
r4 -= 01
r2 = 00
ds = 00
r3 = 001d
ds:[r3++] = r4
ds:[r3] = r2
ds = 00
r4 = 0016
r3 = ds:[r4++]
r4 = ds:[r4]
r3 += 04
r4 += 00, carry
ds = r4
r4 = ds:[r3]
r4 -= 03
r2 = 00
ds = 00
r3 = 001f
ds:[r3++] = r4
ds:[r3] = r2
jmp 1496

146a:
r3 = 00
ds = 00
r4 = 001c
ds:[r4] = r3
r2 = 00
r3 = 00
ds = 00
r4 = 001d
ds:[r4++] = r2
ds:[r4] = r3
r2 = 01
r3 = 00
ds = 00
r4 = 001f
ds:[r4++] = r2
ds:[r4] = r3
jmp 1496

147e:
r3 = 05
ds = 00
r4 = 001c
ds:[r4] = r3
r2 = 00
r3 = 00
ds = 00
r4 = 001d
ds:[r4++] = r2
ds:[r4] = r3
r2 = 01
r3 = 00
ds = 00
r4 = 001f
ds:[r4++] = r2
ds:[r4] = r3
jmp 1496

1492:
r1 = -00e1
sp += 0b
pop bp, pc from [sp]

1496:
ds = 00
r4 = 0016
r3 = ds:[r4++]
r4 = ds:[r4]
r3 += 04
r4 += 00, carry
ds = r4
r2 = ds:[r3]
ds = 00
r4 = 0016
r3 = ds:[r4++]
r4 = ds:[r4]
r3 += 05
r4 += 00, carry
ds = r4
r4 = ds:[r3]
r3 = 09
r4 = r4 lsr r3
MR = r2*r4, uu
[bp+03] = r3
r4 = 00
[bp+04] = r4

14ae:
r4 = [bp+03]
r4 = r4 lsr 1
[bp+03] = r4
r4 = [bp+03]
cmp r4, 00
jne 14b5
jmp 14b9

14b5:
r4 = [bp+04]
r4 += 01
[bp+04] = r4
jmp 14ae

14b9:
r3 = [bp+04]
ds = 00
r4 = 0021
ds:[r4] = r3
ds = 00
r4 = 0016
r3 = ds:[r4++]
r4 = ds:[r4]
r3 += 04
r4 += 00, carry
ds = r4
r4 = ds:[r3]
[bp+03] = r4
r4 = 00
[bp+04] = r4

14ca:
r4 = [bp+03]
r4 = r4 lsr 1
[bp+03] = r4
r4 = [bp+03]
cmp r4, 00
jne 14d1
jmp 14d5

14d1:
r4 = [bp+04]
r4 += 01
[bp+04] = r4
jmp 14ca

14d5:
r3 = [bp+04]
ds = 00
r4 = 0022
ds:[r4] = r3
ds = 00
r4 = 0016
r3 = ds:[r4++]
r4 = ds:[r4]
r3 += 05
r4 += 00, carry
ds = r4
r4 = ds:[r3]
r3 = 09
r4 = r4 lsr r3
[bp+03] = r4
r4 = 00
[bp+04] = r4

14e8:
r4 = [bp+03]
r4 = r4 lsr 1
[bp+03] = r4
r4 = [bp+03]
cmp r4, 00
jne 14ef
jmp 14f3

14ef:
r4 = [bp+04]
r4 += 01
[bp+04] = r4
jmp 14e8

14f3:
r3 = [bp+04]
ds = 00
r4 = 0023
ds:[r4] = r3
ds = 00
r4 = 0016
r3 = ds:[r4++]
r4 = ds:[r4]
r3 += 03
r4 += 00, carry
ds = r4
r3 = ds:[r3]
ds = 00
r4 = 0024
ds:[r4] = r3
r1 = 00
sp += 0b
pop bp, pc from [sp]
