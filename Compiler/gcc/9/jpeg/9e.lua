local help_message = [[
jpeg 9e

This module loads jpeg, built with the GCC compilers.

]]

help(help_message,"\n")

whatis("Name: jpeg")
whatis("Version: 9e")
whatis("Category: library, runtime support")
whatis("Keywords: System, Library")
whatis("URL: http://www.ijg.org/")

prepend_path("PATH",                "/util/opt/jpeg/9e/gcc/9/bin")
prepend_path("LD_LIBRARY_PATH",     "/util/opt/jpeg/9e/gcc/9/lib")
prepend_path("MANPATH",             "/util/opt/jpeg/9e/gcc/9/doc")
prepend_path("INCLUDE",             "/util/opt/jpeg/9e/gcc/9/include")

prepend_path("CPATH",             "/util/opt/jpeg/9e/gcc/9/include")
prepend_path("LIBRARY_PATH",     "/util/opt/jpeg/9e/gcc/9/lib")
prepend_path("PKG_CONFIG_PATH",        "/util/opt/jpeg/9e/gcc/9/lib/pkgconfig")
setenv("JPEG", "/util/opt/jpeg/9e/gcc/9")
