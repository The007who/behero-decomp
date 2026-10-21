 046BED  push bp, bp to [sp]                                 DA88
 046BEE  bp = sp + 0001                                      0B08 0001
;     [?, ?, ?, ?, ?, ?, ?]
; sp  bp

 046BF0  r1 = [bp+03]                                        9203
 046BF1  r2 = [bp+05]                                        9405
 046BF2  MR = r1*r2, uu                                      E20A

 046BF3  r1 = r3                                             9303
 046BF4  r2 = r4                                             9504
 046BF5  r3 = [bp+03]                                        9603
 046BF6  r4 = [bp+06]                                        9806
 046BF7  MR = r3*r4, ss                                      F70C

 046BF8  r2 += r3                                            0503
 046BF9  r3 = [bp+04]                                        9604
 046BFA  r4 = [bp+05]                                        9805
 046BFB  MR = r3*r4, ss                                      F70C

 046BFC  r2 += r3                                            0503
 046BFD  pop bp, bp from [sp]                                9888
 046BFE  retf                                                9A90
