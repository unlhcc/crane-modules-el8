local help_message = [[
PARMETIS 4.0

This module loads the Parmetis environment, built with the INTEL 20 and OMPI 4.0
compilers.

]]

help(help_message,"\n")

whatis("Name: PARMETIS")
whatis("Version:4.0.3")
whatis("Category: library, runtime support")
whatis("Keywords: Application, partitioning graphs")
whatis("URL: http://glaros.dtc.umn.edu/gkhome/metis/parmetis/overview")

prepend_path("PATH","/util/opt/parmetis/4.0/openmpi/4.0/intel/20/bin")
prepend_path("LD_LIBRARY_PATH",     "/util/opt/parmetis/4.0/openmpi/4.0/intel/20/lib/")
setenv("PARMETIS_INCLUDE",             "/util/opt/parmetis/4.0/openmpi/4.0/intel/20/include/")
setenv("PARMETIS","/util/opt/parmetis/4.0/openmpi/4.0/intel/20")
setenv("PARMETIS_VERSION","4.0.3")
