local help_message = [[
libpng 1.6

This module loads the libpng, built with the GCC compilers.

]]

help(help_message,"\n")

whatis("Name: libpng")
whatis("Version: 1.6.37")
whatis("Category: library, runtime support")
whatis("Keywords: System, Library")
whatis("URL: http://www.libpng.org/")

prepend_path("PATH",                "/util/opt/libpng/1.6/gcc/10/bin")
prepend_path("LD_LIBRARY_PATH",     "/util/opt/libpng/1.6/gcc/10/lib")
prepend_path("MANPATH",             "/util/opt/libpng/1.6/gcc/10/doc")
prepend_path("INCLUDE",             "/util/opt/libpng/1.6/gcc/10/include")

prepend_path("CPATH",             "/util/opt/libpng/1.6/gcc/10/include")
prepend_path("LIBRARY_PATH",     "/util/opt/libpng/1.6/gcc/10/lib")
prepend_path("PKG_CONFIG_PATH",        "/util/opt/libpng/1.6/gcc/10/lib/pkgconfig")
setenv("LIBPNG", "/util/opt/libpng/1.6/gcc/10")
