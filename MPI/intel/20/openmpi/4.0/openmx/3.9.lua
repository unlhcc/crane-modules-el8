local help_message = [[
OpenMX 3.9

This module loads the OpenMX environment, built with the intel 20 compilers.

]]

help(help_message,"\n")

whatis("Name: OpenMX")
whatis("Version: 3.9")
whatis("Category: library, runtime support")
whatis("Keywords: Applications, Chemistry")
whatis("URL: http://www.openmx-square.org/download.html")

load("intel-mkl/20","fftw3/3.3")

prepend_path("PATH","/util/opt/openmx/3.9/openmpi/4.0/intel/20/source")
prepend_path("PATH","/util/opt/openmx/3.9/openmpi/4.0/intel/20/work")
