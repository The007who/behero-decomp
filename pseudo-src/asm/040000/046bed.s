;
; this is 1:1 of 0x001508
; y1 = x3 * x5
; y2 = x3 * x6
; y1.hi += y2.lo
; y3 = x4 * x5
; y1.hi += y3.lo

push bp, bp to [sp]
bp = sp + 0001
;     [x, x, x, ?, ?, ?, ?]
; sp  bp

r1 = [bp+03]
r2 = [bp+05]
MR = r1*r2, uu

r1 = r3
r2 = r4
r3 = [bp+03]
r4 = [bp+06]
MR = r3*r4, ss

r2 += r3
r3 = [bp+04]
r4 = [bp+05]
MR = r3*r4, ss

r2 += r3
pop bp, bp from [sp]
retf
