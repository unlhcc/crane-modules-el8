local help_message = [[
VASP 5.4.0

This module loads the VASP environment, built with the Intel 19
compilers. Only authorized users are able to run vasp.

]]

help(help_message,"\n")

whatis("Name: VASP")
whatis("Version: 5.4.0")
whatis("Category: library, runtime support")
whatis("Keywords: Applications, Chemistry")
whatis("URL: https://www.vasp.at/")

load("intel-mkl/19")
prepend_path("PATH","/util/opt/vasp/5.4/intel/19/openmpi/4.0/bin")
prereq("compiler/intel/19","openmpi/4.0")

family("vasp")
