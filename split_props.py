import sys
import re

filename = "kind2_models/Mode_Logic"
num_props = 118

for i in range(1, num_props+1):
  f = open(filename + ".lus", "r")
  f_new = open(filename + "__" + str(i) + ".lus", "w")
  j = 0
  for line in f:
    if "--%PROPERTY" in line.strip():
      j += 1 
      if j == i:
        f_new.write(line) 
      else:
        continue
    else:
      f_new.write(line)
    
  