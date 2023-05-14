#!/bin/zsh
source ~/.zshrc
cd ./old_benchmarks/int/kind2_models/large

for file in *; do 
  echo $file
  touch "./../../nuxmv_models/large/${file%.*}.smv"
  timeout 1 '/Users/lorchrob/Documents/CodeProjects/kind2_parent/kind2/bin/kind2' $file 
  cp "/Users/lorchrob/Desktop/out.smv" "./../../nuxmv_models/large/${file%.*}.smv"
  echo $file
done

# cd ../memory1
# for file in *; do 
#   echo $file
#   touch "./../../nuxmv_models/memory1/${file%.*}.smv"
#   timeout 1 '/Users/lorchrob/Documents/CodeProjects/kind2_parent/kind2/bin/kind2' $file 
#   cp "/Users/lorchrob/Desktop/out.smv" "./../../nuxmv_models/memory1/${file%.*}.smv"
#   echo $file
# done

# cd ../memory2
# for file in *; do 
#   echo $file
#   touch "./../../nuxmv_models/memory2/${file%.*}.smv"
#   timeout 1 '/Users/lorchrob/Documents/CodeProjects/kind2_parent/kind2/bin/kind2' $file 
#   cp "/Users/lorchrob/Desktop/out.smv" "./../../nuxmv_models/memory2/${file%.*}.smv"
#   echo $file
# done

# cd ../misc
# for file in *; do 
#   echo $file
#   touch "./../../nuxmv_models/misc/${file%.*}.smv"
#   timeout 1 '/Users/lorchrob/Documents/CodeProjects/kind2_parent/kind2/bin/kind2' $file 
#   cp "/Users/lorchrob/Desktop/out.smv" "./../../nuxmv_models/misc/${file%.*}.smv"
#   echo $file
# done

# cd ../protocol
# for file in *; do 
#   echo $file
#   touch "./../../nuxmv_models/protocol/${file%.*}.smv"
#   timeout 1 '/Users/lorchrob/Documents/CodeProjects/kind2_parent/kind2/bin/kind2' $file 
#   cp "/Users/lorchrob/Desktop/out.smv" "./../../nuxmv_models/protocol/${file%.*}.smv"
#   echo $file
# done

# cd ../simulation
# for file in *; do 
#   echo $file
#   touch "./../../nuxmv_models/simulation/${file%.*}.smv"
#   timeout 1 '/Users/lorchrob/Documents/CodeProjects/kind2_parent/kind2/bin/kind2' $file 
#   cp "/Users/lorchrob/Desktop/out.smv" "./../../nuxmv_models/simulation/${file%.*}.smv"
#   echo $file
# done

# cd ../Real_Int/large
# for file in *; do 
#   echo $file
#   touch "./../../../nuxmv_models/Real_Int/large/${file%.*}.smv"
#   timeout 1 '/Users/lorchrob/Documents/CodeProjects/kind2_parent/kind2/bin/kind2' $file 
#   cp "/Users/lorchrob/Desktop/out.smv" "./../../../nuxmv_models/Real_Int/large/${file%.*}.smv"
#   echo $file
# done
