local help_message = [[
jasper 2.0

This module loads the jasper, built with the GCC
compilers.

]]

help(help_message,"\n")

whatis("Name: jasper")
whatis("Version: 2.0")
whatis("Category: library, runtime support")
whatis("Keywords: System, Library")
whatis("URL: https://www.ece.uvic.ca/~frodo/jasper/")

prepend_path("PATH",        "/util/opt/jasper/2.0/gcc/9/bin")
prepend_path("MANPATH",             "/util/opt/jasper/2.0/gcc/9/share/man")
prepend_path("CPATH",               "/util/opt/jasper/2.0/gcc/9/include")
prepend_path("LIBRARY_PATH",        "/util/opt/jasper/2.0/gcc/9/lib")
prepend_path("LD_LIBRARY_PATH",     "/util/opt/jasper/2.0/gcc/9/lib")
prepend_path("PKG_CONFIG_PATH",     "/util/opt/jasper/2.0/gcc/9/lib/pkgconfig")

setenv("JASPER","/util/opt/jasper/2.0/gcc/9")
setenv("JASPERINC","/util/opt/jasper/2.0/gcc/9/include")
setenv("JASPERLIB","/util/opt/jasper/2.0/gcc/9/lib")

load("libjpeg/2.0")
