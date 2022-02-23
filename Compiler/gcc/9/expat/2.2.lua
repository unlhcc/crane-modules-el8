local help_message = [[
expat 2.2

This module loads the expat, built with the GCC
compilers.

]]

help(help_message,"\n")

whatis("Name: expat")
whatis("Version: 2.2.9")
whatis("Category: library, runtime support")
whatis("Keywords: System, Library")
whatis("URL: https://github.com/libexpat/libexpat")

prepend_path("PATH",                "/util/opt/expat/2.2/gcc/9/bin")
prepend_path("CPATH",               "/util/opt/expat/2.2/gcc/9/include")
prepend_path("LIBRARY_PATH",        "/util/opt/expat/2.2/gcc/9/lib")
prepend_path("LD_LIBRARY_PATH",     "/util/opt/expat/2.2/gcc/9/lib")
prepend_path("PKG_CONFIG_PATH",     "/util/opt/expat/2.2/gcc/9/lib/pkgconfig")
setenv("EXPAT", "/util/opt/expat/2.2/gcc/9")
family("expat")
