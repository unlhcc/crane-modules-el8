local help_message = [[
shapelib 1.5

This module loads shapelib, built with the GCC compilers.

]]

help(help_message,"\n")

whatis("Name: shapelib")
whatis("Version: 1.5.0")
whatis("Category: library, runtime support")
whatis("Keywords: System, Library")
whatis("Description:  The Shapefile C Library provides the ability to write simple C programs for reading, writing and updating (to a limited extent) ESRI Shapefiles, and the associated attribute file (.dbf).")
whatis("URL: http://shapelib.maptools.org/")

prepend_path("PATH",                "/util/opt/shapelib/1.5/gcc/9/bin")
prepend_path("CPATH",             "/util/opt/shapelib/1.5/gcc/9/include")
prepend_path("LD_LIBRARY_PATH",     "/util/opt/shapelib/1.5/gcc/9/lib")
prepend_path("LIBRARY_PATH",     "/util/opt/shapelib/1.5/gcc/9/lib")
prepend_path("PKG_CONFIG_PATH",        "/util/opt/shapelib/1.5/gcc/9/lib/pkgconfig")

setenv("SHAPELIB", "/util/opt/shapelib/1.5/gcc/9")
