local help_message = [[
Intel MPI Compilers 19 (2019.4)

This module loads Intel MPI Compiler variables.
The command directory is added to PATH.
The library directory is added to LD_LIBRARY_PATH.
The include directory is added to INCLUDE.
The man     directory is added to MANPATH.
]]

help(help_message,"\n")

whatis("Name: Intel MPI Compilers")
whatis("Version: 19")
whatis("Category: library, runtime support")
whatis("Keywords: System, Library")
whatis("URL: http://www.intel.com")

prepend_path("PATH",                "/util/opt/intel-mpi/19/compilers_and_libraries/linux/mpi/intel64/bin")
prepend_path("LD_LIBRARY_PATH",     "/util/opt/intel-mpi/19/compilers_and_libraries/linux/mpi/intel64/lib")
prepend_path("LD_LIBRARY_PATH",     "/util/opt/intel-mpi/19/compilers_and_libraries/linux/mpi/intel64/lib/release")
prepend_path("LIBRARY_PATH",        "/util/opt/intel-mpi/19/compilers_and_libraries/linux/mpi/intel64/lib")
prepend_path("LIBRARY_PATH",        "/util/opt/intel-mpi/19/compilers_and_libraries/linux/mpi/intel64/lib/release")
prepend_path("MANPATH",             "/util/opt/intel-mpi/19/compilers_and_libraries/linux/mpi/man")
prepend_path("INCLUDE",             "/util/opt/intel-mpi/19/compilers_and_libraries/linux/mpi/intel64/include")
prepend_path("CPATH",               "/util/opt/intel-mpi/19/compilers_and_libraries/linux/mpi/intel64/include")

local mroot = os.getenv("MODULEPATH_ROOT") or "/util/opt/modulefiles"
local mdir = pathJoin(mroot,"MPI","intel","19","intel-mpi","19")
prepend_path("MODULEPATH",          mdir)

setenv("CC",	"mpiicc")
setenv("FC",	"mpiifort")
setenv("F90",	"mpiifort")
setenv("F77",	"mpiifort")
setenv("CXX",	"mpiicpc")

family("mpi")

-- IMPI 18+ needs these libs, but they cause a slowdown for older versions.
-- See https://help.hcc.unl.edu/a/tickets/26679
-- IMPI 19 needs FABRIC_1.1, which is in newer versions of libfabric
prepend_path("PATH",                "/util/opt/libfabric/1.11/gcc/8.3/bin")
prepend_path("LD_LIBRARY_PATH",     "/util/opt/libfabric/1.11/gcc/8.3/lib")
prepend_path("LD_LIBRARY_PATH",     "/util/opt/dapl/2.1/gcc/8.3/lib/")

setenv("I_MPI_FABRICS",         "shm:ofi")
setenv("I_MPI_OFI_LIBRARY_INTERNAL", "0")

setenv("SLURM_OVERLAP",   "1")
setenv("SLURM_WHOLE",     "1")

