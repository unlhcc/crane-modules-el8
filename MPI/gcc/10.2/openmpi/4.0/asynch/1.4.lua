local help_message = [[
Asynch 1.4.2

This module loads Asynch, built with the GCC 10.2 and OMPI 4.0 compilers.

]]

help(help_message,"\n")

whatis("Name: Asynch")
whatis("Version: 1.4.2")
whatis("Category: Mathematics, Application")
whatis("Keywords: Mathematics, Application")
whatis("URL: https://github.com/Iowa-Flood-Center/asynch")

prepend_path("PATH","/util/opt/asynch/1.4/openmpi/4.0/gcc/10.2/bin")
prepend_path("LD_LIBRARY_PATH",     "/util/opt/asynch/1.4/openmpi/4.0/gcc/10.2/lib")
setenv("ASYNC","/util/opt/asynch/1.4/openmpi/4.0/gcc/10.2")

prereq("hdf5/1.12","metis/5.1","petsc/3.15")
