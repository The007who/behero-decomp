import filecmp
from statistics import mean

from os import listdir
from os.path import isfile, dirname, join

script_dir = dirname(__file__)

files = []
for item in listdir(join(script_dir, 'dumps')):
    files.append(join(script_dir, 'dumps', item))

filedata = [open(filename, 'rb') for filename in files]

with open(join(script_dir, 'firm.bin'), 'wb') as output_file:
    with open(join(script_dir, 'merge.csv'), 'w') as csv_file:
        group = []
        for pos in range(0x4000000):
            values = {}
            for file in filedata:
                buffer = file.read(1)
                if buffer in values:
                    values[buffer] += 1
                else:
                    values[buffer] = 0
            
            highest_key = max(values, key=values.get)
            highest_value = values[highest_key]
            
            output_file.write(highest_key)

            if len(group) > 32:
                csv_file.write(str(mean(group)) + '\n')
                group = []
            else:
                group.append(highest_value)

            print(pos / 0x4000000 * 100)


