local help_message = [[
libwebp 1.1

This module loads the libwebp, built with the GCC compilers.

]]

help(help_message,"\n")

whatis("Name: libwebp")
whatis("Version: 1.1.0")
whatis("Category: library, runtime support")
whatis("Keywords: System, Library")
whatis("URL: https://github.com/webmproject/libwebp")

prepend_path("PATH",                "/util/opt/libwebp/1.1/gcc/10/bin")
prepend_path("MANPATH",             "/util/opt/libwebp/1.1/gcc/10/share/man")
prepend_path("CPATH",             "/util/opt/libwebp/1.1/gcc/10/include")
prepend_path("LIBRARY_PATH",     "/util/opt/libwebp/1.1/gcc/10/lib")
prepend_path("LD_LIBRARY_PATH",     "/util/opt/libwebp/1.1/gcc/10/lib")
prepend_path("PKG_CONFIG_PATH",        "/util/opt/libwebp/1.1/gcc/10/lib/pkgconfig")
setenv("LIBWEBP", "/util/opt/libwebp/1.1/gcc/10")
