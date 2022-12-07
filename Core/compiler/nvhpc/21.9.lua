help(
[[
This module loads the NVIDIA HPC SDK Toolkit and updates the $PATH
$LD_LIBRARY_PATH, $INCLUDE, and $MANPATH environment
variables to access the toolkit binaries, libraries, include
files, and available man pages, respectively.

Version 21.9

]]
)

whatis("Name: NVIDIA HPC SDK")
whatis("Version: 21.9")
whatis("Category: compiler, runtime support")
whatis("Keywords: compiler, cuda, openacc")
whatis("URL: https://developer.nvidia.com/hpc-sdk")
whatis("Description: NVIDIA HPC SDK for Linux.")

conflict("nvhpc")
conflict("nvhpc-nompi")
conflict("nvhpc-byo-compiler")
-- the SDK bundles its own openmpi, cuda, and uses the system gcc
conflict("cuda")

setenv("NVHPC","/util/opt/nvidia-hpc-sdk/2021.219")
setenv("NVHPC_ROOT","/util/opt/nvidia-hpc-sdk/2021.219/Linux_x86_64/21.9")
setenv("CC","/util/opt/nvidia-hpc-sdk/2021.219/Linux_x86_64/21.9/compilers/bin/nvc")
setenv("CXX","/util/opt/nvidia-hpc-sdk/2021.219/Linux_x86_64/21.9/compilers/bin/nvc++")
setenv("FC","/util/opt/nvidia-hpc-sdk/2021.219/Linux_x86_64/21.9/compilers/bin/nvfortran")
setenv("F90","/util/opt/nvidia-hpc-sdk/2021.219/Linux_x86_64/21.9/compilers/bin/nvfortran")
setenv("F77","/util/opt/nvidia-hpc-sdk/2021.219/Linux_x86_64/21.9/compilers/bin/nvfortran")
setenv("CPP","cpp")
prepend_path("PATH","/util/opt/nvidia-hpc-sdk/2021.219/Linux_x86_64/21.9/cuda/bin")
prepend_path("PATH","/util/opt/nvidia-hpc-sdk/2021.219/Linux_x86_64/21.9/compilers/bin")
-- prepend_path("PATH","/util/opt/nvidia-hpc-sdk/2021.219/Linux_x86_64/21.9/comm_libs/mpi/bin")
prepend_path("PATH","/util/opt/nvidia-hpc-sdk/2021.219/Linux_x86_64/21.9/compilers/extras/qd/bin")
prepend_path("LD_LIBRARY_PATH","/util/opt/nvidia-hpc-sdk/2021.219/Linux_x86_64/21.9/cuda/lib64")
prepend_path("LD_LIBRARY_PATH","/util/opt/nvidia-hpc-sdk/2021.219/Linux_x86_64/21.9/cuda/extras/CUPTI/lib64")
prepend_path("LD_LIBRARY_PATH","/util/opt/nvidia-hpc-sdk/2021.219/Linux_x86_64/21.9/compilers/extras/qd/lib")
prepend_path("LD_LIBRARY_PATH","/util/opt/nvidia-hpc-sdk/2021.219/Linux_x86_64/21.9/compilers/lib")
prepend_path("LD_LIBRARY_PATH","/util/opt/nvidia-hpc-sdk/2021.219/Linux_x86_64/21.9/math_libs/lib64")
-- prepend_path("LD_LIBRARY_PATH","/util/opt/nvidia-hpc-sdk/2021.219/Linux_x86_64/21.9/comm_libs/mpi/lib")
prepend_path("LD_LIBRARY_PATH","/util/opt/nvidia-hpc-sdk/2021.219/Linux_x86_64/21.9/comm_libs/nccl/lib")
prepend_path("LD_LIBRARY_PATH","/util/opt/nvidia-hpc-sdk/2021.219/Linux_x86_64/21.9/comm_libs/nvshmem/lib")
prepend_path("CPATH","/util/opt/nvidia-hpc-sdk/2021.219/Linux_x86_64/21.9/math_libs/include")
-- prepend_path("CPATH","/util/opt/nvidia-hpc-sdk/2021.219/Linux_x86_64/21.9/comm_libs/mpi/include")
prepend_path("CPATH","/util/opt/nvidia-hpc-sdk/2021.219/Linux_x86_64/21.9/comm_libs/nccl/include")
prepend_path("CPATH","/util/opt/nvidia-hpc-sdk/2021.219/Linux_x86_64/21.9/comm_libs/nvshmem/include")
prepend_path("CPATH","/util/opt/nvidia-hpc-sdk/2021.219/Linux_x86_64/21.9/compilers/extras/qd/include/qd")
prepend_path("MANPATH","/util/opt/nvidia-hpc-sdk/2021.219/Linux_x86_64/21.9/compilers/man")
-- setenv("OPAL_PREFIX","/util/opt/nvidia-hpc-sdk/2021.219/Linux_x86_64/21.9/comm_libs/mpi")
