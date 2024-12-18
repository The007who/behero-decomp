legal_chars = [
    "0", "1", "2", "3", "4", "5", "6", "7", "8", "9",
    "a", "b", "c", "d", "e", "f"
]

with open("input.txt", "r") as input:
    lines = input.readlines()

# remove new line character
if len(lines) > 1:
    for index in range(len(lines) -1):
        lines[index] = lines[index][:-1]

# iterate through each char
buffer = ""
for line in lines:
    for char in line:
        if char.lower() in legal_chars:
            buffer += char.lower()

output_hex = bytearray()
output_hex.extend(map(ord, buffer))

with open("output.bin", "wb") as output:
    output.write(output_hex)
