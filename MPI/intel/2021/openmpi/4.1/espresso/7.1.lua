local help_message = [[
Quantum Espresso 7.1

This module loads the Quantum Espresso environment, built with the Intel
compilers.

]]

help(help_message,"\n")

whatis("Name: ESPRESSO")
whatis("Version: 7.1")
whatis("Category: library, runtime support")
whatis("Keywords: Applications, Chemistry")
whatis("URL: http://www.quantum-espresso.org/")

load("intel-mkl/20")
prepend_path("PATH","/util/opt/espresso/7.1/openmpi/4.0/intel/2021/bin")
