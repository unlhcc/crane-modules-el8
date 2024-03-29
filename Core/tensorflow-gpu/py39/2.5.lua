help (
[[
This module loads GPU-enabled tensorflow.
Version 2.5.0
]])

whatis("Name: tensorflow")
whatis("Version: 2.5.0")
whatis("Category: machine learning, mathematics")
whatis("Keywords: Machine Learning, Mathematics")
whatis("Description: TensorFlow is an open source software library for numerical computation using data flow graphs.")
whatis("URL: https://www.tensorflow.org")

pushenv("CONDA_DEFAULT_ENV", "tensorflow-gpu-2.5.0-py39")
append_path("CONDA_ENVS_PATH", "/util/opt/anaconda/deployed-conda-envs/packages/tensorflow-gpu/envs")
prepend_path("PATH", "/util/opt/anaconda/deployed-conda-envs/packages/tensorflow-gpu/envs/tensorflow-gpu-2.5.0-py39/bin")
setenv("PYTHONNOUSERSITE", "1")

family("python")
