; parameters: r3, r4
 00167B  r1 = 0200
 00167D  [7a80] = r1 ; DMA_Ctrl0
 00167F  [7a82] = r3 ; DMA_TAR_AddrL0
 001681  [7a85] = r4 ; DMA_TAR_AddrH0
 001683  r1 = 7854
 001685  [7a81] = r1 ; DMA_SRC_AddrL0
 001687  r1 = 00
 001688  [7a84] = r1 ; DMA_SRC_AddrH0
 00168A  [7a83] = r2 ; DMA_TCountL0
 00168C  r1 = 00
 00168D  [7a86] = r1 ; DMA_TCountH0
 00168F  r1 = [7abe] ; DMA_SS
 001691  r1 = r1 & fff0
 001693  r1 |= 05
 001694  [7abe] = r1 ; DMA_SS
 001696  r1 = 1088
 001698  [7a80] = r1 ; DMA_Ctrl0
 00169A  r1 = [7a80] ; DMA_Ctrl0
 00169C  r1 |= 01
 00169D  [7a80] = r1 ; DMA_Ctrl0
 00169F  r1 = [7abf] ; DMA_INT
 0016A1  test r1, 01
 0016A2  je 169f
 0016A3  r1 = 01
 0016A4  [7abf] = r1 ; DMA_INT
 0016A6  retf
