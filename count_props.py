import os
table = open("out.csv", "w")

for subdir, dirs, files in os.walk("/Users/lorchrob/Desktop/kind2-benchmarks/FMCAD23"):
    for filename in files:
      if ".lus" in filename:
        f = open(os.path.join(subdir, filename), "r")
        table.write(filename + ",")
        j = 0
        flag = 0
        for line in f:
          if "--%PROPERTY" in line.strip():
            j += 1 
            if j > 1:
              table.write("multi-property\n")
              flag = 1 
              break
            else:
              continue
        if flag == 0:
          table.write("single property\n")
    
  