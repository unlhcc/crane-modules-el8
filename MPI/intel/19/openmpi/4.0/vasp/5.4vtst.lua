local help_message = [[
VASP 5.4.0

This module loads the VASP VTST environment, built with the Intel 19
compilers. Only authorized users are able to run vasp.

This version was compiled with VASP Transition State Tools (VTST) support.

]]

help(help_message,"\n")

whatis("Name: VASP (vtst)")
whatis("Version: 5.4.0vtst")
whatis("Category: library, runtime support")
whatis("Keywords: Applications, Chemistry")
whatis("URL: https://www.vasp.at/")

load("intel-mkl/19")
prepend_path("PATH","/util/opt/vasp/5.4-vtst/intel/19/openmpi/4.0/bin")
prereq("compiler/intel/19","openmpi/4.0")

family("vasp")
