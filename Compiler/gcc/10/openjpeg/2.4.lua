local help_message = [[
openjpeg 2.4

This module loads openjpeg, built with the GCC compilers.

]]

help(help_message,"\n")

whatis("Name: openjpeg")
whatis("Version: 2.4")
whatis("Category: library, runtime support")
whatis("Keywords: System, Library")
whatis("URL: https://www.openjpeg.org/")

prepend_path("PATH",                "/util/opt/openjpeg/2.4/gcc/10/bin")
prepend_path("LD_LIBRARY_PATH",     "/util/opt/openjpeg/2.4/gcc/10/lib")
prepend_path("CPATH",             "/util/opt/openjpeg/2.4/gcc/10/include")
prepend_path("LIBRARY_PATH",     "/util/opt/openjpeg/2.4/gcc/10/lib")
prepend_path("PKG_CONFIG_PATH",        "/util/opt/openjpeg/2.4/gcc/10/lib/pkgconfig")
setenv("OPENJPEG", "/util/opt/openjpeg/2.4/gcc/10")
