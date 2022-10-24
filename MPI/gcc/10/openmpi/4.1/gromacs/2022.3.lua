help (
[[
A molecular dynamics package primarily designed for biomolecular systems such as proteins and lipids. It is a free software.
Documentation can be found online at http://www.gromacs.org/

Version 2022.3

]])

whatis("Name: GROMACS")
whatis("Version: 2022.3")
whatis("Category: computational biology, genomics")
whatis("Keywords: Biology, Molecular dynamics")
whatis("URL: http://www.gromacs.org/")
whatis("Description: GROMACS is a versatile package to perform molecular dynamics, i.e. simulate the Newtonian equations of motion for systems with hundreds to millions of particles.")

setenv("GMXBIN", "/util/opt/anaconda/deployed-conda-envs/packages/gromacs/envs/gromacs-2022.3-mpi/bin.AVX_256")
setenv("GMXLDLIB", "/util/opt/anaconda/deployed-conda-envs/packages/gromacs/envs/gromacs-2022.3-mpi/lib.AVX_256")
setenv("GMXMAN", "/util/opt/anaconda/deployed-conda-envs/packages/gromacs/envs/gromacs-2022.3-mpi/share/man")
setenv("GMXDATA", "/util/opt/anaconda/deployed-conda-envs/packages/gromacs/envs/gromacs-2022.3-mpi/share/gromacs")
setenv("GMXFONT", "10x20")

-- Order here for PATH matters. There's a wrapper script in bin/ that chooses the SSE/AVX/AVX version at runtime.
-- To avoid issues, the version is "hardcoded" by putting the wrapper after the real gmx binary in PATH.
prepend_path("PATH","/util/opt/anaconda/deployed-conda-envs/packages/gromacs/envs/gromacs-2022.3-mpi/bin")
prepend_path("PATH","/util/opt/anaconda/deployed-conda-envs/packages/gromacs/envs/gromacs-2022.3-mpi/bin.AVX_256")
prepend_path("LD_LIBRARY_PATH","/util/opt/anaconda/deployed-conda-envs/packages/gromacs/envs/gromacs-2022.3-mpi/lib.AVX_256")
prepend_path("LD_LIBRARY_PATH","/util/opt/anaconda/deployed-conda-envs/packages/gromacs/envs/gromacs-2022.3-mpi/lib")
prepend_path("MANPATH","/util/opt/anaconda/deployed-conda-envs/packages/gromacs/envs/gromacs-2022.3-mpi/share/man")
prepend_path("LIBRARY_PATH","/util/opt/anaconda/deployed-conda-envs/packages/gromacs/envs/gromacs-2022.3-mpi/lib.AVX_256")
prepend_path("LIBRARY_PATH","/util/opt/anaconda/deployed-conda-envs/packages/gromacs/envs/gromacs-2022.3-mpi/lib")
prepend_path("PKG_CONFIG_PATH","/util/opt/anaconda/deployed-conda-envs/packages/gromacs/envs/gromacs-2022.3-mpi/lib/pkgconfig")
prepend_path("PKG_CONFIG_PATH","/util/opt/anaconda/deployed-conda-envs/packages/gromacs/envs/gromacs-2022.3-mpi/lib.AVX_256/pkgconfig")

set_alias ("gmx", "gmx_mpi_d")

family("gromacs")
