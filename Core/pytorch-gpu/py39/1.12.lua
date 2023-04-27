help(
[[
This module loads pytorch-gpu.
Version 1.12.1

Note: This module also includes tensorflow-gpu 2.9.

]]
)
whatis("Name: Pytorch-gpu")
whatis("Version: 1.12.1")
whatis("Category: deep learning, machine learning, mathematics")
whatis("Keywords: deep learning, machine learning, mathematics")
whatis("URL: https://pytorch.org/")
whatis("Description: Tensors and Dynamic neural networks in Python with strong GPU acceleration")

pushenv("CONDA_DEFAULT_ENV", "pytorch-gpu-1.12.1-py39")
append_path("CONDA_ENVS_PATH", "/util/opt/anaconda/deployed-conda-envs/packages/pytorch-gpu/envs")
prepend_path("PATH", "/util/opt/anaconda/deployed-conda-envs/packages/pytorch-gpu/envs/pytorch-gpu-1.12.1-py39/bin")
setenv("PYTHONNOUSERSITE", "1")

family("python")
