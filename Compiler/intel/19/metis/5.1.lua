local help_message = [[
METIS 5.1

This module loads the Metis environment, built with the INTEL 19
compilers.

]]

help(help_message,"\n")

whatis("Name: METIS")
whatis("Version:5.1.0")
whatis("Category: library, runtime support")
whatis("Keywords: Application, partitioning graphs")
whatis("URL: http://glaros.dtc.umn.edu/gkhome/metis/metis/overview")

prepend_path("PATH","/util/opt/metis/5.1/intel/19/bin")
prepend_path("LD_LIBRARY_PATH",     "/util/opt/metis/5.1/intel/19/lib/")
setenv("METIS_INCLUDE",             "/util/opt/metis/5.1/intel/19/include/")
setenv("METIS","/util/opt/metis/5.1/intel/19")
setenv("METIS_VERSION","5.1.0")
