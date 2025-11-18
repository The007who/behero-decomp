
percent = 0

with open("firm-analysis/firm.bin", "rb") as file_in:
    with open("palletes.txt", 'w') as file_out:
        for pos in range(0x4000000):
            file_in.seek(pos)
            buffer = file_in.read(16 * 2)

            integers = []
            for x in range(16):
                integers.append(int.from_bytes(buffer[x *2: x*2 +2], "big"))


            if integers[1] > 0 and integers[1] < 32:
                if integers[2] > 0 and integers[2] < 32:
                    if integers[3] > 0 and integers[3] < 32:
                        if integers[15] == 0:
                            if integers[1] != integers[2] != integers[3] != integers[4] != integers[5] != integers[6] != integers[7] != integers[8] != integers[9] != integers[10] != integers[11] != integers[12] != integers[13] != integers[14] != integers[15]:
                                if integers[4] > 0 and integers[5] > 0 and integers[6] > 0:
                                    formatted_hex = ' '.join(format(byte, '02x') for byte in buffer)
                                    file_out.write("\n" + hex(pos) + " | " + formatted_hex)
            
            new_percent = int(pos / 0x4000000 * 100)
            if new_percent != percent:
                percent = new_percent
                print(percent)
