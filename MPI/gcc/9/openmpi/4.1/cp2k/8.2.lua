help(
[[
This module loads Cp2k.  Quantum chemistry and solid state physics software package
Version 8.2.0
]]
)
whatis("Name: Cp2k")
whatis("Version: 8.2.0")
whatis("Category: quantum chemistry, solid state physics package")
whatis("Keywords: Applications, Chemistry")
whatis("URL: https://www.cp2k.org")
whatis("Description: Quantum chemistry and solid state physics software package")

pushenv("CONDA_DEFAULT_ENV", "cp2k-8.2.0")
append_path("CONDA_ENVS_PATH", "/util/opt/anaconda/deployed-conda-envs/packages/cp2k/envs")
prepend_path("PATH", "/util/opt/anaconda/deployed-conda-envs/packages/cp2k/envs/cp2k-8.2.0/bin")
