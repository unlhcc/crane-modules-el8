local help_message = [[
netCDF 4.7

This module loads the netCDF, built with the GCC
compilers.

]]

help(help_message,"\n")

whatis("Name: netCDF")
whatis("Version: 4.7.0")
whatis("Category: library, runtime support")
whatis("Keywords: System, Library")
whatis("URL: http://www.unidata.ucar.edu/downloads/netcdf/index.jsp")

prepend_path("NETCDF",              "/util/opt/netcdf/4.7/intel/19")
prepend_path("PATH",                "/util/opt/netcdf/4.7/intel/19/bin")
prepend_path("LD_LIBRARY_PATH",     "/util/opt/netcdf/4.7/intel/19/lib")
prepend_path("MANPATH",             "/util/opt/netcdf/4.7/intel/19/share/man")
prepend_path("INCLUDE",             "/util/opt/netcdf/4.7/intel/19/include")

family("netcdf")

prepend_path("CPATH",             "/util/opt/netcdf/4.7/intel/19/include")
prepend_path("LIBRARY_PATH",     "/util/opt/netcdf/4.7/intel/19/lib")
prepend_path("PKG_CONFIG_PATH",        "/util/opt/netcdf/4.7/intel/19/lib/pkgconfig")
