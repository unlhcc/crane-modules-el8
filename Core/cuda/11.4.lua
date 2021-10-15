help(
[[
This module loads the NVIDIA CUDA Toolkit and updates the $PATH
$LD_LIBRARY_PATH, $INCLUDE, and $MANPATH environment
variables to access the toolkit binaries, libraries, include
files, and available man pages, respectively.

Version 11.4

This module also includes cuDNN 8.2.
]]
)

whatis("Name: NVIDIA CUDA Toolkit")
whatis("Version: 11.4")
whatis("Category: compiler, runtime support")
whatis("Keywords: compiler, cuda")
whatis("URL: http://www.nvidia.com/object/cuda_home_new.html")
whatis("Description: NVIDIA CUDA Toolkit for Linux.")


prepend_path("PATH",              "/util/opt/cuda/11.4/bin")
prepend_path("LD_LIBRARY_PATH",   "/util/opt/cuda/11.4/lib64")
prepend_path("LIBRARY_PATH",      "/util/opt/cuda/11.4/lib64")
prepend_path("MANPATH",		  "/util/opt/cuda/11.4/doc/man")
prepend_path("CPATH",		  "/util/opt/cuda/11.4/include")
setenv("CUDA_HOME",		  "/util/opt/cuda/11.4")
setenv("CUDA_PATH",               "/util/opt/cuda/11.4")
