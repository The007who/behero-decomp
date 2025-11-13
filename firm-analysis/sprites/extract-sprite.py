import sys
import math
from PIL import Image
from os.path import isfile, dirname, join

script_dir = dirname(__file__)
firm_dir = join(script_dir, "..", "firm.bin")


start_address = sys.argv[1]
end_address = sys.argv[2]


if len(sys.argv) >= 4:
    image_width = int(sys.argv[3])
else:
    image_width = 32


if len(sys.argv) >= 5:
    colors 
else:
    colors = [
        (127, 127, 127),
        (0, 16, 132),
        (24, 133, 173),
        (66, 0, 123),
        (99, 0, 90),
        (107, 0, 16),
        (96, 0, 0),
        (79, 53, 0),
        (49, 78, 24),
        (0, 90, 33),
        (33, 90, 16),
        (8, 52, 66),
        (0, 57, 115),
        (112, 196, 197),
        (0, 74, 67),
        (0, 0, 0)
    ]


amount_of_bytes = int(end_address, 16) - int(start_address, 16)
rows = math.ceil(amount_of_bytes / image_width)

image = Image.new("RGB", (image_width, rows), (127, 127, 127))

with open(firm_dir, "rb") as file_in:
    file_in.seek(int(start_address, 16), 0)
    x = 0
    y = 0
    while amount_of_bytes != 0:
        buffer = file_in.read(1)[0]
        color = colors[buffer % len(colors)]
        image.putpixel((x, y), (color))

        x += 1
        if x == image_width:
            x = 0
            y += 1
        
        amount_of_bytes -= 1

file_name = start_address + "-" + end_address + ".png"
output_dir = join(script_dir, "png", file_name)
image.save(output_dir)