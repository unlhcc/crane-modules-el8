local help_message = [[
smilei 4.6

This module loads the smilei environment, built with the GCC+OpenMPI
compilers.

]]

help(help_message,"\n")

whatis("Name: smilei")
whatis("Version: 4.6")
whatis("Category: Physics, Simulation")
whatis("Keywords: Physics, Simulation")
whatis("Description: Smilei is a Particle-In-Cell code for plasma simulation.")
whatis("URL: https://smileipic.github.io")

load("phdf5/1.12")
prereq("python/3.8")
prepend_path("PATH",                "/util/opt/smilei/4.6/openmpi/4.0/gcc/7.1")
setenv("SMILEI",                     "/util/opt/smilei/4.6/openmpi/4.0/gcc/7.1")
prepend_path("PYTHONPATH", "/util/opt/smilei/4.6/openmpi/4.0/gcc/7.1")
family("smilei")
