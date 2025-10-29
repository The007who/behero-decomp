import sys
import math
from PIL import Image

colors = [
    (),
    ()
]

start_address = sys.argv[1]
end_address = sys.argv[2]

amount_of_bytes = int(end_address, 16) - int(start_address, 16)
rows = math.ceil(amount_of_bytes / 16)

image = Image.new("RGB", (32, rows), (127, 127, 127))

with open("firm-analysis/firm.bin", "rb") as file_in:
    file_in.seek(int(start_address, 16), 0)
    x = 0
    y = 0
    while amount_of_bytes != 0:
        buffer = file_in.read(1)[0]
        color = colors[buffer]
        image.putpixel((x, y), color)

        x += 1
        if x == 32:
            x = 0
            y += 1
        
        amount_of_bytes -= 1

    


image.save("firm-analysis/sprites/" + sys.argv[1] + "-" + sys.argv[2] + ".png")