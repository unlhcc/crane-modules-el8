local help_message = [[
FortranGIS 2.5

This module loads FortranGIS, built with the GCC compilers.

]]

help(help_message,"\n")

whatis("Name: fortrangis")
whatis("Version: 2.5")
whatis("Category: library, runtime support")
whatis("Keywords: System, Library")
whatis("URL: http://fortrangis.sourceforge.net/index.php")

prepend_path("LD_LIBRARY_PATH",     "/util/opt/fortrangis/2.5/gcc/10/lib")
prepend_path("LIBRARY_PATH",     "/util/opt/fortrangis/2.5/gcc/10/lib")
prepend_path("CPATH",           "/util/opt/fortrangis/2.5/gcc/10/include")

setenv("FORTRANGIS",                  "/util/opt/fortrangis/2.5/gcc/10")
