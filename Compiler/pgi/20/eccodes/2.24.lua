local help_message = [[
eccodes 2.24.2

This module loads eccodes 2.24.2, built with the pgi 20 compilers.

]]

help(help_message,"\n")

whatis("Name: eccodes")
whatis("Version: 2.24.2")
whatis("Category: package,API, decoding and encoding messages")
whatis("Keywords: package, decoding, encoding")
whatis("URL: https://confluence.ecmwf.int/display/ECC")


prepend_path("PATH",                "/util/opt/eccodes/2.24/pgi/20.0/bin")
prepend_path("LD_LIBRARY_PATH",     "/util/opt/eccodes/2.24/pgi/20.0/lib64")
prepend_path("LIBRARY_PATH",     "/util/opt/eccodes/2.24/pgi/20.0/lib64")
prepend_path("CPATH",             "/util/opt/eccodes/2.24/pgi/20.0/include")
prepend_path("PKG_CONFIG_PATH",     "/util/opt/eccodes/2.24/pgi/20.0/lib64/pkgconfig")
setenv("ECCODES", "/util/opt/eccodes/2.24/pgi/20.0")
