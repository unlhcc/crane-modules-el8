local help_message = [[
jasper 1.9

This module loads the jasper, built with the PGI
compilers.

]]

help(help_message,"\n")

whatis("Name: jasper")
whatis("Version: 1.9")
whatis("Category: library, runtime support")
whatis("Keywords: System, Library")
whatis("URL: https://www.ece.uvic.ca/~frodo/jasper/")

prepend_path("LD_LIBRARY_PATH",     "/util/opt/jasper/1.9/pgi/20/lib64")
prepend_path("MANPATH",             "/util/opt/jasper/1.9/pgi/20/share/man")
prepend_path("INCLUDE",             "/util/opt/jasper/1.9/pgi/20/include")
prepend_path("CPATH",               "/util/opt/jasper/1.9/pgi/20/include")
prepend_path("LIBRARY_PATH",        "/util/opt/jasper/1.9/pgi/20/lib")
prepend_path("PKG_CONFIG_PATH",     "/util/opt/jasper/1.9/pgi/20/lib/pkgconfig")
setenv("JASPER","/util/opt/jasper/1.9/pgi/20")
setenv("JASPERINC","/util/opt/jasper/1.9/pgi/20/include")
setenv("JASPERLIB","/util/opt/jasper/1.9/pgi/20/lib")
