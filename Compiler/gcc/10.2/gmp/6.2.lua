local help_message = [[
gmp 6.2

This module loads GMP, built with the GCC
compilers.

]]

help(help_message,"\n")

whatis("Name: gmp")
whatis("Version: 6.2.1")
whatis("Category: library, runtime support")
whatis("Keywords: System, Library")
whatis("Description: GNU MP is a library for arbitrary precision arithmetic, operating on signed integers, rational numbers, and floating point numbers.")
whatis("URL: https://gmplib.org")

prepend_path("LD_LIBRARY_PATH",     "/util/opt/gmp/6.2/gcc/10.2/lib")
prepend_path("INCLUDE",             "/util/opt/gmp/6.2/gcc/10.2/include")

family("gmp")

prepend_path("CPATH",             "/util/opt/gmp/6.2/gcc/10.2/include")
prepend_path("LIBRARY_PATH",     "/util/opt/gmp/6.2/gcc/10.2/lib")
prepend_path("PKG_CONFIG_PATH",        "/util/opt/gmp/6.2/gcc/10.2/lib/pkgconfig")
