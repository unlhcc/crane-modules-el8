help(
[[
This module load the reference implemantation of BLAS and LAPACK from netlib.org.

Version 3.9
]]
)

whatis("Name: lapack")
whatis("Version: 3.9.1")
whatis("Category: Utility, Mathematics")
whatis("Keywords: Utility, Mathematics")
whatis("URL: http://www.netlib.org/lapack/")
whatis("Description: LAPACK is written in Fortran 90 and provides routines for solving systems of simultaneous linear equations, least-squares solutions of linear systems of equations, eigenvalue problems, and singular value problems.")


prepend_path("LD_LIBRARY_PATH",   "/util/opt/lapack/3.9/gcc/10.2/lib")
prepend_path("LIBRARY_PATH",   "/util/opt/lapack/3.9/gcc/10.2/lib")
prepend_path("PKG_CONFIG_PATH",   "/util/opt/lapack/3.9/gcc/10.2/lib/pkgconfig")
setenv("LAPACK", "/util/opt/lapack/3.9/gcc/10.2")
