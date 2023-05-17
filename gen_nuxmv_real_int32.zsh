#!/bin/zsh
source ~/.zshrc
cd ./old_benchmarks/real_int32/kind2_models

for file in *; do 
  echo $file
  touch "./../nuxmv_models/${file%.*}.smv"
  timeout 1 '/Users/lorchrob/Documents/CodeProjects/kind2_parent/kind2/bin/kind2' $file 
  cp "/Users/lorchrob/Desktop/out.smv" "./../nuxmv_models/${file%.*}.smv"
  echo $file
done
