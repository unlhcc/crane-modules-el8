help (
[[
A molecular dynamics package primarily designed for biomolecular systems such as proteins and lipids. It is a free software.
Documentation can be found online at http://www.gromacs.org/

Version 2023 compiled with CUDA 11.4.

]])

whatis("Name: GROMACS")
whatis("Version: 2023")
whatis("Category: computational biology, genomics")
whatis("Keywords: Biology, Molecular dynamics")
whatis("URL: http://www.gromacs.org/")
whatis("Description: GROMACS is a versatile package to perform molecular dynamics, i.e. simulate the Newtonian equations of motion for systems with hundreds to millions of particles.")

load("fftw3/3.3","intel-mkl/20","cuda/11.4")

setenv("GMXBIN", "/util/opt/gromacs-gpu/2023/openmpi/4.1/gcc/10/bin")
setenv("GMXLDLIB", "/util/opt/gromacs-gpu/2023/openmpi/4.1/gcc/10/lib64")
setenv("GMXMAN", "/util/opt/gromacs-gpu/2023/openmpi/4.1/gcc/10/share/man")
setenv("GMXDATA", "/util/opt/gromacs-gpu/2023/openmpi/4.1/gcc/10/share/gromacs")
setenv("GMXFONT", "10x20")

prepend_path("PATH","/util/opt/gromacs-gpu/2023/openmpi/4.1/gcc/10/bin")
prepend_path("LD_LIBRARY_PATH","/util/opt/gromacs-gpu/2023/openmpi/4.1/gcc/10/lib64")
prepend_path("MANPATH","/util/opt/gromacs-gpu/2023/openmpi/4.1/gcc/10/share/man")
prepend_path("LIBRARY_PATH","/util/opt/gromacs-gpu/2023/openmpi/4.1/gcc/10/lib64")
prepend_path("PKG_CONFIG_PATH", "/util/opt/gromacs-gpu/2023/openmpi/4.1/gcc/10/lib64/pkgconfig")

family("gromacs")
