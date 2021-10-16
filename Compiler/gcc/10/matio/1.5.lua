local help_message = [[
matio is an C library for reading and writing MATLAB MAT files.

This module loads the matio, built with the GCC 
compilers.

]]

help(help_message,"\n")

whatis("Name: matio")
whatis("Version: 1.5")
whatis("Category: library, runtime support")
whatis("Keywords: System, Library")
whatis("URL: https://sourceforge.net/projects/matio/")

prepend_path("PATH",                "/util/opt/matio/1.5/gcc/10.2/bin")
prepend_path("LD_LIBRARY_PATH",     "/util/opt/matio/1.5/gcc/10.2/lib")
prepend_path("MANPATH",             "/util/opt/matio/1.5/gcc/10.2/share/man")
prepend_path("INCLUDE",             "/util/opt/matio/1.5/gcc/10.2/include")

family("matio")

prepend_path("CPATH",               "/util/opt/matio/1.5/gcc/10.2/include")
prepend_path("LIBRARY_PATH",        "/util/opt/matio/1.5/gcc/10.2/lib")
prepend_path("PKG_CONFIG_PATH",     "/util/opt/matio/1.5/gcc/10.2/lib/pkgconfig")
setenv("MATIO", "/util/opt/matio/1.5/gcc/10.2")
