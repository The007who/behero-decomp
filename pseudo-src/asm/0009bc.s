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

r3 = [bp+00]           ; 9600
r4 = r3 asr 4          ; 993B
r4 = r4 asr 4          ; 993C
r4 = r4 asr 4          ; 993C
r4 = r4 asr 4          ; 993C
r3 += [bp+15]          ; 0615
r4 += [bp+16], carry   ; 1816
ds = r4                ; F02C
r4 = ds:[r3]           ; 98E3
r2 = [bp+02]           ; 9402
r3 = r2 asr 4          ; 973A
r3 = r3 asr 4          ; 973B
r3 = r3 asr 4          ; 973B
r3 = r3 asr 4          ; 973B
r2 += [bp+15]          ; 0415
r3 += [bp+16], carry   ; 1616
r2 = r2 + ffff         ; 050A FFFF
r3 = r3 + ffff, carry  ; 170B FFFF
ds = r3                ; F02B
r3 = ds:[r2]           ; 96E2
r3 ^= [bp+11]          ; 8611
r3 = r3 lsl 1          ; 9743
r4 ^= r3               ; 8903
r2 = [bp+02]           ; 9402
r3 = r2 asr 4          ; 973A
r3 = r3 asr 4          ; 973B
r3 = r3 asr 4          ; 973B
r3 = r3 asr 4          ; 973B
r2 += [bp+15]          ; 0415
r3 += [bp+16], carry   ; 1616
ds = r3                ; F02B
ds:[r2] = r4           ; D8E2
jmp 0ac5               ; EE17
r3 = [bp+02]           ; 9602
r4 = r3 asr 4          ; 993B
r4 = r4 asr 4          ; 993C
r4 = r4 asr 4          ; 993C
r4 = r4 asr 4          ; 993C
r3 += [bp+15]          ; 0615
r4 += [bp+16], carry   ; 1816
r3 = r3 + ffff         ; 070B FFFF
r4 = r4 + ffff, carry  ; 190C FFFF
ds = r4                ; F02C
r4 = ds:[r3]           ; 98E3
r2 = r4 lsl 1          ; 9544
r3 = [bp+02]           ; 9602
r4 = r3 asr 4          ; 993B
r4 = r4 asr 4          ; 993C
r4 = r4 asr 4          ; 993C
r4 = r4 asr 4          ; 993C
r3 += [bp+15]          ; 0615
r4 += [bp+16], carry   ; 1816
ds = r4                ; F02C
ds:[r3] = r2           ; D4E3

0ac5:
r2 = [bp+02]           ; 9402
r3 = [bp+02]           ; 9602
r4 = r3 asr 4          ; 993B
r4 = r4 asr 4          ; 993C
r4 = r4 asr 4          ; 993C
r4 = r4 asr 4          ; 993C
r3 += [bp+15]          ; 0615
r4 += [bp+16], carry   ; 1816
ds = r4                ; F02C
r3 = ds:[r3]           ; 96E3
r4 = r3 asr 4          ; 993B
r4 = r4 asr 4          ; 993C
r4 = r4 asr 4          ; 993C
r4 = r4 asr 4          ; 993C
r3 += [bp+17]          ; 0617
r4 += [bp+18], carry   ; 1818
ds = r4                ; F02C
ds:[r3] = r2           ; D4E3
r4 = [bp+02]           ; 9802
r4 += 01               ; 0841
[bp+02] = r4           ; D802
goto 000a75            ; FE80 0A75
r2 =- 01               ; 6441
r3 = [bp+17]           ; 9617
r4 = [bp+18]           ; 9818
ds = r4                ; F02C
ds:[r3] = r2           ; D4E3
r2 = 00                ; 9440
r3 = [bp+15]           ; 9615
r4 = [bp+16]           ; 9816
r3 = r3 + 1fff         ; 070B 1FFF
r4 += 00, carry        ; 1840
ds = r4                ; F02C
ds:[r3] = r2           ; D4E3
sp += 12               ; 0052
pop bp, pc from [sp]   ; 9898
