local help_message = [[
NAMD 2.14

NAMD, recipient of a 2002 Gordon Bell Award and a 2012 Sidney Fernbach Award, is a parallel molecular dynamics code designed for high-performance simulation of large biomolecular systems. Based on Charm++ parallel objects, NAMD scales to hundreds of cores for typical simulations and beyond 500,000 cores for the largest simulations. NAMD uses the popular molecular graphics program VMD for simulation setup and trajectory analysis, but is also file-compatible with AMBER, CHARMM, and X-PLOR. NAMD is distributed free of charge with source code. You can build NAMD yourself or download binaries for a wide variety of platforms. Our tutorials show you how to use NAMD and VMD for biomolecular modeling.

]]

help(help_message,"\n")

whatis("Name: NAMD")
whatis("Version: 2.14")
whatis("Category: library, runtime support")
whatis("Keywords: System, Library")
whatis("URL: http://www.ks.uiuc.edu/Research/namd/")

prepend_path("PATH",                "/util/opt/namd/2.14/gcc/10.2/openmpi/4.0/NAMD_2.14_Source/Linux-x86_64-g++")
prepend_path("LD_LIBRARY_PATH",     "/util/opt/namd/2.14/gcc/10.2/openmpi/4.0/NAMD_2.14_Source/lib")
prepend_path("LIBRARY_PATH",        "/util/opt/namd/2.14/gcc/10.2/openmpi/4.0/NAMD_2.14_Source/lib")
