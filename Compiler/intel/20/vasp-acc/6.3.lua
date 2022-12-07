local help_message = [[
VASP-ACC 6.3.1

This module loads the OpenACC GPU-port of VASP, built with the NVIDIA HPC-SDK
compilers. Only authorized users are able to run VASP.

]]

help(help_message,"\n")

whatis("Name: VASP-ACC")
whatis("Version: 6.3.1")
whatis("Category: library, runtime support")
whatis("Keywords: Applications, Chemistry")
whatis("URL: https://www.vasp.at/")

load("compiler/nvhpc/21.9","intel-mkl/20")
prepend_path("PATH","/util/opt/vasp/6.3-acc/nvhpc/21.9/bin")

family("vasp")
