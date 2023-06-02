import os 

##!! Figure out Kind 2 vs jkind models
##!! Maybe copy lustre models to both Kind2 and JKind, then manually update

# Loop through files
for subdir, dirs, files in os.walk("/Users/lorchrob/Desktop/kind2-benchmarks/kind2-benchmarks"):
  for filename in files:
    if ".lus" in filename:
      model_type = "lustre"
    elif ".smv" in filename:
      model_type = "smv"
    else:
      continue

    if model_type == "lustre":
      model_dir = "kind2_models"
    else:
      model_dir = "nuxmv_models"
    
    num_props = 0
    has_array = False
    has_uf = False 
    has_real = False
    has_int32 = False
    has_bool = False
    has_int = False 
    
    f = open(os.path.join(subdir, filename), "r")


    
    for line in f:
      # Count properties and record types
      if "--%PROPERTY" in line or "INVARSPEC" in line:
        num_props += 1 
      if "array" in line or "^" in line:
        has_array = True
      elif "[10]" in line and model_dir == "kind2_models": 
        has_array = True 
        model_dir = "jkind_models"
      if "function imported" in line or "FUN" in line: 
        has_uf = True
      elif "function C" in line and model_dir == "kind2_models":
        has_uf = True 
        model_dir = "jkind_models"
      if ":real" in line or ": real" in line or "real;" in line:
        has_real = True 
      if "int32" in line or "signed word[32]" in line: 
        has_int32 = True
      if ": bool" in line or ":bool" in line or "boolean;" in line:
        has_bool = True
      if ":int" in line or ": int" in line or "integer;" in line:
        has_int = True
      
    if num_props == 1: 
      prop_dir = "single-prop"
    else: 
      prop_dir = "multi-prop"
      
    
    # Send file to correct location
    if has_array:
      out_dir = f"/Users/lorchrob/Desktop/kind2-benchmarks/kind2-benchmarks/{model_dir}/{prop_dir}/array/{filename}"
    elif has_uf:
      out_dir = f"/Users/lorchrob/Desktop/kind2-benchmarks/kind2-benchmarks/{model_dir}/{prop_dir}/uf/{filename}"
    elif has_bool and not (has_real or has_int32 or has_int): 
      out_dir = f"/Users/lorchrob/Desktop/kind2-benchmarks/kind2-benchmarks/{model_dir}/{prop_dir}/bool/{filename}"
    elif has_int and not (has_real or has_int32):
      out_dir = f"/Users/lorchrob/Desktop/kind2-benchmarks/kind2-benchmarks/{model_dir}/{prop_dir}/int/{filename}"
    elif has_real and has_int and not has_int32:
      out_dir = f"/Users/lorchrob/Desktop/kind2-benchmarks/kind2-benchmarks/{model_dir}/{prop_dir}/int-real/{filename}" 
    elif has_int32 and not has_real:
      out_dir = f"/Users/lorchrob/Desktop/kind2-benchmarks/kind2-benchmarks/{model_dir}/{prop_dir}/int32/{filename}" 
    elif has_real and not (has_int32 or has_int):
      out_dir = f"/Users/lorchrob/Desktop/kind2-benchmarks/kind2-benchmarks/{model_dir}/{prop_dir}/real/{filename}" 
    else:
      out_dir = os.path.join(subdir, filename)
      print("FAILED:", out_dir)
    
    print(os.path.join(subdir, filename), "TO", out_dir)
    os.rename(os.path.join(subdir, filename), out_dir)
      