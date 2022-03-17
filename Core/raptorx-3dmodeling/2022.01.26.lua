help(
[[
This module loads Raptorx-3Dmodeling.
Version 2022.01.26
]]
)

whatis("Name: Raptorx-3Dmodeling")
whatis("Version: 2022.01.26")
whatis("Category: computational biology, deep learning")
whatis("Keywords: deep learning, protein struction, function prediction")
whatis("URL: https://github.com/j3xugit/RaptorX-3DModeling")
whatis("Description: Prediction of protein contact/distance/orientation and local structure properties.")

if mode() == "load" then
    LmodMessage("---------------------| Help message for Raptorx-3Dmodeling GPU module |---------------------------")
    LmodMessage("NOTE: Please use `bash $ModelingHome/Server/RaptorXFolder.sh` with the respective options to run Raptorx-3Dmodeling.")
    LmodMessage("NOTE: The downloaded databases can be accessed with the variable `RAPTORX_3DMODELING_DATA`.")
    LmodMessage("NOTE: All the scripts can be accessed with the variable `ModelingHome`.")
    LmodMessage("--------------------------------------------------------------------------------------------------")
end

pushenv("CONDA_DEFAULT_ENV", "raptorx-3dmodeling-2022.01.26")
append_path("CONDA_ENVS_PATH", "/util/opt/anaconda/deployed-conda-envs/packages/raptorx-3dmodeling/envs")
prepend_path("PATH", "/util/opt/anaconda/deployed-conda-envs/packages/raptorx-3dmodeling/envs/raptorx-3dmodeling-2022.01.26/bin")

setenv("ModelingHome", "/util/opt/anaconda/deployed-conda-envs/packages/raptorx-3dmodeling/envs/raptorx-3dmodeling-2022.01.26/share/raptorx-3dmodeling-2022.01.26-0/")
setenv("CUDA_ROOT", "/util/opt/anaconda/deployed-conda-envs/packages/raptorx-3dmodeling/envs/raptorx-3dmodeling-2022.01.26/")
setenv("RAPTORX_3DMODELING_DATA", "/work/HCC/BCRF/app_specific/raptorx-3dmodeling/2022.01.26")
prepend_path("LD_LIBRARY_PATH", "/util/opt/anaconda/deployed-conda-envs/packages/raptorx-3dmodeling/envs/raptorx-3dmodeling-2022.01.26/lib/")
prepend_path("LIBRARY_PATH", "/util/opt/anaconda/deployed-conda-envs/packages/raptorx-3dmodeling/envs/raptorx-3dmodeling-2022.01.26/lib/")
