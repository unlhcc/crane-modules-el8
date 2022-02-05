local help_message = [[
lcms2 2.13

This module loads the lcms2, built with the GCC compilers.

]]

help(help_message,"\n")

whatis("Name: lcms2")
whatis("Version: 2.13.1")
whatis("Category: library, runtime support")
whatis("Keywords: System, Library")
whatis("URL: https://www.littlecms.com")

prepend_path("PATH",                "/util/opt/lcms2/2.13/gcc/10/bin")
prepend_path("LD_LIBRARY_PATH",     "/util/opt/lcms2/2.13/gcc/10/lib")
prepend_path("MANPATH",             "/util/opt/lcms2/2.13/gcc/10/doc")
prepend_path("INCLUDE",             "/util/opt/lcms2/2.13/gcc/10/include")

prepend_path("CPATH",             "/util/opt/lcms2/2.13/gcc/10/include")
prepend_path("LIBRARY_PATH",     "/util/opt/lcms2/2.13/gcc/10/lib")
prepend_path("PKG_CONFIG_PATH",        "/util/opt/lcms2/2.13/gcc/10/lib/pkgconfig")
setenv("LCMS2", "/util/opt/lcms2/2.13/gcc/10")
