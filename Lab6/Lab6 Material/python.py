# Francisco Javier Blázquez Martínez
#
# École polytechnique fédérale de Lausanne, Switzerland
#
# Description:

import random

map_table = list(range(0, 256))
random.shuffle(map_table)

with open("shuffle_map.h","w") as f:
    f.write("#pragma once \n")
    f.write("const int forward[256] = {")
    f.write(",".join(map(str, map_table)))
    f.write("};\n")

