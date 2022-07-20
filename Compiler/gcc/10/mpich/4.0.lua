local help_message = [[
MPICH Compilers 4.0

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
whatis("Version: 4.0")
whatis("Category: library, runtime support")
whatis("Keywords: System, Library")
whatis("URL: http://www.mpich.org")

prepend_path("PATH",                "/util/opt/mpich/4.0/gcc/10/bin")
prepend_path("LD_LIBRARY_PATH",     "/util/opt/mpich/4.0/gcc/10/lib")
prepend_path("MANPATH",             "/util/opt/mpich/4.0/gcc/10/share/man")
prepend_path("INCLUDE",             "/util/opt/mpich/4.0/gcc/10/include")

local mroot = os.getenv("MODULEPATH_ROOT") or "/util/opt/modulefiles"
local mdir = pathJoin(mroot,"MPI","gcc","10","mpich","4.0")
prepend_path("MODULEPATH",          mdir)

family("mpi")

prepend_path("CPATH",             "/util/opt/mpich/4.0/gcc/10/include")
prepend_path("LIBRARY_PATH",     "/util/opt/mpich/4.0/gcc/10/lib")
prepend_path("PKG_CONFIG_PATH",        "/util/opt/mpich/4.0/gcc/10/lib/pkgconfig")

setenv("SLURM_WHOLE","1")
setenv("SLURM_OVERLAP","1")
