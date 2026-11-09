; wait till NAND is ready
; not sure why there's another
push bp, bp to [sp]

loop:
r1 = [7850] ; NF_Ctrl
test r1, 8000
je loop

r1 = 00
pop bp, bp from [sp]
retf
