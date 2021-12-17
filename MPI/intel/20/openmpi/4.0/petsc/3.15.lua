local help_message = [[
PETSc 3.15

PETSc, pronounced PET-see (the S is silent), is a suite of data structures and routines for the scalable (parallel) solution of scientific applications modeled by partial differential equations. It supports MPI, and GPUs through CUDA or OpenCL, as well as hybrid MPI-GPU parallelism.
]]

help(help_message,"\n")

whatis("Name: PETSc")
whatis("Version: 3.15")
whatis("Category: library, runtime support")
whatis("Keywords: System, Library")
whatis("URL: https://www.mcs.anl.gov/petsc/index.html")

setenv("PETSC_DIR",                 "/util/opt/petsc/3.15.4/openmpi/4.0/intel/20/")

prepend_path("PATH",                "/util/opt/petsc/3.15.4/openmpi/4.0/intel/20/lib/petsc/bin")
prepend_path("LD_LIBRARY_PATH",     "/util/opt/petsc/3.15.4/openmpi/4.0/intel/20/lib")
prepend_path("MANPATH",             "/util/opt/petsc/3.15.4/openmpi/4.0/intel/20/share")
prepend_path("INCLUDE",             "/util/opt/petsc/3.15.4/openmpi/4.0/intel/20/include")
prepend_path("CPATH",               "/util/opt/petsc/3.15.4/openmpi/4.0/intel/20/include")
prepend_path("LIBRARY_PATH",        "/util/opt/petsc/3.15.4/openmpi/4.0/intel/20/lib")

load("intel-mkl/20")
