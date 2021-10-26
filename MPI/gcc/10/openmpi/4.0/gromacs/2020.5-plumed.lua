help (
[[
A molecular dynamics package primarily designed for biomolecular systems such as proteins and lipids. It is a free software.
Documentation can be found online at http://www.gromacs.org/

Version 2019.5

]])

whatis("Name: GROMACS")
whatis("Version: 2020.5")
whatis("Category: computational biology, genomics")
whatis("Keywords: Biology, Molecular dynamics")
whatis("URL: http://www.gromacs.org/")
whatis("Description: GROMACS is a versatile package to perform molecular dynamics, i.e. simulate the Newtonian equations of motion for systems with hundreds to millions of particles.")

load("fftw3/3.3","intel-mkl/19","plumed/2.7")

setenv("GMXBIN", "/util/opt/gromacs/2020.5-plumed/openmpi/4.0/gcc/10.2/bin")
setenv("GMXLDLIB", "/util/opt/gromacs/2020.5-plumed/openmpi/4.0/gcc/10.2/lib64")
setenv("GMXMAN", "/util/opt/gromacs/2020.5-plumed/openmpi/4.0/gcc/10.2/share/man")
setenv("GMXDATA", "/util/opt/gromacs/2020.5-plumed/openmpi/4.0/gcc/10.2/share/gromacs")
setenv("GMXFONT", "10x20")

prepend_path("PATH","/util/opt/gromacs/2020.5-plumed/openmpi/4.0/gcc/10.2/bin")
prepend_path("LD_LIBRARY_PATH","/util/opt/gromacs/2020.5-plumed/openmpi/4.0/gcc/10.2/lib64")
prepend_path("MANPATH","/util/opt/gromacs/2020.5-plumed/openmpi/4.0/gcc/10.2/share/man")

family("gromacs")

prepend_path("LIBRARY_PATH","/util/opt/gromacs/2020.5-plumed/openmpi/4.0/gcc/10.2/lib64")
prepend_path("PKG_CONFIG_PATH",        "/util/opt/gromacs/2020.5-plumed/openmpi/4.0/gcc/10.2/lib64/pkgconfig")                                                                                                                
