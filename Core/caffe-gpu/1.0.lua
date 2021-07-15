help (
[[
Caffe is a deep learning framework made with expression, speed, and modularity in mind.

The module loads GPU-enabled Caffe.

Version 1.0
]])

whatis("Name: Caffe")
whatis("Version: 1.0")
whatis("Category: package")
whatis("Keywords: deep learning")
whatis("Description: It is developed by the Berkeley Vision and Learning Center (BVLC) and by community contributors. Yangqing Jia created the project during his PhD at UC Berkeley. Caffe is released under the BSD 2-Clause license.")
whatis("URL: http://caffe.berkeleyvision.org/")

pushenv("CONDA_DEFAULT_ENV", "caffe-gpu-1.0")
append_path("CONDA_ENVS_PATH", "/util/opt/anaconda/deployed-conda-envs/packages/caffe-gpu/envs")
prepend_path("PATH", "/util/opt/anaconda/deployed-conda-envs/packages/caffe-gpu/envs/caffe-gpu-1.0/bin")
