; parameters: r2, r3, r4
r1 = 0200
[7a80] = r1 ; DMA_Ctrl0 = 200
[7a82] = r3 ; DMA_TAR_AddrL0 = r3
[7a85] = r4 ; DMA_TAR_AddrH0 = r4

r1 = 7854
[7a81] = r1 ; DMA_SRC_AddrL0 = 7854

r1 = 00
[7a84] = r1 ; DMA_SRC_AddrH0 = 0
[7a83] = r2 ; DMA_TCountL0 = r2

r1 = 00
[7a86] = r1 ; DMA_TCountH0 = 0

r1 = [7abe]
r1 = r1 & fff0
r1 |= 05
[7abe] = r1 ; DMA_SS, bit 1 = 1, bit 2 = 0, bit 3 = 1, bit 4 = 0

r1 = 1088
[7a80] = r1 ; DMA_Ctrl0 = 1088

r1 = [7a80]
r1 |= 01
[7a80] = r1 ; DMA_Ctrl0 = 1089

back:
r1 = [7abf] ; DMA_INT
test r1, 01
je back

r1 = 01
[7abf] = r1 ; DMA_INT
retf
