local help_message = [[
ReadOSM 1.1.0a
This module loads the ReadOSM package, built with the GCC compilers.
]]

help(help_message,"\n")

whatis("Name: readosm")
whatis("Version: 1.1.0a")
whatis("Category: library, OSM")
whatis("Keywords: System, Library, OSM")
whatis("URL: https://www.gaia-gis.it/fossil/readosm/")

prepend_path("INCLUDE"		,"/util/opt/readosm/1.1/gcc/10/include")
prepend_path("LD_LIBRARY_PATH"	,"/util/opt/readosm/1.1/gcc/10/lib")
prepend_path("LIBRARY_PATH"	,"/util/opt/readosm/1.1/gcc/10/lib")
prepend_path("CPATH"		,"/util/opt/readosm/1.1/gcc/10/include")
prepend_path("PKG_CONFIG_PATH",        "/util/opt/readosm/1.1/gcc/10/lib/pkgconfig")
setenv("READOSM",               "/util/opt/readosm/1.1/gcc/10")
