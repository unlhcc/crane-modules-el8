local help_message = [[
GDAL 3.4
This module loads the GDAL package, built with the Intel compilers.
]]

help(help_message,"\n")

whatis("Name: gdal")
whatis("Version: 3.4")
whatis("Category: library, runtime support")
whatis("Keywords: System, Library")
whatis("URL: http://www.gdal.org")

prepend_path("INCLUDE"		,"/util/opt/gdal/3.4/intel/19/include")
prepend_path("LD_LIBRARY_PATH"	,"/util/opt/gdal/3.4/intel/19/lib")
prepend_path("PATH"		,"/util/opt/gdal/3.4/intel/19/bin")
prepend_path("LIBRARY_PATH"	,"/util/opt/gdal/3.4/intel/19/lib")
prepend_path("CPATH"		,"/util/opt/gdal/3.4/intel/19/include")
prepend_path("PKG_CONFIG_PATH",        "/util/opt/gdal/3.4/intel/19/lib/pkgconfig")
setenv("GDAL",               "/util/opt/gdal/3.4/intel/19")
