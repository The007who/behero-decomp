# ENCODING GUIDE https://vtech.pulkomandy.tk/doku.php?id=instruction_encoding

with open('../firm.bin', 'rb') as file_in:
    with open('firm.asm', 'w') as file_out:
    
        file_in.seek(int("0x40", 16))
        for x in range(500):
            buffer = file_in.read(2)

