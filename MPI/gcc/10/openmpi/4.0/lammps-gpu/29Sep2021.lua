local help_message = [[
LAMMPS 29Sep2021_update2 GPU

This module loads the GPU-enabled lammps environment, built with the GCC
compiler.

]]

help(help_message,"\n")

whatis("Name: LAMMPS")
whatis("Version: 29Sep2021-GPU")
whatis("Category: library, runtime support")
whatis("Keywords: System, Library")
whatis("URL: http://lammps.sandia.gov/")

setenv("LAMMPS_POTENTIALS",         "/util/opt/lammps/29Sep2021_update2-gpu/openmpi/4.0/gcc/10/share/lammps/potentials")
setenv("MSI2LMP_LIBRARY",           "/util/opt/lammps/29Sep2021_update2-gpu/openmpi/4.0.5/gcc/10/share/lammps/frc_files")
prepend_path("PATH",                "/util/opt/lammps/29Sep2021_update2-gpu/openmpi/4.0/gcc/10/bin")
prepend_path("LD_LIBRARY_PATH",     "/util/opt/lammps/29Sep2021_update2-gpu/openmpi/4.0/gcc/10/lib64")

family("lammps")
load("fftw3/3.3")
