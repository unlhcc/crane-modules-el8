local help_message = [[
bzip2 1.0.8

This module loads the bzip2, built with the PGI
compilers.

]]

help(help_message,"\n")

whatis("Name: bzip2")
whatis("Version: 1.0.8")
whatis("Category: library, runtime support")
whatis("Keywords: System, Library")
whatis("URL: http://www.bzip2.org/")

prepend_path("LD_LIBRARY_PATH",     "/util/opt/bzip2/1.0/pgi/20/lib")
prepend_path("MANPATH",             "/util/opt/bzip2/1.0/pgi/20/share/man")
prepend_path("INCLUDE",             "/util/opt/bzip2/1.0/pgi/20/include")

prepend_path("CPATH",             "/util/opt/bzip2/1.0/pgi/20/include")
prepend_path("LIBRARY_PATH",     "/util/opt/bzip2/1.0/pgi/20/lib")
prepend_path("PKG_CONFIG_PATH",        "/util/opt/bzip2/1.0/pgi/20/lib/pkgconfig")
prepend_path("PATH","/util/opt/bzip2/1.0/pgi/20/bin")
prepend_path("LD_LIBRARY_PATH","/util/opt/bzip2/1.0/pgi/20/lib")
prepend_path("MANPATH","/util/opt/bzip2/1.0/pgi/20/man")
prepend_path("INCLUDE","/util/opt/bzip2/1.0/pgi/20/include")
setenv("BZIP2" , "/util/opt/bzip2/1.0/pgi/20")
