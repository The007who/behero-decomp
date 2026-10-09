call 000bee ; wait NAND ready
push r1, bp to [sp]
(Extended group) push r9, r8 to [sp]
(Extended group 1) r8 = 007f
(Extended group 3) [7850] = r8 ; NF_Ctrl
(Extended group 6) r8 = 00
(Extended group 3) [7851] = r8 ; NF_CMD
(Extended group 1) r8 = 8e00
(Extended group 2) r9 = [0002]
(Extended group 6) cmp r9, 01
ja skip
(Extended group 1) r8 = 8600

skip:
(Extended group 3) [7855] = r8 ; NF_INT_Ctrl
[7852] = r1 ; NF_AddrL
[7853] = r2 ; NF_AddrH
call 000bee ; wait NAND ready
r1 = 01
[7857] = r1 ; ECC_Ctrl
r1 = ce00
[7855] = r1 ; NF_INT_Ctrl
r2 = 0200

call 00167b ; (r3, r4)

r1 = 8e00
[7855] = r1 ; NF_INT_Ctrl
r1 = 04
[7857] = r1 ; ECC_Ctrl
(Extended group) pop r8, r9 from [sp]
pop r1, bp from [sp]
retf
