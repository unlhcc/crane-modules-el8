local help_message = [[
Wannier 3.1.

This module loads the Wannier environment, built with Intel 20+OpenMPI 4.0 compiler.

]]

help(help_message,"\n")

whatis("Name: Wannier")
whatis("Version: 3.1")
whatis("Category: library, runtime support")
whatis("Keywords: Applications, Chemistry")
whatis("URL: http://www.wannier.org")

load("intel-mkl/20")
prepend_path("PATH",               "/util/opt/wannier90/3.1/openmpi/4.0/intel/20/bin")
prepend_path("LD_LIBRARY_PATH",    "/util/opt/wannier90/3.1/openmpi/4.0/intel/20/lib")
prepend_path("LIBRARY_PATH",       "/util/opt/wannier90/3.1/openmpi/4.0/intel/20/lib")

family("wannier")
