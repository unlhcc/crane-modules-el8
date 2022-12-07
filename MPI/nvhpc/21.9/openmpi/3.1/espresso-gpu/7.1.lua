local help_message = [[
Quantum Espresso 7.1

This module loads GPU-enabled Quantum built with OMPI 3.1.

]]

help(help_message,"\n")

whatis("Name: ESPRESSO")
whatis("Version: 7.1")
whatis("Category: library, runtime support")
whatis("Keywords: Applications, Chemistry")
whatis("URL: http://www.quantum-espresso.org/")

prepend_path("PATH","/util/opt/espresso-gpu/7.1/nvhpc/21.9/openmpi/3.1/bin")

family("espresso")
