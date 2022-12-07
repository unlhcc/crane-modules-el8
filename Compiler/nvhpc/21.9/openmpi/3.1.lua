local help_message = [[
OpenMPI Compilers 3.1

This module loads the OpenMPI environment, built with the NVHPC
compilers.  By loading this module, the following commands
will be automatically available for compiling MPI applications:

mpif77		(F77 source)
mpif90		(F90 source)
mpicc		(C source)
mpiCC/mpicxx	(C++ source)
]]

help(help_message,"\n")

whatis("Name: OpenMPI")
whatis("Version: 3.1")
whatis("Category: library, runtime support")
whatis("Keywords: System, Library")
whatis("URL: http://www.open-mpi.org")


prepend_path("PATH","/util/opt/nvidia-hpc-sdk/2021.219/Linux_x86_64/21.9/comm_libs/mpi/bin")
prepend_path("LD_LIBRARY_PATH","/util/opt/nvidia-hpc-sdk/2021.219/Linux_x86_64/21.9/comm_libs/mpi/lib")
prepend_path("CPATH","/util/opt/nvidia-hpc-sdk/2021.219/Linux_x86_64/21.9/comm_libs/mpi/include")
prepend_path("PKG_CONFIG_PATH",     "/util/opt/nvidia-hpc-sdk/2021.219/Linux_x86_64/21.9/comm_libs/mpi/lib/pkgconfig")
setenv("OPAL_PREFIX","/util/opt/nvidia-hpc-sdk/2021.219/Linux_x86_64/21.9/comm_libs/mpi")

local mroot = os.getenv("MODULEPATH_ROOT") or "/util/opt/modulefiles"
local mdir = pathJoin(mroot,"MPI","nvhpc","21.9","openmpi","3.1")
prepend_path("MODULEPATH",          mdir)


setenv("SLURM_WHOLE", "1")
setenv("SLURM_OVERLAP", "1")
setenv("OPENMPI", "/util/opt/nvidia-hpc-sdk/2021.219/Linux_x86_64/21.9/comm_libs/mpi")
