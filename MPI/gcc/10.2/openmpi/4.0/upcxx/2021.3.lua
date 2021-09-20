local help_message = [[
UPC++: a PGAS library for C++

This module loads UPCR Compiler variables.
The command directory is added to PATH.
]]

help(help_message,"\n")

whatis("Name: UPC++")
whatis("Version: 2021.3")
whatis("Category: compiler")
whatis("Keywords: System, compiler")
whatis("URL: https://upcxx.lbl.gov/")
whatis("Description: UPC++ is a parallel programming library for developing C++ applications with the Partitioned Global Address Space (PGAS) model.")

prepend_path("PATH",                "/util/opt/upcxx/2021.3/openmpi/4.0/gcc/10.2/bin")
setenv("UPCXX_INSTALL", "/util/opt/upcxx/2021.3/openmpi/4.0/gcc/10.2")
