#!/bin/zsh
source ~/.zshrc
# for file in ./old_benchmarks/int/kind2_models/*; do 
#   kind2tonuxmv $file > $file"/../nuxmv.smv"
# done
cd ./old_benchmarks/int/kind2_models/large
for file in *; do 
  echo $file
  timeout 1 '/Users/lorchrob/Documents/CodeProjects/kind2_parent/kind2/bin/kind2' $file 
  cp "/Users/lorchrob/Desktop/out.smv" "./../../nuxmv_models/large/${file%.*}.smv"
  echo $file
done

cd ../memory1
for file in *; do 
  echo $file
  timeout 1 '/Users/lorchrob/Documents/CodeProjects/kind2_parent/kind2/bin/kind2' $file 
  cp "/Users/lorchrob/Desktop/out.smv" "./../../nuxmv_models/memory1/${file%.*}.smv"
  echo $file
done

cd ../memory2
for file in *; do 
  echo $file
  timeout 1 '/Users/lorchrob/Documents/CodeProjects/kind2_parent/kind2/bin/kind2' $file 
  cp "/Users/lorchrob/Desktop/out.smv" "./../../nuxmv_models/memory2/${file%.*}.smv"
  echo $file
done
