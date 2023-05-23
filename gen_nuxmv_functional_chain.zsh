#!/bin/zsh
source ~/.zshrc
cd ./old_benchmarks/functional_chain/kind2_models

for file in *; do 
  echo $file
  touch "./../nuxmv_models/${file%.*}.smv"
  timeout .5 '/Users/lorchrob/Documents/CodeProjects/kind2_parent/kind2/bin/kind2' '--slice_nodes' 'false' $file
  cp "/Users/lorchrob/Desktop/out.smv" "./../nuxmv_models/${file%.*}.smv"
  echo $file
done

cd ./channel
for file in *; do 
  echo $file
  touch "./../../nuxmv_models/channel/${file%.*}.smv"
  timeout .5 '/Users/lorchrob/Documents/CodeProjects/kind2_parent/kind2/bin/kind2' '--slice_nodes' 'false' $file
  cp "/Users/lorchrob/Desktop/out.smv" "./../../nuxmv_models/channel/${file%.*}.smv"
  echo $file
done

cd ../controlLaw
for file in *; do 
  echo $file
  touch "./../../nuxmv_models/controlLaw/${file%.*}.smv"
  timeout .5 '/Users/lorchrob/Documents/CodeProjects/kind2_parent/kind2/bin/kind2' '--slice_nodes' 'false' $file
  cp "/Users/lorchrob/Desktop/out.smv" "./../../nuxmv_models/controlLaw/${file%.*}.smv"
  echo $file
done

cd ../reconfiguration
for file in *; do 
  echo $file
  touch "./../../nuxmv_models/reconfiguration/${file%.*}.smv"
  timeout .5 '/Users/lorchrob/Documents/CodeProjects/kind2_parent/kind2/bin/kind2' '--slice_nodes' 'false' $file
  cp "/Users/lorchrob/Desktop/out.smv" "./../../nuxmv_models/reconfiguration/${file%.*}.smv"
  echo $file
done

cd ../relatedCounters
for file in *; do 
  echo $file
  touch "./../../nuxmv_models/relatedCounters/${file%.*}.smv"
  timeout .5 '/Users/lorchrob/Documents/CodeProjects/kind2_parent/kind2/bin/kind2' '--slice_nodes' 'false' $file
  cp "/Users/lorchrob/Desktop/out.smv" "./../../nuxmv_models/relatedCounters/${file%.*}.smv"
  echo $file
done

cd ../triplexVoter
for file in *; do 
  echo $file
  touch "./../../nuxmv_models/triplexVoter/${file%.*}.smv"
  timeout .5 '/Users/lorchrob/Documents/CodeProjects/kind2_parent/kind2/bin/kind2' '--slice_nodes' 'false' $file
  cp "/Users/lorchrob/Desktop/out.smv" "./../../nuxmv_models/triplexVoter/${file%.*}.smv"
  echo $file
done
