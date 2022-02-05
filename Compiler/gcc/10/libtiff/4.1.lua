local help_message = [[
libtiff 4.1

This module loads the libtiff, built with the GCC compilers.

]]

help(help_message,"\n")

whatis("Name: libtiff")
whatis("Version: 4.1.0")
whatis("Category: library, runtime support")
whatis("Keywords: System, Library")
whatis("URL: http://www.libtiff.org/")

prepend_path("PATH",                "/util/opt/libtiff/4.1/gcc/10/bin")
prepend_path("LD_LIBRARY_PATH",     "/util/opt/libtiff/4.1/gcc/10/lib")
prepend_path("MANPATH",             "/util/opt/libtiff/4.1/gcc/10/doc")
prepend_path("INCLUDE",             "/util/opt/libtiff/4.1/gcc/10/include")

prepend_path("CPATH",             "/util/opt/libtiff/4.1/gcc/10/include")
prepend_path("LIBRARY_PATH",     "/util/opt/libtiff/4.1/gcc/10/lib")
prepend_path("PKG_CONFIG_PATH",        "/util/opt/libtiff/4.1/gcc/10/lib/pkgconfig")
setenv("LIBTIFF", "/util/opt/libtiff/4.1/gcc/10")
