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
000B2A  ds = 00
000B2B  r4 = 0016
000B2D  r3 = ds:[r4++]
000B2E  r4 = ds:[r4]
000B2F  r3 += 0b
000B30  r4 += 00, carry
000B31  ds = r4
000B32  r3 = ds:[r3]
000B33  r4 = [bp+02]
000B34  cmp r3, r4
000B35  ja 0b38
000B36  goto 000bd7

0b38:
000B38  ds = 00
000B39  r4 = 0016
000B3B  r3 = ds:[r4++]
000B3C  r4 = ds:[r4]
000B3D  r3 += 02
000B3E  r4 += 00, carry
000B3F  ds = r4
000B40  r4 = ds:[r3]
000B41  cmp r4, fff3
000B43  je 0b79
000B44  sp -= 04
000B45  r3 = [bp+02]
000B46  r4 = sp + 0001
000B48  [r4] = r3
000B49  ds = 00
000B4A  r4 = 0016
000B4C  r3 = ds:[r4++]
000B4D  r4 = ds:[r4]
000B4E  r3 += 05
000B4F  r4 += 00, carry
000B50  ds = r4
000B51  r2 = ds:[r3]
000B52  r3 = 00
000B53  r2 = r2 + ffff
000B55  r3 += 00, carry
000B56  ds = 00
000B57  r4 = 0016
000B59  r1 = ds:[r4++]
000B5A  r4 = ds:[r4]
000B5B  r1 += 05
000B5C  r4 += 00, carry
000B5D  ds = r4
000B5E  r4 = ds:[r1]
000B5F  r1 = 00
000B60  push r1, r1 to [sp]
000B61  push r2, r4 to [sp]
000B62  call 0016ed
000B64  sp += 04
000B65  r4 = sp + 0002
000B67  [r4] = r1
000B68  r2 = 00
000B69  r3 = 12
000B6A  r4 = sp + 0003
000B6C  [r4++] = r2
000B6D  [r4] = r3
000B6E  call 000e96
000B70  sp += 04
000B71  [bp+01] = r1
000B72  r4 = [bp+01]
000B73  cmp r4, 00
000B74  jne 0b77
000B75  goto 000bd7

0b77:
000B77  goto 000bd2

0b79:
000B79  r4 = 00
000B7A  [bp+01] = r4
000B7B  r4 = 00
000B7C  [bp+03] = r4

0b7d:
000B7D  r4 = [bp+03]
000B7E  cmp r4, 007f
000B80  jbe 0b83
000B81  goto 000bcc

0b83:
000B83  sp -= 05
000B84  ds = 00
000B85  r4 = 0016
000B87  r3 = ds:[r4++]
000B88  r4 = ds:[r4]
000B89  r3 += 05
000B8A  r4 += 00, carry
000B8B  ds = r4
000B8C  r2 = ds:[r3]
000B8D  r4 = 09
000B8E  r2 = r2 lsr r4
000B8F  ds = 00
000B90  r4 = 0016
000B92  r3 = ds:[r4++]
000B93  r4 = ds:[r4]
000B94  r3 += 04
000B95  r4 += 00, carry
000B96  ds = r4
000B97  r3 = ds:[r3]
000B98  r4 = [bp+02]
000B99  MR = r3*r4, uu
000B9A  MR = r2*r3, uu
000B9B  r4 = r3
000B9C  r4 += [bp+03]
000B9D  r2 = 00
000B9E  r3 = sp + 0001
000BA0  [r3++] = r4
000BA1  [r3] = r2
000BA2  r3 = 00
000BA3  r4 = sp + 0003
000BA5  [r4] = r3
000BA6  r4 = [bp+03]
000BA7  r3 = r4 lsl 4
000BA8  r3 = r3 lsl 4
000BA9  r4 = 00
000BAA  r4 += 12
000BAB  r2 = sp + 0004
000BAD  [r2++] = r3
000BAE  [r2] = r4
000BAF  call 001535
000BB1  sp += 05
000BB2  r1 |= [bp+01]
000BB3  [bp+01] = r1
000BB4  r4 = [bp+01]
000BB5  cmp r4, 00
000BB6  jne 0bc4
000BB7  r3 = 00
000BB8  r4 = 12
000BB9  ds = r4
000BBA  r4 = ds:[r3++]
000BBB  [bp+04] = r4
000BBC  r4 = ds:[r3]
000BBD  cmp r4, 6e61
000BBF  jne 0bc4
000BC0  r4 = [bp+04]
000BC1  cmp r4, 4750
000BC3  je 0bc7

0bc4:
000BC4  r4 = 01
000BC5  [bp+00] = r4
000BC6  jmp 0bcc

0bc7:
000BC7  r4 = [bp+03]
000BC8  r4 += 01
000BC9  [bp+03] = r4
000BCA  goto 000b7d

0bcc:
000BCC  r4 = [bp+00]
000BCD  cmp r4, 00
000BCE  jne 0bd0
000BCF  jmp 0bd7

0bd0:
000BD0  r4 = 00
000BD1  [bp+00] = r4

0bd2:
000BD2  r4 = [bp+02]
000BD3  r4 += 01
000BD4  [bp+02] = r4
000BD5  goto 000b2a

0bd7:
000BD7  ds = 00
000BD8  r4 = 0016
000BDA  r3 = ds:[r4++]
000BDB  r4 = ds:[r4]
000BDC  r3 += 0b
000BDD  r4 += 00, carry
000BDE  ds = r4
000BDF  r3 = ds:[r3]
000BE0  r4 = [bp+02]
000BE1  cmp r3, r4
000BE2  ja 0be4

infinite:
jmp infinite

0be4:
000BE4  r3 = 20
000BE5  r4 = 12
000BE6  goto mr
000BE7  sp += 05
000BE8  pop bp, pc from [sp]
