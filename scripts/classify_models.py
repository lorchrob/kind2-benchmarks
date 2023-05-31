import os 

##!! Figure out Kind 2 vs jkind models

# Loop through files
for subdir, dirs, files in os.walk("/Users/lorchrob/Desktop/kind2-benchmarks/FMCAD23"):
  for filename in files:
    if ".lus" in filename:
      model_type = "lustre"
    elif ".smv" in filename:
      model_type = "smv"
    else:
      continue
    
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
      if "--%PROPERTY" in line:
        num_props += 1 
      if "array" in line or "^" in line or "[10]" in line or "[4]" in line: 
        has_array = True 
      if "function " in line or "FUN" in line: 
        has_uf = True
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
      
    if model_type == "lustre":
      model_dir = "kind2_models"
    else:
      model_dir = "nuxmv_models"
    
    # Send file to correct location
    if has_array:
      out_dir = "/Users/lorchrob/Desktop/kind2-benchmarks/FMCAD23/{model_dir}/{prop_dir}/array/{filename}"
      continue
    if has_uf:
      continue
    if has_int32 and not has_real:
      continue 
    if has_bool and not (has_real or has_int32 or has_int): 
      continue 
    if has_int and not (has_real or has_int32):
      continue 
    if has_int32 and not (has_real or has_int): 
      continue 
    if has_real and not (has_int32 or has_int):
      continue 
    if has_real and has_int and not has_int32:
      continue 
      