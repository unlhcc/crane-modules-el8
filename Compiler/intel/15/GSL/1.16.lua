local help_message = [[
GSL 1.16

This module loads the GSL, built with the Intel
compilers.

]]

help(help_message,"\n")

whatis("Name: GSL")
whatis("Version: 1.16")
whatis("Category: library, runtime support")
whatis("Keywords: System, Library")
whatis("URL: http://mirrors.kernel.org/gnu/gsl/")

prepend_path("PATH",                "/util/opt/GSL/1.16/intel/15/bin")
prepend_path("LD_LIBRARY_PATH",     "/util/opt/GSL/1.16/intel/15/lib")
prepend_path("MANPATH",             "/util/opt/GSL/1.16/intel/15/share")
prepend_path("INCLUDE",             "/util/opt/GSL/1.16/intel/15/include")
setenv("GSL", "/util/opt/GSL/1.16/intel/15")

family("gsl")

prepend_path("CPATH",             "/util/opt/GSL/1.16/intel/15/include")
prepend_path("LIBRARY_PATH",     "/util/opt/GSL/1.16/intel/15/lib")
prepend_path("PKG_CONFIG_PATH",        "/util/opt/GSL/1.16/intel/15/lib/pkgconfig")
