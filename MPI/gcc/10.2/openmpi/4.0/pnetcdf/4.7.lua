local help_message = [[
netCDF 4.7

This module loads the netCDF, built with the GCC 
compilers and OpenMPI.

]]

help(help_message,"\n")

whatis("Name: netCDF")
whatis("Version: 4.7")
whatis("Category: library, runtime support")
whatis("Keywords: System, Library")
whatis("URL: http://www.unidata.ucar.edu/downloads/netcdf/index.jsp")

setenv("PNETCDF",              "/util/opt/netcdf/4.7/openmpi/4.0/gcc/10.2")
prepend_path("PATH",                "/util/opt/netcdf/4.7/openmpi/4.0/gcc/10.2/bin")
prepend_path("LD_LIBRARY_PATH",     "/util/opt/netcdf/4.7/openmpi/4.0/gcc/10.2/lib")
prepend_path("INCLUDE",             "/util/opt/netcdf/4.7/openmpi/4.0/gcc/10.2/include")
prepend_path("CPATH",               "/util/opt/netcdf/4.7/openmpi/4.0/gcc/10.2/include")
prepend_path("LIBRARY_PATH",        "/util/opt/netcdf/4.7/openmpi/4.0/gcc/10.2/lib")
prepend_path("PKG_CONFIG_PATH",     "/util/opt/netcdf/4.7/openmpi/4.0/gcc/10.2/lib/pkgconfig")

family("netcdf")
