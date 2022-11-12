help (
[[
This module loads PLUMED with GCC 10 and OpenMPI 4.0.
Version 2.8.1
]])

whatis("Name: PLUMED")
whatis("Version: 2.8.1")
whatis("Category: molecular dynamics, plugin")
whatis("Keywords: molecular dynamics, free-energy, sampling")
whatis("Description: The community-developed PLUgin for MolEcular Dynamics.")
whatis("URL: https://www.plumed.org/")

prepend_path("PATH", "/util/opt/plumed/2.8/openmpi/4.0/gcc/10/bin")
prepend_path("LD_LIBRARY_PATH", "/util/opt/plumed/2.8/openmpi/4.0/gcc/10/lib")
prepend_path("INCLUDE", "/util/opt/plumed/2.8/openmpi/4.0/gcc/10/include")
prepend_path("LIBRARY_PATH", "/util/opt/plumed/2.8/openmpi/4.0/gcc/10/lib")
prepend_path("CPATH", "/util/opt/plumed/2.8/openmpi/4.0/gcc/10/include")
setenv("PLUMED", "/util/opt/plumed/2.8/openmpi/4.0/gcc/10")

family("plumed")
