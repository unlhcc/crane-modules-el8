help(
[[
This module loads Tensorflow-gpu.
Version 2.10.0
]]
)
whatis("Name: Tensorflow-gpu")
whatis("Version: 2.10.0")
whatis("Category: machine learning, mathematics")
whatis("Keywords: Machine learning, Mathematics")
whatis("URL: http://tensorflow.org/")
whatis("Description: TensorFlow is an open source machine learning framework for everyone.")

pushenv("CONDA_DEFAULT_ENV", "tensorflow-gpu-2.10.0-py39")
append_path("CONDA_ENVS_PATH", "/util/opt/anaconda/deployed-conda-envs/packages/tensorflow-gpu/envs")
prepend_path("PATH", "/util/opt/anaconda/deployed-conda-envs/packages/tensorflow-gpu/envs/tensorflow-gpu-2.10.0-py39/bin")
-- Needed so TF XLA can find nvvm
setenv("XLA_FLAGS","--xla_gpu_cuda_data_dir=/util/opt/anaconda/deployed-conda-envs/packages/tensorflow-gpu/envs/tensorflow-gpu-2.10.0-py39")

family("python")
