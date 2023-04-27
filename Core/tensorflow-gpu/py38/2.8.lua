help(
[[
This module loads Tensorflow-gpu.
Version 2.8.1
]]
)
whatis("Name: Tensorflow-gpu")
whatis("Version: 2.8.1")
whatis("Category: machine learning, mathematics")
whatis("Keywords: Machine learning, Mathematics")
whatis("URL: http://tensorflow.org/")
whatis("Description: TensorFlow is an open source machine learning framework for everyone.")

pushenv("CONDA_DEFAULT_ENV", "tensorflow-gpu-2.8.1-py38")
append_path("CONDA_ENVS_PATH", "/util/opt/anaconda/deployed-conda-envs/packages/tensorflow-gpu/envs")
prepend_path("PATH", "/util/opt/anaconda/deployed-conda-envs/packages/tensorflow-gpu/envs/tensorflow-gpu-2.8.1-py38/bin")
setenv("PYTHONNOUSERSITE", "1")

family("python")
