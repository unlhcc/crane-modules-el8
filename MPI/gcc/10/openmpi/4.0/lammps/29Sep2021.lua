local help_message = [[
LAMMPS 29Sep2021_update2

This module loads the lammps environment, built with the GCC
compiler.

]]

help(help_message,"\n")

whatis("Name: LAMMPS")
whatis("Version: 29Sep2021")
whatis("Category: library, runtime support")
whatis("Keywords: System, Library")
whatis("URL: http://lammps.sandia.gov/")

setenv("LAMMPS_POTENTIALS",         "/util/opt/lammps/potentials")
prepend_path("PATH",                "/util/opt/lammps/29Sep2021_update2/openmpi/4.0/gcc/10/bin")
prepend_path("LD_LIBRARY_PATH",     "/util/opt/lammps/29Sep2021_update2/openmpi/4.0/gcc/10/lib64")

family("lammps")
