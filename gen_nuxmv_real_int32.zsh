#!/bin/zsh
source ~/.zshrc
cd ./old_benchmarks/real_int32/kind2_models

for file in *; do 
  echo $file
  touch "./../nuxmv_models/${file%.*}.smv"
  timeout .5 '/Users/lorchrob/Documents/CodeProjects/kind2_parent/kind2/bin/kind2' '--slice_nodes' 'false' $file 
  cp "/Users/lorchrob/Desktop/out.smv" "./../nuxmv_models/${file%.*}.smv"
  echo $file
done
