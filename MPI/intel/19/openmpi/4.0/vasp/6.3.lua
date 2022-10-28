local help_message = [[
VASP 6.3.0

This module loads the VASP environment, built with the Intel 19
compilers. Only authorized users are able to run vasp.

This build of VASP includes support for HDF5, wannier90, libbeef, libxc, and dftd4.

]]

help(help_message,"\n")

whatis("Name: VASP")
whatis("Version: 6.3.0")
whatis("Category: library, runtime support")
whatis("Keywords: Applications, Chemistry")
whatis("URL: https://www.vasp.at/")

load("intel-mkl/19","hdf5/1.12","libxc/5.1","dftd4/3.3")
prepend_path("PATH","/util/opt/vasp/6.3/intel/19/openmpi/4.0/bin")

family("vasp")
