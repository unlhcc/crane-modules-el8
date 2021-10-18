local help_message = [[
VASP-GPU 5.4.4

This module loads the CUDA-C GPU VASP port, built with the Intel 19+CUDA
compilers. Only authorized users are able to run VASP

]]

help(help_message,"\n")

whatis("Name: VASP-GPU")
whatis("Version: 5.4.4")
whatis("Category: library, runtime support")
whatis("Keywords: Applications, Chemistry")
whatis("URL: https://www.vasp.at/")

prepend_path("PATH","/util/opt/vasp/5.4-gpu/intel/19/openmpi/4.0/bin")
load("intel-mkl/19")
prereq("cuda/11.4")

family("vasp")
