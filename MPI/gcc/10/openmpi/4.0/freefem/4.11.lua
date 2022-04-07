local help_message = [[
FreeFEM 4.11

A high level multiphysics finite element software

FreeFEM offers a fast interpolation algorithm and a language for the manipulation of data on multiple meshes.

]]

help(help_message,"\n")

whatis("Name: FreeFEM")
whatis("Version: 4.11")
whatis("Category: Applications, Mathematics")
whatis("Keywords: Applicatins, Mathematics")
whatis("URL: https://freefem.org/")

setenv("FREEFEM",                 "/util/opt/freefem/4.11/openmpi/4.0/gcc/10")
prepend_path("PATH",                "/util/opt/freefem/4.11/openmpi/4.0/gcc/10/bin")

load("intel-mkl/19","hdf5/1.12")
