; wait till NAND is ready
push r1, r1 to [sp]
back:
r1 = [7850] ; NF_Ctrl
jpl back
pop r1, r1 from [sp]
retf
