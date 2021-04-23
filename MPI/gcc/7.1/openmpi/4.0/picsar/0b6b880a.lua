local help_message = [[
picsar 0b6b880a

This module loads the picsar environment, built with the GCC+OpenMPI
compilers.

This module includes two binaries:
'picsar' : production mode (without FFTW)
'picsar.spectra' : production mode with spectral solver and FFTW

]]

help(help_message,"\n")

whatis("Name: picsar")
whatis("Version: 0b6b880a")
whatis("Category: Physics, Simulation")
whatis("Keywords: Physics, Simulation")
whatis("Description: Particle-In-Cell Scalable Application Resource")
whatis("URL: https://picsar.net/")

load("fftw3/3.3")
prepend_path("PATH",                "/util/opt/picsar/0b6b880a/openmpi/4.0/gcc/7.1/bin")
prepend_path("LD_LIBRARY_PATH",     "/util/opt/picsar/0b6b880a/openmpi/4.0/gcc/7.1/lib")
prepend_path("LIBRARY_PATH",        "/util/opt/picsar/0b6b880a/openmpi/4.0/gcc/7.1/lib")
setenv("PICSAR",                     "/util/opt/picsar/0b6b880a/openmpi/4.0/gcc/7.1")

family("picsar")
