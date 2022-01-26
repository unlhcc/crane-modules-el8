local help_message = [[
LAMMPS 29Sep2021_update2

This module loads the LAMMPS environment, built with the Intel compiler.
This version of LAMMPS includes the INTEL package (https://docs.lammps.org/Speed_intel.html).

]]

help(help_message,"\n")

whatis("Name: LAMMPS")
whatis("Version: 29Sep2021")
whatis("Category: library, runtime support")
whatis("Keywords: System, Library")
whatis("URL: http://lammps.sandia.gov/")

setenv("LAMMPS_POTENTIALS",         "/util/opt/lammps/29Sep2021_update2/openmpi/4.0/intel/19/share/lammps/potentials")
setenv("MSI2LMP_LIBRARY",           "/util/opt/lammps/29Sep2021_update2/openmpi/4.0.5/intel/19/share/lammps/frc_files")
prepend_path("PATH",                "/util/opt/lammps/29Sep2021_update2/openmpi/4.0/intel/19/bin")
prepend_path("LD_LIBRARY_PATH",     "/util/opt/lammps/29Sep2021_update2/openmpi/4.0/intel/19/lib64")

family("lammps")
load("fftw3/3.3")
