local help_message = [[
Paraview-headless 5.10

This module loads the paraview-headless environment, built with the GCC 10 and OMPI 4.0
compilers.

]]

help(help_message,"\n")

whatis("Name: paraview-headless")
whatis("Version: 5.10")
whatis("Category: Application, Visualization")
whatis("Keywords: Application, Visualization")
whatis("URL: https://www.paraview.org/")

prepend_path("PATH","/util/opt/paraview/5.10/openmpi/4.0/gcc/10/bin")
prepend_path("LD_LIBRARY_PATH",     "/util/opt/paraview/5.10/openmpi/4.0/gcc/10/lib")
