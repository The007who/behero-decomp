; takes one parameter, check if it matches with DMA_INT
; keeps checking if it's the same
; set DMA_INT to the parameter when it changes
push r1, r2 to [sp]
r1 = sp + 0005
r1 = [r1]

back:
r2 = [7abf] ; DMA_INT
test r2, r1
je back

[7abf] = r1
pop r1, r2 from [sp]
retf
