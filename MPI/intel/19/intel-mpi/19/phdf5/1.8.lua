local help_message = [[
Parallel hdf5 1.8.20

This module loads hdf5, built with the Intel+IMPI
compilers.

]]

help(help_message,"\n")

whatis("Name: hdf5")
whatis("Version: 1.8.20")
whatis("Category: library, runtime support")
whatis("Keywords: System, Library")
whatis("URL: http://www.hdfgroup.org/HDF5/release/obtain5.html#obtain")

prepend_path("PATH",                "/util/opt/hdf5/1.8/intel-mpi/19/intel/19/bin")
prepend_path("LD_LIBRARY_PATH",     "/util/opt/hdf5/1.8/intel-mpi/19/intel/19/lib")
prepend_path("MANPATH",             "/util/opt/hdf5/1.8/intel-mpi/19/intel/19/share")
prepend_path("INCLUDE",             "/util/opt/hdf5/1.8/intel-mpi/19/intel/19/include")
prepend_path("LIBRARY_PATH",        "/util/opt/hdf5/1.8/intel-mpi/19/intel/19/lib")
prepend_path("CPATH",               "/util/opt/hdf5/1.8/intel-mpi/19/intel/19/include")
setenv("PHDF5","/util/opt/hdf5/1.8/intel-mpi/19/intel/19")

family("hdf5")
load("szip/2.1","zlib/1.2")
