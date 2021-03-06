local help_message = [[
netCDF 4.4

This module loads the netCDF, built with the GCC 
compilers and OpenMPI.

]]

help(help_message,"\n")

whatis("Name: netCDF")
whatis("Version: 4.4.0")
whatis("Category: library, runtime support")
whatis("Keywords: System, Library")
whatis("URL: http://www.unidata.ucar.edu/downloads/netcdf/index.jsp")

setenv("PNETCDF",              "/util/opt/netcdf/4.4/openmpi/2.1/gcc/4.9")
prepend_path("PATH",                "/util/opt/netcdf/4.4/openmpi/2.1/gcc/4.9/bin")
prepend_path("LD_LIBRARY_PATH",     "/util/opt/netcdf/4.4/openmpi/2.1/gcc/4.9/lib")
prepend_path("INCLUDE",             "/util/opt/netcdf/4.4/openmpi/2.1/gcc/4.9/include")
prepend_path("CPATH",               "/util/opt/netcdf/4.4/openmpi/2.1/gcc/4.9/include")
prepend_path("LIBRARY_PATH",        "/util/opt/netcdf/4.4/openmpi/2.1/gcc/4.9/lib")
prepend_path("PKG_CONFIG_PATH",     "/util/opt/netcdf/4.4/openmpi/2.1/gcc/4.9/lib/pkgconfig")

family("netcdf")
