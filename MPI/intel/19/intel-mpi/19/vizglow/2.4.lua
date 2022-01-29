help (
[[
This module loads VizGlow.
Version 2.4.
]])

whatis("Name: VizGlow")
whatis("Version: 2.4")
whatis("Category: Simulation tool,high-fidelity modeling of non-equilibrium plasma discharges")
whatis("Keywords: Simulation, Plasma Modeling")
whatis("Description:VizGlow")
whatis("URL: https://esgeetech.com/products/vizglow-plasma-modeling/")

prepend_path("PATH","/util/opt/vizglow/VizGlow_v2.4.1")
prepend_path("PATH","/util/opt/vizglow/VizGlow_v2.4.1/bin")
prepend_path("PATH","/util/opt/vizglow/VizGlow_v2.4.1/bin/gui")
prepend_path("LD_LIBRARY_PATH","/util/opt/vizglow/VizGlow_v2.4.1/lib64")
load("intel-mkl/19")

if mode() == "load" then
  LmodMessage("-------------------------| Help message for VizGlow module |-------------------------------")
  LmodMessage("PLEASE NOTE: VizGlow uses a wrapper script to run. Use this instead of mpirun/mpiexec.")
  LmodMessage("Usage: vizglow_run.sh -d <project path> -n $SLURM_NTASKS -u")
  LmodMessage("Replace <project path> with the full path to your VizGlow project directory.")
  LmodMessage("------------------------------------------------------------------------------------------")
end
