local help_message = [[
hdf5 1.12

This module loads the hdf5, built with the Intel
compilers.

]]

help(help_message,"\n")

whatis("Name: hdf5")
whatis("Version: 1.12")
whatis("Category: library, runtime support")
whatis("Keywords: System, Library")
whatis("URL: http://www.hdfgroup.org/HDF5/release/obtain5.html#obtain")

prepend_path("PATH",                "/util/opt/hdf5/1.12/intel/20/bin")
prepend_path("LD_LIBRARY_PATH",     "/util/opt/hdf5/1.12/intel/20/lib")
prepend_path("MANPATH",             "/util/opt/hdf5/1.12/intel/20/share/man")
prepend_path("INCLUDE",             "/util/opt/hdf5/1.12/intel/20/include")

load("szip/2.1","zlib/1.2")
family("hdf5")

prepend_path("CPATH",           "/util/opt/hdf5/1.12/intel/20/include")
prepend_path("LIBRARY_PATH",    "/util/opt/hdf5/1.12/intel/20/lib")
setenv("HDF5",                  "/util/opt/hdf5/1.12/intel/20")
