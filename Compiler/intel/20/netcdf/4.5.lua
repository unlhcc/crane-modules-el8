local help_message = [[
netCDF 4.5

This module loads the netCDF, built with the GCC
compilers.

]]

help(help_message,"\n")

whatis("Name: netCDF")
whatis("Version: 4.5.0")
whatis("Category: library, runtime support")
whatis("Keywords: System, Library")
whatis("URL: http://www.unidata.ucar.edu/downloads/netcdf/index.jsp")

prepend_path("NETCDF",              "/util/opt/netcdf/4.5/intel/20")
prepend_path("PATH",                "/util/opt/netcdf/4.5/intel/20/bin")
prepend_path("LD_LIBRARY_PATH",     "/util/opt/netcdf/4.5/intel/20/lib")
prepend_path("MANPATH",             "/util/opt/netcdf/4.5/intel/20/share/man")
prepend_path("INCLUDE",             "/util/opt/netcdf/4.5/intel/20/include")

family("netcdf")

prepend_path("CPATH",             "/util/opt/netcdf/4.5/intel/20/include")
prepend_path("LIBRARY_PATH",     "/util/opt/netcdf/4.5/intel/20/lib")
prepend_path("PKG_CONFIG_PATH",        "/util/opt/netcdf/4.5/intel/20/lib/pkgconfig")
