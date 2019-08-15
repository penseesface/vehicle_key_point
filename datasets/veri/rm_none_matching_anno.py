import os.path as osp
import sys


file_name = sys.argv[1]

matching_anno = []

with open(file_name) as f:
    for line in f:
        image_path = line.split()[0]
        if not osp.exists(image_path):
            print(image_path)
        else:
            matching_anno += [line]

with open(file_name.replace('.txt', '_clean.txt'), 'w') as f:
    for line in matching_anno:
        f.writelines(line)
