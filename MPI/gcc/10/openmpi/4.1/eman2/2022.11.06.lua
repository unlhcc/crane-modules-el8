help(
[[
This module loads EMAN2.
Version 2022.11.06
]]
)

whatis("Name: EMAN2")
whatis("Version: 2022.11.06")
whatis("Category: image processing")
whatis("Keywords: image processing,CryoEM,CryoET")
whatis("URL: https://github.com/cryoem/eman2")
whatis("Description: A scientific image processing software suite with a focus on CryoEM and CryoET.")

load("GSL/2.6")

pushenv("CONDA_DEFAULT_ENV", "eman2-2022.11.06")
append_path("CONDA_ENVS_PATH", "/util/opt/anaconda/deployed-conda-envs/packages/eman2/envs")
prepend_path("PATH", "/util/opt/anaconda/deployed-conda-envs/packages/eman2/envs/eman2-2022.11.06/bin")

family("python")
