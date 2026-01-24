#   -w | set image width, default 32
#   -c | set color address (0x0)

import sys
import math
from PIL import Image
from os.path import isfile, dirname, join

def convert_to_eight_bit(number, size):
    if size == 5:
        high = number * 8
        low = number // 4
        return high | low
    
    elif size == 6:
        high = number * 4
        low = number // 4
        return high | low


def bytes_to_pallete(bytes_in, transparency=False):
    if isinstance(bytes_in, bytes):
        bytes_in = int.from_bytes(bytes_in, byteorder='big')
    elif isinstance(bytes_in, str):
        bytes_in = int(bytes_in, 16)

    blue = bytes_in % 32
    blue = convert_to_eight_bit(blue, 5)

    green = bytes_in // 32
    green = convert_to_eight_bit(green % 64, 6)

    red = bytes_in // 2048
    red = convert_to_eight_bit(red, 5)

    if transparency == False:
        return (red, green, blue, 255)
    else:
        return (red, green, blue, 0)
    


def get_colors(address):
    colors = []
    
    return colors

script_dir = dirname(__file__)
firm_dir = join(script_dir, "..", "firm.bin")


image_width = 32
colors = [
        bytes_to_pallete('0x0000', True), # transparent
        bytes_to_pallete('0x0075'), #(0, 16, 132, 255),
        (24, 133, 173, 255),
        (66, 0, 123, 255),
        (99, 0, 90, 255),
        (107, 0, 16, 255),
        (96, 0, 0, 255),
        (79, 53, 0, 255),
        (49, 78, 24, 255),
        (0, 90, 33, 255),
        (33, 90, 16, 255),
        (8, 52, 66, 255),
        (0, 57, 115, 255),
        (112, 196, 197, 255),
        (0, 74, 67, 255),
        bytes_to_pallete('0xffff') #(0, 0, 0, 255)
    ]


x = 1
while x < len(sys.argv):
    if x == 1:
        start_address = sys.argv[1]
    elif x == 2:
        end_address = sys.argv[2]

    else:
        if sys.argv[x] == "-w":
            x += 1
            image_width = int(sys.argv[x])

        elif sys.argv[x] == "-c":
            x += 1
            colors = get_colors(int(sys.argv[x], 16))

        else:
            sys.exit("Unknown option")

    x += 1



#--------------------



amount_of_bytes = int(end_address, 16) - int(start_address, 16)
rows = math.ceil(amount_of_bytes / image_width)

image = Image.new("RGBA", (image_width, rows), (0, 0, 0, 0))

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