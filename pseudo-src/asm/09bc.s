; 09bc

push bp, bp to [sp] ; DA88
sp -= $12            ; 2052
bp = sp + 0001      ; 0B08 0001

r4 = $0d            ; 984D
[bp+00] = r4		; D800
r4 = $1fff
[bp+01] = r4
r4 = 01
[bp+02] = r4

loop: // this whole loop is to zero out the rest of the stack
r3 = [bp+02]
r4 = [bp+00]
cmp r3, r4
jge exit     ; if r3 >= r4 jump to exit

r4 = [bp+02]
r3 = r4 asr 4
r3 = r3 asr 4
r3 = r3 asr 4
r3 = r3 asr 4

r1 = bp + 0003
r2 = 00
r4 += r1
r3 += r2, carry ; will always be 0?
ds = r3

r3 = 0
ds:[r4] = r3

r4 = [bp+02] ;
r4 += 01     ; increment
[bp+02] = r4 ;

jmp loop
exit:

; bp:[0d, 1fff, d, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
r4 = [bp+00] ; r4=0d
r3 = r4 asr 4
r3 = r3 asr 4
r3 = r3 asr 4
r3 = r3 asr 4 ; r3=0

r1 = bp + 0003 ; pointer to first blank element
r2 = 00
r4 += r1 ; move by 0d, second last element
r3 += r2, carry ; always 0
ds = r3

r3 = 01
ds:[r4] = r3
; bp:[0d, 1fff, d, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0]

r4 = [bp+00] ; r4 = 0d
r3 = r4 asr 4
r3 = r3 asr 4
r3 = r3 asr 4
r3 = r3 asr 4 ; r3=0

r1 = bp + 0003 ; pointer to first blanked element
r2 = 0
r4 += r1 ; point to same second to last element
r3 += r2, carry ; r3=0
ds = r3

r4 = ds:[r4] ; r4 = 1
[bp+03] = r4
; bp:[0d, 1fff, d, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0]

r4 = 01
[bp+0d] = r4
; bp:[0d, 1fff, d, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0]

r4 = [bp+0d]
[bp+0b] = r4
; bp:[0d, 1fff, d, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0]

r4 = [bp+0b]
[bp+0a] = r4
; bp:[0d, 1fff, d, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 1, 0]

r4 = [bp+0a]
[bp+08] = r4
; bp:[0d, 1fff, d, 1, 0, 0, 0, 0, 1, 0, 1, 1, 0, 1, 0, 0, 1, 0]

r4 = [bp+08]
[bp+06] = r4
; bp:[0d, 1fff, d, 1, 0, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 0, 1, 0]

r4 = [bp+06]
[bp+05] = r4
; bp:[0d, 1fff, d, 1, 1, 1, 1, 0, 1, 0, 1, 1, 0, 1, 0, 0, 1, 0]

r4 = [bp+05]
[bp+04] = r4
; bp:[0d, 1fff, d, 1, 0, 1, 1, 0, 1, 0, 1, 1, 0, 1, 0, 0, 1, 0]

r4 = 01
[bp+11] = r4
; bp:[0d, 1fff, d, 1, 1, 1, 1, 0, 1, 0, 1, 1, 0, 1, 0, 0, 1, 1]

r2 = 0
r3 = [bp+00] ; r3=d

r4 = r3 asr 4
r4 = r4 asr 4
r4 = r4 asr 4
r4 = r4 asr 4 ; r4 = 0

r3 += [bp+15] ; r3 = d
r4 += [bp+16], carry ; r4 = 3

ds = r4 ; bank address set to 30000
ds:[r3] = r2
r4 = 0
[bp+02] = r4
; bp:[0d, 1fff, 0, 1, 1, 1, 1, 0, 1, 0, 1, 1, 0, 1, 0, 0, 1, 1]

big_back_jump:
r3 = [bp+02]
r4 = [bp+00]
cmp r3, r4
jl skip ; if r3 < r4: skip
goto big_forward_jump

skip:
r2 = [bp+11]
r3 = [bp+02]
r4 = r3 asr 4
r4 = r4 asr 4
r4 = r4 asr 4
r4 = r4 asr 4 ; r4=0

r3 += [bp+15]
r4 += [bp+16], carry
ds = r4
ds:[r3] = r2 ; ??

r2 = [bp+02]
r3 = [bp+02]
r4 = r3 asr 4
r4 = r4 asr 4
r4 = r4 asr 4
r4 = r4 asr 4 ; r4=0

r3 += [bp+15]
r4 += [bp+16], carry
ds = r4
r3 = ds:[r3]
r4 = r3 asr 4
r4 = r4 asr 4
r4 = r4 asr 4
r4 = r4 asr 4

r3 += [bp+17]
r4 += [bp+18], carry ; ????????
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

r2 = [bp+00]
r3 = [bp+00]
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
r4 = [bp+11]
r4 = r4 asr 1
[bp+11] = r4
r4 = [bp+00]
r4 += 01
[bp+02] = r4
r3 = [bp+02]
r4 = [bp+01]
cmp r3, r4
jl skip
goto big_forward_jump2

skip:
r3 = [bp+02]
r4 = r3 asr 4
r4 = r4 asr 4
r4 = r4 asr 4
r4 = r4 asr 4

r3 += [bp+15]
r4 += [bp+16], carry
r3 += ffff
r4 += ffff, carry
ds = r4
r3 = ds:[r3]
r4 = [bp+11]
cmp r3, r4
jl big_forward_jump3

000A8B  r3 = [bp+00]                                        9600
000A8C  r4 = r3 asr 4                                       993B
000A8D  r4 = r4 asr 4                                       993C
000A8E  r4 = r4 asr 4                                       993C
000A8F  r4 = r4 asr 4                                       993C
000A90  r3 += [bp+15]                                       0615
000A91  r4 += [bp+16], carry                                1816
000A92  ds = r4                                             F02C
000A93  r4 = ds:[r3]                                        98E3
000A94  r2 = [bp+02]                                        9402
000A95  r3 = r2 asr 4                                       973A
000A96  r3 = r3 asr 4                                       973B
000A97  r3 = r3 asr 4                                       973B
000A98  r3 = r3 asr 4                                       973B
000A99  r2 += [bp+15]                                       0415
000A9A  r3 += [bp+16], carry                                1616
000A9B  r2 = r2 + ffff                                      050A FFFF
000A9D  r3 = r3 + ffff, carry                               170B FFFF
000A9F  ds = r3                                             F02B
000AA0  r3 = ds:[r2]                                        96E2
000AA1  r3 ^= [bp+11]                                       8611
000AA2  r3 = r3 lsl 1                                       9743
000AA3  r4 ^= r3                                            8903
000AA4  r2 = [bp+02]                                        9402
000AA5  r3 = r2 asr 4                                       973A
000AA6  r3 = r3 asr 4                                       973B
000AA7  r3 = r3 asr 4                                       973B
000AA8  r3 = r3 asr 4                                       973B
000AA9  r2 += [bp+15]                                       0415
000AAA  r3 += [bp+16], carry                                1616
000AAB  ds = r3                                             F02B
000AAC  ds:[r2] = r4                                        D8E2
000AAD  jmp 0ac5                                            EE17
000AAE  r3 = [bp+02]                                        9602
000AAF  r4 = r3 asr 4                                       993B
000AB0  r4 = r4 asr 4                                       993C
000AB1  r4 = r4 asr 4                                       993C
000AB2  r4 = r4 asr 4                                       993C
000AB3  r3 += [bp+15]                                       0615
000AB4  r4 += [bp+16], carry                                1816
000AB5  r3 = r3 + ffff                                      070B FFFF
000AB7  r4 = r4 + ffff, carry                               190C FFFF
000AB9  ds = r4                                             F02C
000ABA  r4 = ds:[r3]                                        98E3
000ABB  r2 = r4 lsl 1                                       9544
000ABC  r3 = [bp+02]                                        9602
000ABD  r4 = r3 asr 4                                       993B
000ABE  r4 = r4 asr 4                                       993C
000ABF  r4 = r4 asr 4                                       993C
000AC0  r4 = r4 asr 4                                       993C
000AC1  r3 += [bp+15]                                       0615
000AC2  r4 += [bp+16], carry                                1816
000AC3  ds = r4                                             F02C
000AC4  ds:[r3] = r2                                        D4E3
000AC5  r2 = [bp+02]                                        9402
000AC6  r3 = [bp+02]                                        9602
000AC7  r4 = r3 asr 4                                       993B
000AC8  r4 = r4 asr 4                                       993C
000AC9  r4 = r4 asr 4                                       993C
000ACA  r4 = r4 asr 4                                       993C
000ACB  r3 += [bp+15]                                       0615
000ACC  r4 += [bp+16], carry                                1816
000ACD  ds = r4                                             F02C
000ACE  r3 = ds:[r3]                                        96E3
000ACF  r4 = r3 asr 4                                       993B
000AD0  r4 = r4 asr 4                                       993C
000AD1  r4 = r4 asr 4                                       993C
000AD2  r4 = r4 asr 4                                       993C
000AD3  r3 += [bp+17]                                       0617
000AD4  r4 += [bp+18], carry                                1818
000AD5  ds = r4                                             F02C
000AD6  ds:[r3] = r2                                        D4E3
000AD7  r4 = [bp+02]                                        9802
000AD8  r4 += 01                                            0841
000AD9  [bp+02] = r4                                        D802
000ADA  goto 000a75                                         FE80 0A75
000ADC  r2 =- 01                                            6441
000ADD  r3 = [bp+17]                                        9617
000ADE  r4 = [bp+18]                                        9818
000ADF  ds = r4                                             F02C
000AE0  ds:[r3] = r2                                        D4E3
000AE1  r2 = 00                                             9440
000AE2  r3 = [bp+15]                                        9615
000AE3  r4 = [bp+16]                                        9816
000AE4  r3 = r3 + 1fff                                      070B 1FFF
000AE6  r4 += 00, carry                                     1840
000AE7  ds = r4                                             F02C
000AE8  ds:[r3] = r2                                        D4E3
000AE9  sp += 12                                            0052
000AEA  pop bp, pc from [sp]                                9898 jumps back into 478
