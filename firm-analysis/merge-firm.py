import filecmp
from os import listdir
from os.path import isfile, dirname, join

script_dir = dirname(__file__)

files = []
for item in listdir(join(script_dir, 'files')):
    files.append(join(script_dir, 'files', item))

filedata = [open(filename, 'rb') for filename in files]

with open(join(script_dir, 'firm.bin'), 'wb') as output_file:
    with open(join(script_dir, 'merge.csv'), 'w') as csv_file:
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
            csv_file.write(str(highest_value) + '\n')

            print(str(int(pos / 0x4000000 * 100)) + "%")


