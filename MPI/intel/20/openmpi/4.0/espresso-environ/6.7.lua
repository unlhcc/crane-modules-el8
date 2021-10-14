local help_message = [[
Quantum Espresso 6.7

This module loads the Quantum Espresso environment(qe) and Environ, built with the Intel
compilers.

]]

help(help_message,"\n")

whatis("Name: ESPRESSO-ENVIRON-2.0")
whatis("Version: 6.7")
whatis("Category: library, runtime support")
whatis("Keywords: Applications, Chemistry")
whatis("URL: http://www.quantum-espresso.org/")

load("intel-mkl/20")
prepend_path("PATH","/util/opt/espresso-environ/6.7/openmpi/4.0/intel/20.0/bin")
prepend_path("LD_LIBRARY_PATH",     "/util/opt/espresso-environ/6.7/openmpi/4.0/intel/20.0/Environ/libs")
