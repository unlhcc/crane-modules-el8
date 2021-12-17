local help_message = [[
METIS 4.0

This module loads the Metis environment, built with the GCC 9.1
compilers.

]]

help(help_message,"\n")

whatis("Name: METIS")
whatis("Version:4.0.0")
whatis("Category: library, runtime support")
whatis("Keywords: Application, partitioning graphs")
whatis("URL: http://glaros.dtc.umn.edu/gkhome/metis/metis/overview")

prepend_path("PATH","/util/opt/metis/4.0/gcc/9.1/bin")
prepend_path("LD_LIBRARY_PATH",     "/util/opt/metis/4.0/gcc/9.1/lib/")
setenv("METIS_INCLUDE",             "/util/opt/metis/4.0/gcc/9.1/include/")
setenv("METIS","/util/opt/metis/4.0/gcc/9.1")
setenv("METIS_VERSION","4.0.0")
