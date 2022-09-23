help(
[[
This module loads Abinit.
Version 9.6.2
]]
)
whatis("Name: Abinit")
whatis("Version: 9.6.2")
whatis("Category: Physics, Simulation")
whatis("Keywords: Physics, Simulation")
whatis("URL: https://www.abinit.org")
whatis("Description: ABINIT is an atomic-scale simulation software suite.")

pushenv("CONDA_DEFAULT_ENV", "abinit-9.6.2")
append_path("CONDA_ENVS_PATH", "/util/opt/anaconda/deployed-conda-envs/packages/abinit/envs")
prepend_path("PATH", "/util/opt/anaconda/deployed-conda-envs/packages/abinit/envs/abinit-9.6.2/bin")
