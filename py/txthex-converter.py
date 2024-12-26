import sys

legal_chars = [
    "0", "1", "2", "3", "4", "5", "6", "7", "8", "9",
    "a", "b", "c", "d", "e", "f"
]

file_name = sys.argv[1]

with open(file_name, "r") as input:
    lines = input.readlines()

# remove new line character
if len(lines) > 1:
    for index in range(len(lines) -1):
        lines[index] = lines[index][:-1]

# iterate through each char
output_hex = bytearray()
buffer = ""
for line in lines:
    for char in line:
        if char.lower() in legal_chars:
            if len(buffer) == 0:
                buffer += char.lower()
            elif len(buffer) == 1:
                buffer += char.lower()
                output_hex.append(int(buffer, 16))
                buffer = ""

if len(buffer) != 0:
    buffer += "0"
    output_hex.append(int(buffer, 16))
    print("Hex amount is odd, last hex has been filled with 0")


with open(file_name[:file_name.index(".")] + ".bin", "wb") as output:
    output.write(output_hex)
