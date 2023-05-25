#!/bin/zsh
source ~/.zshrc
# for file in ./old_benchmarks/int/kind2_models/*; do 
#   kind2tonuxmv $file > $file"/../nuxmv.smv"
# done
cd ./kind2_models
for file in *; do 
  echo $file
  timeout .25 '/Users/lorchrob/Documents/CodeProjects/kind2_parent/kind2/bin/kind2' '--slice_nodes' 'false' $file 
  cp "/Users/lorchrob/Desktop/out.smv" "./../nuxmv_models/${file%.*}.smv"
  echo $file
done
