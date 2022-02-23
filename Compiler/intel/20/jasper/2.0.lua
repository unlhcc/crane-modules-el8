local help_message = [[
jasper 2.0

This module loads the jasper, built with the Intel
compilers.

]]

help(help_message,"\n")

whatis("Name: jasper")
whatis("Version: 2.0")
whatis("Category: library, runtime support")
whatis("Keywords: System, Library")
whatis("URL: https://www.ece.uvic.ca/~frodo/jasper/")

prepend_path("PATH",        "/util/opt/jasper/2.0/intel/20/bin")
prepend_path("MANPATH",             "/util/opt/jasper/2.0/intel/20/share/man")
prepend_path("CPATH",               "/util/opt/jasper/2.0/intel/20/include")
prepend_path("LIBRARY_PATH",        "/util/opt/jasper/2.0/intel/20/lib")
prepend_path("LD_LIBRARY_PATH",     "/util/opt/jasper/2.0/intel/20/lib")
prepend_path("PKG_CONFIG_PATH",     "/util/opt/jasper/2.0/intel/20/lib/pkgconfig")

setenv("JASPER","/util/opt/jasper/2.0/intel/20")
setenv("JASPERINC","/util/opt/jasper/2.0/intel/20/include")
setenv("JASPERLIB","/util/opt/jasper/2.0/intel/20/lib")

load("libjpeg/2.0")
