local help_message = [[
UPC++: a PGAS library for C++

This module loads UPCR Compiler variables.
The command directory is added to PATH.
]]

help(help_message,"\n")

whatis("Name: UPC++")
whatis("Version: 2021.3")
whatis("Category: compiler")
whatis("Keywords: System, compiler")
whatis("URL: https://upcxx.lbl.gov/")
whatis("Description: UPC++ is a parallel programming library for developing C++ applications with the Partitioned Global Address Space (PGAS) model.")

prepend_path("PATH",                "/util/opt/upcxx/2021.3/openmpi/4.0/gcc/10.2/bin")
setenv("UPCXX_INSTALL", "/util/opt/upcxx/2021.3/openmpi/4.0/gcc/10.2")

local jobid=os.getenv("SLURM_JOB_ID") or ""
if jobid ~= "" then
  local maxpin_ram_mb = math.floor(0.667 * capture("cgget -nv -r memory.limit_in_bytes /slurm/uid_${UID}/job_${SLURM_JOB_ID}/step_${SLURM_STEP_ID}") / 1048576) .. "M"
  setenv("GASNET_PHYSMEM_MAX", maxpin_ram_mb)
end
