local help_message = [[
libxml2 2.9.9

This module loads the libxml2, built with the PGI
compilers.

]]

help(help_message,"\n")

whatis("Name: libxml2")
whatis("Version: 2.9.9")
whatis("Category: library, runtime support")
whatis("Keywords: System, Library")
whatis("URL: http://xmlsoft.org/downloads.html")

prepend_path("PATH",                "/util/opt/libxml2/2.9/gcc/8.2/bin")
prepend_path("LD_LIBRARY_PATH",     "/util/opt/libxml2/2.9/gcc/8.2/lib")
prepend_path("MANPATH",             "/util/opt/libxml2/2.9/gcc/8.2/share/man")
prepend_path("INCLUDE",             "/util/opt/libxml2/2.9/gcc/8.2/include")
prepend_path("CPATH",               "/util/opt/libxml2/2.9/gcc/8.2/include")
prepend_path("LIBRARY_PATH",        "/util/opt/libxml2/2.9/gcc/8.2/lib")
prepend_path("PKG_CONFIG_PATH",     "/util/opt/libxml2/2.9/gcc/8.2/lib/pkgconfig")
setenv("LIBXML2", "/util/opt/libxml2/2.9/gcc/8.2")
family("libxml2")
