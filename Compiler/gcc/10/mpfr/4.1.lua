local help_message = [[
mpfr 4.1

This module loads MPFR, built with the GCC
compilers.

]]

help(help_message,"\n")

whatis("Name: mpfr")
whatis("Version: 4.1.0")
whatis("Category: library, runtime support")
whatis("Keywords: System, Library")
whatis("Description: The MPFR library is a C library for multiple-precision floating-point computations with correct rounding.")
whatis("URL: https://mpfr.org")

prepend_path("LD_LIBRARY_PATH",     "/util/opt/mpfr/4.1/gcc/10.2/lib")
prepend_path("INCLUDE",             "/util/opt/mpfr/4.1/gcc/10.2/include")
prepend_path("CPATH",             "/util/opt/mpfr/4.1/gcc/10.2/include")
prepend_path("LIBRARY_PATH",     "/util/opt/mpfr/4.1/gcc/10.2/lib")
prepend_path("PKG_CONFIG_PATH",        "/util/opt/mpfr/4.1/gcc/10.2/lib/pkgconfig")
setenv("MPFR", "/util/opt/mpfr/4.1/gcc/10.2")

family("mpfr")
