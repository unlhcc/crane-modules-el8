local help_message = [[
Quantum Espresso 6.2

This module loads the Quantum Espresso environment with Plumed 2.8 plugin, built with the Intel
compilers.

]]

help(help_message,"\n")

whatis("Name: ESPRESSO")
whatis("Version: 6.2")
whatis("Category: library, runtime support")
whatis("Keywords: Applications, Chemistry")
whatis("URL: http://www.quantum-espresso.org/")

load("plumed/2.8")
load("intel-mkl/20")
prepend_path("PATH","/util/opt/espresso/6.2.0-plumed/openmpi/4.0/intel/20/bin")
