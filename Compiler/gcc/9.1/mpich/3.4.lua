local help_message = [[
MPICH Compilers 3.4

This module loads the MPICH environment, built with the GNU
compilers.  By loading this module, the following commands
will be automatically available for compiling MPI applications:

mpif77		(F77 source)
mpif90		(F90 source)
mpicc		(C source)
mpiCC/mpicxx	(C++ source)
]]

help(help_message,"\n")

whatis("Name: MPICH")
whatis("Version: 3.4")
whatis("Category: library, runtime support")
whatis("Keywords: System, Library")
whatis("URL: http://www.mpich.org")

prepend_path("PATH",                "/util/opt/mpich/3.4/gcc/9.1/bin")
prepend_path("LD_LIBRARY_PATH",     "/util/opt/mpich/3.4/gcc/9.1/lib")
prepend_path("MANPATH",             "/util/opt/mpich/3.4/gcc/9.1/share/man")
prepend_path("INCLUDE",             "/util/opt/mpich/3.4/gcc/9.1/include")

local mroot = os.getenv("MODULEPATH_ROOT") or "/util/opt/modulefiles"
local mdir = pathJoin(mroot,"MPI","gcc","9.1","mpich","3.4")
prepend_path("MODULEPATH",          mdir)

family("mpi")

prepend_path("CPATH",             "/util/opt/mpich/3.4/gcc/9.1/include")
prepend_path("LIBRARY_PATH",     "/util/opt/mpich/3.4/gcc/9.1/lib")
prepend_path("PKG_CONFIG_PATH",        "/util/opt/mpich/3.4/gcc/9.1/lib/pkgconfig")

setenv("SLURM_WHOLE","1")
setenv("SLURM_OVERLAP","1")
